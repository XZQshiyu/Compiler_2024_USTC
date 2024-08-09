#pragma once

#include "Instruction.hpp"
#include "Value.hpp"
#include "ilist.hpp"

#include <list>
// #include <llvm/ADT/ilist.h>
// #include <llvm/ADT/ilist_node.h>
#include <set>
#include <string>



class Function;
class Instruction;
class Module;

class BasicBlock : public Value, public ilist<BasicBlock>::node {

  using InstIter = ilist<Instruction>::iterator;

  public:
    ~BasicBlock() = default;
    static BasicBlock *create(Module *m, const std::string &name,
                              Function *parent) {
        auto prefix = name.empty() ? "" : "label_";
        return new BasicBlock(m, prefix + name, parent);
    }

    /****************api about cfg****************/
    std::list<BasicBlock *> &get_pre_basic_blocks() { return pre_bbs_; }
    std::list<BasicBlock *> &get_succ_basic_blocks() { return succ_bbs_; }

    void add_pre_basic_block(BasicBlock *bb) { pre_bbs_.push_back(bb); }
    void add_succ_basic_block(BasicBlock *bb) { succ_bbs_.push_back(bb); }
    void remove_pre_basic_block(BasicBlock *bb) { pre_bbs_.remove(bb); }
    void remove_succ_basic_block(BasicBlock *bb) { succ_bbs_.remove(bb); }

    // If the Block is terminated by ret/br
    bool is_terminated() const;
    // Get terminator, only accept valid case use
    Instruction *get_terminator();

    /****************api about Instruction****************/
    void add_instruction(Instruction *instr);
    void add_instr_begin(Instruction *instr) 
    { 
      instr_list_.push_front(instr);
      instr->set_parent(this);}

    void insert_before(const InstIter &pos, Instruction *instr) 
    { 
      // Insert the new instruction before the position node
      instr_list_.insert_before(pos, instr);
    }

    // void insert_after(Instruction *pos, Instruction *instr) 
    // { 
    // }

    Instruction *get_prev_instr(Instruction *instr) 
    { 
      return instr_list_.get_prev(instr); 
    }

    Instruction *get_next_instr(Instruction *instr) 
    { 
      return instr_list_.get_next(instr); 
    }

    void erase_instr(Instruction *instr) { instr_list_.erase(instr); }
    void remove_instr(Instruction *instr) 
    { 
      instr_list_.remove(instr); 
      instr->set_parent_null();
    }
    // void remove_instr_2(Instruction *instr) { instr_list_.}
    void remove_last_instruction();
    ilist<Instruction> &get_instructions() { return instr_list_; }
    bool empty() const { return instr_list_.empty(); }
    int get_num_of_instr() const { return instr_list_.size(); }

    /****************api about accessing parent****************/
    Function *get_parent() { return parent_; }
    Module *get_module();
    void erase_from_parent();

    virtual std::string print() override;

  private:
    BasicBlock(const BasicBlock &) = delete;
    explicit BasicBlock(Module *m, const std::string &name, Function *parent);

    std::list<BasicBlock *> pre_bbs_;
    std::list<BasicBlock *> succ_bbs_;
    ilist<Instruction> instr_list_;
    Function *parent_;
};
