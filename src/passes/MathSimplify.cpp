#include "MathSimplify.hpp"

#include "Instruction.hpp"
#include "logging.hpp"
#include <ilist.hpp>


#define max(a, b) ((a) > (b) ? (a) : (b))

using uword = uint32_t;
using udword = uint64_t;

void CHOOSE_MULTIPLIER(uword d, int prec, udword &m, int &shpost, int &e) {
    assert(d > 0 && d < (1u << 31)); // Ensure d is within valid range
    assert(prec > 0 && prec <= 32);  // Ensure prec is within valid range

    e = static_cast<int>(std::floor(std::log2(d)));
    shpost = e;

    udword mlow = (1ull << (31 + e)) / d;
    udword mhigh = ((1ull << (31 + e + 1)) - (1ull << (31 + e - prec))) / d;

    // Avoid numerator overflow
    mlow = (1ull << 31) + (mlow - (1ull << 31));
    mhigh = (1ull << 31) + (mhigh - (1ull << 31));

    while ((mlow >> e) < (mhigh >> e) && shpost > 0) {
        mlow >>= 1;
        mhigh >>= 1;
        --shpost;
    }

    m = mhigh;
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


Instruction* MathSimplify::sdiv(Value *value, ConstantInt * con , Instruction& instr, BasicBlock* bb){
    constexpr int N = 32;
    auto pow2 = [](size_t a) { return 1ULL << a; };
    int c_value = con->get_value();
    auto c_abs = abs(static_cast<int64_t>(c_value));
    auto l = int(max(1L, static_cast<int64_t>(ceil(log2(c_abs)))));
    auto m = pow2(N + l - 1) / c_abs + 1;
    Instruction *last_instr = &instr;

    if (c_abs == 1) {
        // 处理除数为1的情况
        Instruction *new_instr = (c_value > 0) ? 
            IBinaryInst::create_add(value, ConstantInt::get(0, m_) , bb) : 
            IBinaryInst::create_sub(ConstantInt::get(0, m_), value, bb);
        
        bb->insert_before(&instr, new_instr);
        wait_delete.push_back(&instr);
        return new_instr;
    }

    if(c_abs == pow2(l)){
        // 处理除数为2的幂次的情况
        // if(l > 1){
        //     Instruction *new_instr_1 = IBinaryInst::create_ashr(value, ConstantInt::get(l-1, m_) , bb);
        //     bb->insert_before(&instr, new_instr_1);
        //     Instruction *new_instr_2 = IBinaryInst::create_ashr(new_instr_1, ConstantInt::get(N-1, m_) , bb);
        //     bb->insert_before(&instr, new_instr_2);
        //     Instruction *new_instr_3 = IBinaryInst::create_add(value, new_instr_2 , bb);
        //     bb->insert_before(&instr, new_instr_3);
        //     Instruction *new_instr_4 = IBinaryInst::create_ashr(new_instr_3, ConstantInt::get(l, m_) , bb);
        //     bb->insert_before(&instr, new_instr_4);
        //     last_instr = new_instr_4;
        // } else {
        //     Instruction *new_instr_1 = IBinaryInst::create_ashr(value, ConstantInt::get(N-1, m_) , bb);
        //     bb->insert_before(&instr, new_instr_1);
        //     Instruction *new_instr_2 = IBinaryInst::create_add(value, new_instr_1 , bb);
        //     bb->insert_before(&instr, new_instr_2);
        //     Instruction *new_instr_3 = IBinaryInst::create_ashr(new_instr_2, ConstantInt::get(l, m_) , bb);
        //     bb->insert_before(&instr, new_instr_3);
        //     last_instr = new_instr_3;
        // }
        Instruction *new_instr_3 = IBinaryInst::create_ashr(value, ConstantInt::get(l, m_) , bb);
        bb->insert_before(&instr, new_instr_3);
        last_instr = new_instr_3;
        wait_delete.push_back(&instr);
        instr.replace_all_use_with(last_instr);
        bb->remove_instr(&instr);
    } 
    // else if(m < pow2(N-1)){
    //     // 处理乘数小于2^31的情况
    //     LOG(WARNING) << "m < pow2(N-1)";
    //     Instruction *new_instr_1 = IBinaryInst::create_mul(value, ConstantInt::get(int(m), m_) , bb);
    //     bb->insert_before(&instr, new_instr_1);
    //     Instruction *new_instr_2 = IBinaryInst::create_ashr(new_instr_1, ConstantInt::get(N+l-1, m_) , bb);
    //     bb->insert_before(&instr, new_instr_2);
    //     Instruction *new_instr_3 = IBinaryInst::create_ashr(value, ConstantInt::get(N-1, m_) , bb);
    //     bb->insert_before(&instr, new_instr_3);
    //     Instruction *new_instr_4 = IBinaryInst::create_add(new_instr_3, new_instr_2 , bb);
    //     bb->insert_before(&instr, new_instr_4);
    //     last_instr = new_instr_4;
    // } else {
    //     // 处理其他情况
    //     Instruction *new_instr_1 = IBinaryInst::create_mul(value, ConstantInt::get(int(m-pow2(N-1)), m_) , bb);
    //     bb->insert_before(&instr, new_instr_1);
    //     Instruction *new_instr_2 = IBinaryInst::create_ashr(new_instr_1, ConstantInt::get(N, m_) , bb);
    //     bb->insert_before(&instr, new_instr_2);
    //     Instruction *new_instr_3 = IBinaryInst::create_add(value, new_instr_2 , bb);
    //     bb->insert_before(&instr, new_instr_3);
    //     Instruction *new_instr_4 = IBinaryInst::create_ashr(new_instr_3, ConstantInt::get(l-1, m_) , bb);
    //     bb->insert_before(&instr, new_instr_4);
    //     Instruction *new_instr_5 = IBinaryInst::create_ashr(value, ConstantInt::get(N-1, m_) , bb);
    //     bb->insert_before(&instr, new_instr_5);
    //     Instruction *new_instr_6 = IBinaryInst::create_add(new_instr_4, new_instr_5 , bb);
    //     bb->insert_before(&instr, new_instr_6);
    //     last_instr = new_instr_6;
    // }

    // if (c_value < 0) {
    //     Instruction *new_instr = IBinaryInst::create_sub(ConstantInt::get(0, m_), last_instr, bb);
    //     bb->insert_before(&instr, new_instr);
    //     last_instr = new_instr;
    // }

    // wait_delete.push_back(&instr);
    // instr.replace_all_use_with(last_instr);
    // bb->remove_instr(&instr);

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
        // if(l > 1){
        //     Instruction *new_instr = IBinaryInst::create_ashr(value,  ConstantInt::get(l-1, m_) , instr.get_parent());
        //     bb->insert_before(&instr, new_instr);
        //     Instruction *new_instr_1 = IBinaryInst::create_ashr( new_instr,  ConstantInt::get(N-l, m_) , instr.get_parent());
        //     bb->insert_before(&instr, new_instr_1);
        //     Instruction *new_instr_2 = IBinaryInst::create_add(value,  new_instr_1 , instr.get_parent());
        //     bb->insert_before(&instr, new_instr_2);
        //     Instruction *new_instr_3 = IBinaryInst::create_and(ConstantInt::get(-int(c_abs), m_),  new_instr_2 , instr.get_parent());
        //     bb->insert_before(&instr, new_instr_3);
            
        //     Instruction *new_instr_4 = IBinaryInst::create_ashr(new_instr_3,  value , instr.get_parent());
        //     bb->insert_before(&instr, new_instr_4);
        //     last_instr = new_instr_4;
        // }
        // else{
        //     Instruction *new_instr_1 = IBinaryInst::create_ashr( value,  ConstantInt::get(N-l, m_) , instr.get_parent());
        //     bb->insert_before(&instr, new_instr_1);
        //     Instruction *new_instr_2 = IBinaryInst::create_add(value,  new_instr_1 , instr.get_parent());
        //     bb->insert_before(&instr, new_instr_2);
        //     Instruction *new_instr_3 = IBinaryInst::create_and(ConstantInt::get(-int(c_abs), m_),  new_instr_2 , instr.get_parent());
        //     bb->insert_before(&instr, new_instr_3);
        //     Instruction *new_instr_4 = IBinaryInst::create_ashr(new_instr_3,  value , instr.get_parent());
        //     bb->insert_before(&instr, new_instr_4);
        //     last_instr = new_instr_4;
        // }

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