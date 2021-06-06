#include<cstdio>
#include<cstdlib>
#include<iostream>
#include<iomanip>
#include<cstring>
#include<string>
#include<algorithm>
#include<cmath>
#include<vector>
#include<deque>
using namespace std;

extern "C" {
    int yyparse();
    int yylex();
}

struct Variable;
struct Node;
struct FuncDefNode;
struct ExpressionNode;
struct StmtNode;
struct VardefNode;


typedef union
{
    const char *ID;
    int NUM;
    ExpressionNode* T_Exp;
    VardefNode* T_Vardef;
    FuncDefNode* T_FuncDef;
    StmtNode * T_Stmt;
} My_yylval;
#define YYSTYPE My_yylval

extern int yylineno;


enum Operator {NOP, NEG, AND, OR, NOT, MUL, DIV, MOD, ADD, SUB, GT, LT, EQ, NE, GE, LE};

enum VALUE_TYPE {T_NUM, T_TMP, T_VAR, T_FUNCAL, T_UNK, T_NOP, T_VarDef, T_FuncDef, T_Logical, T_Code,
                T_AssignValue, T_EXP, T_IF, T_WHILE, T_BREAK, T_CONTINUE, T_RETURN};

extern string final_code;
extern string root_init_code;
void inc_root_init_code(StmtNode* o);
void inc_init_blk();
void dec_init_blk();
void inc_blk();
void dec_blk(bool);
void inc_while();
void dec_while();

void combine_final_code(FuncDefNode* o);
void calc_final_code();
void Init();

//T_UNK is unknow it is variable or just a number

struct Variable
{
    string name_sysy;
    string name_eeyore;
    bool is_array;
    bool is_param;
    bool is_const;
    bool is_global;
    int total_size;
    deque<int> shape;
    deque<int> values;
    deque<int> base;
    Variable(){}

};

struct Function
{
    string name_sysy;
    string name_eeyore;
    bool has_return;
    vector< Node* > sons;
    string declear_code;
    string origin_code;
    int num_params;
    Function()
    {
        num_params = 0;
        name_sysy = name_eeyore = "";
        has_return = false;
        sons.clear();
        declear_code = "";
    }
};

struct Node
{
    string code;
    VALUE_TYPE type;
};

struct ExpressionNode : Node
{
    ExpressionNode *left;
    ExpressionNode *right;
    ExpressionNode *nxt;
    Operator op;
    int result;
    int tmp_id; // 0 is didn't allocate a tmp variable
    int poa;    // pos of array for array initialization
    string name_sysy;
    string name_eeyore;
    string childs_code; // code of all child node

    ExpressionNode(VALUE_TYPE _type, Operator _op = NOP, ExpressionNode* _left = NULL, ExpressionNode* _right = NULL, string _name_sysy="", int _result = 0,  ExpressionNode *_nxt=NULL)
    {
        type = _type;
        left = _left;
        right = _right;
        nxt = _nxt;
        op = _op;
        result = _result;
        name_sysy = _name_sysy;
        name_eeyore = "";
        code = "";
        childs_code = "";
        tmp_id = 0;
        poa = 0;
        init();
    }
    void init();
    void make_tmp(bool ignore_opt);
    void make_final_code();
    void update_pos();
    void deal_with_cond(int true_label, int false_label); //for logical expressions only
};


struct VardefNode : Node
{
    VardefNode *nxt;
    ExpressionNode *left; // dim of the variable
    ExpressionNode *right; // initvalue
    Variable v;
    VardefNode(bool _is_const, bool _is_param, string _name_sysy = "", ExpressionNode *_left = NULL, ExpressionNode *_right = NULL)
    {
        code = "";
        v.is_const = _is_const;
        v.is_param = _is_param;
        v.name_sysy = _name_sysy;
        v.name_eeyore = "";
        left = _left;
        right = _right;
        if(_left) v.is_array = true;
        else v.is_array = false;
        v.is_global = false;
        v.shape.clear();
        v.values.clear();
        v.base.clear();
        nxt = NULL;
        v.total_size = 0;
        type = T_VarDef;
        init();
    }
    void init();
    void add_a_dimension(); //for param
    void registe_var();
    void make_final_code();
};

struct FuncDefNode : Node
{
    Function f;
    VardefNode *son;
    StmtNode *blk;
    FuncDefNode(){}
    FuncDefNode(bool has_return, VardefNode *_son, string _name_sysy)
    {
        f.name_sysy = _name_sysy;
        f.name_eeyore = "f_" + f.name_sysy;
        f.has_return = has_return;
        son = _son;
        type = T_FuncDef;
        code = "";
        f.name_eeyore = "f_"+f.name_sysy;
    }
    void registe_func();
    void make_final_code();
};

struct StmtNode : Node
{
    StmtNode *nxt;
    ExpressionNode *cond;
    StmtNode *S1, *S2;
    ExpressionNode *left, *right;
    bool has_accumulated;
    StmtNode(VALUE_TYPE _type, ExpressionNode *_cond = NULL, ExpressionNode *_left = NULL,
     ExpressionNode* _right = NULL, StmtNode *_S1 = NULL, StmtNode *_S2 = NULL)
    {
        nxt=NULL;
        type = _type;
        cond = _cond;
        left = _left;
        right = _right;
        S1 = _S1;
        S2 = _S2;
        code = "";
        has_accumulated = false;
        make_final_code();
    }
    void make_final_code();
    void accumulate_code();
};