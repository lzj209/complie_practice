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

using namespace std;
%}

%token VAR END IF GOTO PARAM CALL RETURN 
%token <op> OP LOGICOP
%token <id> SYMBOL LABEL FUNCTION NUM
%type <op> BinOp
%type <id>  RightValue

%%


Program         : Program Declaration                         
                | Program Initialization             
                | Program FunctionDef            
                |  

Declaration     : VAR SYMBOL                                    {Decl($2);}
                | VAR NUM SYMBOL                                {Decl($2, $3);}

Initialization  : SYMBOL '=' NUM                                {initial($1, $3);}
                | SYMBOL '[' NUM ']' '=' NUM                    {initial($1, $3, $6);}
FunctionDef     : FunctionHeader Statements FunctionEnd         {}
FunctionHeader  : FUNCTION '[' NUM ']'                          {funcheader($1, $3);}
Statements      : Statements Statement                          {}
                |                                               {}

FunctionEnd     : END FUNCTION                                  {funcend($2);}

Statement       : Expression                                    {}
                | Declaration                                   {}
Expression      : SYMBOL '=' RightValue BinOp RightValue        {binop($1, $3, $4, $5);}
                | SYMBOL '=' OP RightValue                      {sinop($1, $3, $4);}
                | SYMBOL '=' RightValue                         {assign($1, $3);}
                | SYMBOL '[' RightValue ']' '=' RightValue      {assign($1, $3, $6);}
                | SYMBOL '=' SYMBOL '[' RightValue ']'          {assigna($1, $3, $5);}
                | IF RightValue LOGICOP RightValue GOTO LABEL   {if_exp($2, $3, $4, $6);}
                | GOTO LABEL                                    {goto_exp($2);}
                | LABEL ':'                                     {label_exp($1);}
                | PARAM RightValue                              {param_exp($2);}
                | CALL FUNCTION                                 {func_call($2);}
                | SYMBOL '=' CALL FUNCTION                      {assign_fun($1, $4);}
                | RETURN RightValue                             {return_exp($2);}
                | RETURN                                        {return_exp();}
RightValue      : SYMBOL                                        {$$ = $1; rightv($1);}
                | NUM                                           {$$ = $1; rightv($1);}
BinOp           : OP                                            {$$ = $1;}
                | LOGICOP                                       {$$ = $1;}


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


int main(int argc, char **argv) 
{
    for (int c; (c = getopt(argc, argv, "St:o:")) != EOF;) 
    {
        switch (c) 
        {
            case 'S':
                break;
            case 't':
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
    put_func();
    fflush(yyout);
    return 0; 
}