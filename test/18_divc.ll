; ModuleID = 'sysy'
source_filename = "/home/llh/bianyi/Compiler_2024_USTC/test/functional/18_divc.sy"

@a = constant i32 10
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
  %op0 = load i32, i32* @a
  %op2 = mul i32 %op0, -858993459
  %op3 = ashr i32 %op2, 32
  %op4 = add i32 %op0, %op3
  %op5 = ashr i32 %op4, 2
  %op6 = ashr i32 %op0, 31
  %op7 = add i32 %op5, %op6
  ret i32 %op1
}
