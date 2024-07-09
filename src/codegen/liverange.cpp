#include "liverange.hpp"
#include <stack>
#include <map>
#include "BasicBlock.hpp"
#include "Function.hpp"
#include "logging.hpp"
#include<algorithm>
#include<utility>

#include <deque>

using namespace LRA;

void LiveRangeAnalyzer::clear() {
    BB_DFS_Order.clear();
    explored.clear();
    IN.clear();
    OUT.clear();
    liveIntervals.clear();
    circle_range.clear();
    circles.clear();
    id_is_br_ret.clear();
    //TODO:每次活跃变量分析前清空定义的变量
}

LiveSet LiveRangeAnalyzer::joinFor(BasicBlock *bb) {
    LiveSet out;
    for (auto succ : bb->get_succ_basic_blocks()) {
        auto &irs = succ->get_instructions();
        auto it = irs.begin();
        while (it != irs.end() and it->is_phi())
            ++it;
        //开头的若干phi语句都是无效的
        //我们要找到第一个有效的语句
        assert(it != irs.end() && "need to find first_ir from copy-stmt");
        //如果全都是phi，没有任何有效语句，就寄了，报错
        auto first_ir=&*it;
        union_ip(out,IN[instr_id[first_ir]-1]);//-1表示这个的入口
    }
    return out;
}

void LiveRangeAnalyzer::make_id(Function *func) {
    /*TODO: 按排序后的BB为所有的指令标定行号，这里建议指令行号是指令数的两倍，这样便于分辨指令的IN和OUT.
    由于已经进行了copystmt,所以phi语句无需进行标定*/
    //phi语句本身不是语句，是你加进来的，所以不享受行号
    cntline=0;
    for (auto bb : BB_DFS_Order) {
        for (auto &instr : bb->get_instructions()) {
            if (instr.is_phi())
                continue;
            cntline++;
            instr_id[&instr]=cntline*2;
            //每一个指令 in是2n-1 out is 2n
            //TODO: 注意处理时copy-statement需放在br/ret指令前处理
        }
    }
}
void LiveRangeAnalyzer::reverse_post_order(BasicBlock * bb,BasicBlock * father){
    if(explored[bb]){ 
        auto cir=std::make_pair(bb,father);
        circles.push_back(cir);
        return;
    }
    explored[bb]=true;
    for (auto succ_iter = bb->get_succ_basic_blocks().rbegin(); succ_iter != bb->get_succ_basic_blocks().rend(); ++succ_iter){
        //左 右 中，左是ret 右是circle
        //把顺序反过来，先中间，再circle，再return
        //拓扑序
        reverse_post_order(*succ_iter,bb);
    }
    BB_DFS_Order.emplace_back(bb);   
}
void LiveRangeAnalyzer::get_dfs_order(Function *func) {
    auto first_bb=func->get_entry_block();
    std::stack<BasicBlock *> todo;
    reverse_post_order(first_bb,nullptr);
    std::reverse(BB_DFS_Order.begin(), BB_DFS_Order.end()); 
    for(auto bb:BB_DFS_Order){
        LOG(INFO)<<" "<<bb->print();
    }
    //TODO: 对当前函数的BasicBlocks进行DFS并将结果保存在BB_DFS_Order中
}

LiveSet LiveRangeAnalyzer::transferFunction(Instruction *instr) {
    /*TODO: 在平时讲述的活跃变量分析中我们是对每个块计算 
    IN[B] = use + (OUT[B] - def), 但在具体程序流分析中我们可以对每条语句进行计算来达到等价的效果
    这个函数就用于对每条语句计算instr的 in = use + out - def
    思考对于instr来说它的use和def是什么?这样做相对于对整个BasicBlock计算有什么好处?
    */
    
}

void LiveRangeAnalyzer::run(Function *func) {//是在function内部完成的
    clear();
    get_dfs_order(func);
    //LOG(DEBUG)<<"after dfs";
    make_id(func);
    //LOG(DEBUG)<<"after make id";
    bool cont = true;
    while (cont) {
        cont = false;
        // 活跃变量分析是逆向搜索的

        for (auto rit_bb = BB_DFS_Order.rbegin(); rit_bb != BB_DFS_Order.rend(); ++rit_bb) {
            //一个一个基本块,从后往前
            auto bb = *rit_bb;
            bool last_ir = true;
            //TODO:添加你在循环中需要使用的变量


            for (auto rit_ir = bb->get_instructions().rbegin(); rit_ir != bb->get_instructions().rend(); ++rit_ir) {
                //一行一行命令，从后往前
                auto instr = &(*rit_ir);
                if (instr->is_phi()) {
                    assert(not last_ir && "If phi is the last ir, then data "
                                          "flow fails due to ignorance of phi");
                    continue;
                }
                IN[instr_id[instr]-1] = OUT[instr_id[instr]] = {};
                //这次需要完成更新的两个集合
                if(last_ir){
                    OUT[instr_id[instr]]=joinFor(bb);//最后一条命令的结束，就是整个基本块的结束
                    last_ir=false;
                }else{
                    OUT[instr_id[instr]]=IN[instr_id[instr]+1];//后一行的in就是这一行的out
                }
                //LOG(DEBUG)<<" "<<instr_id[instr]<<" "<<print_liveSet(OUT[instr_id[instr]])<<" ";
                LiveSet def,use;
                //TODO:进行活跃变量分析
                if (instr->is_ret() or instr->is_br()) {
                    //TODO: 对copy-statement进行处理，思考它与普通的指令有什么区别
                    auto it = phi_map.find(bb);//输入的是跳转方的基本块，输出的是在这个基本块的结束，A:=B包括哪些
                    if(it==phi_map.end()){
                        //do nothing 
                    }else{
                        auto pairs=it->second;
                        
                        for(auto &pair:pairs){
                            //LOG(DEBUG)<<" "<<pair.first->print()<<" "<<pair.second->print();
                            def.emplace(pair.first);
                            auto source=pair.second;
                            if(dynamic_cast<Function *>(source)||dynamic_cast<GlobalVariable *>(source)||dynamic_cast<Constant *>(source)||dynamic_cast<BasicBlock *>(source)){//如果是常数，就不用活跃变量分析了
                                //do nothing
                            }else{
                                use.emplace(source);
                            }
                        }
                    }
                    id_is_br_ret.emplace(instr_id[instr]);
                    //所有停在上边的，让他停在下边
                    //所有下边开始的，让他上边开始

                }

                if(not instr->is_void()){
                    def.emplace(instr);
                }
                std::vector<Value *> ops=instr->get_operands();
                for (auto &opp : ops){
                    auto fop=*&opp;
                    if(dynamic_cast<Function *>(fop)||dynamic_cast<GlobalVariable *>(fop)||dynamic_cast<Constant *>(fop)||dynamic_cast<BasicBlock *>(fop)){//如果是常数，就不用活跃变量分析了
                        //do nothing
                    }else{
                        use.emplace(fop);
                    }
                }
               // LOG(INFO)<<" "<<instr->print()<<" "<<instr->is_phi();
                //LOG(INFO)<<" "<<instr_id[instr]<<" "<<print_liveSet(def)<<" ";
                //LOG(INFO)<<" "<<instr_id[instr]<<" "<<print_liveSet(use)<<" ";


                IN[instr_id[instr]-1].clear();
                std::set_difference(OUT[instr_id[instr]].begin(),OUT[instr_id[instr]].end(),def.begin(),def.end(),inserter(IN[instr_id[instr]-1],IN[instr_id[instr]-1].begin()));
                //in = out -def +use
                union_ip(IN[instr_id[instr]-1],use);
                //def=assign-use



            }
        }
    }
    //LOG(DEBUG)<<" finish live of "<<func->get_name();
    // 将function中的argument添加到IN集合中
    assert(IN.find(0) == IN.end() and OUT.find(0) == OUT.end() && "no instr_id will be mapped to 0");
    IN[0] = OUT[0] = {};
    for (auto &arg : func->get_args())
        IN[0].insert(&arg);//只能是这些，不能比这个再多
        //函数调用，源头变量数目是很固定的，多了一定是错了
        //分析出来的IN[1]，应该是IN[0]这些东西的子集
    make_interval(func);

}

void LiveRangeAnalyzer::make_interval(Function *func) {
    //TODO:计算每个变量的活跃区间
    intervalmap.clear();
    for(int i=1;i<=cntline;i++){
        if(id_is_br_ret.find(2*i)!=id_is_br_ret.end()){
            //br or ret 
            for(auto &var:IN[2*i-1]){
                if(intervalmap.find(var)==intervalmap.end()){
                    intervalmap[var]=Interval(2*i-1,2*i-1);
                }else{
                    intervalmap[var].j=2*i;//结束点后移
                }
            }
            for(auto &var:OUT[2*i]){
                if(intervalmap.find(var)==intervalmap.end()){
                    intervalmap[var]=Interval(2*i-1,2*i-1);//开始点前移
                }else{
                    intervalmap[var].j=2*i;
                }
            }
        }else{
            for(auto &var:IN[2*i-1]){
                if(intervalmap.find(var)==intervalmap.end()){
                    intervalmap[var]=Interval(2*i-1,2*i-1);
                }else{
                    intervalmap[var].j=2*i-1;
                }
            }
            for(auto &var:OUT[2*i]){
                if(intervalmap.find(var)==intervalmap.end()){
                    intervalmap[var]=Interval(2*i,2*i);
                }else{
                    intervalmap[var].j=2*i;
                }
            }
        }
        
    }
    for(auto cir:circles){
        auto inst_first_iter=cir.first->get_instructions().begin();
        auto inst_first=&(*inst_first_iter);
        while(inst_first->is_phi()){
            inst_first_iter++;
            inst_first=&(*inst_first_iter);
        }
        auto inst_end=&(*(cir.second->get_instructions().rbegin()));
        LOG_INFO<<" "<<inst_first->print()<<" "<<inst_end->print();
        if(instr_id[inst_first]-1>=instr_id[inst_end]) continue;//cross edge
        LOG_INFO<<" "<<instr_id[inst_first]-1<<" "<<instr_id[inst_end];
        circle_range.push_back(std::make_pair(instr_id[inst_first]-1,instr_id[inst_end]));
    }
    for (auto &[op, interval] : intervalmap){
        for(auto &c_range:circle_range){
            if(interval.i<c_range.first&&interval.j>=c_range.first&interval.j<c_range.second){
                interval.j=c_range.second;//这里哪怕是等号也要延长
            }
        }
        liveIntervals.insert({interval, op});
        LOG(INFO)<<op->print()<<" "<<print_interval(interval)<<" \n";
    }
}
//TODO: 对框架不满可尽情修改
