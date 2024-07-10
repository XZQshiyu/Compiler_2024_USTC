#include "ast.hpp"
#include "logging.hpp"
#include <cstring>
#include <iostream>
#include <stack>

#define _AST_NODE_ERROR_                                   \
    std::cerr << "Abort due to node cast error."           \
                 "Contact with TAs to solve your problem." \
              << std::endl;                                \
    std::abort();
// 字符串比较宏
#define _STR_EQ(a, b) (strcmp((a), (b)) == 0)

void AST::run_visitor(ASTVisitor &visitor) { root->accept(visitor); }

AST::AST(syntax_tree *s)
{
    if (s == nullptr)
    {
        std::cerr << "empty input tree!" << std::endl;
        std::abort();
    }
    auto node = transform_node_iter(s->root);
    del_syntax_tree(s);
    root = std::shared_ptr<ASTProgram>(static_cast<ASTProgram *>(node));
}

ASTNode *AST::transform_node_iter(syntax_tree_node *n)
{
    // 分析树结点类型为 program
    if (_STR_EQ(n->name, "program"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTProgram(); // 进入这一层就会创建一个新节点，执行这个节点
        // program -> CompUnit
        std::stack<syntax_tree_node *> s;
        auto list_ptr = n->children[0];
        while (list_ptr->children_num == 2)
        {
            s.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[0];
        }
        // 所有Decl或FuncDef全部入栈
        s.push(list_ptr->children[0]);
        while (!s.empty())
        {
            auto child_node = static_cast<ASTCompUnit *>(transform_node_iter(s.top()));
            // 接受到上传回来的整体，

            auto child_node_shared = std::shared_ptr<ASTCompUnit>(child_node);
            // 这两个指向的是同一个东西，就是把类型调整了一下。
            node->compunits.push_back(child_node_shared);
            s.pop();
        }
        return node; // 把这个节点拆完之后，会把这个节点整体上传回去
    }
    else if (_STR_EQ(n->name, "Decl"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTDecl();
        // Decl 对应AST结点类型，由一个域is_const区分constDecl和VarDecl
        auto child = n->children[0]; // child is constDecl 或者 varDecl
        // Decl可以分成const 和 var
        // Decl -> ConstDecl
        // ConstDefList -> ConstDef | ConstDefList ; ConstDef
        if (_STR_EQ(child->name, "ConstDecl"))
        {
            // LOG(INFO) << n->name;
            // type
            // ConstDecl -> const BType ConstDefList ;
            if (_STR_EQ(child->children[1]->children[0]->name, "int")) // 判断b-type
                node->type = TYPE_INT;
            else
                node->type = TYPE_FLOAT;
            node->is_const = true; // 区分成员变量
            std::stack<syntax_tree_node *> s;
            auto list_ptr = child->children[2]; // listptr 指向的最外层的 ConstDefList
            while (list_ptr->children_num == 3) // 还能拆
            {
                // ConstDefList -> ConstDef | ConstDefList ; ConstDef
                s.push(list_ptr->children[2]);    // 把后一个拿出来，
                list_ptr = list_ptr->children[0]; // 继续拆
            }
            s.push(list_ptr->children[0]); // 最后留一个
            while (!s.empty())
            {
                auto child_node = static_cast<ASTDef *>(transform_node_iter(s.top())); // dfs的过程
                auto child_node_shared = std::shared_ptr<ASTDef>(child_node);
                node->def_lists.push_back(child_node_shared);
                s.pop();
            }
        }
        // Decl -> VarDecl
        // VarDecl -> BType VarDef VarDeclList ;
        // VarDeclList -> VarDeclList ; VarDef |
        else
        {
            // LOG(INFO) << n->name;
            // type
            // // LOG(WARNING) << child->children[0]->children[0]->name << " VarDecl";
            if (_STR_EQ(child->children[0]->children[0]->name, "int"))
                node->type = TYPE_INT;
            else
                node->type = TYPE_FLOAT;
            node->is_const = false;
            std::stack<syntax_tree_node *> s;
            auto list_ptr = child->children[2];
            auto first = child->children[1];
            while (list_ptr->children_num == 3)
            {
                s.push(list_ptr->children[2]);
                list_ptr = list_ptr->children[0]; // 展开
            }
            s.push(first);
            while (!s.empty())
            { // dfs
                auto child_node = static_cast<ASTDef *>(transform_node_iter(s.top()));
                auto child_node_shared = std::shared_ptr<ASTDef>(child_node);
                node->def_lists.push_back(child_node_shared);
                s.pop();
            }
        }
        return node;
    }
    // ConstDef -> IDENT ConstExpList = ConstInitVal
    // ConstExpList -> ConstExpList [ ConstExp ]|epsilon
    else if (_STR_EQ(n->name, "ConstDef"))
    {
        // LOG(INFO) << n->name;
        // 这个地方还不涉及处理值的问题，这一层的任务主要是把list拉平
        //
        auto node = new ASTDef();
        // 标识符
        node->id = n->children[0]->name;
        // const
        node->is_const = true;
        // exp列表
        std::stack<syntax_tree_node *> s_exp; // 先出来的是最后一个维度的数组
        auto list_ptr = n->children[1];       // 这是list
        while (list_ptr->children_num == 4)   // 这一步会拆到孩子
        {
            s_exp.push(list_ptr->children[2]); // 把const exp拆出来
            list_ptr = list_ptr->children[0];  // 继续向下
        }
        while (!s_exp.empty())
        {
            auto exp_node = static_cast<ASTExp *>(transform_node_iter(s_exp.top()));
            auto exp_node_ptr = std::shared_ptr<ASTExp>(exp_node);
            node->exp_lists.push_back(exp_node_ptr);
            node->length++;
            s_exp.pop();
        }
        // initval 列表
        // ConstInitVal -> ConstExp | {ConstInitValList} | {}
        // ConstInitValList -> ConstInitVal | ConstInitValList , ConstInitVal
        //
        // 这里先不拆，先不拆的原因是不仅仅一层
        auto initval_node = static_cast<ASTInitVal *>(transform_node_iter(n->children[3]));
        auto initval_node_ptr = std::shared_ptr<ASTInitVal>(initval_node);
        node->initval_list = initval_node_ptr;
        return node;
    }
    // VarDef -> IDENT ConstExpList | IDENT ConstExpList = InitVal
    // ConstExpList -> ConstExpList [ ConstExp ] |
    else if (_STR_EQ(n->name, "VarDef"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTDef();
        // 标识符
        node->id = n->children[0]->name;
        // 非const
        node->is_const = false;
        // exp列表
        std::stack<syntax_tree_node *> s;
        auto list_ptr = n->children[1];
        while (list_ptr->children_num == 4)
        {
            s.push(list_ptr->children[2]);
            list_ptr = list_ptr->children[0];
        }
        while (!s.empty())
        {
            auto exp_node = static_cast<ASTExp *>(transform_node_iter(s.top()));
            auto exp_node_ptr = std::shared_ptr<ASTExp>(exp_node);
            node->exp_lists.push_back(exp_node_ptr);
            node->length++;
            s.pop();
        }
        if (n->children_num == 4) // 判断一下有没有初值部分
        {
            auto initval_node = static_cast<ASTInitVal *>(transform_node_iter(n->children[3]));
            auto initval_node_ptr = std::shared_ptr<ASTInitVal>(initval_node);
            node->initval_list = initval_node_ptr;
        }
        return node;
    }
    // ConstInitVal -> ConstExp | {ConstInitValList} | {}
    // ConstInitValList -> ConstInitVal | ConstInitValList , ConstInitVal
    else if (_STR_EQ(n->name, "ConstInitVal"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTInitVal();
        node->is_const = true;
        if (n->children_num == 1) // 只有一个节点，记录value，此时子孩子为空
        {
            auto exp_node = static_cast<ASTExp *>(transform_node_iter(n->children[0]));
            auto exp_node_ptr = std::shared_ptr<ASTExp>(exp_node);
            node->value = exp_node_ptr;
        }
        // ConstInitVal -> { ConstInitValList }
        else if (n->children_num == 3) // 还是需要进行扁平化的操作，把大括号这一层扒开，铺平挂在后一层的东西
        {
            std::stack<syntax_tree_node *> s;
            auto list_ptr = n->children[1];
            while (list_ptr->children_num == 3)
            // ConstInitValList -> ConstInitValList , ConstInitVal 的情况，可以拆下去
            {
                s.push(list_ptr->children[2]);
                list_ptr = list_ptr->children[0];
            }
            s.push(list_ptr->children[0]);
            while (!s.empty())
            {
                auto initval_node = static_cast<ASTInitVal *>(transform_node_iter(s.top()));
                auto initval_node_ptr = std::shared_ptr<ASTInitVal>(initval_node);
                node->initval_list.push_back(initval_node_ptr);
                s.pop();
            }
        }
        // ConstInitVal -> {}
        else
        {
            node->value = nullptr; // 值为空，孩子也是空，相当于上一层没有这个孩子
        }
        return node;
    }
    // InitVal -> Exp | { InitValList } | {}
    // InitValList -> InitVal | InitValList , InitVal
    else if (_STR_EQ(n->name, "InitVal"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTInitVal();
        node->is_const = false; // 主要是这里不一样
        if (n->children_num == 1)
        {
            auto exp_node = static_cast<ASTExp *>(transform_node_iter(n->children[0]));
            auto exp_node_ptr = std::shared_ptr<ASTExp>(exp_node);
            node->value = exp_node_ptr;
        }
        // InitVal -> { InitValList }
        else if (n->children_num == 3)
        {
            std::stack<syntax_tree_node *> s;
            auto list_ptr = n->children[1];
            while (list_ptr->children_num == 3)
            {
                s.push(list_ptr->children[2]);
                list_ptr = list_ptr->children[0];
            }
            s.push(list_ptr->children[0]);
            while (!s.empty())
            {
                auto initval_node = static_cast<ASTInitVal *>(transform_node_iter(s.top()));
                auto initval_node_ptr = std::shared_ptr<ASTInitVal>(initval_node);
                node->initval_list.push_back(initval_node_ptr);
                s.pop();
            }
        }
        // InitVal -> {}
        else
        {
            node->value = nullptr;
        }
        return node;
    }
    // Exp -> AddExp
    else if (_STR_EQ(n->name, "Exp"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTExp();
        node->is_const = false;
        auto addexp_node = static_cast<ASTAddExp *>(transform_node_iter(n->children[0]));
        auto addexp_node_ptr = std::shared_ptr<ASTAddExp>(addexp_node);
        node->add_exp = addexp_node_ptr;
        return node;
    }
    // ConstExp -> AddExp
    else if (_STR_EQ(n->name, "ConstExp"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTExp();
        node->is_const = true;
        auto addexp_node = static_cast<ASTAddExp *>(transform_node_iter(n->children[0]));
        auto addexp_node_ptr = std::shared_ptr<ASTAddExp>(addexp_node);
        node->add_exp = addexp_node_ptr;
        return node;
    }
    // 函数定义
    // FuncDef -> BType|void IDENT ( FuncFParams ) Block
    // FuncDef -> BType|void IDENT () Block
    // FuncFParams -> FuncFParam | FuncFParams COMMA FuncFParam
    // 这一层也把params直接拆开了，但是block不拆
    else if (_STR_EQ(n->name, "FuncDef"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTFuncDef();
        // 标识符
        node->id = n->children[1]->name;
        // type
        if (_STR_EQ(n->children[0]->name, "void"))
        {
            node->type = TYPE_VOID;
        }
        else
        {
            if (_STR_EQ(n->children[0]->children[0]->name, "int"))
                node->type = TYPE_INT;
            else
                node->type = TYPE_FLOAT;
        }
        // params
        // FuncDef -> BType|void IDENT ( FuncFParams ) Block
        // FuncFParams -> FuncFParams , FuncFParam | FuncParam
        // FuncFParam -> BType IDENT [] ExpList
        // ExpList -> ExpList [ Exp ] |
        if (n->children_num == 6) // 参数不空的情况
        {
            std::stack<syntax_tree_node *> s;
            auto list_ptr = n->children[3];
            while (list_ptr->children_num == 3) // 一个一个拿出来
            {
                s.push(list_ptr->children[2]);
                list_ptr = list_ptr->children[0];
            }
            s.push(list_ptr->children[0]);
            while (!s.empty())
            {
                auto child_node = static_cast<ASTParam *>(transform_node_iter(s.top()));
                auto child_node_shared = std::shared_ptr<ASTParam>(child_node);
                node->params.push_back(child_node_shared);
                s.pop();
            }
            auto block_node = static_cast<ASTBlock *>(transform_node_iter(n->children[5]));
            node->block = std::shared_ptr<ASTBlock>(block_node);
        }
        // FuncDef -> BType|void IDENT () Block
        else
        {
            auto block_node = static_cast<ASTBlock *>(transform_node_iter(n->children[4]));
            node->block = std::shared_ptr<ASTBlock>(block_node);
        }
        return node;
    }
    // FuncFParam -> BType IDENT [] ExpList
    // is here note !
    // FuncFParam -> BType IDENT
    // ExpList -> ExpList [ Exp ] |
    else if (_STR_EQ(n->name, "FuncFParam"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTParam();
        // type
        if (_STR_EQ(n->children[0]->children[0]->name, "int"))
            node->type = TYPE_INT;
        else
            node->type = TYPE_FLOAT;
        // ID
        node->id = n->children[1]->name;
        // 是否是一个数组类型的参数
        // FuncFParam -> BType IDENT
        if (n->children_num == 2)
            node->isarray = false;
        else
        {
            node->isarray = true;
            std::stack<syntax_tree_node *> s;
            auto list_ptr = n->children[4];
            while (list_ptr->children_num == 4)
            {
                s.push(list_ptr->children[2]);
                list_ptr = list_ptr->children[0];
            }
            while (!s.empty())
            {
                auto child_node = static_cast<ASTExp *>(transform_node_iter(s.top()));
                auto child_node_ptr = std::shared_ptr<ASTExp>(child_node);
                node->array_lists.push_back(child_node_ptr);
                s.pop();
            }
        }
        return node;
    }
    // Block -> { BlcokList }
    // Block -> | BlockList BlockItem
    // BlockItem -> Decl | Stmt
    else if (_STR_EQ(n->name, "Block"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTBlock();
        std::stack<syntax_tree_node *> s;
        auto list_ptr = n->children[1];
        while (list_ptr->children_num == 2)
        {
            s.push(list_ptr->children[1]);
            list_ptr = list_ptr->children[0];
        }
        while (!s.empty())
        {
            if (_STR_EQ(s.top()->children[0]->name, "Decl"))
            {
                auto child_node = static_cast<ASTDecl *>(transform_node_iter(s.top()->children[0]));
                auto child_node_ptr = std::shared_ptr<ASTDecl>(child_node);
                node->decl_lists.push_back(child_node_ptr);
                node->list_type.push_back(0);
                s.pop();
            }
            else
            {
                // auto child_node = static_cast<ASTStmt *>(transform_node_iter(s.top()->children[0]));
                ASTStmt *child_node;
                // Stmt -> LVal = Exp ;
                if (_STR_EQ(s.top()->children[0]->children[0]->name, ";"))
                    // return nullptr;
                    child_node = nullptr;
                else if (_STR_EQ(s.top()->children[0]->children[0]->name, "LVal"))
                {
                    // // LOG(INFO) << n->children[0]->children[0]->name;
                    auto node = new ASTAssignStmt();
                    auto var_node = static_cast<ASTVar *>(transform_node_iter(s.top()->children[0]->children[0]));
                    node->var = std::shared_ptr<ASTVar>(var_node);
                    auto exp_node = static_cast<ASTExp *>(transform_node_iter(s.top()->children[0]->children[2]));
                    node->expression = std::shared_ptr<ASTExp>(exp_node);
                    // return node;
                    child_node = static_cast<ASTStmt *>(node);
                }
                else if (_STR_EQ(s.top()->children[0]->children[0]->name, "Exp"))
                {
                    // // LOG(INFO) << n->children[0]->name;
                    child_node = static_cast<ASTStmt *>(transform_node_iter(s.top()->children[0]->children[0]));
                    // return transform_node_iter(n->children[0]);
                }
                else if (_STR_EQ(s.top()->children[0]->children[0]->name, "Block"))
                {
                    // // LOG(INFO) << n->children[0]->name;
                    child_node = static_cast<ASTStmt *>(transform_node_iter(s.top()->children[0]->children[0]));
                    // return transform_node_iter(n->children[0]);
                }
                else if (_STR_EQ(s.top()->children[0]->children[0]->name, "if"))
                {
                    // // LOG(INFO) << n->children[0]->name;
                    auto node = new ASTSelectionStmt();
                    auto cond_node = static_cast<ASTLOrExp *>(transform_node_iter(s.top()->children[0]->children[2]->children[0]));
                    node->cond = std::shared_ptr<ASTLOrExp>(cond_node);
                    auto if_stmt_node = static_cast<ASTStmt *>(transform_node_iter(s.top()->children[0]->children[4]));
                    node->if_stmt = std::shared_ptr<ASTStmt>(if_stmt_node);
                    if (s.top()->children[0]->children_num == 7)
                    {
                        auto else_stmt_node = static_cast<ASTStmt *>(transform_node_iter(s.top()->children[0]->children[6]));
                        node->else_stmt = std::shared_ptr<ASTStmt>(else_stmt_node);
                    }
                    child_node = static_cast<ASTStmt *>(node);
                    // return node;
                }
                else if (_STR_EQ(s.top()->children[0]->children[0]->name, "while"))
                {
                    // // LOG(INFO) << n->children[0]->name;
                    auto node = new ASTIterationStmt();
                    auto cond_node = static_cast<ASTLOrExp *>(transform_node_iter(s.top()->children[0]->children[2]->children[0]));
                    node->cond = std::shared_ptr<ASTLOrExp>(cond_node);
                    auto stmt_node = static_cast<ASTStmt *>(transform_node_iter(s.top()->children[0]->children[4]));
                    node->stmt = std::shared_ptr<ASTStmt>(stmt_node);
                    child_node = static_cast<ASTStmt *>(node);
                    // return node;
                }
                else if (_STR_EQ(s.top()->children[0]->children[0]->name, "break"))
                {
                    // // LOG(INFO) << n->children[0]->name;
                    auto node = new ASTBreak();
                    node->is_break = true;
                    // return node;
                    child_node = static_cast<ASTStmt *>(node);
                }
                else if (_STR_EQ(s.top()->children[0]->children[0]->name, "continue"))
                {
                    // // LOG(INFO) << n->children[0]->name;
                    auto node = new ASTContinue();
                    node->is_continue = true;
                    // return node;
                    child_node = static_cast<ASTStmt *>(node);
                }
                else if (_STR_EQ(s.top()->children[0]->children[0]->name, "return"))
                {
                    // // LOG(INFO) << n->children[0]->name;
                    auto node = new ASTReturnStmt();
                    if (s.top()->children[0]->children_num == 3)
                    {
                        auto exp_node = static_cast<ASTExp *>(transform_node_iter(s.top()->children[0]->children[1]));
                        node->expression = std::shared_ptr<ASTExp>(exp_node);
                    }
                    // return node;
                    child_node = static_cast<ASTStmt *>(node);
                }
                // error
                else
                {
                    std::cerr << "[ast]: transform failure!" << std::endl;
                    std::cerr << "when transform stmt, encoutner unknown expression" << std::endl;
                    std::abort();
                }
                if (child_node != nullptr)
                {
                    auto child_node_ptr = std::shared_ptr<ASTStmt>(child_node);
                    node->stmt_lists.push_back(child_node_ptr);
                    node->list_type.push_back(1);
                }
                s.pop();
            }
        }
        return node;
    }
    // Stmt 的产生式合集
    // AssignStmt
    // Exp
    // Block
    // selectionStmt
    // iterationStmt
    // breka
    // continue
    // returnStmt
    else if (_STR_EQ(n->name, "Stmt"))
    {
        // LOG(INFO) << n->name;
        // Stmt -> LVal = Exp ;
        if (_STR_EQ(n->children[0]->name, ";"))
            return nullptr;
        if (_STR_EQ(n->children[0]->name, "LVal"))
        {
            // LOG(INFO) << n->children[0]->name;
            auto node = new ASTAssignStmt();
            auto var_node = static_cast<ASTVar *>(transform_node_iter(n->children[0]));
            node->var = std::shared_ptr<ASTVar>(var_node);
            auto exp_node = static_cast<ASTExp *>(transform_node_iter(n->children[2]));
            node->expression = std::shared_ptr<ASTExp>(exp_node);
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "Exp"))
        {
            // LOG(INFO) << n->children[0]->name;
            return transform_node_iter(n->children[0]);
        }
        else if (_STR_EQ(n->children[0]->name, "Block"))
        {
            // LOG(INFO) << n->children[0]->name;
            return transform_node_iter(n->children[0]);
        }
        else if (_STR_EQ(n->children[0]->name, "if"))
        {
            // LOG(INFO) << n->children[0]->name;
            auto node = new ASTSelectionStmt();
            auto cond_node = static_cast<ASTLOrExp *>(transform_node_iter(n->children[2]->children[0]));
            node->cond = std::shared_ptr<ASTLOrExp>(cond_node);
            auto if_stmt_node = static_cast<ASTStmt *>(transform_node_iter(n->children[4]));
            node->if_stmt = std::shared_ptr<ASTStmt>(if_stmt_node);
            if (n->children_num == 7)
            {
                auto else_stmt_node = static_cast<ASTStmt *>(transform_node_iter(n->children[6]));
                node->else_stmt = std::shared_ptr<ASTStmt>(else_stmt_node);
            }
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "while"))
        {
            // LOG(INFO) << n->children[0]->name;
            auto node = new ASTIterationStmt();
            auto cond_node = static_cast<ASTLOrExp *>(transform_node_iter(n->children[2]->children[0]));
            node->cond = std::shared_ptr<ASTLOrExp>(cond_node);
            auto stmt_node = static_cast<ASTStmt *>(transform_node_iter(n->children[4]));
            node->stmt = std::shared_ptr<ASTStmt>(stmt_node);
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "break"))
        {
            // LOG(INFO) << n->children[0]->name;
            auto node = new ASTBreak();
            node->is_break = true;
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "continue"))
        {
            // LOG(INFO) << n->children[0]->name;
            auto node = new ASTContinue();
            node->is_continue = true;
            return node;
        }
        else if (_STR_EQ(n->children[0]->name, "return"))
        {
            // LOG(INFO) << n->children[0]->name;
            auto node = new ASTReturnStmt();
            if (n->children_num == 3)
            {
                auto exp_node = static_cast<ASTExp *>(transform_node_iter(n->children[1]));
                node->expression = std::shared_ptr<ASTExp>(exp_node);
            }
            return node;
        }
        // error
        else
        {
            std::cerr << "[ast]: transform failure!" << std::endl;
            std::cerr << "when transform stmt, encoutner unknown expression" << std::endl;
            std::abort();
        }
    }
    // LVal -> IDENT ExpList
    // ExpList -> ExpList [Exp] |
    else if (_STR_EQ(n->name, "LVal"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTVar();
        node->id = n->children[0]->name;
        std::stack<syntax_tree_node *> s;
        auto list_ptr = n->children[1];
        while (list_ptr->children_num == 4)
        {
            s.push(list_ptr->children[2]);
            list_ptr = list_ptr->children[0];
        }
        while (!s.empty())
        {
            auto child_node = static_cast<ASTExp *>(transform_node_iter(s.top()));
            auto child_node_ptr = std::shared_ptr<ASTExp>(child_node);
            node->length++;
            node->array_lists.push_back(child_node_ptr);
            s.pop();
        }
        return node;
    }
    // LOrExp -> LAndExp | LOrExp OR LAndExp
    else if (_STR_EQ(n->name, "LOrExp"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTLOrExp();
        if (n->children_num == 3)
        {
            auto lor_exp_node = static_cast<ASTLOrExp *>(transform_node_iter(n->children[0]));
            node->lor_exp = std::shared_ptr<ASTLOrExp>(lor_exp_node);
            node->or_op = OP_OR;
            auto and_exp_node = static_cast<ASTLAndExp *>(transform_node_iter(n->children[2]));
            node->land_exp = std::shared_ptr<ASTLAndExp>(and_exp_node);
        }
        else
        {
            auto and_exp_node = static_cast<ASTLAndExp *>(transform_node_iter(n->children[0]));
            node->land_exp = std::shared_ptr<ASTLAndExp>(and_exp_node);
        }
        return node;
    }
    // LAndExp -> EqExp | LAndExp AND EqExp
    else if (_STR_EQ(n->name, "LAndExp"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTLAndExp();
        if (n->children_num == 3)
        {
            auto land_exp_node = static_cast<ASTLAndExp *>(transform_node_iter(n->children[0]));
            node->land_exp = std::shared_ptr<ASTLAndExp>(land_exp_node);
            node->and_op = OP_AND;
            auto eq_exp_node = static_cast<ASTEqExp *>(transform_node_iter(n->children[2]));
            node->eq_exp = std::shared_ptr<ASTEqExp>(eq_exp_node);
        }
        else
        {
            auto eq_exp_node = static_cast<ASTEqExp *>(transform_node_iter(n->children[0]));
            node->eq_exp = std::shared_ptr<ASTEqExp>(eq_exp_node);
        }
        return node;
    }
    else if (_STR_EQ(n->name, "EqExp"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTEqExp();
        if (n->children_num == 3)
        {
            auto eq_exp_node = static_cast<ASTEqExp *>(transform_node_iter(n->children[0]));
            node->eq_exp = std::shared_ptr<ASTEqExp>(eq_exp_node);
            if (_STR_EQ(n->children[1]->name, "=="))
            {
                node->op = OP_EQ;
            }
            else
            {
                node->op = OP_NEQ;
            }
            auto rel_exp_node = static_cast<ASTRelExp *>(transform_node_iter(n->children[2]));
            node->rel_exp = std::shared_ptr<ASTRelExp>(rel_exp_node);
        }
        else
        {
            auto rel_exp_node = static_cast<ASTRelExp *>(transform_node_iter(n->children[0]));
            node->rel_exp = std::shared_ptr<ASTRelExp>(rel_exp_node);
        }
        return node;
    }
    else if (_STR_EQ(n->name, "RelExp"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTRelExp();
        if (n->children_num == 3)
        {
            auto rel_exp_node = static_cast<ASTRelExp *>(transform_node_iter(n->children[0]));
            node->rel_exp = std::shared_ptr<ASTRelExp>(rel_exp_node);
            if (_STR_EQ(n->children[1]->name, "<"))
            {
                node->op = OP_LT;
            }
            else if (_STR_EQ(n->children[1]->name, "<="))
            {
                node->op = OP_LE;
            }
            else if (_STR_EQ(n->children[1]->name, ">"))
            {
                node->op = OP_GT;
            }
            else
            {
                node->op = OP_GE;
            }
            auto add_exp_node = static_cast<ASTAddExp *>(transform_node_iter(n->children[2]));
            node->add_exp = std::shared_ptr<ASTAddExp>(add_exp_node);
        }
        else
        {
            auto add_exp_node = static_cast<ASTAddExp *>(transform_node_iter(n->children[0]));
            node->add_exp = std::shared_ptr<ASTAddExp>(add_exp_node);
        }
        return node;
    }
    else if (_STR_EQ(n->name, "AddExp"))
    {
        // LOG(INFO) << n->name;
        // std::stack<syntax_tree_node *> node_stack;
        // std::stack<ASTAddExp *> add_stack;
        // std::stack<ASTMulExp *> mul_stack;
        // node_stack.push(n);
        // while(!node_stack.empty())
        // {
        //     syntax_tree_node *node = node_stack.top();
        //     node_stack.pop();
        //     if(node->children_num == 3)
        //     {
        //         auto add_exp_node = static_cast<ASTAddExp*>(add_stack.top());
        //         add_stack.pop();

        //     }
        // }
        // std::vector<ASTAddExp *> add_list;
        auto node = new ASTAddExp();
        auto outer = node;
        while (1)
        {
            if (n->children_num == 3)
            {
                if (_STR_EQ(n->children[1]->name, "+"))
                {
                    node->op = OP_ADD;
                }
                else
                {
                    node->op = OP_SUB;
                }
                auto mul_exp_node = static_cast<ASTMulExp *>(transform_node_iter(n->children[2]));
                node->mul_exp = std::shared_ptr<ASTMulExp>(mul_exp_node);
                auto new_node = new ASTAddExp();
                node->add_exp = std::shared_ptr<ASTAddExp>(new_node);
                node = new_node;
                n = n->children[0];
            }
            else
            {
                auto mul_exp_node = static_cast<ASTMulExp *>(transform_node_iter(n->children[0]));
                node->mul_exp = std::shared_ptr<ASTMulExp>(mul_exp_node);
                node->add_exp = nullptr;
                // n = n->children[0];
                break;
            }
        }
        return outer;
    }
    else if (_STR_EQ(n->name, "MulExp"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTMulExp();
        if (n->children_num == 3)
        {
            auto mul_exp_node = static_cast<ASTMulExp *>(transform_node_iter(n->children[0]));
            node->mul_exp = std::shared_ptr<ASTMulExp>(mul_exp_node);
            if (_STR_EQ(n->children[1]->name, "*"))
            {
                node->op = OP_MUL;
            }
            else if (_STR_EQ(n->children[1]->name, "/"))
            {
                node->op = OP_DIV;
            }
            else
            {
                node->op = OP_MOD;
            }
            auto unary_exp_node = static_cast<ASTUnaryExp *>(transform_node_iter(n->children[2]));
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(unary_exp_node);
        }
        else
        {
            auto unary_exp_node = static_cast<ASTUnaryExp *>(transform_node_iter(n->children[0]));
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(unary_exp_node);
        }
        return node;
    }
    else if (_STR_EQ(n->name, "UnaryExp"))
    {
        // LOG(INFO) << n->name;
        // UnaryExp -> PrimaryExp
        // std::cout << "go UnaryExp" << std::endl;
        auto node = new ASTUnaryExp();
        if (n->children_num == 1)
        {
            auto primary_node = static_cast<ASTPrimaryExp *>(transform_node_iter(n->children[0]));
            node->primary_exp = std::shared_ptr<ASTPrimaryExp>(primary_node);
        }
        else if (n->children_num == 2)
        {
            if (_STR_EQ(n->children[0]->children[0]->name, "+"))
                node->unary_op = OP_PLUS;
            else if (_STR_EQ(n->children[0]->children[0]->name, "-"))
                node->unary_op = OP_MINUS;
            else
                node->unary_op = OP_NOT;
            auto unary_exp_node = static_cast<ASTUnaryExp *>(transform_node_iter(n->children[1]));
            node->unary_exp = std::shared_ptr<ASTUnaryExp>(unary_exp_node);
        }
        else
        {
            auto call_node = new ASTCall();
            call_node->id = n->children[0]->name;
            if (n->children_num == 4)
            {
                std::stack<syntax_tree_node *> s;
                auto list_ptr = n->children[2];
                while (list_ptr->children_num == 3)
                {
                    s.push(list_ptr->children[2]);
                    list_ptr = list_ptr->children[0];
                }
                s.push(list_ptr->children[0]);
                while (!s.empty())
                {
                    auto child_node = static_cast<ASTExp *>(transform_node_iter(s.top()));
                    auto child_node_ptr = std::shared_ptr<ASTExp>(child_node);
                    call_node->args.push_back(child_node_ptr);
                    s.pop();
                }
            }
            node->call_exp = std::shared_ptr<ASTCall>(call_node);
        }
        return node;
    }
    else if (_STR_EQ(n->name, "PrimaryExp"))
    {
        // LOG(INFO) << n->name;
        // std::cout << "go here" << std::endl;
        if (n->children_num == 1)
            return transform_node_iter(n->children[0]);
        else
        {
            return transform_node_iter(n->children[1]);
        }
    }
    else if (_STR_EQ(n->name, "Number"))
    {
        // LOG(INFO) << n->name;
        auto node = new ASTNum();
        if (_STR_EQ(n->children[0]->name, "Integer"))
        {
            node->type = TYPE_INT;
            std::string value = n->children[0]->children[0]->name;
            // LOG(INFO) << value;
            if (value[1] == 'x' || value[1] == 'X')
                node->i_val = std::stoi(value, nullptr, 16);
            else if (value[0] == '0' && value.length() > 1)
                node->i_val = std::stoi(value, nullptr, 8);
            else
                node->i_val = std::stoi(n->children[0]->children[0]->name);
        }
        else if (_STR_EQ(n->children[0]->name, "Floatnum"))
        {
            std::string value = n->children[0]->children[0]->name;
            // LOG(INFO) << value;
            // LOG(ERROR) << value << "--------------------";
            node->type = TYPE_FLOAT;
            if (value[1] == 'x' || value[1] == 'X')
            {
                // LOG(ERROR) << "enter hex float ---------------";
                char *endPtr;
                node->f_val = (float)std::strtod(value.c_str(), &endPtr); // 手动转换为浮点数
                // LOG(ERROR) << node->f_val << ".............";
            }
            else
            {
                // LOG(ERROR) << "enter normal float ----------------";
                node->f_val = std::stof(value, nullptr);
                // LOG(ERROR) << node->f_val << " .....................";
            }
        }
        else
        {
            std::cerr << n->children[0]->name << std::endl;
            std::cerr << "Wrong Type" << std::endl;
            std::abort();
        }
        return node;
    }
    else
    {
        std::cerr << n->name << std::endl;
        std::cerr << "[ast]: transform failure!" << std::endl;
        std::abort();
    }
}

Value *ASTProgram::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTFuncDef::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTDecl::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTDef::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTParam::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTBlock::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTAssignStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTSelectionStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTIterationStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTBreak::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTContinue::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTReturnStmt::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTVar::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTNum::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTUnaryExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTCall::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTAddExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTMulExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTRelExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTEqExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTLAndExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTLOrExp::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
Value *ASTInitVal::accept(ASTVisitor &visitor) { return visitor.visit(*this); }
// 打印一棵AST
#define _DEBUT_PRINT_N_(N)                \
    {                                     \
        std::cout << std::string(N, '-'); \
    }

Value *ASTPrinter::visit(ASTProgram &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "program" << std::endl;
    add_depth();
    for (auto comp : node.compunits)
    {
        comp->accept(*this);
    }
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTNum &node)
{
    _DEBUT_PRINT_N_(depth);
    if (node.type == TYPE_INT)
    {
        std::cout << "num(int): " << node.i_val << std::endl;
    }
    else if (node.type == TYPE_FLOAT)
    {
        std::cout << "num(float): " << node.f_val << std::endl;
    }
    else
    {
        _AST_NODE_ERROR_
    }
    return nullptr;
}
Value *ASTPrinter::visit(ASTDecl &node)
{
    _DEBUT_PRINT_N_(depth);
    if (node.is_const)
    {
        std::cout << "ConstDecl: " << std::endl;
    }
    else
    {
        std::cout << "Decl: " << std::endl;
    }
    // std::cout << "reach visit ASTDecl " <<std::endl;
    for (auto def : node.def_lists)
    {
        add_depth();
        def->accept(*this);
        remove_depth();
    }
    // std::cout << "finish visit ASTDecl " << std::endl;
    return nullptr;
}
Value *ASTPrinter::visit(ASTFuncDef &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "FuncDef: " << node.id << std::endl;
    add_depth();
    for (auto param : node.params)
    {
        param->accept(*this);
    }
    node.block->accept(*this);
    remove_depth();

    return nullptr;
}

Value *ASTPrinter::visit(ASTDef &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << node.id << std::endl;
    std::cout << node.type << std::endl;
    if (node.length > 0)
    {
        for (auto exp : node.exp_lists)
        {
            add_depth();
            _DEBUT_PRINT_N_(depth);
            std::cout << "[]" << std::endl;
            exp->accept(*this);
            remove_depth();
        }
    }
    if (node.initval_list != nullptr)
    {
        add_depth();
        _DEBUT_PRINT_N_(depth);
        std::cout << "=" << std::endl;
        node.initval_list->accept(*this);
        remove_depth();
    }
    return nullptr;
}
Value *ASTPrinter::visit(ASTParam &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "param: " << std::endl;
    if (node.type == TYPE_INT)
    {
        std::cout << "int " << node.id;
    }
    else
    {
        std::cout << "float " << node.id;
    }
    if (node.isarray)
        std::cout << "[]" << std::endl;
    else
        std::cout << std::endl;
    if (!node.array_lists.empty())
    {
        for (auto array : node.array_lists)
        {
            add_depth();
            _DEBUT_PRINT_N_(depth);
            std::cout << "[]" << std::endl;
            array->accept(*this);
            remove_depth();
        }
    }
    return nullptr;
}
Value *ASTPrinter::visit(ASTBlock &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "Block" << std::endl;
    add_depth();
    for (auto decl : node.decl_lists)
    {
        decl->accept(*this);
    }
    for (auto stmt : node.stmt_lists)
    {
        stmt->accept(*this);
    }
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTAssignStmt &node)
{
    // LOG(DEBUG) << "assign";
    _DEBUT_PRINT_N_(depth);
    std::cout << "AssignStmt: " << std::endl;
    add_depth();
    node.var->accept(*this);
    node.expression->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTSelectionStmt &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "SelectionStmt: " << std::endl;
    add_depth();
    node.cond->accept(*this);
    if (node.if_stmt != nullptr)
        node.if_stmt->accept(*this);
    if (node.else_stmt != nullptr)
        node.else_stmt->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTIterationStmt &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "IterationStmt: " << std::endl;
    add_depth();
    node.cond->accept(*this);
    if (node.stmt != nullptr)
        node.stmt->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTReturnStmt &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "ReturnStmt: " << std::endl;
    if (node.expression == nullptr)
    {
        std::cout << ": void" << std::endl;
    }
    else
    {
        add_depth();
        node.expression->accept(*this);
        remove_depth();
    }
    return nullptr;
}
Value *ASTPrinter::visit(ASTBreak &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "Break" << std::endl;
    return nullptr;
}
Value *ASTPrinter::visit(ASTContinue &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "Continue" << std::endl;
    return nullptr;
}
Value *ASTPrinter::visit(ASTExp &node)
{
    // LOG(DEBUG) << "exp";
    _DEBUT_PRINT_N_(depth);
    std::cout << "expression" << std::endl;
    add_depth();
    if (node.add_exp != nullptr)
        node.add_exp->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTVar &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "var: " << node.id << std::endl;
    if (node.length > 0)
    {
        for (auto array : node.array_lists)
        {
            add_depth();
            _DEBUT_PRINT_N_(depth);
            std::cout << "[]" << std::endl;
            array->accept(*this);
            remove_depth();
        }
    }
    return nullptr;
}
Value *ASTPrinter::visit(ASTUnaryExp &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "UnaryExp: " << std::endl;
    if (node.unary_exp != nullptr)
    {
        _DEBUT_PRINT_N_(depth);
        if (node.unary_op == OP_PLUS)
            std::cout << "+";
        else if (node.unary_op == OP_MINUS)
            std::cout << "-";
        else
            std::cout << "!";
        add_depth();
        node.unary_exp->accept(*this);
        remove_depth();
    }
    else if (node.primary_exp != nullptr)
    {
        add_depth();
        node.primary_exp->accept(*this);
        remove_depth();
    }
    else if (node.call_exp != nullptr)
    {
        add_depth();
        node.call_exp->accept(*this);
        remove_depth();
    }
    else
    {
        _AST_NODE_ERROR_
    }
    return nullptr;
}
Value *ASTPrinter::visit(ASTCall &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "Call :" << node.id << "()" << std::endl;
    add_depth();
    for (auto arg : node.args)
    {
        arg->accept(*this);
    }
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTAddExp &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "AddExp: ";
    if (node.add_exp == nullptr)
        std::cout << std::endl;
    else
    {
        std::cout << ": ";
        if (node.op == OP_ADD)
            std::cout << "+";
        else if (node.op == OP_SUB)
            std::cout << "-";
        else
            std::abort();
        std::cout << std::endl;
    }
    add_depth();
    if (node.add_exp != nullptr)
        node.add_exp->accept(*this);
    node.mul_exp->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTMulExp &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "MulExp: ";
    if (node.mul_exp == nullptr)
        std::cout << std::endl;
    else
    {
        std::cout << ": ";
        if (node.op == OP_MUL)
            std::cout << "*";
        else if (node.op == OP_DIV)
            std::cout << "/";
        else if (node.op == OP_MOD)
            std::cout << "%";
        else
            std::abort();
        std::cout << std::endl;
    }
    add_depth();
    if (node.mul_exp != nullptr)
        node.mul_exp->accept(*this);
    node.unary_exp->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTRelExp &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "RelExp: ";
    if (node.rel_exp == nullptr)
        std::cout << std::endl;
    else
    {
        std::cout << ": ";
        if (node.op == OP_LT)
            std::cout << "<";
        else if (node.op == OP_LE)
            std::cout << "<=";
        else if (node.op == OP_GT)
            std::cout << ">";
        else if (node.op == OP_GE)
            std::cout << ">=";
        else
            std::abort();
        std::cout << std::endl;
    }
    add_depth();
    if (node.rel_exp != nullptr)
        node.rel_exp->accept(*this);
    node.add_exp->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTEqExp &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "EqExp: ";
    if (node.eq_exp == nullptr)
        std::cout << std::endl;
    else
    {
        std::cout << ": ";
        if (node.op == OP_EQ)
            std::cout << "==";
        else if (node.op == OP_NEQ)
            std::cout << "!=";
        else
            std::abort();
        std::cout << std::endl;
    }
    add_depth();
    if (node.eq_exp != nullptr)
        node.eq_exp->accept(*this);
    node.rel_exp->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTLAndExp &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "LAndExp: ";
    if (node.land_exp == nullptr)
        std::cout << std::endl;
    else
    {
        std::cout << ": ";
        if (node.and_op == OP_AND)
            std::cout << "&&";
        else
            std::abort();
        std::cout << std::endl;
    }
    add_depth();
    if (node.land_exp != nullptr)
        node.land_exp->accept(*this);
    node.eq_exp->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTLOrExp &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "LOrExp: ";
    if (node.lor_exp == nullptr)
        std::cout << std::endl;
    else
    {
        std::cout << ": ";
        if (node.or_op == OP_OR)
            std::cout << "||";
        else
            std::abort();
        std::cout << std::endl;
    }
    add_depth();
    if (node.lor_exp != nullptr)
        node.lor_exp->accept(*this);
    node.land_exp->accept(*this);
    remove_depth();
    return nullptr;
}
Value *ASTPrinter::visit(ASTInitVal &node)
{
    _DEBUT_PRINT_N_(depth);
    std::cout << "InitVal: " << std::endl;
    if (!node.initval_list.empty())
    {
        add_depth();
        _DEBUT_PRINT_N_(depth);
        std::cout << "{" << std::endl;
        for (auto initval : node.initval_list)
        {
            add_depth();
            initval->accept(*this);
            remove_depth();
        }
        _DEBUT_PRINT_N_(depth);
        std::cout << "}" << std::endl;
        remove_depth();
    }
    else
    {
        add_depth();
        if (node.value != nullptr)
            node.value->accept(*this);
        else
        {
            _DEBUT_PRINT_N_(depth);
            std::cout << "{}" << std::endl;
        }
        remove_depth();
    }
    return nullptr;
}
