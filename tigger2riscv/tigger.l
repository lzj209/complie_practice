%option yylineno
%option noyywrap
%option noinput
%option nounput
%{
#include "utils.hpp"
#include "tigger.tab.hpp"

extern "C" {
    int yyparse();
    int yylex();
}

extern int yyparse();
extern int yylex();
void yyerror(const char *msg);
void unrecognized_char(char c);
int str2dec(char *text);
extern int cur_line;

using namespace std;
%}

Comment         \/\/.*
Whitespace      [ \t]
Newline         [\n\r]
Integer         (-)?[0-9]+
Identifier      [_a-zA-Z][_a-zA-Z0-9]*
Function        f_{Identifier}
Variable        v{Integer}
Lable           l{Integer}
Symbol          [:\[\]=]

%%
{Comment}       {}
{Whitespace}    {}
{Newline}       {cur_line++; }
"malloc"        {return MALLOC; }
"end"           {return END; }
"if"            {return IF; }
"goto"          {return GOTO; }
"call"          {return CALL; }
"return"        {return RETURN; }
"store"         {return STORE; }
"load"          {return LOAD; }
"loadaddr"      {return LOADADDR; }
"<="            {yylval.op = LE; return LOGICOP; }
">="            {yylval.op = GE; return LOGICOP; }
"=="            {yylval.op = EQ; return LOGICOP; }
"!="            {yylval.op = NE; return LOGICOP; }
"!"             {yylval.op = NOT; return LOGICOP; }
"<"             {yylval.op = LT; return LOGICOP; }
">"             {yylval.op = GT; return LOGICOP; }
"+"             {yylval.op = ADD; return OP; }
"-"             {yylval.op = SUB; return OP; }
"*"             {yylval.op = MUL; return OP; }
"/"             {yylval.op = DIV; return OP; }
"%"             {yylval.op = MOD; return OP; }
"x0"            {yylval.ID = strdup(yytext); return Reg; }
"s1"[0-1]       {yylval.ID = strdup(yytext); return Reg; }
"s"[0-9]        {yylval.ID = strdup(yytext); return Reg; }
"t"[0-6]        {yylval.ID = strdup(yytext); return Reg; }
"a"[0-7]        {yylval.ID = strdup(yytext); return Reg; }
{Lable}         {yylval.ID = strdup(yytext); return LABEL; }
{Integer}       {yylval.num = str2dec(yytext); return NUM; }
{Variable}      {yylval.ID = strdup(yytext); return VARIABLE; }
{Function}      {yylval.ID = strdup(yytext); return FUNCTION; }
{Symbol}        {return yytext[0]; }
.               {unrecognized_char(yytext[0]); }
%%

