/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 2 "syntax_analyzer.y"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

#include "syntax_tree.h"

// external functions from lex
extern int yylex();
extern int yyparse();
extern int yyrestart();
extern FILE * yyin;

// external variables from lexical_analyzer module
extern int lines;
extern char * yytext;
extern int pos_end;
extern int pos_start;

// Global syntax tree
syntax_tree *gt;

// Error reporting
void yyerror(const char *s);

// Helper functions written for you with love
syntax_tree_node *node(const char *node_name, int children_num, ...);

#line 101 "syntax_analyzer.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "syntax_analyzer.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_ERROR = 3,                      /* ERROR  */
  YYSYMBOL_ADD = 4,                        /* ADD  */
  YYSYMBOL_SUB = 5,                        /* SUB  */
  YYSYMBOL_MUL = 6,                        /* MUL  */
  YYSYMBOL_DIV = 7,                        /* DIV  */
  YYSYMBOL_MOD = 8,                        /* MOD  */
  YYSYMBOL_LT = 9,                         /* LT  */
  YYSYMBOL_LET = 10,                       /* LET  */
  YYSYMBOL_GT = 11,                        /* GT  */
  YYSYMBOL_GET = 12,                       /* GET  */
  YYSYMBOL_EQ = 13,                        /* EQ  */
  YYSYMBOL_NEQ = 14,                       /* NEQ  */
  YYSYMBOL_LPARENTHESIS = 15,              /* LPARENTHESIS  */
  YYSYMBOL_RPARENTHESIS = 16,              /* RPARENTHESIS  */
  YYSYMBOL_LBRACKET = 17,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 18,                  /* RBRACKET  */
  YYSYMBOL_LBRACE = 19,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 20,                    /* RBRACE  */
  YYSYMBOL_ASSIGN = 21,                    /* ASSIGN  */
  YYSYMBOL_COMMA = 22,                     /* COMMA  */
  YYSYMBOL_SEMICOLON = 23,                 /* SEMICOLON  */
  YYSYMBOL_NOT = 24,                       /* NOT  */
  YYSYMBOL_AND = 25,                       /* AND  */
  YYSYMBOL_OR = 26,                        /* OR  */
  YYSYMBOL_INT = 27,                       /* INT  */
  YYSYMBOL_FLOAT = 28,                     /* FLOAT  */
  YYSYMBOL_VOID = 29,                      /* VOID  */
  YYSYMBOL_CONST = 30,                     /* CONST  */
  YYSYMBOL_IF = 31,                        /* IF  */
  YYSYMBOL_ELSE = 32,                      /* ELSE  */
  YYSYMBOL_WHILE = 33,                     /* WHILE  */
  YYSYMBOL_BREAK = 34,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 35,                  /* CONTINUE  */
  YYSYMBOL_RETURN = 36,                    /* RETURN  */
  YYSYMBOL_IDENT = 37,                     /* IDENT  */
  YYSYMBOL_INTCONST = 38,                  /* INTCONST  */
  YYSYMBOL_FLOATCONST = 39,                /* FLOATCONST  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_Program = 41,                   /* Program  */
  YYSYMBOL_CompUnit = 42,                  /* CompUnit  */
  YYSYMBOL_Decl = 43,                      /* Decl  */
  YYSYMBOL_ConstDecl = 44,                 /* ConstDecl  */
  YYSYMBOL_ConstDefList = 45,              /* ConstDefList  */
  YYSYMBOL_BType = 46,                     /* BType  */
  YYSYMBOL_ConstDef = 47,                  /* ConstDef  */
  YYSYMBOL_ConstExpList = 48,              /* ConstExpList  */
  YYSYMBOL_ConstInitVal = 49,              /* ConstInitVal  */
  YYSYMBOL_ConstInitValList = 50,          /* ConstInitValList  */
  YYSYMBOL_VarDecl = 51,                   /* VarDecl  */
  YYSYMBOL_VarDeclList = 52,               /* VarDeclList  */
  YYSYMBOL_VarDef = 53,                    /* VarDef  */
  YYSYMBOL_InitVal = 54,                   /* InitVal  */
  YYSYMBOL_InitValList = 55,               /* InitValList  */
  YYSYMBOL_FuncDef = 56,                   /* FuncDef  */
  YYSYMBOL_FuncFParams = 57,               /* FuncFParams  */
  YYSYMBOL_FuncFParam = 58,                /* FuncFParam  */
  YYSYMBOL_ExpList = 59,                   /* ExpList  */
  YYSYMBOL_Block = 60,                     /* Block  */
  YYSYMBOL_BlockList = 61,                 /* BlockList  */
  YYSYMBOL_BlockItem = 62,                 /* BlockItem  */
  YYSYMBOL_Stmt = 63,                      /* Stmt  */
  YYSYMBOL_Exp = 64,                       /* Exp  */
  YYSYMBOL_Cond = 65,                      /* Cond  */
  YYSYMBOL_LVal = 66,                      /* LVal  */
  YYSYMBOL_PrimaryExp = 67,                /* PrimaryExp  */
  YYSYMBOL_Number = 68,                    /* Number  */
  YYSYMBOL_UnaryExp = 69,                  /* UnaryExp  */
  YYSYMBOL_UnaryOp = 70,                   /* UnaryOp  */
  YYSYMBOL_FuncRParams = 71,               /* FuncRParams  */
  YYSYMBOL_MulExp = 72,                    /* MulExp  */
  YYSYMBOL_AddExp = 73,                    /* AddExp  */
  YYSYMBOL_RelExp = 74,                    /* RelExp  */
  YYSYMBOL_EqExp = 75,                     /* EqExp  */
  YYSYMBOL_LAndExp = 76,                   /* LAndExp  */
  YYSYMBOL_LOrExp = 77,                    /* LOrExp  */
  YYSYMBOL_ConstExp = 78,                  /* ConstExp  */
  YYSYMBOL_Integer = 79,                   /* Integer  */
  YYSYMBOL_Floatnum = 80                   /* Floatnum  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

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
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
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
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  14
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   241

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  41
/* YYNRULES -- Number of rules.  */
#define YYNRULES  96
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  172

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   294


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
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
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   114,   114,   118,   119,   120,   121,   125,   126,   130,
     133,   134,   138,   139,   143,   146,   147,   151,   152,   153,
     156,   157,   161,   164,   165,   169,   170,   174,   175,   176,
     179,   180,   184,   185,   186,   187,   197,   198,   202,   203,
     206,   207,   211,   214,   215,   219,   220,   224,   225,   226,
     227,   228,   229,   230,   231,   232,   233,   234,   238,   242,
     246,   250,   251,   252,   256,   257,   261,   262,   263,   264,
     268,   269,   270,   274,   275,   279,   280,   281,   282,   286,
     287,   288,   292,   293,   294,   295,   296,   300,   301,   302,
     306,   307,   311,   312,   316,   319,   322
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "ERROR", "ADD", "SUB",
  "MUL", "DIV", "MOD", "LT", "LET", "GT", "GET", "EQ", "NEQ",
  "LPARENTHESIS", "RPARENTHESIS", "LBRACKET", "RBRACKET", "LBRACE",
  "RBRACE", "ASSIGN", "COMMA", "SEMICOLON", "NOT", "AND", "OR", "INT",
  "FLOAT", "VOID", "CONST", "IF", "ELSE", "WHILE", "BREAK", "CONTINUE",
  "RETURN", "IDENT", "INTCONST", "FLOATCONST", "$accept", "Program",
  "CompUnit", "Decl", "ConstDecl", "ConstDefList", "BType", "ConstDef",
  "ConstExpList", "ConstInitVal", "ConstInitValList", "VarDecl",
  "VarDeclList", "VarDef", "InitVal", "InitValList", "FuncDef",
  "FuncFParams", "FuncFParam", "ExpList", "Block", "BlockList",
  "BlockItem", "Stmt", "Exp", "Cond", "LVal", "PrimaryExp", "Number",
  "UnaryExp", "UnaryOp", "FuncRParams", "MulExp", "AddExp", "RelExp",
  "EqExp", "LAndExp", "LOrExp", "ConstExp", "Integer", "Floatnum", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-134)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      77,  -134,  -134,   -20,    67,    22,    77,  -134,  -134,   -13,
    -134,  -134,    18,    34,  -134,  -134,  -134,    61,  -134,     2,
    -134,   102,  -134,    37,   -10,   106,    36,    45,    -2,  -134,
      40,    34,  -134,    36,    -1,   202,   145,    65,  -134,  -134,
    -134,    79,    36,    67,   161,  -134,  -134,    36,  -134,  -134,
     202,  -134,   111,  -134,  -134,  -134,  -134,  -134,  -134,   202,
      78,    95,    96,  -134,  -134,    54,  -134,  -134,    95,  -134,
    -134,     8,   112,  -134,  -134,   133,  -134,  -134,  -134,   124,
     173,   134,  -134,   202,   202,   202,   202,   202,  -134,  -134,
    -134,    48,  -134,  -134,   141,   143,   136,   138,   190,  -134,
      65,  -134,  -134,  -134,   139,   142,  -134,  -134,  -134,    59,
    -134,  -134,  -134,    32,   202,  -134,  -134,  -134,    78,    78,
    -134,   145,   202,   202,  -134,  -134,  -134,   144,  -134,   202,
     134,  -134,   161,  -134,   202,   150,  -134,   157,    95,    99,
     120,   149,   153,   159,  -134,   158,  -134,  -134,  -134,   108,
     202,   202,   202,   202,   202,   202,   202,   202,   108,  -134,
     154,    95,    95,    95,    95,    99,    99,   120,   149,  -134,
     108,  -134
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    12,    13,     0,     0,     0,     2,     5,     7,     0,
       8,     6,     0,     0,     1,     3,     4,    15,    23,     0,
      15,     0,    10,     0,    25,     0,     0,     0,     0,    36,
       0,     0,     9,     0,     0,     0,     0,     0,    22,    43,
      33,    38,     0,     0,     0,    11,    32,     0,    70,    71,
       0,    72,    40,    95,    96,    62,    66,    63,    75,     0,
      79,    94,     0,    64,    65,     0,    26,    27,    58,    15,
      24,     0,     0,    34,    37,     0,    14,    17,    35,     0,
       0,    60,    69,     0,     0,     0,     0,     0,    16,    29,
      30,     0,    42,    49,     0,     0,     0,     0,     0,    45,
       0,    50,    44,    46,     0,    62,    40,    19,    20,     0,
      61,    68,    73,     0,     0,    76,    77,    78,    80,    81,
      28,     0,     0,     0,    54,    55,    57,     0,    48,     0,
      39,    18,     0,    67,     0,     0,    31,     0,    82,    87,
      90,    92,    59,     0,    56,     0,    21,    74,    41,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    47,
      51,    83,    84,    85,    86,    88,    89,    91,    93,    53,
       0,    52
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -134,  -134,  -134,    -5,  -134,  -134,     4,   156,   170,   -72,
    -134,  -134,  -134,   155,   -59,  -134,   185,   178,   160,    87,
      30,  -134,  -134,  -133,   -31,    73,   -69,  -134,  -134,   -33,
    -134,  -134,    49,   -35,     0,    46,    47,  -134,   174,  -134,
    -134
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     5,     6,     7,     8,    21,    27,    22,    24,    76,
     109,    10,    25,    18,    66,    91,    11,    28,    29,    81,
     101,    71,   102,   103,   104,   137,    55,    56,    57,    58,
      59,   113,    60,    68,   139,   140,   141,   142,    77,    63,
      64
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      61,    15,   105,   108,     9,    67,    90,    35,    13,    61,
       9,    36,    48,    49,    42,    47,   160,    12,    26,    79,
      43,    43,    14,    50,    17,   169,    82,    39,    92,     1,
       2,    93,    51,    19,    67,     1,     2,   171,     4,    94,
      61,    95,    96,    97,    98,    52,    53,    54,   133,   112,
     115,   116,   117,    33,   134,    39,    40,    35,    48,    49,
     146,    44,   136,    46,     1,     2,    99,   127,   120,    50,
     121,    20,    73,    65,    89,   100,    23,    78,    51,   131,
     105,   132,    41,   135,    83,    84,    85,   138,   138,   105,
      67,    52,    53,    54,     1,     2,    72,    61,   145,    86,
      87,   105,    69,   147,     1,     2,     3,     4,   150,   151,
     152,   153,    48,    49,    88,   161,   162,   163,   164,   138,
     138,   138,   138,    50,    31,    32,    80,    39,    37,    38,
     106,    93,    51,   154,   155,   118,   119,    48,    49,    94,
     110,    95,    96,    97,    98,    52,    53,    54,    50,    48,
      49,   114,    75,   107,   165,   166,   122,    51,   123,   124,
      50,   125,   128,   129,    65,    48,    49,   144,   148,    51,
      52,    53,    54,   149,   156,   158,    50,    48,    49,   157,
      75,   159,    52,    53,    54,    51,   170,    45,    50,   111,
      30,    16,    70,   130,    48,    49,   143,    51,    52,    53,
      54,    34,   167,    74,   168,    50,    48,    49,     0,    62,
      52,    53,    54,   126,    51,     0,     0,    50,     0,     0,
       0,     0,     0,     0,     0,     0,    51,    52,    53,    54,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    52,
      53,    54
};

static const yytype_int16 yycheck[] =
{
      35,     6,    71,    75,     0,    36,    65,    17,     4,    44,
       6,    21,     4,     5,    16,    16,   149,    37,    16,    50,
      22,    22,     0,    15,    37,   158,    59,    19,    20,    27,
      28,    23,    24,    15,    65,    27,    28,   170,    30,    31,
      75,    33,    34,    35,    36,    37,    38,    39,    16,    80,
      83,    84,    85,    16,    22,    19,    26,    17,     4,     5,
     132,    21,   121,    33,    27,    28,    71,    98,    20,    15,
      22,    37,    42,    19,    20,    71,    15,    47,    24,    20,
     149,    22,    37,   114,     6,     7,     8,   122,   123,   158,
     121,    37,    38,    39,    27,    28,    17,   132,   129,     4,
       5,   170,    37,   134,    27,    28,    29,    30,     9,    10,
      11,    12,     4,     5,    18,   150,   151,   152,   153,   154,
     155,   156,   157,    15,    22,    23,    15,    19,    22,    23,
      18,    23,    24,    13,    14,    86,    87,     4,     5,    31,
      16,    33,    34,    35,    36,    37,    38,    39,    15,     4,
       5,    17,    19,    20,   154,   155,    15,    24,    15,    23,
      15,    23,    23,    21,    19,     4,     5,    23,    18,    24,
      37,    38,    39,    16,    25,    16,    15,     4,     5,    26,
      19,    23,    37,    38,    39,    24,    32,    31,    15,    16,
      20,     6,    37,   106,     4,     5,   123,    24,    37,    38,
      39,    23,   156,    43,   157,    15,     4,     5,    -1,    35,
      37,    38,    39,    23,    24,    -1,    -1,    15,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    24,    37,    38,    39,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    37,
      38,    39
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    27,    28,    29,    30,    41,    42,    43,    44,    46,
      51,    56,    37,    46,     0,    43,    56,    37,    53,    15,
      37,    45,    47,    15,    48,    52,    16,    46,    57,    58,
      48,    22,    23,    16,    57,    17,    21,    22,    23,    19,
      60,    37,    16,    22,    21,    47,    60,    16,     4,     5,
      15,    24,    37,    38,    39,    66,    67,    68,    69,    70,
      72,    73,    78,    79,    80,    19,    54,    64,    73,    37,
      53,    61,    17,    60,    58,    19,    49,    78,    60,    64,
      15,    59,    69,     6,     7,     8,     4,     5,    18,    20,
      54,    55,    20,    23,    31,    33,    34,    35,    36,    43,
      46,    60,    62,    63,    64,    66,    18,    20,    49,    50,
      16,    16,    64,    71,    17,    69,    69,    69,    72,    72,
      20,    22,    15,    15,    23,    23,    23,    64,    23,    21,
      59,    20,    22,    16,    22,    64,    54,    65,    73,    74,
      75,    76,    77,    65,    23,    64,    49,    64,    18,    16,
       9,    10,    11,    12,    13,    14,    25,    26,    16,    23,
      63,    73,    73,    73,    73,    74,    74,    75,    76,    63,
      32,    63
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    42,    42,    42,    43,    43,    44,
      45,    45,    46,    46,    47,    48,    48,    49,    49,    49,
      50,    50,    51,    52,    52,    53,    53,    54,    54,    54,
      55,    55,    56,    56,    56,    56,    57,    57,    58,    58,
      59,    59,    60,    61,    61,    62,    62,    63,    63,    63,
      63,    63,    63,    63,    63,    63,    63,    63,    64,    65,
      66,    67,    67,    67,    68,    68,    69,    69,    69,    69,
      70,    70,    70,    71,    71,    72,    72,    72,    72,    73,
      73,    73,    74,    74,    74,    74,    74,    75,    75,    75,
      76,    76,    77,    77,    78,    79,    80
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     2,     1,     1,     1,     1,     4,
       1,     3,     1,     1,     4,     0,     4,     1,     3,     2,
       1,     3,     4,     0,     3,     2,     4,     1,     3,     2,
       1,     3,     5,     5,     6,     6,     1,     3,     2,     5,
       0,     4,     3,     0,     2,     1,     1,     4,     2,     1,
       1,     5,     7,     5,     2,     2,     3,     2,     1,     1,
       2,     3,     1,     1,     1,     1,     1,     4,     3,     2,
       1,     1,     1,     1,     3,     1,     3,     3,     3,     1,
       3,     3,     1,     3,     3,     3,     3,     1,     3,     3,
       1,     3,     1,     3,     1,     1,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
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






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
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
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
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
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* Program: CompUnit  */
#line 114 "syntax_analyzer.y"
                   {(yyval.node) = node("program", 1, (yyvsp[0].node)); gt->root = (yyval.node);}
#line 1303 "syntax_analyzer.c"
    break;

  case 3: /* CompUnit: CompUnit Decl  */
#line 118 "syntax_analyzer.y"
                {(yyval.node) = node("CompUnit", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1309 "syntax_analyzer.c"
    break;

  case 4: /* CompUnit: CompUnit FuncDef  */
#line 119 "syntax_analyzer.y"
                    {(yyval.node) = node("CompUnit", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1315 "syntax_analyzer.c"
    break;

  case 5: /* CompUnit: Decl  */
#line 120 "syntax_analyzer.y"
       {(yyval.node) = node("CompUnit", 1, (yyvsp[0].node));}
#line 1321 "syntax_analyzer.c"
    break;

  case 6: /* CompUnit: FuncDef  */
#line 121 "syntax_analyzer.y"
          {(yyval.node) = node("CompUnit", 1, (yyvsp[0].node));}
#line 1327 "syntax_analyzer.c"
    break;

  case 7: /* Decl: ConstDecl  */
#line 125 "syntax_analyzer.y"
            {(yyval.node) = node("Decl", 1, (yyvsp[0].node));}
#line 1333 "syntax_analyzer.c"
    break;

  case 8: /* Decl: VarDecl  */
#line 126 "syntax_analyzer.y"
            {(yyval.node) = node("Decl", 1, (yyvsp[0].node));}
#line 1339 "syntax_analyzer.c"
    break;

  case 9: /* ConstDecl: CONST BType ConstDefList SEMICOLON  */
#line 130 "syntax_analyzer.y"
                                     {(yyval.node) = node("ConstDecl", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1345 "syntax_analyzer.c"
    break;

  case 10: /* ConstDefList: ConstDef  */
#line 133 "syntax_analyzer.y"
           {(yyval.node) = node("ConstDefList", 1, (yyvsp[0].node));}
#line 1351 "syntax_analyzer.c"
    break;

  case 11: /* ConstDefList: ConstDefList COMMA ConstDef  */
#line 134 "syntax_analyzer.y"
                              {(yyval.node) = node("ConstDefList", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1357 "syntax_analyzer.c"
    break;

  case 12: /* BType: INT  */
#line 138 "syntax_analyzer.y"
      {(yyval.node) = node("BType", 1, (yyvsp[0].node));}
#line 1363 "syntax_analyzer.c"
    break;

  case 13: /* BType: FLOAT  */
#line 139 "syntax_analyzer.y"
        {(yyval.node) = node("BType", 1, (yyvsp[0].node));}
#line 1369 "syntax_analyzer.c"
    break;

  case 14: /* ConstDef: IDENT ConstExpList ASSIGN ConstInitVal  */
#line 143 "syntax_analyzer.y"
                                         {(yyval.node) = node("ConstDef", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1375 "syntax_analyzer.c"
    break;

  case 15: /* ConstExpList: %empty  */
#line 146 "syntax_analyzer.y"
   {(yyval.node) = node("ConstExpList", 0);}
#line 1381 "syntax_analyzer.c"
    break;

  case 16: /* ConstExpList: ConstExpList LBRACKET ConstExp RBRACKET  */
#line 147 "syntax_analyzer.y"
                                          {(yyval.node) = node("ConstExpList", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1387 "syntax_analyzer.c"
    break;

  case 17: /* ConstInitVal: ConstExp  */
#line 151 "syntax_analyzer.y"
            {(yyval.node) = node("ConstInitVal", 1, (yyvsp[0].node));}
#line 1393 "syntax_analyzer.c"
    break;

  case 18: /* ConstInitVal: LBRACE ConstInitValList RBRACE  */
#line 152 "syntax_analyzer.y"
                                 {(yyval.node) = node("ConstInitVal", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1399 "syntax_analyzer.c"
    break;

  case 19: /* ConstInitVal: LBRACE RBRACE  */
#line 153 "syntax_analyzer.y"
                {(yyval.node) = node("ConstInitVal", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1405 "syntax_analyzer.c"
    break;

  case 20: /* ConstInitValList: ConstInitVal  */
#line 156 "syntax_analyzer.y"
               {(yyval.node) = node("ConstInitValList", 1, (yyvsp[0].node));}
#line 1411 "syntax_analyzer.c"
    break;

  case 21: /* ConstInitValList: ConstInitValList COMMA ConstInitVal  */
#line 157 "syntax_analyzer.y"
                                      {(yyval.node) = node("ConstInitValList", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1417 "syntax_analyzer.c"
    break;

  case 22: /* VarDecl: BType VarDef VarDeclList SEMICOLON  */
#line 161 "syntax_analyzer.y"
                                     {(yyval.node) = node("VarDecl", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1423 "syntax_analyzer.c"
    break;

  case 23: /* VarDeclList: %empty  */
#line 164 "syntax_analyzer.y"
  {(yyval.node) = node("VarDeclList", 0);}
#line 1429 "syntax_analyzer.c"
    break;

  case 24: /* VarDeclList: VarDeclList COMMA VarDef  */
#line 165 "syntax_analyzer.y"
                           {(yyval.node) = node("VarDeclList", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1435 "syntax_analyzer.c"
    break;

  case 25: /* VarDef: IDENT ConstExpList  */
#line 169 "syntax_analyzer.y"
                     {(yyval.node) = node("VarDef", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1441 "syntax_analyzer.c"
    break;

  case 26: /* VarDef: IDENT ConstExpList ASSIGN InitVal  */
#line 170 "syntax_analyzer.y"
                                    {(yyval.node) = node("VarDef", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1447 "syntax_analyzer.c"
    break;

  case 27: /* InitVal: Exp  */
#line 174 "syntax_analyzer.y"
      {(yyval.node) = node("InitVal", 1, (yyvsp[0].node));}
#line 1453 "syntax_analyzer.c"
    break;

  case 28: /* InitVal: LBRACE InitValList RBRACE  */
#line 175 "syntax_analyzer.y"
                            {(yyval.node) = node("InitVal", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1459 "syntax_analyzer.c"
    break;

  case 29: /* InitVal: LBRACE RBRACE  */
#line 176 "syntax_analyzer.y"
                {(yyval.node) = node("InitVal", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1465 "syntax_analyzer.c"
    break;

  case 30: /* InitValList: InitVal  */
#line 179 "syntax_analyzer.y"
          {(yyval.node) = node("InitValList", 1, (yyvsp[0].node));}
#line 1471 "syntax_analyzer.c"
    break;

  case 31: /* InitValList: InitValList COMMA InitVal  */
#line 180 "syntax_analyzer.y"
                            {(yyval.node) = node("InitValList", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1477 "syntax_analyzer.c"
    break;

  case 32: /* FuncDef: BType IDENT LPARENTHESIS RPARENTHESIS Block  */
#line 184 "syntax_analyzer.y"
                                              {(yyval.node) = node("FuncDef", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1483 "syntax_analyzer.c"
    break;

  case 33: /* FuncDef: VOID IDENT LPARENTHESIS RPARENTHESIS Block  */
#line 185 "syntax_analyzer.y"
                                             {(yyval.node) = node("FuncDef", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1489 "syntax_analyzer.c"
    break;

  case 34: /* FuncDef: VOID IDENT LPARENTHESIS FuncFParams RPARENTHESIS Block  */
#line 186 "syntax_analyzer.y"
                                                         {(yyval.node) = node("FuncDef", 6, (yyvsp[-5].node), (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1495 "syntax_analyzer.c"
    break;

  case 35: /* FuncDef: BType IDENT LPARENTHESIS FuncFParams RPARENTHESIS Block  */
#line 187 "syntax_analyzer.y"
                                                          {(yyval.node) = node("FuncDef", 6, (yyvsp[-5].node), (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1501 "syntax_analyzer.c"
    break;

  case 36: /* FuncFParams: FuncFParam  */
#line 197 "syntax_analyzer.y"
             {(yyval.node) = node("FuncFParams", 1, (yyvsp[0].node));}
#line 1507 "syntax_analyzer.c"
    break;

  case 37: /* FuncFParams: FuncFParams COMMA FuncFParam  */
#line 198 "syntax_analyzer.y"
                               {(yyval.node) = node("FuncFParams", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1513 "syntax_analyzer.c"
    break;

  case 38: /* FuncFParam: BType IDENT  */
#line 202 "syntax_analyzer.y"
              {(yyval.node) = node("FuncFParam", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1519 "syntax_analyzer.c"
    break;

  case 39: /* FuncFParam: BType IDENT LBRACKET RBRACKET ExpList  */
#line 203 "syntax_analyzer.y"
                                        {(yyval.node) = node("FuncFParam", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1525 "syntax_analyzer.c"
    break;

  case 40: /* ExpList: %empty  */
#line 206 "syntax_analyzer.y"
  {(yyval.node) = node("ExpList", 0);}
#line 1531 "syntax_analyzer.c"
    break;

  case 41: /* ExpList: ExpList LBRACKET Exp RBRACKET  */
#line 207 "syntax_analyzer.y"
                                {(yyval.node) = node("ExpList", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1537 "syntax_analyzer.c"
    break;

  case 42: /* Block: LBRACE BlockList RBRACE  */
#line 211 "syntax_analyzer.y"
                          {(yyval.node) = node("Block", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1543 "syntax_analyzer.c"
    break;

  case 43: /* BlockList: %empty  */
#line 214 "syntax_analyzer.y"
  {(yyval.node) = node("BlockList", 0);}
#line 1549 "syntax_analyzer.c"
    break;

  case 44: /* BlockList: BlockList BlockItem  */
#line 215 "syntax_analyzer.y"
                      {(yyval.node) = node("BlockList", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1555 "syntax_analyzer.c"
    break;

  case 45: /* BlockItem: Decl  */
#line 219 "syntax_analyzer.y"
       {(yyval.node) = node("BlockItem", 1, (yyvsp[0].node));}
#line 1561 "syntax_analyzer.c"
    break;

  case 46: /* BlockItem: Stmt  */
#line 220 "syntax_analyzer.y"
       {(yyval.node) = node("BlockItem", 1, (yyvsp[0].node));}
#line 1567 "syntax_analyzer.c"
    break;

  case 47: /* Stmt: LVal ASSIGN Exp SEMICOLON  */
#line 224 "syntax_analyzer.y"
                            {(yyval.node) = node("Stmt", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1573 "syntax_analyzer.c"
    break;

  case 48: /* Stmt: Exp SEMICOLON  */
#line 225 "syntax_analyzer.y"
                {(yyval.node) = node("Stmt", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1579 "syntax_analyzer.c"
    break;

  case 49: /* Stmt: SEMICOLON  */
#line 226 "syntax_analyzer.y"
            {(yyval.node) = node("Stmt", 1, (yyvsp[0].node));}
#line 1585 "syntax_analyzer.c"
    break;

  case 50: /* Stmt: Block  */
#line 227 "syntax_analyzer.y"
        {(yyval.node) = node("Stmt", 1, (yyvsp[0].node));}
#line 1591 "syntax_analyzer.c"
    break;

  case 51: /* Stmt: IF LPARENTHESIS Cond RPARENTHESIS Stmt  */
#line 228 "syntax_analyzer.y"
                                         {(yyval.node) = node("Stmt", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1597 "syntax_analyzer.c"
    break;

  case 52: /* Stmt: IF LPARENTHESIS Cond RPARENTHESIS Stmt ELSE Stmt  */
#line 229 "syntax_analyzer.y"
                                                   {(yyval.node) = node("Stmt", 7, (yyvsp[-6].node), (yyvsp[-5].node), (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1603 "syntax_analyzer.c"
    break;

  case 53: /* Stmt: WHILE LPARENTHESIS Cond RPARENTHESIS Stmt  */
#line 230 "syntax_analyzer.y"
                                            {(yyval.node) = node("Stmt", 5, (yyvsp[-4].node), (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1609 "syntax_analyzer.c"
    break;

  case 54: /* Stmt: BREAK SEMICOLON  */
#line 231 "syntax_analyzer.y"
                  {(yyval.node) = node("Stmt", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1615 "syntax_analyzer.c"
    break;

  case 55: /* Stmt: CONTINUE SEMICOLON  */
#line 232 "syntax_analyzer.y"
                     {(yyval.node) = node("Stmt", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1621 "syntax_analyzer.c"
    break;

  case 56: /* Stmt: RETURN Exp SEMICOLON  */
#line 233 "syntax_analyzer.y"
                       {(yyval.node) = node("Stmt", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1627 "syntax_analyzer.c"
    break;

  case 57: /* Stmt: RETURN SEMICOLON  */
#line 234 "syntax_analyzer.y"
                   {(yyval.node) = node("Stmt", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1633 "syntax_analyzer.c"
    break;

  case 58: /* Exp: AddExp  */
#line 238 "syntax_analyzer.y"
         {(yyval.node) = node("Exp", 1, (yyvsp[0].node));}
#line 1639 "syntax_analyzer.c"
    break;

  case 59: /* Cond: LOrExp  */
#line 242 "syntax_analyzer.y"
         {(yyval.node) = node("Cond", 1, (yyvsp[0].node));}
#line 1645 "syntax_analyzer.c"
    break;

  case 60: /* LVal: IDENT ExpList  */
#line 246 "syntax_analyzer.y"
                {(yyval.node) = node("LVal", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1651 "syntax_analyzer.c"
    break;

  case 61: /* PrimaryExp: LPARENTHESIS Exp RPARENTHESIS  */
#line 250 "syntax_analyzer.y"
                                {(yyval.node) = node("PrimaryExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1657 "syntax_analyzer.c"
    break;

  case 62: /* PrimaryExp: LVal  */
#line 251 "syntax_analyzer.y"
       {(yyval.node) = node("PrimaryExp", 1, (yyvsp[0].node));}
#line 1663 "syntax_analyzer.c"
    break;

  case 63: /* PrimaryExp: Number  */
#line 252 "syntax_analyzer.y"
         {(yyval.node) = node("PrimaryExp", 1, (yyvsp[0].node));}
#line 1669 "syntax_analyzer.c"
    break;

  case 64: /* Number: Integer  */
#line 256 "syntax_analyzer.y"
          {(yyval.node) = node("Number", 1, (yyvsp[0].node));}
#line 1675 "syntax_analyzer.c"
    break;

  case 65: /* Number: Floatnum  */
#line 257 "syntax_analyzer.y"
           {(yyval.node) = node("Number", 1, (yyvsp[0].node));}
#line 1681 "syntax_analyzer.c"
    break;

  case 66: /* UnaryExp: PrimaryExp  */
#line 261 "syntax_analyzer.y"
             {(yyval.node) = node("UnaryExp", 1, (yyvsp[0].node));}
#line 1687 "syntax_analyzer.c"
    break;

  case 67: /* UnaryExp: IDENT LPARENTHESIS FuncRParams RPARENTHESIS  */
#line 262 "syntax_analyzer.y"
                                              {(yyval.node) = node("UnaryExp", 4, (yyvsp[-3].node), (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1693 "syntax_analyzer.c"
    break;

  case 68: /* UnaryExp: IDENT LPARENTHESIS RPARENTHESIS  */
#line 263 "syntax_analyzer.y"
                                  {(yyval.node) = node("UnaryExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1699 "syntax_analyzer.c"
    break;

  case 69: /* UnaryExp: UnaryOp UnaryExp  */
#line 264 "syntax_analyzer.y"
                   {(yyval.node) = node("UnaryExp", 2, (yyvsp[-1].node), (yyvsp[0].node));}
#line 1705 "syntax_analyzer.c"
    break;

  case 70: /* UnaryOp: ADD  */
#line 268 "syntax_analyzer.y"
      {(yyval.node) = node("UnaryOp", 1, (yyvsp[0].node));}
#line 1711 "syntax_analyzer.c"
    break;

  case 71: /* UnaryOp: SUB  */
#line 269 "syntax_analyzer.y"
      {(yyval.node) = node("UnaryOp", 1, (yyvsp[0].node));}
#line 1717 "syntax_analyzer.c"
    break;

  case 72: /* UnaryOp: NOT  */
#line 270 "syntax_analyzer.y"
      {(yyval.node) = node("UnaryOp", 1, (yyvsp[0].node));}
#line 1723 "syntax_analyzer.c"
    break;

  case 73: /* FuncRParams: Exp  */
#line 274 "syntax_analyzer.y"
      {(yyval.node) = node("FuncRParams", 1, (yyvsp[0].node));}
#line 1729 "syntax_analyzer.c"
    break;

  case 74: /* FuncRParams: FuncRParams COMMA Exp  */
#line 275 "syntax_analyzer.y"
                        {(yyval.node) = node("FuncRParams", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1735 "syntax_analyzer.c"
    break;

  case 75: /* MulExp: UnaryExp  */
#line 279 "syntax_analyzer.y"
           {(yyval.node) = node("MulExp", 1, (yyvsp[0].node));}
#line 1741 "syntax_analyzer.c"
    break;

  case 76: /* MulExp: MulExp MUL UnaryExp  */
#line 280 "syntax_analyzer.y"
                      {(yyval.node) = node("MulExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1747 "syntax_analyzer.c"
    break;

  case 77: /* MulExp: MulExp DIV UnaryExp  */
#line 281 "syntax_analyzer.y"
                      {(yyval.node) = node("MulExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1753 "syntax_analyzer.c"
    break;

  case 78: /* MulExp: MulExp MOD UnaryExp  */
#line 282 "syntax_analyzer.y"
                      {(yyval.node) = node("MulExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1759 "syntax_analyzer.c"
    break;

  case 79: /* AddExp: MulExp  */
#line 286 "syntax_analyzer.y"
         {(yyval.node) = node("AddExp", 1, (yyvsp[0].node));}
#line 1765 "syntax_analyzer.c"
    break;

  case 80: /* AddExp: AddExp ADD MulExp  */
#line 287 "syntax_analyzer.y"
                    {(yyval.node) = node("AddExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1771 "syntax_analyzer.c"
    break;

  case 81: /* AddExp: AddExp SUB MulExp  */
#line 288 "syntax_analyzer.y"
                    {(yyval.node) = node("AddExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1777 "syntax_analyzer.c"
    break;

  case 82: /* RelExp: AddExp  */
#line 292 "syntax_analyzer.y"
         {(yyval.node) = node("RelExp", 1, (yyvsp[0].node));}
#line 1783 "syntax_analyzer.c"
    break;

  case 83: /* RelExp: RelExp LT AddExp  */
#line 293 "syntax_analyzer.y"
                   {(yyval.node) = node("RelExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1789 "syntax_analyzer.c"
    break;

  case 84: /* RelExp: RelExp LET AddExp  */
#line 294 "syntax_analyzer.y"
                    {(yyval.node) = node("RelExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1795 "syntax_analyzer.c"
    break;

  case 85: /* RelExp: RelExp GT AddExp  */
#line 295 "syntax_analyzer.y"
                   {(yyval.node) = node("RelExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1801 "syntax_analyzer.c"
    break;

  case 86: /* RelExp: RelExp GET AddExp  */
#line 296 "syntax_analyzer.y"
                    {(yyval.node) = node("RelExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1807 "syntax_analyzer.c"
    break;

  case 87: /* EqExp: RelExp  */
#line 300 "syntax_analyzer.y"
         {(yyval.node) = node("EqExp", 1, (yyvsp[0].node));}
#line 1813 "syntax_analyzer.c"
    break;

  case 88: /* EqExp: EqExp EQ RelExp  */
#line 301 "syntax_analyzer.y"
                  {(yyval.node) = node("EqExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1819 "syntax_analyzer.c"
    break;

  case 89: /* EqExp: EqExp NEQ RelExp  */
#line 302 "syntax_analyzer.y"
                   {(yyval.node) = node("EqExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1825 "syntax_analyzer.c"
    break;

  case 90: /* LAndExp: EqExp  */
#line 306 "syntax_analyzer.y"
        {(yyval.node) = node("LAndExp", 1, (yyvsp[0].node));}
#line 1831 "syntax_analyzer.c"
    break;

  case 91: /* LAndExp: LAndExp AND EqExp  */
#line 307 "syntax_analyzer.y"
                    {(yyval.node) = node("LAndExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1837 "syntax_analyzer.c"
    break;

  case 92: /* LOrExp: LAndExp  */
#line 311 "syntax_analyzer.y"
          {(yyval.node) = node("LOrExp", 1, (yyvsp[0].node));}
#line 1843 "syntax_analyzer.c"
    break;

  case 93: /* LOrExp: LOrExp OR LAndExp  */
#line 312 "syntax_analyzer.y"
                    {(yyval.node) = node("LOrExp", 3, (yyvsp[-2].node), (yyvsp[-1].node), (yyvsp[0].node));}
#line 1849 "syntax_analyzer.c"
    break;

  case 94: /* ConstExp: AddExp  */
#line 316 "syntax_analyzer.y"
         {(yyval.node) = node("ConstExp", 1, (yyvsp[0].node));}
#line 1855 "syntax_analyzer.c"
    break;

  case 95: /* Integer: INTCONST  */
#line 319 "syntax_analyzer.y"
           {(yyval.node) = node("Integer", 1, (yyvsp[0].node));}
#line 1861 "syntax_analyzer.c"
    break;

  case 96: /* Floatnum: FLOATCONST  */
#line 322 "syntax_analyzer.y"
             {(yyval.node) = node("Floatnum", 1, (yyvsp[0].node));}
#line 1867 "syntax_analyzer.c"
    break;


#line 1871 "syntax_analyzer.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
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

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
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
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
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
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 328 "syntax_analyzer.y"


/// The error reporting function.
void yyerror(const char * s)
{
    // TO STUDENTS: This is just an example.
    // You can customize it as you like.
    fprintf(stderr, "error at line %d column %d: %s\n", lines, pos_start, s);
}

/// Parse input from file `input_path`, and prints the parsing results
/// to stdout.  If input_path is NULL, read from stdin.
///
/// This function initializes essential states before running yyparse().
syntax_tree *parse(const char *input_path)
{
    if (input_path != NULL) {
        if (!(yyin = fopen(input_path, "r"))) {
            fprintf(stderr, "[ERR] Open input file %s failed.\n", input_path);
            exit(1);
        }
    } else {
        yyin = stdin;
    }
    lines = pos_start = pos_end = 1;
    gt = new_syntax_tree();
    yyrestart(yyin);
    yyparse();
    return gt;
}

/// A helper function to quickly construct a tree node.
///
/// e.g. $$ = node("program", 1, $1);
syntax_tree_node *node(const char *name, int children_num, ...)
{
    syntax_tree_node *p = new_syntax_tree_node(name);
    syntax_tree_node *child;
    if (children_num == 0) {
        child = new_syntax_tree_node("epsilon");
        syntax_tree_add_child(p, child);
    } else {
        va_list ap;
        va_start(ap, children_num);
        for (int i = 0; i < children_num; ++i) {
            child = va_arg(ap, syntax_tree_node *);
            syntax_tree_add_child(p, child);
        }
        va_end(ap);
    }
    return p;
}
