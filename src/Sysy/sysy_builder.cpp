#include "sysy_builder.hpp"
#include "Constant.hpp"
#include "logging.hpp"
#include <stack>
#include <cmath>

#define CONST_FP(num) ConstantFP::get((float)num, module.get())
#define CONST_INT(num) ConstantInt::get(num, module.get())
// types
Type *VOID_T;

Type *INT1_T;
Type *INT32_T;
Type *INT8_T;
Type *INT16_T;
Type *INT64_T;

Type *INT32PTR_T;
Type *FLOAT_T;
Type *FLOATPTR_T;

bool CminusfBuilder::promote(Value **l_val_p, Value **r_val_p, const_val *l_num, const_val *r_num)
{
    bool is_int = false;
    auto &l_val = *l_val_p;
    auto &r_val = *r_val_p;
    if (l_val->get_type() == r_val->get_type())
    {
        is_int = l_val->get_type()->is_integer_type();
    }
    else
    {
        if (l_val->get_type()->is_integer_type())
        {
            if (context.is_const_exp)
            {
                l_num->f_val = (float)l_num->i_val;
            }
            else if (scope.in_global())
                l_num->f_val = (float)l_num->i_val;
            // context.val.f_val = (float)context.val.i_val;
            else
                l_val = builder->create_sitofp(l_val, FLOAT_T);
        }
        else
        {
            if (context.is_const_exp)
                r_num->f_val = (float)r_num->i_val;
            //    context.val.i_val = (int)context.val.f_val;
            else if (scope.in_global())
                r_num->f_val = (float)r_num->i_val;
            //    context.val.i_val = (int)context.val.f_val;
            else
                r_val = builder->create_sitofp(r_val, FLOAT_T);
        }
    }
    return is_int;
}
/*
 * use CMinusfBuilder::Scope to construct scopes
 * scope.enter: enter a new scope
 * scope.exit: exit current scope
 * scope.push: add a new binding to current scope
 * scope.find: find and return the value bound to the name
 */
// Program -> CompUnit
// CompUnit -> (CompUnit) Decl | FuncDef
Value *CminusfBuilder::visit(ASTProgram &node)
{
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTProgram";
    VOID_T = module->get_void_type();

    INT1_T = module->get_int1_type();
    INT8_T = module->get_int8_type();
    INT16_T = module->get_int16_type();
    INT32_T = module->get_int32_type();
    INT64_T = module->get_int64_type();

    INT32PTR_T = module->get_int32_ptr_type();
    FLOAT_T = module->get_float_type();
    FLOATPTR_T = module->get_float_ptr_type();

    Value *ret_val = nullptr;
    for (auto &comp : node.compunits)
    {
        ret_val = comp->accept(*this);
    }
    return ret_val;
}
// 函数定义
Value *CminusfBuilder::visit(ASTFuncDef &node)
{
    LOG(DEBUG) << "ASTFuncDef";
    LOG(INFO) << node.id << " the functiont name is : ---------";
    FunctionType *func_type = nullptr;
    Type *ret_type = nullptr;
    std::vector<Type *> param_types;
    // 返回类型确定
    if (node.type == TYPE_INT)
        ret_type = INT32_T;
    else if (node.type == TYPE_FLOAT)
        ret_type = FLOAT_T;
    else
        ret_type = VOID_T;
    // 参数类型确定
    for (auto &param : node.params)
    {
        if (param->type == TYPE_INT)
        {
            // int a[]([num]) 这样的类型
            // 创建一个指向对应数组类型的指针而不保留数组类型参数
            if (param->isarray)
            {
                // param_types.push_back(INT32PTR_T);//TODO: 这里存在一个变量复合数组类型错误的问题
                auto temp = INT32_T;
                for (auto dim = param->array_lists.rbegin(); dim != param->array_lists.rend(); ++dim)
                {
                    auto num = *dim;
                    auto const_ori = num->is_const;
                    num->is_const = true;
                    num->accept(*this);
                    num->is_const = const_ori;
                    temp = ArrayType::get(temp, context.val.i_val);
                }
                temp = PointerType::get(temp);
                param_types.push_back(temp);
            }
            else
            {
                param_types.push_back(INT32_T);
            }
        }
        // float a[]([num]) 这样的类型
        // 处理成一个 指向 float[num]的指针
        else
        {
            if (param->isarray)
            {
                auto temp = FLOAT_T;
                for (auto dim = param->array_lists.rbegin(); dim != param->array_lists.rend(); ++dim)
                {
                    auto num = *dim;
                    auto const_ori = num->is_const;
                    num->is_const = true;
                    num->accept(*this);
                    num->is_const = const_ori;
                    temp = ArrayType::get(temp, context.val.i_val);
                }
                temp = PointerType::get(temp);
                param_types.push_back(temp);
            }
            else
            {
                param_types.push_back(FLOAT_T);
            }
        }
    }
    func_type = FunctionType::get(ret_type, param_types);
    auto func = Function::create(func_type, node.id, module.get());
    scope.push(node.id, func);
    // 将context变更为当前function
    context.func = func;
    // 函数声明结束 开始函数定义

    auto funBB = BasicBlock::create(module.get(), "entry", func);
    builder->set_insert_point(funBB);
    scope.enter();
    std::vector<Value *> args;
    for (auto &arg : func->get_args())
    {
        args.push_back(&arg);
    }
    for (size_t i = 0; i < node.params.size(); ++i)
    {
        // 处理参数
        if (node.params[i]->isarray)
        {
            Value *array_alloc;
            // LOG(DEBUG) << param_types[i]->print();
            array_alloc = builder->create_alloca(param_types[i]);
            // LOG(INFO) << args[i]->get_type()->print();
            // LOG(INFO) << array_alloc->print();
            builder->create_store(args[i], array_alloc);
            scope.push(node.params[i]->id, array_alloc);
        }
        else
        {
            Value *alloc;
            if (node.params[i]->type == TYPE_INT)
                alloc = builder->create_alloca(INT32_T);
            else
                alloc = builder->create_alloca(FLOAT_T);
            LOG(INFO) << "store_2";
            builder->create_store(args[i], alloc);
            scope.push(node.params[i]->id, alloc);
        }
    }
    node.block->accept(*this);
    // block中还没添加return/branch的话自动添加一个return，这种情况下只会使用默认返回值
    if (not builder->get_insert_block()->is_terminated())
    {
        if (context.func->get_return_type()->is_void_type())
            builder->create_void_ret();
        else if (context.func->get_return_type()->is_float_type())
            builder->create_ret(CONST_FP(0.));
        else
            builder->create_ret(CONST_INT(0));
    }
    scope.exit();
    LOG(DEBUG) << "ASTFuncDef_end";
    return nullptr;
}
// Decl -> ConstDecl | VarDecl
Value *CminusfBuilder::visit(ASTDecl &node)
{
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTDecl";
    if (node.is_const == true)
        context.is_const = true;
    else
        context.is_const = false;
    context.type = node.type;
    // LOG(WARNING) << context.type << " type is ? ------------------";
    for (auto &def : node.def_lists)
    {
        def->accept(*this);
    }
    // LOG(DEBUG) << "ASTDecl_end";
    return nullptr;
}
//

Constant *CminusfBuilder::get_const_array(Type *array_type_t, std::vector<const_val> val)
{
    // LOG(INFO) << context.is_const;
    if (array_type_t->is_array_type())
    {
        auto array_type = static_cast<ArrayType *>(array_type_t);
        auto dim = array_type->get_num_of_elements();
        std::vector<Constant *> temp;
        assert(val.size() % dim == 0);
        for (unsigned int i = 0; i < dim; i++)
        {
            // LOG(INFO) << temp.size() << " +++++++++++++++ ";
            temp.push_back(get_const_array(array_type->get_element_type(), std::vector<const_val>(val.begin() + i * val.size() / dim, val.begin() + (i + 1) * val.size() / dim)));
        }
        return ConstantArray::get(array_type, temp);
    }
    else if (array_type_t->is_int32_type())
    {
        assert(val.size() == 1);
        return ConstantInt::get(int(val[0].i_val), module.get());
    }
    else if (array_type_t->is_float_type())
    {
        assert(val.size() == 1);
        return ConstantFP::get(val[0].f_val, module.get());
    }
    else
    {
        assert(false);
    }
}
// 变量声明
Value *CminusfBuilder::visit(ASTDef &node)
{
    LOG(DEBUG) << "ASTDef_start";
    Type *var_type;
    auto current_type = context.type;
    if (current_type == TYPE_INT)
    {
        var_type = module->get_int32_type();
    }
    else if (current_type == TYPE_FLOAT)
    {
        var_type = module->get_float_type();
    }
    else
    {
        std::cerr << "ASTDef" << std::endl;
        std::cerr << "Wrong variable type!" << std::endl;
        std::abort();
    }
    LOG(WARNING) << var_type->print();
    // 一般变量（非数组类型）
    if (node.length == 0)
    {
        // 全局变量
        if (scope.in_global())
        {
            // 无初始化值, 默认为0
            if (node.initval_list == nullptr)
            {
                Constant *initial_value;
                if (current_type == TYPE_INT)
                    initial_value = CONST_INT(0);
                else
                    initial_value = CONST_FP(0.);
                auto *var = GlobalVariable::create(node.id, module.get(), var_type, context.is_const, initial_value);
                scope.push(node.id, var);
                // 对于const变量，需要在全局作用域的const_map中记录其值
                if (node.is_const)
                    scope.push({node.id, std::vector<unsigned int>(0)}, {0});
            }
            else//初始化不是0
            {
                // 需要通过访问ASTInitval更新 context中的val.i_val或者val.f_val
                node.initval_list->accept(*this);
                Constant *initial_value;
                if (current_type == TYPE_INT)
                    initial_value = ConstantInt::get(int(context.val.i_val), module.get());
                else if (current_type == TYPE_FLOAT)
                    initial_value = ConstantFP::get(context.val.f_val, module.get());
                // if (current_type == TYPE_INT)
                //     LOG(WARNING) << context.val.i_val << " int ";
                // else
                //     LOG(WARNING) << context.val.f_val << " float ";
                auto *var = GlobalVariable::create(node.id, module.get(), var_type, context.is_const, initial_value);
                scope.push(node.id, var);
                if (node.is_const)
                {
                    // LOG(INFO) << node.id << " now enter the global scope";
                    // LOG(WARNING) << context.val.f_val << " " << context.val.i_val << " ......";
                    scope.push({node.id, std::vector<unsigned int>(0)}, context.val);
                }
            }
        }
        // 非全局变量
        else
        {
            // 没有初始化值
            if (node.initval_list == nullptr)
            {
                auto *var = builder->create_alloca(var_type);
                scope.push(node.id, var);
            }
            else
            {
                // 这时候如果initial_list是nullptr报错
                assert(node.initval_list->initval_list.size() == 0);
                auto *var = builder->create_alloca(var_type);

                scope.push(node.id, var);
                node.initval_list->accept(*this);
                // LOG(DEBUG) << context.exp_vals.size();
                if (!node.is_const)
                {
                    auto *initial_value = context.exp_vals[0];
                    // LOG(WARNING) << var->get_type()->print();
                    // LOG(WARNING) << initial_value->get_type()->print();
                    // LOG(INFO) << "store_3";
                    builder->create_store(initial_value, var);
                }
                else
                {
                    auto initial_value = context.exp_uints[0];
                    if (current_type == TYPE_INT)
                        builder->create_store(ConstantInt::get(int(initial_value.i_val), module.get()), var);
                    else
                        builder->create_store(ConstantFP::get(initial_value.f_val, module.get()), var);
                    scope.push({node.id, std::vector<unsigned int>(0)}, initial_value);
                }
            }
        }
    }
    // 数组类型的变量
    else
    {
        // 获取多维数组的类型
        context.exp_lists.clear();
        unsigned int size = 1;
        for (auto exp : node.exp_lists)
        {
            context.exp_lists.push_back(*exp);//倒顺序，比较后出现的数据在比较里边的层
        }
        ArrayType *array_type = nullptr;
        for (auto it = std::rbegin(context.exp_lists); it != std::rend(context.exp_lists); it++)
        {
            it->accept(*this);
            size *= it->val.i_val;
            int num = it->val.i_val;
            if (array_type == nullptr)
                array_type = ArrayType::get(var_type, num);
            else
                array_type = ArrayType::get(array_type, num);//扩展一层
        }
        if (node.initval_list == nullptr)//没有初始值
        {
            if (scope.in_global())
            {
                Constant *zero = nullptr;
                if (current_type == TYPE_INT)
                    zero = ConstantZero::get(array_type, module.get());
                else
                    zero = ConstantZero::get(array_type, module.get());
                auto var = GlobalVariable::create(node.id, module.get(), array_type, node.is_const, zero);
                //全都是零的数组，这个需要codegen的时候自己想办法初始化
                scope.push(node.id, var);
            }
            else
            {
                auto var = builder->create_alloca(array_type);
                scope.push(node.id, var);
            }
        }
        // 数组变量 + 有初始化
        else
        {
            // 全局变量数组
            if (scope.in_global())
            {
                auto ori_const = node.initval_list->is_const;
                node.initval_list->is_const = true;
                node.initval_list->accept(*this);
                node.initval_list->is_const = ori_const;
                auto initval = get_const_array(array_type, context.exp_uints);
                auto var = GlobalVariable::create(node.id, module.get(), array_type, node.is_const, initval);
                scope.push(node.id, var);
                // 将const数组的值存入全局const_map
                for (unsigned int i = 0; i < size; i++)
                {
                    auto temp = i;
                    std::vector<unsigned int> now_dim;
                    for (auto dim = context.exp_lists.rbegin(); dim != context.exp_lists.rend(); ++dim)
                    {
                        now_dim.insert(now_dim.begin(), temp % dim->val.i_val);
                        temp /= dim->val.i_val;
                    }
                    if (node.is_const)
                        scope.push({node.id, now_dim}, context.exp_uints[i]);
                }
            }
            // 非全局数组变量，且有初始化 + 非const
            else if (!node.is_const)
            {
                node.initval_list->accept(*this);
                auto initval = context.exp_vals;
                auto var = builder->create_alloca(array_type);
                scope.push(node.id, var);
                Value *temp = var;
                int len = 1;
                for (auto i : context.exp_lists)
                {
                    len *= i.val.i_val;
                }
                auto temp_dim = std::vector<Value *>(context.exp_lists.size() + 1, CONST_INT(0));
                temp = builder->create_gep(temp, temp_dim);
                if (current_type == TYPE_INT)
                {
                    auto mem_set = scope.find("memset", "memset_int");
                    // LOG(ERROR) << mem_set->get_name();
                    auto call = builder->create_call(mem_set, {temp, CONST_INT(0), CONST_INT(len * 4)});
                    call->set_name("memset_int_call");
                }
                else
                {
                    auto mem_set = scope.find("memset", "memset_float");
                    // LOG(DEBUG) << mem_set->get_type()->print() << "+++";
                    auto call = builder->create_call(mem_set, {temp, CONST_INT(0), CONST_INT(len * 4)});
                    call->set_name("memset_float_call");
                }
                // LOG(DEBUG) << initval.size();
                for (auto val = 0u; val < initval.size(); val++)
                {
                    if (initval[val] == nullptr)
                        continue;
                    Value *iter = var;
                    auto temp = val;
                    std::vector<unsigned int> now_dim;
                    for (auto dim = context.exp_lists.rbegin(); dim != context.exp_lists.rend(); ++dim)
                    {
                        now_dim.push_back(temp % dim->val.i_val);
                        temp /= dim->val.i_val;
                    }
                    std::vector<Value *> now_dim_v = {CONST_INT(0)};
                    for (auto dim = now_dim.rbegin(); dim != now_dim.rend(); ++dim)
                    {
                        // iter = builder->create_gep(iter, {CONST_INT(0), ConstantInt::get(int(*dim), module.get())});
                        now_dim_v.push_back(CONST_INT(int(*dim)));
                    }
                    iter = builder->create_gep(iter, now_dim_v);
                    if (current_type == TYPE_INT)
                    {
                        if (initval[val]->get_type()->is_float_type())
                            initval[val] = builder->create_fptosi(initval[val], INT32_T);
                    }
                    else if (current_type == TYPE_FLOAT)
                    {
                        if (initval[val]->get_type()->is_integer_type())
                            initval[val] = builder->create_sitofp(initval[val], FLOAT_T);
                    }
                    builder->create_store(initval[val], iter);
                }
            }
            // const数组变量有初始化
            else
            {
                node.initval_list->accept(*this);
                auto initval = context.exp_uints;
                auto var = builder->create_alloca(array_type);
                scope.push(node.id, var);
                for (auto val = 0u; val < initval.size(); val++)
                {
                    Value *iter = var;
                    auto temp = val;
                    std::vector<unsigned int> now_dim;
                    for (auto dim = context.exp_lists.rbegin(); dim != context.exp_lists.rend(); ++dim)
                    {
                        now_dim.insert(now_dim.begin(), temp % dim->val.i_val);
                        temp /= dim->val.i_val;
                    }
                    std::vector<Value *> new_dim = {CONST_INT(0)};
                    for (auto dim : now_dim)
                    {
                        new_dim.push_back(ConstantInt::get(int(dim), module.get()));
                        // iter = builder->create_gep(iter, {CONST_INT(0), ConstantInt::get(int(dim), module.get())});
                    }
                    iter = builder->create_gep(iter, new_dim);
                    if (current_type == TYPE_INT)
                    {
                        // LOG(INFO) << "store_7";
                        builder->create_store(ConstantInt::get(int(initval[val].i_val), module.get()), iter);
                    }
                    else
                    {
                        // LOG(INFO) << "store_8";
                        builder->create_store(ConstantFP::get(initval[val].f_val, module.get()), iter);
                    }
                    scope.push({node.id, now_dim}, initval[val]);
                }
            }
        }
    }
    LOG(DEBUG) << "ASTDef_end";
    return nullptr;
}
Value *CminusfBuilder::visit(ASTInitVal &node)
{
    LOG(DEBUG) << "ASTInitVal";
    if (node.initval_list.size() == 0 && node.value != nullptr)
    {
        // Exp
        auto value = node.value->accept(*this);
        if (context.type == TYPE_INT)
        {
            if (value->get_type()->is_float_type())
            {
                context.val.i_val = (int)context.val.f_val;
                if (!scope.in_global())
                {
                    value = builder->create_fptosi(value, INT32_T);
                }
            }
        }
        else if (context.type == TYPE_FLOAT)
        {
            if (value->get_type()->is_integer_type())
            {
                context.val.f_val = (float)context.val.i_val;
                if (!scope.in_global())
                {
                    value = builder->create_sitofp(value, FLOAT_T);
                }
            }
        }
        context.exp_vals = std::vector<Value *>(1, value);
        if (node.is_const)
            context.exp_uints = std::vector<const_val>(1, node.value->val);
    }
    else if (!node.is_const)
    {
        // 不是常量定义
        auto exp_list = context.exp_lists;
        assert(context.exp_lists[0].is_const);
        unsigned int all_dim = 1;
        for (auto &exp : context.exp_lists)
        {
            all_dim *= exp.val.i_val;
        }
        std::vector<Value *> exp_vals = std::vector<Value *>(0);
        auto now_dim = std::vector<unsigned int>(exp_list.size(), 0);
        for (auto init : node.initval_list)
        {
            if (init->initval_list.size() == 0 && init->value != nullptr)
            {
                // Exp
                if (init->value != nullptr)
                {
                    auto value = init->value->accept(*this);
                    exp_vals.push_back(value);
                    // LOG(DEBUG) << "succ to reach here";
                    // LOG(DEBUG) << now_dim.size();
                    now_dim.back()++;
                }
            }
            else
            {
                // initval
                for (auto i = now_dim.size() - 1; i > 0; --i)
                {
                    now_dim[i - 1] += now_dim[i] / exp_list[i].val.i_val;
                    now_dim[i] %= exp_list[i].val.i_val;
                }

                context.exp_lists.erase(context.exp_lists.begin());
                init->accept(*this);
                context.exp_lists = exp_list;

                for (auto &val : context.exp_vals)
                {
                    exp_vals.push_back(val);
                }
                now_dim[0]++;
            }
        }
        // if(exp_vals.size() <= all_dim)
        exp_vals.resize(all_dim, nullptr);
        context.exp_vals = exp_vals;
    }
    else
    {
        auto exp_list = context.exp_lists;
        assert(context.exp_lists[0].is_const);
        unsigned int all_dim = 1;
        for (auto &exp : context.exp_lists)
        {
            all_dim *= exp.val.i_val;
        }
        std::vector<const_val> exp_uints = std::vector<const_val>(0);
        auto now_dim = std::vector<unsigned int>(exp_list.size(), 0);
        for (auto init : node.initval_list)
        {
            if (init->initval_list.size() == 0 && init->value != nullptr)
            {
                // Exp
                auto ori_const = init->value->is_const;
                init->value->is_const = true;
                init->value->accept(*this);
                init->value->is_const = ori_const;
                auto value = init->value->val;
                exp_uints.push_back(value);
                now_dim.back()++;
            }
            else
            {
                // initval
                for (auto i = now_dim.size() - 1; i > 0; --i)
                {
                    now_dim[i - 1] += now_dim[i] / exp_list[i].val.i_val;
                    now_dim[i] %= exp_list[i].val.i_val;
                    // assert(now_dim[i] == 0);
                }
                context.exp_lists.erase(context.exp_lists.begin());
                auto ori_const = init->is_const;
                init->is_const = true;
                init->accept(*this);
                // LOG(ERROR) << context.exp_uints.size();
                init->is_const = ori_const;
                context.exp_lists = exp_list;

                for (auto &val : context.exp_uints)
                {
                    exp_uints.push_back(val);
                }
                now_dim[0]++;
            }
        }
        LOG(DEBUG) << exp_uints.size();
        LOG(DEBUG) << all_dim;
        exp_uints.resize(all_dim, {0});
        context.exp_uints = exp_uints;
    }
    LOG(DEBUG) << "ASTInitVal_end";
    return nullptr;
}

Value *CminusfBuilder::visit(ASTParam &node)
{
    return nullptr;
}

Value *CminusfBuilder::visit(ASTBlock &node)
{
    LOG(DEBUG) << "ASTBlock";
    // 单独对函数的block特殊处理，保证不会进入一个新的scope与参数列表一致
    bool need_exit_scope = !context.pre_enter_scope;
    if (context.pre_enter_scope)
        context.pre_enter_scope = false;
    else
        scope.enter();
    auto it_stmt = node.stmt_lists.begin();
    auto it_decl = node.decl_lists.begin();
    for (auto &it : node.list_type)
    {
        if (it == 0)
        {
            (*it_decl)->accept(*this);
            it_decl++;
        }
        else
        {
            (*it_stmt)->accept(*this);
            it_stmt++;
            if (builder->get_insert_block()->is_terminated())
                break;
        }
    }
    if (need_exit_scope)
    {
        scope.exit();
    }
    LOG(DEBUG) << "ASTBlock_end";
    return nullptr;
}

Value *CminusfBuilder::visit(ASTAssignStmt &node)
{
    LOG(DEBUG) << "ASTAssignStmt";
    auto *expr_result = node.expression->accept(*this);
    context.require_lvalue = true;
    auto *var_addr = node.var->accept(*this);
    if (var_addr->get_type()->get_pointer_element_type() != expr_result->get_type())
    {
        if (expr_result->get_type() == INT32_T)
            expr_result = builder->create_sitofp(expr_result, FLOAT_T);
        else
            expr_result = builder->create_fptosi(expr_result, INT32_T);
    }
    builder->create_store(expr_result, var_addr);
    LOG(DEBUG) << "ASTAssignStmt_end";
    return expr_result;
}

Value *CminusfBuilder::visit(ASTSelectionStmt &node)
{
    LOG(DEBUG) << "ASTSelectionStmt";
    auto *trueBB = BasicBlock::create(module.get(), "", context.func);
    BasicBlock *falseBB{};
    if (node.else_stmt != nullptr)
        falseBB = BasicBlock::create(module.get(), "", context.func);
    auto *nextBB = BasicBlock::create(module.get(), "", context.func);

    // 入栈
    context.true_bb_stk.push(trueBB);
    if (node.else_stmt != nullptr)
        context.false_bb_stk.push(falseBB);
    else
        context.false_bb_stk.push(nextBB);
    // 访问表达式
    node.cond->accept(*this);
    // trueBB 相关语句
    builder->set_insert_point(trueBB);
    if (node.if_stmt != nullptr)
        node.if_stmt->accept(*this);
    // 建立 trueBB -> nextBB

    if (builder->get_insert_block()->empty())
    {
        if (builder->get_insert_block()->get_pre_basic_blocks().empty())
            builder->get_insert_block()->erase_from_parent();
        else
        {
            if (not builder->get_insert_block()->is_terminated())
                builder->create_br(nextBB);
        }
    }
    else
    {
        if (not builder->get_insert_block()->is_terminated())
            builder->create_br(nextBB);
    }
    if (node.else_stmt != nullptr)
    {
        builder->set_insert_point(falseBB);
        node.else_stmt->accept(*this);
        if (builder->get_insert_block()->empty())
        {
            if (builder->get_insert_block()->get_pre_basic_blocks().empty())
                builder->get_insert_block()->erase_from_parent();
            else
            {
                if (not builder->get_insert_block()->is_terminated())
                    builder->create_br(nextBB);
            }
        }
        else
        {
            if (not builder->get_insert_block()->is_terminated())
                builder->create_br(nextBB);
        }
    }
    // 进入nextBB
    builder->set_insert_point(nextBB);

    // 标号回填出栈
    context.true_bb_stk.pop();
    context.false_bb_stk.pop();

    LOG(DEBUG) << "ASTSelectionStmt_end";
    return nullptr;
}

Value *CminusfBuilder::visit(ASTIterationStmt &node)
{
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTIterationStmt";
    auto *condBB = BasicBlock::create(module.get(), "", context.func);
    if (not builder->get_insert_block()->is_terminated())
    {
        auto br_inst = builder->create_br(condBB);
        LOG(INFO) << br_inst->print() << " br----------------";
    }

    builder->set_insert_point(condBB);

    // 入栈
    auto *trueBB = BasicBlock::create(module.get(), "", context.func);
    auto *nextBB = BasicBlock::create(module.get(), "", context.func);
    context.next_bb_stk.push(nextBB);
    context.cond_bb_stk.push(condBB);

    // 标号回填入栈
    context.true_bb_stk.push(trueBB);
    context.false_bb_stk.push(nextBB);

    // 访问condition expression
    node.cond->accept(*this);
    builder->set_insert_point(trueBB);
    if (node.stmt != nullptr)
        node.stmt->accept(*this);

    if (builder->get_insert_block()->empty())
    {
        if (builder->get_insert_block()->get_pre_basic_blocks().empty())
            builder->get_insert_block()->erase_from_parent();
        else
            if (not builder->get_insert_block()->is_terminated())
                builder->create_br(condBB);
    }
    else
    {
        if (not builder->get_insert_block()->is_terminated())
            builder->create_br(condBB);
    }
    builder->set_insert_point(nextBB);
    // // trueBB 中访问statement
    // 出栈
    context.next_bb_stk.pop();
    context.cond_bb_stk.pop();

    // 标号回填出栈
    context.true_bb_stk.pop();
    context.false_bb_stk.pop();

    LOG(DEBUG) << "ASTIterationStmt_end";
    return nullptr;
}

Value *CminusfBuilder::visit(ASTBreak &node)
{
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTBreak";
    auto *bb = context.next_bb_stk.top();
    auto *ret_val = builder->create_br(bb);
    // LOG(INFO) << ret_val->print() << " br---------------";
    return ret_val;
}

Value *CminusfBuilder::visit(ASTContinue &node)
{
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTContinue";
    auto *bb = context.cond_bb_stk.top();
    auto *ret_val = builder->create_br(bb);
    // LOG(INFO) << ret_val->print() << " br---------------";
    return ret_val;
}

Value *CminusfBuilder::visit(ASTReturnStmt &node)
{
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTReturnStmt";
    if (node.expression == nullptr)
    {
        builder->create_void_ret();
    }
    else
    {
        auto *fun_ret_type = context.func->get_return_type();
        auto *ret_val = node.expression->accept(*this);
        // LOG(DEBUG) << ret_val->get_type()->print();
        // LOG(DEBUG) << fun_ret_type->print();
        if (fun_ret_type != ret_val->get_type())
        {
            // LOG(DEBUG) << "================here=============";
            if (fun_ret_type->is_integer_type())
            {
                ret_val = builder->create_fptosi(ret_val, INT32_T);
            }
            else
            {
                ret_val = builder->create_sitofp(ret_val, FLOAT_T);
            }
        }
        builder->create_ret(ret_val);
    }
    LOG(DEBUG) << "ASTReturnStmt_end";
    return nullptr;
}
// Exp -> AddExp
Value *CminusfBuilder::visit(ASTExp &node)
{
    // LOG(INFO) << node.is_const;
    // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    LOG(DEBUG) << "ASTExp";
    auto const_ori = node.is_const;
    if (node.is_const)
    {
        // node.is_const = true;
        context.is_const_exp = true;
    }
    auto *ret_val = node.add_exp->accept(*this);
    // LOG(INFO) << "+++++++++++++++++++++++++++++++++++=";
    if (ret_val != nullptr)
    {
        if (ret_val->get_type()->is_integer_type())
        {
            node.val.i_val = context.val.i_val;
        }
        else
            node.val.f_val = context.val.f_val;
    }
    // LOG(DEBUG) << ret_val->print();
    node.is_const = const_ori;
    context.is_const_exp = false;
    LOG(DEBUG) << "ASTExp_end";
    return ret_val;
}
// TODO: LVal
Value *CminusfBuilder::visit(ASTVar &node)
{
    // // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTVar";
    // 在当前作用域找到var变量
    LOG(INFO) << node.id << " -----------------";
    auto *var = scope.find(node.id);
    // auto const_var = scope.find_const({node.id,{}});
    LOG(INFO) << "id: " << node.id;
    auto is_int = var->get_type()->get_pointer_element_type()->is_integer_type();
    auto is_float = var->get_type()->get_pointer_element_type()->is_float_type();
    auto is_ptr = var->get_type()->get_pointer_element_type()->is_pointer_type();
    bool should_return_lvalue = context.require_lvalue;

    Value *ret_val = nullptr;
    // 普通变量（或多维数组的基地址）
    LOG(INFO) << var->get_type()->print();
    if (node.length == 0)
    {
        if (should_return_lvalue)
        {
            ret_val = var;
            context.require_lvalue = false;
        }
        else
        {
            // 对常量的引用
            if (context.is_const_exp)
            {
                LOG(DEBUG) << "enter const_exp ==============================";
                auto const_var = scope.find_const({node.id, {}});
                LOG(INFO) << "want to find " << node.id << "    " << const_var.f_val << "    " << const_var.i_val;
                if (is_int)
                {
                    context.val.i_val = const_var.i_val;
                    ret_val = CONST_INT((int)context.val.i_val);
                }
                else if (is_float)
                {
                    context.val.f_val = const_var.f_val;
                    ret_val = CONST_FP(context.val.f_val);
                }
            }
            // 对变量的右值调用
            else
            {
                if (is_int || is_float || is_ptr)
                {
                    LOG(INFO) << "load_1"
                              << "---------------------";
                    ret_val = builder->create_load(var);
                }
                else
                {
                    ret_val = builder->create_gep(var, {CONST_INT(0), CONST_INT(0)});
                }
            }
        }
    }
    // 数组
    else
    {
        Value *temp_val = var;
        if (!context.is_const_exp)
        {
            if (should_return_lvalue)
            {
                context.require_lvalue = false;
            }
            if (is_int || is_float)
            {
                assert(node.array_lists.size() == 1);
                auto *val = node.array_lists[0]->accept(*this);
                temp_val = builder->create_gep(temp_val, {val});
            }
            else
            {
                LOG(INFO) << "load_2"
                          << " --------------------------";
                LOG(DEBUG) << temp_val->get_type()->get_pointer_element_type()->print();
                if (temp_val->get_type()->get_pointer_element_type()->is_pointer_type())
                {
                    temp_val = builder->create_load(temp_val);
                    std::vector<Value *> args;
                    for (auto dim : node.array_lists)
                    {
                        args.push_back(dim->accept(*this));
                    }
                    temp_val = builder->create_gep(temp_val, args);
                }
                else
                {
                    std::vector<Value *> args;
                    args.push_back(CONST_INT(0));
                    for (auto dim : node.array_lists)
                    {
                        args.push_back(dim->accept(*this));
                    }
                    temp_val = builder->create_gep(temp_val, args);
                }
            }
            if (should_return_lvalue)
            {
                ret_val = temp_val;
                context.require_lvalue = false;
            }
            else
            {
                LOG(INFO) << "load_3"
                          << "--------------------------";
                LOG(INFO) << temp_val->print();
                LOG(INFO) << temp_val->get_type()->print();
                if (temp_val->get_type()->get_pointer_element_type()->is_array_type())
                {
                    temp_val = builder->create_gep(temp_val, {CONST_INT(0), CONST_INT(0)});
                    LOG(INFO) << temp_val->print();
                    ret_val = temp_val;
                }
                else
                    ret_val = builder->create_load(temp_val);
            }
        }
        else
        {
            if (should_return_lvalue)
            {
                context.require_lvalue = false;
            }
            std::vector<unsigned> num_list;
            for (auto dim : node.array_lists)
            {
                dim->accept(*this);
                num_list.push_back(context.val.i_val);
            }
            auto const_var = scope.find_const({node.id, num_list});
            if (is_int)
            {
                ret_val = CONST_INT((int)const_var.i_val);
                context.val.i_val = std::stoi(ret_val->print());
            }
            else if (is_float)
            {
                ret_val = CONST_FP(const_var.f_val);
                LOG(INFO) << ret_val->print();
                context.val.f_val = std::stof(ret_val->print());
            }
        }
    }
    LOG(INFO) << ret_val->get_type()->print() << " -----------------------------";
    LOG(DEBUG) << "ASTVar_end";
    return ret_val;
}

Value *CminusfBuilder::visit(ASTNum &node)
{
    // // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTNum";
    if (node.type == TYPE_INT)
    {
        context.val.i_val = node.i_val; // TODO:
        LOG(INFO) << context.val.i_val;
        LOG(DEBUG) << "ASTNum_end";
        return CONST_INT(node.i_val);
        // context.type = TYPE_INT;
    }
    else
    {
        // context.type = TYPE_FLOAT;
        context.val.f_val = node.f_val; // TODO:
        LOG(INFO) << context.val.f_val;
        LOG(DEBUG) << "ASTNum_end";
        return CONST_FP(node.f_val);
    }
}

Value *CminusfBuilder::visit(ASTUnaryExp &node)
{
    // // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTUnaryExp";
    if (node.call_exp != nullptr)
    {
        LOG(DEBUG) << "ASTUnaryExp_end";
        Value *ret_val;
        if (!context.logic_op)
        {
            context.logic_op = true;
            ret_val = node.call_exp->accept(*this);
            context.logic_op = false;
        }
        else
            ret_val = node.call_exp->accept(*this);
        if (!context.logic_op)
        {
            if (ret_val->get_type()->is_integer_type())
                ret_val = builder->create_icmp_eq(CONST_INT(0), ret_val);
            else
                ret_val = builder->create_fcmp_eq(CONST_FP(0.), ret_val);
            ret_val = builder->create_zext(ret_val, INT32_T);
            context.logic_op = true;
        }
        return ret_val;
    }
    if (node.primary_exp != nullptr)
    {
        LOG(INFO) << "ASTUnaryExp enter primary_exp";
        Value *ret_val;
        if (!context.logic_op)
        {
            context.logic_op = true;
            ret_val = node.primary_exp->accept(*this);
            context.logic_op = false;
        }
        else
            ret_val = node.primary_exp->accept(*this);
        if (!context.logic_op)
        {
            if (ret_val->get_type()->is_integer_type())
                ret_val = builder->create_icmp_eq(CONST_INT(0), ret_val);
            else
                ret_val = builder->create_fcmp_eq(CONST_FP(0.), ret_val);
            ret_val = builder->create_zext(ret_val, INT32_T);
            context.logic_op = true;
        }
        return ret_val;
    }
    if (node.unary_exp != nullptr)
    {
        if (node.unary_op == OP_MINUS)
        {
            LOG(DEBUG) << "-";
            Value *ret_val = nullptr;
            auto *exp_val = node.unary_exp->accept(*this);
            auto *type = exp_val->get_type();
            if (type->is_integer_type())
            {
                context.val.i_val = -context.val.i_val;
                LOG(INFO) << exp_val->print() << "-------";
                if (context.is_const_exp)
                    ret_val = CONST_INT((int)context.val.i_val);
                else if (scope.in_global())
                {
                    ret_val = CONST_INT((int)context.val.i_val);
                }
                else
                    ret_val = builder->create_isub(CONST_INT(0), exp_val);
            }
            else
            {
                context.val.f_val = -context.val.f_val;
                if (context.is_const_exp)
                    ret_val = CONST_FP(context.val.f_val);
                else if (scope.in_global())
                    ret_val = CONST_FP(context.val.f_val);
                else
                {
                    // ret_val = CONST_FP(std::stof(exp_val->print()));
                    ret_val = builder->create_fsub(CONST_FP(0.), exp_val);
                }
            }
            return ret_val;
        }
        else if (node.unary_op == OP_NOT)
        {
            LOG(INFO) << "!";
            context.logic_op = (!context.logic_op);
        }
        else
        {
            LOG(INFO) << "+";
        }
        LOG(DEBUG) << "ASTUnaryExp_end";
        return node.unary_exp->accept(*this);
    }
    LOG(DEBUG) << "ASTUnaryExp_end";
    return nullptr;
}

Value *CminusfBuilder::visit(ASTAddExp &node)
{
    // // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTAddExp";
    if (node.add_exp == nullptr)
    {
        LOG(DEBUG) << "ASTAddExp_end";
        return node.mul_exp->accept(*this);
    }
    const_val l_num, r_num;
    auto *l_val = node.add_exp->accept(*this);
    if (l_val->get_type()->is_integer_type())
        l_num.i_val = context.val.i_val;
    else
        l_num.f_val = context.val.f_val;
    // // LOG(INFO) << l_num.val_i << "========================================";
    auto *r_val = node.mul_exp->accept(*this);
    // // LOG(INFO) << context.val.i_val << "========================================";
    if (r_val->get_type()->is_integer_type())
        r_num.i_val = context.val.i_val;
    else
        r_num.f_val = context.val.f_val;
    // // LOG(INFO) << r_num.val_i << "========================================";
    bool is_int = promote(&l_val, &r_val, &l_num, &r_num);
    Value *ret_val = nullptr;
    switch (node.op)
    {
    case OP_ADD:
        if (is_int)
        {
            context.val.i_val = l_num.i_val + r_num.i_val;
            if (context.is_const_exp)
                ret_val = CONST_INT((int)context.val.i_val);
            else
                ret_val = builder->create_iadd(l_val, r_val);
        }
        else
        {
            context.val.f_val = l_num.f_val + r_num.f_val;
            if (context.is_const_exp)
                ret_val = CONST_FP(context.val.f_val);
            else
                ret_val = builder->create_fadd(l_val, r_val);
        }
        break;
    case OP_SUB:
        if (is_int)
        {
            context.val.i_val = l_num.i_val - r_num.i_val;
            if (context.is_const_exp)
                ret_val = CONST_INT((int)context.val.i_val);
            else
                ret_val = builder->create_isub(l_val, r_val);
        }
        else
        {
            context.val.f_val = l_num.f_val - r_num.f_val;
            if (context.is_const_exp)
                ret_val = CONST_FP(context.val.f_val);
            else
                ret_val = builder->create_fsub(l_val, r_val);
        }
    }
    // // LOG(INFO) << context.val.i_val << " ==================================here is the result";
    LOG(DEBUG) << "ASTAddExp_end";
    return ret_val;
}

Value *CminusfBuilder::visit(ASTMulExp &node)
{
    // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTMulExp";
    if (node.mul_exp == nullptr)
    {
        LOG(DEBUG) << "ASTMulExp_end";
        return node.unary_exp->accept(*this);
    }
    const_val l_num, r_num;
    auto *l_val = node.mul_exp->accept(*this);
    if (l_val->get_type()->is_integer_type())
        l_num.i_val = context.val.i_val;
    else
        l_num.f_val = context.val.f_val;
    auto *r_val = node.unary_exp->accept(*this);
    if (r_val->get_type()->is_integer_type())
        r_num.i_val = context.val.i_val;
    else
        r_num.f_val = context.val.f_val;
    LOG(INFO) << l_val->get_type()->print() << " " << l_num.f_val;
    LOG(INFO) << r_val->get_type()->print() << " " << r_num.f_val;
    bool is_int = promote(&l_val, &r_val, &l_num, &r_num);
    Value *ret_val = nullptr;
    LOG(WARNING) << node.op << "---------------";
    LOG(INFO) << l_val->get_type()->print() << " " << l_num.f_val;
    LOG(INFO) << r_val->get_type()->print() << " " << r_num.f_val;
    switch (node.op)
    {
    case OP_MUL:
        if (is_int)
        {
            context.val.i_val = l_num.i_val * r_num.i_val;
            if (context.is_const_exp)
                ret_val = CONST_INT((int)context.val.i_val);
            else
                ret_val = builder->create_imul(l_val, r_val);
        }
        else
        {
            LOG(WARNING) << l_num.f_val << "    " << r_num.f_val << " aaaaaaaaaaaaaaaaaaaaaaaaa";
            context.val.f_val = l_num.f_val * r_num.f_val;
            LOG(WARNING) << "now is mul : " << context.val.f_val << " ------------------";
            if (context.is_const_exp)
                ret_val = CONST_FP(context.val.f_val);
            else
                ret_val = builder->create_fmul(l_val, r_val);
        }
        break;
    case OP_DIV:
        if (is_int)
        {
            if (context.is_const_exp)
            {
                if (r_num.i_val != 0) // TODO:
                    context.val.i_val = l_num.i_val / r_num.i_val;
                ret_val = CONST_INT((int)context.val.i_val);
            }
            else
                ret_val = builder->create_isdiv(l_val, r_val);
        }
        else
        {
            if (context.is_const_exp)
            {
                context.val.f_val = l_num.f_val / r_num.f_val;
                ret_val = CONST_FP(context.val.f_val);
            }
            else
                ret_val = builder->create_fdiv(l_val, r_val);
        }
        break;
    case OP_MOD:
        if (is_int)
        {
            if (context.is_const_exp)
            {
                if (r_num.i_val != 0)
                    context.val.i_val = l_num.i_val % r_num.i_val;
                ret_val = CONST_INT((int)context.val.i_val);
            }
            else
                ret_val = builder->create_isrem(l_val, r_val);
        }
        else
        {
            std::cerr << "Only integer can use mod instruction" << std::endl;
            std::cerr << "Wrong Type !" << std::endl;
            std::abort();
        }
        break;
    }
    LOG(DEBUG) << "ASTMulExp_end";
    return ret_val;
}

Value *CminusfBuilder::visit(ASTRelExp &node)
{
    // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTRelExp";
    if (node.rel_exp == nullptr)
    {
        auto *ret_val = node.add_exp->accept(*this);
        // if (ret_val->get_type()->is_int1_type())
        //     return builder->create_zext(ret_val, INT32_T);
        return ret_val;
    }
    const_val l_num, r_num;
    auto *l_val = node.rel_exp->accept(*this);
    if (l_val->get_type()->is_integer_type())
    {
        if (l_val->get_type()->is_int1_type())
            l_val = builder->create_zext(l_val, INT32_T);
        l_num.i_val = context.val.i_val;
    }
    else
    {
        l_num.f_val = context.val.f_val;
    }
    LOG(INFO) << "+++++++++++++++++++++++++++++++";
    auto *r_val = node.add_exp->accept(*this);
    if (r_val->get_type()->is_integer_type())
    {
        if (r_val->get_type()->is_int1_type())
            r_val = builder->create_zext(r_val, INT32_T);
        r_num.i_val = context.val.i_val;
    }
    else
        r_num.f_val = context.val.f_val;
    bool is_int = promote(&l_val, &r_val, &l_num, &r_num);
    LOG(DEBUG) << (is_int ? 1 : 0) << " ==========================";
    Value *cmp;
    switch (node.op)
    {
    case OP_LT:
        if (is_int)
        {
            LOG(INFO) << 3;
            context.val.i_val = (l_num.i_val < r_num.i_val);
            if (context.is_const_exp)
                cmp = CONST_INT((int)context.val.i_val);
            else
                cmp = builder->create_icmp_lt(l_val, r_val);
        }
        else
        {
            context.val.i_val = (l_num.f_val < r_num.f_val);
            if (context.is_const_exp)
                cmp = CONST_FP(context.val.f_val);
            else
                cmp = builder->create_fcmp_lt(l_val, r_val);
        }
        break;
    case OP_LE:
        if (is_int)
        {
            LOG(INFO) << 4;
            context.val.i_val = (l_num.i_val <= r_num.i_val);
            if (context.is_const_exp)
                cmp = CONST_INT((int)context.val.i_val);
            else
                cmp = builder->create_icmp_le(l_val, r_val);
        }
        else
        {
            context.val.i_val = (l_num.f_val <= r_num.f_val);
            if (context.is_const_exp)
                cmp = CONST_FP(context.val.f_val);
            else
                cmp = builder->create_fcmp_le(l_val, r_val);
        }
        break;
    case OP_GT:
        if (is_int)
        {
            LOG(INFO) << 5;
            context.val.i_val = (l_num.i_val > r_num.i_val);
            if (context.is_const_exp)
                cmp = CONST_INT((int)context.val.i_val);
            else
                cmp = builder->create_icmp_gt(l_val, r_val);
        }
        else
        {
            context.val.i_val = (l_num.f_val > r_num.f_val);
            if (context.is_const_exp)
                cmp = CONST_FP(context.val.f_val);
            else
                cmp = builder->create_fcmp_gt(l_val, r_val);
        }
        break;
    case OP_GE:
        if (is_int)
        {
            LOG(INFO) << 7;
            context.val.i_val = (l_num.i_val >= r_num.i_val);
            if (context.is_const_exp)
                cmp = CONST_INT((int)context.val.i_val);
            else
                cmp = builder->create_icmp_ge(l_val, r_val);
        }
        else
        {
            context.val.i_val = (l_num.f_val >= r_num.f_val);
            if (context.is_const_exp)
                cmp = CONST_FP(context.val.f_val);
            else
                cmp = builder->create_fcmp_ge(l_val, r_val);
        }
        break;
    }
    // cmp = builder->create_zext(cmp, INT32_T);
    LOG(DEBUG) << "ASTRelExp_end";
    return cmp;
}

Value *CminusfBuilder::visit(ASTEqExp &node)
{
    // LOG(WARNING) << (context.is_const_exp ? 1 : 0);

    LOG(DEBUG) << "ASTEqExp";
    if (node.eq_exp == nullptr)
    {
        auto *ret_val = node.rel_exp->accept(*this);
        // if (ret_val->get_type()->is_integer_type())
        //     ret_val = builder->create_icmp_ne(CONST_INT(0), ret_val);
        // else
        //     ret_val = builder->create_fcmp_ne(CONST_FP(0.), ret_val);
        return ret_val;
    }
    const_val l_num, r_num;
    auto *l_val = node.eq_exp->accept(*this);
    if (l_val->get_type()->is_integer_type())
    {
        if (l_val->get_type()->is_int1_type())
            l_val = builder->create_zext(l_val, INT32_T);
        l_num.i_val = context.val.i_val;
    }
    else
        l_num.f_val = context.val.f_val;
    auto *r_val = node.rel_exp->accept(*this);
    if (r_val->get_type()->is_integer_type())
    {
        if (r_val->get_type()->is_int1_type())
            r_val = builder->create_zext(r_val, INT32_T);
        r_num.i_val = context.val.i_val;
    }
    else
        r_num.f_val = context.val.f_val;
    bool is_int = promote(&l_val, &r_val, &l_num, &r_num);
    Value *cmp;
    switch (node.op)
    {
    case OP_EQ:
        if (is_int)
        {
            LOG(DEBUG) << 8;
            context.val.i_val = (l_num.i_val == r_num.i_val);
            if (context.is_const_exp)
                cmp = CONST_INT((int)context.val.i_val);
            else
                cmp = builder->create_icmp_eq(l_val, r_val);
        }
        else
        {
            context.val.f_val = (l_num.f_val == r_num.f_val);
            if (context.is_const_exp)
                cmp = CONST_FP(context.val.f_val);
            else
                cmp = builder->create_fcmp_eq(l_val, r_val);
        }
        break;
    case OP_NEQ:
        if (is_int)
        {
            LOG(INFO) << 9;
            context.val.i_val = (l_num.i_val == r_num.i_val);
            if (context.is_const_exp)
                cmp = CONST_INT((int)context.val.i_val);
            else
                cmp = builder->create_icmp_ne(l_val, r_val);
        }
        else
        {
            context.val.i_val = (l_num.f_val != r_num.f_val);
            if (context.is_const_exp)
                cmp = CONST_FP(context.val.f_val);
            else
                cmp = builder->create_fcmp_ne(l_val, r_val);
        }
        break;
    }
    LOG(DEBUG) << "ASTEqExp_end";
    // cmp = builder->create_zext(cmp, INT32_T);
    return cmp;
}

Value *CminusfBuilder::visit(ASTLAndExp &node)
{
    // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTLAndExp";
    Value *ret_val = nullptr;
    auto *true_bb = context.true_bb_stk.top();
    auto *false_bb = context.false_bb_stk.top();
    // 没有 && 逻辑
    if (node.land_exp == nullptr)
    {
        ret_val = node.eq_exp->accept(*this);
        // LOG(INFO) << ret_val->print();
        // LOG(INFO) << builder->get_insert_block()->print();
        LOG(INFO) << ret_val->print();
        LOG(INFO) << ret_val->get_type()->print();
        if (ret_val->get_type()->is_int32_type())
            ret_val = builder->create_icmp_ne(CONST_INT(0), ret_val);
        else if (ret_val->get_type()->is_float_type())
            ret_val = builder->create_fcmp_ne(CONST_FP(0.), ret_val);
        ret_val = builder->create_cond_br(ret_val, true_bb, false_bb);
        // LOG(INFO) << "reach here";
        return ret_val;
    }
    // LAndExp -> LAndExp && EqExp
    auto *mid_bb = BasicBlock::create(module.get(), "", context.func);

    context.true_bb_stk.push(mid_bb);
    context.false_bb_stk.push(false_bb);
    auto *l_val = node.land_exp->accept(*this);
    context.true_bb_stk.pop();
    context.false_bb_stk.pop();
    LOG(INFO) << "reach here";
    LOG(INFO) << mid_bb->print();
    LOG(INFO) << false_bb->print();
    LOG(INFO) << builder->get_insert_block()->print();
    if (not builder->get_insert_block()->is_terminated())
        builder->create_cond_br(l_val, mid_bb, false_bb);

    builder->set_insert_point(mid_bb);
    // if (l_val->get_type()->is_int1_type())
    //     l_val = builder->create_zext(l_val, INT32_T);
    auto *r_val = node.eq_exp->accept(*this);
    if (r_val->get_type()->is_int32_type())
        r_val = builder->create_icmp_ne(CONST_INT(0), r_val);
    else if (r_val->get_type()->is_float_type())
        r_val = builder->create_fcmp_ne(CONST_FP(0.), r_val);
    builder->create_cond_br(r_val, true_bb, false_bb);
    // if (r_val->get_type()->is_int1_type())
    //     r_val = builder->create_zext(r_val, INT32_T);
    // auto *ret_val_true = builder->create_and(l_val, r_val);
    // if (ret_val_true->get_type()->is_int1_type())
    //     return builder->create_zext(ret_val_true, INT32_T);
    LOG(DEBUG) << "ASTLAndExp_end";
    return nullptr;
}

Value *CminusfBuilder::visit(ASTLOrExp &node)
{
    // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // LOG(INFO) << context.is_const;
    // 这里不需要处理！逻辑
    LOG(DEBUG) << "ASTLOrExp";

    // get true_bb and false_bb from upper astnode
    auto *true_bb = context.true_bb_stk.top();
    auto *false_bb = context.false_bb_stk.top();
    // 这一层并没有||,但需要给下层传递truebb和falsebb
    if (node.lor_exp == nullptr)
    {
        context.true_bb_stk.push(true_bb);
        context.false_bb_stk.push(false_bb);
        node.land_exp->accept(*this);
        context.true_bb_stk.pop();
        context.false_bb_stk.pop();
        return nullptr;
    }
    // 短路中间节点
    auto *mid_bb = BasicBlock::create(module.get(), "", context.func);
    // auto *next_bb = BasicBlock::create(module.get(), "", context.func);
    // LOrExp -> LOrExp || LAndExp
    // 左侧布尔表达式
    context.true_bb_stk.push(true_bb);
    context.false_bb_stk.push(mid_bb);
    node.lor_exp->accept(*this);
    context.true_bb_stk.pop();
    context.false_bb_stk.pop();

    builder->set_insert_point(mid_bb);
    // 右侧布尔表达式
    context.true_bb_stk.push(true_bb);
    context.false_bb_stk.push(false_bb);
    node.land_exp->accept(*this);
    context.true_bb_stk.pop();
    context.false_bb_stk.pop();

    // if (l_val->get_type()->is_int1_type())
    //     l_val = builder->create_zext(l_val, INT32_T);
    // l_val = builder->create_zext(l_val, INT32_T);
    // auto br = builder->create_cond_br(l_val, true_bb, false_bb);
    // builder->set_insert_point(false_bb);
    // auto *r_val = node.land_exp->accept(*this);
    // if (r_val->get_type()->is_int1_type())
    //     r_val = builder->create_zext(r_val, INT32_T);
    // auto *ret_val = builder->create_or(l_val, r_val);
    // return ret_val;
    LOG(DEBUG) << "ASTLOrExp_end";
    return nullptr;
}

Value *CminusfBuilder::visit(ASTCall &node)
{
    // LOG(WARNING) << (context.is_const_exp ? 1 : 0);
    // LOG(INFO) << context.is_const;
    LOG(DEBUG) << "ASTCall";
    LOG(INFO) << node.id << " ...............................";
    auto *func = dynamic_cast<Function *>(scope.find(node.id));
    std::vector<Value *> args;
    // 参数类型转化
    auto param_type = func->get_function_type()->param_begin();
    for (auto &arg : node.args)
    {
        auto *arg_val = arg->accept(*this);
        // 非数组类型, 转化为相应类型
        // LOG(WARNING) << arg_val->get_type()->print();
        if (!arg_val->get_type()->is_array_type() && *param_type != arg_val->get_type())
        {
            if (arg_val->get_type()->is_pointer_type())
            {
                args.push_back(arg_val);
                param_type++;
                continue;
            }
            if (arg_val->get_type()->is_integer_type())
                arg_val = builder->create_sitofp(arg_val, FLOAT_T);
            else
                arg_val = builder->create_fptosi(arg_val, INT32_T);
        }
        args.push_back(arg_val);
        param_type++;
    }
    LOG(DEBUG) << "ASTCall_end";
    LOG(INFO) << func->get_name() << " ----------------------------------";
    LOG(INFO) << "Call type -------------------------------";
    for (auto arg : args)
    {
        LOG(INFO) << arg->get_type()->print();
        LOG(INFO) << arg->print();
    }
    LOG(INFO) << "Function type ------------------------------";
    for (auto &arg : func->get_args())
    {
        LOG(INFO) << arg.get_type()->print();
    }
    auto *ret_val = builder->create_call(static_cast<Function *>(func), args);

    return ret_val;
}
