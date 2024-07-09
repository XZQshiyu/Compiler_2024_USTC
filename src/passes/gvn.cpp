#include "gvn.hpp"

#include "BasicBlock.hpp"
#include "Constant.hpp"
#include "DeadCode.hpp"
#include "FuncInfo.hpp"
#include "Function.hpp"
#include "Instruction.hpp"
#include "logging.hpp"

#include <algorithm>
#include <fstream>
#include <memory>
#include <sstream>
#include <utility>

using namespace GVNExpression;
using std::string_literals::operator""s;
using std::shared_ptr;

static auto get_const_int_value = [](Value *v)
{
    return dynamic_cast<ConstantInt *>(v)->get_value();
};
static auto get_const_fp_value = [](Value *v)
{
    return dynamic_cast<ConstantFP *>(v)->get_value();
};
// Constant Propagation helper, folders are done for you
Constant *ConstFolder::compute(Instruction *instr, Constant *value1, Constant *value2)
{
    auto op = instr->get_instr_type();
    switch (op)
    {
    case Instruction::add:
        return ConstantInt::get(get_const_int_value(value1) + get_const_int_value(value2), module_);
    case Instruction::sub:
        return ConstantInt::get(get_const_int_value(value1) - get_const_int_value(value2), module_);
    case Instruction::mul:
        return ConstantInt::get(get_const_int_value(value1) * get_const_int_value(value2), module_);
    case Instruction::sdiv:
        return ConstantInt::get(get_const_int_value(value1) / get_const_int_value(value2), module_);
    case Instruction::srem:
        return ConstantInt::get(get_const_int_value(value1) % get_const_int_value(value2), module_);
    case Instruction::fadd:
        return ConstantFP::get(get_const_fp_value(value1) + get_const_fp_value(value2), module_);
    case Instruction::fsub:
        return ConstantFP::get(get_const_fp_value(value1) - get_const_fp_value(value2), module_);
    case Instruction::fmul:
        return ConstantFP::get(get_const_fp_value(value1) * get_const_fp_value(value2), module_);
    case Instruction::fdiv:
        return ConstantFP::get(get_const_fp_value(value1) / get_const_fp_value(value2), module_);
    case Instruction::eq:
        return ConstantInt::get(get_const_int_value(value1) == get_const_int_value(value2),
                                module_);
    case Instruction::ne:
        return ConstantInt::get(get_const_int_value(value1) != get_const_int_value(value2),
                                module_);
    case Instruction::gt:
        return ConstantInt::get(get_const_int_value(value1) > get_const_int_value(value2), module_);
    case Instruction::ge:
        return ConstantInt::get(get_const_int_value(value1) >= get_const_int_value(value2),
                                module_);
    case Instruction::lt:
        return ConstantInt::get(get_const_int_value(value1) < get_const_int_value(value2), module_);
    case Instruction::le:
        return ConstantInt::get(get_const_int_value(value1) <= get_const_int_value(value2),
                                module_);
    case Instruction::feq:
        return ConstantInt::get(get_const_fp_value(value1) == get_const_fp_value(value2), module_);
    case Instruction::fne:
        return ConstantInt::get(get_const_fp_value(value1) != get_const_fp_value(value2), module_);
    case Instruction::fgt:
        return ConstantInt::get(get_const_fp_value(value1) > get_const_fp_value(value2), module_);
    case Instruction::fge:
        return ConstantInt::get(get_const_fp_value(value1) >= get_const_fp_value(value2), module_);
    case Instruction::flt:
        return ConstantInt::get(get_const_fp_value(value1) < get_const_fp_value(value2), module_);
    case Instruction::fle:
        return ConstantInt::get(get_const_fp_value(value1) <= get_const_fp_value(value2), module_);
    default:
        return nullptr;
    }
}

Constant *ConstFolder::compute(Instruction::OpID op, Constant *value1, Constant *value2)
{
    switch (op)
    {
    case Instruction::add:
        return ConstantInt::get(get_const_int_value(value1) + get_const_int_value(value2), module_);
    case Instruction::sub:
        return ConstantInt::get(get_const_int_value(value1) - get_const_int_value(value2), module_);
    case Instruction::mul:
        return ConstantInt::get(get_const_int_value(value1) * get_const_int_value(value2), module_);
    case Instruction::sdiv:
        return ConstantInt::get(get_const_int_value(value1) / get_const_int_value(value2), module_);
    case Instruction::srem:
        return ConstantInt::get(get_const_int_value(value1) % get_const_int_value(value2), module_);
    case Instruction::fadd:
        return ConstantFP::get(get_const_fp_value(value1) + get_const_fp_value(value2), module_);
    case Instruction::fsub:
        return ConstantFP::get(get_const_fp_value(value1) - get_const_fp_value(value2), module_);
    case Instruction::fmul:
        return ConstantFP::get(get_const_fp_value(value1) * get_const_fp_value(value2), module_);
    case Instruction::fdiv:
        return ConstantFP::get(get_const_fp_value(value1) / get_const_fp_value(value2), module_);
    default:
        break;
    }
}

Constant *ConstFolder::compute(Instruction *instr, Constant *value1)
{
    auto op = instr->get_instr_type();
    switch (op)
    {
    case Instruction::sitofp:
        return ConstantFP::get(static_cast<float>(get_const_int_value(value1)), module_);
    case Instruction::fptosi:
        return ConstantInt::get(static_cast<int>(get_const_fp_value(value1)), module_);
    case Instruction::zext:
        return ConstantInt::get(static_cast<int>(get_const_int_value(value1)), module_);
    default:
        return nullptr;
    }
}

// 辅助打印函数
namespace utils
{
    static std::string print_congruence_class(const CongruenceClass &cc)
    {
        std::stringstream ss;
        if (cc.index_ == 0)
        {
            ss << "top class\n";
            return ss.str();
        }
        // LOG(INFO) << cc.value_expr_->get_expr_type();
        // LOG(INFO) << cc.index_;
        // LOG(INFO) << ((cc.leader_ == nullptr) ? "leader empty" : cc.leader_->print());
        // LOG(INFO) << ((cc.value_expr_ == nullptr) ? "value_expr empty" : cc.value_expr_->print());
        // LOG(INFO) << ((cc.value_phi_ == nullptr) ? "value_phi empty" : cc.value_phi_->print());
        ss << "\nindex: " << cc.index_ << "\nleader: " << cc.leader_->print()
           << "\nvalue phi: " << (cc.value_phi_ ? cc.value_phi_->print() : "nullptr"s)
           << "\nvalue expr: " << (cc.value_expr_ ? cc.value_expr_->print() : "nullptr"s)
           << "\nvalue bin: " << (cc.value_bin ? cc.value_bin->print() : "nullptr"s)
           << "\nvalue cmp: " << (cc.value_cmp ? cc.value_cmp->print() : "nullptr"s)
           << "\nvalue const: " << (cc.value_const_ ? cc.value_const_->print() : "nullptr"s)
           << "\nvalue fcmp: " << (cc.value_fcmp ? cc.value_fcmp->print() : "nullptr"s)
           << "\nvalue func: " << (cc.value_func ? cc.value_func->print() : "nullptr"s)
           << "\nvalue gep: " << (cc.value_gep ? cc.value_gep->print() : "nullptr"s)
           << "\nvalue trans: " << (cc.value_trans ? cc.value_trans->print() : "nullptr"s)
           << "\nvalue var: " << (cc.value_var ? cc.value_var->print() : "nullptr"s)
           << "\nmembers: {";
        for (const auto &member : cc.members_)
        {
            ss << member->print() << "; ";
        }
        ss << "}\n";
        return ss.str();
    }

    static std::string dump_cc_json(const CongruenceClass &cc)
    {
        std::string json;
        json += "[";
        for (auto *member : cc.members_)
        {
            if (dynamic_cast<Constant *>(member) != nullptr)
            {
                json += member->print() + ", ";
            }
            else
            {
                json += "\"%" + member->get_name() + "\", ";
            }
        }
        json += "]";
        return json;
    }

    static std::string dump_partition_json(const GVN::partitions &p)
    {
        std::string json;
        json += "[";
        for (const auto &cc : p)
        {
            json += dump_cc_json(*cc) + ", ";
        }
        json += "]";
        return json;
    }

    static std::string dump_bb2partition(const std::map<BasicBlock *, GVN::partitions> &map)
    {
        std::string json;
        json += "{";
        for (auto [bb, p] : map)
        {
            json += "\"" + bb->get_name() + "\": " + dump_partition_json(p) + ",";
        }
        json += "}";
        return json;
    }

    // logging utility for you
    static void print_partitions(const GVN::partitions &p)
    {
        if (p.empty())
        {
            LOG_DEBUG << "empty partitions\n";
            return;
        }
        std::string log;
        for (const auto &cc : p)
        {
            log += print_congruence_class(*cc);
        }
        LOG_DEBUG << log; // please don't use std::cout
    }
} // namespace utils

GVN::partitions
GVN::join(const partitions &P1, const partitions &P2, BasicBlock *lbb, BasicBlock *rbb)
{
    // TODO: do intersection pair-wise
    if (P1.empty() || P2.empty())
    {
        return {};
    }
    for (const auto &cc : P1)
    {
        if (cc->index_ == 0)
            return P2;
    }
    for (const auto &cc : P2)
    {
        if (cc->index_ == 0)
            return P1;
    }
    partitions p = {};
    for (auto &cc1 : P1)
    {
        for (auto &cc2 : P2)
        {
            auto Ck = intersect(cc1, cc2, lbb, rbb);
            if (!Ck->members_.empty())
                p.emplace(Ck);
        }
    }
    return p;
}

std::shared_ptr<CongruenceClass> GVN::intersect(const std::shared_ptr<CongruenceClass> &Ci,
                                                const std::shared_ptr<CongruenceClass> &Cj,
                                                BasicBlock *lbb,
                                                BasicBlock *rbb)
{
    // TODO: do intersection
    shared_ptr<CongruenceClass> cc;
    if (Ci->value_expr_ == Cj->value_expr_)
    {
        cc = createCongruenceClass(next_value_number_++);
        // LOG(INFO) << next_value_number_;
        cc->value_expr_ = Ci->value_expr_;
        cc->leader_ = Ci->leader_;
        switch (Ci->value_expr_->get_expr_type())
        {
        case Expression::e_const:
        {
            cc->value_const_ = std::dynamic_pointer_cast<ConstantExpression>(Ci->value_expr_);
            break;
        }
        case Expression::e_bin:
        {
            cc->value_bin = std::dynamic_pointer_cast<BinaryExpression>(Ci->value_expr_);
            break;
        }
        case Expression::e_phi:
        {
            cc->value_phi_ = std::dynamic_pointer_cast<PhiExpression>(Ci->value_expr_);
            break;
        }
        case Expression::e_var:
        {
            cc->value_var = std::dynamic_pointer_cast<VarExpression>(Ci->value_expr_);
            break;
        }
        case Expression::e_func:
        {
            cc->value_func = std::dynamic_pointer_cast<FuncExpression>(Ci->value_expr_);
            break;
        }
        case Expression::e_cmp:
        {
            cc->value_cmp = std::dynamic_pointer_cast<CmpExpression>(Ci->value_expr_);
            break;
        }
        case Expression::e_fcmp:
        {
            cc->value_fcmp = std::dynamic_pointer_cast<FCmpExpression>(Ci->value_expr_);
            break;
        }
        case Expression::e_trans:
        {
            cc->value_trans = std::dynamic_pointer_cast<TransExpression>(Ci->value_expr_);
            break;
        }
        case Expression::e_gep:
        {
            cc->value_gep = std::dynamic_pointer_cast<GepExpression>(Ci->value_expr_);
            break;
        }
        default:
            break;
        }
    }
    else
    {
        cc = createCongruenceClass(0);
    }
    for (auto &cc1 : Ci->members_)
    {
        for (auto &cc2 : Cj->members_)
        {
            if (cc1 == cc2)
            {
                cc->members_.insert(cc1);
            }
        }
    }
    if ((!cc->members_.empty()) && (cc->index_ == 0))
    {
        cc->index_ = next_value_number_++;
        // LOG(INFO) << next_value_number_;
        auto ve_phi = PhiExpression::create(*(cc->members_.begin()), Ci->value_expr_, Cj->value_expr_);
        cc->value_expr_ = ve_phi;
        cc->value_phi_ = ve_phi;
        cc->leader_ = *cc->members_.begin();
    }
    return cc;
}

void GVN::detectEquivalences(llvm::ilist<GlobalVariable> *global_list)
{
    // create top
    auto top = std::set<shared_ptr<CongruenceClass>>();
    top.insert(createCongruenceClass(0));
    bool changed = false;
    // initialize pout with top
    // foreach basic block do
    //  POUT[B] = Top
    for (auto &bb : func_->get_basic_blocks())
    {
        pout_[&bb] = top;
    }
    // iterate until convergence
    BasicBlock *entry = func_->get_entry_block();
    pin_[entry] = {};

    // TODO: you might need to do something here

    // 对于没有第一个块，需要将函数调用的参数创建等价类
    // 对于全局变量创建等价类
    // for (auto &instr : entry->get_instructions())
    // {
    //     p = transferFunction(&instr, &instr, p);
    // }
    LOG(INFO) << entry->print();
    LOG(INFO) << entry->get_name();
    utils::print_partitions(pout_[entry]);
    bool first = true;
    do
    {
        changed = false;
        first = true;
        for (auto &bb : func_->get_basic_blocks())
        {
            GVN::partitions p = {};
            // TODO: compute p (pin of bb) according to predecessors of bb

            // get pin[B]

            // if B has two predecessors then
            //  PIN[B] = join(POUT[P1], POUT[P2])
            auto pre_bb = bb.get_pre_basic_blocks();
            if (pre_bb.size() == 2)
            {
                pin_[&bb] = join(pout_[pre_bb.front()], pout_[pre_bb.back()], pre_bb.front(), pre_bb.back());
            }
            // else
            // PIN[B] = POUT[P]
            if (pre_bb.size() == 1)
            {
                pin_[&bb] = clone(pout_[pre_bb.front()]);
            }

            if (pre_bb.empty())
                pin_[&bb] = {};

            p = clone(pin_[&bb]);

            if (first)
            {
                first = false;
                auto func = entry->get_parent();
                for (auto it = func->arg_begin(); it != func->arg_end(); it++)
                {
                    Value &arg = *it;
                    auto newcc = std::make_shared<CongruenceClass>(next_value_number_++);
                    // LOG(INFO) << next_value_number_;
                    auto var_expr = VarExpression::create(&arg);
                    newcc->leader_ = &arg;
                    newcc->members_.insert(&arg);
                    newcc->value_expr_ = var_expr;
                    newcc->value_var = var_expr;
                    pin_[entry].emplace(newcc);
                }
                for (auto &var : *global_list)
                {
                    auto newcc = std::make_shared<CongruenceClass>(next_value_number_++);
                    // LOG(INFO) << next_value_number_;
                    auto var_expr = VarExpression::create(&var);
                    newcc->leader_ = &var;
                    newcc->members_.insert(&var);
                    newcc->value_expr_ = var_expr;
                    newcc->value_var = var_expr;
                    pin_[entry].emplace(newcc);
                }
                GVN::partitions p = pin_[entry];
            }
            // iterate through all instructions in the block
            LOG(INFO) << bb.get_name();
            for (auto &instr : bb.get_instructions())
            {
                LOG(INFO) << instr.print();
                // utils::print_partitions(p);
                p = transferFunction(&instr, &instr, p);
                // utils::print_partitions(p);
            }
            LOG(INFO) << bb.get_name() << " finished";
            LOG(INFO) << "start copy statment";
            // check changes in pout
            // copy 操作，识别当前基本块的后继bb中的phi指令，做copy操作
            for (auto &succ_bb : bb.get_succ_basic_blocks())
            {
                for (auto &instr : succ_bb->get_instructions())
                {
                    if (instr.is_phi())
                    {
                        Value *op;
                        bool judge = true;
                        for (auto &i : p)
                        {
                            i->members_.erase(&instr);
                        }
                        for (auto it = p.begin(); it != p.end();)
                        {
                            if ((*it)->members_.empty())
                                it = p.erase(it);
                            else
                                it++;
                        }
                        if (instr.get_operand(1) == &bb)
                            op = instr.get_operand(0);
                        else
                            op = instr.get_operand(2);
                        // 当前基本块分区中存在 phi指令相应变量的等价类，将phi指令作为成员添加到这个等价类中
                        for (auto &i : p)
                        {
                            for (auto &j : i->members_)
                            {
                                if (j == op)
                                {
                                    i->members_.insert(&instr);
                                    judge = false;
                                    break;
                                }
                            }
                        }
                        // 不存在phi指令对应变量的等价类
                        if (judge)
                        {
                            // 存疑
                            LOG(INFO) << op->print() << " -----------------------";
                            // auto op_type = dynamic_cast<Instruction *>(op);
                            // if (op_type->isBinary())
                            // {
                            //     auto instr_op = op_type->get_instr_type();
                            //     auto cons_op = BinaryExpression::create();
                            //     for (auto &i : p)
                            //     {
                            //         if ((i->value_const_ != nullptr) && (i->value_const_->equiv(cons_op.get())))
                            //         {
                            //             i->members_.insert(&instr);
                            //             judge = false;
                            //             break;
                            //         }
                            //     }
                            //     if (judge)
                            //     {
                            //         auto cc = createCongruenceClass(next_value_number_++);
                            //         LOG(INFO) << next_value_number_;
                            //         cc->leader_ = dynamic_cast<Constant *>(op);
                            //         cc->members_.insert(&instr);
                            //         cc->value_expr_ = cons_op;
                            //         cc->value_const_ = cons_op;
                            //         p.insert(cc);
                            //     }
                            // }
                            // else if (op_type->is_fcmp())
                            // {
                            // }
                            // else if (op_type->is_cmp())
                            // {
                            // }
                            // else if (op_type->is_call())
                            // {
                            // }
                            // else if (op_type->is_fp2si() || op_type->is_si2fp() || op_type->is_zext())
                            // {
                            // }
                            // else if (op_type->is_phi())
                            // {
                            // }
                            // else if (op_type->is_gep())
                            // {
                            // }
                            // else
                            // {
                            // }
                            auto cons_op = ConstantExpression::create(dynamic_cast<Constant *>(op));
                            for (auto &i : p)
                            {
                                if ((i->value_const_ != nullptr) && (i->value_const_->equiv(cons_op.get())))
                                {
                                    i->members_.insert(&instr);
                                    judge = false;
                                    break;
                                }
                            }
                            if (judge)
                            {
                                auto cc = createCongruenceClass(next_value_number_++);
                                // LOG(INFO) << next_value_number_;
                                cc->leader_ = dynamic_cast<Constant *>(op);
                                cc->members_.insert(&instr);
                                cc->value_expr_ = cons_op;
                                cc->value_const_ = cons_op;
                                p.insert(cc);
                            }
                        }
                    }
                    else
                        break;
                }
            }
            LOG(INFO) << "finish copy statement";
            LOG(INFO) << "now the partitions is ";
            utils::print_partitions(p);
            LOG(INFO) << "the previous partitions is ";
            utils::print_partitions(pout_[&bb]);
            if (p != pout_[&bb])
            {
                changed = true;
            }
            pout_[&bb] = std::move(p);
        }
    } while (changed);
}
// 计算指令 x=e 对应值表达式
// 对于常量，值表达式就是其本身
// 对于变量，值表达式就是该变量对应的值编号
shared_ptr<Expression> GVN::valueExpr(partitions &pout, Value *v)
{
    // TODO: do something here for const propagation and other cases

    auto instr = dynamic_cast<Instruction *>(v);
    if (instr == nullptr or instr->is_void())
    {
        return nullptr;
    }
    if (instr->isBinary())
    {
        return bin_ValueExpr(instr, pout);
    }
    else if (instr->is_call())
    {
        return func_ValueExpr(instr, pout);
    }
    else if (instr->is_cmp())
    {
        return cmp_ValueExpr(instr, pout);
    }
    else if (instr->is_fcmp())
    {
        return fcmp_ValueExpr(instr, pout);
    }
    else if (instr->is_si2fp() || instr->is_fp2si() || instr->is_zext())
    {
        return trans_ValueExpr(instr, pout);
    }
    else if (instr->is_gep())
    {
        return gep_ValueExpr(instr, pout);
    }
    return VarExpression::create(instr);

    // TODO: create value expression for instr according to its type
    // Hint: you might need to use valueExpr recursively
    // Although TA's implementation use Expression as value expression, you can design your own
    return nullptr;
}

std::shared_ptr<GVNExpression::Expression> GVN::bin_ValueExpr(Instruction *instr, partitions &pout)
{
    auto operands = instr->get_operands();
    auto op1 = dynamic_cast<Constant *>(operands[0]);
    auto op2 = dynamic_cast<Constant *>(operands[1]);
    // op1 和 op2两个操作数都是常量
    if (op1 != nullptr && op2 != nullptr)
    {
        auto const_result = folder_->compute(instr, op1, op2);
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // 出现变量，先去等价类中寻找是否存在相关值编号
    std::shared_ptr<Expression> op1_expr = nullptr;
    std::shared_ptr<Expression> op2_expr = nullptr;
    for (auto &cc : pout)
    {
        for (auto &mem : cc->members_)
        {
            if (mem == operands[0])
                op1_expr = cc->value_expr_;
            if (mem == operands[1])
                op2_expr = cc->value_expr_;
        }
    }
    // op1为常数，op2存在于某个等价类
    if ((op1 != nullptr) && (op2_expr != nullptr) && (op2_expr->get_expr_type() == Expression::e_const))
    {
        auto const_result = folder_->compute(instr, op1, std::dynamic_pointer_cast<ConstantExpression>(op2_expr)->get_const());
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // op2为常数，op1存在于某个等价类
    if ((op1_expr != nullptr) && (op1_expr->get_expr_type() == Expression::e_const) && (op2 != nullptr))
    {
        auto const_result = folder_->compute(instr, std::dynamic_pointer_cast<ConstantExpression>(op1_expr)->get_const(), op2);
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // op1, op2 都存在于某个等价类
    if ((op1_expr != nullptr) && (op2_expr != nullptr) && (op1_expr->get_expr_type() == Expression::e_const) && (op2_expr->get_expr_type() == Expression::e_const))
    {
        auto const_result = folder_->compute(instr, std::dynamic_pointer_cast<ConstantExpression>(op1_expr)->get_const(), std::dynamic_pointer_cast<ConstantExpression>(op2_expr)->get_const());
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // op1,op2不为常量，且不在某个等价类中
    if ((op1 == nullptr) && (op1_expr == nullptr))
        op1_expr = VarExpression::create(operands[0]);
    if ((op2 == nullptr) && (op2_expr == nullptr))
        op2_expr = VarExpression::create(operands[1]);
    if (op1 != nullptr)
        op1_expr = ConstantExpression::create(op1);
    if (op2 != nullptr)
        op2_expr = ConstantExpression::create(op2);
    return BinaryExpression::create(instr->get_instr_type(), op1_expr, op2_expr);
}
std::shared_ptr<GVNExpression::Expression> GVN::func_ValueExpr(Instruction *instr, partitions &pout) const
{
    std::vector<std::shared_ptr<Expression>> operands{};
    for (int i = 1; i < instr->get_num_operand(); i++)
    {
        if (dynamic_cast<Constant *>(instr->get_operand(i)) != nullptr)
        {
            auto const_op = ConstantExpression::create(dynamic_cast<Constant *>(instr->get_operand(i)));
            operands.push_back(const_op);
        }
        else
        {
            for (auto &cc : pout)
            {
                for (auto &mem : cc->members_)
                {
                    if (mem == (instr->get_operand(i)))
                    {
                        operands.push_back(cc->value_expr_);
                        break;
                    }
                }
            }
        }
    }
    return FuncExpression::create(instr->get_operand(0), operands, func_info_->is_pure_function(dynamic_cast<Function *>(instr->get_operand(0))), instr);
}
std::shared_ptr<GVNExpression::Expression> GVN::cmp_ValueExpr(Instruction *instr, partitions &pout) const
{
    auto operands = instr->get_operands();
    auto op1 = dynamic_cast<Constant *>(operands[0]);
    auto op2 = dynamic_cast<Constant *>(operands[1]);
    // op1 和 op2都是常量
    if ((op1 != nullptr) && (op2 != nullptr))
    {
        auto const_result = folder_->compute(instr, op1, op2);
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // 在等价类中查找op1和op2
    std::shared_ptr<Expression> op1_expr = nullptr;
    std::shared_ptr<Expression> op2_expr = nullptr;
    for (auto &cc : pout)
    {
        for (auto &mem : cc->members_)
        {
            if (mem == operands[0])
                op1_expr = cc->value_expr_;
            if (mem == operands[1])
                op2_expr = cc->value_expr_;
        }
    }
    // op1为常数，op2存在于某个等价类
    if ((op1 != nullptr) && (op2_expr != nullptr) && (op2_expr->get_expr_type() == Expression::e_const))
    {
        auto const_result = folder_->compute(instr, op1, std::dynamic_pointer_cast<ConstantExpression>(op2_expr)->get_const());
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // op2为常数，op1存在于某个等价类
    if ((op1_expr != nullptr) && (op1_expr->get_expr_type() == Expression::e_const) && (op2 != nullptr))
    {
        auto const_result = folder_->compute(instr, std::dynamic_pointer_cast<ConstantExpression>(op1_expr)->get_const(), op2);
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // op1, op2 都存在于某个等价类
    if ((op1_expr != nullptr) && (op2_expr != nullptr) && (op1_expr->get_expr_type() == Expression::e_const) && (op2_expr->get_expr_type() == Expression::e_const))
    {
        auto const_result = folder_->compute(instr, std::dynamic_pointer_cast<ConstantExpression>(op1_expr)->get_const(), std::dynamic_pointer_cast<ConstantExpression>(op2_expr)->get_const());
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    if (op1_expr == nullptr && op1 == nullptr)
        op1_expr = VarExpression::create(operands[0]);
    if (op2 == nullptr && op2_expr == nullptr)
        op2_expr = VarExpression::create(operands[1]);
    if (op1 != nullptr)
        op1_expr = ConstantExpression::create(op1);
    if (op2 != nullptr)
        op2_expr = ConstantExpression::create(op2);
    return CmpExpression::create(instr->get_instr_type(), op1_expr, op2_expr);
}
std::shared_ptr<GVNExpression::Expression> GVN::fcmp_ValueExpr(Instruction *instr, partitions &pout)
{
    auto operands = instr->get_operands();
    auto op1 = dynamic_cast<Constant *>(operands[0]);
    auto op2 = dynamic_cast<Constant *>(operands[1]);
    // op1 和 op2都是常量
    if ((op1 != nullptr) && (op2 != nullptr))
    {
        auto const_result = folder_->compute(instr, op1, op2);
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // 在等价类中查找op1和op2
    std::shared_ptr<Expression> op1_expr = nullptr;
    std::shared_ptr<Expression> op2_expr = nullptr;
    for (auto &cc : pout)
    {
        for (auto &mem : cc->members_)
        {
            if (mem == operands[0])
                op1_expr = cc->value_expr_;
            if (mem == operands[1])
                op2_expr = cc->value_expr_;
        }
    }
    // op1为常数，op2存在于某个等价类
    if ((op1 != nullptr) && (op2_expr != nullptr) && (op2_expr->get_expr_type() == Expression::e_const))
    {
        auto const_result = folder_->compute(instr, op1, std::dynamic_pointer_cast<ConstantExpression>(op2_expr)->get_const());
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // op2为常数，op1存在于某个等价类
    if ((op1_expr != nullptr) && (op1_expr->get_expr_type() == Expression::e_const) && (op2 != nullptr))
    {
        auto const_result = folder_->compute(instr, std::dynamic_pointer_cast<ConstantExpression>(op1_expr)->get_const(), op2);
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    // op1, op2 都存在于某个等价类
    if ((op1_expr != nullptr) && (op2_expr != nullptr) && (op1_expr->get_expr_type() == Expression::e_const) && (op2_expr->get_expr_type() == Expression::e_const))
    {
        auto const_result = folder_->compute(instr, std::dynamic_pointer_cast<ConstantExpression>(op1_expr)->get_const(), std::dynamic_pointer_cast<ConstantExpression>(op2_expr)->get_const());
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    if (op1_expr == nullptr && op1 == nullptr)
        op1_expr = VarExpression::create(operands[0]);
    if (op2 == nullptr && op2_expr == nullptr)
        op2_expr = VarExpression::create(operands[1]);
    if (op1 != nullptr)
        op1_expr = ConstantExpression::create(op1);
    if (op2 != nullptr)
        op2_expr = ConstantExpression::create(op2);
    return FCmpExpression::create(instr->get_instr_type(), op1_expr, op2_expr);
}
std::shared_ptr<GVNExpression::Expression> GVN::trans_ValueExpr(Instruction *instr, partitions &pout) const
{
    auto const_op = dynamic_cast<Constant *>(instr->get_operand(0));
    if (const_op != nullptr)
    {
        auto const_result = folder_->compute(instr, const_op);
        auto const_exp = ConstantExpression::create(const_result);
        return const_exp;
    }
    std::shared_ptr<Expression> operand = nullptr;
    for (auto &cc : pout)
    {
        for (auto &mem : cc->members_)
            if (mem == instr->get_operand(0))
                operand = cc->value_expr_;
    }
    if ((operand != nullptr) && (operand->get_expr_type() == Expression::e_const))
    {
        auto const_result = folder_->compute(instr, std::dynamic_pointer_cast<ConstantExpression>(operand)->get_const());
        auto const_expr = ConstantExpression::create(const_result);
        return const_expr;
    }
    if ((const_op == nullptr) && (operand == nullptr))
        operand = VarExpression::create(instr);
    return TransExpression::create(instr->get_instr_type(), operand);
}
std::shared_ptr<GVNExpression::Expression> GVN::gep_ValueExpr(Instruction *instr, partitions &pout) const
{
    std::vector<std::shared_ptr<Expression>> operands{};
    for (int i = 0; i < instr->get_num_operand(); i++)
    {
        if (dynamic_cast<Constant *>(instr->get_operand(i)) != nullptr)
        {
            auto const_op = ConstantExpression::create(dynamic_cast<Constant *>(instr->get_operand(i)));
            operands.push_back(const_op);
        }
        else
        {
            for (auto &cc : pout)
            {
                for (auto &mem : cc->members_)
                {
                    if (mem == (instr->get_operand(i)))
                    {
                        operands.push_back(cc->value_expr_);
                        break;
                    }
                }
            }
        }
    }
    auto getpInstr = dynamic_cast<GetElementPtrInst *>(instr);
    return GepExpression::create(getpInstr->get_element_type(), operands);
}

GVN::partitions GVN::transferFunction(Instruction *x, Value *e, const partitions &pin)
{
    partitions pout = clone(pin);

    if (x->is_void() || x->is_phi())
    {
        return pout;
    }

    // TODO: remove x from any cc which contains x

    for (auto &cc : pout)
    {
        cc->members_.erase(x); // x not in cc 不会有任何操作，所以不需要单独判断x是否在c中
    }
    // 将删除x后空的等价类从partition中删除
    for (auto cc = pout.begin(); cc != pout.end();)
    {
        if ((*cc)->members_.empty())
            cc = pout.erase(cc);
        else
            cc++;
    }

    auto ve = valueExpr(pout, dynamic_cast<Instruction *>(e));
    auto vpf = valuePhiFunc(ve, pin);
    bool judge = false;

    if (vpf != nullptr)
        ve = vpf;

    if (ve != nullptr)
    {
        for (auto &cc : pout)
        {
            switch (ve->get_expr_type())
            {
            case Expression::e_const:
            {
                auto ve_const = std::dynamic_pointer_cast<ConstantExpression>(ve);
                if ((cc->value_const_ != nullptr) && (cc->value_const_->equiv(ve_const.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            case Expression::e_bin:
            {
                auto ve_bin = std::dynamic_pointer_cast<BinaryExpression>(ve);
                if ((cc->value_bin != nullptr) && (cc->value_bin->equiv(ve_bin.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            case Expression::e_phi:
            {
                auto ve_phi = std::dynamic_pointer_cast<PhiExpression>(ve);
                if ((cc->value_phi_ != nullptr) && (cc->value_phi_->equiv(ve_phi.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            case Expression::e_var:
            {
                auto ve_var = std::dynamic_pointer_cast<VarExpression>(ve);
                if ((cc->value_var != nullptr) && (cc->value_var->equiv(ve_var.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            case Expression::e_func:
            {
                auto ve_func = std::dynamic_pointer_cast<FuncExpression>(ve);
                if ((cc->value_func != nullptr) && (cc->value_func->equiv(ve_func.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            case Expression::e_cmp:
            {
                auto ve_cmp = std::dynamic_pointer_cast<CmpExpression>(ve);
                if ((cc->value_cmp != nullptr) && (cc->value_cmp->equiv(ve_cmp.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            case Expression::e_fcmp:
            {
                auto ve_fcmp = std::dynamic_pointer_cast<FCmpExpression>(ve);
                if ((cc->value_fcmp != nullptr) && (cc->value_fcmp->equiv(ve_fcmp.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            case Expression::e_trans:
            {
                auto ve_trans = std::dynamic_pointer_cast<TransExpression>(ve);
                if ((cc->value_trans != nullptr) && (cc->value_trans->equiv(ve_trans.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            case Expression::e_gep:
            {
                auto ve_gep = std::dynamic_pointer_cast<GepExpression>(ve);
                if ((cc->value_gep != nullptr) && (cc->value_gep->equiv(ve_gep.get())))
                {
                    judge = true;
                    cc->members_.insert(x);
                }
                break;
            }
            default:
                break;
            }
        }
    }
    // vn是新值编号，添加新的等价类
    // POUT[s] = POUT[s] U {vn, x, ve : vpf}
    if (!judge)
    {
        auto cc = createCongruenceClass(next_value_number_++);
        // LOG(INFO) << next_value_number_;
        cc->members_ = {x};
        cc->value_expr_ = ve;
        // LOG(INFO) << cc->value_expr_->print();
        // LOG(INFO) << ve->get_expr_type();
        switch (ve->get_expr_type())
        {
        case Expression::e_const:
        {
            auto ve_const = std::dynamic_pointer_cast<ConstantExpression>(ve);
            cc->leader_ = ve_const->get_const();
            cc->value_const_ = ve_const;
            break;
        }
        case Expression::e_bin:
        {
            auto ve_bin = std::dynamic_pointer_cast<BinaryExpression>(ve);
            cc->leader_ = x;
            cc->value_bin = ve_bin;
            break;
        }
        case Expression::e_phi:
        {
            cc->value_phi_ = std::dynamic_pointer_cast<PhiExpression>(ve);
            cc->leader_ = x;
            break;
        }
        case Expression::e_var:
        {
            cc->value_var = std::dynamic_pointer_cast<VarExpression>(ve);
            cc->leader_ = x;
            break;
        }
        case Expression::e_func:
        {
            cc->value_func = std::dynamic_pointer_cast<FuncExpression>(ve);
            cc->leader_ = x;
            break;
        }
        case Expression::e_cmp:
        {
            cc->value_cmp = std::dynamic_pointer_cast<CmpExpression>(ve);
            cc->leader_ = x;
            break;
        }
        case Expression::e_fcmp:
        {
            cc->value_fcmp = std::dynamic_pointer_cast<FCmpExpression>(ve);
            cc->leader_ = x;
            break;
        }
        case Expression::e_trans:
        {
            cc->value_trans = std::dynamic_pointer_cast<TransExpression>(ve);
            cc->leader_ = x;
            break;
        }
        case Expression::e_gep:
        {
            cc->value_gep = std::dynamic_pointer_cast<GepExpression>(ve);
            cc->leader_ = x;
            break;
        }
        default:
            LOG(INFO) << "error type!";
            break;
        }
        // utils::print_congruence_class(*cc);
        pout.insert(cc);
    }

    // for (const auto &Ci : pout)
    // {
    //     // TODO: if ve or vpf is in Ci, insert x into Ci
    // }

    // auto cc = createCongruenceClass(next_value_number_++);
    // // TODO: you might need to do something here for const propagation

    // pout.insert(cc);

    return pout;
}

shared_ptr<Expression> GVN::valuePhiFunc(const shared_ptr<Expression> &ve, const partitions &P)
{

    auto binary_ve = std::dynamic_pointer_cast<BinaryExpression>(ve);
    if (binary_ve != nullptr and binary_ve->both_phi())
    {
        // TODO: if ve is binary expression and both of its operands are phi expression, return phi
        // expression according to the algorithm
        Instruction::OpID op = binary_ve->get_op(); 

        auto l_phi = std::dynamic_pointer_cast<PhiExpression>(binary_ve->get_lhs());
        auto r_phi = std::dynamic_pointer_cast<PhiExpression>(binary_ve->get_rhs());
        auto l_instr = dynamic_cast<Instruction *>(l_phi->get_instr());
        auto r_instr = dynamic_cast<Instruction *>(r_phi->get_instr());

        shared_ptr<Expression> l_expr;
        if (((l_phi->get_lhs_())->get_expr_type() == Expression::e_const) && ((r_phi->get_lhs_())->get_expr_type() == Expression::e_const))
        {
            auto l_op = folder_->compute(op, std::dynamic_pointer_cast<ConstantExpression>(l_phi->get_lhs_())->get_const(), std::dynamic_pointer_cast<ConstantExpression>(r_phi->get_lhs_())->get_const());
            l_expr = ConstantExpression::create(l_op);
        }
        else
        {
            l_expr = BinaryExpression::create(op, l_phi->get_lhs_(), r_phi->get_lhs_());
        }
        auto vi = getVN(pout_[dynamic_cast<BasicBlock *>(l_instr->get_operand(1))], l_expr);
        if (vi == nullptr)
            vi = valuePhiFunc(l_expr, pout_[dynamic_cast<BasicBlock *>(l_instr->get_operand(1))]);

        shared_ptr<Expression> r_expr;
        if (((l_phi->get_rhs_())->get_expr_type() == Expression::e_const) && ((r_phi->get_rhs_())->get_expr_type() == Expression::e_const))
        {
            auto r_op = folder_->compute(op, std::dynamic_pointer_cast<ConstantExpression>(l_phi->get_rhs_())->get_const(), std::dynamic_pointer_cast<ConstantExpression>(r_phi->get_rhs_())->get_const());
            r_expr = ConstantExpression::create(r_op);
        }
        else
        {
            r_expr = BinaryExpression::create(op, l_phi->get_rhs_(), r_phi->get_rhs_());
        }
        auto vj = getVN(pout_[dynamic_cast<BasicBlock *>(r_instr->get_operand(1))], r_expr);
        if (vj == nullptr)
            vj = valuePhiFunc(r_expr, pout_[dynamic_cast<BasicBlock *>(r_instr->get_operand(1))]);

        if (vi != nullptr && vj != nullptr)
            return PhiExpression::create(l_instr, vi, vj);
        else
            return nullptr;
    }
    return nullptr;
}

shared_ptr<Expression> GVN::getVN(const partitions &pout, shared_ptr<Expression> ve)
{
    // TODO:
    if (ve == nullptr)
        return nullptr;
    for (auto it = pout.begin(); it != pout.end(); it++)
    {
        if ((*it)->value_expr_ and *(*it)->value_expr_ == *ve)
            return (*it)->value_expr_;
    }
    return nullptr;
}

void GVN::initPerFunction()
{
    next_value_number_ = 1;
    pin_.clear();
    pout_.clear();
}

void GVN::replace_cc_members()
{
    for (auto &[_bb, part] : pout_)
    {
        auto *bb = _bb; // workaround: structured bindings can't be captured in C++17
        for (const auto &cc : part)
        {
            if (cc->index_ == 0)
            {
                continue;
            }
            // if you are planning to do constant propagation, leaders should be set to constant at
            // some point
            for (const auto &member : cc->members_)
            {
                bool member_is_phi = dynamic_cast<PhiInst *>(member) != nullptr;
                bool value_phi = cc->value_phi_ != nullptr;
                if (member != cc->leader_ and (value_phi or !member_is_phi))
                {
                    // only replace the members if users are in the same block as bb
                    member->replace_use_with_if(cc->leader_, [bb](Use *use)
                                                {
                        auto *user = use->val_;
                        if (auto *instr = dynamic_cast<Instruction *>(user)) {
                            auto *parent = instr->get_parent();
                            auto &bb_pre = parent->get_pre_basic_blocks();
                            if (instr->is_phi()) { // as copy stmt, the phi belongs to this block
                                return std::find(bb_pre.begin(), bb_pre.end(), bb) != bb_pre.end();
                            }
                            return parent == bb;
                        }
                        return false; });
                }
            }
        }
    }
}

// top-level function, done for you
void GVN::run()
{
    m_->set_print_name();
    std::ofstream gvn_json;
    // 是否 生成 json文件，这里可以默认不生成
    if (dump_json_)
    {
        gvn_json.open("gvn.json", std::ios::out);
        gvn_json << "[";
    }
    // folder_是一个辅助计算类的定义，用于计算各种常量表达式的值
    folder_ = std::make_unique<ConstFolder>(m_);
    // 纯函数分析pass
    func_info_ = std::make_unique<FuncInfo>(m_);
    func_info_->run();
    // 死代码删除pass，这里用来删除一些未定义的phi指令
    dce_ = std::make_unique<DeadCode>(m_);
    dce_->run(); // let dce take care of some dead phis with undef

    for (auto &f : m_->get_functions())
    {
        if (f.get_basic_blocks().empty())
        {
            continue;
        }
        func_ = &f;
        initPerFunction();
        LOG_INFO << "Processing " << f.get_name();
        detectEquivalences(&m_->get_global_variable());
        // 以下都是打印辅助信息。打印每个函数的入口和出口的partitions的情况
        // 我们的gvn算法是以函数为粒度的分析和删除
        // LOG_INFO << "===============pin=========================\n";
        // for (auto &[bb, part] : pin_)
        // {
        //     LOG_INFO << "\n===============bb: " << bb->get_name()
        //              << "=========================\npartitionIn: ";
        //     for (const auto &cc : part)
        //     {
        //         LOG_DEBUG << f.get_name();
        //         LOG_INFO << utils::print_congruence_class(*cc);
        //     }
        // }
        // LOG_INFO << "\n===============pout=========================\n";
        // for (auto &[bb, part] : pout_)
        // {
        //     LOG_INFO << "\n=====bb: " << bb->get_name() << "=====\npartitionOut: ";
        //     for (const auto &cc : part)
        //     {
        //         LOG_DEBUG << f.get_name();
        //         LOG_INFO << utils::print_congruence_class(*cc);
        //     }
        // }
        // 如果需要生成json，相应逻辑
        if (dump_json_)
        {
            gvn_json << "{\n\"function\": ";
            gvn_json << "\"" << f.get_name() << "\", ";
            gvn_json << "\n\"pout\": " << utils::dump_bb2partition(pout_);
            gvn_json << "},";
        }
        // 进行代码替换
        replace_cc_members(); // don't delete instructions, just replace them
    }
    dce_->run(); // let dce do that for us
    if (dump_json_)
    {
        gvn_json << "]";
    }
}

template <typename T>
static bool equiv_as(const Expression &lhs, const Expression &rhs)
{
    // we use static_cast because we are very sure that both operands are actually T, not other
    // types.
    return static_cast<const T *>(&lhs)->equiv(static_cast<const T *>(&rhs));
}

bool GVNExpression::operator==(const Expression &lhs, const Expression &rhs)
{
    if (lhs.get_expr_type() != rhs.get_expr_type())
    {
        return false;
    }
    switch (lhs.get_expr_type())
    {
    case Expression::e_bin:
        return equiv_as<BinaryExpression>(lhs, rhs);
    case Expression::e_const:
        return equiv_as<ConstantExpression>(lhs, rhs);
    case Expression::e_phi:
        return equiv_as<PhiExpression>(lhs, rhs);
    case Expression::e_var:
        return equiv_as<VarExpression>(lhs, rhs);
    case Expression::e_func:
        return equiv_as<FuncExpression>(lhs, rhs);
    case Expression::e_cmp:
        return equiv_as<CmpExpression>(lhs, rhs);
    case Expression::e_fcmp:
        return equiv_as<FCmpExpression>(lhs, rhs);
    case Expression::e_trans:
        return equiv_as<TransExpression>(lhs, rhs);
    case Expression::e_gep:
        return equiv_as<GepExpression>(lhs, rhs);
    // TODO: add other cases here
    default:
        return false;
    }
}

bool GVNExpression::operator==(const shared_ptr<Expression> &lhs,
                               const shared_ptr<Expression> &rhs)
{
    return lhs and rhs and *lhs == *rhs;
}

GVN::partitions GVN::clone(const partitions &p)
{
    partitions data;
    for (const auto &cc : p)
    {
        data.insert(std::make_shared<CongruenceClass>(*cc));
    }
    return data;
}

bool operator==(const GVN::partitions &p1, const GVN::partitions &p2)
{
    if (p1.size() != p2.size())
    {
        return false;
    }
    for (auto it1 = p1.begin(), it2 = p2.begin(); it1 != p1.end(); ++it1, ++it2)
    {
        if (!(**it1 == **it2))
        {
            return false;
        }
    }
    return true;
}

bool CongruenceClass::operator==(const CongruenceClass &other) const
{
    // TODO: you might need to change this function to fit your implementation
    return std::tie(leader_, members_) == std::tie(other.leader_, other.members_);
}
