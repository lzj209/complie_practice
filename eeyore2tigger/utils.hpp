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
#include <vector>
using namespace std;
extern "C" {
    int yyparse();
    int yylex();
}
extern FILE* yyin;
extern FILE* yyout;

enum Operator{ADD, SUB, MUL, DIV, MOD, NOT, LT, GT, LE, GE, EQ, NE, AND, OR};

typedef union
{
    Operator op;
    const char *id;
} My_yylval;
#define YYSTYPE My_yylval

struct var_entry
{   
    string name;
    string addr;
    string reg;
    int init_val;
    bool is_array;
    bool is_global;
    bool is_num;
    bool is_dirty;
    var_entry(){}
    var_entry(string _name, string _addr, bool _array, bool _global, bool _num, string _reg = "") 
    {
        name = _name;
        addr = _addr;
        reg = _reg;
        is_array = _array;
        is_global = _global;
        is_num = _num;
        is_dirty = false;
        init_val = 0;
    }
};

void Init();

void put_func();

void Decl(string name);

void Decl(string num, string name);

void initial(string name, string num);

void initial(string name, string num1, string num2);

void funcheader(string func, string num);

void funcend(string func);

void binop(string name, string num1, Operator op, string num2);

void sinop(string name, Operator op, string val);

void assign(string name, string val);

void assign(string name, string num1, string num2);

void assigna(string name1, string name2, string val);

void if_exp(string num1, Operator op, string num2, string lab);

void goto_exp(string lab);

void label_exp(string lab);

void param_exp(string val);

void func_call(string func);

void assign_fun(string name, string func);

void return_exp(string val);

void return_exp();

void rightv(string num);
