; ModuleID = 'sysy'
source_filename = "/home/innerpeace/Compiler_2024_USTC/test/functional/96_matrix_add.sy"

@M = global i32 0
@L = global i32 0
@N = global i32 0
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

define i32 @add(float* %arg0, float* %arg1, float* %arg2, float* %arg3, float* %arg4, float* %arg5, float* %arg6, float* %arg7, float* %arg8) {
label_entry:
  br label %label19
label19:                                                ; preds = %label_entry, %label23
  %op63 = phi i32 [ 0, %label_entry ], [ %op61, %label23 ]
  %op21 = load i32, i32* @M
  %op22 = icmp slt i32 %op63, %op21
  br i1 %op22, label %label23, label %label62
label23:                                                ; preds = %label19
  %op26 = getelementptr float, float* %arg0, i32 %op63
  %op27 = load float, float* %op26
  %op30 = getelementptr float, float* %arg3, i32 %op63
  %op31 = load float, float* %op30
  %op32 = fadd float %op27, %op31
  %op35 = getelementptr float, float* %arg6, i32 %op63
  store float %op32, float* %op35
  %op38 = getelementptr float, float* %arg1, i32 %op63
  %op39 = load float, float* %op38
  %op42 = getelementptr float, float* %arg4, i32 %op63
  %op43 = load float, float* %op42
  %op44 = fadd float %op39, %op43
  %op47 = getelementptr float, float* %arg7, i32 %op63
  store float %op44, float* %op47
  %op50 = getelementptr float, float* %arg2, i32 %op63
  %op51 = load float, float* %op50
  %op54 = getelementptr float, float* %arg5, i32 %op63
  %op55 = load float, float* %op54
  %op56 = fadd float %op51, %op55
  %op59 = getelementptr float, float* %arg8, i32 %op63
  store float %op56, float* %op59
  %op61 = add i32 %op63, 1
  br label %label19
label62:                                                ; preds = %label19
  ret i32 0
}
define i32 @main() {
label_entry:
  %op8 = alloca [3 x float]
  %op7 = alloca [3 x float]
  %op6 = alloca [6 x float]
  %op5 = alloca [3 x float]
  %op4 = alloca [3 x float]
  %op3 = alloca [3 x float]
  %op2 = alloca [3 x float]
  %op1 = alloca [3 x float]
  %op0 = alloca [3 x float]
  store i32 3, i32* @N
  store i32 3, i32* @M
  store i32 3, i32* @L
  br label %label10
label10:                                                ; preds = %label_entry, %label14
  %op95 = phi i32 [ 0, %label_entry ], [ %op40, %label14 ]
  %op12 = load i32, i32* @M
  %op13 = icmp slt i32 %op95, %op12
  br i1 %op13, label %label14, label %label41
label14:                                                ; preds = %label10
  %op17 = getelementptr [3 x float], [3 x float]* %op0, i32 0, i32 %op95
  %op18 = sitofp i32 %op95 to float
  store float %op18, float* %op17
  %op21 = getelementptr [3 x float], [3 x float]* %op1, i32 0, i32 %op95
  %op22 = sitofp i32 %op95 to float
  store float %op22, float* %op21
  %op25 = getelementptr [3 x float], [3 x float]* %op2, i32 0, i32 %op95
  %op26 = sitofp i32 %op95 to float
  store float %op26, float* %op25
  %op29 = getelementptr [3 x float], [3 x float]* %op3, i32 0, i32 %op95
  %op30 = sitofp i32 %op95 to float
  store float %op30, float* %op29
  %op33 = getelementptr [3 x float], [3 x float]* %op4, i32 0, i32 %op95
  %op34 = sitofp i32 %op95 to float
  store float %op34, float* %op33
  %op37 = getelementptr [3 x float], [3 x float]* %op5, i32 0, i32 %op95
  %op38 = sitofp i32 %op95 to float
  store float %op38, float* %op37
  %op40 = add i32 %op95, 1
  br label %label10
label41:                                                ; preds = %label10
  %op42 = getelementptr [3 x float], [3 x float]* %op0, i32 0, i32 0
  %op43 = getelementptr [3 x float], [3 x float]* %op1, i32 0, i32 0
  %op44 = getelementptr [3 x float], [3 x float]* %op2, i32 0, i32 0
  %op45 = getelementptr [3 x float], [3 x float]* %op3, i32 0, i32 0
  %op46 = getelementptr [3 x float], [3 x float]* %op4, i32 0, i32 0
  %op47 = getelementptr [3 x float], [3 x float]* %op5, i32 0, i32 0
  %op48 = getelementptr [6 x float], [6 x float]* %op6, i32 0, i32 0
  %op49 = getelementptr [3 x float], [3 x float]* %op7, i32 0, i32 0
  %op50 = getelementptr [3 x float], [3 x float]* %op8, i32 0, i32 0
  %op51 = call i32 @add(float* %op42, float* %op43, float* %op44, float* %op45, float* %op46, float* %op47, float* %op48, float* %op49, float* %op50)
  br label %label53
label53:                                                ; preds = %label41, %label57
  %op97 = phi i32 [ %op51, %label41 ], [ %op64, %label57 ]
  %op55 = load i32, i32* @N
  %op56 = icmp slt i32 %op97, %op55
  br i1 %op56, label %label57, label %label65
label57:                                                ; preds = %label53
  %op59 = getelementptr [6 x float], [6 x float]* %op6, i32 0, i32 %op97
  %op60 = load float, float* %op59
  %op61 = fptosi float %op60 to i32
  call void @putint(i32 %op61)
  %op64 = add i32 %op97, 1
  br label %label53
label65:                                                ; preds = %label53
  call void @putch(i32 10)
  br label %label67
label67:                                                ; preds = %label65, %label71
  %op99 = phi i32 [ 0, %label65 ], [ %op78, %label71 ]
  %op69 = load i32, i32* @N
  %op70 = icmp slt i32 %op99, %op69
  br i1 %op70, label %label71, label %label79
label71:                                                ; preds = %label67
  %op73 = getelementptr [3 x float], [3 x float]* %op7, i32 0, i32 %op99
  %op74 = load float, float* %op73
  %op75 = fptosi float %op74 to i32
  call void @putint(i32 %op75)
  %op78 = add i32 %op99, 1
  br label %label67
label79:                                                ; preds = %label67
  call void @putch(i32 10)
  br label %label81
label81:                                                ; preds = %label79, %label85
  %op101 = phi i32 [ 0, %label79 ], [ %op92, %label85 ]
  %op83 = load i32, i32* @N
  %op84 = icmp slt i32 %op101, %op83
  br i1 %op84, label %label85, label %label93
label85:                                                ; preds = %label81
  %op87 = getelementptr [3 x float], [3 x float]* %op8, i32 0, i32 %op101
  %op88 = load float, float* %op87
  %op89 = fptosi float %op88 to i32
  call void @putint(i32 %op89)
  %op92 = add i32 %op101, 1
  br label %label81
label93:                                                ; preds = %label81
  call void @putch(i32 10)
  ret i32 0
}
