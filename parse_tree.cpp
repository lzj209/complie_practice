#include "parse_tree.hpp"
#include <map>
using namespace std;


typedef map< string, Variable* > var_table;
vector< var_table > var_stack;
map< string, Function* > func_table;
map<int, string> op_map;
Variable* current_variable;

string final_code = "";


void dbg_printf(string error_message)
{
    cerr<<error_message;
    exit(0);
}

#define Concat(x, y) (y=="" ? x : (x + (x==""?"":"\n") + y)) 
Function* root_func = new Function();

int fuc_num = 0; //number of functions
Function* current_func; // current function, "0" is global
int T_num = 0;
int tmp_num = 0; //number of tmp variables
int p_num = -1;
int current_block = 0; //number of the block, 0 is global
int label_num = 0;
vector<FuncDefNode*> final_pool;

string root_init_code = "";

void inc_root_init_code(StmtNode *o)
{
    while(o)
    {
        root_init_code = Concat(root_init_code, o->code);
        o = o->nxt;
    }
}

void combine_final_code(FuncDefNode* o)
{
    final_pool.push_back(o);
}

void calc_final_code()
{
    final_code = Concat(root_func->declear_code, final_code);
    final_code = Concat(root_func->origin_code, final_code);
    for(int i=0;i<final_pool.size();i++)
    {
        final_pool[i]->make_final_code();
        final_code = Concat(final_code, final_pool[i]->code);
    }
    final_code += "\n";
}

struct while_info
{
    int L1,L2,L3;
    while_info(){}
    while_info(int _,int __, int ___):L1(_),L2(__),L3(___){}
};
vector<while_info> while_stack;
void inc_while()
{
    int L1 = label_num++;
    int L2 = label_num++;
    int L3 = label_num++;
    while_stack.push_back(while_info(L1,L2,L3));
}
void dec_while()
{
    while_stack.pop_back();
}


void inc_blk()
{
    current_block+=1;
    var_stack.push_back(var_table());
}

void dec_blk(bool reset_func=false)
{
    current_block-=1;
    var_stack.pop_back();
    if(reset_func)
        current_func = root_func;
}


int initblock = -1;
int initpos = 0;
void inc_init_blk()
{
    int ninitpos = initpos;
    int current_base;
    if(initblock == -1)
        current_base = current_variable -> total_size;    
    else
        current_base = current_variable -> base[initblock];
    if(initpos % current_base != 0)
        ninitpos = ((initpos/current_base) + 1) * current_base;
    for(int i=initpos; i<ninitpos; i++)
        current_variable -> values[i] = 0;
    
    initpos = ninitpos; 
    initblock +=1;
}

void dec_init_blk()
{
    initblock-=1;
    int ninitpos = initpos;
    int current_base;
    if(initblock == -1)
        current_base = current_variable -> total_size;    
    else
        current_base = current_variable -> base[initblock];
    ninitpos = (((initpos-1)/current_base) + 1) * current_base;
    for(int i=initpos;i<ninitpos;i+=4) 
        current_variable -> values[i/4] = 0;
    initpos = ninitpos;
}

void Init()
{
    current_func = root_func;
    var_stack.push_back(var_table());
    op_map[NEG] = "-";
    op_map[AND] = "&&";
    op_map[OR] = "||";
    op_map[NOT] = "!";
    op_map[MUL] = "*";
    op_map[DIV] = "/";
    op_map[MOD] = "%";
    op_map[ADD] = "+";
    op_map[SUB] = "-";
    op_map[GT] = ">";
    op_map[LT] = "<";
    op_map[EQ] = "==";
    op_map[NE] = "!=";
    op_map[GE] = ">=";
    op_map[LE] = "<=";
}

Variable* find_variable(string name)
{
    for(int i = current_block; i >=0 ; i--)
        if(var_stack[i].find(name) != var_stack[i].end())
            return var_stack[i][name];
    dbg_printf("didn't find the variable: " + name);
}



void ExpressionNode :: make_tmp(bool ignore_opt = false)
{
    if(type == T_Logical)  return; // do nothing with logical expressions
    if(tmp_id != 0) return;
    if(!ignore_opt)
    {
        if(type == T_VAR && !left) return; //single variable not array don't need tmp
        if(type == T_NUM) return;
    } 
    tmp_num += 1;
    tmp_id = tmp_num;
    name_eeyore = "t"+to_string(tmp_id);
    current_func->declear_code = Concat(current_func->declear_code, ("var "+ name_eeyore));
    code = name_eeyore + " = " + code;
}

void ExpressionNode :: update_pos()
{
    poa = initpos;
    if(type == T_NUM)
        current_variable -> values[poa/4] = result;
    initpos += 4;
    return;
}

void ExpressionNode :: make_final_code()
{
    if(code == name_eeyore)  code = childs_code;
    else code = Concat(childs_code, code);
    return;
}

void ExpressionNode :: deal_with_cond(int true_label, int false_label)
{
    if(type!=T_Logical)
    {
        if(type == T_NUM)
        {
            string tmp_code;
            if(result==0)  tmp_code = "goto l" + to_string(false_label);
            else tmp_code = "goto l" + to_string(true_label);
            code = tmp_code;
        }
        else if(op == EQ || op == NE || op == LE || op == GE || op ==GT || op == LT)
        {
            string tmp_code = "if " + code + " goto l" + to_string(true_label);
            code = childs_code;
            code = Concat(code, tmp_code);
            tmp_code = "goto l" + to_string(false_label);
            code = Concat(code, tmp_code);
        }
        else
        {
            make_tmp();
            make_final_code();
            string tmp_code = "if " + name_eeyore + " == 0 goto l" + to_string(false_label);   
            code = Concat(code, tmp_code);
            tmp_code = "goto l" + to_string(true_label);
            code = Concat(code, tmp_code);
        } 
        return;
    }
    else 
    {
        int tmp_label = label_num++;
        if(op == OR)
            left->deal_with_cond(true_label, tmp_label);
        else 
            left->deal_with_cond(tmp_label, false_label);
        code = left->code;
        code = Concat(code, "l"+to_string(tmp_label)+":");
        right->deal_with_cond(true_label, false_label);
        code = Concat(code, right->code);
    }
    /*
    if(left -> type == T_Logical)
    {
        //deal with small logical expressions
        int tmp_label = label_num++;
        if(op == OR)
            left->deal_with_cond(true_label, tmp_label);
        else 
            left->deal_with_cond(tmp_label, false_label);
        code = left->code;
        code = Concat(code, "l"+to_string(tmp_label)+":");
    }
    else 
    {
        left->make_tmp();
        left->make_final_code();
        code = left->code;
        string tmp_code = "";
        if(op == OR)
            tmp_code = "if " + left->name_eeyore + " == 1 goto l" + to_string(true_label);   
        else
            tmp_code = "if " + left->name_eeyore + " == 0 goto l" + to_string(false_label);
        code = Concat(code, tmp_code);
        
    }
    if(right->type == T_Logical)
    {
        right->deal_with_cond(true_label, false_label);
        code = Concat(code, right->code);
    }
    else 
    {
        right->make_tmp();
        right->make_final_code();
        string tmp_code = "";
        tmp_code = "if " + right->name_eeyore + " == 1  goto l" + to_string(true_label);
        code = Concat(code, tmp_code);
        tmp_code = "goto l" + to_string(false_label);
        code = Concat(code, tmp_code);
    }
    */
}

void ExpressionNode :: init()
{

    if(type == T_NOP) return;
    if(type == T_Logical) return; // do nothing with logical expressions when init
    if(type == T_FUNCAL) // is a function call
    {
        ExpressionNode *o = left;
        vector<string> param_list;
        param_list.clear();
        while(o)
        {
            o->make_tmp();
            o->make_final_code();
            childs_code = Concat(childs_code, o->code);
            param_list.push_back(o->name_eeyore);
            o = o->nxt;
        }
        for(int i=0;i<param_list.size();i++)
            childs_code = Concat(childs_code, "param " + param_list[i]);
        code = "call f_" + name_sysy;
    }
    // A variable or an array
    else if(type == T_VAR)
    {
        Variable* info = find_variable(name_sysy);
        name_eeyore = info -> name_eeyore;
        if(left) // is array
        {
            ExpressionNode *o = left;
            int tmpdim = 0;
            string last_tmp = "";
            int tmp_result = 0;
            
            while(o)
            {
                int base = info -> base[tmpdim];
                //final dim's base should be 4
                if(o->type == T_NUM && last_tmp=="")
                    tmp_result = tmp_result + base * o->result;
                else 
                {
                    o->make_tmp(true);
                    o->make_final_code();
                    childs_code = Concat(childs_code, o->code);
                    string tmp_code = o->name_eeyore + " = " + o->name_eeyore + " * " + to_string(base);
                    childs_code = Concat(childs_code, tmp_code);
                    if(last_tmp == "" && tmp_result != 0)
                        last_tmp = to_string(tmp_result);
                    if(last_tmp!="")
                    {
                        tmp_code = o->name_eeyore + " = " + last_tmp + " + " + o->name_eeyore;
                        childs_code = Concat(childs_code, tmp_code);
                    }
                    last_tmp = o->name_eeyore;
                }
                o = o->nxt;
                tmpdim+=1;
            }
            if(tmpdim == info->shape.size())
            {
                //is a value
                if(last_tmp == "" && info -> is_const) //is a const
                {
                    type = T_NUM;
                    result = info -> values[tmp_result/4];
                    name_eeyore = to_string(result);
                    code = name_eeyore;
                    return;
                }
                if(last_tmp == "") last_tmp = to_string(tmp_result);
                code = name_eeyore + "[" + last_tmp + "]";
                name_eeyore = code;
            }
            else 
            {
                //is a pointer
                if(last_tmp == "")
                    last_tmp = to_string(tmp_result);
                code = name_eeyore + " + " + last_tmp;
            }
        }

        else // is just a variable
        {
            if(info -> is_const)
            {
                type = T_NUM;
                result = info -> values[0];
                name_eeyore = to_string(result);
                code = name_eeyore;
            }
            else 
            {
                name_eeyore = info -> name_eeyore;
                code = name_eeyore;
            }
            return;
        }
    }
    // A constant number, its eeyore name is just the number
    else if(type == T_NUM)
    {
        name_eeyore = to_string(result);
        code = name_eeyore;
        return;
    }

    else if(type == T_UNK)
    {
        //arithmetic node
        if(right)
        {
            //binary operation
            if(left -> type == T_NUM && right -> type == T_NUM)
            {
                //just number, we can calculate it when compiling
                this->type = T_NUM;
                switch(op)
                {   
                    case ADD:
                        result = left->result + right->result;
                        break;
                    case SUB:
                        result = left->result - right->result;
                        break;
                    case MUL:
                        result = left->result * right->result;
                        break;
                    case DIV:
                        result = left->result / right->result;
                        break;
                    case MOD:
                        result = left->result % right->result;
                        break;
                    case GT:
                        result = left->result > right->result;
                        break;
                    case LT:
                        result = left->result > right->result;
                        break;
                    case EQ:
                        result = left->result == right->result;
                        break;
                    case NE:
                        result = left->result != right->result;
                        break;
                    case GE:
                        result = left->result >= right->result;
                        break;
                    case LE:
                        result = left->result <= right->result;
                        break;
                    default:
                        dbg_printf("Operator Illegal");
                }
                name_eeyore = to_string(result);
                code = name_eeyore;
                return;
            }
            else
            {
                this->type = T_TMP;
                left->make_tmp();
                left->make_final_code();
                right->make_tmp();
                right->make_final_code();
                childs_code = Concat(left->code, right->code);
                code = left->name_eeyore + " " + op_map[op] + " " +right->name_eeyore;
                return;
            }
        }
        else 
        {
            if(left->type == T_NUM)
            {
                this->type = T_NUM;
                switch(op)
                {   
                    case NEG:
                        result = - left->result;
                        break;
                    case NOT:
                        result = !(left->result);
                        break;
                    default:
                        dbg_printf("Operator Illegal");
                }
                name_eeyore = to_string(result);
                code = name_eeyore;
                return;
            }
            else 
            {
                this->type = T_TMP;
                left->make_tmp();
                left->make_final_code();
                childs_code = left->code;
                code = op_map[op] + " " + left->name_eeyore;
                return;
            }
        }
    }
}


void VardefNode :: init()
{
    v.is_global = (current_block == 0);
    if(v.is_param)
    {
        p_num += 1;
        v.name_eeyore = "p" + to_string(p_num);
    }
    else 
    {
        T_num += 1;
        v.name_eeyore = "T" + to_string(T_num);
    }
    if(!v.is_array)
    {
        // it is just a variable
        v.shape.push_back(1);
        v.base.push_back(4);
        v.values.push_back(0);
        v.total_size = 4;
    }
    else 
    {
        ExpressionNode *o = left;
        while(o)
        {
            v.shape.push_back(o->result);
            v.base.push_back(0);
            o = o->nxt;
        }
        int len = v.shape.size();
        v.base[len-1] = 4;
        for(int i=len-2;i>=0;i--)
            v.base[i] = v.base[i+1]*v.shape[i+1];
        v.total_size = v.base[0] * v.shape[0];   
        v.values = deque<int> (int(v.total_size/4), 0);
    }
    return;
}

void VardefNode :: add_a_dimension()
{
    if(!v.is_array)
    {
        v.is_array = true;
        v.shape[0] = 0;
        v.base[0] = 4;
    }
    else 
    {
        v.base.push_front(v.base[0] * v.shape[0]);
        v.shape.push_front(0);
    }
    return;
}

void VardefNode :: registe_var()
{
    var_stack[current_block][v.name_sysy] = &v;
    current_variable = &v;
    initblock = -1;
    initpos = 0;
}

void VardefNode :: make_final_code()
{
    if(v.is_param) 
    {
        code = "";
        return;
    }
    code = "var "; 
    code += v.is_array ? to_string(v.total_size) + " " : "";
    code += v.name_eeyore;
    current_func->origin_code = Concat(current_func->origin_code, code);
    code = "";
    ExpressionNode *o = right;
    while(o)
    {
        if(o->type != T_NOP)
        {
            o->make_tmp();
            o->make_final_code();
            code = Concat(code, o->code);
            string tmp_code;
            if(v.is_array)
                tmp_code = v.name_eeyore + "[" + to_string(o->poa) + "]" + " = " + o->name_eeyore;
            else 
                tmp_code = v.name_eeyore + " = " + o->name_eeyore;
            code = Concat(code, tmp_code);
        } 
        o = o->nxt;
    } 
}

void FuncDefNode :: registe_func()
{
    func_table[f.name_sysy] = &f;
    current_func = &f;
    p_num = -1;
    VardefNode *o = son;
    while(o)
    {
        f.num_params += 1;
        o = o->nxt;
    }
}


//TODO
void FuncDefNode :: make_final_code()
{
    if(code!="") return;
    code = f.name_eeyore + " [" + to_string(f.num_params) + "]";
    if(f.name_sysy == "main") code = Concat(code, root_init_code);
    code = Concat(code, f.origin_code);
    code = Concat(code, f.declear_code);
    code = Concat(code, blk->code);
    if(f.has_return == false) 
        code = Concat(code, string("return"));
    code = Concat(code, "end "+f.name_eeyore);
}

void StmtNode :: make_final_code()
{
    if(type == T_NOP)
    {
        code = "";
    }
    else if(type == T_AssignValue)
    {
        right->make_tmp();
        right->make_final_code();
        left->make_final_code();
        code = right->code;
        code = Concat(code, left->code);
        code = Concat(code, left->name_eeyore + " = " + right->name_eeyore);
    }
    else if(type == T_EXP)
    {
        left->make_final_code();
        code = left->code;
    }
    else if(type == T_IF)
    {
        int L1 = label_num++;
        int L2 = label_num++;
        int L3;
        if(S2) L3 = label_num++;
        cond->deal_with_cond(L1,L2);
        code = cond->code;
        code = Concat(code, "l"+to_string(L1)+":");
        code = Concat(code, S1->code);
        if(S2) code = Concat(code, "goto l"+ to_string(L3));
        code = Concat(code, "l"+to_string(L2)+":");
        if(S2)
            code = Concat(code, S2->code);
        if(S2) code = Concat(code, "l"+to_string(L3)+":");
    }
    else if(type == T_WHILE)
    {
        while_info labels = while_stack.back();
        cond->deal_with_cond(labels.L2, labels.L3);
        code = Concat(code, "l"+to_string(labels.L1)+":");
        code = Concat(code, cond->code);
        code = Concat(code, "l"+to_string(labels.L2)+":");    
        code = Concat(code, S1->code);
        code = Concat(code, "goto l" + to_string(labels.L1));
        code = Concat(code, "l"+to_string(labels.L3)+":");
    }
    else if(type == T_BREAK)
    {
        while_info labels = while_stack.back();
        code = "goto l"+ to_string(labels.L3);
    }
    else if(type == T_CONTINUE)
    {
        while_info labels = while_stack.back();
        code = "goto l" + to_string(labels.L1);
    }
    else if(type == T_RETURN)
    {
        if(!left) 
            code = "return";
        else 
        {
            left -> make_tmp();
            left -> make_final_code();
            code = Concat(left->code, "return " + left->name_eeyore);
        }
    }
}

void StmtNode :: accumulate_code()
{
    StmtNode *o = nxt;
    while(o)
    {
        code = Concat(code, o->code);
        o = o->nxt;
    }
    has_accumulated = true;
}
