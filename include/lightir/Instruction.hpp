#pragma once

#include "Type.hpp"
#include "User.hpp"
#include "ilist.hpp"

#include <cstdint>
// #include <llvm/ADT/ilist_node.h>

class BasicBlock;
class Function;

class Instruction : public User, public ilist<Instruction>::node
{
public:
  enum OpID : uint32_t
  {
    // Terminator Instructions
    ret,
    br,
    // Standard binary operators
    add,
    sub,
    mul,
    sdiv,
    srem, // TODO:
    land, // TODO:
    lor,  // TODO:
          // float binary operators
    fadd,
    fsub,
    fmul,
    fdiv,
    // Memory operators
    alloca,
    load,
    store,
    // Int compare operators
    ge,
    gt,
    le,
    lt,
    eq,
    ne,
    // Float compare operators
    fge,
    fgt,
    fle,
    flt,
    feq,
    fne,
    // Other operators
    phi,
    call,
    getelementptr,
    zext, // zero extend
    sext, // sign extend
          // int2ptr and ptr2int
    inttoptr,
    ptrtoint,
    // cast operators
    fptosi,
    sitofp,
    // float binary operators Logical operators
    shl,
    ashr,
    lshr,
    lxor,

  };
  /* @parent: if parent!=nullptr, auto insert to bb
   * @ty: result type */
  Instruction(Type *ty, OpID id, BasicBlock *parent = nullptr);
  Instruction(const Instruction &) = delete;
  virtual ~Instruction() = default;
  
  BasicBlock *get_parent() { return parent_; }
  const BasicBlock *get_parent() const { return parent_; }
  void set_parent(BasicBlock *parent) { this->parent_ = parent; }
  void set_parent_null() { this->parent_ = nullptr; }
  // Return the function this instruction belongs to.
  Function *get_function();
  Module *get_module();

  OpID get_instr_type() const { return op_id_; }
  std::string get_instr_op_name() const;

  bool is_void()
  {
    return ((op_id_ == ret) || (op_id_ == br) || (op_id_ == store) ||
            (op_id_ == call && this->get_type()->is_void_type()));
  }

  bool is_phi() const { return op_id_ == phi; }
  bool is_store() const { return op_id_ == store; }
  bool is_alloca() const { return op_id_ == alloca; }
  bool is_ret() const { return op_id_ == ret; }
  bool is_load() const { return op_id_ == load; }
  bool is_br() const { return op_id_ == br; }

  // Binary operators
  bool is_add() const { return op_id_ == add; }
  bool is_sub() const { return op_id_ == sub; }
  bool is_mul() const { return op_id_ == mul; }
  bool is_div() const { return op_id_ == sdiv; }
  bool is_srem() const { return op_id_ == srem; }
  bool is_or() const { return op_id_ == lor; }
  bool is_and() const { return op_id_ == land; }
  bool is_xor() const { return op_id_ == lxor; }
  bool is_shl() const { return op_id_ == shl; }
  bool is_ashr() const { return op_id_ == ashr; }
  bool is_lshr() const { return op_id_ == lshr; }

  // float binary operators
  bool is_fadd() const { return op_id_ == fadd; }
  bool is_fsub() const { return op_id_ == fsub; }
  bool is_fmul() const { return op_id_ == fmul; }
  bool is_fdiv() const { return op_id_ == fdiv; }

  // cast operators
  bool is_fp2si() const { return op_id_ == fptosi; }
  bool is_si2fp() const { return op_id_ == sitofp; }
  bool is_zext() const { return op_id_ == zext; }

  // compare operators
  bool is_cmp() const { return ge <= op_id_ and op_id_ <= ne; }
  bool is_fcmp() const { return fge <= op_id_ and op_id_ <= fne; }

  // call operators
  bool is_call() const { return op_id_ == call; }
  bool is_gep() const { return op_id_ == getelementptr; }

  bool isBinary() const
  {
    return (is_add() || is_sub() || is_mul() || is_div() || is_srem() || is_fadd() ||
            is_fsub() || is_fmul() || is_fdiv()) &&
           (get_num_operand() == 2);
  }

  bool isTerminator() const { return is_br() || is_ret(); }

private:
  OpID op_id_;
  BasicBlock *parent_;
};

template <typename Inst>
class BaseInst : public Instruction
{
protected:
  template <typename... Args>
  static Inst *create(Args &&...args)
  {
    return new Inst(std::forward<Args>(args)...);
  }

  template <typename... Args>
  BaseInst(Args &&...args) : Instruction(std::forward<Args>(args)...) {}
};

// integer binary operators class
class IBinaryInst : public BaseInst<IBinaryInst>
{
  friend BaseInst<IBinaryInst>;

private:
  IBinaryInst(OpID id, Value *v1, Value *v2, BasicBlock *bb);

public:
  static IBinaryInst *create_add(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_sub(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_mul(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_sdiv(Value *v1, Value *v2, BasicBlock *bb);
  // add new llvm instruciton
  static IBinaryInst *create_srem(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_and(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_or(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_xor(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_shl(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_ashr(Value *v1, Value *v2, BasicBlock *bb);
  static IBinaryInst *create_lshr(Value *v1, Value *v2, BasicBlock *bb);

  virtual std::string print() override;
};

// float binary operators class
class FBinaryInst : public BaseInst<FBinaryInst>
{
  friend BaseInst<FBinaryInst>;

private:
  FBinaryInst(OpID id, Value *v1, Value *v2, BasicBlock *bb);

public:
  static FBinaryInst *create_fadd(Value *v1, Value *v2, BasicBlock *bb);
  static FBinaryInst *create_fsub(Value *v1, Value *v2, BasicBlock *bb);
  static FBinaryInst *create_fmul(Value *v1, Value *v2, BasicBlock *bb);
  static FBinaryInst *create_fdiv(Value *v1, Value *v2, BasicBlock *bb);

  virtual std::string print() override;
};

// integer compare operators class
class ICmpInst : public BaseInst<ICmpInst>
{
  friend BaseInst<ICmpInst>;

private:
  ICmpInst(OpID id, Value *lhs, Value *rhs, BasicBlock *bb);

public:
  static ICmpInst *create_ge(Value *v1, Value *v2, BasicBlock *bb);
  static ICmpInst *create_gt(Value *v1, Value *v2, BasicBlock *bb);
  static ICmpInst *create_le(Value *v1, Value *v2, BasicBlock *bb);
  static ICmpInst *create_lt(Value *v1, Value *v2, BasicBlock *bb);
  static ICmpInst *create_eq(Value *v1, Value *v2, BasicBlock *bb);
  static ICmpInst *create_ne(Value *v1, Value *v2, BasicBlock *bb);

  virtual std::string print() override;
};

// float compare operators class
class FCmpInst : public BaseInst<FCmpInst>
{
  friend BaseInst<FCmpInst>;

private:
  FCmpInst(OpID id, Value *lhs, Value *rhs, BasicBlock *bb);

public:
  static FCmpInst *create_fge(Value *v1, Value *v2, BasicBlock *bb);
  static FCmpInst *create_fgt(Value *v1, Value *v2, BasicBlock *bb);
  static FCmpInst *create_fle(Value *v1, Value *v2, BasicBlock *bb);
  static FCmpInst *create_flt(Value *v1, Value *v2, BasicBlock *bb);
  static FCmpInst *create_feq(Value *v1, Value *v2, BasicBlock *bb);
  static FCmpInst *create_fne(Value *v1, Value *v2, BasicBlock *bb);

  virtual std::string print() override;
};

// call operators class
class CallInst : public BaseInst<CallInst>
{
  friend BaseInst<CallInst>;

protected:
  CallInst(Function *func, std::vector<Value *> args, BasicBlock *bb);

public:
  static CallInst *create_call(Function *func, std::vector<Value *> args,
                               BasicBlock *bb);
  FunctionType *get_function_type() const;

  virtual std::string print() override;
};

// branch operators class
class BranchInst : public BaseInst<BranchInst>
{
  friend BaseInst<BranchInst>;

private:
  BranchInst(Value *cond, BasicBlock *if_true, BasicBlock *if_false,
             BasicBlock *bb);
  ~BranchInst();

public:
  static BranchInst *create_cond_br(Value *cond, BasicBlock *if_true,
                                    BasicBlock *if_false, BasicBlock *bb);
  static BranchInst *create_br(BasicBlock *if_true, BasicBlock *bb);

  bool is_cond_br() const { return get_num_operand() == 3; }

  virtual std::string print() override;
};

// return operators class
class ReturnInst : public BaseInst<ReturnInst>
{
  friend BaseInst<ReturnInst>;

private:
  ReturnInst(Value *val, BasicBlock *bb);

public:
  static ReturnInst *create_ret(Value *val, BasicBlock *bb);
  static ReturnInst *create_void_ret(BasicBlock *bb);
  bool is_void_ret() const;

  virtual std::string print() override;
};

// getelementptr operators class
class GetElementPtrInst : public BaseInst<GetElementPtrInst>
{
  friend BaseInst<GetElementPtrInst>;

private:
  GetElementPtrInst(Value *ptr, std::vector<Value *> idxs, BasicBlock *bb);

public:
  static Type *get_element_type(Value *ptr, std::vector<Value *> idxs);
  static GetElementPtrInst *create_gep(Value *ptr, std::vector<Value *> idxs,
                                       BasicBlock *bb);
  Type *get_element_type() const;

  virtual std::string print() override;
};

// store operators class
class StoreInst : public BaseInst<StoreInst>
{
  friend BaseInst<StoreInst>;

private:
  StoreInst(Value *val, Value *ptr, BasicBlock *bb);

public:
  static StoreInst *create_store(Value *val, Value *ptr, BasicBlock *bb);

  Value *get_rval() { return this->get_operand(0); }
  Value *get_lval() { return this->get_operand(1); }

  virtual std::string print() override;
};

// load operators class
class LoadInst : public BaseInst<LoadInst>
{
  friend BaseInst<LoadInst>;

private:
  LoadInst(Value *ptr, BasicBlock *bb);

public:
  static LoadInst *create_load(Value *ptr, BasicBlock *bb);

  Value *get_lval() const { return this->get_operand(0); }
  Type *get_load_type() const { return get_type(); };

  virtual std::string print() override;
};

// alloca operators class
class AllocaInst : public BaseInst<AllocaInst>
{
  friend BaseInst<AllocaInst>;

private:
  AllocaInst(Type *ty, BasicBlock *bb);

public:
  static AllocaInst *create_alloca(Type *ty, BasicBlock *bb);

  Type *get_alloca_type() const
  {
    return get_type()->get_pointer_element_type();
  };

  virtual std::string print() override;
};

// zext operators class
class ZextInst : public BaseInst<ZextInst>
{
  friend BaseInst<ZextInst>;

private:
  ZextInst(Value *val, Type *ty, BasicBlock *bb);

public:
  static ZextInst *create_zext(Value *val, Type *ty, BasicBlock *bb);
  static ZextInst *create_zext_to_i32(Value *val, BasicBlock *bb);

  Type *get_dest_type() const { return get_type(); };

  virtual std::string print() override;
};

class SextInst : public BaseInst<SextInst>
{
  friend BaseInst<SextInst>;

private:
  SextInst(Value *val, Type *ty, BasicBlock *bb);

public:
  static SextInst *create_sext(Value *val, Type *ty, BasicBlock *bb);
  static SextInst *create_sext_to_i32(Value *val, BasicBlock *bb);
  static SextInst *create_sext_to_i64(Value *val, BasicBlock *bb);

  Type *get_dest_type() const { return get_type(); };

  virtual std::string print() override;
};

// cast operators class
class FpToSiInst : public BaseInst<FpToSiInst>
{
  friend BaseInst<FpToSiInst>;

private:
  FpToSiInst(Value *val, Type *ty, BasicBlock *bb);

public:
  static FpToSiInst *create_fptosi(Value *val, Type *ty, BasicBlock *bb);
  static FpToSiInst *create_fptosi_to_i32(Value *val, BasicBlock *bb);

  Type *get_dest_type() const { return get_type(); };

  virtual std::string print() override;
};

class SiToFpInst : public BaseInst<SiToFpInst>
{
  friend BaseInst<SiToFpInst>;

private:
  SiToFpInst(Value *val, Type *ty, BasicBlock *bb);

public:
  static SiToFpInst *create_sitofp(Value *val, BasicBlock *bb);

  Type *get_dest_type() const { return get_type(); };

  virtual std::string print() override;
};

class Ptr2IntInst : public BaseInst<Ptr2IntInst>
{
  friend BaseInst<Ptr2IntInst>;

private:
  Ptr2IntInst(Value *val, Type *ty, BasicBlock *bb);

public:
  static Ptr2IntInst *create_ptrtoint(Value *val, Type *ty, BasicBlock *bb);

  Type *get_dest_type() const { return get_type(); };

  virtual std::string print() override;
  Value *get_ptr() { return this->get_operand(0); }
};

class Int2PtrInst : public BaseInst<Int2PtrInst>
{
  friend BaseInst<Int2PtrInst>;

private:
  Int2PtrInst(Value *val, Type *ty, BasicBlock *bb);

public:
  static Int2PtrInst *create_inttoptr(Value *val, Type *ty, BasicBlock *bb);

  Type *get_dest_type() const { return get_type(); };

  virtual std::string print() override;
  Value *get_int() { return this->get_operand(0); }
};

// phi operators class
class PhiInst : public BaseInst<PhiInst>
{
  friend BaseInst<PhiInst>;

private:
  PhiInst(Type *ty, std::vector<Value *> vals,
          std::vector<BasicBlock *> val_bbs, BasicBlock *bb);

public:
  static PhiInst *create_phi(Type *ty, BasicBlock *bb,
                             std::vector<Value *> vals = {},
                             std::vector<BasicBlock *> val_bbs = {});

  void add_phi_pair_operand(Value *val, Value *pre_bb)
  {
    this->add_operand(val);
    this->add_operand(pre_bb);
  }
  virtual std::string print() override;
};
