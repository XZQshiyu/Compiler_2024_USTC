; ModuleID = 'cminus'
source_filename = "/Users/jyjs/Documents/USTC/Compiler_2024_USTC/test/functional/21_if_test2.sy"

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

define i32 @ifElseIf() {
label_entry:
  %op0 = alloca i32
  store i32 5, i32* %op0
  %op1 = alloca i32
  store i32 10, i32* %op1
  %op2 = load i32, i32* %op0
  %op3 = icmp eq i32 %op2, 6
  br i1 %op3, label %label4, label %label11
label4:                                                ; preds = %label_entry, %label11, %label1, %label13
  %op5 = load i32, i32* %op0
  ret i32 %op5
label6:                                                ; preds = %label11, %label13
  %op7 = load i32, i32* %op1
  %op8 = icmp eq i32 %op7, 10
  br i1 %op8, label %label19, label %label15
label9:                                                ; preds = %label18, %label20
  %op10 = load i32, i32* %op0
  ret i32 %op10
label11:                                                ; preds = %label_entry, %label1
  %op12 = load i32, i32* %op1
  %op13 = icmp eq i32 %op12, 11
  br i1 %op13, label %label4, label %label6
label14:                                                ; preds = %label19, %label21
  store i32 25, i32* %op0
  br label %label18
label15:                                                ; preds = %label6, %label19, %label8, %label21
  %op16 = load i32, i32* %op1
  %op17 = icmp eq i32 %op16, 10
  br i1 %op17, label %label29, label %label25
label18:                                                ; preds = %label14, %label28, %label16, %label30
  br label %label9
label19:                                                ; preds = %label6, %label8
  %op20 = load i32, i32* %op0
  %op21 = icmp eq i32 %op20, 1
  br i1 %op21, label %label14, label %label15
label22:                                                ; preds = %label29, %label31
  %op23 = load i32, i32* %op0
  %op24 = add i32 %op23, 15
  store i32 %op24, i32* %op0
  br label %label28
label25:                                                ; preds = %label15, %label29, %label17, %label31
  %op26 = load i32, i32* %op0
  %op27 = sub i32 0, %op26
  store i32 %op27, i32* %op0
  br label %label28
label28:                                                ; preds = %label22, %label25, %label24, %label27
  br label %label18
label29:                                                ; preds = %label15, %label17
  %op30 = load i32, i32* %op0
  %op31 = sub i32 0, 5
  %op32 = icmp eq i32 %op30, %op31
  br i1 %op32, label %label22, label %label25
}
define i32 @main() {
label_entry:
  br label %label1
label1:                                                ; preds = %label_entry
  %op2 = alloca i32
  store i32 5, i32* %op2
  %op3 = alloca i32
  store i32 10, i32* %op3
  %op4 = load i32, i32* %op2
  %op5 = icmp eq i32 %op4, 6
  br i1 %op5, label %label6, label %label13
label6:
  %op7 = load i32, i32* %op2
  br label %label36
label8:
  %op9 = load i32, i32* %op3
  %op10 = icmp eq i32 %op9, 10
  br i1 %op10, label %label21, label %label17
label11:
  %op12 = load i32, i32* %op2
  br label %label36
label13:
  %op14 = load i32, i32* %op3
  %op15 = icmp eq i32 %op14, 11
  br i1 %op15, label %label6, label %label8
label16:
  store i32 25, i32* %op2
  br label %label20
label17:
  %op18 = load i32, i32* %op3
  %op19 = icmp eq i32 %op18, 10
  br i1 %op19, label %label31, label %label27
label20:
  br label %label11
label21:
  %op22 = load i32, i32* %op2
  %op23 = icmp eq i32 %op22, 1
  br i1 %op23, label %label16, label %label17
label24:
  %op25 = load i32, i32* %op2
  %op26 = add i32 %op25, 15
  store i32 %op26, i32* %op2
  br label %label30
label27:
  %op28 = load i32, i32* %op2
  %op29 = sub i32 0, %op28
  store i32 %op29, i32* %op2
  br label %label30
label30:
  br label %label20
label31:
  %op32 = load i32, i32* %op2
  %op33 = sub i32 0, 5
  %op34 = icmp eq i32 %op32, %op33
  br i1 %op34, label %label24, label %label27
label35:                                                ; preds = %label36
  call void @putint(i32 %)
  ret i32 0
label36:                                                ; preds = %label6, %label11
  br label %label35
}
