; ModuleID = 'sysy'
source_filename = "/home/innerpeace/Compiler_2024_USTC/test/error_case/79_var_name.sy"

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
  %op2 = alloca [20 x i32]
  %op3 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 0
  call void @memset_int(i32* %op3, i32 20)
  %op4 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 0
  store i32 1, i32* %op4
  %op5 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 1
  store i32 2, i32* %op5
  br label %label7
label7:                                                ; preds = %label_entry, %label11
  %op39 = phi i32 [ 0, %label_entry ], [ %op31, %label11 ]
  %op40 = phi i32 [ 2, %label_entry ], [ %op36, %label11 ]
  %op10 = icmp slt i32 %op40, 20
  br i1 %op10, label %label11, label %label37
label11:                                                ; preds = %label7
  %op13 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 %op40
  %op14 = load i32, i32* %op13
  %op16 = sub i32 %op40, 1
  %op17 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 %op16
  %op18 = load i32, i32* %op17
  %op19 = add i32 %op14, %op18
  %op21 = sub i32 %op40, 2
  %op22 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 %op21
  %op23 = load i32, i32* %op22
  %op24 = add i32 %op19, %op23
  %op26 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 %op40
  store i32 %op24, i32* %op26
  %op29 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 %op40
  %op30 = load i32, i32* %op29
  %op31 = add i32 %op39, %op30
  %op33 = getelementptr [20 x i32], [20 x i32]* %op2, i32 0, i32 %op40
  %op34 = load i32, i32* %op33
  call void @putint(i32 %op34)
  call void @putch(i32 10)
  %op36 = add i32 %op40, 1
  br label %label7
label37:                                                ; preds = %label7
  ret i32 %op39
}
