; ModuleID = 'sysy'
source_filename = "/home/llh/bianyi/Compiler_2024_USTC/test/functional/48_assign_complex_expr.sy"

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

declare void @memset_int(i32*, i32)

declare void @memset_float(float*, i32)

define i32 @main() {
label_entry:
  %op0 = alloca i32
  %op1 = alloca i32
  %op2 = alloca i32
  %op3 = alloca i32
  %op4 = alloca i32
  store i32 5, i32* %op0
  store i32 5, i32* %op1
  store i32 1, i32* %op2
  %op5 = sub i32 0, 2
  store i32 %op5, i32* %op3
  %op6 = load i32, i32* %op3
  %op7 = add i32 %op6, 0
  %op8 = ashr i32 %op7, 31
  %op9 = add i32 %op7, %op8
  %op10 = ashr i32 %op9, 1
  %op11 = load i32, i32* %op0
  %op12 = load i32, i32* %op1
  %op13 = sub i32 %op11, %op12
  %op14 = add i32 %op10, %op13
  %op15 = load i32, i32* %op2
  %op16 = add i32 %op15, 3
  %op17 = sub i32 0, %op16
  %op18 = shl i32 %op17, 31
  %op19 = lshr i32 %op18, 31
  %op20 = sub i32 %op14, %op19
  store i32 %op20, i32* %op4
  %op21 = load i32, i32* %op4
  call void @putint(i32 %op21)
  %op22 = load i32, i32* %op3
  %op23 = shl i32 %op22, 31
  %op24 = lshr i32 %op23, 31
  %op25 = add i32 %op24, 67
  %op26 = load i32, i32* %op0
  %op27 = load i32, i32* %op1
  %op28 = sub i32 %op26, %op27
  %op29 = sub i32 0, %op28
  %op30 = add i32 %op25, %op29
  %op31 = load i32, i32* %op2
  %op32 = add i32 %op31, 2
  %op33 = shl i32 %op32, 31
  %op34 = lshr i32 %op33, 31
  %op35 = sub i32 0, %op34
  %op36 = sub i32 %op30, %op35
  store i32 %op36, i32* %op4
  %op37 = load i32, i32* %op4
  %op38 = add i32 %op37, 3
  store i32 %op38, i32* %op4
  %op39 = load i32, i32* %op4
  call void @putint(i32 %op39)
  ret i32 0
}
