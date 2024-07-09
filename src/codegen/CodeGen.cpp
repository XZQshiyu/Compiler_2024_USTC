#include "CodeGen.hpp"
#include<map>
#include<utility>
#include "CodeGenUtil.hpp"
#include "logging.hpp"

void CodeGen::allocate() {
    // 先给出了一个长度是16的空间 备份 $ra $
    unsigned offset = PROLOGUE_OFFSET_BASE;

    // 为每个参数分配栈空间
    for (auto &arg : context.func->get_args()) {
        //get_args()方法的返回值  std::list<Argument> arguments_;
        //每个arg都是一个argment类
        auto size = arg.get_type()->get_size();
        offset = ALIGN(offset + size, size);

        context.offset_map[&arg] = -static_cast<int>(offset);//取个反，放回去
        //这个数组的下标是指向value的指针，而数组中存储的是一个负数，表示具体的位置
    }
    //offset 记录的是我结束的位置
    // 为指令结果分配栈空间
    for (auto &bb : context.func->get_basic_blocks()) {
        for (auto &instr : bb.get_instructions()) {
            // 每个非 void 的定值都分配栈空间
            if (not instr.is_void()) {
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
            }
        }
    }

    // 分配栈空间，需要是 16 的整数倍
    context.frame_size = ALIGN(offset, PROLOGUE_ALIGN);
}
/*调用的两种方式 数字，reg 或者 全局变量，reg*/
void CodeGen::load_to_greg(Value *val, const Reg &reg) {
    //把value给到reg
   // std::cout<<val->get_type()->is_pointer_type()<<std::endl;
    assert(val->get_type()->is_integer_type() ||
           val->get_type()->is_pointer_type());

    /*在给定的代码中，dynamic_cast<ConstantInt *>(val)尝试将val转换
    为ConstantInt类型的指针。如果转换成功，说明val是一个ConstantInt类型的对象，即一个常量整数。
dynamic_cast是C++中的一种类型转换操作符，用于在运行时进行类
型检查和转换。它可以检查指针或引用是否可以安全地转换为目标类型，
并返回转换后的指针或引用。如果转换失败，即指针或引用不是目标类型的对象，
、dynamic_cast将返回空指针（对于指针转换）或抛出std::bad_cast异常（对于引用转换）。*/
    if (auto *constant = dynamic_cast<ConstantInt *>(val)) {
        int32_t val = constant->get_value();
        if (IS_IMM_12(val)) {//val本身是一个大的数字，那就把数字给到reg
            append_inst(ADDI WORD, {reg.print(), "$zero", std::to_string(val)});
            /* addi.w $f1, $zero, 4 */
        } else {
            load_large_int32(val, reg);//太大了
        }
    } else if (auto *global = dynamic_cast<GlobalVariable *>(val)) {//val如果这个一个全局变量
        append_inst(LOAD_ADDR, {reg.print(), global->get_name()});
        //get_name 会返回一个string字符串。
        //la.local $t0,a
    } else {
        load_from_stack_to_greg(val, reg);
    }
}

void CodeGen::load_large_int32(int32_t val, const Reg &reg) {//load一个32bit的立即数
    int32_t high_20 = val >> 12; // 分割高20
    uint32_t low_12 = val & LOW_12_MASK;//分割低12
    append_inst(LU12I_W, {reg.print(), std::to_string(high_20)});//
    append_inst(ORI, {reg.print(), reg.print(), std::to_string(low_12)});
}

void CodeGen::load_large_int64(int64_t val, const Reg &reg) {
    auto low_32 = static_cast<int32_t>(val & LOW_32_MASK);
    load_large_int32(low_32, reg);//先把小的处理好

    auto high_32 = static_cast<int32_t>(val >> 32);
    int32_t high_32_low_20 = (high_32 << 12) >> 12; // si20
    int32_t high_32_high_12 = high_32 >> 20;        // si12
    append_inst(LU32I_D, {reg.print(), std::to_string(high_32_low_20)});//然后分开处理大一点的数据
    append_inst(LU52I_D,
                {reg.print(), reg.print(), std::to_string(high_32_high_12)});
}
/**/
void CodeGen::load_from_stack_to_greg(Value *val, const Reg &reg) {
    auto offset = context.offset_map.at(val);
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
    }
}
void CodeGen::store_from_greg_parameter(Value *val, const Reg &reg) {
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
void CodeGen::store_from_greg(Value *val, const Reg &reg) {
    auto offset = context.offset_map.at(val);//context的下标因该是inst
    //offset map 相当于是全局变量，而且本身维护的是从指针到常数的映射
    //指针一般不会冲突，所以调用函数进入内层并不会发生覆盖（一般）
    //而且我们是逐个函数生成的，每次这个函数的入口都会刷新offset，而整个函数生成完之前不会再次刷新
    //所以我们这里确实需要一个offset2
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

void CodeGen::load_to_freg(Value *val, const FReg &freg) {
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

void CodeGen::load_float_imm(float val, const FReg &r) {
    int32_t bytes = *reinterpret_cast<int32_t *>(&val);
    load_large_int32(bytes, Reg::t(8));
    append_inst(GR2FR WORD, {r.print(), Reg::t(8).print()});
}

void CodeGen::store_from_freg(Value *val, const FReg &r) {
    auto offset = context.offset_map.at(val);//
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
void CodeGen::store_from_freg_parameter(Value *val, const FReg &r) {
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
void CodeGen::gen_prologue() {
    // 寄存器备份及栈帧设置
    if (IS_IMM_12(-static_cast<int>(context.frame_size))) {//如果不是很大
        append_inst("st.d $ra, $sp, -8");
        append_inst("st.d $fp, $sp, -16");
        append_inst("addi.d $fp, $sp, 0");
        append_inst("addi.d $sp, $sp, " +
                    std::to_string(-static_cast<int>(context.frame_size)));
    } else {//如果很大
        load_large_int64(context.frame_size, Reg::t(0));//t0里有个很大的数字
        append_inst("st.d $ra, $sp, -8");//同上
        append_inst("st.d $fp, $sp, -16");//同上
        append_inst("sub.d $sp, $sp, $t0");//sp=sp-t0
        append_inst("add.d $fp, $sp, $t0");//fp=sp+t0
    }

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
}

void CodeGen::gen_epilogue() {
    // TODO 根据你的理解设定函数的 epilogue
    /*callee_exit:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra*/
    append_inst(context.func->get_name()+"_exit", ASMInstruction::Label);
    if (IS_IMM_12(-static_cast<int>(context.frame_size))) {//如果不是很大
        append_inst("addi.d $sp, $sp, " +
                    std::to_string(static_cast<int>(context.frame_size)));
        append_inst("ld.d $ra, $sp, -8");
        append_inst("ld.d $fp, $sp, -16");
        append_inst("jr $ra");
        
    } else {//如果很大
        load_large_int64(context.frame_size, Reg::t(0));
        append_inst("add.d $sp, $sp, $t0");
        append_inst("ld.d $ra, $sp, -8");
        append_inst("ld.d $fp, $sp, -16");
        append_inst("jr $ra");
    }
}

void CodeGen::gen_ret() {
    // TODO 函数返回，思考如何处理返回值、寄存器备份，如何返回调用者地址
    auto *retInst = static_cast<ReturnInst *>(context.inst);
    
    if(retInst->is_void_ret()){
        append_inst("addi.w $a0,$zero,0");
        append_inst("b "+context.func->get_name()+"_exit");
    }else{
        auto *type = context.inst->get_operand(0)->get_type();
        if(type->is_float_type()){
            load_to_freg(retInst->get_operand(0), FReg::fa(0));
        }else{
            load_to_greg(retInst->get_operand(0), Reg::a(0));
        }
        
        append_inst("b "+context.func->get_name()+"_exit");
    }
    
}

void CodeGen::gen_br() {
    auto *branchInst = static_cast<BranchInst *>(context.inst);
    if (branchInst->is_cond_br()) {
        // TODO 补全条件跳转的情况
        
        load_to_greg(context.inst->get_operand(0), Reg::t(0));
        auto *tbb = static_cast<BasicBlock *>(branchInst->get_operand(1));
        auto *fbb = static_cast<BasicBlock *>(branchInst->get_operand(2));
        append_inst("addi.w $t1,$zero,0");

        auto p1=std::make_pair(context.basic,tbb);
        if(context.phi_path.find(p1)!=context.phi_path.end()){//存在phi
            auto p2s=context.phi_path[p1];
            for(auto &p2:p2s){
                auto src=p2.second;
                auto dest=p2.first;
                auto *type =dest->get_type();
                if(type->is_float_type()){
                    load_to_freg(src,FReg::ft(0));
                    store_from_freg(dest,FReg::ft(0));//move 操作
                }else{//int
                    load_to_greg(src,Reg::t(0));
                    store_from_greg(dest,Reg::t(0));//move 操作
                }
            }
        }

        append_inst("blt $t1,$t0,"+label_name(tbb));

        p1=std::make_pair(context.basic,fbb);
        if(context.phi_path.find(p1)!=context.phi_path.end()){//存在phi
            auto p2s=context.phi_path[p1];
            for(auto &p2:p2s){
                auto src=p2.second;
                auto dest=p2.first;
                auto *type =dest->get_type();
                if(type->is_float_type()){
                    load_to_freg(src,FReg::ft(0));
                    store_from_freg(dest,FReg::ft(0));//move 操作
                }else{//int
                    load_to_greg(src,Reg::t(0));
                    store_from_greg(dest,Reg::t(0));//move 操作
                }
            }
        }
        append_inst("b "+label_name(fbb));

        //throw not_implemented_error{__FUNCTION__};
    } else {
        auto *branchbb = static_cast<BasicBlock *>(branchInst->get_operand(0));
        auto p1=std::make_pair(context.basic,branchbb);
        if(context.phi_path.find(p1)!=context.phi_path.end()){//存在phi
            auto p2s=context.phi_path[p1];
            for(auto &p2:p2s){
                auto src=p2.second;
                auto dest=p2.first;
                auto *type =dest->get_type();
                if(type->is_float_type()){
                    load_to_freg(src,FReg::ft(0));
                    store_from_freg(dest,FReg::ft(0));//move 操作
                }else{//int
                    load_to_greg(src,Reg::t(0));
                    store_from_greg(dest,Reg::t(0));//move 操作
                }
            }
        }
        append_inst("b " + label_name(branchbb));
    }
}

void CodeGen::gen_binary() {
    // 分别将左右操作数加载到 $t0 $t1
    load_to_greg(context.inst->get_operand(0), Reg::t(0));
    load_to_greg(context.inst->get_operand(1), Reg::t(1));
    // 根据指令类型生成汇编
    switch (context.inst->get_instr_type()) {
    case Instruction::add:
        output.emplace_back("add.w $t2, $t0, $t1");
        break;
    case Instruction::sub:
        output.emplace_back("sub.w $t2, $t0, $t1");
        break;
    case Instruction::mul:
        output.emplace_back("mul.w $t2, $t0, $t1");
        break;
    case Instruction::sdiv:
        output.emplace_back("div.w $t2, $t0, $t1");
        break;
    case Instruction::srem:
        output.emplace_back("mod.w $t2, $t0, $t1");
        break;
    default:
        assert(false);
    }
    // 将结果填入栈帧中
    store_from_greg(context.inst, Reg::t(2));
}

void CodeGen::gen_float_binary() {
    // TODO 浮点类型的二元指令
    load_to_freg(context.inst->get_operand(0), FReg::ft(0));
    load_to_freg(context.inst->get_operand(1), FReg::ft(1));
    // 根据指令类型生成汇编
    switch (context.inst->get_instr_type()) {
    case Instruction::fadd:
        output.emplace_back("fadd.s $ft2, $ft0, $ft1");
        break;
    case Instruction::fsub:
        output.emplace_back("fsub.s $ft2, $ft0, $ft1");
        break;
    case Instruction::fmul:
        output.emplace_back("fmul.s $ft2, $ft0, $ft1");
        break;
    case Instruction::fdiv:
        output.emplace_back("fdiv.s $ft2, $ft0, $ft1");
        break;
    default:
        assert(false);
    }
    // 将结果填入栈帧中
    store_from_freg(context.inst, FReg::ft(2));
}

void CodeGen::gen_alloca() {
    /* 我们已经为 alloca 的内容分配空间，在此我们还需保存 alloca
     * 指令自身产生的定值，即指向 alloca 空间起始地址的指针
     */

    //这个指令本身没有oprand

    // TODO 将 alloca 出空间的起始地址保存在栈帧上
    auto *alloca_inst = static_cast<AllocaInst *>(context.inst);
    auto alloc_size = alloca_inst->get_alloca_type()->get_size();
    auto base_offset = -context.offset_map[alloca_inst];
    auto shuzu_offset=alloc_size+base_offset;
    //std:: cout<<shuzu_offset<<std::endl;
    load_large_int32(shuzu_offset,Reg::t(0));
    append_inst("sub.d $t0,$fp,$t0");// fp-base-size
    store_from_greg(context.inst, Reg::t(0));
    /*
     auto size = instr.get_type()->get_size();
                offset = ALIGN(offset + size, size);
                context.offset_map[&instr] = -static_cast<int>(offset);*/
    //context.offset_map[&arg] = -static_cast<int>(offset);取个反，放回去
        //这个数组的下标是指向value的指针，而数组中存储的是一个负数，表示具体的位置
    
    /*std::vector<Value *> ops=allInst->get_operands();
    for (auto &opp : ops){
        std::cout << opp->get_name() <<" "<<1; 
    }
    std:: cout<<std::endl;*/
    //throw not_implemented_error{__FUNCTION__};
}

void CodeGen::gen_load() {
    /*auto *zext_inst = static_cast<LoadInst *>(context.inst);
    std::vector<Value *> ops=zext_inst->get_operands();
    for (auto &opp : ops){
        std::cout << opp->get_name() <<" "<<1; 
    }
    std:: cout<<std::endl;*/

    auto ptr = context.inst->get_operand(0);//在指针类型auto*和auto没有任何区别
    auto *type = context.inst->get_type();
    //std::cout<<ptr->get_type()->is_pointer_type()<<std::endl;
    load_to_greg(ptr, Reg::t(0));//这里t0放的是一个指针而不是一个数，这是因为这个指令调用的时候，就只能传个指针进来。
    //相当于alloca，最后传进来的最后存储的头指针，但是我们要把数据放到alloca出来的数组里
    //

    if (type->is_float_type()) {
        append_inst("fld.s $ft0, $t0, 0");//ft0=M[t0+0]
        store_from_freg(context.inst, FReg::ft(0));//load这个操作产生了一个新的左值，我们需要把这个现在在ft中的左值放到栈里边
    } else {
        if(type->is_int1_type()){
            append_inst("ld.b $t0, $t0, 0");
        }else if(type->is_int32_type()){
            append_inst("ld.w $t0, $t0, 0");
        }else{
            append_inst("ld.d $t0, $t0, 0");
        }
        store_from_greg(context.inst, Reg::t(0));//直接放回去就可以了
        // TODO load 整数类型的数据
    }
}

void CodeGen::gen_store() {
    /*auto *zext_inst = static_cast<StoreInst *>(context.inst);
    std::vector<Value *> ops=zext_inst->get_operands();
    for (auto &opp : ops){
        std::cout << opp->get_name() <<" "<<1; 
    }
    std:: cout<<std::endl;*/
    // TODO 翻译 store 指令

   
    auto *type = context.inst->get_operand(0)->get_type();//怎么store取决于我们要存的数据是什么类型
    auto *ptr = context.inst->get_operand(1);//位置
    load_to_greg(ptr, Reg::t(1));//这里t1放的是一个指针，
    if (type->is_float_type()) {
        load_to_freg(context.inst->get_operand(0), FReg::ft(0));//数据
        append_inst("fst.s $ft0, $t1, 0");//M[t1+0]=t0
    } else {
        load_to_greg(context.inst->get_operand(0), Reg::t(0));//数据
        if(type->is_int1_type()){
            append_inst("st.b $t0, $t1, 0");//M[t1+0]=t0
        }else if(type->is_int32_type()){
            append_inst("st.w $t0, $t1, 0");
        }else{
            append_inst("st.d $t0, $t1, 0");
        }
        // TODO load 整数类型的数据
    }
}

void CodeGen::gen_icmp() {
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
    load_to_greg(context.inst->get_operand(0), Reg::t(0));
    load_to_greg(context.inst->get_operand(1), Reg::t(1));
    // 根据指令类型生成汇编
    switch (context.inst->get_instr_type()) {
    case Instruction::eq:
        append_inst("slt $t2,$t1,$t0");
        append_inst("slt $t3,$t0,$t1");
        append_inst("or $t2,$t2,$t3");
        append_inst("addi.w $t3,$zero,1");
        append_inst("sub.w  $t2,$t3,$t2");
        break;
    case Instruction::ne:
        append_inst("slt $t2,$t1,$t0");
        append_inst("slt $t3,$t0,$t1");
        append_inst("or $t2,$t2,$t3");
        break;
    case Instruction::gt:
        append_inst("slt $t2,$t1,$t0");
        break;
    case Instruction::ge:
        append_inst("slt $t2,$t0,$t1");
        append_inst("addi.w $t3,$zero,1");
        append_inst("sub.w  $t2,$t3,$t2");
        break;
    case Instruction::lt:
        append_inst("slt $t2,$t0,$t1");
        break;
    case Instruction::le:
        append_inst("slt $t2,$t1,$t0");
        append_inst("addi.w $t3,$zero,1");
        append_inst("sub.w  $t2,$t3,$t2");
        break;
    default:
        assert(false);
    }
    // 将结果填入栈帧中
    store_from_greg(context.inst, Reg::t(2));
    //throw not_implemented_error{__FUNCTION__};
}
int fcmpcnt=0;
void CodeGen::gen_fcmp() {
    // TODO 处理各种浮点数比较的情况
    load_to_freg(context.inst->get_operand(0), FReg::ft(0));
    load_to_freg(context.inst->get_operand(1), FReg::ft(1));
    // 根据指令类型生成汇编
    fcmpcnt+=1;
    std::string fnum=std::to_string(fcmpcnt);
    switch (context.inst->get_instr_type()) {
    case Instruction::feq:
        append_inst("fcmp.seq.s $fcc0, $ft0, $ft1");
        break;
    case Instruction::fne:
        append_inst("fcmp.sne.s $fcc0, $ft0, $ft1");
        break;
    case Instruction::fgt:
        append_inst("fcmp.slt.s $fcc0, $ft1, $ft0");
        break;
    case Instruction::fge:
        append_inst("fcmp.sle.s $fcc0, $ft1, $ft0");
        break;
    case Instruction::flt:
        append_inst("fcmp.slt.s $fcc0, $ft0, $ft1");
        break;
    case Instruction::fle:
        append_inst("fcmp.sle.s $fcc0, $ft0, $ft1");
        break;
    default:
        assert(false);
    }
    append_inst("bcnez      $fcc0, float_true"+fnum);
    append_inst("b          float_false"+fnum);
    append_inst("float_true"+fnum, ASMInstruction::Label);
    append_inst("addi.w     $t0, $zero, 1");
    append_inst("b          float_exit"+fnum);
    append_inst("float_false"+fnum, ASMInstruction::Label);
    append_inst("addi.w     $t0, $zero, 0");
    append_inst("b          float_exit"+fnum);
    append_inst("float_exit"+fnum, ASMInstruction::Label);
    store_from_greg(context.inst, Reg::t(0));
    //throw not_implemented_error{__FUNCTION__};
}

void CodeGen::gen_zext() {
    // TODO 将窄位宽的整数数据进行零扩展
    /*auto *zext_inst = static_cast<ZextInst *>(context.inst);
    std::vector<Value *> ops=zext_inst->get_operands();
    for (auto &opp : ops){
        std::cout << opp->get_name() <<" "<<1; 
    }
    std:: cout<<std::endl;*/
    auto *ptr = context.inst->get_operand(0);
    auto *type = context.inst->get_type();
    load_to_greg(ptr, Reg::t(0));//我得到的是之前的数据

    if (type->is_float_type()) {
        append_inst("movgr2fr.w $t0, $ft0");//放到合适的位置
        store_from_freg(context.inst, FReg::ft(0));//load这个操作产生了一个新的左值，我们需要把这个现在在ft中的左值放到栈里边
    } else {
        store_from_greg(context.inst, Reg::t(0));//直接放回去就可以了
    }
    //throw not_implemented_error{__FUNCTION__};
}

void CodeGen::gen_call() {
    // TODO 函数调用，注意我们只需要通过寄存器传递参数，即不需考虑栈上传参的情况
    auto *callInst = static_cast<CallInst *>(context.inst);
    int len=callInst->get_num_operand();
    auto *type = context.inst->get_type();
    std::vector<Value *> ops=callInst->get_operands();
    int garg_cnt = 0;
    int farg_cnt = 0;


    auto func=static_cast<Function *>(ops[0]);
    //把数据转移到寄存器
    int offset=16;
     // 为每个参数分配栈空间
    int i=1;
    for (auto &arg : func->get_args()) {
        //get_args()方法的返回值  std::list<Argument> arguments_;
        //每个arg都是一个argment类
        auto size = arg.get_type()->get_size();
        offset = ALIGN(offset + size, size);
        LOG(DEBUG)<<offset;
        LOG(DEBUG)<<arg.print();
        context.offset_call[&arg] = -offset;//取个反，放回去
        //这个数组的下标是指向value的指针，而数组中存储的是一个负数，表示具体的位置
        if(ops[i]->get_type()->is_float_type()){
            load_to_freg((ops[i]),FReg::fa(farg_cnt));
            store_from_freg_parameter(&arg,FReg::fa(farg_cnt));
            farg_cnt=std::min(7,farg_cnt+1);
        }else{
            load_to_greg((ops[i]),Reg::a(garg_cnt));
            LOG(DEBUG)<<"point1";
            store_from_greg_parameter(&arg,Reg::a(garg_cnt));
            LOG(DEBUG)<<"point2";
            garg_cnt=std::min(7,garg_cnt+1);;
        }
        i++;
    }
    //bl
    LOG(DEBUG)<<ops[0]->print();
    /*if (IS_IMM_12(-static_cast<int>(context.frame_size))) {//如果不是很大
        append_inst("st.d $ra, $sp, -8");
        append_inst("st.d $fp, $sp, -16");
        append_inst("addi.d $fp, $sp, 0");
        append_inst("addi.d $sp, $sp, " +
                    std::to_string(-static_cast<int>(context.frame_size)));
    } else {//如果很大
        load_large_int64(context.frame_size, Reg::t(0));//t0里有个很大的数字
        append_inst("st.d $ra, $sp, -8");//同上
        append_inst("st.d $fp, $sp, -16");//同上
        append_inst("sub.d $sp, $sp, $t0");//sp=sp-t0
        append_inst("add.d $fp, $sp, $t0");//fp=sp+t0
    }*/


    /*
    void CodeGen::gen_prologue() {
    // 寄存器备份及栈帧设置
    if (IS_IMM_12(-static_cast<int>(context.frame_size))) {//如果不是很大
        append_inst("st.d $ra, $sp, -8");
        append_inst("st.d $fp, $sp, -16");
        append_inst("addi.d $fp, $sp, 0");
        append_inst("addi.d $sp, $sp, " +
                    std::to_string(-static_cast<int>(context.frame_size)));
    } else {//如果很大
        load_large_int64(context.frame_size, Reg::t(0));//t0里有个很大的数字
        append_inst("st.d $ra, $sp, -8");//同上
        append_inst("st.d $fp, $sp, -16");//同上
        append_inst("sub.d $sp, $sp, $t0");//sp=sp-t0
        append_inst("add.d $fp, $sp, $t0");//fp=sp+t0
    }

    // 将函数参数转移到栈帧上
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
    */
    



    append_inst("bl "+ops[0]->get_name());
    //获取返回值
    if(type->is_void_type()){
        //什么都不做
    }else if(type->is_float_type()) {
        store_from_freg(context.inst, FReg::fa(0));//load这个操作产生了一个新的左值，我们需要把这个现在在ft中的左值放到栈里边
    }else {
        store_from_greg(context.inst, Reg::a(0));//直接放回去就可以了
    }

    /*auto *callInst = static_cast<CallInst *>(context.inst);
    int len=callInst->get_num_operand();
    auto *type = context.inst->get_type();
    std::vector<Value *> ops=callInst->get_operands();
    for (auto &opp : ops){
        std::cout << opp->get_name() <<" "; 
    }
    std:: cout<<std::endl;*/
    //op[0]是函数名，后边的是参数
    //get_type得到一个返回值，作为新的输出。
    //a[0]表示函数名
    //if(callInst->)
    //throw not_implemented_error{__FUNCTION__};
}

void CodeGen::gen_gep() {
    // TODO 计算内存地址
    auto *callInst = static_cast<GetElementPtrInst *>(context.inst);
    int len=callInst->get_num_operand();
    auto *type = context.inst->get_type();
    std::vector<Value *> ops=callInst->get_operands();
    // for (auto &opp : ops){
    //     std::cout << opp->get_name() <<" "<<"!"; 
    // }
    // std:: cout<<std::endl;
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
        auto *ptr = context.inst->get_operand(0);//在指针类型auto*和auto没有任何区别
        load_to_greg(ptr, Reg::t(0));//这里t0放的是一个指针而不是一个数，这是因为这个指令调用的时候，就只能传个指针进来。
        int idx=0;
        LOG(DEBUG)<<context.inst->get_operand(0)->get_type()->get_pointer_element_type()->print();
        auto weight=context.inst->get_operand(0)->get_type()->get_pointer_element_type();
        //weight=static_cast<const ArrayType *>(weight)->get_element_type();//start from 2
        for(int j=1;j<=len-1;j++){
            load_to_greg(context.inst->get_operand(j), Reg::t(2));
            //t2放着这个维度的下标
            int val=weight->get_size();
            if (IS_IMM_12(val)) {//t1 放着这个维度的后缀乘积
                append_inst(ADDI WORD, {"$t1", "$zero", std::to_string(val)});
                /* addi.w $f1, $zero, 4 */
            } else {
                load_large_int32(val, Reg::t(1));//太大了
            }
            append_inst("mul.d $t1,$t1,$t2");//*扩大倍数
            append_inst("add.d $t0,$t0,$t1");//添加到t0身上
            
            LOG(DEBUG)<<"++++++++++++++++++++++++"<<weight->get_size()<<" "<<static_cast<ConstantInt *>(context.inst->get_operand(j))->get_value();
            if(j==len-1)continue;
            weight=static_cast<const ArrayType *>(weight)->get_element_type();
        }
       // load_large_int32(idx,Reg::t(1));//这个是常数，也就是数组下标，已经扩大了4倍了
        //append_inst("addi.d $t2,$zero,"+std::to_string(context.inst->get_type()->get_pointer_element_type()->get_size()));
        //append_inst("mul.d $t1,$t1,$t2");//*4
       // append_inst("add.d $t0,$t0,$t1");
        store_from_greg(context.inst, Reg::t(0));
    }else{
        auto *ptr = context.inst->get_operand(0);//在指针类型auto*和auto没有任何区别
        load_to_greg(ptr, Reg::t(0));//这里t0放的是一个指针而不是一个数，这是因为这个指令调用的时候，就只能传个指针进来。
        load_to_greg(context.inst->get_operand(1), Reg::t(1));//这个是常数，也就是数组下标
        //append_inst("addi.d $t2,$zero,"+std::to_string(context.inst->get_type()->get_pointer_element_type()->get_size()));
        append_inst("addi.d $t2,$zero,4");
        append_inst("mul.d $t1,$t1,$t2");//*4
        append_inst("add.d $t0,$t0,$t1");
        store_from_greg(context.inst, Reg::t(0));
    }
    /* 
        type_ir += "[";
        type_ir += std::to_string(
            static_cast<const ArrayType *>(this)->get_num_of_elements());
        type_ir += " x ";
        type_ir +=
            static_cast<const ArrayType *>(this)->get_element_type()->print();
        type_ir += "]";
    */
    /*
    auto array_type = static_cast<const ArrayType *>(this);
        auto element_size = array_type->get_element_type()->get_size();
        auto num_elements = array_type->get_num_of_elements();
        return element_size * num_elements;*/


    //throw not_implemented_error{__FUNCTION__};
}

void CodeGen::gen_sitofp() {
    // TODO 整数转向浮点数
    auto *callInst = static_cast<SiToFpInst *>(context.inst);
    int len=callInst->get_num_operand();
    auto *type = context.inst->get_type();
    std::vector<Value *> ops=callInst->get_operands();
    // for (auto &opp : ops){
    //     std::cout << opp->get_name() <<" "<<"!"; 
    // }
    // std:: cout<<std::endl;
    load_to_greg(context.inst->get_operand(0), Reg::t(0));
    append_inst("movgr2fr.w $ft0, $t0");
    append_inst("ffint.s.w $ft1, $ft0");
    store_from_freg(context.inst,FReg::ft(1));
    //throw not_implemented_error{__FUNCTION__};
}

void CodeGen::gen_fptosi() {
    // TODO 浮点数转向整数，注意向下取整(round to zero)
    //只有一个参数，结果的值来自于返回值类型
    load_to_freg(context.inst->get_operand(0), FReg::ft(0));
    append_inst("ftintrz.w.s $ft1, $ft0");
    append_inst("movfr2gr.s $t0, $ft1");
    store_from_greg(context.inst, Reg::t(0));//直接放回去就可以了
    //throw not_implemented_error{__FUNCTION__};
}
void CodeGen::global_array_int(ConstantArray * init_val){
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
    
    Constant *temp = init_val->get_element_value(0);
    bool is_zero = true;
    if(!dynamic_cast<ConstantArray *>(temp))
        for (unsigned i = 0; i < init_val->get_size_of_array(); i++){
            Constant *element = init_val->get_element_value(i);
            auto *IntVal = static_cast<ConstantInt *>(element);
            if(IntVal->get_value() != 0) {is_zero = false; break;}
        }
    if(is_zero) {
        append_inst(".space", {std::to_string(init_val->get_size_of_array()*4)},
                            ASMInstruction::Atrribute);
                            return;
    }
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
void CodeGen::global_array_float(ConstantArray * init_val){
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
void CodeGen::run() {
    // 确保每个函数中基本块的名字都被设置好
    // 想一想：为什么？
    m->set_print_name();

    /* 使用 GNU 伪指令为全局变量分配空间
     * 你可以使用 `la.local` 指令将标签 (全局变量) 的地址载入寄存器中, 比如
     * 要将 `a` 的地址载入 $t0, 只需要 `la.local $t0, a`
     */
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
                    // LOG(ERROR) << global.get_init()->print();
                    // dynamic_cast<ConstantZero *>(global.get_init());
                    //返回的是一个数组类型，初始值可不一定是
                    // LOG(DEBUG) << "1";
                    // auto temp = dynamic_cast<ConstantZero*>(global.get_init());
                    // LOG(DEBUG) << "1";
                    // if((temp == nullptr)||(global.get_init()->print()) == std::string(" zeroinitializer")){
                    if(dynamic_cast<ConstantZero *>(global.get_init())){
                        //如果是常数0
                        // for(int i=0;i<size/4;i++){
                        //     append_inst(".word", {std::to_string(0)},
                        //         ASMInstruction::Atrribute);
                        // }
                        LOG(DEBUG) << "zero";
                        append_inst(".space", {std::to_string(size)}, ASMInstruction::Atrribute);

                    }else{
                        //如果不是0
                        LOG(DEBUG) << "nzero";
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
                        for(int i=0;i<size/4;i++){
                            append_inst(".word", {std::to_string(0)},
                                ASMInstruction::Atrribute);
                        }

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
    output.emplace_back(".text", ASMInstruction::Atrribute);
    append_inst(".align 2",ASMInstruction::Atrribute);  
    for (auto &func : m->get_functions()) {
        if (not func.is_declaration()) {
            // 更新 context
            context.clear();
            context.func = &func;

            // 函数信息
            append_inst(".globl", {func.get_name()}, ASMInstruction::Atrribute);
            append_inst(".type", {func.get_name(), "@function"},
                        ASMInstruction::Atrribute);
            append_inst(func.get_name(), ASMInstruction::Label);

            // 分配函数栈帧
            allocate();
            // 生成 prologue
            gen_prologue();
            //先看一遍phi
            
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
                            auto p1=std::make_pair(static_cast<BasicBlock *>(inst->get_operand(i*2+1)),bb);
                            auto p2=std::make_pair(inst,inst->get_operand(i*2));
                            context.phi_path[p1].insert(p2);
                            // std::cout<<(inst->get_operand(i*2+1))<<" "<<bb<<" "<<inst<<" "<<inst->get_operand(i*2)<<std::endl;
                        }
                    }
                }
            }
            for (auto &bb : func.get_basic_blocks()) {
                append_inst(label_name(&bb), ASMInstruction::Label);
                context.basic = &bb;
                for (auto &instr : bb.get_instructions()) {//一行一行做
                    // For debug
                    LOG(DEBUG)<<instr.print();
                    append_inst(instr.print(), ASMInstruction::Comment);
                    context.inst = &instr; // 更新 context,这个存储了现在是在哪一条
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
                      //  throw not_implemented_error{"need to handle phi!"};
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
}

std::string CodeGen::print() const {
    std::string result;
    for (const auto &inst : output) {
        result += inst.format();
    }
    return result;
}
