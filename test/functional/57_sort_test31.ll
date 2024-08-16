; ModuleID = 'sysy'
source_filename = "/home/innerpeace/Compiler_2024_USTC/test/functional/57_sort_test3.sy"

@n = global i32 0
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

define i32 @QuickSort(i32* %arg0, i32 %arg1, i32 %arg2) {
label_entry:
  %op8 = icmp slt i32 %arg1, %arg2
  br i1 %op8, label %label9, label %label19
label9:                                                ; preds = %label_entry
  %op17 = getelementptr i32, i32* %arg0, i32 %arg1
  %op18 = load i32, i32* %op17
  %op60 = sub i32 %op18, 1
  br label %label20
label19:                                                ; preds = %label_entry, %label25
  ret i32 0
label20:                                                ; preds = %label9, %label101
  %op106 = phi i32 [ %arg2, %label9 ], [ %op111, %label101 ]
  %op107 = phi i32 [ %arg1, %label9 ], [ %op110, %label101 ]
  %op23 = icmp slt i32 %op107, %op106
  br i1 %op23, label %label24, label %label25
label24:                                                ; preds = %label20
  br label %label43
label25:                                                ; preds = %label20
  %op29 = getelementptr i32, i32* %arg0, i32 %op107
  store i32 %op18, i32* %op29
  %op32 = sub i32 %op107, 1
  %op36 = call i32 @QuickSort(i32* %arg0, i32 %arg1, i32 %op32)
  %op38 = add i32 %op107, 1
  %op42 = call i32 @QuickSort(i32* %arg0, i32 %op38, i32 %arg2)
  br label %label19
label43:                                                ; preds = %label24, %label47
  %op108 = phi i32 [ %op106, %label24 ], [ %op49, %label47 ]
  %op46 = icmp slt i32 %op107, %op108
  br i1 %op46, label %label54, label %label50
label47:                                                ; preds = %label54
  %op49 = sub i32 %op108, 1
  br label %label43
label50:                                                ; preds = %label43, %label54
  %op53 = icmp slt i32 %op107, %op108
  br i1 %op53, label %label62, label %label72
label54:                                                ; preds = %label43
  %op57 = getelementptr i32, i32* %arg0, i32 %op108
  %op58 = load i32, i32* %op57
  %op61 = icmp sgt i32 %op58, %op60
  br i1 %op61, label %label47, label %label50
label62:                                                ; preds = %label50
  %op65 = getelementptr i32, i32* %arg0, i32 %op108
  %op66 = load i32, i32* %op65
  %op69 = getelementptr i32, i32* %arg0, i32 %op107
  store i32 %op66, i32* %op69
  %op71 = add i32 %op107, 1
  br label %label72
label72:                                                ; preds = %label50, %label62
  %op109 = phi i32 [ %op107, %label50 ], [ %op71, %label62 ]
  br label %label73
label73:                                                ; preds = %label72, %label77
  %op110 = phi i32 [ %op109, %label72 ], [ %op79, %label77 ]
  %op76 = icmp slt i32 %op110, %op108
  br i1 %op76, label %label84, label %label80
label77:                                                ; preds = %label84
  %op79 = add i32 %op110, 1
  br label %label73
label80:                                                ; preds = %label73, %label84
  %op83 = icmp slt i32 %op110, %op108
  br i1 %op83, label %label91, label %label101
label84:                                                ; preds = %label73
  %op87 = getelementptr i32, i32* %arg0, i32 %op110
  %op88 = load i32, i32* %op87
  %op90 = icmp slt i32 %op88, %op18
  br i1 %op90, label %label77, label %label80
label91:                                                ; preds = %label80
  %op94 = getelementptr i32, i32* %arg0, i32 %op110
  %op95 = load i32, i32* %op94
  %op98 = getelementptr i32, i32* %arg0, i32 %op108
  store i32 %op95, i32* %op98
  %op100 = sub i32 %op108, 1
  br label %label101
label101:                                                ; preds = %label80, %label91
  %op111 = phi i32 [ %op108, %label80 ], [ %op100, %label91 ]
  br label %label20
}
define i32 @main() {
label_entry:
  %op0 = alloca [10 x i32]
  store i32 10, i32* @n
  %op1 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 0
  store i32 4, i32* %op1
  %op2 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 1
  store i32 3, i32* %op2
  %op3 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 2
  store i32 9, i32* %op3
  %op4 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 3
  store i32 2, i32* %op4
  %op5 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 4
  store i32 0, i32* %op5
  %op6 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 5
  store i32 1, i32* %op6
  %op7 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 6
  store i32 6, i32* %op7
  %op8 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 7
  store i32 5, i32* %op8
  %op9 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 8
  store i32 7, i32* %op9
  %op10 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 9
  store i32 8, i32* %op10
  %op13 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 0
  %op16 = call i32 @QuickSort(i32* %op13, i32 0, i32 9)
  br label %label17
label17:                                                ; preds = %label_entry, %label21
  %op32 = phi i32 [ %op16, %label_entry ], [ %op29, %label21 ]
  %op19 = load i32, i32* @n
  %op20 = icmp slt i32 %op32, %op19
  br i1 %op20, label %label21, label %label30
label21:                                                ; preds = %label17
  %op24 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 %op32
  %op25 = load i32, i32* %op24
  call void @putint(i32 %op25)
  call void @putch(i32 10)
  %op29 = add i32 %op32, 1
  br label %label17
label30:                                                ; preds = %label17
  ret i32 0
}
