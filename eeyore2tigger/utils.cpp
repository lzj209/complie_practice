#include "utils.hpp"
using namespace std;
#define NUMREG 28
int str2dec(const char *text)
{
    bool neg = false;
    if (text[0] == '-')
    {
        neg = true;
        text += 1;
    }
    int len = strlen(text);
    int number = 0;
    for (int i = 0; i < len; i++)
        number = number * 10 + text[i] - '0';
    return neg ? -number : number;
}
#define entry(x) find_var(x)
typedef map<string, var_entry *> var_map;
vector<var_map> var_table;

string current_func = "root";
vector<string> func_code;

map<int, string> reg_map;
map<string, int> id_map;
map<Operator, string> op_map;

bool bit_map[NUMREG];

int global_num;
int local_num;
int param_num;

void Init()
{
    var_table.push_back(var_map());
    reg_map[0] = "x0";
    id_map["x0"] = 0;
    int num = 1;
    for (int i = 0; i <= 11; i++)
    {
        reg_map[num++] = "s" + to_string(i);
        id_map["s" + to_string(i)] = num - 1;
    }
    for (int i = 0; i <= 6; i++)
    {
        reg_map[num++] = "t" + to_string(i);
        id_map["t" + to_string(i)] = num - 1;
    }
    for (int i = 0; i <= 7; i++)
    {
        reg_map[num++] = "a" + to_string(i);
        id_map["a" + to_string(i)] = num - 1;
    }
    memset(bit_map, 0, sizeof(bit_map));
    bit_map[0] = 1;            //x0 can never be used
    bit_map[id_map["t0"]] = 1; //t0 can never be allocated (use temporary)
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

string get_register()
{
    for (int i = 0; i < NUMREG; i++)
        if (!bit_map[i])
        {
            bit_map[i] = true;
            return reg_map[i];
        }
}

void release_register(int id)
{
    bit_map[id] = false;
}

void release_register(string reg)
{
    bit_map[id_map[reg]] = false;
}

void allocvar(var_entry *var)
{
    if (var->reg == "")
        var->reg = get_register();
}

void freevar(var_entry *var)
{
    if (var->reg != "")
        release_register(var->reg);
    var->reg = "";
}

void add_code(string s)
{
    func_code.push_back(s);
}

void put_func()
{
    if (current_func == "root")
    {
        for (int i = 0; i < func_code.size(); i++)
        {
            if (var_table[0].find(func_code[i]) != var_table[0].end())
                func_code[i] = var_table[0][func_code[i]]->name + " = 0";
        }
    }
    for (int i = 0; i < func_code.size(); i++)
        fprintf(yyout, "%s\n", func_code[i].c_str());
    func_code.clear();
}

var_entry *find_var(string var)
{
    for (int i = var_table.size() - 1; i >= 0; i--)
    {
        if (var_table[i].find(var) != var_table[i].end())
            return var_table[i][var];
    }
    return NULL;
}

void load(string name)
{
    var_entry *var = find_var(name);
    allocvar(var);
    if (var->is_array)
        add_code("  loadaddr " + var->addr + " " + var->reg);
    else if (var->is_num)
        add_code("  " + var->reg + " = " + var->name);
    else if (var->is_global)
        add_code("  load " + var->name + " " + var->reg);
    else
        add_code("  load " + var->addr + " " + var->reg);
    var->is_dirty = false;
}

void save(string name)
{
    var_entry *var = find_var(name);
    if (var->reg == "" || !var->is_dirty || var->is_num || var->is_array)
    {
        freevar(var);
        return;
    }
    if (var->is_global)
    {
        string reg = get_register();
        add_code("  loadaddr " + var->name + " " + reg);
        add_code("  " + reg + "[0] = " + var->reg);
        release_register(reg);
    }
    else
        add_code("  store " + var->reg + " " + var->addr);
    freevar(var);
}

void setdirty(string name)
{
    entry(name)->is_dirty = true;
}

void Decl(string name)
{
    if (current_func == "root")
    {
        string varname = "v" + to_string(global_num++);
        var_table.back()[name] = new var_entry(varname, varname, false, true, false);
        add_code(name);
    }
    else
    {
        var_table.back()[name] = new var_entry(name, to_string(local_num++), false, false, false);
    }
}

void Decl(string num, string name)
{
    if (current_func == "root")
    {
        const string varname = "v" + to_string(global_num++);
        var_table.back()[name] = new var_entry(varname, varname, true, true, false);
        add_code(varname + " = malloc " + num);
    }
    else
    {
        var_table.back()[name] = new var_entry(name, to_string(local_num), true, false, false);
        local_num += str2dec(num.c_str());
    }
}

void initial(string name, string num)
{
    for (int i = 0; i < func_code.size(); i++)
    {
        if (func_code[i] == name)
        {
            func_code[i] = find_var(name)->name + " = " + num;
            break;
        }
    }
}

void initial(string name, string num1, string num2)
{
    var_entry *var = find_var(name);
    string reg = get_register();
    add_code("  loadaddr " + var->name + " " + reg);
    add_code("  " + reg + "[" + num1 + "] = " + num2);
    release_register(reg);
}

void funcheader(string func, string num)
{
    put_func();
    current_func = func;
    local_num = atoi(num.c_str());
    param_num = 0;
    var_table.push_back(var_map());
    add_code(func + " [" + num + "]");
    for (int i = 0; i < local_num; ++i)
    {
        const string name = "p" + to_string(i);
        const string reg = "a" + to_string(i);
        var_table.back()[name] = new var_entry(name, to_string(i), false, false, false, reg);
        entry(name)->is_dirty = true;
        save(name);
        //save all parameters to stack, so that we can deal with all variable the same way
    }
}

void funcend(string func)
{
    func_code[0] += " [" + to_string(local_num) + "]";
    add_code("end " + func);
    put_func();
    current_func = "root";
    var_table.pop_back();
}

void binop(string name, string num1, Operator op, string num2)
{
    load(name);
    load(num1);
    load(num2);
    add_code("  " + entry(name)->reg + " = " + entry(num1)->reg + " " + op_map[op] + " " + entry(num2)->reg);
    setdirty(name);
    save(name);
    save(num1);
    save(num2);
}

void sinop(string name, Operator op, string val)
{
    load(name);
    load(val);
    add_code("  " + entry(name)->reg + " = " + op_map[op] + " " + entry(val)->reg);
    setdirty(name);
    save(name);
    save(val);
}

void assign(string name, string val)
{
    load(name);
    load(val);
    add_code("  " + entry(name)->reg + " = " + " " + entry(val)->reg);
    setdirty(name);
    save(name);
    save(val);
}

void assign(string name, string num1, string num2)
{
    load(name);
    load(num1);
    add_code("  t0 = " + entry(name)->reg + " + " + entry(num1)->reg);
    save(name);
    save(num1);
    load(num2);
    add_code("  t0[0] = " + entry(num2)->reg);
    save(num2);
}

void assigna(string name1, string name2, string val)
{
    load(name2);
    load(val);
    add_code("  t0 = " + entry(name2)->reg + " + " + entry(val)->reg);
    save(name2);
    save(val);
    load(name1);
    add_code("  " + entry(name1)->reg + " = t0[0]");
    setdirty(name1);
    save(name1);
}

void if_exp(string num1, Operator op, string num2, string lab)
{    
    load(num1);
    load(num2);
    add_code("  if " + entry(num1)->reg + " " + op_map[op] + " " + entry(num2)->reg + " goto " + lab);
    save(num1);
    save(num2);
}

void goto_exp(string lab)
{
    add_code("  goto " + lab);
}

void label_exp(string lab)
{
    add_code(lab + ":");
}

void param_exp(string val)
{
    const string reg = "a" + to_string(param_num++);
    load(val);
    add_code("  " + reg + " = " + entry(val)->reg);
    save(val);
}

void func_call(string func)
{
    add_code("  call " + func);
    param_num = 0;
}

void assign_fun(string name, string func)
{
    add_code("  call " + func);
    param_num = 0;
    load(name);
    add_code("  " + entry(name)->reg + " = a0");
    setdirty(name);
    save(name);
}

void return_exp(string val)
{
    string reg = "a0";
    load(val);
    add_code("  " + reg + " = " + entry(val)->reg);
    save(val);
    add_code("  return");
}

void return_exp()
{
    add_code("return");
}

void rightv(string num)
{
    if (entry(num) == NULL)
        var_table.back()[num] = new var_entry(num, to_string(0), false, false, true);
}
