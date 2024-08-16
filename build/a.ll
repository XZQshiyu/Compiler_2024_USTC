; ModuleID = 'sysy'
source_filename = "/home/llh/bianyi/Compiler_2024_USTC/test/functional/63_big_int_mul.sy"

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
  %op0 = alloca i32
  %op1 = alloca i32
  %op2 = alloca i32
  %op3 = alloca i32
  %op4 = alloca i32
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
  %op27 = alloca [20 x i32]
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
  %op49 = alloca i32
  %op50 = load i32, i32* @len
  store i32 %op50, i32* %op49
  %op51 = alloca i32
  %op52 = load i32, i32* @len
  store i32 %op52, i32* %op51
  %op53 = alloca [25 x i32]
  %op54 = alloca [25 x i32]
  %op55 = alloca [40 x i32]
  %op56 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
  call void @memset_int(i32* %op56, i32 40)
  store i32 0, i32* %op0
  br label %label57
label57:                                                ; preds = %label_entry, %label61
  %op58 = load i32, i32* %op0
  %op59 = load i32, i32* %op49
  %op60 = icmp slt i32 %op58, %op59
  br i1 %op60, label %label61, label %label69
label61:                                                ; preds = %label57
  %op62 = load i32, i32* %op0
  %op63 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 %op62
  %op64 = load i32, i32* %op63
  %op65 = load i32, i32* %op0
  %op66 = getelementptr [25 x i32], [25 x i32]* %op53, i32 0, i32 %op65
  store i32 %op64, i32* %op66
  %op67 = load i32, i32* %op0
  %op68 = add i32 %op67, 1
  store i32 %op68, i32* %op0
  br label %label57
label69:                                                ; preds = %label57
  store i32 0, i32* %op0
  br label %label70
label70:                                                ; preds = %label69, %label74
  %op71 = load i32, i32* %op0
  %op72 = load i32, i32* %op51
  %op73 = icmp slt i32 %op71, %op72
  br i1 %op73, label %label74, label %label82
label74:                                                ; preds = %label70
  %op75 = load i32, i32* %op0
  %op76 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 %op75
  %op77 = load i32, i32* %op76
  %op78 = load i32, i32* %op0
  %op79 = getelementptr [25 x i32], [25 x i32]* %op54, i32 0, i32 %op78
  store i32 %op77, i32* %op79
  %op80 = load i32, i32* %op0
  %op81 = add i32 %op80, 1
  store i32 %op81, i32* %op0
  br label %label70
label82:                                                ; preds = %label70
  %op83 = load i32, i32* %op49
  %op84 = load i32, i32* %op51
  %op85 = add i32 %op83, %op84
  %op86 = sub i32 %op85, 1
  store i32 %op86, i32* %op3
  store i32 0, i32* %op0
  br label %label87
label87:                                                ; preds = %label82, %label91
  %op88 = load i32, i32* %op0
  %op89 = load i32, i32* %op3
  %op90 = icmp sle i32 %op88, %op89
  br i1 %op90, label %label91, label %label96
label91:                                                ; preds = %label87
  %op92 = load i32, i32* %op0
  %op93 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op92
  store i32 0, i32* %op93
  %op94 = load i32, i32* %op0
  %op95 = add i32 %op94, 1
  store i32 %op95, i32* %op0
  br label %label87
label96:                                                ; preds = %label87
  store i32 0, i32* %op4
  %op97 = load i32, i32* %op51
  %op98 = sub i32 %op97, 1
  store i32 %op98, i32* %op0
  br label %label99
label99:                                                ; preds = %label96, %label129
  %op100 = load i32, i32* %op0
  %op101 = sub i32 0, 1
  %op102 = icmp sgt i32 %op100, %op101
  br i1 %op102, label %label103, label %label109
label103:                                                ; preds = %label99
  %op104 = load i32, i32* %op0
  %op105 = getelementptr [25 x i32], [25 x i32]* %op54, i32 0, i32 %op104
  %op106 = load i32, i32* %op105
  store i32 %op106, i32* %op2
  %op107 = load i32, i32* %op49
  %op108 = sub i32 %op107, 1
  store i32 %op108, i32* %op1
  br label %label113
label109:                                                ; preds = %label99
  %op110 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
  %op111 = load i32, i32* %op110
  %op112 = icmp ne i32 %op111, 0
  br i1 %op112, label %label162, label %label165
label113:                                                ; preds = %label103, %label157
  %op114 = load i32, i32* %op1
  %op115 = sub i32 0, 1
  %op116 = icmp sgt i32 %op114, %op115
  br i1 %op116, label %label117, label %label129
label117:                                                ; preds = %label113
  %op118 = load i32, i32* %op3
  %op119 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op118
  %op120 = load i32, i32* %op119
  %op121 = load i32, i32* %op2
  %op122 = load i32, i32* %op1
  %op123 = getelementptr [25 x i32], [25 x i32]* %op53, i32 0, i32 %op122
  %op124 = load i32, i32* %op123
  %op125 = mul i32 %op121, %op124
  %op126 = add i32 %op120, %op125
  store i32 %op126, i32* %op4
  %op127 = load i32, i32* %op4
  %op128 = icmp sge i32 %op127, 10
  br i1 %op128, label %label136, label %label153
label129:                                                ; preds = %label113
  %op130 = load i32, i32* %op3
  %op131 = load i32, i32* %op49
  %op132 = add i32 %op130, %op131
  %op133 = sub i32 %op132, 1
  store i32 %op133, i32* %op3
  %op134 = load i32, i32* %op0
  %op135 = sub i32 %op134, 1
  store i32 %op135, i32* %op0
  br label %label99
label136:                                                ; preds = %label117
  %op137 = load i32, i32* %op4
  %op138 = load i32, i32* %op3
  %op139 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op138
  store i32 %op137, i32* %op139
  %op140 = load i32, i32* %op3
  %op141 = sub i32 %op140, 1
  %op142 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op141
  %op143 = load i32, i32* %op142
  %op144 = load i32, i32* %op4
  %op145 = ashr i32 %op144, 3
  %op146 = ashr i32 %op145, 31
  %op147 = add i32 %op144, %op146
  %op148 = ashr i32 %op147, 4
  %op149 = add i32 %op143, %op148
  %op150 = load i32, i32* %op3
  %op151 = sub i32 %op150, 1
  %op152 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op151
  store i32 %op149, i32* %op152
  br label %label157
label153:                                                ; preds = %label117
  %op154 = load i32, i32* %op4
  %op155 = load i32, i32* %op3
  %op156 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op155
  store i32 %op154, i32* %op156
  br label %label157
label157:                                                ; preds = %label136, %label153
  %op158 = load i32, i32* %op1
  %op159 = sub i32 %op158, 1
  store i32 %op159, i32* %op1
  %op160 = load i32, i32* %op3
  %op161 = sub i32 %op160, 1
  store i32 %op161, i32* %op3
  br label %label113
label162:                                                ; preds = %label109
  %op163 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
  %op164 = load i32, i32* %op163
  call void @putint(i32 %op164)
  br label %label165
label165:                                                ; preds = %label109, %label162
  store i32 1, i32* %op0
  br label %label166
label166:                                                ; preds = %label165, %label173
  %op167 = load i32, i32* %op0
  %op168 = load i32, i32* %op49
  %op169 = load i32, i32* %op51
  %op170 = add i32 %op168, %op169
  %op171 = sub i32 %op170, 1
  %op172 = icmp sle i32 %op167, %op171
  br i1 %op172, label %label173, label %label179
label173:                                                ; preds = %label166
  %op174 = load i32, i32* %op0
  %op175 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op174
  %op176 = load i32, i32* %op175
  call void @putint(i32 %op176)
  %op177 = load i32, i32* %op0
  %op178 = add i32 %op177, 1
  store i32 %op178, i32* %op0
  br label %label166
label179:                                                ; preds = %label166
  ret i32 0
}
