//定义部分的文字块
%{
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
%}

/* TODO: Complete this definition.
   Hint: See pass_node(), node(), and syntax_tree.h.
         Use forward declaring. */
%union {
    struct _syntax_tree_node* node;
}

/* TODO: Your tokens here. */
//终结符
%token <node> ERROR
// 终结符 + - * / % (单目运算符 + - 包含在其中)
%token <node> ADD SUB MUL DIV MOD
// 终结符 逻辑运算符 < <= > >= == !=
%token <node> LT LET GT GET EQ NEQ
// 终结符 括号 ( ) [ ] { }
%token <node> LPARENTHESIS RPARENTHESIS LBRACKET RBRACKET LBRACE RBRACE
// 终结符 = , ; !  
%token <node> ASSIGN COMMA SEMICOLON NOT
// 终结符 && || 
%token <node> AND OR
// int float void const
%token <node> INT FLOAT VOID CONST
// if else while break continue return
%token <node> IF ELSE WHILE BREAK CONTINUE RETURN 
// 标识符 Ident
%token <node> IDENT
// 整数常量和浮点数常量
%token <node> INTCONST FLOATCONST

// 优先级
%left COMMA
%left ASSIGN
%left EQ NEQ LT LET GT GET
%left ADD SUB
%left MUL DIV MOD
%left NOT

// 非终结符
%type <node> Program
%type <node> CompUnit
// 声明 及 常量声明
%type <node> Decl ConstDecl
%type <node> ConstDefList
// 基本类型
%type <node> BType
// 常数定义 常量初值
%type <node> ConstDef
%type <node> ConstExpList 
%type <node> ConstInitVal
%type <node> ConstInitValList
// 变量声明，变量定义，变量初值
%type <node> VarDecl
%type <node> VarDeclList 
%type <node> VarDef InitVal
%type <node> InitValList
//函数定义，函数类型，函数形参表, 函数形参
// %type <node> FuncType
%type <node> FuncDef FuncFParams FuncFParam
%type <node> ExpList
// 语句块, 语句块项，语句
%type <node> Block BlockItem Stmt
%type <node> BlockList
//表达式 数值
%type <node> Exp Number
// 单目运算符 函数实参表
%type <node> UnaryOp FuncRParams
// 各种表达式
%type <node> Cond LVal PrimaryExp UnaryExp MulExp AddExp RelExp EqExp LAndExp LOrExp ConstExp
// empty
// %type <node> empty
%type <node> Integer Floatnum
// 开始符
%start Program

%%
/* TODO: Your rules here. */

/* Example:
program: declaration-list {$$ = node( "program", 1, $1); gt->root = $$;}
       ;
*/
// 定义开始
Program : CompUnit {$$ = node("program", 1, $1); gt->root = $$;}
;
// 编译单元
CompUnit 
: CompUnit Decl {$$ = node("CompUnit", 2, $1, $2);}
| CompUnit FuncDef  {$$ = node("CompUnit", 2, $1, $2);}
| Decl {$$ = node("CompUnit", 1, $1);}
| FuncDef {$$ = node("CompUnit", 1, $1);}
;
// 声明
Decl
: ConstDecl {$$ = node("Decl", 1, $1);}
| VarDecl   {$$ = node("Decl", 1, $1);}
;
// 常量声明
ConstDecl
: CONST BType ConstDefList SEMICOLON {$$ = node("ConstDecl", 4, $1, $2, $3, $4);}
;
ConstDefList 
: ConstDef {$$ = node("ConstDefList", 1, $1);}
| ConstDefList COMMA ConstDef {$$ = node("ConstDefList", 3, $1, $2, $3);}
;
//基本类型
BType
: INT {$$ = node("BType", 1, $1);}
| FLOAT {$$ = node("BType", 1, $1);}
;
// 常数定义
ConstDef
: IDENT ConstExpList ASSIGN ConstInitVal {$$ = node("ConstDef", 4, $1, $2, $3, $4);}
;
ConstExpList
:  {$$ = node("ConstExpList", 0);}
| ConstExpList LBRACKET ConstExp RBRACKET {$$ = node("ConstExpList", 4, $1, $2, $3, $4);}
;
// 常量初值
ConstInitVal
: ConstExp  {$$ = node("ConstInitVal", 1, $1);}
| LBRACE ConstInitValList RBRACE {$$ = node("ConstInitVal", 3, $1, $2, $3);}
| LBRACE RBRACE {$$ = node("ConstInitVal", 2, $1, $2);}
;
ConstInitValList
: ConstInitVal {$$ = node("ConstInitValList", 1, $1);}
| ConstInitValList COMMA ConstInitVal {$$ = node("ConstInitValList", 3, $1, $2, $3);}
;
// 变量声明
VarDecl 
: BType VarDef VarDeclList SEMICOLON {$$ = node("VarDecl", 4, $1, $2, $3, $4);}
;
VarDeclList
: {$$ = node("VarDeclList", 0);}
| VarDeclList COMMA VarDef {$$ = node("VarDeclList", 3, $1, $2, $3);}
;
// 变量定义
VarDef
: IDENT ConstExpList {$$ = node("VarDef", 2, $1, $2);}
| IDENT ConstExpList ASSIGN InitVal {$$ = node("VarDef", 4, $1, $2, $3, $4);}
;
// 变量初值
InitVal
: Exp {$$ = node("InitVal", 1, $1);}
| LBRACE InitValList RBRACE {$$ = node("InitVal", 3, $1, $2, $3);}
| LBRACE RBRACE {$$ = node("InitVal", 2, $1, $2);}
;
InitValList
: InitVal {$$ = node("InitValList", 1, $1);}
| InitValList COMMA InitVal {$$ = node("InitValList", 3, $1, $2, $3);}
;
// 函数定义
FuncDef
: BType IDENT LPARENTHESIS RPARENTHESIS Block {$$ = node("FuncDef", 5, $1, $2, $3, $4, $5);}
| VOID IDENT LPARENTHESIS RPARENTHESIS Block {$$ = node("FuncDef", 5, $1, $2, $3, $4, $5);}
| VOID IDENT LPARENTHESIS FuncFParams RPARENTHESIS Block {$$ = node("FuncDef", 6, $1, $2, $3, $4, $5, $6);}
| BType IDENT LPARENTHESIS FuncFParams RPARENTHESIS Block {$$ = node("FuncDef", 6, $1, $2, $3, $4, $5, $6);}
;
// 函数类型
// FuncType
// : VOID {$$ = node("FuncType", 1, $1);}
// | INT  {$$ = node("FuncType", 1, $1);}
// | FLOAT {$$ = node("FuncType", 1, $1);}
// ;
// 函数形参表
FuncFParams 
: FuncFParam {$$ = node("FuncFParams", 1, $1);}
| FuncFParams COMMA FuncFParam {$$ = node("FuncFParams", 3, $1, $2, $3);}
;
// 函数形参
FuncFParam 
: BType IDENT {$$ = node("FuncFParam", 2, $1, $2);}
| BType IDENT LBRACKET RBRACKET ExpList {$$ = node("FuncFParam", 5, $1, $2, $3, $4, $5);}
;
ExpList 
: {$$ = node("ExpList", 0);}
| ExpList LBRACKET Exp RBRACKET {$$ = node("ExpList", 4, $1, $2, $3, $4);}
;
// 语句块
Block
: LBRACE BlockList RBRACE {$$ = node("Block", 3, $1, $2, $3);}
;
BlockList
: {$$ = node("BlockList", 0);}
| BlockList BlockItem {$$ = node("BlockList", 2, $1, $2);}
;
// 语句块项
BlockItem
: Decl {$$ = node("BlockItem", 1, $1);}
| Stmt {$$ = node("BlockItem", 1, $1);}
;
// 语句
Stmt
: LVal ASSIGN Exp SEMICOLON {$$ = node("Stmt", 4, $1, $2, $3, $4);}
| Exp SEMICOLON {$$ = node("Stmt", 2, $1, $2);}
| SEMICOLON {$$ = node("Stmt", 1, $1);}
| Block {$$ = node("Stmt", 1, $1);}
| IF LPARENTHESIS Cond RPARENTHESIS Stmt {$$ = node("Stmt", 5, $1, $2, $3, $4, $5);}
| IF LPARENTHESIS Cond RPARENTHESIS Stmt ELSE Stmt {$$ = node("Stmt", 7, $1, $2, $3, $4, $5, $6, $7);}
| WHILE LPARENTHESIS Cond RPARENTHESIS Stmt {$$ = node("Stmt", 5, $1, $2, $3, $4, $5);}
| BREAK SEMICOLON {$$ = node("Stmt", 2, $1, $2);}
| CONTINUE SEMICOLON {$$ = node("Stmt", 2, $1, $2);}
| RETURN Exp SEMICOLON {$$ = node("Stmt", 3, $1, $2, $3);}
| RETURN SEMICOLON {$$ = node("Stmt", 2, $1, $2);}
;
// 表达式
Exp 
: AddExp {$$ = node("Exp", 1, $1);}
;
// 条件表达式
Cond
: LOrExp {$$ = node("Cond", 1, $1);}
;
// 左值表达式
LVal 
: IDENT ExpList {$$ = node("LVal", 2, $1, $2);}
;
// 基本表达式
PrimaryExp
: LPARENTHESIS Exp RPARENTHESIS {$$ = node("PrimaryExp", 3, $1, $2, $3);}
| LVal {$$ = node("PrimaryExp", 1, $1);}
| Number {$$ = node("PrimaryExp", 1, $1);}
;
// 数值
Number 
: Integer {$$ = node("Number", 1, $1);}
| Floatnum {$$ = node("Number", 1, $1);}
;
//一元表达式
UnaryExp
: PrimaryExp {$$ = node("UnaryExp", 1, $1);}
| IDENT LPARENTHESIS FuncRParams RPARENTHESIS {$$ = node("UnaryExp", 4, $1, $2, $3, $4);}
| IDENT LPARENTHESIS RPARENTHESIS {$$ = node("UnaryExp", 3, $1, $2, $3);}
| UnaryOp UnaryExp {$$ = node("UnaryExp", 2, $1, $2);}
;
// 单目运算符
UnaryOp
: ADD {$$ = node("UnaryOp", 1, $1);}
| SUB {$$ = node("UnaryOp", 1, $1);}
| NOT {$$ = node("UnaryOp", 1, $1);}
;
// 函数实参表
FuncRParams 
: Exp {$$ = node("FuncRParams", 1, $1);}
| FuncRParams COMMA Exp {$$ = node("FuncRParams", 3, $1, $2, $3);}
;
// 乘除模表达式
MulExp 
: UnaryExp {$$ = node("MulExp", 1, $1);}
| MulExp MUL UnaryExp {$$ = node("MulExp", 3, $1, $2, $3);}
| MulExp DIV UnaryExp {$$ = node("MulExp", 3, $1, $2, $3);}
| MulExp MOD UnaryExp {$$ = node("MulExp", 3, $1, $2, $3);}
;
// 加减表达式
AddExp
: MulExp {$$ = node("AddExp", 1, $1);}
| AddExp ADD MulExp {$$ = node("AddExp", 3, $1, $2, $3);}
| AddExp SUB MulExp {$$ = node("AddExp", 3, $1, $2, $3);}
;
// 关系表达式
RelExp 
: AddExp {$$ = node("RelExp", 1, $1);}
| RelExp LT AddExp {$$ = node("RelExp", 3, $1, $2, $3);}
| RelExp LET AddExp {$$ = node("RelExp", 3, $1, $2, $3);}
| RelExp GT AddExp {$$ = node("RelExp", 3, $1, $2, $3);}
| RelExp GET AddExp {$$ = node("RelExp", 3, $1, $2, $3);}
;
// 相等性表达式
EqExp 
: RelExp {$$ = node("EqExp", 1, $1);}
| EqExp EQ RelExp {$$ = node("EqExp", 3, $1, $2, $3);}
| EqExp NEQ RelExp {$$ = node("EqExp", 3, $1, $2, $3);}
;
// 逻辑与表达式
LAndExp 
: EqExp {$$ = node("LAndExp", 1, $1);}
| LAndExp AND EqExp {$$ = node("LAndExp", 3, $1, $2, $3);}
;
// 逻辑或表达式
LOrExp 
: LAndExp {$$ = node("LOrExp", 1, $1);}
| LOrExp OR LAndExp {$$ = node("LOrExp", 3, $1, $2, $3);}
;
// 常量表达式
ConstExp 
: AddExp {$$ = node("ConstExp", 1, $1);}
;
Integer
: INTCONST {$$ = node("Integer", 1, $1);}
;
Floatnum
: FLOATCONST {$$ = node("Floatnum", 1, $1);}
;
// empty
// empty
// : {}
// ;
%%

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