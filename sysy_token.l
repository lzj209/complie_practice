%{
#define YYSTYPE char *
#include "y.tab.h"
void yyerror(const char *msg);
void unrecognized_char(char c);
struct my_yylval;
int cur_line = 1;
int str2dec(char* text);
int hex2dec(char* text);
int oct2dec(char* text);


// comment is "// or /* ([^\*]|\*[^\/])* */"
%}


COMMENT         \/\/.*|\/\*([^\*]|\*[^\/])*\*\/ 
WHITESPACE      [ \t]
NEWLINE         [\n\r]
DECCONST        [1-9][0-9]*
OCTCONST        0[0-7]*
HEXCONST        (0x|0X)[0-9a-fA-F]+          
SINGLEOPERATOR  [\+\-\*\/%<>;,\(\)\{\}\[\]=]
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
"<="            { return LE; }
">="            { return GE; }
"=="            { return EQ; }
"!="            { return NE; }
"&&"            { return AND; }
"||"            { return OR; }
{SINGLEOPERATOR} { return yytext[0]; }
{IDENTIFIER}    { yylval.ID = strdup(yytext); return IDENT; }
{DECCONST}      { yylval.NUM = str2dec(yytext); return Number; }
{OCTCONST}      { yylval.NUM = oct2dec(yytext); return Number; }
{HEXCONST}      { yylval.NUM = hex2dec(yytext); return Number; }
.               { unrecognized_char(yytext[0]); }
%%


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