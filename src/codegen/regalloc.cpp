#include "../../include/codegen/regalloc.hpp"

#include "../../include/lightir/Function.hpp"
#include "../../include/lightir/Instruction.hpp"
#include "../../include/codegen/liverange.hpp"

#include <algorithm>

using std::for_each;

using namespace RA;

#define ASSERT_CMPINST_USED_ONCE(cmpinst) (assert(cmpinst->get_use_list().size() <= 1))

int get_arg_id(Argument *arg) {
    int id = 1;
    for(auto &arg_test : arg->get_parent()->get_args()){
        if(&arg_test == arg)
            break;
        ++id;
    }
    return id;
}

bool RegAllocator::no_reg_alloca(Value *v) {
    auto instr = dynamic_cast<Instruction *>(v);
    auto arg = dynamic_cast<Argument *>(v);
    if (instr) {
        //TODO: 判断哪些指令需要分配寄存器
    }
    if (arg) { // 只为前8个参数分配寄存器
        return get_arg_id(arg) > ARG_MAX_R;
    } else
        assert(false && "only instruction and argument's LiveInterval exits");
}

void RegAllocator::reset(Function *func) {
    //TODO: 对相关参数进行初始化
    active.clear();
    Remove_active.clear();
    int size = sizeof(used) / sizeof(used[0]);
    std::fill(used, used + size, false);
    regmap.clear();
    
}

void RegAllocator::ReserveForArg(const LVITS &liveints) {
    //TODO: 先对函数参数进行分配，分完为止，在本实验框架中会对INT/FLOAT进行分类讨论，在考虑INT类型时无需考虑FLOAT类型变量，反之同理
    //感觉没必要
}

// input set is sorted by increasing start point
void RegAllocator::LinearScan(const LVITS &liveints, Function *func) {
    reset(func);
    ReserveForArg(liveints);
    int reg;
    LOG_DEBUG<<"aaaa"<<R;
    for (auto liveint : liveints) {

        //TODO: 考虑有哪些情况的liveint不需要进行分析

        if(FLOAT){
            if(!liveint.second->get_type()->is_float_type()){
                continue;
            }
        }else{
            
            if(liveint.second->get_type()->is_float_type()){
                continue;
            }
        }
     //   LOG(DEBUG)<<liveint.second->get_name();
        //LOG_DEBUG<<used[1]<<" "<<used[2]<<" "<<used[3]<<" "<<used[4]<<" "<<used[5]<<" "<<used[6]<<" "<<used[7]<<" "<<used[8]<<" "<<used[9]<<" "<<used[10]<<" "<<used[11]<<" "<<used[12]<<" "<<used[13]<<" "<<used[14];
        ExpireOldIntervals(liveint);
       // LOG(DEBUG)<<liveint.second->get_name();
        LOG_DEBUG<<active.size()-Remove_active.size();
        LOG_DEBUG<<used[1]<<" "<<used[2]<<" "<<used[3]<<" "<<used[4]<<" "<<used[5]<<" "<<used[6]<<" "<<used[7]<<" "<<used[8]<<" "<<used[9]<<" "<<used[10]<<" "<<used[11]<<" "<<used[12]<<" "<<used[13]<<" "<<used[14];
        if (active.size()-Remove_active.size() == R)
            SpillAtInterval(liveint);
        
        else {
            for (reg = 1; reg <= R and used[reg]; ++reg){
                //do nothing 
                
            }
            used[reg] = true;
            regmap[liveint.second] = reg;//这个就是成功分配了，但是后边还有可能会被挤出去
            LOG_DEBUG<<liveint.second->get_name()<<" : "<<reg;
            active.insert(liveint);
        }
       // LOG(DEBUG)<<liveint.second->get_name();
    }
    LOG(DEBUG)<<regmap.size();
}

void RegAllocator::ExpireOldIntervals(LiveInterval liveint) {
    //TODO: 清除与当前的liveint已无交集的活跃变量
    //Remove_active.clear();
    for(auto active_int:active){
        if(Remove_active.find(active_int)!=Remove_active.end()) continue; //find it in removed list
        if(active_int.first.j>=liveint.first.i){
            return ; //找到了第一个结束的比我开始早的人，从此之后的都没有过期
        }
      //  LOG(DEBUG)<<active_int.second->get_name();
      //  LOG(DEBUG)<<Remove_active.size();
        Remove_active.insert(active_int);
       // LOG(DEBUG)<<Remove_active.size();
        used[regmap[active_int.second]]=0;//取消used
    }
   // LOG(DEBUG)<<"123";
  /*  for(auto r_int : Remove_active) {
        LOG(DEBUG)<<"delete "<<r_int.second->get_name();
        LOG(DEBUG)<<(active.find(r_int)==active.end());
        //active.erase(r_int);
        set<LiveInterval, ActiveCMP>::iterator it = active.begin();
        while (it != active.end())
        {
            if (it==active.find(r_int))
            {
                // 删除节点的前，对迭代器进行后移的操作，因为其他元素不会失效
                active.erase(it++);
            }
            else
            {
                it++;
            }
        }*/

        
      //  LOG(DEBUG)<<(active.find(r_int)==active.end());
}

void RegAllocator::SpillAtInterval(LiveInterval liveint) {
    //TODO: 处理溢出情况
    LOG(DEBUG)<<"spill happened ";
    LiveInterval spill;
    for(auto active_int:active){
        if(Remove_active.find(active_int)!=Remove_active.end()) continue; //find it in removed list
        spill=active_int;
        break;
    }
    //重叠的两个区间，一个早开始早结束liveint，一个晚开始晚结束spill,我选择保留早开始早结束的，因为不耽误后边的人（贪心）
    if(spill.first.j>liveint.first.j){
        regmap[liveint.second]=regmap[spill.second];
        regmap.erase(spill.second);//stack
        active.insert(liveint);
        //active.erase(spill);
        Remove_active.insert(spill);
    }else{
        //do nothing ,不对这个进行寄存器分配
    }

}
//TODO: 对框架不满可尽情修改