#include "Function.hpp"
#include "IRprinter.hpp"
#include "Module.hpp"

Function::Function(FunctionType *ty, const std::string &name, Module *parent)
    : Value(ty, name), parent_(parent), seq_cnt_(0) {
    // num_args_ = ty->getNumParams();
    parent->add_function(this);
    // build args
    for (unsigned i = 0; i < get_num_of_args(); i++) {
        arguments_.emplace_back(ty->get_param_type(i), "", this, i);
    }
}

Function::~Function() {
    arguments_.clear();
}

Function *Function::create(FunctionType *ty, const std::string &name,
                           Module *parent) {
    return new Function(ty, name, parent);
}

FunctionType *Function::get_function_type() const {
    return static_cast<FunctionType *>(get_type());
}

Type *Function::get_return_type() const {
    return get_function_type()->get_return_type();
}

unsigned Function::get_num_of_args() const {
    return get_function_type()->get_num_of_args();
}

unsigned Function::get_num_basic_blocks() const { return basic_blocks_.size(); }

Module *Function::get_parent() const { return parent_; }

void Function::remove(BasicBlock *bb) {
    basic_blocks_.remove(bb);
    for (auto pre : bb->get_pre_basic_blocks()) {
        pre->remove_succ_basic_block(bb);
    }
    for (auto succ : bb->get_succ_basic_blocks()) {
        succ->remove_pre_basic_block(bb);
    }
}

void Function::add_basic_block(BasicBlock *bb) { basic_blocks_.push_back(bb); }

void Function::set_instr_name() {
    std::map<Value *, int> seq;
    for (auto &arg : this->get_args()) {
        if (seq.find(&arg) == seq.end()) {
            auto seq_num = seq.size() + seq_cnt_;
            if (arg.set_name("arg" + std::to_string(seq_num))) {
                seq.insert({&arg, seq_num});
            }
        }
    }
    for (auto &bb1 : basic_blocks_) {
        auto bb = &bb1;
        if (seq.find(bb) == seq.end()) {
            auto seq_num = seq.size() + seq_cnt_;
            if (bb->set_name("label" + std::to_string(seq_num))) {
                seq.insert({bb, seq_num});
            }
        }
        for (auto &instr : bb->get_instructions()) {
            if (!instr.is_void() && seq.find(&instr) == seq.end()) {
                auto seq_num = seq.size() + seq_cnt_;
                if (instr.set_name("op" + std::to_string(seq_num))) {
                    seq.insert({&instr, seq_num});
                }
            }
        }
    }
    seq_cnt_ += seq.size();
}

std::string Function::print() {
    set_instr_name();
    std::string func_ir;
    if (this->is_declaration()) {
        func_ir += "declare ";
    } else {
        func_ir += "define ";
    }

    func_ir += this->get_return_type()->print();
    func_ir += " ";
    func_ir += print_as_op(this, false);
    func_ir += "(";

    // print arg
    if (this->is_declaration()) {
        for (unsigned i = 0; i < this->get_num_of_args(); i++) {
            if (i)
                func_ir += ", ";
            func_ir += static_cast<FunctionType *>(this->get_type())
                           ->get_param_type(i)
                           ->print();
        }
    } else {
        for (auto &arg : get_args()) {
            if (&arg != &*get_args().begin())
                func_ir += ", ";
            func_ir += arg.print();
        }
    }
    func_ir += ")";

    // print bb
    if (this->is_declaration()) {
        func_ir += "\n";
    } else {
        func_ir += " {";
        func_ir += "\n";
        for (auto &bb1 : this->get_basic_blocks()) {
            auto bb = &bb1;
            func_ir += bb->print();
        }
        func_ir += "}";
    }

    return func_ir;
}

std::string Argument::print() {
    std::string arg_ir;
    arg_ir += this->get_type()->print();
    arg_ir += " %";
        arg_ir += this->get_name();
    return arg_ir;
}
