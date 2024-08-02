#ifndef LIVERANGE_HPP
#define LIVERANGE_HPP

#include "../lightir/Function.hpp"
#include "../lightir/Module.hpp"
#include "../lightir/Value.hpp"

#include <map>
#include <set>
#include <vector>

using std::map;
using std::pair;
using std::set;
using std::string;
using std::to_string;
using std::vector;

#define UNINITIAL -1

#define __LRA_PRINT__

namespace LRA {

struct Interval {//这个就是一个两个int类型组成的结构体
    Interval(int a = UNINITIAL, int b = UNINITIAL) : i(a), j(b) {}//两个初始化
    int i; // 0 means uninitialized
    int j;
};

using LiveSet = set<Value *>;
using PhiMap = map<BasicBlock *, vector<pair<Value *, Value *>>>;
using LiveInterval = pair<Interval, Value *>;

//对活跃变量进行排序，此处采用按活跃区间的起始点进行排序
struct LiveIntervalCMP {
    bool operator()(LiveInterval const &lhs, LiveInterval const &rhs) const {
        // 正则表达式模式，用于匹配类似于"op数字"的字符串
     //   std::regex pattern_arg("op\\d+");

        // 检查lhs和rhs的名称是否与"arg数字"模式匹配
      //  bool is_lhs_arg = std::regex_match(lhs.second->get_name(), pattern_arg);
       // bool is_rhs_arg = std::regex_match(rhs.second->get_name(), pattern_arg);

        // 如果lhs是参数而rhs不是参数，lhs小于rhs
        //if (is_lhs_arg && !is_rhs_arg)
        //    return true;

        // 如果lhs不是参数而rhs是参数，lhs大于rhs
        //if (!is_lhs_arg && is_rhs_arg)
         //   return false;

        // 如果上述条件都不满足，比较lhs和rhs的first.i成员变量
        if (lhs.first.i != rhs.first.i)
            return lhs.first.i < rhs.first.i;//比较区间的左端点
        else
            // 如果first.i相等，比较second的地址，好像没什么道理，反正就是随便给个顺序
            return lhs.second < rhs.second;

        //左端点比较小的放在前边。本身不是op的放在后边，左端点一致的时候，
    }
};
using LVITS = set<LiveInterval, LiveIntervalCMP>;//这个是一个若干<区间，变量>组成的集合，按照区间排序

class LiveRangeAnalyzer {
    friend class CodeGen;

  private:
    Module *m;
    map<Value *, Interval> intervalmap;//这个是一个<变量，区间>构成的集合
    vector<BasicBlock*> BB_DFS_Order;
    map<int, LiveSet> IN, OUT;//通过int表示的位置拿出一个 value*的set 表示当前还活跃的变量
    //phi_map: 标识在bb中的copy-statement
    const PhiMap &phi_map;//输入一个bb 返回一串<value*,value*re>
    LVITS liveIntervals;    
    //TODO:添加你需要的变量
    map<Instruction *,int> instr_id;//in is 2n-1 out is 2n
    set<int> id_is_br_ret;//对区间进行扩张的集合
    void get_dfs_order(Function*);
    void reverse_post_order(BasicBlock *,BasicBlock *);
    map<const BasicBlock *, bool> explored;
    vector<pair<BasicBlock *,BasicBlock *>> circles;
    vector<pair<int ,int>> circle_range;
    void make_id(Function *);
    void make_interval(Function *);
    int cntline;

    LiveSet joinFor(BasicBlock *bb);
    void union_ip(LiveSet &dest, LiveSet &src) {//把后一个加入前一个
        LiveSet res;
        set_union(dest.begin(),
                  dest.end(),
                  src.begin(),
                  src.end(),
                  std::inserter(res, res.begin()));
        dest = res;
    }
    LiveSet transferFunction(Instruction *);

  public:
    LiveRangeAnalyzer(Module *m_, PhiMap &phi_map_)
        : m(m_), phi_map(phi_map_) {}
    LiveRangeAnalyzer() = delete;

    // void run();
    void run(Function *);
    void clear();
    static string print_liveSet(const LiveSet &ls) {//活着的有哪些变量
        string s = "[ ";
        int cnt=0;
        for (auto k : ls){
            s += k->get_name() + " ";
            cnt++;
        }  
        s += "] length:";
        s +=to_string(cnt);
        return s;
    }
    static string print_interval(const Interval &i) {//打印这个interval
        return "<" + to_string(i.i) + ", " + to_string(i.j) + ">";
    }
    const LVITS &get() { return liveIntervals; }
    map<const BasicBlock *, bool>  get_explored() { return explored; }
    const decltype(intervalmap) &get_interval_map() const {
        return intervalmap;
    }
    const decltype(IN) &get_in_set() const { return IN; }
    const decltype(OUT) &get_out_set() const { return OUT; }
};
} // namespace LRA
#endif
//TODO: 这只是一个样例，你可以自行对框架进行修改以符合你自己的心意
//TODO: 对框架不满可尽情修改