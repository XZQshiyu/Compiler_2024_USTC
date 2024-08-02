#include "MathSimplify.hpp"

#include "Instruction.hpp"
#include "logging.hpp"
#include <ilist.hpp>


#define max(a, b) ((a) > (b) ? (a) : (b))



Instruction* MathSimplify::mul(Value *value, ConstantInt * con , Instruction& instr, BasicBlock* bb){
    int c_value = con->get_value();
    int c_abs = abs(c_value);

    Instruction *last_instr = &instr;


    if(c_abs == 0){
        Instruction *new_instr = IBinaryInst::create_add(ConstantInt::get(0, m_),  ConstantInt::get(0, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr);
        wait_delete.push_back(&instr);
        last_instr = new_instr;
        return last_instr;
    }
    else if(c_abs == 1){
        if(c_abs > 0 ){
            Instruction *new_instr = IBinaryInst::create_add(value,  ConstantInt::get(0, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr);
            wait_delete.push_back(&instr);
            last_instr = new_instr;
            return last_instr;
        } 
        else{
            Instruction *new_instr = IBinaryInst::create_sub( ConstantInt::get(0, m_), value, instr.get_parent());
            bb->insert_before(&instr, new_instr);
            wait_delete.push_back(&instr);
            last_instr = new_instr;
            return last_instr;    
        }
    }
    // 取指数
    auto l = max(1L, static_cast<int64_t>(ceil(log2(c_abs))));
    auto m = ConstantInt::get(int(l), m_);
    int ys = c_abs % 2;
    if(ys == 0){
        Instruction *new_instr = IBinaryInst::create_shl( value, m, instr.get_parent());
        bb->insert_before(&instr, new_instr);
        last_instr = new_instr;
        if(c_value < 0){
            Instruction *new_instr_1 = IBinaryInst::create_sub( ConstantInt::get(0, m_), new_instr, instr.get_parent());
            bb->insert_before(&instr, new_instr_1);
            last_instr = new_instr_1;
        }
        wait_delete.push_back(&instr);
        return last_instr;
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
    LOG(WARNING) << "c_abs: " << c_abs;

    Instruction *last_instr = &instr;

    if (c_abs == 1) {
        if (c_value > 0) {
            Instruction *new_instr = IBinaryInst::create_add(value,  ConstantInt::get(0, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr);
            wait_delete.push_back(&instr);
            last_instr = new_instr;
            return last_instr;
        } else /* c_value < 0 */ {
            Instruction *new_instr = IBinaryInst::create_sub( ConstantInt::get(0, m_), value, instr.get_parent());
            bb->insert_before(&instr, new_instr);
            wait_delete.push_back(&instr);
            last_instr = new_instr;
            return last_instr;
        }
    }
    
    int ys = c_abs % 2;


    if(ys == 0){
        if(l > 1){
            Instruction *new_instr = IBinaryInst::create_ashr(value,  ConstantInt::get(l-1, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr);
            Instruction *new_instr_1 = IBinaryInst::create_ashr( new_instr,  ConstantInt::get(N-1, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr_1);
            Instruction *new_instr_2 = IBinaryInst::create_add(value,  new_instr_1 , instr.get_parent());
            bb->insert_before(&instr, new_instr_2);
            Instruction *new_instr_3 = IBinaryInst::create_ashr(new_instr_2,  ConstantInt::get(l, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr_3);
            last_instr = new_instr_3;
        }
        else{
            Instruction *new_instr_1 = IBinaryInst::create_ashr( value,  ConstantInt::get(N-1, m_) , instr.get_parent());
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
        Instruction *new_instr = IBinaryInst::create_mul(value,  ConstantInt::get(int(m), m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr);
        Instruction *new_instr_1 = IBinaryInst::create_ashr( new_instr,  ConstantInt::get(N+l-1, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_1);
        Instruction *new_instr_3 = IBinaryInst::create_ashr(value,  ConstantInt::get(N-1, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_3);
        Instruction *new_instr_2 = IBinaryInst::create_add(new_instr_3,  new_instr_1 , instr.get_parent());
        bb->insert_before(&instr, new_instr_2);
        last_instr = new_instr_2;
    }
    else{
        Instruction *new_instr = IBinaryInst::create_mul(value,  ConstantInt::get(int(m-pow2(N)), m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr);
        Instruction *new_instr_1 = IBinaryInst::create_ashr( new_instr,  ConstantInt::get(N, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_1);
        Instruction *new_instr_2 = IBinaryInst::create_add(value,  new_instr_1 , instr.get_parent());
        bb->insert_before(&instr, new_instr_2);
        Instruction *new_instr_3 = IBinaryInst::create_ashr(new_instr_2,  ConstantInt::get(l-1, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_3);
        Instruction *new_instr_4 = IBinaryInst::create_ashr(value,  ConstantInt::get(N-1, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr_4);
        
        Instruction *new_instr_5 = IBinaryInst::create_add(new_instr_3,  new_instr_4 , instr.get_parent());
        bb->insert_before(&instr, new_instr_5);

        last_instr = new_instr_5;
    }

    if (c_value < 0)
    {
        Instruction *new_instr = IBinaryInst::create_sub( ConstantInt::get(0, m_), last_instr, instr.get_parent());
        bb->insert_before(&instr, new_instr);
        last_instr = new_instr;
    }
    LOG(WARNING) << "last_instr: " << last_instr;
    // wait_delete.push_back(&instr);
    bb->erase_instr(&instr);
    LOG(WARNING) << "last_instr: " << last_instr;

    return last_instr;

}

Instruction* MathSimplify::srem(Value *value, ConstantInt * con , Instruction& instr, BasicBlock* bb){
     constexpr int N = 32;
    auto pow2 = [](size_t a) { return 1ULL << a; };
    int c_value = con->get_value();
    auto c_abs = abs(static_cast<int64_t>(c_value));
    auto l = int(max(1L, static_cast<int64_t>(ceil(log2(c_abs)))));
    auto m = pow2(N + l - 1) / c_abs + 1;

    assert(c_abs != 0);

    Instruction *last_instr = &instr;

    if (c_abs == 1) {
        Instruction *new_instr = IBinaryInst::create_add(ConstantInt::get(0, m_),  ConstantInt::get(0, m_) , instr.get_parent());
        bb->insert_before(&instr, new_instr);
        wait_delete.push_back(&instr);
        last_instr = new_instr;
        return last_instr;
        
    }
    
    int ys = c_abs % 2;


    if(ys == 0 && l >= 1 && l <= 11){
        if(l > 1){
            Instruction *new_instr = IBinaryInst::create_ashr(value,  ConstantInt::get(l-1, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr);
            Instruction *new_instr_1 = IBinaryInst::create_ashr( new_instr,  ConstantInt::get(N-1, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr_1);
            Instruction *new_instr_2 = IBinaryInst::create_add(value,  new_instr_1 , instr.get_parent());
            bb->insert_before(&instr, new_instr_2);
            Instruction *new_instr_3 = IBinaryInst::create_and(ConstantInt::get(-int(c_abs), m_),  new_instr_2 , instr.get_parent());
            bb->insert_before(&instr, new_instr_2);
            
            Instruction *new_instr_4 = IBinaryInst::create_ashr(new_instr_3,  value , instr.get_parent());
            bb->insert_before(&instr, new_instr_4);
            last_instr = new_instr_4;
        }
        else{
            Instruction *new_instr_1 = IBinaryInst::create_ashr( value,  ConstantInt::get(N-1, m_) , instr.get_parent());
            bb->insert_before(&instr, new_instr_1);
            Instruction *new_instr_2 = IBinaryInst::create_add(value,  new_instr_1 , instr.get_parent());
            bb->insert_before(&instr, new_instr_2);
            Instruction *new_instr_3 = IBinaryInst::create_and(ConstantInt::get(-int(c_abs), m_),  new_instr_2 , instr.get_parent());
            bb->insert_before(&instr, new_instr_2);
            Instruction *new_instr_4 = IBinaryInst::create_ashr(new_instr_3,  value , instr.get_parent());
            bb->insert_before(&instr, new_instr_4);
            last_instr = new_instr_3;
        }
    }   
    else{
        Instruction* result1 =  sdiv(value, con, instr, bb);
        Instruction* result2 =  mul(result1, con, instr, bb);
        Instruction* result3 =  IBinaryInst::create_sub(value, result2, instr.get_parent());
        bb->insert_before(&instr, result3);
        last_instr = result3;
    }

    wait_delete.push_back(&instr);
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

                        Instruction *a = sdiv(op1, op2_c, instr, bb);
                    }
                    if (op1_c && !op2_c) {
                        LOG(WARNING) << "div2";

                        BasicBlock* bb = instr.get_parent();
                        Instruction *a = sdiv(op2, op1_c, instr, bb);
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
}