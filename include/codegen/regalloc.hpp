#ifndef REGALLOCA_HPP
#define REGALLOCA_HPP
#include "../lightir/Function.hpp"
#include "../lightir/Value.hpp"
#include "./liverange.hpp"
#include "../common/logging.hpp"

using namespace LRA;

namespace RA {

//一共32个寄存器，只使用其中9个
//t0-t9
#define MAXR 32
#define ARG_MAX_R 9

struct ActiveCMP {
    bool operator()(LiveInterval const &lhs, LiveInterval const &rhs) const {
       // std::regex pattern_arg("op\\d+");
        //bool is_lhs_arg = std::regex_match(lhs.second->get_name(), pattern_arg);
        //bool is_rhs_arg = std::regex_match(rhs.second->get_name(), pattern_arg);
       // if(is_lhs_arg && !is_rhs_arg)
        //    return true;
        //if(!is_lhs_arg && is_rhs_arg)
         //   return false;
        if (lhs.first.j != rhs.first.j)
            return lhs.first.j < rhs.first.j;//先结束的排在前边
        else if (lhs.first.i != rhs.first.i)
            return lhs.first.i < rhs.first.i;//一起结束，那就先开始的排在前边
        else
            return lhs.second < rhs.second;
    }
};

class RegAllocator {
  private:
    Function *cur_func;
    const bool FLOAT;
    const uint R;
    bool used[MAXR + 1]; // index range: 1 ~ R
    map<Value *, int> regmap;//这是寄存器分配的结果，没有的就是要用stack空间，
    //这个可以输入一个参数（也就是指向op的指针），返回一个分配的寄存器
    set<LiveInterval, ActiveCMP> active;//当前这些区间是占用了寄存器的，按照结束端点排序
    set<LiveInterval, ActiveCMP> Remove_active;
    //TODO:添加你需要的变量
    
    void reset(Function * = nullptr);
    void ReserveForArg(const LVITS &);
    void ExpireOldIntervals(LiveInterval);
    void SpillAtInterval(LiveInterval);

  public:
    RegAllocator(const uint R_, bool fl) : FLOAT(fl), R(R_), used{false} {
        LOG_DEBUG << "RegAllocator initialize: R=" << R << "\n";
        assert(R <= MAXR);
    }
    RegAllocator() = delete;

    //判断当前v是否需要分配寄存器，需要则返回false
    static bool no_reg_alloca(Value *v);
    void LinearScan(const LVITS &, Function *);
    const map<Value *, int> &get() const { return regmap; }
    void print(string (*regname)(int)) {
        for (auto [op, reg] : regmap)
            LOG_INFO << op->get_name() << " ~ " << regname(reg) << "\n";
    }
};
} // namespace RA
#endif
//TODO: 这只是一个样例，你可以自行对框架进行修改以符合你自己的心意
//TODO: 对框架不满可尽情修改