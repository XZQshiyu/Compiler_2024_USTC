; ModuleID = 'cminus'
source_filename = "/home/innerpeace/Compiler_2024_USTC/test/functional/65_color.sy"

@maxn = constant i32 18
@mod = constant i32 1000000007
@dp = global [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]] zeroinitializer
@list = global [200 x i32] zeroinitializer
@cns = global [20 x i32] zeroinitializer
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

define i32 @equal(i32 %arg0, i32 %arg1) {
label_entry:
  %op2 = alloca i32
  store i32 %arg0, i32* %op2
  %op3 = alloca i32
  store i32 %arg1, i32* %op3
  %op4 = load i32, i32* %op2
  %op5 = load i32, i32* %op3
  %op6 = icmp eq i32 %op4, %op5
  br i1 %op6, label %label7, label %label8
label7:                                                ; preds = %label_entry
  ret i32 1
label8:                                                ; preds = %label_entry
  ret i32 0
}
define i32 @dfs(i32 %arg0, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5) {
label_entry:
  %op6 = alloca i32
  store i32 %arg0, i32* %op6
  %op7 = alloca i32
  store i32 %arg1, i32* %op7
  %op8 = alloca i32
  store i32 %arg2, i32* %op8
  %op9 = alloca i32
  store i32 %arg3, i32* %op9
  %op10 = alloca i32
  store i32 %arg4, i32* %op10
  %op11 = alloca i32
  store i32 %arg5, i32* %op11
  %op12 = load i32, i32* %op6
  %op13 = load i32, i32* %op7
  %op14 = load i32, i32* %op8
  %op15 = load i32, i32* %op9
  %op16 = load i32, i32* %op10
  %op17 = load i32, i32* %op11
  %op18 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %op12, i32 %op13, i32 %op14, i32 %op15, i32 %op16, i32 %op17
  %op19 = load i32, i32* %op18
  %op20 = sub i32 0, 1
  %op21 = icmp ne i32 %op19, %op20
  br i1 %op21, label %label22, label %label31
label22:                                                ; preds = %label_entry
  %op23 = load i32, i32* %op6
  %op24 = load i32, i32* %op7
  %op25 = load i32, i32* %op8
  %op26 = load i32, i32* %op9
  %op27 = load i32, i32* %op10
  %op28 = load i32, i32* %op11
  %op29 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %op23, i32 %op24, i32 %op25, i32 %op26, i32 %op27, i32 %op28
  %op30 = load i32, i32* %op29
  ret i32 %op30
label31:                                                ; preds = %label_entry
  %op32 = load i32, i32* %op6
  %op33 = load i32, i32* %op7
  %op34 = add i32 %op32, %op33
  %op35 = load i32, i32* %op8
  %op36 = add i32 %op34, %op35
  %op37 = load i32, i32* %op9
  %op38 = add i32 %op36, %op37
  %op39 = load i32, i32* %op10
  %op40 = add i32 %op38, %op39
  %op41 = icmp eq i32 %op40, 0
  br i1 %op41, label %label42, label %label43
label42:                                                ; preds = %label31
  ret i32 1
label43:                                                ; preds = %label31
  %op44 = alloca i32
  store i32 0, i32* %op44
  %op45 = load i32, i32* %op6
  %op46 = icmp ne i32 0, %op45
  br i1 %op46, label %label47, label %label64
label47:                                                ; preds = %label43
  %op48 = load i32, i32* %op44
  %op49 = load i32, i32* %op6
  %op50 = load i32, i32* %op11
  %op51 = call i32 @equal(i32 %op50, i32 2)
  %op52 = sub i32 %op49, %op51
  %op53 = load i32, i32* %op6
  %op54 = sub i32 %op53, 1
  %op55 = load i32, i32* %op7
  %op56 = load i32, i32* %op8
  %op57 = load i32, i32* %op9
  %op58 = load i32, i32* %op10
  %op59 = call i32 @dfs(i32 %op54, i32 %op55, i32 %op56, i32 %op57, i32 %op58, i32 1)
  %op60 = mul i32 %op52, %op59
  %op61 = add i32 %op48, %op60
  %op62 = load i32, i32* @mod
  %op63 = srem i32 %op61, %op62
  store i32 %op63, i32* %op44
  br label %label64
label64:                                                ; preds = %label43, %label47
  %op65 = load i32, i32* %op7
  %op66 = icmp ne i32 0, %op65
  br i1 %op66, label %label67, label %label85
label67:                                                ; preds = %label64
  %op68 = load i32, i32* %op44
  %op69 = load i32, i32* %op7
  %op70 = load i32, i32* %op11
  %op71 = call i32 @equal(i32 %op70, i32 3)
  %op72 = sub i32 %op69, %op71
  %op73 = load i32, i32* %op6
  %op74 = add i32 %op73, 1
  %op75 = load i32, i32* %op7
  %op76 = sub i32 %op75, 1
  %op77 = load i32, i32* %op8
  %op78 = load i32, i32* %op9
  %op79 = load i32, i32* %op10
  %op80 = call i32 @dfs(i32 %op74, i32 %op76, i32 %op77, i32 %op78, i32 %op79, i32 2)
  %op81 = mul i32 %op72, %op80
  %op82 = add i32 %op68, %op81
  %op83 = load i32, i32* @mod
  %op84 = srem i32 %op82, %op83
  store i32 %op84, i32* %op44
  br label %label85
label85:                                                ; preds = %label64, %label67
  %op86 = load i32, i32* %op8
  %op87 = icmp ne i32 0, %op86
  br i1 %op87, label %label88, label %label106
label88:                                                ; preds = %label85
  %op89 = load i32, i32* %op44
  %op90 = load i32, i32* %op8
  %op91 = load i32, i32* %op11
  %op92 = call i32 @equal(i32 %op91, i32 4)
  %op93 = sub i32 %op90, %op92
  %op94 = load i32, i32* %op6
  %op95 = load i32, i32* %op7
  %op96 = add i32 %op95, 1
  %op97 = load i32, i32* %op8
  %op98 = sub i32 %op97, 1
  %op99 = load i32, i32* %op9
  %op100 = load i32, i32* %op10
  %op101 = call i32 @dfs(i32 %op94, i32 %op96, i32 %op98, i32 %op99, i32 %op100, i32 3)
  %op102 = mul i32 %op93, %op101
  %op103 = add i32 %op89, %op102
  %op104 = load i32, i32* @mod
  %op105 = srem i32 %op103, %op104
  store i32 %op105, i32* %op44
  br label %label106
label106:                                                ; preds = %label85, %label88
  %op107 = load i32, i32* %op9
  %op108 = icmp ne i32 0, %op107
  br i1 %op108, label %label109, label %label127
label109:                                                ; preds = %label106
  %op110 = load i32, i32* %op44
  %op111 = load i32, i32* %op9
  %op112 = load i32, i32* %op11
  %op113 = call i32 @equal(i32 %op112, i32 5)
  %op114 = sub i32 %op111, %op113
  %op115 = load i32, i32* %op6
  %op116 = load i32, i32* %op7
  %op117 = load i32, i32* %op8
  %op118 = add i32 %op117, 1
  %op119 = load i32, i32* %op9
  %op120 = sub i32 %op119, 1
  %op121 = load i32, i32* %op10
  %op122 = call i32 @dfs(i32 %op115, i32 %op116, i32 %op118, i32 %op120, i32 %op121, i32 4)
  %op123 = mul i32 %op114, %op122
  %op124 = add i32 %op110, %op123
  %op125 = load i32, i32* @mod
  %op126 = srem i32 %op124, %op125
  store i32 %op126, i32* %op44
  br label %label127
label127:                                                ; preds = %label106, %label109
  %op128 = load i32, i32* %op10
  %op129 = icmp ne i32 0, %op128
  br i1 %op129, label %label130, label %label145
label130:                                                ; preds = %label127
  %op131 = load i32, i32* %op44
  %op132 = load i32, i32* %op10
  %op133 = load i32, i32* %op6
  %op134 = load i32, i32* %op7
  %op135 = load i32, i32* %op8
  %op136 = load i32, i32* %op9
  %op137 = add i32 %op136, 1
  %op138 = load i32, i32* %op10
  %op139 = sub i32 %op138, 1
  %op140 = call i32 @dfs(i32 %op133, i32 %op134, i32 %op135, i32 %op137, i32 %op139, i32 5)
  %op141 = mul i32 %op132, %op140
  %op142 = add i32 %op131, %op141
  %op143 = load i32, i32* @mod
  %op144 = srem i32 %op142, %op143
  store i32 %op144, i32* %op44
  br label %label145
label145:                                                ; preds = %label127, %label130
  %op146 = load i32, i32* %op44
  %op147 = load i32, i32* @mod
  %op148 = srem i32 %op146, %op147
  %op149 = load i32, i32* %op6
  %op150 = load i32, i32* %op7
  %op151 = load i32, i32* %op8
  %op152 = load i32, i32* %op9
  %op153 = load i32, i32* %op10
  %op154 = load i32, i32* %op11
  %op155 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %op149, i32 %op150, i32 %op151, i32 %op152, i32 %op153, i32 %op154
  store i32 %op148, i32* %op155
  %op156 = load i32, i32* %op6
  %op157 = load i32, i32* %op7
  %op158 = load i32, i32* %op8
  %op159 = load i32, i32* %op9
  %op160 = load i32, i32* %op10
  %op161 = load i32, i32* %op11
  %op162 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %op156, i32 %op157, i32 %op158, i32 %op159, i32 %op160, i32 %op161
  %op163 = load i32, i32* %op162
  ret i32 %op163
}
define i32 @main() {
label_entry:
  %op0 = alloca i32
  %op1 = call i32 @getint()
  store i32 %op1, i32* %op0
  %op2 = alloca i32
  store i32 0, i32* %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label16
  %op4 = load i32, i32* %op2
  %op5 = load i32, i32* @maxn
  %op6 = icmp slt i32 %op4, %op5
  br i1 %op6, label %label7, label %label9
label7:                                                ; preds = %label3
  %op8 = alloca i32
  store i32 0, i32* %op8
  br label %label10
label9:                                                ; preds = %label3
  store i32 0, i32* %op2
  br label %label63
label10:                                                ; preds = %label7, %label25
  %op11 = load i32, i32* %op8
  %op12 = load i32, i32* @maxn
  %op13 = icmp slt i32 %op11, %op12
  br i1 %op13, label %label14, label %label16
label14:                                                ; preds = %label10
  %op15 = alloca i32
  store i32 0, i32* %op15
  br label %label19
label16:                                                ; preds = %label10
  %op17 = load i32, i32* %op2
  %op18 = add i32 %op17, 1
  store i32 %op18, i32* %op2
  br label %label3
label19:                                                ; preds = %label14, %label34
  %op20 = load i32, i32* %op15
  %op21 = load i32, i32* @maxn
  %op22 = icmp slt i32 %op20, %op21
  br i1 %op22, label %label23, label %label25
label23:                                                ; preds = %label19
  %op24 = alloca i32
  store i32 0, i32* %op24
  br label %label28
label25:                                                ; preds = %label19
  %op26 = load i32, i32* %op8
  %op27 = add i32 %op26, 1
  store i32 %op27, i32* %op8
  br label %label10
label28:                                                ; preds = %label23, %label43
  %op29 = load i32, i32* %op24
  %op30 = load i32, i32* @maxn
  %op31 = icmp slt i32 %op29, %op30
  br i1 %op31, label %label32, label %label34
label32:                                                ; preds = %label28
  %op33 = alloca i32
  store i32 0, i32* %op33
  br label %label37
label34:                                                ; preds = %label28
  %op35 = load i32, i32* %op15
  %op36 = add i32 %op35, 1
  store i32 %op36, i32* %op15
  br label %label19
label37:                                                ; preds = %label32, %label60
  %op38 = load i32, i32* %op33
  %op39 = load i32, i32* @maxn
  %op40 = icmp slt i32 %op38, %op39
  br i1 %op40, label %label41, label %label43
label41:                                                ; preds = %label37
  %op42 = alloca i32
  store i32 0, i32* %op42
  br label %label46
label43:                                                ; preds = %label37
  %op44 = load i32, i32* %op24
  %op45 = add i32 %op44, 1
  store i32 %op45, i32* %op24
  br label %label28
label46:                                                ; preds = %label41, %label49
  %op47 = load i32, i32* %op42
  %op48 = icmp slt i32 %op47, 7
  br i1 %op48, label %label49, label %label60
label49:                                                ; preds = %label46
  %op50 = sub i32 0, 1
  %op51 = load i32, i32* %op2
  %op52 = load i32, i32* %op8
  %op53 = load i32, i32* %op15
  %op54 = load i32, i32* %op24
  %op55 = load i32, i32* %op33
  %op56 = load i32, i32* %op42
  %op57 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %op51, i32 %op52, i32 %op53, i32 %op54, i32 %op55, i32 %op56
  store i32 %op50, i32* %op57
  %op58 = load i32, i32* %op42
  %op59 = add i32 %op58, 1
  store i32 %op59, i32* %op42
  br label %label46
label60:                                                ; preds = %label46
  %op61 = load i32, i32* %op33
  %op62 = add i32 %op61, 1
  store i32 %op62, i32* %op33
  br label %label37
label63:                                                ; preds = %label9, %label67
  %op64 = load i32, i32* %op2
  %op65 = load i32, i32* %op0
  %op66 = icmp slt i32 %op64, %op65
  br i1 %op66, label %label67, label %label83
label67:                                                ; preds = %label63
  %op68 = call i32 @getint()
  %op69 = load i32, i32* %op2
  %op70 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %op69
  store i32 %op68, i32* %op70
  %op71 = load i32, i32* %op2
  %op72 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %op71
  %op73 = load i32, i32* %op72
  %op74 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 %op73
  %op75 = load i32, i32* %op74
  %op76 = add i32 %op75, 1
  %op77 = load i32, i32* %op2
  %op78 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %op77
  %op79 = load i32, i32* %op78
  %op80 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 %op79
  store i32 %op76, i32* %op80
  %op81 = load i32, i32* %op2
  %op82 = add i32 %op81, 1
  store i32 %op82, i32* %op2
  br label %label63
label83:                                                ; preds = %label63
  %op84 = alloca i32
  %op85 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 1
  %op86 = load i32, i32* %op85
  %op87 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 2
  %op88 = load i32, i32* %op87
  %op89 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 3
  %op90 = load i32, i32* %op89
  %op91 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 4
  %op92 = load i32, i32* %op91
  %op93 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 5
  %op94 = load i32, i32* %op93
  %op95 = call i32 @dfs(i32 %op86, i32 %op88, i32 %op90, i32 %op92, i32 %op94, i32 0)
  store i32 %op95, i32* %op84
  %op96 = load i32, i32* %op84
  call void @putint(i32 %op96)
  %op97 = load i32, i32* %op84
  ret i32 %op97
}
