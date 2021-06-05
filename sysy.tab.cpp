/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton implementation for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "2.3"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Using locations.  */
#define YYLSP_NEEDED 0



/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     RETURN = 258,
     IF = 259,
     ELSE = 260,
     WHILE = 261,
     CONTINUE = 262,
     BREAK = 263,
     CONST = 264,
     INT = 265,
     VOID = 266,
     T_LE = 267,
     T_GE = 268,
     T_EQ = 269,
     T_NE = 270,
     T_AND = 271,
     T_OR = 272,
     IDENT = 273,
     Number = 274
   };
#endif
/* Tokens.  */
#define RETURN 258
#define IF 259
#define ELSE 260
#define WHILE 261
#define CONTINUE 262
#define BREAK 263
#define CONST 264
#define INT 265
#define VOID 266
#define T_LE 267
#define T_GE 268
#define T_EQ 269
#define T_NE 270
#define T_AND 271
#define T_OR 272
#define IDENT 273
#define Number 274




/* Copy the first part of user declarations.  */
#line 1 "sysy.y"

#include "parse_tree.hpp"
#include <unistd.h>
extern "C" {
    int yyparse();
    int yylex();
}
extern void yyerror(const char*);

extern FILE *yyin;
extern FILE *yyout;

int yywrap()
{
    return 1;
}

void set_next(ExpressionNode *o, ExpressionNode *p)
{
    while(o->nxt)
        o = o->nxt;
    o->nxt = p;
}


/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* Enabling the token table.  */
#ifndef YYTOKEN_TABLE
# define YYTOKEN_TABLE 0
#endif

#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif



/* Copy the second part of user declarations.  */


/* Line 216 of yacc.c.  */
#line 169 "sysy.tab.cpp"

#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#elif (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
typedef signed char yytype_int8;
#else
typedef short int yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short int yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short int yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned int
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(e) ((void) (e))
#else
# define YYUSE(e) /* empty */
#endif

/* Identity function, used to suppress warnings about constant conditions.  */
#ifndef lint
# define YYID(n) (n)
#else
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static int
YYID (int i)
#else
static int
YYID (i)
    int i;
#endif
{
  return i;
}
#endif

#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#     ifndef _STDLIB_H
#      define _STDLIB_H 1
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's `empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (YYID (0))
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined _STDLIB_H \
       && ! ((defined YYMALLOC || defined malloc) \
	     && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef _STDLIB_H
#    define _STDLIB_H 1
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined _STDLIB_H && (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
	 || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss;
  YYSTYPE yyvs;
  };

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

/* Copy COUNT objects from FROM to TO.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(To, From, Count) \
      __builtin_memcpy (To, From, (Count) * sizeof (*(From)))
#  else
#   define YYCOPY(To, From, Count)		\
      do					\
	{					\
	  YYSIZE_T yyi;				\
	  for (yyi = 0; yyi < (Count); yyi++)	\
	    (To)[yyi] = (From)[yyi];		\
	}					\
      while (YYID (0))
#  endif
# endif

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack)					\
    do									\
      {									\
	YYSIZE_T yynewbytes;						\
	YYCOPY (&yyptr->Stack, Stack, yysize);				\
	Stack = &yyptr->Stack;						\
	yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
	yyptr += yynewbytes / sizeof (*yyptr);				\
      }									\
    while (YYID (0))

#endif

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  17
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   204

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  37
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  44
/* YYNRULES -- Number of rules.  */
#define YYNRULES  96
/* YYNRULES -- Number of states.  */
#define YYNSTATES  178

/* YYTRANSLATE(YYLEX) -- Bison symbol number corresponding to YYLEX.  */
#define YYUNDEFTOK  2
#define YYMAXUTOK   274

#define YYTRANSLATE(YYX)						\
  ((unsigned int) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[YYLEX] -- Bison symbol number corresponding to YYLEX.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    31,     2,     2,     2,    34,     2,     2,
      27,    28,    32,    29,    21,    30,     2,    33,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,    20,
      35,    22,    36,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    23,     2,    24,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,    25,     2,    26,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19
};

#if YYDEBUG
/* YYPRHS[YYN] -- Index of the first RHS symbol of rule number YYN in
   YYRHS.  */
static const yytype_uint16 yyprhs[] =
{
       0,     0,     3,     5,     8,    11,    13,    15,    17,    19,
      24,    26,    30,    34,    37,    42,    43,    45,    50,    56,
      57,    58,    60,    64,    68,    70,    74,    78,    80,    83,
      85,    91,    96,    98,   102,   105,   112,   119,   120,   121,
     125,   127,   128,   131,   137,   143,   146,   147,   149,   151,
     156,   159,   161,   163,   169,   177,   184,   187,   190,   194,
     197,   198,   200,   202,   205,   210,   211,   215,   217,   219,
     221,   226,   229,   232,   235,   239,   241,   242,   244,   248,
     252,   256,   258,   262,   266,   268,   272,   276,   280,   284,
     286,   290,   294,   296,   300,   302,   306
};

/* YYRHS -- A `-1'-separated list of the rules' RHS.  */
static const yytype_int8 yyrhs[] =
{
      38,     0,    -1,    39,    -1,    39,    40,    -1,    39,    56,
      -1,    40,    -1,    56,    -1,    41,    -1,    50,    -1,     9,
      10,    42,    20,    -1,    43,    -1,    42,    21,    43,    -1,
      44,    22,    46,    -1,    18,    45,    -1,    23,    80,    24,
      45,    -1,    -1,    80,    -1,    25,    47,    26,    48,    -1,
      25,    47,    49,    26,    48,    -1,    -1,    -1,    46,    -1,
      46,    21,    49,    -1,    10,    51,    20,    -1,    52,    -1,
      51,    21,    52,    -1,    53,    22,    54,    -1,    53,    -1,
      18,    45,    -1,    67,    -1,    25,    47,    55,    26,    48,
      -1,    25,    47,    26,    48,    -1,    54,    -1,    54,    21,
      55,    -1,    57,    62,    -1,    11,    18,    58,    27,    60,
      28,    -1,    10,    18,    58,    27,    60,    28,    -1,    -1,
      -1,    61,    21,    60,    -1,    61,    -1,    -1,    10,    18,
      -1,    10,    18,    23,    24,    45,    -1,    25,    58,    63,
      26,    59,    -1,    64,    63,    -1,    -1,    40,    -1,    65,
      -1,    69,    22,    67,    20,    -1,    67,    20,    -1,    20,
      -1,    62,    -1,     4,    27,    68,    28,    65,    -1,     4,
      27,    68,    28,    65,     5,    65,    -1,     6,    66,    27,
      68,    28,    65,    -1,     8,    20,    -1,     7,    20,    -1,
       3,    67,    20,    -1,     3,    20,    -1,    -1,    75,    -1,
      79,    -1,    18,    70,    -1,    23,    67,    24,    70,    -1,
      -1,    27,    67,    28,    -1,    69,    -1,    19,    -1,    71,
      -1,    18,    27,    73,    28,    -1,    29,    72,    -1,    30,
      72,    -1,    31,    72,    -1,    67,    21,    73,    -1,    67,
      -1,    -1,    72,    -1,    74,    32,    72,    -1,    74,    33,
      72,    -1,    74,    34,    72,    -1,    74,    -1,    75,    29,
      74,    -1,    75,    30,    74,    -1,    75,    -1,    76,    35,
      75,    -1,    76,    36,    75,    -1,    76,    12,    75,    -1,
      76,    13,    75,    -1,    76,    -1,    77,    14,    76,    -1,
      77,    15,    76,    -1,    77,    -1,    78,    16,    77,    -1,
      78,    -1,    79,    17,    78,    -1,    75,    -1
};

/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_uint8 yyrline[] =
{
       0,    37,    37,    39,    40,    41,    42,    44,    45,    47,
      51,    52,    55,    57,    59,    60,    63,    64,    65,    67,
      69,    71,    72,    74,    76,    77,    79,    80,    82,    84,
      85,    86,    88,    89,    91,    93,    94,    96,    97,    99,
     100,   101,   103,   104,   106,   108,   109,   111,   112,   114,
     115,   116,   117,   118,   119,   120,   121,   122,   123,   124,
     126,   128,   129,   130,   132,   133,   135,   136,   137,   139,
     140,   141,   142,   143,   145,   146,   147,   149,   150,   151,
     152,   154,   155,   156,   158,   159,   160,   161,   162,   164,
     165,   166,   168,   169,   170,   171,   172
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || YYTOKEN_TABLE
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "RETURN", "IF", "ELSE", "WHILE",
  "CONTINUE", "BREAK", "CONST", "INT", "VOID", "T_LE", "T_GE", "T_EQ",
  "T_NE", "T_AND", "T_OR", "IDENT", "Number", "';'", "','", "'='", "'['",
  "']'", "'{'", "'}'", "'('", "')'", "'+'", "'-'", "'!'", "'*'", "'/'",
  "'%'", "'<'", "'>'", "$accept", "Root", "CompUnit", "Decl", "ConstDecl",
  "ConstDefs", "ConstDef", "ConstArrayDef", "ConstArray", "ConstInitVal",
  "Inc_init_blk", "Dec_init_blk", "ConstInitVals", "VarDecl", "VarDefs",
  "VarDef", "VarArrayDef", "InitVal", "InitVals", "FuncDef", "FucReg",
  "Inc", "Dec", "FuncFParams", "FuncFParam", "Block", "BlockItems",
  "BlockItem", "Stmt", "WI", "Exp", "Cond", "LVal", "Array", "PrimaryExp",
  "UnaryExp", "FuncRParams", "MulExp", "AddExp", "RelExp", "EqExp",
  "LAndExp", "LOrExp", "ConstExp", 0
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[YYLEX-NUM] -- Internal token number corresponding to
   token YYLEX-NUM.  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
      59,    44,    61,    91,    93,   123,   125,    40,    41,    43,
      45,    33,    42,    47,    37,    60,    62
};
# endif

/* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    37,    38,    39,    39,    39,    39,    40,    40,    41,
      42,    42,    43,    44,    45,    45,    46,    46,    46,    47,
      48,    49,    49,    50,    51,    51,    52,    52,    53,    54,
      54,    54,    55,    55,    56,    57,    57,    58,    59,    60,
      60,    60,    61,    61,    62,    63,    63,    64,    64,    65,
      65,    65,    65,    65,    65,    65,    65,    65,    65,    65,
      66,    67,    68,    69,    70,    70,    71,    71,    71,    72,
      72,    72,    72,    72,    73,    73,    73,    74,    74,    74,
      74,    75,    75,    75,    76,    76,    76,    76,    76,    77,
      77,    77,    78,    78,    79,    79,    80
};

/* YYR2[YYN] -- Number of symbols composing right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     1,     2,     2,     1,     1,     1,     1,     4,
       1,     3,     3,     2,     4,     0,     1,     4,     5,     0,
       0,     1,     3,     3,     1,     3,     3,     1,     2,     1,
       5,     4,     1,     3,     2,     6,     6,     0,     0,     3,
       1,     0,     2,     5,     5,     2,     0,     1,     1,     4,
       2,     1,     1,     5,     7,     6,     2,     2,     3,     2,
       0,     1,     1,     2,     4,     0,     3,     1,     1,     1,
       4,     2,     2,     2,     3,     1,     0,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     3,     3,     1,
       3,     3,     1,     3,     1,     3,     1
};

/* YYDEFACT[STATE-NAME] -- Default rule to reduce with in state
   STATE-NUM when YYTABLE doesn't specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,     0,     0,     0,     0,     2,     5,     7,     8,     6,
       0,     0,    15,     0,    24,    27,    37,     1,     3,     4,
      37,    34,    15,     0,    10,     0,     0,    28,     0,    23,
       0,     0,     0,    46,    13,     9,     0,     0,    65,    68,
       0,     0,     0,     0,    67,    69,    77,    81,    96,     0,
      41,    15,    25,    19,    26,    29,    61,    41,     0,     0,
      60,     0,     0,     0,    51,    47,    52,     0,    46,    48,
       0,    67,    11,    19,    12,    16,     0,    76,    63,     0,
      71,    72,    73,     0,     0,     0,     0,     0,    15,     0,
       0,    40,     0,     0,    59,     0,     0,     0,    57,    56,
      38,    45,    50,     0,     0,     0,    75,     0,    66,    78,
      79,    80,    82,    83,    14,    42,    36,    41,    20,    32,
       0,    35,    58,     0,    84,    89,    92,    94,    62,     0,
      44,     0,    20,    21,     0,    65,    76,    70,     0,    39,
      31,     0,    20,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    49,    17,     0,    20,    64,    74,    15,
      33,    30,    53,    87,    88,    85,    86,    90,    91,    93,
      95,     0,    22,    18,    43,     0,    55,    54
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
      -1,     4,     5,    65,     7,    23,    24,    25,    27,   133,
      92,   140,   134,     8,    13,    14,    15,   119,   120,     9,
      10,    28,   130,    90,    91,    66,    67,    68,    69,    97,
      70,   123,    44,    78,    45,    46,   107,    47,    56,   125,
     126,   127,   128,    75
};

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
#define YYPACT_NINF -139
static const yytype_int16 yypact[] =
{
      32,     7,    10,    21,    57,    32,  -139,  -139,  -139,  -139,
      39,    62,    -7,    41,  -139,    53,  -139,  -139,  -139,  -139,
    -139,  -139,    60,    46,  -139,    70,    71,  -139,    72,  -139,
      76,   139,    80,   125,  -139,  -139,    62,   153,    11,  -139,
      71,    71,    71,    71,  -139,  -139,  -139,    12,    48,    79,
      98,    60,  -139,  -139,  -139,  -139,    48,    98,   167,    84,
    -139,    92,    93,    76,  -139,  -139,  -139,    89,   125,  -139,
      96,    95,  -139,  -139,  -139,  -139,    71,    71,  -139,    90,
    -139,  -139,  -139,    71,    71,    71,    71,    71,    60,   109,
     108,   116,    -4,   112,  -139,   121,    71,   119,  -139,  -139,
    -139,  -139,  -139,    71,    29,   123,   127,   131,  -139,  -139,
    -139,  -139,    12,    12,  -139,   126,  -139,    98,  -139,   130,
     134,  -139,  -139,   133,    48,    -6,    67,   137,   145,    71,
    -139,   143,  -139,   144,   141,   150,    71,  -139,   151,  -139,
    -139,   139,  -139,    66,    71,    71,    71,    71,    71,    71,
      71,    71,   146,  -139,  -139,   153,  -139,  -139,  -139,    60,
    -139,  -139,   171,    48,    48,    48,    48,    -6,    -6,    67,
     137,    66,  -139,  -139,  -139,    66,  -139,  -139
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -139,  -139,  -139,    19,  -139,  -139,   152,  -139,   -20,   140,
     106,  -124,    26,  -139,  -139,   159,  -139,   160,    49,   187,
    -139,    20,  -139,   -54,  -139,   183,   132,  -139,  -138,  -139,
     -27,    73,   -33,    64,  -139,   -32,    59,     1,   -25,   -43,
      51,    52,  -139,   178
};

/* YYTABLE[YYPACT[STATE-NUM]].  What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule which
   number is the opposite.  If zero, do what YYDEFACT says.
   If YYTABLE_NINF, syntax error.  */
#define YYTABLE_NINF -38
static const yytype_int16 yytable[] =
{
      71,    48,    34,    93,    55,   162,   144,   145,   154,    80,
      81,    82,    48,    79,    38,    39,    26,    11,   161,     6,
     -37,    53,   118,    40,    18,    41,    42,    43,    12,   146,
     147,    95,   173,   176,    76,    71,    32,   177,    77,    16,
      33,     1,     2,     3,    83,    84,    85,    38,    39,   105,
     106,   109,   110,   111,    73,   132,    40,    17,    41,    42,
      43,    29,    30,   139,    20,    55,    35,    36,   114,    58,
      59,   124,    60,    61,    62,    31,   131,    86,    87,    48,
      22,   148,   149,    26,    38,    39,    64,   112,   113,    38,
      39,    20,    37,    40,    51,    41,    42,    43,    40,    50,
      41,    42,    43,    88,   124,   167,   168,    57,    89,   106,
      71,    96,    98,    99,    55,   100,   102,   103,   108,   163,
     164,   165,   166,   124,   124,   124,   124,   115,    58,    59,
      48,    60,    61,    62,     1,    63,   116,   117,    71,   174,
     121,   122,    71,    38,    39,    64,   129,   135,   136,   138,
      20,   141,    40,   150,    41,    42,    43,    38,    39,   137,
     142,   143,   151,   153,    53,   155,    40,   156,    41,    42,
      43,    38,    39,    76,   171,   159,   175,    74,    73,   104,
      40,   172,    41,    42,    43,    38,    39,    94,    72,    52,
     160,    54,    19,    21,    40,   158,    41,    42,    43,   157,
     101,   169,   152,   170,    49
};

static const yytype_uint8 yycheck[] =
{
      33,    26,    22,    57,    31,   143,    12,    13,   132,    41,
      42,    43,    37,    40,    18,    19,    23,    10,   142,     0,
      27,    25,    26,    27,     5,    29,    30,    31,    18,    35,
      36,    58,   156,   171,    23,    68,    16,   175,    27,    18,
      20,     9,    10,    11,    32,    33,    34,    18,    19,    76,
      77,    83,    84,    85,    25,    26,    27,     0,    29,    30,
      31,    20,    21,   117,    25,    92,    20,    21,    88,     3,
       4,    96,     6,     7,     8,    22,   103,    29,    30,   104,
      18,    14,    15,    23,    18,    19,    20,    86,    87,    18,
      19,    25,    22,    27,    18,    29,    30,    31,    27,    27,
      29,    30,    31,    24,   129,   148,   149,    27,    10,   136,
     143,    27,    20,    20,   141,    26,    20,    22,    28,   144,
     145,   146,   147,   148,   149,   150,   151,    18,     3,     4,
     155,     6,     7,     8,     9,    10,    28,    21,   171,   159,
      28,    20,   175,    18,    19,    20,    27,    24,    21,    23,
      25,    21,    27,    16,    29,    30,    31,    18,    19,    28,
      26,    28,    17,    20,    25,    21,    27,    26,    29,    30,
      31,    18,    19,    23,    28,    24,     5,    37,    25,    73,
      27,   155,    29,    30,    31,    18,    19,    20,    36,    30,
     141,    31,     5,    10,    27,   136,    29,    30,    31,   135,
      68,   150,   129,   151,    26
};

/* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
   symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     9,    10,    11,    38,    39,    40,    41,    50,    56,
      57,    10,    18,    51,    52,    53,    18,     0,    40,    56,
      25,    62,    18,    42,    43,    44,    23,    45,    58,    20,
      21,    22,    58,    58,    45,    20,    21,    22,    18,    19,
      27,    29,    30,    31,    69,    71,    72,    74,    75,    80,
      27,    18,    52,    25,    54,    67,    75,    27,     3,     4,
       6,     7,     8,    10,    20,    40,    62,    63,    64,    65,
      67,    69,    43,    25,    46,    80,    23,    27,    70,    67,
      72,    72,    72,    32,    33,    34,    29,    30,    24,    10,
      60,    61,    47,    60,    20,    67,    27,    66,    20,    20,
      26,    63,    20,    22,    47,    67,    67,    73,    28,    72,
      72,    72,    74,    74,    45,    18,    28,    21,    26,    54,
      55,    28,    20,    68,    75,    76,    77,    78,    79,    27,
      59,    67,    26,    46,    49,    24,    21,    28,    23,    60,
      48,    21,    26,    28,    12,    13,    35,    36,    14,    15,
      16,    17,    68,    20,    48,    21,    26,    70,    73,    24,
      55,    48,    65,    75,    75,    75,    75,    76,    76,    77,
      78,    28,    49,    48,    45,     5,    65,    65
};

#define yyerrok		(yyerrstatus = 0)
#define yyclearin	(yychar = YYEMPTY)
#define YYEMPTY		(-2)
#define YYEOF		0

#define YYACCEPT	goto yyacceptlab
#define YYABORT		goto yyabortlab
#define YYERROR		goto yyerrorlab


/* Like YYERROR except do call yyerror.  This remains here temporarily
   to ease the transition to the new meaning of YYERROR, for GCC.
   Once GCC version 2 has supplanted version 1, this can go.  */

#define YYFAIL		goto yyerrlab

#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)					\
do								\
  if (yychar == YYEMPTY && yylen == 1)				\
    {								\
      yychar = (Token);						\
      yylval = (Value);						\
      yytoken = YYTRANSLATE (yychar);				\
      YYPOPSTACK (1);						\
      goto yybackup;						\
    }								\
  else								\
    {								\
      yyerror (YY_("syntax error: cannot back up")); \
      YYERROR;							\
    }								\
while (YYID (0))


#define YYTERROR	1
#define YYERRCODE	256


/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

#define YYRHSLOC(Rhs, K) ((Rhs)[K])
#ifndef YYLLOC_DEFAULT
# define YYLLOC_DEFAULT(Current, Rhs, N)				\
    do									\
      if (YYID (N))                                                    \
	{								\
	  (Current).first_line   = YYRHSLOC (Rhs, 1).first_line;	\
	  (Current).first_column = YYRHSLOC (Rhs, 1).first_column;	\
	  (Current).last_line    = YYRHSLOC (Rhs, N).last_line;		\
	  (Current).last_column  = YYRHSLOC (Rhs, N).last_column;	\
	}								\
      else								\
	{								\
	  (Current).first_line   = (Current).last_line   =		\
	    YYRHSLOC (Rhs, 0).last_line;				\
	  (Current).first_column = (Current).last_column =		\
	    YYRHSLOC (Rhs, 0).last_column;				\
	}								\
    while (YYID (0))
#endif


/* YY_LOCATION_PRINT -- Print the location on the stream.
   This macro was not mandated originally: define only if we know
   we won't break user code: when these are the locations we know.  */

#ifndef YY_LOCATION_PRINT
# if defined YYLTYPE_IS_TRIVIAL && YYLTYPE_IS_TRIVIAL
#  define YY_LOCATION_PRINT(File, Loc)			\
     fprintf (File, "%d.%d-%d.%d",			\
	      (Loc).first_line, (Loc).first_column,	\
	      (Loc).last_line,  (Loc).last_column)
# else
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif
#endif


/* YYLEX -- calling `yylex' with the right arguments.  */

#ifdef YYLEX_PARAM
# define YYLEX yylex (YYLEX_PARAM)
#else
# define YYLEX yylex ()
#endif

/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)			\
do {						\
  if (yydebug)					\
    YYFPRINTF Args;				\
} while (YYID (0))

# define YY_SYMBOL_PRINT(Title, Type, Value, Location)			  \
do {									  \
  if (yydebug)								  \
    {									  \
      YYFPRINTF (stderr, "%s ", Title);					  \
      yy_symbol_print (stderr,						  \
		  Type, Value); \
      YYFPRINTF (stderr, "\n");						  \
    }									  \
} while (YYID (0))


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_value_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_value_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyoutput, yytoknum[yytype], *yyvaluep);
# else
  YYUSE (yyoutput);
# endif
  switch (yytype)
    {
      default:
	break;
    }
}


/*--------------------------------.
| Print this symbol on YYOUTPUT.  |
`--------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_symbol_print (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
#else
static void
yy_symbol_print (yyoutput, yytype, yyvaluep)
    FILE *yyoutput;
    int yytype;
    YYSTYPE const * const yyvaluep;
#endif
{
  if (yytype < YYNTOKENS)
    YYFPRINTF (yyoutput, "token %s (", yytname[yytype]);
  else
    YYFPRINTF (yyoutput, "nterm %s (", yytname[yytype]);

  yy_symbol_value_print (yyoutput, yytype, yyvaluep);
  YYFPRINTF (yyoutput, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_stack_print (yytype_int16 *bottom, yytype_int16 *top)
#else
static void
yy_stack_print (bottom, top)
    yytype_int16 *bottom;
    yytype_int16 *top;
#endif
{
  YYFPRINTF (stderr, "Stack now");
  for (; bottom <= top; ++bottom)
    YYFPRINTF (stderr, " %d", *bottom);
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)				\
do {								\
  if (yydebug)							\
    yy_stack_print ((Bottom), (Top));				\
} while (YYID (0))


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yy_reduce_print (YYSTYPE *yyvsp, int yyrule)
#else
static void
yy_reduce_print (yyvsp, yyrule)
    YYSTYPE *yyvsp;
    int yyrule;
#endif
{
  int yynrhs = yyr2[yyrule];
  int yyi;
  unsigned long int yylno = yyrline[yyrule];
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
	     yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      fprintf (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr, yyrhs[yyprhs[yyrule] + yyi],
		       &(yyvsp[(yyi + 1) - (yynrhs)])
		       		       );
      fprintf (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)		\
do {					\
  if (yydebug)				\
    yy_reduce_print (yyvsp, Rule); \
} while (YYID (0))

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef	YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif



#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static YYSIZE_T
yystrlen (const char *yystr)
#else
static YYSIZE_T
yystrlen (yystr)
    const char *yystr;
#endif
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static char *
yystpcpy (char *yydest, const char *yysrc)
#else
static char *
yystpcpy (yydest, yysrc)
    char *yydest;
    const char *yysrc;
#endif
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
	switch (*++yyp)
	  {
	  case '\'':
	  case ',':
	    goto do_not_strip_quotes;

	  case '\\':
	    if (*++yyp != '\\')
	      goto do_not_strip_quotes;
	    /* Fall through.  */
	  default:
	    if (yyres)
	      yyres[yyn] = *yyp;
	    yyn++;
	    break;

	  case '"':
	    if (yyres)
	      yyres[yyn] = '\0';
	    return yyn;
	  }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return yystpcpy (yyres, yystr) - yyres;
}
# endif

/* Copy into YYRESULT an error message about the unexpected token
   YYCHAR while in state YYSTATE.  Return the number of bytes copied,
   including the terminating null byte.  If YYRESULT is null, do not
   copy anything; just return the number of bytes that would be
   copied.  As a special case, return 0 if an ordinary "syntax error"
   message will do.  Return YYSIZE_MAXIMUM if overflow occurs during
   size calculation.  */
static YYSIZE_T
yysyntax_error (char *yyresult, int yystate, int yychar)
{
  int yyn = yypact[yystate];

  if (! (YYPACT_NINF < yyn && yyn <= YYLAST))
    return 0;
  else
    {
      int yytype = YYTRANSLATE (yychar);
      YYSIZE_T yysize0 = yytnamerr (0, yytname[yytype]);
      YYSIZE_T yysize = yysize0;
      YYSIZE_T yysize1;
      int yysize_overflow = 0;
      enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
      char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
      int yyx;

# if 0
      /* This is so xgettext sees the translatable formats that are
	 constructed on the fly.  */
      YY_("syntax error, unexpected %s");
      YY_("syntax error, unexpected %s, expecting %s");
      YY_("syntax error, unexpected %s, expecting %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s");
      YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s");
# endif
      char *yyfmt;
      char const *yyf;
      static char const yyunexpected[] = "syntax error, unexpected %s";
      static char const yyexpecting[] = ", expecting %s";
      static char const yyor[] = " or %s";
      char yyformat[sizeof yyunexpected
		    + sizeof yyexpecting - 1
		    + ((YYERROR_VERBOSE_ARGS_MAXIMUM - 2)
		       * (sizeof yyor - 1))];
      char const *yyprefix = yyexpecting;

      /* Start YYX at -YYN if negative to avoid negative indexes in
	 YYCHECK.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;

      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yycount = 1;

      yyarg[0] = yytname[yytype];
      yyfmt = yystpcpy (yyformat, yyunexpected);

      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
	if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR)
	  {
	    if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
	      {
		yycount = 1;
		yysize = yysize0;
		yyformat[sizeof yyunexpected - 1] = '\0';
		break;
	      }
	    yyarg[yycount++] = yytname[yyx];
	    yysize1 = yysize + yytnamerr (0, yytname[yyx]);
	    yysize_overflow |= (yysize1 < yysize);
	    yysize = yysize1;
	    yyfmt = yystpcpy (yyfmt, yyprefix);
	    yyprefix = yyor;
	  }

      yyf = YY_(yyformat);
      yysize1 = yysize + yystrlen (yyf);
      yysize_overflow |= (yysize1 < yysize);
      yysize = yysize1;

      if (yysize_overflow)
	return YYSIZE_MAXIMUM;

      if (yyresult)
	{
	  /* Avoid sprintf, as that infringes on the user's name space.
	     Don't have undefined behavior even if the translation
	     produced a string with the wrong number of "%s"s.  */
	  char *yyp = yyresult;
	  int yyi = 0;
	  while ((*yyp = *yyf) != '\0')
	    {
	      if (*yyp == '%' && yyf[1] == 's' && yyi < yycount)
		{
		  yyp += yytnamerr (yyp, yyarg[yyi++]);
		  yyf += 2;
		}
	      else
		{
		  yyp++;
		  yyf++;
		}
	    }
	}
      return yysize;
    }
}
#endif /* YYERROR_VERBOSE */


/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

/*ARGSUSED*/
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
#else
static void
yydestruct (yymsg, yytype, yyvaluep)
    const char *yymsg;
    int yytype;
    YYSTYPE *yyvaluep;
#endif
{
  YYUSE (yyvaluep);

  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  switch (yytype)
    {

      default:
	break;
    }
}


/* Prevent warnings from -Wmissing-prototypes.  */

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */



/* The look-ahead symbol.  */
int yychar;

/* The semantic value of the look-ahead symbol.  */
YYSTYPE yylval;

/* Number of syntax errors so far.  */
int yynerrs;



/*----------.
| yyparse.  |
`----------*/

#ifdef YYPARSE_PARAM
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void *YYPARSE_PARAM)
#else
int
yyparse (YYPARSE_PARAM)
    void *YYPARSE_PARAM;
#endif
#else /* ! YYPARSE_PARAM */
#if (defined __STDC__ || defined __C99__FUNC__ \
     || defined __cplusplus || defined _MSC_VER)
int
yyparse (void)
#else
int
yyparse ()

#endif
#endif
{
  
  int yystate;
  int yyn;
  int yyresult;
  /* Number of tokens to shift before error messages enabled.  */
  int yyerrstatus;
  /* Look-ahead token as an internal (translated) token number.  */
  int yytoken = 0;
#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

  /* Three stacks and their tools:
     `yyss': related to states,
     `yyvs': related to semantic values,
     `yyls': related to locations.

     Refer to the stacks thru separate pointers, to allow yyoverflow
     to reallocate them elsewhere.  */

  /* The state stack.  */
  yytype_int16 yyssa[YYINITDEPTH];
  yytype_int16 *yyss = yyssa;
  yytype_int16 *yyssp;

  /* The semantic value stack.  */
  YYSTYPE yyvsa[YYINITDEPTH];
  YYSTYPE *yyvs = yyvsa;
  YYSTYPE *yyvsp;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  YYSIZE_T yystacksize = YYINITDEPTH;

  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;


  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY;		/* Cause a token to be read.  */

  /* Initialize stack pointers.
     Waste one element of value and location stack
     so that they stay on the same level as the state stack.
     The wasted elements are never initialized.  */

  yyssp = yyss;
  yyvsp = yyvs;

  goto yysetstate;

/*------------------------------------------------------------.
| yynewstate -- Push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
 yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;

 yysetstate:
  *yyssp = yystate;

  if (yyss + yystacksize - 1 <= yyssp)
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = yyssp - yyss + 1;

#ifdef yyoverflow
      {
	/* Give user a chance to reallocate the stack.  Use copies of
	   these so that the &'s don't force the real ones into
	   memory.  */
	YYSTYPE *yyvs1 = yyvs;
	yytype_int16 *yyss1 = yyss;


	/* Each stack pointer address is followed by the size of the
	   data in use in that stack, in bytes.  This used to be a
	   conditional around just the two extra args, but that might
	   be undefined if yyoverflow is a macro.  */
	yyoverflow (YY_("memory exhausted"),
		    &yyss1, yysize * sizeof (*yyssp),
		    &yyvs1, yysize * sizeof (*yyvsp),

		    &yystacksize);

	yyss = yyss1;
	yyvs = yyvs1;
      }
#else /* no yyoverflow */
# ifndef YYSTACK_RELOCATE
      goto yyexhaustedlab;
# else
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
	goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
	yystacksize = YYMAXDEPTH;

      {
	yytype_int16 *yyss1 = yyss;
	union yyalloc *yyptr =
	  (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
	if (! yyptr)
	  goto yyexhaustedlab;
	YYSTACK_RELOCATE (yyss);
	YYSTACK_RELOCATE (yyvs);

#  undef YYSTACK_RELOCATE
	if (yyss1 != yyssa)
	  YYSTACK_FREE (yyss1);
      }
# endif
#endif /* no yyoverflow */

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;


      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
		  (unsigned long int) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
	YYABORT;
    }

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  goto yybackup;

/*-----------.
| yybackup.  |
`-----------*/
yybackup:

  /* Do appropriate processing given the current state.  Read a
     look-ahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to look-ahead token.  */
  yyn = yypact[yystate];
  if (yyn == YYPACT_NINF)
    goto yydefault;

  /* Not known => get a look-ahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid look-ahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = YYLEX;
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yyn == 0 || yyn == YYTABLE_NINF)
	goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the look-ahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token unless it is eof.  */
  if (yychar != YYEOF)
    yychar = YYEMPTY;

  yystate = yyn;
  *++yyvsp = yylval;

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- Do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     `$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 37 "sysy.y"
    {calc_final_code();;}
    break;

  case 3:
#line 39 "sysy.y"
    {inc_root_init_code((yyvsp[(2) - (2)].T_Stmt)->code);;}
    break;

  case 4:
#line 40 "sysy.y"
    {combine_final_code((yyvsp[(2) - (2)].T_FuncDef));;}
    break;

  case 5:
#line 41 "sysy.y"
    {inc_root_init_code((yyvsp[(1) - (1)].T_Stmt)->code);;}
    break;

  case 6:
#line 42 "sysy.y"
    {combine_final_code((yyvsp[(1) - (1)].T_FuncDef));;}
    break;

  case 7:
#line 44 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(1) - (1)].T_Stmt);;}
    break;

  case 8:
#line 45 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(1) - (1)].T_Stmt);;}
    break;

  case 9:
#line 47 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(3) - (4)].T_Stmt);;}
    break;

  case 10:
#line 51 "sysy.y"
    {(yyvsp[(1) - (1)].T_Vardef)->make_final_code(); (yyval.T_Stmt) = new StmtNode(T_NOP); (yyval.T_Stmt)->code = (yyvsp[(1) - (1)].T_Vardef)->code;;}
    break;

  case 11:
#line 52 "sysy.y"
    {(yyvsp[(3) - (3)].T_Vardef)->make_final_code(); (yyval.T_Stmt) = new StmtNode(T_NOP); (yyval.T_Stmt)->code = (yyvsp[(3) - (3)].T_Vardef)->code; (yyvsp[(1) - (3)].T_Stmt) -> nxt = (yyval.T_Stmt);;}
    break;

  case 12:
#line 55 "sysy.y"
    {(yyval.T_Vardef) = (yyvsp[(1) - (3)].T_Vardef); (yyval.T_Vardef)->right = (yyvsp[(3) - (3)].T_Exp);;}
    break;

  case 13:
#line 57 "sysy.y"
    {(yyval.T_Vardef) = new VardefNode(true, false, (yyvsp[(1) - (2)].ID), (yyvsp[(2) - (2)].T_Exp)), (yyval.T_Vardef)->registe_var();;}
    break;

  case 14:
#line 59 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(2) - (4)].T_Exp), (yyvsp[(2) - (4)].T_Exp)->nxt = (yyvsp[(4) - (4)].T_Exp);;}
    break;

  case 15:
#line 60 "sysy.y"
    {(yyval.T_Exp) = NULL;;}
    break;

  case 16:
#line 63 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp), (yyval.T_Exp) -> update_pos();;}
    break;

  case 17:
#line 64 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_NOP);;}
    break;

  case 18:
#line 65 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(3) - (5)].T_Exp);;}
    break;

  case 19:
#line 67 "sysy.y"
    {inc_init_blk();;}
    break;

  case 20:
#line 69 "sysy.y"
    {dec_init_blk();;}
    break;

  case 21:
#line 71 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 22:
#line 72 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (3)].T_Exp), set_next((yyval.T_Exp),(yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 23:
#line 74 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(2) - (3)].T_Stmt);;}
    break;

  case 24:
#line 76 "sysy.y"
    {(yyvsp[(1) - (1)].T_Vardef)->make_final_code(); (yyval.T_Stmt) = new StmtNode(T_NOP); (yyval.T_Stmt)->code = (yyvsp[(1) - (1)].T_Vardef)->code;;}
    break;

  case 25:
#line 77 "sysy.y"
    {(yyvsp[(3) - (3)].T_Vardef)->make_final_code(); (yyval.T_Stmt) = new StmtNode(T_NOP); (yyval.T_Stmt)->code = (yyvsp[(3) - (3)].T_Vardef)->code; (yyvsp[(1) - (3)].T_Stmt) -> nxt = (yyval.T_Stmt);;}
    break;

  case 26:
#line 79 "sysy.y"
    {(yyval.T_Vardef) = (yyvsp[(1) - (3)].T_Vardef); (yyval.T_Vardef)->right = (yyvsp[(3) - (3)].T_Exp);;}
    break;

  case 27:
#line 80 "sysy.y"
    {(yyval.T_Vardef) = (yyvsp[(1) - (1)].T_Vardef); (yyval.T_Vardef)->right = NULL;;}
    break;

  case 28:
#line 82 "sysy.y"
    {(yyval.T_Vardef) = new VardefNode(false, false, (yyvsp[(1) - (2)].ID), (yyvsp[(2) - (2)].T_Exp)), (yyval.T_Vardef)->registe_var();;}
    break;

  case 29:
#line 84 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp), (yyval.T_Exp) -> update_pos();;}
    break;

  case 30:
#line 85 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(3) - (5)].T_Exp);;}
    break;

  case 31:
#line 86 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_NOP);;}
    break;

  case 32:
#line 88 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 33:
#line 89 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (3)].T_Exp); set_next((yyval.T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 34:
#line 91 "sysy.y"
    {(yyval.T_FuncDef) = (yyvsp[(1) - (2)].T_FuncDef); (yyval.T_FuncDef)->blk =(yyvsp[(2) - (2)].T_Stmt); dec_blk(true);;}
    break;

  case 35:
#line 93 "sysy.y"
    {(yyval.T_FuncDef) = new FuncDefNode(false, (yyvsp[(5) - (6)].T_Vardef), (yyvsp[(2) - (6)].ID)); (yyval.T_FuncDef)->registe_func();;}
    break;

  case 36:
#line 94 "sysy.y"
    {(yyval.T_FuncDef) = new FuncDefNode(true, (yyvsp[(5) - (6)].T_Vardef), (yyvsp[(2) - (6)].ID)); (yyval.T_FuncDef)->registe_func();;}
    break;

  case 37:
#line 96 "sysy.y"
    {inc_blk();;}
    break;

  case 38:
#line 97 "sysy.y"
    {dec_blk(false);;}
    break;

  case 39:
#line 99 "sysy.y"
    {(yyval.T_Vardef) = (yyvsp[(1) - (3)].T_Vardef), (yyvsp[(1) - (3)].T_Vardef)->nxt = (yyvsp[(3) - (3)].T_Vardef);;}
    break;

  case 40:
#line 100 "sysy.y"
    {(yyval.T_Vardef) = (yyvsp[(1) - (1)].T_Vardef);;}
    break;

  case 41:
#line 101 "sysy.y"
    {(yyval.T_Vardef) = NULL;;}
    break;

  case 42:
#line 103 "sysy.y"
    {(yyval.T_Vardef) = new VardefNode(false, true, (yyvsp[(2) - (2)].ID)); (yyval.T_Vardef)->registe_var();;}
    break;

  case 43:
#line 104 "sysy.y"
    {(yyval.T_Vardef) = new VardefNode(false, true, (yyvsp[(2) - (5)].ID), (yyvsp[(5) - (5)].T_Exp)); (yyval.T_Vardef)->add_a_dimension();(yyval.T_Vardef)->registe_var();;}
    break;

  case 44:
#line 106 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(3) - (5)].T_Stmt); (yyval.T_Stmt)->accumulate_code();;}
    break;

  case 45:
#line 108 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(1) - (2)].T_Stmt); (yyval.T_Stmt)->nxt = (yyvsp[(2) - (2)].T_Stmt);;}
    break;

  case 46:
#line 109 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_NOP);;}
    break;

  case 47:
#line 111 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(1) - (1)].T_Stmt);;}
    break;

  case 48:
#line 112 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(1) - (1)].T_Stmt);;}
    break;

  case 49:
#line 114 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_AssignValue, NULL, (yyvsp[(1) - (4)].T_Exp), (yyvsp[(3) - (4)].T_Exp));;}
    break;

  case 50:
#line 115 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_EXP, NULL, (yyvsp[(1) - (2)].T_Exp));;}
    break;

  case 51:
#line 116 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_NOP);;}
    break;

  case 52:
#line 117 "sysy.y"
    {(yyval.T_Stmt) = (yyvsp[(1) - (1)].T_Stmt);;}
    break;

  case 53:
#line 118 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_IF, (yyvsp[(3) - (5)].T_Exp), NULL, NULL, (yyvsp[(5) - (5)].T_Stmt));;}
    break;

  case 54:
#line 119 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_IF, (yyvsp[(3) - (7)].T_Exp), NULL, NULL, (yyvsp[(5) - (7)].T_Stmt), (yyvsp[(7) - (7)].T_Stmt));;}
    break;

  case 55:
#line 120 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_WHILE, (yyvsp[(4) - (6)].T_Exp), NULL, NULL, (yyvsp[(6) - (6)].T_Stmt)); dec_while();;}
    break;

  case 56:
#line 121 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_BREAK);;}
    break;

  case 57:
#line 122 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_CONTINUE);;}
    break;

  case 58:
#line 123 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_RETURN, NULL, (yyvsp[(2) - (3)].T_Exp));;}
    break;

  case 59:
#line 124 "sysy.y"
    {(yyval.T_Stmt) = new StmtNode(T_RETURN);;}
    break;

  case 60:
#line 126 "sysy.y"
    {inc_while();;}
    break;

  case 61:
#line 128 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 62:
#line 129 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 63:
#line 130 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_VAR, NOP, (yyvsp[(2) - (2)].T_Exp), NULL, (yyvsp[(1) - (2)].ID));;}
    break;

  case 64:
#line 132 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(2) - (4)].T_Exp), (yyval.T_Exp)->nxt = (yyvsp[(4) - (4)].T_Exp);;}
    break;

  case 65:
#line 133 "sysy.y"
    {(yyval.T_Exp) = NULL;;}
    break;

  case 66:
#line 135 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(2) - (3)].T_Exp);;}
    break;

  case 67:
#line 136 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 68:
#line 137 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_NUM, NOP, NULL, NULL, to_string((yyvsp[(1) - (1)].NUM)), (yyvsp[(1) - (1)].NUM));;}
    break;

  case 69:
#line 139 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 70:
#line 140 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_FUNCAL, NOP, (yyvsp[(3) - (4)].T_Exp), NULL, (yyvsp[(1) - (4)].ID));;}
    break;

  case 71:
#line 141 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(2) - (2)].T_Exp);;}
    break;

  case 72:
#line 142 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, NEG, (yyvsp[(2) - (2)].T_Exp));;}
    break;

  case 73:
#line 143 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, NOT, (yyvsp[(2) - (2)].T_Exp));;}
    break;

  case 74:
#line 145 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (3)].T_Exp), (yyval.T_Exp)->nxt = (yyvsp[(3) - (3)].T_Exp);;}
    break;

  case 75:
#line 146 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 76:
#line 147 "sysy.y"
    {(yyval.T_Exp) = NULL;;}
    break;

  case 77:
#line 149 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 78:
#line 150 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, MUL, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 79:
#line 151 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, DIV, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 80:
#line 152 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, MOD, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 81:
#line 154 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 82:
#line 155 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, ADD, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 83:
#line 156 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, SUB, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 84:
#line 158 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 85:
#line 159 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, LT, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 86:
#line 160 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, GT, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 87:
#line 161 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, LE, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 88:
#line 162 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, GE, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 89:
#line 164 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 90:
#line 165 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, EQ, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 91:
#line 166 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_UNK, NE, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 92:
#line 168 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 93:
#line 169 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_Logical, AND, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 94:
#line 170 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;

  case 95:
#line 171 "sysy.y"
    {(yyval.T_Exp) = new ExpressionNode(T_Logical, OR, (yyvsp[(1) - (3)].T_Exp), (yyvsp[(3) - (3)].T_Exp));;}
    break;

  case 96:
#line 172 "sysy.y"
    {(yyval.T_Exp) = (yyvsp[(1) - (1)].T_Exp);;}
    break;


/* Line 1267 of yacc.c.  */
#line 2003 "sysy.tab.cpp"
      default: break;
    }
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;


  /* Now `shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */

  yyn = yyr1[yyn];

  yystate = yypgoto[yyn - YYNTOKENS] + *yyssp;
  if (0 <= yystate && yystate <= YYLAST && yycheck[yystate] == *yyssp)
    yystate = yytable[yystate];
  else
    yystate = yydefgoto[yyn - YYNTOKENS];

  goto yynewstate;


/*------------------------------------.
| yyerrlab -- here on detecting error |
`------------------------------------*/
yyerrlab:
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
      {
	YYSIZE_T yysize = yysyntax_error (0, yystate, yychar);
	if (yymsg_alloc < yysize && yymsg_alloc < YYSTACK_ALLOC_MAXIMUM)
	  {
	    YYSIZE_T yyalloc = 2 * yysize;
	    if (! (yysize <= yyalloc && yyalloc <= YYSTACK_ALLOC_MAXIMUM))
	      yyalloc = YYSTACK_ALLOC_MAXIMUM;
	    if (yymsg != yymsgbuf)
	      YYSTACK_FREE (yymsg);
	    yymsg = (char *) YYSTACK_ALLOC (yyalloc);
	    if (yymsg)
	      yymsg_alloc = yyalloc;
	    else
	      {
		yymsg = yymsgbuf;
		yymsg_alloc = sizeof yymsgbuf;
	      }
	  }

	if (0 < yysize && yysize <= yymsg_alloc)
	  {
	    (void) yysyntax_error (yymsg, yystate, yychar);
	    yyerror (yymsg);
	  }
	else
	  {
	    yyerror (YY_("syntax error"));
	    if (yysize != 0)
	      goto yyexhaustedlab;
	  }
      }
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse look-ahead token after an
	 error, discard it.  */

      if (yychar <= YYEOF)
	{
	  /* Return failure if at end of input.  */
	  if (yychar == YYEOF)
	    YYABORT;
	}
      else
	{
	  yydestruct ("Error: discarding",
		      yytoken, &yylval);
	  yychar = YYEMPTY;
	}
    }

  /* Else will try to reuse look-ahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:

  /* Pacify compilers like GCC when the user code never invokes
     YYERROR and the label yyerrorlab therefore never appears in user
     code.  */
  if (/*CONSTCOND*/ 0)
     goto yyerrorlab;

  /* Do not reclaim the symbols of the rule which action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;	/* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (yyn != YYPACT_NINF)
	{
	  yyn += YYTERROR;
	  if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
	    {
	      yyn = yytable[yyn];
	      if (0 < yyn)
		break;
	    }
	}

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
	YYABORT;


      yydestruct ("Error: popping",
		  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  if (yyn == YYFINAL)
    YYACCEPT;

  *++yyvsp = yylval;


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;

/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;

#ifndef yyoverflow
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif

yyreturn:
  if (yychar != YYEOF && yychar != YYEMPTY)
     yydestruct ("Cleanup: discarding lookahead",
		 yytoken, &yylval);
  /* Do not reclaim the symbols of the rule which action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
		  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  /* Make sure YYID is used.  */
  return YYID (yyresult);
}


#line 173 "sysy.y"


using namespace std;

int cur_line = 1;
void yyerror(const char *msg);
void unrecognized_char(char c);
int str2dec(char* text);
int hex2dec(char* text);
int oct2dec(char* text);
extern string final_code;

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


int main(int argc, char **argv) 
{
    string out_name;
    for (int c; (c = getopt(argc, argv, "Se:o:")) != EOF;) 
    {
        switch (c) 
        {
            case 'S':
                break;
            case 'e':
                yyin = fopen(optarg, "r");
                break;
            case 'o':
                yyout = fopen(optarg, "w");
                break;
            default:
                yyerror("unknown argument");
        }
    }
    
    if (yyin == NULL || yyout == NULL)
        yyerror("failed to open files\n");
    Init();
    do 
    {
        yyparse();
    }while(!feof(yyin));
    fprintf(yyout, "%s", final_code.c_str());
    return 0;
}
