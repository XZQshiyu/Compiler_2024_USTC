#!/bin/bash

# 检查工具链是否安装
if ! command -v riscv64-unknown-elf-gcc &> /dev/null; then
    echo "riscv64-unknown-elf-gcc could not be found, please install the RISC-V toolchain."
    exit 1
fi

project_dir=$(realpath ../)
io_dir=$(realpath "$project_dir"/src/io)
output_dir=code_stu
suffix=sy
count=0

LOG=log.txt

usage() {
	cat <<JIANMU
Usage: $0 [path-to-testcases] [type]
path-to-testcases: './final_performance' or '../func' or 'functional' or 'hidden_functional' or 'perf' or 'performance' or 'self made cases'
type: 'debug' or 'test', debug will output .ll file
JIANMU
	exit 0
}

check_return_value() {
	rv=$1
	expected_rv=$2
	fail_msg=$3
	detail=$4
	if [ "$rv" -eq "$expected_rv" ]; then
		return 0
	else
		printf "\033[1;31m%s: \033[0m%s\n" "$fail_msg" "$detail"
		return 1
	fi
}

# check arguments
[ $# -lt 2 ] && usage
if [ "$2" == "debug" ]; then
	debug_mode=true
elif [ "$2" == "test" ]; then
	debug_mode=false
else
	usage
fi

test_dir=$1
testcases=$(ls "$test_dir"/*."$suffix" | sort -V)
check_return_value $? 0 "PATH" "unable to access to '$test_dir'" || exit 1

# hide stderr in the script
# exec 2>/dev/null

mkdir -p $output_dir

truncate -s 0 $LOG

if [ $debug_mode = false ]; then
	exec 3>/dev/null 4>&1 5>&2 1>&3 2>&3
else
	exec 3>&1
fi

if [ $debug_mode = false ]; then
	exec 1>&4 2>&5
fi

echo "[info] Start testing, using testcase dir: $test_dir"

total_time=0
# asm
for case in $testcases; do
	echo "==========$case==========" >>$LOG
	case_base_name=$(basename -s .$suffix "$case")
	if [ "$case_base_name" = "define_temp" ]; then
        continue
    fi

	std_out_file=$test_dir/$case_base_name.out
	in_file=$test_dir/$case_base_name.in
	asm_file=$output_dir/$case_base_name.s
	exe_file=$output_dir/$case_base_name
	out_file=$output_dir/$case_base_name.out
	ll_file=$output_dir/$case_base_name.ll

	echo -n "$case_base_name..."
	# if debug mode on, generate .ll also
	if [ $debug_mode = true ]; then
		bash -c "sysy -mem2reg -const-prop -loop-inv-hoist -emit-llvm $case -o $ll_file" >>$LOG 2>&1
	fi
	# sysy compile to .s
	bash -c "sysy -S -mem2reg -const-prop -loop-inv-hoist $case -o $asm_file" >>$LOG 2>&1
	check_return_value $? 0 "CE" "sysy compiler error" || continue

	# gcc compile asm to executable
	riscv64-unknown-elf-gcc -static \
		"$asm_file" "$io_dir"/io.c -o "$exe_file" \
		>>$LOG
	check_return_value $? 0 "CE" "riscv gcc compiler error" || continue

	# qemu run
	if [ -e "$in_file" ]; then
        exec_cmd="qemu-riscv64 $exe_file >$out_file <$in_file"
    else
        exec_cmd="qemu-riscv64 $exe_file >$out_file"
    fi

	start=$(date +%s%N)  # 获取当前时间的纳秒时间戳

	bash -c "$exec_cmd"
	ret=$?
	# remove trailing null byte in the end line
	sed -i "\$s/\x00*$//" "$out_file"

	end=$(date +%s%N)
	duration=$((end - start))
	duration_sec=$(echo "scale=3; $duration / 1000000000" | bc)
	echo "Execution time: $duration_sec seconds"
	total_time=$(echo "$total_time + $duration_sec" | bc)
	if [ -s "$out_file" ]; then
    	# 读取文件最后一个字符
    	last_char=$(tail -c 1 "$out_file")

    	# 检查最后一个字符是否是换行符
    	if [[ "$last_char" != $'\n' ]]; then
        	# 如果不是换行符，则添加一个换行符
        	echo >> "$out_file"
    	fi
	fi
	echo $ret >>"$out_file"

	# compare output
	diff --strip-trailing-cr -wB "$std_out_file" "$out_file" -y >>$LOG
	check_return_value $? 0 "WA" "output differ, check $std_out_file and $out_file" || continue

	# ok
	printf "\033[1;32mOK\033[0m\n"
	let "count=count+1"
	echo "$count"
done
echo "正确率为:$count/100"
echo "总的执行时间为:$total_time seconds"