; ModuleID = 'cminus'
source_filename = "/Users/jyjs/Documents/USTC/Compiler_2024_USTC/test/functional/09_func_defn.sy"

@a = global i32 0
declare i32 @getint()

declare i32 @getch()

declare float @getfloat()

declare i32 @getarray(i32*)

declare i32 @getfarray(float*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

declare void @putfloat(float)

declare void @putfarray(i32, float*)

declare void @before_main()

declare void @after_main()

declare void @_sysy_starttime(i32)

declare void @_sysy_stoptime(i32)

declare void @memset_int(i32*, i32, i32)

declare void @memset_float(float*, i32, i32)

define i32 @func(i32 %arg0) {
label_entry:
  %op1 = alloca i32
  store i32 %arg0, i32* %op1
  %op2 = load i32, i32* %op1
  %op3 = sub i32 %op2, 1
  store i32 %op3, i32* %op1
  %op4 = load i32, i32* %op1
  ret i32 %op4
}
define i32 @main() {
label_entry:
  %op0 = alloca i32
  store i32 10, i32* @a
  %op1 = load i32, i32* @a
  br label %label4
label4:                                                ; preds = %label_entry
  %op5 = alloca i32
  store i32 %op1, i32* %op5
  %op6 = load i32, i32* %op5
  %op7 = sub i32 %op6, 1
  store i32 %op7, i32* %op5
  %op8 = load i32, i32* %op5
  br label %label9
label9:                                                ; preds = %label4
  store i32 %op8, i32* %op0
  %op3 = load i32, i32* %op0
  ret i32 %op3
}
