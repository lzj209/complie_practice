%option yylineno
%option noyywrap
%option noinput
%option nounput
%{
#include "utils.hpp"
#include "eeyore.tab.hpp"

extern "C" {
    int yyparse();
    int yylex();
}

extern int yyparse();
extern int yylex();
void yyerror(const char *msg);
void unrecognized_char(char c);
extern int cur_line;

using namespace std;
%}

Comment         \/\/.*
Whitespace      [ \t]
Newline         [\n\r]
Integer         (-)?[0-9]+
Identifier      [_a-zA-Z][_a-zA-Z0-9]*
Function        f_{Identifier}
Label           l{Integer}
Symbol          [:\[\]=]

%%
{Comment}       {}
{Whitespace}    {}
{Newline}       {cur_line++; }
"var"           {return VAR; }
"end"           {return END; }
"if"            {return IF; }
"goto"          {return GOTO; }
"call"          {return CALL; }
"return"        {return RETURN; }
"param"         {return PARAM; }
"<="            {yylval.op = LE; return LOGICOP; }
">="            {yylval.op = GE; return LOGICOP; }
"=="            {yylval.op = EQ; return LOGICOP; }
"!="            {yylval.op = NE; return LOGICOP; }
"&&"            {yylval.op = AND; return LOGICOP; }
"||"            {yylval.op = OR; return LOGICOP; }
"!"             {yylval.op = NOT; return LOGICOP; }
"<"             {yylval.op = LT; return LOGICOP; }
">"             {yylval.op = GT; return LOGICOP; }
"+"             {yylval.op = ADD; return OP; }
"-"             {yylval.op = SUB; return OP; }
"*"             {yylval.op = MUL; return OP; }
"/"             {yylval.op = DIV; return OP; }
"%"             {yylval.op = MOD; return OP; }

"t"{Integer}   {yylval.id = strdup(yytext); return SYMBOL; }
"T"{Integer}   {yylval.id = strdup(yytext); return SYMBOL; }
"p"{Integer}   {yylval.id = strdup(yytext); return SYMBOL; }
{Label}         {yylval.id = strdup(yytext); return LABEL; }
{Integer}       {yylval.id = strdup(yytext); return NUM; }
{Function}      {yylval.id = strdup(yytext); return FUNCTION; }
{Symbol}        {return yytext[0]; }
.               {unrecognized_char(yytext[0]); }
%%

