#!/usr/bin/env python3
import subprocess
from tqdm import tqdm
import time
#21
lv0 = {
    "00_main":(1, False),
    "01_var_defn2":(1, False),
    "02_var_defn3":(1, False),
    "03_arr_defn2":(1, False),
    "04_arr_defn3":(1, False),
    "05_arr_defn4":(1, False),
    "06_const_var_defn2":(1, False),
    "07_const_var_defn3":(1, False),
    "08_const_array_defn":(1, False),
    "09_func_defn":(1, False),
    "10_var_defn_func":(1, False),
    "11_add2":(1, False),
    "12_addc":(1, False),
    "13_sub2":(1, False),
    "14_subc":(1, False),
    "15_mul":(1, False),
    "16_mulc":(1, False),
    "17_div":(1, False),
    "18_divc":(1, False),
    "19_mod":(1, False),
    "20_rem":(1, False),
}

#19
lv1 = {
    "21_if_test2":(1, False),
    "22_if_test3":(1, False),
    "23_if_test4":(1, False),
    "24_if_test5":(1, False),
    "25_while_if":(1, False),
    "26_while_test1":(1, False),
    "27_while_test2":(1, False),
    "28_while_test3":(1, False),
    "29_break":(1, False),
    "30_continue":(1, False),
    "31_while_if_test1":(1, False),
    "32_while_if_test2":(1, False),
    "33_while_if_test3":(1, False),
    "34_arr_expr_len":(1, False),
    "35_op_priority1":(1, False),
    "36_op_priority2":(1, False),
    "37_op_priority3":(1, False),
    "38_op_priority4":(1, True),
    "39_op_priority5":(1, False),
}

#21
lv2 = {
    "40_unary_op":(1, False),
    "41_unary_op2":(1, False),
    "42_empty_stmt":(1, False),
    "43_logi_assign":(1, True),
    "44_stmt_expr":(1, False),
    "45_comment1":(1, False),
    "46_hex_defn":(1, False),
    "47_hex_oct_add":(1, False),
    "48_assign_complex_expr":(1, False),
    "49_if_complex_expr":(1, False),
    "50_short_circuit":(1, True),
    "51_short_circuit3":(1, False),
    "52_scope":(1, False),
    "53_scope2":(1, False),
    "54_hidden_var":(1, False),
    "55_sort_test1":(1, False),
    "56_sort_test2":(1, False),
    "57_sort_test3":(1, False),
    "58_sort_test4":(1, False),
    "59_sort_test5":(1, False),
    "60_sort_test6":(1, False),
    "61_sort_test7":(1, True),
}

#21
lv3 = {
    "62_percolation":(1, True),
    "63_big_int_mul":(1, False),
    "64_calculator":(1, True),
    "65_color":(1, True),
    "66_exgcd":(1, False),
    "67_reverse_output":(1, True),
    "68_brainfk":(1, True),
    "69_expr_eval":(1, True),
    "70_dijkstra":(1, True),
    "71_full_conn":(1, True),
    "72_hanoi":(1, True),
    "73_int_io":(1, True),
    "74_kmp":(1, True),
    "75_max_flow":(1, True),
    "76_n_queens":(1, True),
    "77_substr":(1, False),
    "78_side_effect":(1, False),
    "79_var_name":(1, False),
    "80_chaos_token":(1, False),
    "81_skip_spaces":(1, True),
    "82_long_func":(1, False),
}

#18
lv4 = {
    "83_long_array":(1, False),
    "84_long_array2":(1, False),
    "85_long_code":(1, False),
    "86_long_code2":(1, False),
    "87_many_params":(1, True),
    "88_many_params2":(1, False),
    "89_many_globals":(1, False),
    "90_many_locals":(1, False),
    "91_many_locals2":(1, True),
    "92_register_alloc":(1, True),
    "93_nested_calls":(1, True),
    "94_nested_loops":(1, True),
    "95_float":(1, True),
    "96_matrix_add":(1, False),
    "97_matrix_sub":(1, False),
    "98_matrix_mul":(1, False),
    "99_matrix_tran":(1, False),
}

suite = [
    ("lv0", lv0, 0),
    ("lv1", lv1, 0),
    ("lv2", lv2, 0),
    ("lv3", lv3, 0),
    ("lv4", lv4, 0)
]

def eval():
    f = open("eval_result", 'w')
    EXE_PATH = "../build/sysy"
    TEST_BASE_PATH = "./functional"
    ANSWER_BASE_PATH = "./functional"
    total_points = 0
    for level in suite:
        # print(level[0])
        lv_points = 0
        has_bonus = True
        level_name = level[0]
        bonus = level[2]
        cases = level[1]
        f.write('==========%s START========\n' % level_name)
        for case in tqdm(cases, desc=f"Processing {level_name}"):
            f.write('%s:' % case)
            TEST_PATH =TEST_BASE_PATH + "/" + case
            ANSWER_PATH = ANSWER_BASE_PATH + "/" + case
            score = cases[case][0]
            need_input = cases[case][1]

            COMMAND = [TEST_PATH]
            try:
                result = subprocess.run([EXE_PATH, "-o", TEST_PATH + ".ll", "-emit-llvm", "-mem2reg", "-const-prop", "-loop-inv-hoist", "-loop-analysis", TEST_PATH + ".sy"], stderr=subprocess.PIPE, timeout=8)
            except Exception as _:
                f.write('\tFail\n')
                continue
            if result.returncode == 0:
                subprocess.run(["clang", "-O0", "-w", "-no-pie", TEST_PATH + ".ll", "-o", TEST_PATH, "-L", "../../../build", "-lsysy_io"])
                input_option = None
                if need_input:
                    with open(ANSWER_PATH + ".in", "rb") as fin:
                        input_option = fin.read()
                
                try:
                    result = subprocess.run(COMMAND, input=input_option, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=5)
                    with open(ANSWER_PATH + ".out", "rb") as fout:
                        expected_output_lines = fout.readlines()
                    expected_returncode = int(expected_output_lines[-1])
                    expected_output = b"".join(expected_output_lines[:-1]).strip()
                    if result.stdout.strip() == expected_output and result.returncode == expected_returncode:
                        f.write('\tSuccess\n')
                        lv_points += score
                    else:
                        print(case)
                        if result.stdout: 
                            print(result.stdout)
                        else:
                            print("None")
                        if expected_output:
                            print(expected_output)
                        else:
                            print("None")
                        f.write('\tFail\n')
                        f.write('\tWrong output :\n')
                        if(result.stdout):
                            f.write(result.stdout.decode())
                        f.write('\n\tReturn Code:\t')
                        f.write(str(result.returncode))
                        f.write('\n')
                        has_bonus = False
                except Exception as _:  
                    print(case)
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
    f.close()

if __name__ == "__main__":
    eval()
    print("eval finished, result in eval_result")

            