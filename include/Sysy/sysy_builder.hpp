#pragma once

#include "BasicBlock.hpp"
#include "Constant.hpp"
#include "Function.hpp"
#include "IRBuilder.hpp"
#include "Module.hpp"
#include "Type.hpp"
#include "ast.hpp"

#include <map>
#include <memory>
#include <stack>

class Scope
{
public:
    // enter a new scope
    void enter()
    {
        inner.emplace_back();
        const_map.emplace_back();
    }

    // exit a scope
    void exit()
    {
        inner.pop_back();
        const_map.pop_back();
    }

    bool in_global() { return inner.size() == 1; }

    // push a name to scope
    // return true if successful
    // return false if this name already exits
    bool push(const std::string &name, Value *val)
    {
        auto result = inner[inner.size() - 1].insert({name, val});
        return result.second;
    }
    bool push(const std::pair<std::string &, std::vector<unsigned int>> name, const_val val)
    {
        auto result = const_map[const_map.size() - 1].insert({name, val});
        return result.second;
    }

    Value *find(const std::string &name)
    {
        for (auto s = inner.rbegin(); s != inner.rend(); s++)
        {
            auto iter = s->find(name);
            if (iter != s->end())
            {
                return iter->second;
            }
        }

        // Name not found: handled here?
        assert(false && "Name not found in scope");

        return nullptr;
    }

    const_val find_const(const std::pair<std::string &, std::vector<unsigned int>> &name)
    {
        for (auto s = const_map.rbegin(); s != const_map.rend(); s++)
        {
            auto iter = s->find(name);
            if (iter != s->end())
            {
                return iter->second;
            }
        }

        assert(false && "Const Name not found in scope");

        return {0};
    }

private:
    std::vector<std::map<std::string, Value *>> inner;
    std::vector<std::map<std::pair<std::string &, std::vector<unsigned int>>, const_val>> const_map;
};
class CminusfBuilder : public ASTVisitor
{
public:
    CminusfBuilder()
    {
        module = std::make_unique<Module>();
        builder = std::make_unique<IRBuilder>(nullptr, module.get());
        auto *TyVoid = module->get_void_type();
        auto *TyInt32 = module->get_int32_type();
        auto *TyFloat = module->get_float_type();
        auto *TyFloat_ptr = module->get_float_ptr_type();
        auto *TyInt32_ptr = module->get_int32_ptr_type();
        // io 接口函数
        // int getint()
        auto *getint_type = FunctionType::get(TyInt32, {});
        auto *getint_fun = Function::create(getint_type, "getint", module.get());

        // int getch()
        auto *getch_type = FunctionType::get(TyInt32, {});
        auto *getch_fun = Function::create(getch_type, "getch", module.get());

        // float getfloat()
        auto *getfloat_type = FunctionType::get(TyFloat, {});
        auto *getfloat_fun = Function::create(getfloat_type, "getfloat", module.get());

        // int getarray(int a[])
        std::vector<Type *> getarray_params;
        getarray_params.push_back(TyInt32_ptr);
        auto *getarray_type = FunctionType::get(TyInt32, getarray_params);
        auto *getarray_fun = Function::create(getarray_type, "getarray", module.get());

        // int getfarray(float a[])
        std::vector<Type *> getfarray_params;
        getfarray_params.push_back(TyFloat_ptr);
        auto *getfarray_type = FunctionType::get(TyInt32, getfarray_params);
        auto *getfarray_fun = Function::create(getfarray_type, "getfarray", module.get());

        // void putint(int a)
        std::vector<Type *> putint_params;
        putint_params.push_back(TyInt32);
        auto *putint_type = FunctionType::get(TyVoid, putint_params);
        auto *putint_fun = Function::create(putint_type, "putint", module.get());

        // void putch(int a)
        std::vector<Type *> putch_params;
        putch_params.push_back(TyInt32);
        auto *putch_type = FunctionType::get(TyVoid, putch_params);
        auto *putch_fun = Function::create(putch_type, "putch", module.get());

        // void putarray(int n, int a[]);
        std::vector<Type *> putarray_params;
        putarray_params.push_back(TyInt32);
        putarray_params.push_back(TyInt32_ptr);
        auto *putarray_type = FunctionType::get(TyVoid, putarray_params);
        auto *putarray_fun = Function::create(putarray_type, "putarray", module.get());

        // void putfloat(float a)
        std::vector<Type *> putfloat_params;
        putfloat_params.push_back(TyFloat);
        auto *putfloat_type = FunctionType::get(TyVoid, putfloat_params);
        auto *putfloat_fun = Function::create(putfloat_type, "putfloat", module.get());

        // void putfarray(int n, float a[])
        std::vector<Type *> putfarray_params;
        putfarray_params.push_back(TyInt32);
        putfarray_params.push_back(TyFloat_ptr);
        auto *putfarray_type = FunctionType::get(TyVoid, putfarray_params);
        auto *putfarray_fun = Function::create(putfarray_type, "putfarray", module.get());

        // void before_main()
        auto *before_main_type = FunctionType::get(TyVoid, {});
        auto *before_main_fun = Function::create(before_main_type, "before_main", module.get());

        // void after_main()
        auto *after_main_type = FunctionType::get(TyVoid, {});
        auto *after_main_fun = Function::create(after_main_type, "after_main", module.get());

        // void _sysy_starttime(int lineno)
        std::vector<Type *> _sysy_starttime_params;
        _sysy_starttime_params.push_back(TyInt32);
        auto _sysy_starttime_type = FunctionType::get(TyVoid, _sysy_starttime_params);
        auto _sysy_starttime_fun = Function::create(_sysy_starttime_type, "_sysy_starttime", module.get());

        // void _sysy_stoptime(int lineno)
        std::vector<Type *> _sysy_stoptime_params;
        _sysy_stoptime_params.push_back(TyInt32);
        auto _sysy_stoptime_type = FunctionType::get(TyVoid, _sysy_stoptime_params);
        auto _sysy_stoptime_fun = Function::create(_sysy_stoptime_type, "_sysy_stoptime", module.get());

        // void memset_int(int *s, int n)
        std::vector<Type *> memset_int_params;
        memset_int_params.push_back(TyInt32_ptr);
        memset_int_params.push_back(TyInt32);
        auto memset_int_type = FunctionType::get(TyVoid, memset_int_params);
        auto memset_int_fun = Function::create(memset_int_type, "memset_int", module.get());
        memset_int_fun->set_name("memset_int");

        // void memset_float(float *s, int n)
        std::vector<Type *> memset_float_params;
        memset_float_params.push_back(TyFloat_ptr);
        memset_float_params.push_back(TyInt32);
        auto memset_float_type = FunctionType::get(TyVoid, memset_float_params);
        auto memset_float_fun = Function::create(memset_float_type, "memset_float", module.get());
        memset_float_fun->set_name("memset_float");

        scope.enter();
        scope.push("getint", getint_fun);
        scope.push("getch", getch_fun);
        scope.push("getfloat", getfloat_fun);
        scope.push("getarray", getarray_fun);
        scope.push("getfarray", getfarray_fun);
        scope.push("putint", putint_fun);
        scope.push("putch", putch_fun);
        scope.push("putarray", putarray_fun);
        scope.push("putfloat", putfloat_fun);
        scope.push("putfarray", putfarray_fun);
        // scope.push("putf", putf_fun);
        scope.push("before_main", before_main_fun);
        scope.push("after_main", after_main_fun);
        scope.push("_sysy_starttime", _sysy_starttime_fun);
        scope.push("_sysy_stoptime", _sysy_stoptime_fun);
        scope.push("memset_int", memset_int_fun);
        scope.push("memset_float", memset_float_fun);
    }

    std::unique_ptr<Module> getModule() { return std::move(module); }

private:
    virtual Value *visit(ASTCall &) override final;
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
    virtual Value *visit(ASTAddExp &) override final;
    virtual Value *visit(ASTMulExp &) override final;
    virtual Value *visit(ASTRelExp &) override final;
    virtual Value *visit(ASTEqExp &) override final;
    virtual Value *visit(ASTLAndExp &) override final;
    virtual Value *visit(ASTLOrExp &) override final;
    virtual Value *visit(ASTInitVal &) override final;
    Constant *get_const_array(Type *array_type_t, std::vector<const_val> val);

    std::unique_ptr<IRBuilder> builder;
    Scope scope;
    std::unique_ptr<Module> module;
    bool promote(Value **l_val_p, Value **r_val_p, const_val *l_num, const_val *r_num);
    struct
    {
        // function that is being built
        Function *func = nullptr;
        bool is_const = false;
        bool is_const_exp = false;
        SysyType type;
        // 用于数组初始化
        std::vector<ASTExp> exp_lists; //->
        std::vector<Value *> exp_vals;
        std::vector<const_val> exp_uints;
        // std::vector<unsigned int> now_dim;
        // 一般变量
        const_val val;

        bool unary_op = true;
        bool logic_op = true;
        bool pre_enter_scope = false;

        bool is_break = false;
        bool is_continue = false;
        std::stack<BasicBlock *> next_bb_stk;
        std::stack<BasicBlock *> cond_bb_stk;

        // 用于处理标号回填
        std::stack<BasicBlock *> true_bb_stk;
        std::stack<BasicBlock *> false_bb_stk;

        bool require_lvalue = false;
        // TODO: you should add more fields to store state
    } context;
};
