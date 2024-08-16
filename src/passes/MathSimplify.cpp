#include "MathSimplify.hpp"

#include "Instruction.hpp"
#include "logging.hpp"
#include <ilist.hpp>
#include <cmath>
#include <cassert>
#include <cstdint>

#define max(a, b) ((a) > (b) ? (a) : (b))

using uword = uint32_t;
using udword = uint64_t;

std::tuple<udword, int, int> CHOOSE_MULTIPLIER(uword d, int prec) {
    int l = std::ceil(std::log2(d)); // `l` is calculated as ceil(log2(d))
    int shpost = l;
    
    udword mlow = (1ULL << (32 + l)) / d;
    udword mhigh = ((1ULL << (32 + l)) + (1ULL << (32 + l - prec))) / d;

    // Reduce to lowest terms
    while ((mlow >> 1) < (mhigh >> 1) && shpost > 0) {
        mlow >>= 1;
        mhigh >>= 1;
        shpost--;
    }

    return std::make_tuple(mhigh, shpost, l);
}

Instruction* MathSimplify::mul(Value *value, ConstantInt * con , Instruction& instr, BasicBlock* bb){
    int c_value = con->get_value();
    int c_abs = abs(c_value);

    Instruction *last_instr = &instr;
    auto pow2 = [](size_t a) { return 1ULL << a; };


    if(c_abs == 0){
        Instruction *new_instr = IBinaryInst::create_add(ConstantInt::get(0, m_),  ConstantInt::get(0, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr);
        wait_delete.push_back(&instr);
        last_instr = new_instr;
        instr.replace_all_use_with(last_instr);
        bb->remove_instr(&instr);
        return last_instr;
    }
    else if(c_abs == 1){
        if(c_abs > 0 ){
            Instruction *new_instr = IBinaryInst::create_add(value,  ConstantInt::get(0, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr);
            wait_delete.push_back(&instr);
            last_instr = new_instr;
        } 
        else{
            Instruction *new_instr = IBinaryInst::create_sub( ConstantInt::get(0, m_), value, instr.get_parent());
            bb->insert_before(&instr, new_instr);
            wait_delete.push_back(&instr);
            last_instr = new_instr;
        }
        instr.replace_all_use_with(last_instr);
        bb->remove_instr(&instr);
        return last_instr;    

    }
    // 取指数
    auto l = max(1L, static_cast<int64_t>(ceil(log2(c_abs))));
    auto m = ConstantInt::get(int(l), m_);
    int ys = c_abs % 2;
    if(c_abs == pow2(l)){
        Instruction *new_instr = IBinaryInst::create_shl( value, m, instr.get_parent());
        bb->insert_before(&instr, new_instr);
        last_instr = new_instr;
        if(c_value < 0){
            Instruction *new_instr_1 = IBinaryInst::create_sub( ConstantInt::get(0, m_), new_instr, instr.get_parent());
            bb->insert_before(&instr, new_instr_1);
            last_instr = new_instr_1;
        }
        wait_delete.push_back(&instr);
        instr.replace_all_use_with(last_instr);
        bb->remove_instr(&instr);
    }   
    

    return last_instr;

}


// ref:Division by Invariant Integers using Multiplication
Instruction* MathSimplify::sdiv(Value *value, ConstantInt * con , Instruction& instr, BasicBlock* bb){
    int N = 32;
    auto pow2 = [](size_t a) { return 1ULL << a; };
    int c_value = con->get_value();
    auto c_abs = abs(static_cast<int64_t>(c_value));
    auto l = int(max(1L, static_cast<int64_t>(ceil(log2(c_abs)))));
    auto m = pow2(N + l - 1) / c_abs + 1;

    Instruction *last_instr = &instr;

    if (c_abs == 1) {
        if (c_value > 0) {
            Instruction *new_instr = IBinaryInst::create_add(value,  ConstantInt::get(0, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr);
            wait_delete.push_back(&instr);
            last_instr = new_instr;
        } else /* c_value < 0 */ {
            Instruction *new_instr = IBinaryInst::create_sub( ConstantInt::get(0, m_), value, instr.get_parent());
            bb->insert_before(&instr, new_instr);
            wait_delete.push_back(&instr);
            last_instr = new_instr;
        }
        instr.replace_all_use_with(last_instr);
        bb->remove_instr(&instr);
        return last_instr;
    }

    if(c_abs == pow2(l)){
        if(l > 1){
            Instruction *new_instr = IBinaryInst::create_ashr(value,  ConstantInt::get(l-1, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr);
            Instruction *new_instr_1 = IBinaryInst::create_lshr( new_instr,  ConstantInt::get(N-1, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr_1);
            Instruction *new_instr_2 = IBinaryInst::create_add(value,  new_instr_1 , instr.get_parent());
            bb->insert_before(&instr, new_instr_2);
            Instruction *new_instr_3 = IBinaryInst::create_ashr(new_instr_2,  ConstantInt::get(l, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr_3);
            last_instr = new_instr_3;
        }
        else{
            Instruction *new_instr_1 = IBinaryInst::create_lshr( value,  ConstantInt::get(N-l, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr_1);
            Instruction *new_instr_2 = IBinaryInst::create_add(value,  new_instr_1 , instr.get_parent());
            bb->insert_before(&instr, new_instr_2);
            Instruction *new_instr_3 = IBinaryInst::create_ashr(new_instr_2,  ConstantInt::get(l, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr_3);
            last_instr = new_instr_3;
        }
    }   
    else if(m < pow2(N-1)){
        LOG(WARNING) << "m < pow2(N-1)";
        // q = SRA(MULSH(m; n); shpost) − XSIGN(n);
        // XSIGN(n) = -SRL(n; N − 1)
        Instruction *new_instr = IBinaryInst::create_mul(value,  ConstantInt::get(int(m), m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr);
        Instruction *new_instr_1 = IBinaryInst::create_ashr( new_instr,  ConstantInt::get(N+l-1, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_1);
        Instruction *new_instr_3 = IBinaryInst::create_shl(value,  ConstantInt::get(N-1, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_3);
        Instruction *new_instr_2 = IBinaryInst::create_add(new_instr_3,  new_instr_1 , instr.get_parent());
        bb->insert_before(&instr, new_instr_2);
        last_instr = new_instr_2;
    }
    else{
        // q = SRA(n + MULSH(m − 2^N; n); shpost) − XSIGN(n);
        // 扩位
       Instruction *new_instr = ZextInst::create_zext(value, bb->get_module()->get_int64_type(), instr.get_parent());
        bb->insert_before(&instr, new_instr);

        Instruction *new_instr_1 = LBinaryInst::create_l_mul(new_instr, ConstantInt::get_long(m - pow2(N), m_), instr.get_parent());
        bb->insert_before(&instr, new_instr_1);
        LOG (WARNING) << "new_instr_1" << new_instr_1->get_operand(1)->get_type()->print();

        Instruction *new_instr_2 = LBinaryInst::create_l_ashr(new_instr_1, ConstantInt::get_long(long(N), m_), instr.get_parent());
        bb->insert_before(&instr, new_instr_2);
        LOG (WARNING) << "new_instr_2" << new_instr_2->get_operand(0)->get_type()->print();
        LOG (WARNING) << "new_instr_2" << new_instr_2->get_operand(1)->get_type()->print();
        Instruction *new_instr_3 = TruncInst::create_trunc_to_i32(new_instr_2, instr.get_parent());
        bb->insert_before(&instr, new_instr_3);

        Instruction *new_instr_4 = IBinaryInst::create_add(value, new_instr_3, instr.get_parent());
        bb->insert_before(&instr, new_instr_4);

        Instruction *new_instr_5 = IBinaryInst::create_ashr(new_instr_4, ConstantInt::get(l - 1, m_), instr.get_parent());
        bb->insert_before(&instr, new_instr_5);

        Instruction *new_instr_6 = IBinaryInst::create_lshr(value, ConstantInt::get(N - 1, m_), instr.get_parent());
        bb->insert_before(&instr, new_instr_6);

        Instruction *new_instr_7 = IBinaryInst::create_add(new_instr_5, new_instr_6, instr.get_parent());
        bb->insert_before(&instr, new_instr_7);

        last_instr = new_instr_7;
    }

    if (c_value < 0)
    {
        Instruction *new_instr = IBinaryInst::create_sub( ConstantInt::get(0, m_), last_instr, instr.get_parent());
        bb->insert_before(&instr, new_instr);
        last_instr = new_instr;
    }
    instr.replace_all_use_with(last_instr);
    bb->remove_instr(&instr);
    return last_instr;

}


Instruction* MathSimplify::srem(Value *value, ConstantInt * con , Instruction& instr, BasicBlock* bb){
     constexpr int N = 32;
    auto pow2 = [](size_t a) { return 1ULL << a; };
    int c_value = con->get_value();
    auto c_abs = abs(static_cast<int64_t>(c_value));
    auto l = int(max(1L, static_cast<int64_t>(ceil(log2(c_abs)))));

    assert(c_abs != 0);

    Instruction *last_instr = &instr;

    if (c_abs == 1) {
        Instruction *new_instr = IBinaryInst::create_add(ConstantInt::get(0, m_),  ConstantInt::get(0, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr);
        wait_delete.push_back(&instr);
        last_instr = new_instr;
        instr.replace_all_use_with(last_instr);
        bb->remove_instr(&instr);
        return last_instr;
        
    }
    
    int ys = c_abs % 2;


    if(c_value>=2 && c_abs == pow2(l) && l >= 1 && l <= 11){
        Instruction *new_instr_1 = IBinaryInst::create_shl( value,  ConstantInt::get(N-l, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_1);
        Instruction *new_instr_2 = IBinaryInst::create_lshr(new_instr_1,  ConstantInt::get(N-l, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_2);

        last_instr = new_instr_2;

        instr.replace_all_use_with(last_instr);
        bb->remove_instr(&instr);
        wait_delete.push_back(&instr);
    }   
    // else{
    //     Instruction* result1 =  sdiv(value, con, instr, bb);
    //     Instruction* result2 =  mul(result1, con, instr, bb);
    //     Instruction* result3 =  IBinaryInst::create_sub(value, result2, instr.get_parent());
    //     bb->insert_before(&instr, result3);
    //     last_instr = result3;
    // }


    return last_instr;
}


// mul
void MathSimplify::run() {
    LOG(WARNING) << "math simplify";

    for (auto &func : m_->get_functions()) {

        for (auto &bb : func.get_basic_blocks()) {
            wait_delete.clear();
            LOG(WARNING) << bb.get_instructions().size();
            for (auto &instr : bb.get_instructions()) {

                LOG(WARNING) << instr.get_instr_op_name() << "   "  << &instr << "  " ;
                // simplify mul
                if (instr.is_mul()) {
                    auto op1 = instr.get_operand(0);
                    auto op2 = instr.get_operand(1);
                    auto op1_c = cast_constantint(instr.get_operand(0));
                    auto op2_c = cast_constantint(instr.get_operand(1));

                        if (!op1_c && op2_c) {
                            BasicBlock* bb = instr.get_parent();
                            mul(op1, op2_c, instr, bb);
                        }
                        if (op1_c && !op2_c) {
                            BasicBlock* bb = instr.get_parent();
                            mul(op2, op1_c, instr, bb);
                        }
                }
                else if(instr.is_div()){
                    auto op1 = instr.get_operand(0);
                    auto op2 = instr.get_operand(1);
                    auto op1_c = cast_constantint(instr.get_operand(0));
                    auto op2_c = cast_constantint(instr.get_operand(1));
                        LOG(WARNING) << "div";

                    if (!op1_c && op2_c) {
                        BasicBlock* bb = instr.get_parent();
                        LOG(WARNING) << "div1";
                        LOG(WARNING) << op2_c->get_value();

                        sdiv(op1, op2_c, instr, bb);
                        LOG(WARNING) << bb->get_instructions().size();

                    }
                    if (op1_c && !op2_c) {
                        LOG(WARNING) << "div2";

                        BasicBlock* bb = instr.get_parent();
                        sdiv(op2, op1_c, instr, bb);
                    }
                }
                else if(instr.is_srem()){
                    auto op1 = instr.get_operand(0);
                    auto op2 = instr.get_operand(1);
                    auto op1_c = cast_constantint(instr.get_operand(0));
                    auto op2_c = cast_constantint(instr.get_operand(1));

                    if (!op1_c && op2_c) {
                        BasicBlock* bb = instr.get_parent();
                        srem(op1, op2_c, instr, bb);
                    }
                    if (op1_c && !op2_c) {
                        BasicBlock* bb = instr.get_parent();
                        srem(op2, op1_c, instr, bb);
                    }
                }
            }
            
            // for (auto instr : wait_delete) {
            //     bb.erase_instr(instr);
            // }
        }
    }
    LOG(INFO) << "math simplify done";
}