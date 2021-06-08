#include <unistd.h>
#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <cmath>
#include <iostream>
#include <iomanip>
#include <algorithm>
#include <string>
#include <cstring>
#include <map>
using namespace std;
extern "C" {
    int yyparse();
    int yylex();
}

enum Operator{ADD, SUB, MUL, DIV, MOD, NOT, LT, GT, LE, GE, EQ, NE};
extern FILE* yyout;

typedef union
{
    Operator op;
    const char *ID;
    int num;
} My_yylval;
#define YYSTYPE My_yylval

void Init();
bool isint12(int num);
void funcdef(const char* func, int num1, int num2);
void global_dec(const char *global_var, int num);
void global_dec_arr(const char *global_var, int num);
void end_func(const char *func);
void bir(Operator op, const char *r1, const char *r2, const char *r3);
void bin(Operator op, const char *r1, const char *r2, int num);
void unir(Operator op, const char *r1, const char *r2);
void assign(const char *r1, const char *r2);
void assign(const char *r, int num);
void assign(const char *r1, int num, const char *r2);
void assign(const char *r1, const char *r2, int num);
void branch(Operator op, const char *r1, const char *r2, const char *label);
void Goto(const char *label);
void Label(const char *label);
void call_func(const char *func);
void Return();
void store(const char *r, int num);
void load(int num, const char *r);
void loadV(const char *v, const char *r);
void loadaddr(int num, const char *r);
void loadaddr(const char *v, const char *r);