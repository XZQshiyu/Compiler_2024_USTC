#pragma once

extern "C"
{
#include "syntax_tree.h"
    extern syntax_tree *parse(const char *input);
}
#include "User.hpp"
#include <memory>
#include <string>
#include <vector>

enum SysyType
{
    TYPE_INT,
    TYPE_FLOAT,
    TYPE_VOID
};

enum UnaryOp
{
    // +
    OP_PLUS,
    // -
    OP_MINUS,
    // !
    OP_NOT
};

enum MulOp
{
    // *
    OP_MUL,
    // /
    OP_DIV,
    // %
    OP_MOD
};

enum AddOp
{
    // +
    OP_ADD,
    // -
    OP_SUB
};

enum RelOp
{
    // <
    OP_LT,
    // >
    OP_GT,
    // <=
    OP_LE,
    // >=
    OP_GE
};

enum EqOp
{
    // ==
    OP_EQ,
    // !=
    OP_NEQ
};

enum LOGICOP
{
    // &&
    OP_AND,
    // ||
    OP_OR
};

class AST;

struct ASTNode;
struct ASTProgram;
struct ASTCompUnit;
struct ASTDecl;
struct ASTDef;
struct ASTInitVal;
// struct ASTExpression;
struct ASTExp;
struct ASTFuncDef;
struct ASTParam;
struct ASTBlock;
struct ASTStmt;
struct ASTAssignStmt;
struct ASTSelectionStmt;
struct ASTIterationStmt;
struct ASTReturnStmt;
struct ASTBreak;
struct ASTContinue;
struct ASTAddExp;
struct ASTMulExp;
struct ASTRelExp;
struct ASTEqExp;
struct ASTLAndExp;
struct ASTLOrExp;
struct ASTNum;
struct ASTUnaryExp;
struct ASTPrimaryExp;
struct ASTCall;
struct ASTVar;

class ASTVisitor;

class AST
{
public:
    AST() = delete;
    AST(syntax_tree *);
    AST(AST &tree)
    {
        root = tree.root;
        tree.root = nullptr;
    };
    ASTProgram *get_root() { return root.get(); }
    void run_visitor(ASTVisitor &visitor);

public:
    ASTNode *transform_node_iter(syntax_tree_node *);
    std::shared_ptr<ASTProgram> root = nullptr;
};
// AST结点基本类型
struct ASTNode
{
    virtual Value *accept(ASTVisitor &) = 0;
    virtual ~ASTNode() = default;
};
// 开始结点类型 对应产生式 program -> CompUnit
struct ASTProgram : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTProgram() = default;
    std::vector<std::shared_ptr<ASTCompUnit>> compunits;
};
// CompUnit 对应AST结点
struct ASTCompUnit : ASTNode
{
    virtual ~ASTCompUnit() = default;
    SysyType type;
};
// Decl 对应AST结点类型，由一个域is_const区分constDecl和VarDecl
struct ASTDecl : ASTCompUnit
{
    virtual Value *accept(ASTVisitor &) override final;
    bool is_const;
    std::vector<std::shared_ptr<ASTDef>> def_lists;
};
// FuncDef 对应的AST结点类型
// FuncDef -> (BType|void) { FuncFParams } Block
struct ASTFuncDef : ASTCompUnit
{
    virtual Value *accept(ASTVisitor &) override final;
    std::string id;
    std::vector<std::shared_ptr<ASTParam>> params;
    std::shared_ptr<ASTBlock> block;
};
// Def(包括constDef和VarDef)对应的结点类型
struct ASTDef : ASTCompUnit
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTDef() = default;
    std::string id;
    bool is_const;
    unsigned length;
    // 数组下标
    std::vector<std::shared_ptr<ASTExp>> exp_lists;
    // 初始化列表
    std::shared_ptr<ASTInitVal> initval_list;
};
struct ASTInitVal : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    virtual ~ASTInitVal() = default;
    bool is_const;
    std::vector<std::shared_ptr<ASTInitVal>> initval_list;
    std::shared_ptr<ASTExp> value;
};
// 函数形参对应AST
struct ASTParam : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    SysyType type;
    std::string id;
    // true if it is at least 1-dimension array
    bool isarray;
    // 超过1维的其他维度的大小
    std::vector<std::shared_ptr<ASTExp>> array_lists;
};
// Stmt 对应的ASTNode
struct ASTStmt : ASTNode
{
    virtual ~ASTStmt() = default;
};
// 以下是各种statement对应的类型
struct ASTBlock : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    std::vector<std::shared_ptr<ASTStmt>> stmt_lists;
    std::vector<std::shared_ptr<ASTDecl>> decl_lists;
    std::vector<int> list_type;
};

struct ASTAssignStmt : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTVar> var;
    std::shared_ptr<ASTExp> expression;
};
// Stmt -> if ( Cond ) stmt [else stmt]
struct ASTSelectionStmt : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTLOrExp> cond; // TODO:
    std::shared_ptr<ASTStmt> if_stmt;
    std::shared_ptr<ASTStmt> else_stmt;
};
// Stmt -> while ( Cond ) Stmt
struct ASTIterationStmt : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTLOrExp> cond; // TODO:
    std::shared_ptr<ASTStmt> stmt;
};

struct ASTBreak : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    bool is_break;
};
struct ASTContinue : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    bool is_continue;
};
// Stmt -> return [ Exp ]
struct ASTReturnStmt : ASTStmt
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTExp> expression;
};
// Exp
struct ASTPrimaryExp : ASTNode
{
    virtual ~ASTPrimaryExp() = default;
};
union const_val
{
    unsigned int i_val;
    float f_val;
};
struct ASTExp : ASTPrimaryExp
{
    virtual Value *accept(ASTVisitor &) override final;
    bool is_const;
    const_val val;

    std::shared_ptr<ASTAddExp> add_exp;
};
// LVal
struct ASTVar : ASTPrimaryExp
{
    virtual Value *accept(ASTVisitor &) override final;
    std::string id;
    unsigned length;
    std::vector<std::shared_ptr<ASTExp>> array_lists;
};
// Number
struct ASTNum : ASTPrimaryExp
{
    virtual Value *accept(ASTVisitor &) override final;
    SysyType type;
    union
    {
        int i_val;
        float f_val;
    };
};
// UnaryExp
struct ASTUnaryExp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    UnaryOp unary_op;
    std::shared_ptr<ASTUnaryExp> unary_exp;
    std::shared_ptr<ASTCall> call_exp;
    std::shared_ptr<ASTPrimaryExp> primary_exp;
};
// Call
struct ASTCall : ASTPrimaryExp
{
    virtual Value *accept(ASTVisitor &) override final;
    std::string id;
    std::vector<std::shared_ptr<ASTExp>> args;
};
// AddExp
struct ASTAddExp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTAddExp> add_exp;
    AddOp op;
    std::shared_ptr<ASTMulExp> mul_exp;
};
// MulExp
struct ASTMulExp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTMulExp> mul_exp;
    MulOp op;
    std::shared_ptr<ASTUnaryExp> unary_exp;
};
struct ASTRelExp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTRelExp> rel_exp;
    RelOp op;
    std::shared_ptr<ASTAddExp> add_exp;
};
struct ASTEqExp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTEqExp> eq_exp;
    EqOp op;
    std::shared_ptr<ASTRelExp> rel_exp;
};
struct ASTLAndExp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTLAndExp> land_exp;
    LOGICOP and_op;
    std::shared_ptr<ASTEqExp> eq_exp;
};
struct ASTLOrExp : ASTNode
{
    virtual Value *accept(ASTVisitor &) override final;
    std::shared_ptr<ASTLOrExp> lor_exp;
    LOGICOP or_op;
    std::shared_ptr<ASTLAndExp> land_exp;
};

class ASTVisitor
{
public:
    virtual Value *visit(ASTProgram &) = 0;
    virtual Value *visit(ASTFuncDef &) = 0;
    virtual Value *visit(ASTDecl &) = 0;
    virtual Value *visit(ASTDef &) = 0;
    virtual Value *visit(ASTParam &) = 0;
    virtual Value *visit(ASTBlock &) = 0;
    virtual Value *visit(ASTAssignStmt &) = 0;
    virtual Value *visit(ASTSelectionStmt &) = 0;
    virtual Value *visit(ASTIterationStmt &) = 0;
    virtual Value *visit(ASTBreak &) = 0;
    virtual Value *visit(ASTContinue &) = 0;
    virtual Value *visit(ASTReturnStmt &) = 0;
    virtual Value *visit(ASTExp &) = 0;
    virtual Value *visit(ASTVar &) = 0;
    virtual Value *visit(ASTNum &) = 0;
    virtual Value *visit(ASTUnaryExp &) = 0;
    virtual Value *visit(ASTCall &) = 0;
    virtual Value *visit(ASTAddExp &) = 0;
    virtual Value *visit(ASTMulExp &) = 0;
    virtual Value *visit(ASTRelExp &) = 0;
    virtual Value *visit(ASTEqExp &) = 0;
    virtual Value *visit(ASTLAndExp &) = 0;
    virtual Value *visit(ASTLOrExp &) = 0;
    virtual Value *visit(ASTInitVal &) = 0;
};

class ASTPrinter : public ASTVisitor
{
public:
    virtual Value *visit(ASTProgram &) override final;
    virtual Value *visit(ASTFuncDef &) override final;
    virtual Value *visit(ASTDecl &) override final;
    virtual Value *visit(ASTDef &) override final;
    virtual Value *visit(ASTParam &) override final;
    virtual Value *visit(ASTBlock &) override final;
    virtual Value *visit(ASTAssignStmt &) override final;
    virtual Value *visit(ASTSelectionStmt &) override final;
    virtual Value *visit(ASTIterationStmt &) override final;
    virtual Value *visit(ASTBreak &) override final;
    virtual Value *visit(ASTContinue &) override final;
    virtual Value *visit(ASTReturnStmt &) override final;
    virtual Value *visit(ASTExp &) override final;
    virtual Value *visit(ASTVar &) override final;
    virtual Value *visit(ASTNum &) override final;
    virtual Value *visit(ASTUnaryExp &) override final;
    virtual Value *visit(ASTCall &) override final;
    virtual Value *visit(ASTAddExp &) override final;
    virtual Value *visit(ASTMulExp &) override final;
    virtual Value *visit(ASTRelExp &) override final;
    virtual Value *visit(ASTEqExp &) override final;
    virtual Value *visit(ASTLAndExp &) override final;
    virtual Value *visit(ASTLOrExp &) override final;
    virtual Value *visit(ASTInitVal &) override final;
    void add_depth() { depth += 2; }
    void remove_depth() { depth -= 2; }

private:
    int depth = 0;
};