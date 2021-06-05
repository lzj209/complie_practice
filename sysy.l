%option yylineno
%option noyywrap
%option noinput
%option nounput
%{
#include "parse_tree.hpp"
#include "sysy.tab.hpp"

extern "C" {
    int yyparse();
    int yylex();
}

void yyerror(const char *msg);
void unrecognized_char(char c);
int str2dec(char* text);
int hex2dec(char* text);
int oct2dec(char* text);
extern string final_code;

// comment is "// or /* ([^\*]|\*[^\/])* */"
%}


COMMENT         \/\/.*|\/\*([^\*]|\*[^\/])*\*\/ 
WHITESPACE      [ \t]
NEWLINE         [\n\r]
DECCONST        [1-9][0-9]*
OCTCONST        0[0-7]*
HEXCONST        (0x|0X)[0-9a-fA-F]+          
SINGLEOPERATOR  [!\+\-\*\/%<>;,\(\)\{\}\[\]=]
IDENTIFIER      [_a-zA-Z][_a-zA-Z0-9]*
ILLEGALCHAR     .



%%
{COMMENT}       {}
{WHITESPACE}    {}
{NEWLINE}       {}
"return"        { return RETURN; }
"if"            { return IF; }
"else"          { return ELSE; }
"while"         { return WHILE; }
"continue"      { return CONTINUE; }
"break"         { return BREAK; }
"const"         { return CONST; }
"int"           { return INT; }   
"void"          { return VOID; }
"<="            { return T_LE; }
">="            { return T_GE; }
"=="            { return T_EQ; }
"!="            { return T_NE; }
"&&"            { return T_AND; }
"||"            { return T_OR; }
{SINGLEOPERATOR} { return yytext[0]; }
{IDENTIFIER}    { yylval.ID = strdup(yytext); return IDENT; }
{DECCONST}      { yylval.NUM = str2dec(yytext); return Number; }
{OCTCONST}      { yylval.NUM = oct2dec(yytext); return Number; }
{HEXCONST}      { yylval.NUM = hex2dec(yytext); return Number; }
.               { unrecognized_char(yytext[0]); }
%%
