#include "utils.hpp"
int STK=0;
map<Operator, string> bi_map;
map<Operator, string> uno_map;
map<Operator, string> branch_map;
#define fprintf(...) fprintf(__VA_ARGS__), fflush(yyout)

void Init()
{
    bi_map[ADD] = "  add %s, %s, %s\n";
    bi_map[SUB] = "  sub %s, %s, %s\n";
    bi_map[MUL] = "  mul %s, %s, %s\n";
    bi_map[DIV] = "  div %s, %s, %s\n";
    bi_map[MOD] = "  rem %s, %s, %s\n";
    bi_map[LT] = "  slt %s, %s, %s\n";
    bi_map[GT] = "  sgt %s, %s, %s\n";
    bi_map[LE] = "  sgt %s, %s, %s\n  seqz %s, %s\n";
    bi_map[GE] = "  slt %s, %s, %s\n  seqz %s, %s\n";
    bi_map[NE] = "  xor %s, %s, %s\n  snez %s, %s\n";
    bi_map[EQ] = "  xor %s, %s, %s\n  seqz %s, %s\n";
    uno_map[SUB] = "  neg %s, %s\n";
    uno_map[NOT] = "  seqz %s, %s\n";
    branch_map[LT] = "  blt %s, %s, .%s\n"; 
    branch_map[GT] = "  bgt %s, %s, .%s\n";
    branch_map[LE] = "  ble %s, %s, .%s\n"; 
    branch_map[GE] = "  bge %s, %s, .%s\n"; 
    branch_map[NE] = "  bne %s, %s, .%s\n"; 
    branch_map[EQ] = "  beq %s, %s, .%s\n"; 
}
bool isint12(int num)
{
    if(num>=-2048 && num<=2047) return true;
    return false;
}

void funcdef(const char* func, int num1, int num2)
{
    func = func + 2;
    const int stk = (num2/4+1)*16;
    fprintf(yyout, "  .text\n  .align 2\n  .global %s\n", func);
    fprintf(yyout, "  .type %s, @function\n%s:\n", func,func);
    fprintf(yyout, "  sw ra, -4(sp)\n");
    if (isint12(-stk))
        fprintf(yyout, "  addi sp, sp, %d\n", -stk);
    else
        fprintf(yyout, "  li s0, %d\n  add sp, sp, s0\n", -stk);
    STK = stk;
}

void global_dec(const char *global_var, int num)
{
    fprintf(yyout, "  .global   %s\n  .section  .sdata\n  .align    2\n", global_var);
    fprintf(yyout, "  .type     %s, @object\n  .size     %s, 4\n%s:\n", global_var, global_var, global_var);
    fprintf(yyout, "  .word     %d\n", num);
}

void global_dec_arr(const char *global_var, int num)
{
    fprintf(yyout, "  .comm %s, %d, 4\n", global_var, num);
}

void end_func(const char *func)
{
    func = func+2;
    fprintf(yyout, "  .size   %s, .-%s\n", func, func);
}

void bir(Operator op, const char *r1, const char *r2, const char *r3)
{
    if(op == LE || op == GE || op == NE || op == EQ)
        fprintf(yyout, bi_map[op].c_str(), r1, r2, r3, r1, r1);
    else 
        fprintf(yyout, bi_map[op].c_str(), r1, r2, r3);
}

void bin(Operator op, const char *r1, const char *r2, int num)
{
    if(op == ADD && isint12(num)) 
        fprintf(yyout, "  addi %s, %s, %d\n", r1, r2, num);
    else if(op == LT && isint12(num))
        fprintf(yyout, "  slti %s, %s, %d\n", r1, r2, num);
    else 
    {
        fprintf(yyout, "  li s0, %d\n",num);
        bir(op, r1, r2, "s0");
    }
}

void unir(Operator op, const char *r1, const char *r2)
{
    fprintf(yyout, uno_map[op].c_str(), r1, r2);
}

void assign(const char *r1, const char *r2)
{
    fprintf(yyout, "	mv %s, %s\n", r1, r2);
}

void assign(const char *r, int num)
{
    fprintf(yyout, "  li %s, %d\n", r, num);
}

void assign(const char *r1, int num, const char *r2)
{
    fprintf(yyout, "  sw %s, %d(%s)\n", r2, num, r1);
}

void assign(const char *r1, const char *r2, int num)
{
    fprintf(yyout, "  lw %s, %d(%s)\n", r1, num, r2);
}

void branch(Operator op, const char *r1, const char *r2, const char *label)
{
    fprintf(yyout, branch_map[op].c_str(), r1, r2, label);
}

void Goto(const char *label)
{
    fprintf(yyout, "  j .%s\n", label);
}

void Label(const char *label)
{
    fprintf(yyout, ".%s:\n", label);
}

void call_func(const char *func)
{
    func = func+2;
    fprintf(yyout, "  call %s\n", func);
}

void Return()
{
    if (isint12(STK))
        fprintf(yyout, "  addi sp, sp, %d\n", STK);
    else
        fprintf(yyout, "  li s0, %d\n  add sp, sp, s0\n", STK);
    fprintf(yyout, "  lw ra, -4(sp)\n");
    fprintf(yyout, "  ret\n");
}

void store(const char *r, int num)
{
    num*=4;
    if (isint12(num))
        fprintf(yyout, "  sw %s, %d(sp)\n", r, num);
    else
        fprintf(yyout, "  li s0, %d\n  add s0, sp, s0\n  sw %s, 0(s0)\n", num, r);
}

void load(int num, const char *r)
{
    num*=4;
    if (isint12(num))
        fprintf(yyout, "  lw %s, %d(sp)\n", r, num);
    else
        fprintf(yyout, "  li s0, %d\n  add s0, sp, s0\n  lw %s, 0(s0)\n", num, r);
}

void loadV(const char *v, const char *r)
{
    fprintf(yyout, "  lui %s, %%hi(%s)\n", r, v);
    fprintf(yyout, "  lw %s, %%lo(%s)(%s)\n", r, v, r);
}

void loadaddr(int num, const char *r)
{
    num*=4;
    if (isint12(num))
        fprintf(yyout, "  addi %s, sp, %d\n", r, num);
    else
        fprintf(yyout, "  li s0, %d\n  add %s, sp, s0\n", num, r);
}

void loadaddr(const char *v, const char *r)
{
    fprintf(yyout, "  la %s, %s\n", r, v);
}