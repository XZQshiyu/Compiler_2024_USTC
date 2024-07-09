#include "CodeGenRegister.hpp"

#include "BasicBlock.hpp"
#include "Constant.hpp"
#include "Function.hpp"
#include "GlobalVariable.hpp"
#include "Instruction.hpp"
#include "Type.hpp"
#include "Value.hpp"
#include "ast.hpp"
#include "logging.hpp"
#include "regalloc.hpp"
#include "CodeGenUtil.hpp"

#include <algorithm>
#include <cstdint>
#include <cstring>
#include <deque>
#include <memory>
#include <ostream>
#include <sstream>
#include <string>
#include <sys/types.h>
#include <tuple>
#include <type_traits>
#include <utility>
#include <vector>

void CodeGenRegister::getPhiMap() {
    phi_map.clear();
    //TODO:对phi函数进行处理，为phi_map赋值
     for (auto &func : m->get_functions()) {
        if (not func.is_declaration()) {
            for (auto &b : func.get_basic_blocks()) {
                auto bb=&b;
                for (auto &instr : bb->get_instructions()) {//一行一行做
                    if(instr.is_phi()){
                        auto inst=static_cast<PhiInst *>(&instr);
                        /*int len=inst->get_num_operand();
                        std::vector<Value *> ops=inst->get_operands();
                        for (auto &opp : ops){
                            std::cout << opp->get_name() <<" "<<"!"; 
                        }
                        std:: cout<<len<<std::endl;*/
                        //如果有两条路，那么分别会有四个数据
                        //常数 !    label_entry !    op6 !     label5 !
                        int len=(inst->get_num_operand())/2;
                        for(int i=0;i<len;i++){
                            auto pair_assign=std::make_pair(inst,inst->get_operand(i*2));
                            BasicBlock * startbb=static_cast<BasicBlock *>(inst->get_operand(i*2+1));
                            if(phi_map.find(startbb)==phi_map.end()){
                                std::vector<std::pair<Value *,Value *>> newlist;
                                newlist.clear();
                                newlist.emplace_back(pair_assign);
                                phi_map[startbb]=newlist;//如果没有就添加新的进去
                            }else{
                                phi_map[startbb].emplace_back(pair_assign);//如果有的话，就直接塞进去
                            }
                            
                            //std::cout<<(inst->get_operand(i*2+1))<<" "<<bb<<" "<<inst<<" "<<inst->get_operand(i*2)<<std::endl;
                        }
                    }
                }
            }
        }
     }
}

string CodeGenRegister::value2reg(Value *v, int i, string recommend) {//把value放到reg里边，并返回放到了哪个reg里边
   // bool is_float = v->get_type()->is_float_type();
    //auto tmp_ireg = Reg::t(i);
    assert(i == 0 or i == 1);
    bool find;
    string name;
    //TODO: 寻找v对应的寄存器名称，你可能会用到regalloc.hpp中的类
   // LOG_DEBUG << "float register map for function: " << func.get_name() << "\n";
       //     RA_float.print([](int i) { return regname(i, true); });  // 输出浮点型寄存器映射结果
    auto regmap = v->get_type()->is_float_type() ? RA_float.get() : RA_int.get();
    if (regmap.find(v) == regmap.end()){
        if(v->get_type()->is_float_type()){
            load_to_freg(v, FReg::ft(unsigned(i)));
            find=false;
            name="$ft"+to_string(i);
        }else{
            load_to_greg(v, Reg::t(unsigned(i)));
            find=false;
            name="$t"+to_string(i);
        }
    }else{
        if(v->get_type()->is_float_type()){
            find=true;
            name=regname(regmap[v],true);
        }else{
            find=true;
            name=regname(regmap[v],false);
        }
    }
    return name;
}
void CodeGenRegister::value4call(Value *v, int cnt) {//把value放到reg里边，并返回放到了哪个reg里边
   // bool is_float = v->get_type()->is_float_type();
    //auto tmp_ireg = Reg::t(i);
    bool find;
    string name;
    //TODO: 寻找v对应的寄存器名称，你可能会用到regalloc.hpp中的类
   // LOG_DEBUG << "float register map for function: " << func.get_name() << "\n";
       //     RA_float.print([](int i) { return regname(i, true); });  // 输出浮点型寄存器映射结果
    auto regmap = v->get_type()->is_float_type() ? RA_float.get() : RA_int.get();
    if (regmap.find(v) == regmap.end()){
        if(v->get_type()->is_float_type()){
            load_to_freg_string(v, regname(cnt,true));
        }else{
            load_to_greg_string(v,regname(cnt,false));
        }
    }else{
       

        if(v->get_type()->is_float_type()){
                auto offset=(-1)*float_reg_offset(regmap[v]);
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(FLOAD SINGLE,{regname(cnt,true), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(FLOAD SINGLE, {regname(cnt,true), addr.print(), "0"});
                }
            //append_inst("fld.s $fa"+to_string(cnt)+" ,$fp, "+to_string(()));
        }else{
                auto offset=(-1)*int_reg_offset(regmap[v]);
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(LOAD DOUBLE,{regname(cnt,false), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(LOAD DOUBLE, {regname(cnt,false), addr.print(), "0"});
                }
        }
    }
}



void CodeGenRegister::gencopy(string lhs_reg, string rhs_reg, bool is_float) {
    if (rhs_reg != lhs_reg) {
        if (is_float)
            append_inst("fmov.s " + lhs_reg + ", " + rhs_reg);
        else
            append_inst("or " + lhs_reg + ", $zero, " + rhs_reg);
    }
}

pair<string, bool> CodeGenRegister::getRegName(Value *v, int i)  {//不仅需要返回一个 找没找到的标记，
    bool find;
    string name;
    //TODO: 寻找v对应的寄存器名称，你可能会用到regalloc.hpp中的类
   // LOG_DEBUG << "float register map for function: " << func.get_name() << "\n";
       //     RA_float.print([](int i) { return regname(i, true); });  // 输出浮点型寄存器映射结果
    auto regmap = v->get_type()->is_float_type() ? RA_float.get() : RA_int.get();
    LOG(DEBUG)<<(regmap.find(v) == regmap.end())<<" "<<v->get_type()->is_float_type();
    if (regmap.find(v) == regmap.end()){
        if(v->get_type()->is_float_type()){
       //     load_to_freg(v, FReg::ft(unsigned(i)));
            find=false;
            name="$ft"+to_string(i);
        }else{
       //     load_to_greg(v, Reg::t(unsigned(i)));
            find=false;
            name="$t"+to_string(i);
        }
    }else{
        if(v->get_type()->is_float_type()){
            find=true;
            name=regname(regmap[v],true);
        }else{
            find=true;
            LOG(DEBUG)<<" "<<regmap[v];
            name=regname(regmap[v],false);
        }
    }
    return {name, find};
}


int CodeGenRegister::int_reg_offset(int id){
    return context.origin_frame_size+id*8;
}
int CodeGenRegister::float_reg_offset(int id){
    return context.origin_frame_size+8*R_USABLE+id*8;
}
void CodeGenRegister::allocate() {
     // 先给出了一个长度是16的空间 备份 $ra $
    unsigned offset = PROLOGUE_OFFSET_BASE;
    context.origin_frame_size=offset;
    offset+=(R_USABLE+FR_USABLE)*8;
    offset = ALIGN(offset , PROLOGUE_ALIGN);

    // 为每个参数分配栈空间
    for (auto &arg : context.func->get_args()) {
        //get_args()方法的返回值  std::list<Argument> arguments_;
        //每个arg都是一个argment类
        auto size = arg.get_type()->get_size();
        auto regmap = (arg.get_type()->is_float_type() ? RA_float.get() : RA_int.get());
        if (regmap.find(&arg) != regmap.end()){
            continue;
        }
        offset = ALIGN(offset + size, size);
        context.offset_map[&arg] = -static_cast<int>(offset);//取个反，放回去
        //这个数组的下标是指向value的指针，而数组中存储的是一个负数，表示具体的位置
    }
    //offset 记录的是我结束的位置
    // 为指令结果分配栈空间
    for (auto &bb : context.func->get_basic_blocks()) {
        for (auto &instr : bb.get_instructions()) {
            // 每个非 void 的定值都分配栈空间
            if(instr.is_br()){//how many copy-stmt
                auto *branchInst = static_cast<BranchInst *>(&instr);
                if (branchInst->is_cond_br()){
                    auto *tbb = static_cast<BasicBlock *>(branchInst->get_operand(1));
                    auto *fbb = static_cast<BasicBlock *>(branchInst->get_operand(2));
                    auto p1=std::make_pair(&bb,tbb);
                    if(context.phi_path.find(p1)!=context.phi_path.end()){
                        auto p2s=context.phi_path[p1];
                        context.max_cp_stmt=std:: max(context.max_cp_stmt,int(p2s.size()));
                    }
                    p1=std::make_pair(&bb,fbb);
                    if(context.phi_path.find(p1)!=context.phi_path.end()){
                        auto p2s=context.phi_path[p1];
                        context.max_cp_stmt=std:: max(context.max_cp_stmt,int(p2s.size()));
                    }
                }else{
                    auto *branchbb = static_cast<BasicBlock *>(branchInst->get_operand(0));
                    auto p1=std::make_pair(&bb,branchbb);
                    if(context.phi_path.find(p1)!=context.phi_path.end()){
                        auto p2s=context.phi_path[p1];
                        LOG_INFO<<" "<<bb.print()<<" "<<branchbb->print()<<" "<<p2s.size();

                        context.max_cp_stmt=std:: max(context.max_cp_stmt,int(p2s.size()));
                    }
                }
            }
            if (!no_stack_alloca(&instr)) {
                //instr也会有type，表示返回值的type
                auto size = instr.get_type()->get_size();
                offset = ALIGN(offset + size, size);
                context.offset_map[&instr] = -static_cast<int>(offset);
            }
            // alloca 的副作用：分配额外空间
            //数组是单独处理，而且不会进行对齐
            if (instr.is_alloca()) {
                auto *alloca_inst = static_cast<AllocaInst *>(&instr);
                auto alloc_size = alloca_inst->get_alloca_type()->get_size();
                offset += alloc_size;
                context.array_start_offset[alloca_inst]=offset;
                //auto shuzu_offset=alloc_size+base_offset;
            }
        }
    }
    context.copy_stmt_start=offset;
    offset+= context.max_cp_stmt*8;
    LOG_INFO<<" very important "<<" "<<context.max_cp_stmt;
    // 分配栈空间，需要是 16 的整数倍
    context.frame_size = ALIGN(offset, PROLOGUE_ALIGN);
}

void CodeGenRegister::gen_prologue() {
    makeSureInRange("addi.d", SP, SP, -context.frame_size, "add.d");
    makeSureInRange("st.d", RA_reg, SP, context.frame_size - 8, "stx.d");
    makeSureInRange("st.d", FP, SP, context.frame_size - 16, "stx.d");
    makeSureInRange("addi.d", FP, SP, context.frame_size, "add.d");
        // 将函数参数转移到栈帧上
    if(context.func->get_name()=="main"){
        int garg_cnt = 0;
        int farg_cnt = 0;
        for (auto &arg : context.func->get_args()) {
            if (arg.get_type()->is_float_type()) {
                store_from_freg(&arg, FReg::fa(farg_cnt++));
            } else { // int or pointer
                store_from_greg(&arg, Reg::a(garg_cnt++));
            }
        }
    }
    for (auto &arg : context.func->get_args()) {//被分配到寄存器上的参数，在这里赋值
        auto regmap = (arg.get_type()->is_float_type() ? RA_float.get() : RA_int.get());
       /* if (regmap.find(&arg) != regmap.end())
            if(arg.get_type()->is_float_type()){
                load_to_freg_string(&arg,regname(regmap[&arg],true));
            }else{
                load_to_greg_string(&arg,regname(regmap[&arg],false));
            }*/

    }
}

void CodeGenRegister::gen_epilogue() {
    append_inst(func_exit_label_name(context.func), ASMInstruction::Label);
    output.emplace_back("# epilog");

    makeSureInRange("ld.d", RA_reg, SP, context.frame_size - 8, "ldx.d");
    makeSureInRange("ld.d", FP, SP, context.frame_size - 16, "ldx.d");
    makeSureInRange("addi.d", SP, SP, context.frame_size, "add.d");
    append_inst("jr $ra");
}

void CodeGenRegister::load_to_greg(Value *val, const Reg &reg) {
    LOG_DEBUG<<val->get_name();
    assert(val->get_type()->is_integer_type() ||
           val->get_type()->is_pointer_type());

    if (auto *constant = dynamic_cast<ConstantInt *>(val)) {
        int32_t val = constant->get_value();
        if (IS_IMM_12(val)) {
            append_inst(ADDI WORD, {reg.print(), "$zero", std::to_string(val)});
        } else {
            load_large_int32(val, reg);
        }
    } else if (auto *global = dynamic_cast<GlobalVariable *>(val)) {
        append_inst(LOAD_ADDR, {reg.print(), global->get_name()});
    } else {
        load_from_stack_to_greg(val, reg);
    }
}

void CodeGenRegister::load_to_greg_string(Value *val, string reg) {
    assert(val->get_type()->is_integer_type() ||
           val->get_type()->is_pointer_type());
    LOG_DEBUG<<val->get_type()->is_integer_type() ;
    if (auto *constant = dynamic_cast<ConstantInt *>(val)) {
        int32_t val = constant->get_value();
        if (IS_IMM_12(val)) {
            append_inst(ADDI WORD, {reg, "$zero", std::to_string(val)});
        } else {
            load_large_int32_string(val, reg);
        }
    } else if (auto *global = dynamic_cast<GlobalVariable *>(val)) {
        append_inst(LOAD_ADDR, {reg, global->get_name()});
    } else {
        LOG_DEBUG<<"here";
        load_from_stack_to_greg_string(val, reg);
    }
}

void CodeGenRegister::load_large_int32(int32_t val, const Reg &reg) {
    int32_t high_20 = val >> 12; // si20
    uint32_t low_12 = val & LOW_12_MASK;
    append_inst(LU12I_W, {reg.print(), std::to_string(high_20)});
    append_inst(ORI, {reg.print(), reg.print(), std::to_string(low_12)});
}
void CodeGenRegister::load_large_int32_string(int32_t val, string reg) {
    int32_t high_20 = val >> 12; // si20
    uint32_t low_12 = val & LOW_12_MASK;
    append_inst(LU12I_W, {reg, std::to_string(high_20)});
    append_inst(ORI, {reg, reg, std::to_string(low_12)});
}
void CodeGenRegister::load_large_int64(int64_t val, const Reg &reg) {
    auto low_32 = static_cast<int32_t>(val & LOW_32_MASK);
    load_large_int32(low_32, reg);

    auto high_32 = static_cast<int32_t>(val >> 32);
    int32_t high_32_low_20 = (high_32 << 12) >> 12; // si20
    int32_t high_32_high_12 = high_32 >> 20;        // si12
    append_inst(LU32I_D, {reg.print(), std::to_string(high_32_low_20)});
    append_inst(LU52I_D,
                {reg.print(), reg.print(), std::to_string(high_32_high_12)});
}
void CodeGenRegister::load_large_int64_string(int64_t val, string reg) {
    auto low_32 = static_cast<int32_t>(val & LOW_32_MASK);
    load_large_int32_string (low_32, reg);

    auto high_32 = static_cast<int32_t>(val >> 32);
    int32_t high_32_low_20 = (high_32 << 12) >> 12; // si20
    int32_t high_32_high_12 = high_32 >> 20;        // si12
    append_inst(LU32I_D, {reg, std::to_string(high_32_low_20)});
    append_inst(LU52I_D,
                {reg, reg, std::to_string(high_32_high_12)});
}

void CodeGenRegister::load_from_stack_to_greg(Value *val, const Reg &reg) {
    auto offset = context.offset_map.at(val);
    auto offset_str = std::to_string(offset);
    auto *type = val->get_type();
    if (IS_IMM_12(offset)) {
        if (type->is_int1_type()) {
            append_inst(LOAD BYTE, {reg.print(), "$fp", offset_str});
        } else if (type->is_int32_type()) {
            append_inst(LOAD WORD, {reg.print(), "$fp", offset_str});
        } else { // Pointer
            append_inst(LOAD DOUBLE, {reg.print(), "$fp", offset_str});
        }
    } else {
        load_large_int64(offset, reg);
        append_inst(ADD DOUBLE, {reg.print(), "$fp", reg.print()});
        if (type->is_int1_type()) {
            append_inst(LOAD BYTE, {reg.print(), reg.print(), "0"});
        } else if (type->is_int32_type()) {
            append_inst(LOAD WORD, {reg.print(), reg.print(), "0"});
        } else { // Pointer
            append_inst(LOAD DOUBLE, {reg.print(), reg.print(), "0"});
        }
    }
}
void CodeGenRegister::load_from_stack_to_greg_string(Value *val, string reg) {
    auto offset = context.offset_map.at(val);
    auto offset_str = std::to_string(offset);
    auto *type = val->get_type();
    if (IS_IMM_12(offset)) {
        if (type->is_int1_type()) {
            append_inst(LOAD BYTE, {reg, "$fp", offset_str});
        } else if (type->is_int32_type()) {
            append_inst(LOAD WORD, {reg, "$fp", offset_str});
        } else { // Pointer
            append_inst(LOAD DOUBLE, {reg, "$fp", offset_str});
        }
    } else {
        load_large_int64_string(offset, reg);
        append_inst(ADD DOUBLE, {reg, "$fp", reg});
        if (type->is_int1_type()) {
            append_inst(LOAD BYTE, {reg, reg, "0"});
        } else if (type->is_int32_type()) {
            append_inst(LOAD WORD, {reg, reg, "0"});
        } else { // Pointer
            append_inst(LOAD DOUBLE, {reg, reg, "0"});
        }
    }
}
void CodeGenRegister::load_from_stack_to_greg_offset(int offset, string reg) {
    auto offset_str = std::to_string(offset);
    if (IS_IMM_12(offset)) {
        append_inst(LOAD DOUBLE, {reg, "$fp", offset_str});
    } else {
        load_large_int64_string(offset, reg);
        append_inst(ADD DOUBLE, {reg, "$fp", reg});
        append_inst(LOAD DOUBLE, {reg, reg, "0"});
    }
}


void CodeGenRegister::store_from_greg(Value *val, const Reg &reg) {
    auto offset = context.offset_map.at(val);
    auto offset_str = std::to_string(offset);
    auto *type = val->get_type();
    if (IS_IMM_12(offset)) {
        if (type->is_int1_type()) {
            append_inst(STORE BYTE, {reg.print(), "$fp", offset_str});
        } else if (type->is_int32_type()) {
            append_inst(STORE WORD, {reg.print(), "$fp", offset_str});
        } else { // Pointer
            append_inst(STORE DOUBLE, {reg.print(), "$fp", offset_str});
        }
    } else {
        auto addr = Reg::t(8);
        load_large_int64(offset, addr);
        append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
        if (type->is_int1_type()) {
            append_inst(STORE BYTE, {reg.print(), addr.print(), "0"});
        } else if (type->is_int32_type()) {
            append_inst(STORE WORD, {reg.print(), addr.print(), "0"});
        } else { // Pointer
            append_inst(STORE DOUBLE, {reg.print(), addr.print(), "0"});
        }
    }
}
void CodeGenRegister::store_from_greg_string(Value *val, string reg) {
    auto offset = context.offset_map.at(val);
    auto offset_str = std::to_string(offset);
    auto *type = val->get_type();
    if (IS_IMM_12(offset)) {
        if (type->is_int1_type()) {
            append_inst(STORE BYTE, {reg, "$fp", offset_str});
        } else if (type->is_int32_type()) {
            append_inst(STORE WORD, {reg, "$fp", offset_str});
        } else { // Pointer
            append_inst(STORE DOUBLE, {reg, "$fp", offset_str});
        }
    } else {
        auto addr = Reg::t(8);
        load_large_int64(offset, addr);
        append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
        if (type->is_int1_type()) {
            append_inst(STORE BYTE, {reg, addr.print(), "0"});
        } else if (type->is_int32_type()) {
            append_inst(STORE WORD, {reg, addr.print(), "0"});
        } else { // Pointer
            append_inst(STORE DOUBLE, {reg, addr.print(), "0"});
        }
    }
}
void CodeGenRegister::store_from_greg_offset(int offset , string reg) {
    auto offset_str = std::to_string(offset);
    if (IS_IMM_12(offset)) {
        append_inst(STORE DOUBLE, {reg, "$fp", offset_str});
    } else {
        auto addr = Reg::t(8);
        load_large_int64(offset, addr);
        append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
        append_inst(STORE DOUBLE, {reg, addr.print(), "0"});
    }
}
void CodeGenRegister::load_to_freg(Value *val, const FReg &freg) {
    assert(val->get_type()->is_float_type());
    if (auto *constant = dynamic_cast<ConstantFP *>(val)) {
        float val = constant->get_value();
        load_float_imm(val, freg);
    } else {
        auto offset = context.offset_map.at(val);
        auto offset_str = std::to_string(offset);
        if (IS_IMM_12(offset)) {
            append_inst(FLOAD SINGLE, {freg.print(), "$fp", offset_str});
        } else {
            auto addr = Reg::t(8);
            load_large_int64(offset, addr);
            append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
            append_inst(FLOAD SINGLE, {freg.print(), addr.print(), "0"});
        }
    }
}
void CodeGenRegister::load_to_freg_string(Value *val, string freg) {
    assert(val->get_type()->is_float_type());
    if (auto *constant = dynamic_cast<ConstantFP *>(val)) {
        float val = constant->get_value();
        load_float_imm_string(val, freg);
    } else {
        auto offset = context.offset_map.at(val);
        auto offset_str = std::to_string(offset);
        if (IS_IMM_12(offset)) {
            append_inst(FLOAD SINGLE, {freg, "$fp", offset_str});
        } else {
            auto addr = Reg::t(8);
            load_large_int64(offset, addr);
            append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
            append_inst(FLOAD SINGLE, {freg, addr.print(), "0"});
        }
    }
}
void CodeGenRegister::load_to_freg_offset(int offset, string freg) {
        auto offset_str = std::to_string(offset);
        if (IS_IMM_12(offset)) {
            append_inst(FLOAD SINGLE, {freg, "$fp", offset_str});
        } else {
            auto addr = Reg::t(8);
            load_large_int64(offset, addr);
            append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
            append_inst(FLOAD SINGLE, {freg, addr.print(), "0"});
        }
}
void CodeGenRegister::load_float_imm(float val, const FReg &r) {
    int32_t bytes = *reinterpret_cast<int32_t *>(&val);
    load_large_int32(bytes, Reg::t(8));
    append_inst(GR2FR WORD, {r.print(), Reg::t(8).print()});
}
void CodeGenRegister::load_float_imm_string(float val, string r) {
    int32_t bytes = *reinterpret_cast<int32_t *>(&val);
    load_large_int32(bytes, Reg::t(8));
    append_inst(GR2FR WORD, {r, Reg::t(8).print()});
}

void CodeGenRegister::store_from_freg(Value *val, const FReg &r) {
    auto offset = context.offset_map.at(val);
    if (IS_IMM_12(offset)) {
        auto offset_str = std::to_string(offset);
        append_inst(FSTORE SINGLE, {r.print(), "$fp", offset_str});
    } else {
        auto addr = Reg::t(8);
        load_large_int64(offset, addr);
        append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
        append_inst(FSTORE SINGLE, {r.print(), addr.print(), "0"});
    }
}
void CodeGenRegister::store_from_freg_string(Value *val, string r) {
    auto offset = context.offset_map.at(val);
    if (IS_IMM_12(offset)) {
        auto offset_str = std::to_string(offset);
        append_inst(FSTORE SINGLE, {r, "$fp", offset_str});
    } else {
        auto addr = Reg::t(8);
        load_large_int64(offset, addr);
        append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
        append_inst(FSTORE SINGLE, {r, addr.print(), "0"});
    }
}
void CodeGenRegister::store_from_freg_offset(int offset, string r) {
    if (IS_IMM_12(offset)) {
        auto offset_str = std::to_string(offset);
        append_inst(FSTORE SINGLE, {r, "$fp", offset_str});
    } else {
        auto addr = Reg::t(8);
        load_large_int64(offset, addr);
        append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
        append_inst(FSTORE SINGLE, {r, addr.print(), "0"});
    }
}

void CodeGenRegister::gen_ret() {
    auto return_inst = static_cast<ReturnInst *>(context.inst);
    if (not return_inst->is_void_ret()) {
        auto value = return_inst->get_operand(0);
        auto is_float = value->get_type()->is_float_type();
        auto reg = value2reg(value);//现在这个value应该在这个reg里边了
        if (is_float and reg != "$fa0")//要观察现在这个数据是不是在a0这个位置
            append_inst("fmov.s $fa0, " + reg);
        else if (not is_float and reg != "$a0")
            append_inst("or $a0, $zero, " + reg);
    } else {
        append_inst("addi.w $a0, $zero, 0");        
    }

    append_inst("b " + func_exit_label_name(context.func));
}

void CodeGenRegister::gen_br() {
    auto *branchInst = static_cast<BranchInst *>(context.inst);
    if (branchInst->is_cond_br()) {
        // TODO 补全条件跳转的情况
        auto con_reg=value2reg(branchInst->get_operand(0),1);
        auto *tbb = static_cast<BasicBlock *>(branchInst->get_operand(1));//这两个铁定是label
        auto *fbb = static_cast<BasicBlock *>(branchInst->get_operand(2));
        

        auto p1=std::make_pair(context.bb,tbb);
        if(context.phi_path.find(p1)!=context.phi_path.end()){//存在phi
            auto p2s=context.phi_path[p1];
            for(auto &p2:p2s){
                auto src=p2.second;
                auto dest=p2.first;
                auto *type =dest->get_type();
                if(type->is_float_type()){
                    auto sreg=value2reg(src,0);
                    auto [dest_reg, find] = getRegName(dest, 0);
                    append_inst("fmov.s "+dest_reg+", " +sreg);
                    if(!find){
                        store_from_freg_string(dest,dest_reg);//move 操作
                    }
                }else{//int

                    auto sreg=value2reg(src,0);
                    auto [dest_reg, find] = getRegName(dest, 0);
                    append_inst("or "+dest_reg+", "+"$zero, " +sreg);
                    if(!find){
                        store_from_greg_string(dest,dest_reg);//move 操作
                    }
                }
            }
        }
        append_inst("addi.w $t0,$zero,0");
        append_inst("blt $t0,"+con_reg+","+label_name(tbb));

        p1=std::make_pair(context.bb,fbb);
        if(context.phi_path.find(p1)!=context.phi_path.end()){//存在phi
            auto p2s=context.phi_path[p1];
            for(auto &p2:p2s){
                auto src=p2.second;
                auto dest=p2.first;
                auto *type =dest->get_type();
                if(type->is_float_type()){
                    auto sreg=value2reg(src,0);
                    auto [dest_reg, find] = getRegName(dest, 0);
                    append_inst("fmov.s "+dest_reg+", " +sreg);
                    if(!find){
                        store_from_freg_string(dest,dest_reg);//move 操作
                    }
                }else{//int

                    auto sreg=value2reg(src,0);
                    auto [dest_reg, find] = getRegName(dest, 0);
                    append_inst("or "+dest_reg+", "+"$zero, " +sreg);
                    if(!find){
                        store_from_greg_string(dest,dest_reg);//move 操作
                    }
                }
            }
        }
        append_inst("b "+label_name(fbb));

        //throw not_implemented_error{__FUNCTION__};
    } else {
        auto *branchbb = static_cast<BasicBlock *>(branchInst->get_operand(0));
        auto p1=std::make_pair(context.bb,branchbb);
        if(context.phi_path.find(p1)!=context.phi_path.end()){//存在phi
            auto p2s=context.phi_path[p1];
            int cnt=0;
            for(auto &p2:p2s){
                cnt++;
                auto src=p2.second;
                auto dest=p2.first;
                auto *type =dest->get_type();
                if(type->is_float_type()){
                    auto sreg=value2reg(src,0);
                    store_from_freg_offset(-(context.copy_stmt_start+8*cnt),sreg);
                }else{//int
                    auto sreg=value2reg(src,0);
                    store_from_greg_offset(-(context.copy_stmt_start+8*cnt),sreg);
                }

            }
            cnt=0;
            for(auto &p2:p2s){
                cnt++;
                auto src=p2.second;
                auto dest=p2.first;
                auto *type =dest->get_type();
                if(type->is_float_type()){
                    auto [dest_reg, find] = getRegName(dest, 0);
                    load_to_freg_offset(-(context.copy_stmt_start+8*cnt),dest_reg);
                    if(!find){
                        store_from_freg_string(dest,dest_reg);//move 操作
                    }
                }else{//int
                    auto [dest_reg, find] = getRegName(dest, 0);
                    load_from_stack_to_greg_offset(-(context.copy_stmt_start+8*cnt),dest_reg);
                    if(!find){
                        store_from_greg_string(dest,dest_reg);//move 操作
                    }
                }

            }
        }
        append_inst("b " + label_name(branchbb));
    }
}

void CodeGenRegister::gen_binary() {
    //TODO:处理二元运算符情况，注意与栈式分配的差别    
    // 分别将左右操作数加载到 $t0 $t1
    auto sreg0=value2reg(context.inst->get_operand(0),0);
    LOG(DEBUG)<<sreg0;
    auto sreg1=value2reg(context.inst->get_operand(1),1);
    LOG(DEBUG)<<sreg1; 
    auto [dest_reg, find] = getRegName(context.inst, 0);
    LOG(DEBUG)<<dest_reg; 
    // 根据指令类型生成汇编
    switch (context.inst->get_instr_type()) {
    case Instruction::add:
        output.emplace_back("add.w "+dest_reg+", "+sreg0+", "+sreg1);
        break;
    case Instruction::sub:
        output.emplace_back("sub.w "+dest_reg+", "+sreg0+", "+sreg1);
        break;
    case Instruction::mul:
        output.emplace_back("mul.w "+dest_reg+", "+sreg0+", "+sreg1);
        break;
    case Instruction::sdiv:
        output.emplace_back("div.w "+dest_reg+", "+sreg0+", "+sreg1);
        break;
    case Instruction::srem:
        output.emplace_back("mod.w "+dest_reg+", "+sreg0+", "+sreg1);
        break;
    default:
        assert(false);
    }
    // 将结果填入栈帧中
    if(!find){
        store_from_greg_string(context.inst,dest_reg);//move 操作
    }
}

void CodeGenRegister::gen_alloca() {
    //使用寄存器分配，这里不需要做处理
    auto *alloca_inst = static_cast<AllocaInst *>(context.inst);
    auto shuzu_offset = context.array_start_offset[alloca_inst];
    //std:: cout<<shuzu_offset<<std::endl;
    auto [dest, find] = getRegName(context.inst,0);
    load_large_int32(shuzu_offset,Reg::t(0));
    append_inst("sub.d "+dest+",$fp,$t0");// fp-base-size
    if(!find){
        store_from_greg_string(context.inst, dest);//load这个操作产生了一个新的左值，我们需要把这个现在在ft中的左值放到栈里边
    }
    
}

void CodeGenRegister::gen_load() {
    auto ptr = context.inst->get_operand(0);//在指针类型auto*和auto没有任何区别
    auto *type = context.inst->get_type();
    auto sreg=value2reg(ptr,0);
    auto [dest, find] = getRegName(context.inst);
    //std::cout<<ptr->get_type()->is_pointer_type()<<std::endl;
   // load_to_greg(ptr, Reg::t(0));//这里t0放的是一个指针而不是一个数，这是因为这个指令调用的时候，就只能传个指针进来。
    //相当于alloca，最后传进来的最后存储的头指针，但是我们要把数据放到alloca出来的数组里
    //

    if (type->is_float_type()) {
        append_inst("fld.s "+dest+", "+sreg+", 0");//ft0=M[t0+0]
        if(!find){
            store_from_freg_string(context.inst, dest);//load这个操作产生了一个新的左值，我们需要把这个现在在ft中的左值放到栈里边
        }
        
    } else {
        if(type->is_int1_type()){
            append_inst("ld.b "+dest+", "+sreg+", 0");
        }else if(type->is_int32_type()){
            append_inst("ld.w "+dest+", "+sreg+", 0");
        }else{
            append_inst("ld.d "+dest+", "+sreg+", 0");
        }
        if(!find){
            store_from_greg_string(context.inst, dest);//load这个操作产生了一个新的左值，我们需要把这个现在在ft中的左值放到栈里边
        }
    }
}

void CodeGenRegister::gen_store() {
    auto *type = context.inst->get_operand(0)->get_type();//怎么store取决于我们要存的数据是什么类型
    auto *ptr = context.inst->get_operand(1);//位置/
    auto pst_reg=value2reg(ptr,1);
    auto data_reg=value2reg(context.inst->get_operand(0),0);
    if (type->is_float_type()) {
        append_inst("fst.s "+data_reg+", "+pst_reg+", 0");//M[t1+0]=t0
    } else {
        if(type->is_int1_type()){
            append_inst("st.b "+data_reg+", "+pst_reg+", 0");//M[t1+0]=t0
        }else if(type->is_int32_type()){
            append_inst("st.w "+data_reg+", "+pst_reg+", 0");
        }else{
            append_inst("st.d "+data_reg+", "+pst_reg+", 0");
        }
        // TODO load 整数类型的数据
    }

}

void CodeGenRegister::gen_icmp() {
    // TODO 处理各种整数比较的情况
    ///context.offset_map[&arg] = -static_cast<int>(offset);取个反，放回去
        //这个数组的下标是指向value的指针，而数组中存储的是一个负数，表示具体的位置
    /*auto *icmp_inst = static_cast<ICmpInst *>(context.inst);
    std::vector<Value *> ops=icmp_inst->get_operands();
    for (auto &opp : ops){
        std::cout << opp->get_name() <<" "<<1; 
    }
    std:: cout<<std::endl;*/
    //这个指令有两个参数，就是两个参与运算的参数
    auto sreg0=value2reg(context.inst->get_operand(0),0);
    LOG(DEBUG)<<sreg0;
    auto sreg1=value2reg(context.inst->get_operand(1),1);
    LOG(DEBUG)<<sreg1; 
    auto [dest_reg, find] = getRegName(context.inst, 0);
    LOG(DEBUG)<<dest_reg; 
    // 根据指令类型生成汇编
    switch (context.inst->get_instr_type()) {
    case Instruction::eq:
        append_inst("slt $t8,"+sreg1+","+sreg0);
        append_inst("slt $t0,"+sreg0+","+sreg1);
        append_inst("or $t0,$t0,$t8");
        append_inst("addi.w $t8,$zero,1");
        append_inst("sub.w  "+dest_reg+",$t8,$t0");
        break;
    case Instruction::ne:
        append_inst("slt $t8,"+sreg1+","+sreg0);
        append_inst("slt $t0,"+sreg0+","+sreg1);
        append_inst("or "+dest_reg+",$t0,$t8");
        break;
    case Instruction::gt:
        append_inst("slt "+dest_reg+","+sreg1+","+sreg0);
        break;
    case Instruction::ge:
        append_inst("slt "+dest_reg+","+sreg0+","+sreg1);
        append_inst("addi.w $t8,$zero,1");
        append_inst("sub.w "+dest_reg+",$t8,"+dest_reg);
        break;
    case Instruction::lt:
          append_inst("slt "+dest_reg+","+sreg0+","+sreg1);
        break;
    case Instruction::le:
        append_inst("slt "+dest_reg+","+sreg1+","+sreg0);
        append_inst("addi.w $t8,$zero,1");
        append_inst("sub.w "+dest_reg+",$t8,"+dest_reg);
        break;
    default:
        assert(false);
    }
    if(!find){
        store_from_greg_string(context.inst,dest_reg);//move 操作
    }
}


int fcmpcnt=0;
void CodeGenRegister::gen_fcmp() {
    // TODO 处理各种浮点数比较的情况
    auto sreg0=value2reg(context.inst->get_operand(0),0);
    LOG(DEBUG)<<sreg0;
    auto sreg1=value2reg(context.inst->get_operand(1),1);
    LOG(DEBUG)<<sreg1; 
    auto [dest_reg, find] = getRegName(context.inst, 0);
    LOG(DEBUG)<<dest_reg; 
    // 根据指令类型生成汇编
    fcmpcnt+=1;
    std::string fnum=std::to_string(fcmpcnt);
    switch (context.inst->get_instr_type()) {
    case Instruction::feq:
        append_inst("fcmp.seq.s $fcc0, "+sreg0+", "+sreg1);
        break;
    case Instruction::fne:
        append_inst("fcmp.sne.s $fcc0, "+sreg0+", "+sreg1);
        break;
    case Instruction::fgt:
        append_inst("fcmp.slt.s $fcc0, "+sreg1+", "+sreg0);
        break;
    case Instruction::fge:
        append_inst("fcmp.sle.s $fcc0, "+sreg1+", "+sreg0);
        break;
    case Instruction::flt:
        append_inst("fcmp.slt.s $fcc0, "+sreg0+", "+sreg1);
        break;
    case Instruction::fle:
        append_inst("fcmp.sle.s $fcc0, "+sreg0+", "+sreg1);
        break;
    default:
        assert(false);
    }
    append_inst("bcnez      $fcc0, float_true"+fnum);
    append_inst("b          float_false"+fnum);
    append_inst("float_true"+fnum, ASMInstruction::Label);
    append_inst("addi.w     "+dest_reg+", $zero, 1");
    append_inst("b          float_exit"+fnum);
    append_inst("float_false"+fnum, ASMInstruction::Label);
    append_inst("addi.w     "+dest_reg+", $zero, 0");
    append_inst("b          float_exit"+fnum);
    append_inst("float_exit"+fnum, ASMInstruction::Label);

    if(!find){
        store_from_freg_string(context.inst,dest_reg);//move 操作
    }
    //throw not_implemented_error{__FUNCTION__};
}
void CodeGenRegister::gen_float_binary() {
    //使用寄存器分配，特殊处理了Phi, 只需用到br
    auto sreg0=value2reg(context.inst->get_operand(0),0);
    LOG(DEBUG)<<sreg0;
    auto sreg1=value2reg(context.inst->get_operand(1),1);
    LOG(DEBUG)<<sreg1; 
    auto [dest_reg, find] = getRegName(context.inst, 0);
    LOG(DEBUG)<<dest_reg; 
    // 根据指令类型生成汇编
    switch (context.inst->get_instr_type()) {
    case Instruction::fadd:
        output.emplace_back("fadd.s "+dest_reg+","+sreg0+","+sreg1);
        break;
    case Instruction::fsub:
        output.emplace_back("fsub.s "+dest_reg+","+sreg0+","+sreg1);
        break;
    case Instruction::fmul:
        output.emplace_back("fmul.s "+dest_reg+","+sreg0+","+sreg1);
        break;
    case Instruction::fdiv:
        output.emplace_back("fdiv.s "+dest_reg+","+sreg0+","+sreg1);
        break;
    default:
        assert(false);
    }
    // 将结果填入栈帧中
    if(!find){
        store_from_freg_string(context.inst,dest_reg);//move 操作
    }
}
void CodeGenRegister::value4call_out(Value *v, int cnt) {//把value放到reg里边，并返回放到了哪个reg里边
   // bool is_float = v->get_type()->is_float_type();
    //auto tmp_ireg = Reg::t(i);
    bool find;
    string name;
    //TODO: 寻找v对应的寄存器名称，你可能会用到regalloc.hpp中的类
   // LOG_DEBUG << "float register map for function: " << func.get_name() << "\n";
       //     RA_float.print([](int i) { return regname(i, true); });  // 输出浮点型寄存器映射结果
    auto regmap = v->get_type()->is_float_type() ? RA_float.get() : RA_int.get();
    if (regmap.find(v) == regmap.end()){
        if(v->get_type()->is_float_type()){
            load_to_freg(v, FReg::fa(cnt));
        }else{
            load_to_greg(v, Reg::a(cnt));
        }
    }else{
       

        if(v->get_type()->is_float_type()){
                auto offset=(-1)*float_reg_offset(regmap[v]);
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(FLOAD SINGLE,{regname(cnt+1,true), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(FLOAD SINGLE, {regname(cnt+1,true), addr.print(), "0"});
                }
            //append_inst("fld.s $fa"+to_string(cnt)+" ,$fp, "+to_string(()));
        }else{
                auto offset=(-1)*int_reg_offset(regmap[v]);
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(LOAD DOUBLE,{regname(cnt+1,false), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(LOAD DOUBLE, {regname(cnt+1,false), addr.print(), "0"});
                }
        }
    }
}

void CodeGenRegister::gen_zext() {
   // if (RA::RegAllocator::no_reg_alloca(context.inst))
    //    return;'
    auto sreg0=value2reg(context.inst->get_operand(0),0);
    auto [dest_reg, find] = getRegName(context.inst, 0);

    auto *type = context.inst->get_type();

    if (type->is_float_type()) {
        append_inst("movgr2fr.w "+sreg0+","+dest_reg);//放到合适的位置
    } else {
        if(sreg0!=dest_reg){
            append_inst("add.d "+dest_reg+", $zero, "+sreg0);
        }
        
    }

    if(!find){
        if(type->is_float_type()){
            store_from_freg_string(context.inst,dest_reg);//move 操作
        }else{
            store_from_greg_string(context.inst,dest_reg);//move 操作
        }
    }
}

void CodeGenRegister::store_from_greg_parameter(Value *val, const Reg &reg) {
    auto offset = context.offset_call.at(val);//context的下标因该是inst
    auto offset_str = std::to_string(offset);
    auto *type = val->get_type();
    if (IS_IMM_12(offset)) {
        if (type->is_int1_type()) {
            append_inst(STORE BYTE, {reg.print(), "$sp", offset_str});
        } else if (type->is_int32_type()) {
            append_inst(STORE WORD, {reg.print(), "$sp", offset_str});
        } else { // Pointer
            append_inst(STORE DOUBLE, {reg.print(), "$sp", offset_str});
        }
    } else {
        auto addr = Reg::t(8);
        load_large_int64(offset, addr);
        append_inst(ADD DOUBLE, {addr.print(), "$sp", addr.print()});
        if (type->is_int1_type()) {
            append_inst(STORE BYTE, {reg.print(), addr.print(), "0"});
        } else if (type->is_int32_type()) {
            append_inst(STORE WORD, {reg.print(), addr.print(), "0"});
        } else { // Pointer
            append_inst(STORE DOUBLE, {reg.print(), addr.print(), "0"});
        }
    }
}
void CodeGenRegister::store_from_freg_parameter(Value *val, const FReg &r) {
    auto offset = context.offset_call.at(val);//
    if (IS_IMM_12(offset)) {
        auto offset_str = std::to_string(offset);
        append_inst(FSTORE SINGLE, {r.print(), "$sp", offset_str});
    } else {
        auto addr = Reg::t(8);
        load_large_int64(offset, addr);
        append_inst(ADD DOUBLE, {addr.print(), "$sp", addr.print()});
        append_inst(FSTORE SINGLE, {r.print(), addr.print(), "0"});
    }
}
void CodeGenRegister::gen_call() {
    /* auto offset = context.offset_map.at(val);
    // //这个数组的下标是指向value的指针，而数组中存储的是一个负数，表示具体的位置
    //这个value可能是arg，表示函数初始传进来的参数，也有可能是inst，表示一个式子的结果
    auto offset_str = std::to_string(offset);
    auto *type = val->get_type();//只能是 1 32 64
    if (IS_IMM_12(offset)) {
        if (type->is_int1_type()) {//bool
            append_inst(LOAD BYTE, {reg.print(), "$fp", offset_str});
            //ld.b $f0 $fp,-x
        } else if (type->is_int32_type()) {//int
            append_inst(LOAD WORD, {reg.print(), "$fp", offset_str});
            //ld.w $f0 $fp,-x
        } else { // Pointer
            append_inst(LOAD DOUBLE, {reg.print(), "$fp", offset_str});
        }
    } else {
        load_large_int64(offset, reg);//先把这个大的offset搞出来
        append_inst(ADD DOUBLE, {reg.print(), "$fp", reg.print()});//和fp做运算
        if (type->is_int1_type()) {
            append_inst(LOAD BYTE, {reg.print(), reg.print(), "0"});
        } else if (type->is_int32_type()) {
            append_inst(LOAD WORD, {reg.print(), reg.print(), "0"});
        } else { // Pointer
            append_inst(LOAD DOUBLE, {reg.print(), reg.print(), "0"});
        }
    }*/
    for(int i=1;i<=R_USABLE;i++){
        int offset=int_reg_offset(i)*(-1);
        if (IS_IMM_12(offset)) {
            auto offset_str = std::to_string(offset);
            append_inst(STORE DOUBLE,{regname(i,false), "$fp", to_string(offset)});
        } else {
            auto addr = Reg::t(8);
            load_large_int64(offset, addr);
            append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
            append_inst(STORE DOUBLE, {regname(i,false), addr.print(), "0"});
        }
        //append_inst(STORE DOUBLE,{regname(i,false), "$fp", to_string(offset)});
    }
    for(int i=1;i<=FR_USABLE;i++){
        int offset=float_reg_offset(i)*(-1);
        if (IS_IMM_12(offset)) {
            auto offset_str = std::to_string(offset);
            append_inst(FSTORE SINGLE,{regname(i,true), "$fp", to_string(offset)});
        } else {
            auto addr = Reg::t(8);
            load_large_int64(offset, addr);
            append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
            append_inst(FSTORE SINGLE, {regname(i,true), addr.print(), "0"});
        }
    }//先搬运寄存器
    auto *callInst = static_cast<CallInst *>(context.inst);
    int len=callInst->get_num_operand();
    auto *type = context.inst->get_type();
    std::vector<Value *> ops=callInst->get_operands();
    int garg_cnt = 0;
    int farg_cnt = 0;
    auto func_name=ops[0]->get_name();
    if(outside_func.find(func_name)!=outside_func.end()){
        //这个是out_side func
        for(int i=1;i<len;i++){
            if(ops[i]->get_type()->is_float_type()){
                value4call_out(ops[i],farg_cnt);
                farg_cnt=std::min(7,farg_cnt+1);
            }else{
                value4call_out(ops[i],garg_cnt);
                garg_cnt=std::min(7,garg_cnt+1);
            }
        }
    }else{
        auto func=static_cast<Function *>(ops[0]);
        //把数据转移到寄存器
      //  LRA_call.run(func);  // 执行寄存器分配算法，将结果存储在LRA对象中
       // RA_int_call.LinearScan(LRA_call.get(), func);  // 对整型寄存器进行线性扫描，并将结果存储在RA_int对象中
        //RA_float_call.LinearScan(LRA_call.get(), func);  // 对浮点型寄存器进行线性扫描，并将结果存储在RA_float对象中
        int offset=16+(R_USABLE+FR_USABLE)*8;
        // 为每个参数分配栈空间
        int i=1;
        for (auto &arg : func->get_args()) {
            //get_args()方法的返回值  std::list<Argument> arguments_;
            //每个arg都是一个argment类
            auto size = arg.get_type()->get_size();
            auto regmap_call = (arg.get_type()->is_float_type() ? RA_float_result[func] : RA_int_result[func]);
            string name;
            if (regmap_call.find(&arg) != regmap_call.end()){//不需要放到栈
                value4call(ops[i],regmap_call[&arg]);
                i++;
                continue;
            }
            offset = ALIGN(offset + size, size);
            context.offset_call[&arg] = -static_cast<int>(offset);//取个反，放回去

            //这个数组的下标是指向value的指针，而数组中存储的是一个负数，表示具体的位置
            if(ops[i]->get_type()->is_float_type()){
                value4call(ops[i],-100);
                store_from_freg_parameter(&arg,FReg::ft(0));
            }else{
                value4call(ops[i],-100);
                store_from_greg_parameter(&arg,Reg::t(0));
            }
            i++;
        }
        //bl
        LOG(DEBUG)<<ops[0]->print();

    }
   


    append_inst("bl "+ops[0]->get_name());
    if(type->is_void_type()){
        //什么都不做
            for(int i=1;i<=R_USABLE;i++){
                int offset=int_reg_offset(i)*(-1);
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(LOAD DOUBLE,{regname(i,false), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(LOAD DOUBLE, {regname(i,false), addr.print(), "0"});
                }
                //append_inst(STORE DOUBLE,{regname(i,false), "$fp", to_string(offset)});
            }
            for(int i=1;i<=FR_USABLE;i++){
                int offset=float_reg_offset(i)*(-1);
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(FLOAD SINGLE,{regname(i,true), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(FLOAD SINGLE, {regname(i,true), addr.print(), "0"});
                }
            }//先搬运寄存器

    }else{
        auto [dest_reg, find] = getRegName(context.inst, 0);
        if(type->is_float_type()) {
            if(!find){
                store_from_freg(context.inst, FReg::fa(0));//load这个操作产生了一个新的左值，我们需要把这个现在在ft中的左值放到栈里边
            }else{
                append_inst("fmov.s "+dest_reg+",$fa0");
            }
            
        }else {
            if(!find){
                store_from_greg(context.inst, Reg::a(0));//直接放回去就可以了
            }else{
                append_inst("addi.d "+dest_reg+",$a0,0");
            }
        }
        if(!find){
            for(int i=1;i<=R_USABLE;i++){
                int offset=int_reg_offset(i)*(-1);
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(LOAD DOUBLE,{regname(i,false), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(LOAD DOUBLE, {regname(i,false), addr.print(), "0"});
                }
                //append_inst(STORE DOUBLE,{regname(i,false), "$fp", to_string(offset)});
            }
            for(int i=1;i<=FR_USABLE;i++){
                int offset=float_reg_offset(i)*(-1);
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(FLOAD SINGLE,{regname(i,true), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(FLOAD SINGLE, {regname(i,true), addr.print(), "0"});
                }
            }//先搬运寄存器
        }else{
            //
            for(int i=1;i<=R_USABLE;i++){
                int offset=int_reg_offset(i)*(-1);
                if(regname(i,false)==dest_reg){
                    LOG_DEBUG<<"confict!  "<<dest_reg;
                    continue;
                }    
                 if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(LOAD DOUBLE,{regname(i,false), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(LOAD DOUBLE, {regname(i,false), addr.print(), "0"});
                }
            }
            for(int i=1;i<=FR_USABLE;i++){
                int offset=float_reg_offset(i)*(-1);
                if(regname(i,true)==dest_reg){//处理冲突
                    LOG_DEBUG<<"confict!  "<<dest_reg;
                    continue;
                }    
                if (IS_IMM_12(offset)) {
                    auto offset_str = std::to_string(offset);
                    append_inst(FLOAD SINGLE,{regname(i,true), "$fp", to_string(offset)});
                } else {
                    auto addr = Reg::t(8);
                    load_large_int64(offset, addr);
                    append_inst(ADD DOUBLE, {addr.print(), "$fp", addr.print()});
                    append_inst(FLOAD SINGLE, {regname(i,true), addr.print(), "0"});
                }
            }
        }
    } 
    //获取返回值
   // 
    /*    if(type->is_void_type()){
            //什么都不做
        }else if(type->is_float_type()) {
            store_from_freg(context.inst, FReg::fa(0));//load这个操作产生了一个新的左值，我们需要把这个现在在ft中的左值放到栈里边
        }else {
            store_from_greg(context.inst, Reg::a(0));//直接放回去就可以了
        } */
    
    /*}else{
        if(type->is_void_type()){
            //什么都不做
        }else if(type->is_float_type()) {
            append_inst("addi.d "+dest_reg+",$a0,0");
        }else {
            append_inst("fmov.s"+dest_reg+",$fa0");
        } 
    }*/
    

}

/*
 * %op = getelementptr [10 x i32], [10 x i32]* %op, i32 0, i32 %op
 * %op = getelementptr        i32,        i32* %op, i32 %op
 *
 * Memory layout
 *       -            ^
 * +-----------+      | Smaller address
 * |  arg ptr  |---+  |
 * +-----------+   |  |
 * |           |   |  |
 * +-----------+   /  |
 * |           |<--   |
 * |           |   \  |
 * |           |   |  |
 * |   Array   |   |  |
 * |           |   |  |
 * |           |   |  |
 * |           |   |  |
 * +-----------+   |  |
 * |  Pointer  |---+  |
 * +-----------+      |
 * |           |      |
 * +-----------+      |
 * |           |      |
 * +-----------+      |
 * |           |      |
 * +-----------+      | Larger address
 *       +
 */
void CodeGenRegister::gen_gep() {

    // TODO 计算内存地址
    auto *callInst = static_cast<GetElementPtrInst *>(context.inst);
    int len=callInst->get_num_operand();
    auto *type = context.inst->get_type();
    std::vector<Value *> ops=callInst->get_operands();
    /*for (auto &opp : ops){
        std::cout << opp->get_name() <<" "<<"!"; 
    }
    std:: cout<<std::endl;
   */
  // LOG(DEBUG)<<"aaaaa\n";
    LOG(DEBUG)<<context.inst->get_type()->get_pointer_element_type()->get_size();//后面一串的积
    //有三个参数 表示指针，移动1，和移动2
    auto *gepInst = static_cast<GetElementPtrInst *>(context.inst);
   // int len=gepInst->get_num_operand();
    //拿到基准地址
    //拿到值
    //基准地址修改一下
    //存回去
    if(len>=3){
        int idx=0;
        LOG(DEBUG)<<context.inst->get_operand(0)->get_type()->get_pointer_element_type()->print();
        auto weight=context.inst->get_operand(0)->get_type()->get_pointer_element_type();
        //weight=static_cast<const ArrayType *>(weight)->get_element_type();//start from 2
        append_inst("add.d $t0,$zero,$zero");
        for(int j=1;j<=len-1;j++){
            auto idx=value2reg(context.inst->get_operand(j),1);//这是一个指针，初始指针
            //t1放着这个维度的下标
            int val=weight->get_size();
            if (IS_IMM_12(val)) {//t8 放着这个维度的后缀乘积
                append_inst(ADDI WORD, {"$t8", "$zero", std::to_string(val)});
                /* addi.w $f1, $zero, 4 */
            } else {
                load_large_int32(val, Reg::t(8));//太大了
            }
            append_inst("mul.d $t8,"+idx+",$t8");//*扩大倍数
            append_inst("add.d $t0,$t0,$t8");//添加到t0身上
            
            //LOG(DEBUG)<<"++++++++++++++++++++++++"<<weight->get_size()<<" "<<static_cast<ConstantInt *>(context.inst->get_operand(j))->get_value();
            if(j==len-1)continue;
            weight=static_cast<const ArrayType *>(weight)->get_element_type();
        }
        auto [dest_reg, find] = getRegName(context.inst, 0);//result in t1
        auto *ptr = context.inst->get_operand(0);//在指针类型auto*和auto没有任何区别
        auto ptr_reg=value2reg(ptr,1);
        append_inst("add.d "+dest_reg+","+ptr_reg+",$t0");//基础值
       // load_large_int32(idx,Reg::t(1));//这个是常数，也就是数组下标，已经扩大了4倍了
        //append_inst("addi.d $t2,$zero,"+std::to_string(context.inst->get_type()->get_pointer_element_type()->get_size()));
        //append_inst("mul.d $t1,$t1,$t2");//*4
       // append_inst("add.d $t0,$t0,$t1");
        if(!find){
            store_from_greg_string(context.inst, dest_reg);
        }
        //store_from_greg(context.inst, Reg::t(0));
    }else{
        auto [dest_reg, find] = getRegName(context.inst, 0);//result in t1
        auto *ptr = context.inst->get_operand(0);//在指针类型auto*和auto没有任何区别
        auto ptr_reg=value2reg(ptr,1);
        auto idx=value2reg(context.inst->get_operand(1),0);//这个是常数，也就是数组下标
        //append_inst("addi.d $t2,$zero,"+std::to_string(context.inst->get_type()->get_pointer_element_type()->get_size()));
        append_inst("add.d $t8,"+idx+" , "+idx);
        append_inst("add.d $t8,$t8,$t8");//*4
        append_inst("add.d "+dest_reg+",$t8,"+ptr_reg);//基础值。
      //  append_inst("add.d "+dest_reg+",$zero,$t8");
        if(!find){
            store_from_greg_string(context.inst, dest_reg);
        }
    }
}

void CodeGenRegister::gen_sitofp() {
    auto *callInst = static_cast<SiToFpInst *>(context.inst);
    int len=callInst->get_num_operand();
    auto *type = context.inst->get_type();
    std::vector<Value *> ops=callInst->get_operands();
    // for (auto &opp : ops){
    //     std::cout << opp->get_name() <<" "<<"!"; 
    // }
    // std:: cout<<std::endl;
    auto sreg0=value2reg(context.inst->get_operand(0),0);
    LOG(DEBUG)<<sreg0;
    auto [dest_reg, find] = getRegName(context.inst, 0);
    LOG(DEBUG)<<dest_reg; 
    append_inst("movgr2fr.w $ft0,"+sreg0);
    append_inst("ffint.s.w " +dest_reg+", $ft0");
    if(!find){
        store_from_freg_string(context.inst,dest_reg);//move 操作
    }
    //throw not_implemented_error{__FUNCTION__};
}

void CodeGenRegister::gen_fptosi() {
    auto sreg0=value2reg(context.inst->get_operand(0),0);
    LOG(DEBUG)<<sreg0;
    auto [dest_reg, find] = getRegName(context.inst, 0);
    LOG(DEBUG)<<dest_reg; 
    append_inst("ftintrz.w.s $ft1,"+sreg0);
    append_inst("movfr2gr.s "+dest_reg+", $ft1");
    if(!find){
        store_from_greg_string(context.inst,dest_reg);//move 操作
    }
}
void CodeGenRegister::global_array_int(ConstantArray * init_val){
    /*.globl	a
                .data
                .align	3
                .type	a, @object
                .size	a, 20
            a:
                .word	0
                .word	1
                .word	2
                .word	3
                .word	4
                */
    //std::string const_ir;
    // const_ir += this->get_type()->print();
    // const_ir += " ";
    //const_ir += "[";
    LOG(DEBUG)<<init_val->print();
    for (unsigned i = 0; i < init_val->get_size_of_array(); i++)
    {//获得这一层的大小
        Constant *element = init_val->get_element_value(i);
        if (!dynamic_cast<ConstantArray *>(element))
        {//这个元素已经不再是array了
            auto *IntVal = static_cast<ConstantInt *>(element);
            append_inst(".word", {std::to_string(IntVal->get_value())},
                            ASMInstruction::Atrribute);
        }else{
            //这个元素依然是array，递归下去
            auto new_array=static_cast<ConstantArray *>(element);
            global_array_int(new_array);
        }
    }
}
void CodeGenRegister::global_array_float(ConstantArray * init_val){
    /*.globl	a
                .data
                .align	3
                .type	a, @object
                .size	a, 20
            a:
                .word	0
                .word	1
                .word	2
                .word	3
                .word	4
                */
    //std::string const_ir;
    // const_ir += this->get_type()->print();
    // const_ir += " ";
    //const_ir += "[";
    LOG(DEBUG)<<init_val->print();
    for (unsigned i = 0; i < init_val->get_size_of_array(); i++)
    {//获得这一层的大小
        Constant *element = init_val->get_element_value(i);
        if (!dynamic_cast<ConstantArray *>(element))
        {//这个元素已经不再是array了
            auto *FPVal = static_cast<ConstantFP *>(element);
            float t1=FPVal->get_value();
            int temp=reinterpret_cast<int&>(t1);
            append_inst(".word", {std::to_string(temp)},
                            ASMInstruction::Atrribute);
        }else{
            //这个元素依然是array，递归下去
            auto new_array=static_cast<ConstantArray *>(element);
            global_array_float(new_array);
        }
    }
}
void CodeGenRegister::run() {
    // 确保每个函数中基本块的名字都被设置好
    m->set_print_name();

    /* 使用 GNU 伪指令为全局变量分配空间
     * 你可以使用 `la.local` 指令将标签 (全局变量) 的地址载入寄存器中, 比如
     * 要将 `a` 的地址载入 $t0, 只需要 `la.local $t0, a`
     */
    LOG(DEBUG)<<"start to run codegen";
    if (!m->get_global_variable().empty()) {
        append_inst("Global variables", ASMInstruction::Comment);
        /* 虽然下面两条伪指令可以简化为一条 `.bss` 伪指令, 但是我们还是选择使用
         * `.section` 将全局变量放到可执行文件的 BSS 段, 原因如下:
         * - 尽可能对齐交叉编译器 loongarch64-unknown-linux-gnu-gcc 的行为
         * - 支持更旧版本的 GNU 汇编器, 因为 `.bss` 伪指令是应该相对较新的指令,
         *   GNU 汇编器在 2023 年 2 月的 2.37 版本才将其引入
         */
        append_inst(".text", ASMInstruction::Atrribute);
        append_inst(".data",ASMInstruction::Atrribute);

        for (auto &global : m->get_global_variable()) {
           // if())
            //std::cout << global.get_name()<<" "<<global.get_type()->get_type_id()<< std::endl;
            //std::cout<<"AAAAAAA"<<std::endl;
            if(global.get_type()->get_pointer_element_type()->is_integer_type()){
                auto *IntVal = static_cast<ConstantInt *>(global.get_init());
               // std::cout << IntVal->get_value()<< std::endl;
                //LOG(DEBUG)<<"好耶";
                /*
                .globl  a
                .align  2
                .type   a, @object
                .size   a, 4
        a:
                .word   5
                */
                auto size =
                global.get_type()->get_pointer_element_type()->get_size();
                append_inst(".globl", {global.get_name()},
                            ASMInstruction::Atrribute);
                append_inst(".align 2",
                            ASMInstruction::Atrribute);           
                append_inst(".type", {global.get_name(), "@object"},
                            ASMInstruction::Atrribute);
                append_inst(".size", {global.get_name(), std::to_string(size)},
                            ASMInstruction::Atrribute);
                append_inst(global.get_name(), ASMInstruction::Label);
                append_inst(".word", {std::to_string(IntVal->get_value())},
                            ASMInstruction::Atrribute);
            }else if(global.get_type()->get_pointer_element_type()->is_array_type()){
                 /*.globl	a
                    .data
                    .align	3
                    .type	a, @object
                    .size	a, 20
                a:
                    .word	0
                    .word	1
                    .word	2
                    .word	3
                    .word	4
                    */
                if(global.get_type()->get_pointer_element_type()->get_array_element_type()->is_integer_type()){
                    auto size =
                        global.get_type()->get_pointer_element_type()->get_size();
                    append_inst(".globl", {global.get_name()},
                                ASMInstruction::Atrribute);
                    append_inst(".align 3",
                                ASMInstruction::Atrribute);           
                    append_inst(".type", {global.get_name(), "@object"},
                                ASMInstruction::Atrribute);
                    append_inst(".size", {global.get_name(), std::to_string(size)},
                                ASMInstruction::Atrribute);
                    append_inst(global.get_name(), ASMInstruction::Label);

                    //返回的是一个数组类型，初始值可不一定是
                    if(dynamic_cast<ConstantZero *>(global.get_init())){
                        //如果是常数0
                        /*for(int i=0;i<size/4;i++){
                            append_inst(".word", {std::to_string(0)},
                                ASMInstruction::Atrribute);
                        }*/
                        append_inst(".space", {std::to_string(size)}, ASMInstruction::Atrribute);              

                    }else{
                        //如果不是0
                        auto *IntVal = static_cast<ConstantArray *>(global.get_init());
                        LOG(DEBUG)<<IntVal->print();
                        global_array_int(IntVal);
                    }
                }else{
                    auto size =
                        global.get_type()->get_pointer_element_type()->get_size();
                    append_inst(".globl", {global.get_name()},
                                ASMInstruction::Atrribute);
                    append_inst(".align 3",
                                ASMInstruction::Atrribute);           
                    append_inst(".type", {global.get_name(), "@object"},
                                ASMInstruction::Atrribute);
                    append_inst(".size", {global.get_name(), std::to_string(size)},
                                ASMInstruction::Atrribute);
                    append_inst(global.get_name(), ASMInstruction::Label);

                    //返回的是一个数组类型，初始值可不一定是
                    if(dynamic_cast<ConstantZero *>(global.get_init())){
                        //如果是常数0
                        /*for(int i=0;i<size/4;i++){
                            append_inst(".word", {std::to_string(0)},
                                ASMInstruction::Atrribute);
                        }*/
                        append_inst(".space", {std::to_string(size)}, ASMInstruction::Atrribute);              

                    }else{
                        //如果不是0
                        auto *IntVal = static_cast<ConstantArray *>(global.get_init());
                        LOG(DEBUG)<<IntVal->print();
                        global_array_float(IntVal);
                    }
                }    
            }else if(global.get_type()->get_pointer_element_type()->is_float_type()){
                auto *FPVal = static_cast<ConstantFP *>(global.get_init());
               // std::cout << IntVal->get_value()<< std::endl;
                //LOG(DEBUG)<<"好耶";
                /*
                .globl  a
                .align  2
                .type   a, @object
                .size   a, 4
        a:
                .word   5
                */
                auto size =
                global.get_type()->get_pointer_element_type()->get_size();
                append_inst(".globl", {global.get_name()},
                            ASMInstruction::Atrribute);
                append_inst(".align 2",
                            ASMInstruction::Atrribute);           
                append_inst(".type", {global.get_name(), "@object"},
                            ASMInstruction::Atrribute);
                append_inst(".size", {global.get_name(), std::to_string(size)},
                            ASMInstruction::Atrribute);
                append_inst(global.get_name(), ASMInstruction::Label);
                float t1=FPVal->get_value();
                int temp=reinterpret_cast<int&>(t1);
                append_inst(".word", {std::to_string(temp)},
                            ASMInstruction::Atrribute);
            }
        }
    }

    // 函数代码段
    getPhiMap();
    append_inst(".text", ASMInstruction::Atrribute);
    append_inst(".align 2",ASMInstruction::Atrribute);  
    for (auto &func : m->get_functions()) {
        
        if (not func.is_declaration()) {
            LOG(DEBUG)<<" "<<func.get_name(); 
            LRA.run(&func);  // 执行寄存器分配算法，将结果存储在LRA对象中
            
            RA_int.LinearScan(LRA.get(), &func);  // 对整型寄存器进行线性扫描，并将结果存储在RA_int对象中
            
            RA_float.LinearScan(LRA.get(), &func);  // 对浮点型寄存器进行线性扫描，并将结果存储在RA_float对象中

            LOG_DEBUG << "integer register map for function: " << func.get_name() << "\n";
            RA_int.print([](int i) { return regname(i, false); });  // 输出整型寄存器映射结果

            LOG_DEBUG << "float register map for function: " << func.get_name() << "\n";
            RA_float.print([](int i) { return regname(i, true); });  // 输出浮点型寄存器映射结果
            RA_float_result[&func]=RA_float.get();
            RA_int_result[&func]=RA_int.get();
            for (auto [_, op] : LRA.get()) {
                auto regmap = op->get_type()->is_float_type() ? RA_float.get() : RA_int.get();
                if (regmap.find(op) == regmap.end())
                    LOG_DEBUG << "no reg belongs to " << op->get_name() << "\n";
            }

            // 更新 context
            context.clear();
            context.func = &func;

            // 函数信息
            append_inst(".globl", {func.get_name()}, ASMInstruction::Atrribute);
            append_inst(".type", {func.get_name(), "@function"},
                        ASMInstruction::Atrribute);
            append_inst(func.get_name(), ASMInstruction::Label);
            //phi & copy_stmt
            for (auto &b : func.get_basic_blocks()) {
                auto bb=&b;
                auto not_dead_bb=LRA.get_explored();
                if(!not_dead_bb[bb]){
                    continue;
                }
                for (auto &instr : bb->get_instructions()) {//一行一行做

                    if(instr.is_phi()){
                        auto inst=static_cast<PhiInst *>(&instr);
                        /*int len=inst->get_num_operand();
                        std::vector<Value *> ops=inst->get_operands();
                        for (auto &opp : ops){
                            std::cout << opp->get_name() <<" "<<"!"; 
                        }
                        std:: cout<<len<<std::endl;*/
                        //如果有两条路，那么分别会有四个数据
                        //常数 !    label_entry !    op6 !     label5 !
                        int len=(inst->get_num_operand())/2;
                        for(int i=0;i<len;i++){
                            auto p1=std::make_pair(static_cast<BasicBlock *>(inst->get_operand(i*2+1)),bb);
                            auto p2=std::make_pair(inst,inst->get_operand(i*2));
                            context.phi_path[p1].insert(p2);
                           // std::cout<<(inst->get_operand(i*2+1))<<" "<<bb<<" "<<inst<<" "<<inst->get_operand(i*2)<<std::endl;
                        }
                    }
                }
            }
            // 分配函数栈帧
            allocate();
            // 生成 prologue
            gen_prologue();
            //处理bb
            
            for (auto &bb : func.get_basic_blocks()) {
                auto not_dead_bb=LRA.get_explored();
                if(!not_dead_bb[&bb]){
                    continue;
                }
                context.bb = &bb;
                append_inst(label_name(context.bb), ASMInstruction::Label);
                for (auto &instr : bb.get_instructions()) {
                    LOG_DEBUG<<" "<<instr.print();
                    // For debug
                    append_inst(instr.print(), ASMInstruction::Comment);
                    context.inst = &instr; // 更新 context
                    switch (instr.get_instr_type()) {
                        case Instruction::ret:
                            gen_ret();
                            break;
                        case Instruction::br:
                            gen_br();
                            break;
                        case Instruction::add:
                        case Instruction::sub:
                        case Instruction::mul:
                        case Instruction::sdiv:
                        case Instruction::srem:
                        gen_binary();
                        break;
                        case Instruction::fadd:
                        case Instruction::fsub:
                        case Instruction::fmul:
                        case Instruction::fdiv:
                        gen_float_binary();
                        break;
                        case Instruction::alloca:
                            gen_alloca();
                            break;
                        case Instruction::load:
                            gen_load();
                            break;
                        case Instruction::store:
                            gen_store();
                            break;
                        case Instruction::ge:
                        case Instruction::gt:
                        case Instruction::le:
                        case Instruction::lt:
                        case Instruction::eq:
                        case Instruction::ne:
                            gen_icmp();
                            break;
                        case Instruction::fge:
                        case Instruction::fgt:
                        case Instruction::fle:
                        case Instruction::flt:
                        case Instruction::feq:
                        case Instruction::fne:
                            gen_fcmp();
                            break;
                        case Instruction::phi:
                            break;
                        case Instruction::call:
                            gen_call();
                            break;
                        case Instruction::getelementptr:
                            gen_gep();
                            break;
                        case Instruction::zext:
                            gen_zext();
                            break;
                        case Instruction::fptosi:
                            gen_fptosi();
                            break;
                        case Instruction::sitofp:
                            gen_sitofp();
                            break;
                    }
                }
            }
            // 生成 epilogue
            gen_epilogue();
        }
    }
    //TODO: 处理read only data
}

std::string CodeGenRegister::print() const {
    std::string result;
    for (const auto &inst : output) {
        result += inst.format();
    }
    return result;
}
//TODO: 对框架不满可尽情修改