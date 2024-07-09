#!/usr/bin/env python3
import subprocess

#21
lv0 = {
    "00_comment2":(1, False),
    "01_multiple_returns":(1, False),
    "02_ret_in_block":(1, False),
    "03_branch":(1, False),
    "04_break_continue":(1, False),
    "05_param_name":(1, False),
    "06_func_name":(1, False),
    "07_arr_init_nd":(1, False),
    "08_global_arr_init":(1, False),
    "09_BFS":(1, True),
    "10_DFS":(1, True),
    "11_BST":(1, True),
    "12_DSU":(1, True),
    "13_LCA":(1, True),
    "14_dp":(1, True),
    "15_graph_coloring":(1, False),
    "16_k_smallest":(1, True),
    "17_maximal_clique":(1, True),
    "18_prim":(1, True),
    "19_search":(1, True),
    "20_sort":(1, True),
}

#19
lv1 = {
    "21_union_find":(1, True),
    "22_matrix_multiply":(1, True),
    "23_json":(1, True),
    "24_array_only":(1, True),
    "25_scope3":(1, False),
    "26_scope4":(1, False),
    "27_scope5":(1, False),
    "28_side_effect2":(1, False),
    "29_long_line":(1, False),
    "30_many_dimensions":(1, False),
    "31_many_indirections":(1, False),
    "32_many_params3":(1, False),
    "33_multi_branch":(1, True),
    "34_multi_loop":(1, False),
    "35_math":(1, True),
    "36_rotate":(1, True),
    "37_dct":(1, True),
    "38_light2d":(1, False),
    "39_fp_params":(1, True),
}



suite = [
    ("lv0", lv0, 0),
    ("lv1", lv1, 0),
]

def eval():
    f = open("eval_result2", 'w')
    EXE_PATH = "../../build/cminusfc"
    TEST_BASE_PATH = "./input2"
    ANSWER_BASE_PATH = "./input2"
    total_points = 0
    for level in suite:
        lv_points = 0
        has_bonus = True
        level_name = level[0]
        bonus = level[2]
        cases = level[1]
        f.write('==========%s START========\n' % level_name)
        for case in cases:
            f.write('%s:' % case)
            TEST_PATH =TEST_BASE_PATH + "/" + case
            ANSWER_PATH = ANSWER_BASE_PATH + "/" + case
            score = cases[case][0]
            need_input = cases[case][1]

            COMMAND = [TEST_PATH]

            try:
                result = subprocess.run([EXE_PATH, "-o", TEST_PATH + ".ll", "-emit-llvm", "-mem2reg", "-const-prop", "-loop-inv-hoist", TEST_PATH + ".sy"], stderr=subprocess.PIPE, timeout=45)
            except Exception as _:
                f.write('\tFail\n')
                continue
            
            if result.returncode == 0:
                subprocess.run(["clang", "-O0", "-w", "-no-pie", TEST_PATH + ".ll", "-o", TEST_PATH, "-L", "../../../build", "-lcminus_io"])
                input_option = None
                if need_input:
                    with open(ANSWER_PATH + ".in", "rb") as fin:
                        input_option = fin.read()
                
                try:
                    result = subprocess.run(COMMAND, input=input_option, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=45)
                    with open(ANSWER_PATH + ".out", "rb") as fout:
                        expected_output_lines = fout.readlines()
                    expected_returncode = int(expected_output_lines[-1])
                    expected_output = b"".join(expected_output_lines[:-1])

                    if result.stdout == expected_output and result.returncode == expected_returncode:
                        f.write('\tSuccess\n')
                        lv_points += score
                    else:
                        f.write('\tFail\n')
                        f.write('\tWrong output :\n')
                        if(result.stdout):
                            f.write(result.stdout.decode())
                        f.write('\n\tReturn Code:\t')
                        f.write(str(result.returncode))
                        f.write('\n')
                        has_bonus = False
                except Exception as _:
                    f.write('\tFail\n')
                    has_bonus = False
                finally:
                    subprocess.call(["rm", "-rf", TEST_PATH, TEST_PATH + ".o", TEST_PATH + ".ll"])

            else:
                f.write('\tFail\n')
                has_bonus = False
        
        if has_bonus:
            lv_points += bonus
        
        total_points += lv_points
        f.write('points of %s is: %d\n' % (level_name, lv_points))
        f.write('=============%s END=========\n\n' % level_name)
    f.write('total points: %d\n' % total_points)

if __name__ == "__main__":
    eval()

            