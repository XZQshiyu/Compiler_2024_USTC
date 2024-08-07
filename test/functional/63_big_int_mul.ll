; ModuleID = 'sysy'
source_filename = "/home/innerpeace/Compiler_2024_USTC/test/functional/63_big_int_mul.sy"

@len = constant i32 20
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
  %op55 = alloca [40 x i32]
  %op54 = alloca [25 x i32]
  %op53 = alloca [25 x i32]
  %op27 = alloca [20 x i32]
  %op5 = alloca [20 x i32]
  %op6 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 0
  call void @memset_int(i32* %op6, i32 20)
  %op7 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 0
  store i32 1, i32* %op7
  %op8 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 1
  store i32 2, i32* %op8
  %op9 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 2
  store i32 3, i32* %op9
  %op10 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 3
  store i32 4, i32* %op10
  %op11 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 4
  store i32 5, i32* %op11
  %op12 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 5
  store i32 6, i32* %op12
  %op13 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 6
  store i32 7, i32* %op13
  %op14 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 7
  store i32 8, i32* %op14
  %op15 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 8
  store i32 9, i32* %op15
  %op16 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 9
  store i32 0, i32* %op16
  %op17 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 10
  store i32 1, i32* %op17
  %op18 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 11
  store i32 2, i32* %op18
  %op19 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 12
  store i32 3, i32* %op19
  %op20 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 13
  store i32 4, i32* %op20
  %op21 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 14
  store i32 5, i32* %op21
  %op22 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 15
  store i32 6, i32* %op22
  %op23 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 16
  store i32 7, i32* %op23
  %op24 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 17
  store i32 8, i32* %op24
  %op25 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 18
  store i32 9, i32* %op25
  %op26 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 19
  store i32 0, i32* %op26
  %op28 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 0
  call void @memset_int(i32* %op28, i32 20)
  %op29 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 0
  store i32 2, i32* %op29
  %op30 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 1
  store i32 3, i32* %op30
  %op31 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 2
  store i32 4, i32* %op31
  %op32 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 3
  store i32 2, i32* %op32
  %op33 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 4
  store i32 5, i32* %op33
  %op34 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 5
  store i32 7, i32* %op34
  %op35 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 6
  store i32 9, i32* %op35
  %op36 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 7
  store i32 9, i32* %op36
  %op37 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 8
  store i32 0, i32* %op37
  %op38 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 9
  store i32 1, i32* %op38
  %op39 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 10
  store i32 9, i32* %op39
  %op40 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 11
  store i32 8, i32* %op40
  %op41 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 12
  store i32 7, i32* %op41
  %op42 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 13
  store i32 6, i32* %op42
  %op43 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 14
  store i32 4, i32* %op43
  %op44 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 15
  store i32 3, i32* %op44
  %op45 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 16
  store i32 2, i32* %op45
  %op46 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 17
  store i32 1, i32* %op46
  %op47 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 18
  store i32 2, i32* %op47
  %op48 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 19
  store i32 2, i32* %op48
  %op50 = load i32, i32* @len
  %op52 = load i32, i32* @len
  %op56 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
  call void @memset_int(i32* %op56, i32 40)
  br label %label57
label57:                                                ; preds = %label_entry, %label61
  %op177 = phi i32 [ 0, %label_entry ], [ %op68, %label61 ]
  %op60 = icmp slt i32 %op177, %op50
  br i1 %op60, label %label61, label %label69
label61:                                                ; preds = %label57
  %op63 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 %op177
  %op64 = load i32, i32* %op63
  %op66 = getelementptr [25 x i32], [25 x i32]* %op53, i32 0, i32 %op177
  store i32 %op64, i32* %op66
  %op68 = add i32 %op177, 1
  br label %label57
label69:                                                ; preds = %label57
  br label %label70
label70:                                                ; preds = %label69, %label74
  %op178 = phi i32 [ 0, %label69 ], [ %op81, %label74 ]
  %op73 = icmp slt i32 %op178, %op52
  br i1 %op73, label %label74, label %label82
label74:                                                ; preds = %label70
  %op76 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 %op178
  %op77 = load i32, i32* %op76
  %op79 = getelementptr [25 x i32], [25 x i32]* %op54, i32 0, i32 %op178
  store i32 %op77, i32* %op79
  %op81 = add i32 %op178, 1
  br label %label70
label82:                                                ; preds = %label70
  %op85 = add i32 %op50, %op52
  %op86 = sub i32 %op85, 1
  br label %label87
label87:                                                ; preds = %label82, %label91
  %op179 = phi i32 [ 0, %label82 ], [ %op95, %label91 ]
  %op90 = icmp sle i32 %op179, %op86
  br i1 %op90, label %label91, label %label96
label91:                                                ; preds = %label87
  %op93 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op179
  store i32 0, i32* %op93
  %op95 = add i32 %op179, 1
  br label %label87
label96:                                                ; preds = %label87
  %op98 = sub i32 %op52, 1
  br label %label99
label99:                                                ; preds = %label96, %label129
  %op181 = phi i32 [ %op86, %label96 ], [ %op133, %label129 ]
  %op184 = phi i32 [ %op98, %label96 ], [ %op135, %label129 ]
  %op101 = sub i32 0, 1
  %op102 = icmp sgt i32 %op184, %op101
  br i1 %op102, label %label103, label %label109
label103:                                                ; preds = %label99
  %op105 = getelementptr [25 x i32], [25 x i32]* %op54, i32 0, i32 %op184
  %op106 = load i32, i32* %op105
  %op108 = sub i32 %op50, 1
  br label %label113
label109:                                                ; preds = %label99
  %op110 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
  %op111 = load i32, i32* %op110
  %op112 = icmp ne i32 %op111, 0
  br i1 %op112, label %label159, label %label162
label113:                                                ; preds = %label103, %label154
  %op186 = phi i32 [ %op181, %label103 ], [ %op158, %label154 ]
  %op187 = phi i32 [ %op108, %label103 ], [ %op156, %label154 ]
  %op115 = sub i32 0, 1
  %op116 = icmp sgt i32 %op187, %op115
  br i1 %op116, label %label117, label %label129
label117:                                                ; preds = %label113
  %op119 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op186
  %op120 = load i32, i32* %op119
  %op123 = getelementptr [25 x i32], [25 x i32]* %op53, i32 0, i32 %op187
  %op124 = load i32, i32* %op123
  %op125 = mul i32 %op106, %op124
  %op126 = add i32 %op120, %op125
  %op128 = icmp sge i32 %op126, 10
  br i1 %op128, label %label136, label %label150
label129:                                                ; preds = %label113
  %op132 = add i32 %op186, %op50
  %op133 = sub i32 %op132, 1
  %op135 = sub i32 %op184, 1
  br label %label99
label136:                                                ; preds = %label117
  %op139 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op186
  store i32 %op126, i32* %op139
  %op141 = sub i32 %op186, 1
  %op142 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op141
  %op143 = load i32, i32* %op142
  %op145 = sdiv i32 %op126, 10
  %op146 = add i32 %op143, %op145
  %op148 = sub i32 %op186, 1
  %op149 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op148
  store i32 %op146, i32* %op149
  br label %label154
label150:                                                ; preds = %label117
  %op153 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op186
  store i32 %op126, i32* %op153
  br label %label154
label154:                                                ; preds = %label136, %label150
  %op156 = sub i32 %op187, 1
  %op158 = sub i32 %op186, 1
  br label %label113
label159:                                                ; preds = %label109
  %op160 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
  %op161 = load i32, i32* %op160
  call void @putint(i32 %op161)
  br label %label162
label162:                                                ; preds = %label109, %label159
  br label %label163
label163:                                                ; preds = %label162, %label170
  %op188 = phi i32 [ 1, %label162 ], [ %op175, %label170 ]
  %op167 = add i32 %op50, %op52
  %op168 = sub i32 %op167, 1
  %op169 = icmp sle i32 %op188, %op168
  br i1 %op169, label %label170, label %label176
label170:                                                ; preds = %label163
  %op172 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op188
  %op173 = load i32, i32* %op172
  call void @putint(i32 %op173)
  %op175 = add i32 %op188, 1
  br label %label163
label176:                                                ; preds = %label163
  ret i32 0
}
