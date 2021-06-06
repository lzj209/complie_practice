%{
#include "parse_tree.hpp"
#include <unistd.h>
extern "C" {
    int yyparse();
    int yylex();
}
extern void yyerror(const char*);

extern FILE *yyin;
extern FILE *yyout;

int yywrap()
{
    return 1;
}

void set_next(ExpressionNode *o, ExpressionNode *p)
{
    while(o->nxt)
        o = o->nxt;
    o->nxt = p;
}


void set_next(StmtNode *o, StmtNode *p)
{
    if(!o->has_accumulated)
    {
        while(o->nxt)
            o = o->nxt;
        o->nxt = p;
    }
    else 
    {
        o->nxt = p;
        o->has_accumulated = false;
    }
}
%}

%token RETURN IF ELSE WHILE CONTINUE BREAK CONST INT VOID T_LE T_GE T_EQ T_NE T_AND T_OR 
%token <ID> IDENT 
%token <NUM> Number 
%type <T_Exp> Exp AddExp MulExp UnaryExp PrimaryExp LVal Array FuncRParams RelExp EqExp ConstExp ConstArray ConstInitVal ConstInitVals InitVal InitVals LAndExp LOrExp Cond
%type <T_Vardef> ConstArrayDef VarArrayDef FuncFParams FuncFParam ConstDef VarDef
%type <T_FuncDef> FuncDef FucReg
%type <T_Stmt> Block BlockItems BlockItem Stmt ConstDecl ConstDefs VarDecl VarDefs Decl



%%
Root          : CompUnit                            {calc_final_code();}

CompUnit      : CompUnit Decl                       {inc_root_init_code($2);}
              | CompUnit FuncDef                    {combine_final_code($2);}
              | Decl                                {inc_root_init_code($1);}
              | FuncDef                             {combine_final_code($1);}
              
Decl          : ConstDecl                           {$$ = $1;} 
              | VarDecl                             {$$ = $1;} 

ConstDecl     : CONST INT ConstDefs ';'             {$$ = $3;} 



ConstDefs     : ConstDef                            {$1->make_final_code(); $$ = new StmtNode(T_VarDef); $$->code = $1->code;}
              | ConstDefs ',' ConstDef              {$3->make_final_code(); $$ = $1; StmtNode* p = new StmtNode(T_VarDef); p->code = $3->code; set_next($1, p);}


ConstDef      : ConstArrayDef '=' ConstInitVal      {$$ = $1; $$->right = $3;}

ConstArrayDef : IDENT ConstArray                    {$$ = new VardefNode(true, false, $1, $2), $$->registe_var();}

ConstArray    : '[' ConstExp ']' ConstArray         {$$ = $2, $2->nxt = $4;}
              |                                     {$$ = NULL;}


ConstInitVal  : ConstExp                            {$$ = $1, $$ -> update_pos();}
              | '{' Inc_init_blk '}' Dec_init_blk   {$$ = new ExpressionNode(T_NOP);}        
              | '{' Inc_init_blk ConstInitVals '}' Dec_init_blk  {$$ = $3;}

Inc_init_blk  :                                     {inc_init_blk();}

Dec_init_blk  :                                     {dec_init_blk();}

ConstInitVals : ConstInitVal                        {$$ = $1;}
              | ConstInitVal ',' ConstInitVals      {$$ = $1, set_next($$,$3);}

VarDecl       : INT VarDefs ';'                     {$$ = $2;}

VarDefs       : VarDef                              {$1->make_final_code(); $$ = new StmtNode(T_VarDef); $$->code = $1->code;}
              | VarDefs ',' VarDef                  {$3->make_final_code(); $$ = $1; StmtNode* p = new StmtNode(T_VarDef); p->code = $3->code; set_next($1, p);} 

VarDef        : VarArrayDef '=' InitVal             {$$ = $1; $$->right = $3;}
              | VarArrayDef                         {$$ = $1; $$->right = NULL;}

VarArrayDef   : IDENT ConstArray                    {$$ = new VardefNode(false, false, $1, $2), $$->registe_var();}

InitVal       : Exp                                 {$$ = $1, $$ -> update_pos();}
              | '{' Inc_init_blk InitVals '}' Dec_init_blk      {$$ = $3;}
              | '{' Inc_init_blk '}' Dec_init_blk   {$$ = new ExpressionNode(T_NOP);}

InitVals      : InitVal                             {$$ = $1;} 
              | InitVal ',' InitVals                {$$ = $1; set_next($$, $3);}

FuncDef       : FucReg Block                        {$$ = $1; $$->blk =$2; dec_blk(true);}

FucReg        : VOID IDENT Inc '(' FuncFParams ')'  {$$ = new FuncDefNode(false, $5, $2); $$->registe_func();} 
              | INT IDENT Inc '(' FuncFParams ')'   {$$ = new FuncDefNode(true, $5, $2); $$->registe_func();}

Inc           :                                     {inc_blk();} 
Dec           :                                     {dec_blk(false);}

FuncFParams   : FuncFParam ',' FuncFParams          {$$ = $1, $1->nxt = $3;}
              | FuncFParam                          {$$ = $1;}
              |                                     {$$ = NULL;}

FuncFParam    : INT IDENT                           {$$ = new VardefNode(false, true, $2); $$->registe_var();}
              | INT IDENT '[' ']' ConstArray        {$$ = new VardefNode(false, true, $2, $5); $$->add_a_dimension();$$->registe_var();}

Block         : '{' Inc BlockItems '}' Dec          {$$ = $3; $$->accumulate_code();}

BlockItems    : BlockItem BlockItems                {$$ = $1; set_next($$, $2);}
              |                                     {$$ = new StmtNode(T_NOP);}

BlockItem     : Decl                                {$$ = $1;} 
              | Stmt                                {$$ = $1;}

Stmt          : LVal '=' Exp ';'                    {$$ = new StmtNode(T_AssignValue, NULL, $1, $3);}
              | Exp ';'                             {$$ = new StmtNode(T_EXP, NULL, $1);}
              | ';'                                 {$$ = new StmtNode(T_NOP);}
              | Block                               {$$ = $1;}
              | IF '(' Cond ')' Stmt                {$$ = new StmtNode(T_IF, $3, NULL, NULL, $5);}
              | IF '(' Cond ')' Stmt ELSE Stmt      {$$ = new StmtNode(T_IF, $3, NULL, NULL, $5, $7);}
              | WHILE WI '(' Cond ')' Stmt          {$$ = new StmtNode(T_WHILE, $4, NULL, NULL, $6); dec_while();}
              | BREAK ';'                           {$$ = new StmtNode(T_BREAK);}
              | CONTINUE ';'                        {$$ = new StmtNode(T_CONTINUE);}
              | RETURN Exp ';'                      {$$ = new StmtNode(T_RETURN, NULL, $2);}
              | RETURN ';'                          {$$ = new StmtNode(T_RETURN);}

WI            :                                     {inc_while();}

Exp           : AddExp                      {$$ = $1;}
Cond          : LOrExp                      {$$ = $1;}
LVal          : IDENT Array                 {$$ = new ExpressionNode(T_VAR, NOP, $2, NULL, $1);}

Array         : '[' Exp ']' Array           {$$ = $2, $$->nxt = $4;}
              |                             {$$ = NULL;}

PrimaryExp    : '(' Exp ')'                 {$$ = $2;}
              | LVal                        {$$ = $1;}
              | Number                      {$$ = new ExpressionNode(T_NUM, NOP, NULL, NULL, to_string($1), $1);}

UnaryExp      : PrimaryExp                  {$$ = $1;} 
              | IDENT '(' FuncRParams ')'   {$$ = new ExpressionNode(T_FUNCAL, NOP, $3, NULL, $1);}
              | '+' UnaryExp                {$$ = $2;}
              | '-' UnaryExp                {$$ = new ExpressionNode(T_UNK, NEG, $2);}
              | '!' UnaryExp                {$$ = new ExpressionNode(T_UNK, NOT, $2);}

FuncRParams   : Exp ',' FuncRParams         {$$ = $1, $$->nxt = $3;}
              | Exp                         {$$ = $1;}
              |                             {$$ = NULL;}

MulExp        : UnaryExp                    {$$ = $1;}
              | MulExp '*' UnaryExp         {$$ = new ExpressionNode(T_UNK, MUL, $1, $3);}
              | MulExp '/' UnaryExp         {$$ = new ExpressionNode(T_UNK, DIV, $1, $3);}
              | MulExp '%' UnaryExp         {$$ = new ExpressionNode(T_UNK, MOD, $1, $3);}

AddExp        : MulExp                      {$$ = $1;}
              | AddExp '+' MulExp           {$$ = new ExpressionNode(T_UNK, ADD, $1, $3);}
              | AddExp '-' MulExp           {$$ = new ExpressionNode(T_UNK, SUB, $1, $3);}

RelExp        : AddExp                      {$$ = $1;}
              | RelExp '<' AddExp           {$$ = new ExpressionNode(T_UNK, LT, $1, $3);}
              | RelExp '>' AddExp           {$$ = new ExpressionNode(T_UNK, GT, $1, $3);}
              | RelExp T_LE AddExp          {$$ = new ExpressionNode(T_UNK, LE, $1, $3);} 
              | RelExp T_GE AddExp          {$$ = new ExpressionNode(T_UNK, GE, $1, $3);} 

EqExp         : RelExp                      {$$ = $1;}
              | EqExp T_EQ RelExp           {$$ = new ExpressionNode(T_UNK, EQ, $1, $3);}
              | EqExp T_NE RelExp           {$$ = new ExpressionNode(T_UNK, NE, $1, $3);}

LAndExp       : EqExp                       {$$ = $1;}
              | LAndExp T_AND EqExp         {$$ = new ExpressionNode(T_Logical, AND, $1, $3);}
LOrExp        : LAndExp                     {$$ = $1;}
              | LOrExp T_OR LAndExp         {$$ = new ExpressionNode(T_Logical, OR, $1, $3);}
ConstExp      : AddExp                      {$$ = $1;}
%%

using namespace std;

int cur_line = 1;
void yyerror(const char *msg);
void unrecognized_char(char c);
int str2dec(char* text);
int hex2dec(char* text);
int oct2dec(char* text);
extern string final_code;

void unrecognized_char(char c) 
{
    char buf[32] = "Unrecognized: ";
    int len=strlen(buf);
    buf[len] = c;
    buf[len+1] = 0;
    yyerror(buf);
}

void yyerror(const char *msg) 
{
    printf("Error at line %d:\n\t%s\n", cur_line, msg);
    exit(1);
}

int str2dec(char *text)
{
    int len = strlen(text);
    int number = 0;
    for(int i=0;i<len;i++)
        number = number*10 + text[i]-'0';
    return number;
}
int hex2dec(char *text)
{
    int len = strlen(text);
    int number = 0;
    for(int i=2;i<len;i++)
    {
        if(text[i]>='0' && text[i]<='9') number = number*16+text[i]-'0';
        else if(text[i]>='A' && text[i]<='Z') number = number*16 + text[i]-'A'+10;
        else number = number*16+text[i]-'a'+10;
    }
    return number;
}
int oct2dec(char *text)
{
    int len = strlen(text);
    int number = 0;
    for(int i=0;i<len;i++)
        number = number*8 + text[i]-'0';
    return number;
}


int main(int argc, char **argv) 
{
    string out_name;
    for (int c; (c = getopt(argc, argv, "Se:o:")) != EOF;) 
    {
        switch (c) 
        {
            case 'S':
                break;
            case 'e':
                yyin = fopen(optarg, "r");
                break;
            case 'o':
                yyout = fopen(optarg, "w");
                break;
            default:
                yyerror("unknown argument");
        }
    }
    
    if (yyin == NULL || yyout == NULL)
        yyerror("failed to open files\n");
    Init();
    do 
    {
        yyparse();
    }while(!feof(yyin));
    fprintf(yyout, "%s", final_code.c_str());
    return 0;
}