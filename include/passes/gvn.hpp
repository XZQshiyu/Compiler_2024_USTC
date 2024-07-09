#pragma once
#include "BasicBlock.hpp"
#include "Constant.hpp"
#include "DeadCode.hpp"
#include "FuncInfo.hpp"
#include "Function.hpp"
#include "IRprinter.hpp"
#include "Instruction.hpp"
#include "Module.hpp"
#include "PassManager.hpp"
#include "Value.hpp"

#include <cstddef>
#include <cstdint>
#include <memory>
#include <optional>
#include <string>
#include <tuple>
#include <unordered_map>
#include <utility>
#include <vector>

namespace GVNExpression
{

    // fold the constant value 常量折叠
    class ConstFolder
    {
    public:
        explicit ConstFolder(Module *m) : module_(m) {}
        Constant *compute(Instruction *instr, Constant *value1, Constant *value2);
        Constant *compute(Instruction *instr, Constant *value1);
        Constant *compute(Instruction::OpID op, Constant *value1, Constant *value2);

    private:
        Module *module_;
    };

    /**
     * for constructor of class derived from `Expression`, we make it public
     * because `std::make_shared` needs the constructor to be publicly available,
     * but you should call the static factory method `create` instead the constructor itself to get
     * the desired data
     */
    class Expression
    {
    public:
        // TODO: you need to extend expression types according to testcases
        enum gvn_expr_t
        {
            e_const, // 常量
            e_bin,   // 算术型
            e_phi,   // phi 指令
            e_var,   // 普通变量
            e_func,  // 函数/纯函数
            e_cmp,
            e_fcmp,
            e_trans, // 类型转换，sitofp，fptosi
            e_gep
        };
        explicit Expression(gvn_expr_t t) : expr_type(t) {}
        virtual ~Expression() = default;
        virtual std::string print() = 0;
        // 返回值不应该被忽略
        [[nodiscard]] gvn_expr_t get_expr_type() const
        {
            return expr_type;
        }

    private:
        gvn_expr_t expr_type;
    };

    bool operator==(const std::shared_ptr<Expression> &lhs, const std::shared_ptr<Expression> &rhs);
    bool operator==(const GVNExpression::Expression &lhs, const GVNExpression::Expression &rhs);

    // arithmetic expression
    class BinaryExpression : public Expression
    {
    public:
        static std::shared_ptr<BinaryExpression> create(Instruction::OpID op,
                                                        std::shared_ptr<Expression> lhs,
                                                        std::shared_ptr<Expression> rhs)
        {
            return std::make_shared<BinaryExpression>(op, lhs, rhs);
        }
        std::string print() override
        {
            return "(" + print_instr_op_name(op_) + " " + lhs_->print() + " " + rhs_->print() + ")";
        }

        bool equiv(const BinaryExpression *other) const
        {
            return op_ == other->op_ and *lhs_ == *other->lhs_ and *rhs_ == *other->rhs_;
        }

        BinaryExpression(Instruction::OpID op,
                         std::shared_ptr<Expression> lhs,
                         std::shared_ptr<Expression> rhs)
            : Expression(e_bin), op_(op), lhs_(std::move(lhs)), rhs_(std::move(rhs)) {}

        bool both_phi()
        {
            // TODO: determine whether both operands are phi functions
            if (lhs_->get_expr_type() == e_phi && rhs_->get_expr_type() == e_phi)
                return true;
            return false;
        }

        std::shared_ptr<Expression> get_lhs()
        {
            return lhs_;
        }

        std::shared_ptr<Expression> get_rhs()
        {
            return rhs_;
        }

        Instruction::OpID get_op()
        {
            return op_;
        }

    private:
        Instruction::OpID op_;
        std::shared_ptr<Expression> lhs_, rhs_;
    };

    // TODO: add other expression subclasses here
    class ConstantExpression : public Expression
    {
    public:
        static std::shared_ptr<ConstantExpression> create(Constant *c) { return std::make_shared<ConstantExpression>(c); }
        virtual std::string print() { return c_->print(); }
        // we leverage the fact that constants in lightIR have unique addresses
        bool equiv(const ConstantExpression *other) const { return c_ == other->c_; }
        ConstantExpression(Constant *c) : Expression(e_const), c_(c) {}
        Constant *get_const() const { return c_; }

    private:
        Constant *c_;
    };

    class TransExpression : public Expression
    {
    public:
        static std::shared_ptr<TransExpression> create(Instruction::OpID op, std::shared_ptr<Expression> hs)
        {
            return std::make_shared<TransExpression>(op, hs);
        }
        virtual std::string print()
        {
            return "(" + print_instr_op_name(op_) + " " + hs_->print() + ")";
        }
        bool equiv(const TransExpression *other) const
        {
            if (op_ == other->op_ and *hs_ == *other->hs_)
                return true;
            else
                return false;
        }
        TransExpression(Instruction::OpID op, std::shared_ptr<Expression> hs)
            : Expression(e_trans), op_(op), hs_(hs) {}
        gvn_expr_t get_hs_type() { return hs_->get_expr_type(); }
        Instruction::OpID get_op() { return op_; }
        std::shared_ptr<Expression> get_hs() { return hs_; }

    private:
        Instruction::OpID op_;
        std::shared_ptr<Expression> hs_;
    };

    class FCmpExpression : public Expression
    {
    public:
        static std::shared_ptr<FCmpExpression> create(Instruction::OpID op, std::shared_ptr<Expression> lhs, std::shared_ptr<Expression> rhs)
        {
            return std::make_shared<FCmpExpression>(op, lhs, rhs);
        }
        virtual std::string print()
        {
            return "(fcmp " + lhs_->print() + " " + rhs_->print() + ")";
        }
        bool equiv(const FCmpExpression *other) const
        {
            if (op_ == other->op_ and *lhs_ == *other->lhs_ and *rhs_ == *other->rhs_)
                return true;
            else
                return false;
        }
        gvn_expr_t get_lhs_type() { return lhs_->get_expr_type(); }
        gvn_expr_t get_rhs_type() { return rhs_->get_expr_type(); }
        Instruction::OpID get_op() { return op_; }
        std::shared_ptr<Expression> get_lhs() { return lhs_; }
        std::shared_ptr<Expression> get_rhs() { return rhs_; }
        FCmpExpression(Instruction::OpID op, std::shared_ptr<Expression> lhs, std::shared_ptr<Expression> rhs)
            : Expression(e_fcmp), op_(op), lhs_(lhs), rhs_(rhs) {}

    private:
        Instruction::OpID op_;
        std::shared_ptr<Expression> lhs_, rhs_;
    };

    class CmpExpression : public Expression
    {
    public:
        static std::shared_ptr<CmpExpression> create(Instruction::OpID op, std::shared_ptr<Expression> lhs, std::shared_ptr<Expression> rhs)
        {
            return std::make_shared<CmpExpression>(op, lhs, rhs);
        }
        virtual std::string print()
        {
            return "(cmp " + lhs_->print() + " " + rhs_->print() + ")";
        }
        bool equiv(const CmpExpression *other) const
        {
            if (op_ == other->op_ and *lhs_ == *other->lhs_ and *rhs_ == *other->rhs_)
                return true;
            else
                return false;
        }
        gvn_expr_t get_lhs_type() { return lhs_->get_expr_type(); }
        gvn_expr_t get_rhs_type() { return rhs_->get_expr_type(); }
        Instruction::OpID get_op() { return op_; }
        std::shared_ptr<Expression> get_lhs() { return lhs_; }
        std::shared_ptr<Expression> get_rhs() { return rhs_; }
        CmpExpression(Instruction::OpID op, std::shared_ptr<Expression> lhs, std::shared_ptr<Expression> rhs)
            : Expression(e_cmp), op_(op), lhs_(lhs), rhs_(rhs) {}

    private:
        Instruction::OpID op_;
        std::shared_ptr<Expression> lhs_, rhs_;
    };

    class PhiExpression : public Expression
    {
    public:
        static std::shared_ptr<PhiExpression> create(Value *x, std::shared_ptr<Expression> lhs, std::shared_ptr<Expression> rhs)
        {
            return std::make_shared<PhiExpression>(x, lhs, rhs);
        }
        virtual std::string print() { return "(phi" + lhs_->print() + " " + rhs_->print() + ")"; }
        bool equiv(const PhiExpression *other) const
        {
            if (*lhs_ == *other->lhs_ and *rhs_ == *other->rhs_)
                return true;
            else
                return false;
        }
        PhiExpression(Value *x, std::shared_ptr<Expression> lhs, std::shared_ptr<Expression> rhs)
            : Expression(e_phi), x(x), lhs_(lhs), rhs_(rhs) {}
        std::shared_ptr<Expression> get_lhs_() { return lhs_; }
        std::shared_ptr<Expression> get_rhs_() { return rhs_; }
        Value *get_instr() { return x; }

    private:
        Value *x;
        std::shared_ptr<Expression> lhs_, rhs_;
    };

    class VarExpression : public Expression
    {
    public:
        static std::shared_ptr<VarExpression> create(Value *a)
        {
            return std::make_shared<VarExpression>(a);
        }
        virtual std::string print()
        {
            return var->print();
        }
        bool equiv(const VarExpression *other) const
        {
            return var == other->var;
        }
        VarExpression(Value *a)
            : Expression(e_var), var(a) {}
        Value *get() const { return var; }

    private:
        Value *var;
    };
    // 暂时没有处理多维数组
    class GepExpression : public Expression
    {
    public:
        static std::shared_ptr<GepExpression> create(Type *t, std::vector<std::shared_ptr<Expression>> a)
        {
            return std::make_shared<GepExpression>(t, a);
        }
        virtual std::string print()
        {
            return "gep";
        }
        GepExpression(Type *type, std::vector<std::shared_ptr<Expression>> a)
            : Expression(e_gep), element_type_(type), operands(std::move(a)) {}
        bool equiv(const GepExpression *other) const
        {
            if (element_type_ != other->element_type_)
                return false;
            if (operands.size() != other->operands.size())
                return false;
            for (int i = 0; i < operands.size(); i++)
            {
                if (!(operands[i] == other->operands[i]))
                    return false;
            }
            return true;
        }

    private:
        Type *element_type_;
        std::vector<std::shared_ptr<Expression>> operands;
    };

    class FuncExpression : public Expression
    {
    public:
        static std::shared_ptr<FuncExpression> create(Value *f, std::vector<std::shared_ptr<Expression>> a, bool isPure, Instruction *x)
        {
            return std::make_shared<FuncExpression>(f, a, isPure, x);
        }
        virtual std::string print()
        {
            return "func";
        }
        FuncExpression(Value *f, std::vector<std::shared_ptr<Expression>> a, bool isPure, Instruction *x)
            : Expression(e_func), pure(isPure), func(f), operands(std::move(a)), x(x) {}

        bool equiv(const FuncExpression *other) const
        {
            if (x == other->x)
            {
                return true;
            }
            if (!pure || !other->pure)
                return false;
            if (func != other->func)
                return false;
            if (operands.size() != other->operands.size())
                return false;
            for (int i = 0; i < operands.size(); i++)
            {
                if (!(operands[i] == other->operands[i]))
                    return false;
            }
            return true;
        }

    private:
        bool pure;
        Value *func;
        std::vector<std::shared_ptr<Expression>> operands;
        Instruction *x;
    };
} // namespace GVNExpression

/**
 * Congruence class in each partitions
 * Note: for constant propagation, you might need to add other fields
 */
struct CongruenceClass
{
    size_t index_;
    // representative of the congruence class, used to replace all the members (except itself) when
    // analysis is done
    Value *leader_{};
    // value expression in congruence class
    // Note: type of value_expr_ and value_phi_ is shared_ptr<Expression>, which correspond to the
    // return type of valueExpr and valuePhiFunc function, if you want to design your own value
    // expression, you need to modify the type of value_expr_, value_phi_ and the return type of
    // valueExpr and valuePhiFunc
    std::shared_ptr<GVNExpression::Expression> value_expr_;
    // value φ-function is an annotation of the congruence class
    std::shared_ptr<GVNExpression::PhiExpression> value_phi_;
    // equivalent variables in one congruence class
    std::shared_ptr<GVNExpression::ConstantExpression> value_const_;
    std::shared_ptr<GVNExpression::BinaryExpression> value_bin;
    std::shared_ptr<GVNExpression::VarExpression> value_var;
    std::shared_ptr<GVNExpression::FuncExpression> value_func;
    std::shared_ptr<GVNExpression::CmpExpression> value_cmp;
    std::shared_ptr<GVNExpression::FCmpExpression> value_fcmp;
    std::shared_ptr<GVNExpression::TransExpression> value_trans;
    std::shared_ptr<GVNExpression::GepExpression> value_gep;
    // equivalent variables in one congruence class
    std::set<Value *> members_;

    explicit CongruenceClass(size_t index) : index_(index), leader_{}, value_expr_{}, value_phi_{}, value_const_{}, value_bin{}, value_var{}, value_func{}, value_cmp{}, value_fcmp{}, value_trans{}, value_gep{}, members_{} {}

    bool operator<(const CongruenceClass &other) const
    {
        return this->index_ < other.index_;
    }
    bool operator==(const CongruenceClass &other) const;
};

namespace std
{
    template <>
    // overload std::less for std::shared_ptr<CongruenceClass>, i.e. how to sort the congruence
    // classes
    struct less<std::shared_ptr<CongruenceClass>>
    {
        bool operator()(const std::shared_ptr<CongruenceClass> &a,
                        const std::shared_ptr<CongruenceClass> &b) const
        {
            // nullptrs should never appear in partitions, so we just dereference it
            return *a < *b;
        }
    };
} // namespace std

class GVN : public Pass
{
public:
    using partitions = std::set<std::shared_ptr<CongruenceClass>>;
    static bool isTop(const partitions &p)
    {
        return (*p.begin())->index_ == 0;
    }
    GVN(Module *m, bool dump_json) : Pass(m), dump_json_(dump_json) {}
    // pass start
    void run() override;
    // init for pass metadata;
    void initPerFunction();

    // fill the following functions according to Pseudocode, **you might need to add more
    // arguments**
    void detectEquivalences(llvm::ilist<GlobalVariable> *global_list);
    partitions join(const partitions &P1, const partitions &P2, BasicBlock *lbb, BasicBlock *rbb);
    std::shared_ptr<CongruenceClass> intersect(const std::shared_ptr<CongruenceClass> &,
                                               const std::shared_ptr<CongruenceClass> &,
                                               BasicBlock *lbb,
                                               BasicBlock *rbb);
    partitions transferFunction(Instruction *x, Value *e, const partitions &pin);
    std::shared_ptr<GVNExpression::Expression>
    valuePhiFunc(const std::shared_ptr<GVNExpression::Expression> &, const partitions &);
    std::shared_ptr<GVNExpression::Expression> valueExpr(partitions &pout, Value *v);

    static std::shared_ptr<GVNExpression::Expression>
    getVN(const partitions &pout, std::shared_ptr<GVNExpression::Expression> ve);

    // replace cc members with leader
    void replace_cc_members();

    // note: be careful when to use copy constructor or clone
    static partitions clone(const partitions &p);

    // create congruence class helper
    static std::shared_ptr<CongruenceClass> createCongruenceClass(size_t index = 0)
    {
        return std::make_shared<CongruenceClass>(index);
    }

private:
    bool dump_json_;
    std::uint64_t next_value_number_ = 1;
    Function *func_{};
    std::map<BasicBlock *, partitions> pin_, pout_;
    std::unique_ptr<FuncInfo> func_info_;
    std::unique_ptr<GVNExpression::ConstFolder> folder_;
    std::unique_ptr<DeadCode> dce_;
    std::shared_ptr<GVNExpression::Expression> bin_ValueExpr(Instruction *instr, partitions &pout);
    std::shared_ptr<GVNExpression::Expression> func_ValueExpr(Instruction *instr, partitions &pout) const;
    std::shared_ptr<GVNExpression::Expression> cmp_ValueExpr(Instruction *instr, partitions &pout) const;
    std::shared_ptr<GVNExpression::Expression> fcmp_ValueExpr(Instruction *instr, partitions &pout);
    std::shared_ptr<GVNExpression::Expression> trans_ValueExpr(Instruction *instr, partitions &pout) const;
    std::shared_ptr<GVNExpression::Expression> gep_ValueExpr(Instruction *instr, partitions &pout) const;

};

bool operator==(const GVN::partitions &p1, const GVN::partitions &p2);
