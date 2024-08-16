/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_HOME_LLH_BIANYI_COMPILER_2024_USTC_BUILD_SYNTAX_ANALYZER_H_INCLUDED
# define YY_YY_HOME_LLH_BIANYI_COMPILER_2024_USTC_BUILD_SYNTAX_ANALYZER_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    ERROR = 258,                   /* ERROR  */
    ADD = 259,                     /* ADD  */
    SUB = 260,                     /* SUB  */
    MUL = 261,                     /* MUL  */
    DIV = 262,                     /* DIV  */
    MOD = 263,                     /* MOD  */
    LT = 264,                      /* LT  */
    LET = 265,                     /* LET  */
    GT = 266,                      /* GT  */
    GET = 267,                     /* GET  */
    EQ = 268,                      /* EQ  */
    NEQ = 269,                     /* NEQ  */
    LPARENTHESIS = 270,            /* LPARENTHESIS  */
    RPARENTHESIS = 271,            /* RPARENTHESIS  */
    LBRACKET = 272,                /* LBRACKET  */
    RBRACKET = 273,                /* RBRACKET  */
    LBRACE = 274,                  /* LBRACE  */
    RBRACE = 275,                  /* RBRACE  */
    ASSIGN = 276,                  /* ASSIGN  */
    COMMA = 277,                   /* COMMA  */
    SEMICOLON = 278,               /* SEMICOLON  */
    NOT = 279,                     /* NOT  */
    AND = 280,                     /* AND  */
    OR = 281,                      /* OR  */
    INT = 282,                     /* INT  */
    FLOAT = 283,                   /* FLOAT  */
    VOID = 284,                    /* VOID  */
    CONST = 285,                   /* CONST  */
    IF = 286,                      /* IF  */
    ELSE = 287,                    /* ELSE  */
    WHILE = 288,                   /* WHILE  */
    BREAK = 289,                   /* BREAK  */
    CONTINUE = 290,                /* CONTINUE  */
    RETURN = 291,                  /* RETURN  */
    IDENT = 292,                   /* IDENT  */
    INTCONST = 293,                /* INTCONST  */
    FLOATCONST = 294               /* FLOATCONST  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 35 "syntax_analyzer.y"

    struct _syntax_tree_node* node;

#line 107 "/home/llh/bianyi/Compiler_2024_USTC/build/syntax_analyzer.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_HOME_LLH_BIANYI_COMPILER_2024_USTC_BUILD_SYNTAX_ANALYZER_H_INCLUDED  */
