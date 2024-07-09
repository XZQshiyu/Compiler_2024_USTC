#include "ConstPropagation.hpp"

#include "Instruction.hpp"
#include "logging.hpp"

ConstantInt *ConstFolder::compute(Instruction::OpID op, ConstantInt *value1, ConstantInt *value2) {
    int c_value1 = value1->get_value();
    int c_value2 = value2->get_value();

    switch (op) {
    case Instruction::add:
        return ConstantInt::get(c_value1 + c_value2, module_);
        break;
    case Instruction::sub:
        return ConstantInt::get(c_value1 - c_value2, module_);
        break;
    case Instruction::mul:
        return ConstantInt::get(c_value1 * c_value2, module_);
        break;
    case Instruction::sdiv:
        return ConstantInt::get(static_cast<int>(c_value1 / c_value2), module_);
        break;
    case Instruction::eq:
        return ConstantInt::get(c_value1 == c_value2, module_);
        break;
    case Instruction::ne:
        return ConstantInt::get(c_value1 != c_value2, module_);
        break;
    case Instruction::gt:
        return ConstantInt::get(c_value1 > c_value2, module_);
        break;
    case Instruction::ge:
        return ConstantInt::get(c_value1 >= c_value2, module_);
        break;
    case Instruction::lt:
        return ConstantInt::get(c_value1 < c_value2, module_);
        break;
    case Instruction::le:
        return ConstantInt::get(c_value1 <= c_value2, module_);
        break;
    case Instruction::land:
        return ConstantInt::get(c_value1 && c_value2, module_);
        break;
    case Instruction::lor:
        return ConstantInt::get(c_value1 || c_value2, module_);
        break;
    case Instruction::srem:
        return ConstantInt::get(c_value1 % c_value2, module_);
        break;
    default:
        return nullptr;
        break;
    }
}

ConstantFP *ConstFolder::compute(Instruction::OpID op, ConstantFP *value1, ConstantFP *value2) {
    float c_value1 = value1->get_value();
    float c_value2 = value2->get_value();
    switch (op) {
    case Instruction::fadd:
        return ConstantFP::get(c_value1 + c_value2, module_);
        break;
    case Instruction::fsub:
        return ConstantFP::get(c_value1 - c_value2, module_);
        break;
    case Instruction::fmul:
        return ConstantFP::get(c_value1 * c_value2, module_);
        break;
    case Instruction::fdiv:
        return ConstantFP::get(c_value1 / c_value2, module_);
        break;
    case Instruction::feq:
        return ConstantFP::get(c_value1 == c_value2, module_);
        break;
    case Instruction::fne:
        return ConstantFP::get(c_value1 != c_value2, module_);
        break;
    case Instruction::fgt:
        return ConstantFP::get(c_value1 > c_value2, module_);
        break;
    case Instruction::fge:
        return ConstantFP::get(c_value1 >= c_value2, module_);
        break;
    case Instruction::flt:
        return ConstantFP::get(c_value1 < c_value2, module_);
        break;
    case Instruction::fle:
        return ConstantFP::get(c_value1 <= c_value2, module_);
        break;
    default:
        return nullptr;
        break;
    }
}
ConstantFP *ConstFolder::compute(Instruction::OpID op, ConstantInt *value1) {
    int c_value1 = value1->get_value();

    switch (op) {
    case Instruction::sitofp:
        return ConstantFP::get((float) c_value1, module_);
        break;

    default:
        return nullptr;
        break;
    }
}

ConstantInt *ConstFolder::compute(Instruction::OpID op, ConstantFP *value1) {
    float c_value1 = value1->get_value();
    switch (op) {
    case Instruction::fptosi:
        return ConstantInt::get(static_cast<int>(c_value1), module_);
        break;

    default:
        return nullptr;
        break;
    }
}

ConstantFP *cast_constantfp(Value *value) {
    auto constant_fp_ptr = dynamic_cast<ConstantFP *>(value);
    if (constant_fp_ptr) {
        return constant_fp_ptr;
    }
    return nullptr;
}
ConstantInt *cast_constantint(Value *value) {
    auto constant_int_ptr = dynamic_cast<ConstantInt *>(value);
    if (constant_int_ptr) {
        return constant_int_ptr;
    }
    return nullptr;
}

void ConstPropagation::run() {
    for (auto &func : m_->get_functions()) {

        for (auto &bb : func.get_basic_blocks()) {
            wait_delete.clear();

            for (auto &instr : bb.get_instructions()) {
                // clear glbalvar_def map

                if (instr.is_add() || instr.is_sub() || instr.is_mul() || instr.is_div() || instr.is_srem()) {
                    LOG(DEBUG) << "is_ical";
                    auto value1 = cast_constantint(instr.get_operand(0));
                    auto value2 = cast_constantint(instr.get_operand(1));
                    if (value1 && value2) {
                        auto fold_const = folder->compute(instr.get_instr_type(), value1, value2);

                        instr.replace_all_use_with(fold_const);
                        wait_delete.push_back(&instr);
                    }
                }
                // TODO: fold other type of expression
                else if (instr.is_fadd() || instr.is_fsub() || instr.is_fmul() || instr.is_fdiv()) {
                    LOG(DEBUG) << "is_fcal";
                    auto value1 = cast_constantfp(instr.get_operand(0));
                    auto value2 = cast_constantfp(instr.get_operand(1));
                    if (value1 && value2) {
                        auto fold_const = folder->compute(instr.get_instr_type(), value1, value2);

                        instr.replace_all_use_with(fold_const);
                        wait_delete.push_back(&instr);
                    }
                } else if (instr.is_and() || instr.is_or()) {
                    LOG(DEBUG) << "is_and_or";
                    auto value1 = cast_constantint(instr.get_operand(0));
                    auto value2 = cast_constantint(instr.get_operand(1));
                    if (value1 && value2) {
                        auto fold_const = folder->compute(instr.get_instr_type(), value1, value2);

                        instr.replace_all_use_with(fold_const);
                        wait_delete.push_back(&instr);
                    }
                } else if (instr.is_si2fp()) {
                    LOG(DEBUG) << "is_si2fp";
                    auto value1 = cast_constantint(instr.get_operand(0));
                    if (value1) {
                        auto fold_const = folder->compute(instr.get_instr_type(), value1);

                        instr.replace_all_use_with(fold_const);
                        wait_delete.push_back(&instr);
                    }
                } else if (instr.is_fp2si()) {
                    LOG(DEBUG) << "is_fp2si";
                    auto value1 = cast_constantfp(instr.get_operand(0));
                    if (value1) {
                        auto fold_const = folder->compute(instr.get_instr_type(), value1);

                        instr.replace_all_use_with(fold_const);
                        wait_delete.push_back(&instr);
                    }
                } else if (instr.is_cmp()) {
                    LOG(DEBUG) << "is_cmp";
                    auto value1 = cast_constantint(instr.get_operand(0));
                    auto value2 = cast_constantint(instr.get_operand(1));
                    if (value1 && value2) {
                        auto fold_const = folder->compute(instr.get_instr_type(), value1, value2);

                        instr.replace_all_use_with(fold_const);
                        wait_delete.push_back(&instr);
                    }
                } else if (instr.is_fcmp()) {
                    LOG(DEBUG) << "is_fcmp";
                    auto value1 = cast_constantfp(instr.get_operand(0));
                    auto value2 = cast_constantfp(instr.get_operand(1));
                    if (value1 && value2) {
                        ConstantInt *temp;
                        auto fold_const = folder->compute(instr.get_instr_type(), value1, value2);
                        if(fold_const == ConstantFP::get(0, m_)) temp = ConstantInt::get(0, m_);
                        else temp = ConstantInt::get(1, m_);
                        instr.replace_all_use_with(temp);
                        wait_delete.push_back(&instr);
                    }
                }
                else if (instr.is_phi() && instr.get_operands().size() == 4) {
                    auto value1 = cast_constantint(instr.get_operand(0));
                    auto value2 = cast_constantint(instr.get_operand(2));
                    if (value1 && value2) {
                        LOG(DEBUG) << "===========here=========="
                        << value1->get_value() << "   " << value2->get_value();

                        if (value1->get_value() == value2->get_value()) {
                            instr.replace_all_use_with(instr.get_operand(0));
                            LOG(DEBUG) << "===========here==========";
                            // bb.erase_instr(&instr);
                        }
                    }
                }   
            }
            globalvar_def.clear();
            for (auto instr : wait_delete) {
                bb.erase_instr(instr);
            }
        }
    }

    for (auto &func : m_->get_functions()) {
        for (auto &bb : func.get_basic_blocks()) {
            builder->set_insert_point(&bb);
            // TODO: check if conditional branch's condition is constant
            if(bb.get_terminator()->is_br() && bb.get_terminator()->get_operands().size() == 3) {
                auto cond_br = static_cast<BranchInst*>(bb.get_terminator());
                auto cond = cond_br->get_operand(0);
                auto cond_const = cast_constantint(cond);
                auto ops = cond_br->get_operands();
                if(cond_const) {
                    LOG(ERROR) << bb.get_succ_basic_blocks().size();
                    // clear_blocks_recs(&bb);
                    BasicBlock* succ_bb;
                    if(cond_const->get_value() == 1){
                        succ_bb = static_cast<BasicBlock*>(cond_br->get_operand(2));
                    }
                    else succ_bb = static_cast<BasicBlock*>(cond_br->get_operand(1));
                    // for(auto succ_bb : bb.get_succ_basic_blocks()){
                    for(auto &inst1 : succ_bb->get_instructions()){
                        auto inst = &inst1;
                        if(inst->is_phi()){
                            for(int i = 1; i < inst->get_num_operand(); i += 2)
                                if(inst->get_operand(i) == &bb) {
                                    inst->remove_operand(i - 1);
                                    inst->remove_operand(i - 1);
                                    // LOG(DEBUG) << "+++++++++";
                                    // LOG(DEBUG) << inst->get_num_operand();
                                    // if(inst->get_num_operand() == 2) {
                                    //     LOG(DEBUG) << inst->get_operand(0)->print();
                                    //     inst->replace_all_use_with(inst->get_operand(0));
                                    //     bb.erase_instr(inst);
                                    // }
                                    // LOG(DEBUG) << "123";
                                }
                        }
                    }
                    // }
                    bb.erase_instr(cond_br);
                    if(cond_const->get_value() == 1) {
                        builder->create_br(static_cast<BasicBlock*>(ops[1]));
                    } else {
                        builder->create_br(static_cast<BasicBlock*>(ops[2]));
                    }
                    // LOG(ERROR) << bb.get_succ_basic_blocks().size();
                    delete_bb.push_back(&bb);
                }
            }
        }
        for (auto bb : delete_bb) {
            // delete unuseful basic block
            // func.remove(bb);
            clear_blocks_recs(bb);
        }
        delete_bb.clear();
    }
    // for(auto &func : m_->get_functions())
    //     for(auto &bb : func.get_basic_blocks())
    //         for(auto &inst : bb.get_instructions()){
    //             LOG(DEBUG) << inst.get_num_operand();
    //            if(inst.get_num_operand() == 0) bb.erase_instr(&inst);
    //         }
}

bool ConstPropagation::is_entry(BasicBlock *bb) {
    // TODO
    if(bb == bb->get_parent()->get_entry_block())
        return true;
    return false;
}

void ConstPropagation::clear_blocks_recs(BasicBlock *start_bb) {
    LOG(DEBUG) << "begin_clear";
    auto func = start_bb->get_parent();
    if (func == nullptr) {
        LOG(ERROR) << "basic block-" << start_bb->get_name() << " has no parent function";
    } else {
        auto prev_bb = start_bb->get_pre_basic_blocks();
        // start_bb has no previous bb and is not the entry of parent function
        if (prev_bb.size() == 0 && !is_entry(start_bb)) {
            // LOG(DEBUG) << "1" << start_bb->get_instructions().front().print();
            func->remove(start_bb);
            auto succ_bb = start_bb->get_succ_basic_blocks();
            for (auto each_succ_bb : succ_bb) {
                std::vector<Instruction*> del_inst;
                // LOG(DEBUG) << "2";
                for (auto &instr1 : each_succ_bb->get_instructions()) {
                    // LOG(DEBUG) << "begin 1";
                    // LOG(DEBUG) << each_succ_bb->get_num_of_instr();
                    // LOG(DEBUG) << each_succ_bb->get_instructions().front().print();
                    // LOG(DEBUG) << (&instr1 == nullptr);
                    // LOG(DEBUG) << instr1.get_num_operand();
                    // LOG(DEBUG) << instr1.print();
                    auto instr = &instr1;
                    if (instr->is_phi()) {
                        LOG(DEBUG) << "Find a PHI instruction in the sucess node of "
                                      "useless branch";
                        for (int i = 1; i < instr->get_num_operand(); i += 2) {
                            // LOG(DEBUG) << instr->get_num_operand() << " " << i << ' ' << (instr->get_operand(i) == start_bb);
                            if (instr->get_operand(i) == start_bb &&
                                start_bb->get_pre_basic_blocks().size() <= 0) {
                                LOG(DEBUG) << "remove unuseful phi branch in the index of " << i - 1
                                           << " and " << i;

                                instr->remove_operand(i - 1);
                                instr->remove_operand(i - 1);
                            }
                        }
                        int operands_num_phi = instr->get_num_operand();
                        if (operands_num_phi == 2) {
                            auto value = instr->get_operand(0);
                            instr->replace_all_use_with(cast_constantint(value));
                            LOG(DEBUG) << value->print();
                            del_inst.push_back(instr);
                            LOG(DEBUG) << "====";
                        }
                    }
                    LOG(DEBUG) << "end1"; 
                }
                for(auto instr : del_inst) each_succ_bb->erase_instr(instr);
                clear_blocks_recs(each_succ_bb);
            }
        }
    }
    LOG(DEBUG) << "end_clear";
}
