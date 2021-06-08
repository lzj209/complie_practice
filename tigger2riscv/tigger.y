%{
#include "utils.hpp"

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


%}

%token MALLOC END IF GOTO CALL RETURN STORE LOAD LOADADDR
%token <op> OP LOGICOP
%token <ID> Reg LABEL VARIABLE FUNCTION
%token <num> NUM
%type <op> BinOp

%%

Program         : Program GlobalVarDecl             {}
                | Program FunctionDef               {}
                |                                   {}

GlobalVarDecl   : VARIABLE '=' NUM                  {global_dec($1, $3);}
                | VARIABLE '=' MALLOC NUM           {global_dec_arr($1, $4);}
FunctionDef     : FunctionHeader Expressions FunctionEnd       {}
FunctionHeader  : FUNCTION '[' NUM ']' '[' NUM ']'  {funcdef($1, $3, $6);}
Expressions     : Expressions Expression            {}
                |                                   {}
FunctionEnd     : END FUNCTION                      {end_func($2);}                

Expression      : Reg '=' Reg BinOp Reg             {bir($4, $1, $3, $5);}
                | Reg '=' Reg BinOp NUM             {bin($4, $1, $3, $5);}
                | Reg '=' OP Reg                    {unir($3, $1, $4);}
                | Reg '=' Reg                       {assign($1, $3);}
                | Reg '=' NUM                       {assign($1, $3);}
                | Reg '[' NUM ']' '=' Reg           {assign($1, $3, $6);}
                | Reg '=' Reg '[' NUM ']'           {assign($1, $3, $5);}
                | IF Reg LOGICOP Reg GOTO LABEL     {branch($3, $2, $4, $6);}
                | GOTO LABEL                        {Goto($2);}
                | LABEL ':'                         {Label($1);}
                | CALL FUNCTION                     {call_func($2);}
                | RETURN                            {Return();}
                | STORE Reg NUM                     {store($2, $3);}
                | LOAD NUM Reg                      {load($2, $3);}
                | LOAD VARIABLE Reg                 {loadV($2, $3);}
                | LOADADDR NUM Reg                  {loadaddr($2, $3);}
                | LOADADDR VARIABLE Reg             {loadaddr($2, $3);}
BinOp           : OP                                {$$ = $1;}
                | LOGICOP                           {$$ = $1;}

%%

using namespace std;

int cur_line = 1;
void yyerror(const char *msg);
void unrecognized_char(char c);
int str2dec(char* text);

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
    bool neg = false;
    if(text[0]=='-') 
    {
        neg = true; 
        text += 1;
    }
    int len = strlen(text);
    int number = 0;
    for(int i=0;i<len;i++)
        number = number*10 + text[i]-'0';
    return neg?-number:number;
}

int main(int argc, char **argv) 
{
    for (int c; (c = getopt(argc, argv, "S:o:")) != EOF;) 
    {
        switch (c) 
        {
            case 'S':
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
    fflush(yyout);
    return 0;
}