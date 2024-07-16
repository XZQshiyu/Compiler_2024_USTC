	.text
	.align 2
	.globl relu_reg
	.type relu_reg, @function
relu_reg:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.relu_reg_label_entry:
# %op3 = icmp sgt i32 %arg0, 127
	addi.w $t1, $zero, 127
	slt $a1,$t1,$a0
# br i1 %op3, label %label4, label %label5
	addi.w $t0,$zero,0
	blt $t0,$a1,.relu_reg_label4
	b .relu_reg_label5
.relu_reg_label4:
# ret i32 127
	addi.w $t0, $zero, 127
	or $a0, $zero, $t0
	b relu_reg_exit
.relu_reg_label5:
# %op7 = icmp slt i32 %arg0, 0
	addi.w $t1, $zero, 0
	slt $a1,$a0,$t1
# br i1 %op7, label %label8, label %label9
	addi.w $t0,$zero,0
	blt $t0,$a1,.relu_reg_label8
	b .relu_reg_label9
.relu_reg_label8:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b relu_reg_exit
.relu_reg_label9:
# ret i32 %arg0
	b relu_reg_exit
relu_reg_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl model
	.type model, @function
model:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.model_label_entry:
# %op3 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op4 = load i32, i32* %op3
	ld.w $a1, $a1, 0
# %op5 = mul i32 %op4, 85
	addi.w $t1, $zero, 85
	mul.w $a1, $a1, $t1
# %op7 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op8 = load i32, i32* %op7
	ld.w $a2, $a2, 0
# %op9 = mul i32 %op8, 23
	addi.w $t1, $zero, 23
	mul.w $a2, $a2, $t1
# %op10 = add i32 %op5, %op9
	add.w $a1, $a1, $a2
# %op12 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op13 = load i32, i32* %op12
	ld.w $a2, $a2, 0
# %op15 = mul i32 %op13, -82
	addi.w $t1, $zero, -82
	mul.w $a2, $a2, $t1
# %op16 = add i32 %op10, %op15
	add.w $a1, $a1, $a2
# %op18 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op19 = load i32, i32* %op18
	ld.w $a2, $a2, 0
# %op21 = mul i32 %op19, -103
	addi.w $t1, $zero, -103
	mul.w $a2, $a2, $t1
# %op22 = add i32 %op16, %op21
	add.w $a1, $a1, $a2
# %op24 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op25 = load i32, i32* %op24
	ld.w $a2, $a2, 0
# %op27 = mul i32 %op25, -123
	addi.w $t1, $zero, -123
	mul.w $a2, $a2, $t1
# %op28 = add i32 %op22, %op27
	add.w $a1, $a1, $a2
# %op30 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op31 = load i32, i32* %op30
	ld.w $a2, $a2, 0
# %op32 = mul i32 %op31, 64
	addi.w $t1, $zero, 64
	mul.w $a2, $a2, $t1
# %op33 = add i32 %op28, %op32
	add.w $a1, $a1, $a2
# %op35 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op36 = load i32, i32* %op35
	ld.w $a2, $a2, 0
# %op38 = mul i32 %op36, -120
	addi.w $t1, $zero, -120
	mul.w $a2, $a2, $t1
# %op39 = add i32 %op33, %op38
	add.w $a1, $a1, $a2
# %op41 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op42 = load i32, i32* %op41
	ld.w $a2, $a2, 0
# %op43 = mul i32 %op42, 50
	addi.w $t1, $zero, 50
	mul.w $a2, $a2, $t1
# %op44 = add i32 %op39, %op43
	add.w $a1, $a1, $a2
# %op46 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op47 = load i32, i32* %op46
	ld.w $a2, $a2, 0
# %op49 = mul i32 %op47, -59
	addi.w $t1, $zero, -59
	mul.w $a2, $a2, $t1
# %op50 = add i32 %op44, %op49
	add.w $a1, $a1, $a2
# %op52 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op53 = load i32, i32* %op52
	ld.w $a2, $a2, 0
# %op54 = mul i32 %op53, 47
	addi.w $t1, $zero, 47
	mul.w $a2, $a2, $t1
# %op55 = add i32 %op50, %op54
	add.w $a1, $a1, $a2
# %op57 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op58 = load i32, i32* %op57
	ld.w $a2, $a2, 0
# %op60 = mul i32 %op58, -111
	addi.w $t1, $zero, -111
	mul.w $a2, $a2, $t1
# %op61 = add i32 %op55, %op60
	add.w $a1, $a1, $a2
# %op63 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op64 = load i32, i32* %op63
	ld.w $a2, $a2, 0
# %op66 = mul i32 %op64, -67
	addi.w $t1, $zero, -67
	mul.w $a2, $a2, $t1
# %op67 = add i32 %op61, %op66
	add.w $a1, $a1, $a2
# %op69 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op70 = load i32, i32* %op69
	ld.w $a2, $a2, 0
# %op72 = mul i32 %op70, -106
	addi.w $t1, $zero, -106
	mul.w $a2, $a2, $t1
# %op73 = add i32 %op67, %op72
	add.w $a1, $a1, $a2
# %op75 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op76 = load i32, i32* %op75
	ld.w $a2, $a2, 0
# %op78 = mul i32 %op76, -75
	addi.w $t1, $zero, -75
	mul.w $a2, $a2, $t1
# %op79 = add i32 %op73, %op78
	add.w $a1, $a1, $a2
# %op81 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op82 = load i32, i32* %op81
	ld.w $a2, $a2, 0
# %op84 = mul i32 %op82, -102
	addi.w $t1, $zero, -102
	mul.w $a2, $a2, $t1
# %op85 = add i32 %op79, %op84
	add.w $a1, $a1, $a2
# %op87 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op88 = load i32, i32* %op87
	ld.w $a2, $a2, 0
# %op89 = mul i32 %op88, 34
	addi.w $t1, $zero, 34
	mul.w $a2, $a2, $t1
# %op90 = add i32 %op85, %op89
	add.w $a1, $a1, $a2
# %op92 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op93 = load i32, i32* %op92
	ld.w $a2, $a2, 0
# %op95 = mul i32 %op93, -39
	addi.w $t1, $zero, -39
	mul.w $a2, $a2, $t1
# %op96 = add i32 %op90, %op95
	add.w $a1, $a1, $a2
# %op98 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op99 = load i32, i32* %op98
	ld.w $a2, $a2, 0
# %op100 = mul i32 %op99, 65
	addi.w $t1, $zero, 65
	mul.w $a2, $a2, $t1
# %op101 = add i32 %op96, %op100
	add.w $a1, $a1, $a2
# %op103 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op104 = load i32, i32* %op103
	ld.w $a2, $a2, 0
# %op105 = mul i32 %op104, 47
	addi.w $t1, $zero, 47
	mul.w $a2, $a2, $t1
# %op106 = add i32 %op101, %op105
	add.w $a1, $a1, $a2
# %op108 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op109 = load i32, i32* %op108
	ld.w $a2, $a2, 0
# %op110 = mul i32 %op109, 113
	addi.w $t1, $zero, 113
	mul.w $a2, $a2, $t1
# %op111 = add i32 %op106, %op110
	add.w $a1, $a1, $a2
# %op113 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op114 = load i32, i32* %op113
	ld.w $a2, $a2, 0
# %op115 = mul i32 %op114, 110
	addi.w $t1, $zero, 110
	mul.w $a2, $a2, $t1
# %op116 = add i32 %op111, %op115
	add.w $a1, $a1, $a2
# %op118 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op119 = load i32, i32* %op118
	ld.w $a2, $a2, 0
# %op120 = mul i32 %op119, 47
	addi.w $t1, $zero, 47
	mul.w $a2, $a2, $t1
# %op121 = add i32 %op116, %op120
	add.w $a1, $a1, $a2
# %op123 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op124 = load i32, i32* %op123
	ld.w $a2, $a2, 0
# %op126 = mul i32 %op124, -4
	addi.w $t1, $zero, -4
	mul.w $a2, $a2, $t1
# %op127 = add i32 %op121, %op126
	add.w $a1, $a1, $a2
# %op129 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op130 = load i32, i32* %op129
	ld.w $a2, $a2, 0
# %op131 = mul i32 %op130, 80
	addi.w $t1, $zero, 80
	mul.w $a2, $a2, $t1
# %op132 = add i32 %op127, %op131
	add.w $a1, $a1, $a2
# %op134 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op135 = load i32, i32* %op134
	ld.w $a2, $a2, 0
# %op136 = mul i32 %op135, 46
	addi.w $t1, $zero, 46
	mul.w $a2, $a2, $t1
# %op137 = add i32 %op132, %op136
	add.w $a1, $a1, $a2
# %op138 = call i32 @relu_reg(i32 %op137)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -32
	bl relu_reg
	addi.d $a1,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op139 = mul i32 %op138, 39
	addi.w $t1, $zero, 39
	mul.w $a1, $a1, $t1
# %op141 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op142 = load i32, i32* %op141
	ld.w $a2, $a2, 0
# %op144 = mul i32 %op142, -106
	addi.w $t1, $zero, -106
	mul.w $a2, $a2, $t1
# %op146 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op147 = load i32, i32* %op146
	ld.w $a3, $a3, 0
# %op148 = mul i32 %op147, 126
	addi.w $t1, $zero, 126
	mul.w $a3, $a3, $t1
# %op149 = add i32 %op144, %op148
	add.w $a2, $a2, $a3
# %op151 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op152 = load i32, i32* %op151
	ld.w $a3, $a3, 0
# %op154 = mul i32 %op152, -18
	addi.w $t1, $zero, -18
	mul.w $a3, $a3, $t1
# %op155 = add i32 %op149, %op154
	add.w $a2, $a2, $a3
# %op157 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op158 = load i32, i32* %op157
	ld.w $a3, $a3, 0
# %op160 = mul i32 %op158, -31
	addi.w $t1, $zero, -31
	mul.w $a3, $a3, $t1
# %op161 = add i32 %op155, %op160
	add.w $a2, $a2, $a3
# %op163 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op164 = load i32, i32* %op163
	ld.w $a3, $a3, 0
# %op166 = mul i32 %op164, -8
	addi.w $t1, $zero, -8
	mul.w $a3, $a3, $t1
# %op167 = add i32 %op161, %op166
	add.w $a2, $a2, $a3
# %op169 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op170 = load i32, i32* %op169
	ld.w $a3, $a3, 0
# %op171 = mul i32 %op170, 47
	addi.w $t1, $zero, 47
	mul.w $a3, $a3, $t1
# %op172 = add i32 %op167, %op171
	add.w $a2, $a2, $a3
# %op174 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op175 = load i32, i32* %op174
	ld.w $a3, $a3, 0
# %op177 = mul i32 %op175, -4
	addi.w $t1, $zero, -4
	mul.w $a3, $a3, $t1
# %op178 = add i32 %op172, %op177
	add.w $a2, $a2, $a3
# %op180 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op181 = load i32, i32* %op180
	ld.w $a3, $a3, 0
# %op182 = mul i32 %op181, 67
	addi.w $t1, $zero, 67
	mul.w $a3, $a3, $t1
# %op183 = add i32 %op178, %op182
	add.w $a2, $a2, $a3
# %op185 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op186 = load i32, i32* %op185
	ld.w $a3, $a3, 0
# %op188 = mul i32 %op186, -94
	addi.w $t1, $zero, -94
	mul.w $a3, $a3, $t1
# %op189 = add i32 %op183, %op188
	add.w $a2, $a2, $a3
# %op191 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op192 = load i32, i32* %op191
	ld.w $a3, $a3, 0
# %op194 = mul i32 %op192, -121
	addi.w $t1, $zero, -121
	mul.w $a3, $a3, $t1
# %op195 = add i32 %op189, %op194
	add.w $a2, $a2, $a3
# %op197 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op198 = load i32, i32* %op197
	ld.w $a3, $a3, 0
# %op199 = mul i32 %op198, 7
	addi.w $t1, $zero, 7
	mul.w $a3, $a3, $t1
# %op200 = add i32 %op195, %op199
	add.w $a2, $a2, $a3
# %op202 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op203 = load i32, i32* %op202
	ld.w $a3, $a3, 0
# %op205 = mul i32 %op203, -21
	addi.w $t1, $zero, -21
	mul.w $a3, $a3, $t1
# %op206 = add i32 %op200, %op205
	add.w $a2, $a2, $a3
# %op208 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op209 = load i32, i32* %op208
	ld.w $a3, $a3, 0
# %op211 = mul i32 %op209, -60
	addi.w $t1, $zero, -60
	mul.w $a3, $a3, $t1
# %op212 = add i32 %op206, %op211
	add.w $a2, $a2, $a3
# %op214 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op215 = load i32, i32* %op214
	ld.w $a3, $a3, 0
# %op217 = mul i32 %op215, -43
	addi.w $t1, $zero, -43
	mul.w $a3, $a3, $t1
# %op218 = add i32 %op212, %op217
	add.w $a2, $a2, $a3
# %op220 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op221 = load i32, i32* %op220
	ld.w $a3, $a3, 0
# %op222 = mul i32 %op221, 105
	addi.w $t1, $zero, 105
	mul.w $a3, $a3, $t1
# %op223 = add i32 %op218, %op222
	add.w $a2, $a2, $a3
# %op225 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op226 = load i32, i32* %op225
	ld.w $a3, $a3, 0
# %op228 = mul i32 %op226, -42
	addi.w $t1, $zero, -42
	mul.w $a3, $a3, $t1
# %op229 = add i32 %op223, %op228
	add.w $a2, $a2, $a3
# %op231 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op232 = load i32, i32* %op231
	ld.w $a3, $a3, 0
# %op233 = mul i32 %op232, 87
	addi.w $t1, $zero, 87
	mul.w $a3, $a3, $t1
# %op234 = add i32 %op229, %op233
	add.w $a2, $a2, $a3
# %op236 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op237 = load i32, i32* %op236
	ld.w $a3, $a3, 0
# %op238 = mul i32 %op237, 29
	addi.w $t1, $zero, 29
	mul.w $a3, $a3, $t1
# %op239 = add i32 %op234, %op238
	add.w $a2, $a2, $a3
# %op241 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op242 = load i32, i32* %op241
	ld.w $a3, $a3, 0
# %op244 = mul i32 %op242, -106
	addi.w $t1, $zero, -106
	mul.w $a3, $a3, $t1
# %op245 = add i32 %op239, %op244
	add.w $a2, $a2, $a3
# %op247 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op248 = load i32, i32* %op247
	ld.w $a3, $a3, 0
# %op250 = mul i32 %op248, -31
	addi.w $t1, $zero, -31
	mul.w $a3, $a3, $t1
# %op251 = add i32 %op245, %op250
	add.w $a2, $a2, $a3
# %op253 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op254 = load i32, i32* %op253
	ld.w $a3, $a3, 0
# %op256 = mul i32 %op254, -110
	addi.w $t1, $zero, -110
	mul.w $a3, $a3, $t1
# %op257 = add i32 %op251, %op256
	add.w $a2, $a2, $a3
# %op259 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op260 = load i32, i32* %op259
	ld.w $a3, $a3, 0
# %op262 = mul i32 %op260, -100
	addi.w $t1, $zero, -100
	mul.w $a3, $a3, $t1
# %op263 = add i32 %op257, %op262
	add.w $a2, $a2, $a3
# %op265 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op266 = load i32, i32* %op265
	ld.w $a3, $a3, 0
# %op268 = mul i32 %op266, -22
	addi.w $t1, $zero, -22
	mul.w $a3, $a3, $t1
# %op269 = add i32 %op263, %op268
	add.w $a2, $a2, $a3
# %op271 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op272 = load i32, i32* %op271
	ld.w $a3, $a3, 0
# %op274 = mul i32 %op272, -75
	addi.w $t1, $zero, -75
	mul.w $a3, $a3, $t1
# %op275 = add i32 %op269, %op274
	add.w $a2, $a2, $a3
# %op277 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op278 = load i32, i32* %op277
	ld.w $a3, $a3, 0
# %op280 = mul i32 %op278, -125
	addi.w $t1, $zero, -125
	mul.w $a3, $a3, $t1
# %op281 = add i32 %op275, %op280
	add.w $a2, $a2, $a3
# %op282 = call i32 @relu_reg(i32 %op281)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -40
	bl relu_reg
	addi.d $a2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op283 = mul i32 %op282, 77
	addi.w $t1, $zero, 77
	mul.w $a2, $a2, $t1
# %op284 = add i32 %op139, %op283
	add.w $a1, $a1, $a2
# %op286 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op287 = load i32, i32* %op286
	ld.w $a2, $a2, 0
# %op288 = mul i32 %op287, 26
	addi.w $t1, $zero, 26
	mul.w $a2, $a2, $t1
# %op290 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op291 = load i32, i32* %op290
	ld.w $a3, $a3, 0
# %op292 = mul i32 %op291, 76
	addi.w $t1, $zero, 76
	mul.w $a3, $a3, $t1
# %op293 = add i32 %op288, %op292
	add.w $a2, $a2, $a3
# %op295 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op296 = load i32, i32* %op295
	ld.w $a3, $a3, 0
# %op298 = mul i32 %op296, -70
	addi.w $t1, $zero, -70
	mul.w $a3, $a3, $t1
# %op299 = add i32 %op293, %op298
	add.w $a2, $a2, $a3
# %op301 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op302 = load i32, i32* %op301
	ld.w $a3, $a3, 0
# %op303 = mul i32 %op302, 29
	addi.w $t1, $zero, 29
	mul.w $a3, $a3, $t1
# %op304 = add i32 %op299, %op303
	add.w $a2, $a2, $a3
# %op306 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op307 = load i32, i32* %op306
	ld.w $a3, $a3, 0
# %op309 = mul i32 %op307, -95
	addi.w $t1, $zero, -95
	mul.w $a3, $a3, $t1
# %op310 = add i32 %op304, %op309
	add.w $a2, $a2, $a3
# %op312 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op313 = load i32, i32* %op312
	ld.w $a3, $a3, 0
# %op314 = mul i32 %op313, 96
	addi.w $t1, $zero, 96
	mul.w $a3, $a3, $t1
# %op315 = add i32 %op310, %op314
	add.w $a2, $a2, $a3
# %op317 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op318 = load i32, i32* %op317
	ld.w $a3, $a3, 0
# %op319 = mul i32 %op318, 52
	addi.w $t1, $zero, 52
	mul.w $a3, $a3, $t1
# %op320 = add i32 %op315, %op319
	add.w $a2, $a2, $a3
# %op322 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op323 = load i32, i32* %op322
	ld.w $a3, $a3, 0
# %op325 = mul i32 %op323, -68
	addi.w $t1, $zero, -68
	mul.w $a3, $a3, $t1
# %op326 = add i32 %op320, %op325
	add.w $a2, $a2, $a3
# %op328 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op329 = load i32, i32* %op328
	ld.w $a3, $a3, 0
# %op331 = mul i32 %op329, -5
	addi.w $t1, $zero, -5
	mul.w $a3, $a3, $t1
# %op332 = add i32 %op326, %op331
	add.w $a2, $a2, $a3
# %op334 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op335 = load i32, i32* %op334
	ld.w $a3, $a3, 0
# %op336 = mul i32 %op335, 34
	addi.w $t1, $zero, 34
	mul.w $a3, $a3, $t1
# %op337 = add i32 %op332, %op336
	add.w $a2, $a2, $a3
# %op339 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op340 = load i32, i32* %op339
	ld.w $a3, $a3, 0
# %op342 = mul i32 %op340, -34
	addi.w $t1, $zero, -34
	mul.w $a3, $a3, $t1
# %op343 = add i32 %op337, %op342
	add.w $a2, $a2, $a3
# %op345 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op346 = load i32, i32* %op345
	ld.w $a3, $a3, 0
# %op347 = mul i32 %op346, 102
	addi.w $t1, $zero, 102
	mul.w $a3, $a3, $t1
# %op348 = add i32 %op343, %op347
	add.w $a2, $a2, $a3
# %op350 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op351 = load i32, i32* %op350
	ld.w $a3, $a3, 0
# %op352 = mul i32 %op351, 6
	addi.w $t1, $zero, 6
	mul.w $a3, $a3, $t1
# %op353 = add i32 %op348, %op352
	add.w $a2, $a2, $a3
# %op355 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op356 = load i32, i32* %op355
	ld.w $a3, $a3, 0
# %op358 = mul i32 %op356, -38
	addi.w $t1, $zero, -38
	mul.w $a3, $a3, $t1
# %op359 = add i32 %op353, %op358
	add.w $a2, $a2, $a3
# %op361 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op362 = load i32, i32* %op361
	ld.w $a3, $a3, 0
# %op363 = mul i32 %op362, 27
	addi.w $t1, $zero, 27
	mul.w $a3, $a3, $t1
# %op364 = add i32 %op359, %op363
	add.w $a2, $a2, $a3
# %op366 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op367 = load i32, i32* %op366
	ld.w $a3, $a3, 0
# %op368 = mul i32 %op367, 110
	addi.w $t1, $zero, 110
	mul.w $a3, $a3, $t1
# %op369 = add i32 %op364, %op368
	add.w $a2, $a2, $a3
# %op371 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op372 = load i32, i32* %op371
	ld.w $a3, $a3, 0
# %op373 = mul i32 %op372, 116
	addi.w $t1, $zero, 116
	mul.w $a3, $a3, $t1
# %op374 = add i32 %op369, %op373
	add.w $a2, $a2, $a3
# %op376 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op377 = load i32, i32* %op376
	ld.w $a3, $a3, 0
# %op378 = mul i32 %op377, 39
	addi.w $t1, $zero, 39
	mul.w $a3, $a3, $t1
# %op379 = add i32 %op374, %op378
	add.w $a2, $a2, $a3
# %op381 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op382 = load i32, i32* %op381
	ld.w $a3, $a3, 0
# %op384 = mul i32 %op382, -63
	addi.w $t1, $zero, -63
	mul.w $a3, $a3, $t1
# %op385 = add i32 %op379, %op384
	add.w $a2, $a2, $a3
# %op387 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op388 = load i32, i32* %op387
	ld.w $a3, $a3, 0
# %op390 = mul i32 %op388, -99
	addi.w $t1, $zero, -99
	mul.w $a3, $a3, $t1
# %op391 = add i32 %op385, %op390
	add.w $a2, $a2, $a3
# %op393 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op394 = load i32, i32* %op393
	ld.w $a3, $a3, 0
# %op395 = mul i32 %op394, 65
	addi.w $t1, $zero, 65
	mul.w $a3, $a3, $t1
# %op396 = add i32 %op391, %op395
	add.w $a2, $a2, $a3
# %op398 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op399 = load i32, i32* %op398
	ld.w $a3, $a3, 0
# %op400 = mul i32 %op399, 120
	addi.w $t1, $zero, 120
	mul.w $a3, $a3, $t1
# %op401 = add i32 %op396, %op400
	add.w $a2, $a2, $a3
# %op403 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op404 = load i32, i32* %op403
	ld.w $a3, $a3, 0
# %op406 = mul i32 %op404, -39
	addi.w $t1, $zero, -39
	mul.w $a3, $a3, $t1
# %op407 = add i32 %op401, %op406
	add.w $a2, $a2, $a3
# %op409 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op410 = load i32, i32* %op409
	ld.w $a3, $a3, 0
# %op412 = mul i32 %op410, -6
	addi.w $t1, $zero, -6
	mul.w $a3, $a3, $t1
# %op413 = add i32 %op407, %op412
	add.w $a2, $a2, $a3
# %op415 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op416 = load i32, i32* %op415
	ld.w $a3, $a3, 0
# %op417 = mul i32 %op416, 94
	addi.w $t1, $zero, 94
	mul.w $a3, $a3, $t1
# %op418 = add i32 %op413, %op417
	add.w $a2, $a2, $a3
# %op419 = call i32 @relu_reg(i32 %op418)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -40
	bl relu_reg
	addi.d $a2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op420 = mul i32 %op419, 127
	addi.w $t1, $zero, 127
	mul.w $a2, $a2, $t1
# %op421 = add i32 %op284, %op420
	add.w $a1, $a1, $a2
# %op423 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op424 = load i32, i32* %op423
	ld.w $a2, $a2, 0
# %op426 = mul i32 %op424, -23
	addi.w $t1, $zero, -23
	mul.w $a2, $a2, $t1
# %op428 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op429 = load i32, i32* %op428
	ld.w $a3, $a3, 0
# %op431 = mul i32 %op429, -63
	addi.w $t1, $zero, -63
	mul.w $a3, $a3, $t1
# %op432 = add i32 %op426, %op431
	add.w $a2, $a2, $a3
# %op434 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op435 = load i32, i32* %op434
	ld.w $a3, $a3, 0
# %op436 = mul i32 %op435, 49
	addi.w $t1, $zero, 49
	mul.w $a3, $a3, $t1
# %op437 = add i32 %op432, %op436
	add.w $a2, $a2, $a3
# %op439 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op440 = load i32, i32* %op439
	ld.w $a3, $a3, 0
# %op441 = mul i32 %op440, 50
	addi.w $t1, $zero, 50
	mul.w $a3, $a3, $t1
# %op442 = add i32 %op437, %op441
	add.w $a2, $a2, $a3
# %op444 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op445 = load i32, i32* %op444
	ld.w $a3, $a3, 0
# %op446 = mul i32 %op445, 72
	addi.w $t1, $zero, 72
	mul.w $a3, $a3, $t1
# %op447 = add i32 %op442, %op446
	add.w $a2, $a2, $a3
# %op449 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op450 = load i32, i32* %op449
	ld.w $a3, $a3, 0
# %op451 = mul i32 %op450, 85
	addi.w $t1, $zero, 85
	mul.w $a3, $a3, $t1
# %op452 = add i32 %op447, %op451
	add.w $a2, $a2, $a3
# %op454 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op455 = load i32, i32* %op454
	ld.w $a3, $a3, 0
# %op457 = mul i32 %op455, -30
	addi.w $t1, $zero, -30
	mul.w $a3, $a3, $t1
# %op458 = add i32 %op452, %op457
	add.w $a2, $a2, $a3
# %op460 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op461 = load i32, i32* %op460
	ld.w $a3, $a3, 0
# %op462 = mul i32 %op461, 12
	addi.w $t1, $zero, 12
	mul.w $a3, $a3, $t1
# %op463 = add i32 %op458, %op462
	add.w $a2, $a2, $a3
# %op465 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op466 = load i32, i32* %op465
	ld.w $a3, $a3, 0
# %op467 = mul i32 %op466, 125
	addi.w $t1, $zero, 125
	mul.w $a3, $a3, $t1
# %op468 = add i32 %op463, %op467
	add.w $a2, $a2, $a3
# %op470 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op471 = load i32, i32* %op470
	ld.w $a3, $a3, 0
# %op473 = mul i32 %op471, -117
	addi.w $t1, $zero, -117
	mul.w $a3, $a3, $t1
# %op474 = add i32 %op468, %op473
	add.w $a2, $a2, $a3
# %op476 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op477 = load i32, i32* %op476
	ld.w $a3, $a3, 0
# %op479 = mul i32 %op477, -65
	addi.w $t1, $zero, -65
	mul.w $a3, $a3, $t1
# %op480 = add i32 %op474, %op479
	add.w $a2, $a2, $a3
# %op482 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op483 = load i32, i32* %op482
	ld.w $a3, $a3, 0
# %op485 = mul i32 %op483, -67
	addi.w $t1, $zero, -67
	mul.w $a3, $a3, $t1
# %op486 = add i32 %op480, %op485
	add.w $a2, $a2, $a3
# %op488 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op489 = load i32, i32* %op488
	ld.w $a3, $a3, 0
# %op490 = mul i32 %op489, 125
	addi.w $t1, $zero, 125
	mul.w $a3, $a3, $t1
# %op491 = add i32 %op486, %op490
	add.w $a2, $a2, $a3
# %op493 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op494 = load i32, i32* %op493
	ld.w $a3, $a3, 0
# %op495 = mul i32 %op494, 110
	addi.w $t1, $zero, 110
	mul.w $a3, $a3, $t1
# %op496 = add i32 %op491, %op495
	add.w $a2, $a2, $a3
# %op498 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op499 = load i32, i32* %op498
	ld.w $a3, $a3, 0
# %op501 = mul i32 %op499, -31
	addi.w $t1, $zero, -31
	mul.w $a3, $a3, $t1
# %op502 = add i32 %op496, %op501
	add.w $a2, $a2, $a3
# %op504 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op505 = load i32, i32* %op504
	ld.w $a3, $a3, 0
# %op507 = mul i32 %op505, -123
	addi.w $t1, $zero, -123
	mul.w $a3, $a3, $t1
# %op508 = add i32 %op502, %op507
	add.w $a2, $a2, $a3
# %op510 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op511 = load i32, i32* %op510
	ld.w $a3, $a3, 0
# %op512 = mul i32 %op511, 83
	addi.w $t1, $zero, 83
	mul.w $a3, $a3, $t1
# %op513 = add i32 %op508, %op512
	add.w $a2, $a2, $a3
# %op515 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op516 = load i32, i32* %op515
	ld.w $a3, $a3, 0
# %op517 = mul i32 %op516, 122
	addi.w $t1, $zero, 122
	mul.w $a3, $a3, $t1
# %op518 = add i32 %op513, %op517
	add.w $a2, $a2, $a3
# %op520 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op521 = load i32, i32* %op520
	ld.w $a3, $a3, 0
# %op522 = mul i32 %op521, 11
	addi.w $t1, $zero, 11
	mul.w $a3, $a3, $t1
# %op523 = add i32 %op518, %op522
	add.w $a2, $a2, $a3
# %op525 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op526 = load i32, i32* %op525
	ld.w $a3, $a3, 0
# %op528 = mul i32 %op526, -23
	addi.w $t1, $zero, -23
	mul.w $a3, $a3, $t1
# %op529 = add i32 %op523, %op528
	add.w $a2, $a2, $a3
# %op531 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op532 = load i32, i32* %op531
	ld.w $a3, $a3, 0
# %op534 = mul i32 %op532, -47
	addi.w $t1, $zero, -47
	mul.w $a3, $a3, $t1
# %op535 = add i32 %op529, %op534
	add.w $a2, $a2, $a3
# %op537 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op538 = load i32, i32* %op537
	ld.w $a3, $a3, 0
# %op540 = mul i32 %op538, -32
	addi.w $t1, $zero, -32
	mul.w $a3, $a3, $t1
# %op541 = add i32 %op535, %op540
	add.w $a2, $a2, $a3
# %op543 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op544 = load i32, i32* %op543
	ld.w $a3, $a3, 0
# %op546 = mul i32 %op544, -117
	addi.w $t1, $zero, -117
	mul.w $a3, $a3, $t1
# %op547 = add i32 %op541, %op546
	add.w $a2, $a2, $a3
# %op549 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op550 = load i32, i32* %op549
	ld.w $a3, $a3, 0
# %op551 = mul i32 %op550, 95
	addi.w $t1, $zero, 95
	mul.w $a3, $a3, $t1
# %op552 = add i32 %op547, %op551
	add.w $a2, $a2, $a3
# %op554 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op555 = load i32, i32* %op554
	ld.w $a3, $a3, 0
# %op556 = mul i32 %op555, 118
	addi.w $t1, $zero, 118
	mul.w $a3, $a3, $t1
# %op557 = add i32 %op552, %op556
	add.w $a2, $a2, $a3
# %op558 = call i32 @relu_reg(i32 %op557)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -40
	bl relu_reg
	addi.d $a2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op560 = mul i32 %op558, -106
	addi.w $t1, $zero, -106
	mul.w $a2, $a2, $t1
# %op561 = add i32 %op421, %op560
	add.w $a1, $a1, $a2
# %op563 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op564 = load i32, i32* %op563
	ld.w $a2, $a2, 0
# %op565 = mul i32 %op564, 8
	addi.w $t1, $zero, 8
	mul.w $a2, $a2, $t1
# %op567 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op568 = load i32, i32* %op567
	ld.w $a3, $a3, 0
# %op569 = mul i32 %op568, 82
	addi.w $t1, $zero, 82
	mul.w $a3, $a3, $t1
# %op570 = add i32 %op565, %op569
	add.w $a2, $a2, $a3
# %op572 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op573 = load i32, i32* %op572
	ld.w $a3, $a3, 0
# %op575 = mul i32 %op573, -104
	addi.w $t1, $zero, -104
	mul.w $a3, $a3, $t1
# %op576 = add i32 %op570, %op575
	add.w $a2, $a2, $a3
# %op578 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op579 = load i32, i32* %op578
	ld.w $a3, $a3, 0
# %op580 = mul i32 %op579, 101
	addi.w $t1, $zero, 101
	mul.w $a3, $a3, $t1
# %op581 = add i32 %op576, %op580
	add.w $a2, $a2, $a3
# %op583 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op584 = load i32, i32* %op583
	ld.w $a3, $a3, 0
# %op586 = mul i32 %op584, -116
	addi.w $t1, $zero, -116
	mul.w $a3, $a3, $t1
# %op587 = add i32 %op581, %op586
	add.w $a2, $a2, $a3
# %op589 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op590 = load i32, i32* %op589
	ld.w $a3, $a3, 0
# %op592 = mul i32 %op590, -63
	addi.w $t1, $zero, -63
	mul.w $a3, $a3, $t1
# %op593 = add i32 %op587, %op592
	add.w $a2, $a2, $a3
# %op595 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op596 = load i32, i32* %op595
	ld.w $a3, $a3, 0
# %op598 = mul i32 %op596, -16
	addi.w $t1, $zero, -16
	mul.w $a3, $a3, $t1
# %op599 = add i32 %op593, %op598
	add.w $a2, $a2, $a3
# %op601 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op602 = load i32, i32* %op601
	ld.w $a3, $a3, 0
# %op604 = mul i32 %op602, -70
	addi.w $t1, $zero, -70
	mul.w $a3, $a3, $t1
# %op605 = add i32 %op599, %op604
	add.w $a2, $a2, $a3
# %op607 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op608 = load i32, i32* %op607
	ld.w $a3, $a3, 0
# %op609 = mul i32 %op608, 125
	addi.w $t1, $zero, 125
	mul.w $a3, $a3, $t1
# %op610 = add i32 %op605, %op609
	add.w $a2, $a2, $a3
# %op612 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op613 = load i32, i32* %op612
	ld.w $a3, $a3, 0
# %op614 = mul i32 %op613, 75
	addi.w $t1, $zero, 75
	mul.w $a3, $a3, $t1
# %op615 = add i32 %op610, %op614
	add.w $a2, $a2, $a3
# %op617 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op618 = load i32, i32* %op617
	ld.w $a3, $a3, 0
# %op619 = mul i32 %op618, 66
	addi.w $t1, $zero, 66
	mul.w $a3, $a3, $t1
# %op620 = add i32 %op615, %op619
	add.w $a2, $a2, $a3
# %op622 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op623 = load i32, i32* %op622
	ld.w $a3, $a3, 0
# %op625 = mul i32 %op623, -96
	addi.w $t1, $zero, -96
	mul.w $a3, $a3, $t1
# %op626 = add i32 %op620, %op625
	add.w $a2, $a2, $a3
# %op628 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op629 = load i32, i32* %op628
	ld.w $a3, $a3, 0
# %op631 = mul i32 %op629, -101
	addi.w $t1, $zero, -101
	mul.w $a3, $a3, $t1
# %op632 = add i32 %op626, %op631
	add.w $a2, $a2, $a3
# %op634 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op635 = load i32, i32* %op634
	ld.w $a3, $a3, 0
# %op637 = mul i32 %op635, -114
	addi.w $t1, $zero, -114
	mul.w $a3, $a3, $t1
# %op638 = add i32 %op632, %op637
	add.w $a2, $a2, $a3
# %op640 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op641 = load i32, i32* %op640
	ld.w $a3, $a3, 0
# %op642 = mul i32 %op641, 59
	addi.w $t1, $zero, 59
	mul.w $a3, $a3, $t1
# %op643 = add i32 %op638, %op642
	add.w $a2, $a2, $a3
# %op645 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op646 = load i32, i32* %op645
	ld.w $a3, $a3, 0
# %op647 = mul i32 %op646, 12
	addi.w $t1, $zero, 12
	mul.w $a3, $a3, $t1
# %op648 = add i32 %op643, %op647
	add.w $a2, $a2, $a3
# %op650 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op651 = load i32, i32* %op650
	ld.w $a3, $a3, 0
# %op652 = mul i32 %op651, 5
	addi.w $t1, $zero, 5
	mul.w $a3, $a3, $t1
# %op653 = add i32 %op648, %op652
	add.w $a2, $a2, $a3
# %op655 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op656 = load i32, i32* %op655
	ld.w $a3, $a3, 0
# %op658 = mul i32 %op656, -95
	addi.w $t1, $zero, -95
	mul.w $a3, $a3, $t1
# %op659 = add i32 %op653, %op658
	add.w $a2, $a2, $a3
# %op661 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op662 = load i32, i32* %op661
	ld.w $a3, $a3, 0
# %op663 = mul i32 %op662, 116
	addi.w $t1, $zero, 116
	mul.w $a3, $a3, $t1
# %op664 = add i32 %op659, %op663
	add.w $a2, $a2, $a3
# %op666 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op667 = load i32, i32* %op666
	ld.w $a3, $a3, 0
# %op669 = mul i32 %op667, -93
	addi.w $t1, $zero, -93
	mul.w $a3, $a3, $t1
# %op670 = add i32 %op664, %op669
	add.w $a2, $a2, $a3
# %op672 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op673 = load i32, i32* %op672
	ld.w $a3, $a3, 0
# %op674 = mul i32 %op673, 15
	addi.w $t1, $zero, 15
	mul.w $a3, $a3, $t1
# %op675 = add i32 %op670, %op674
	add.w $a2, $a2, $a3
# %op677 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op678 = load i32, i32* %op677
	ld.w $a3, $a3, 0
# %op679 = mul i32 %op678, 79
	addi.w $t1, $zero, 79
	mul.w $a3, $a3, $t1
# %op680 = add i32 %op675, %op679
	add.w $a2, $a2, $a3
# %op682 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op683 = load i32, i32* %op682
	ld.w $a3, $a3, 0
# %op684 = mul i32 %op683, 3
	addi.w $t1, $zero, 3
	mul.w $a3, $a3, $t1
# %op685 = add i32 %op680, %op684
	add.w $a2, $a2, $a3
# %op687 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op688 = load i32, i32* %op687
	ld.w $a3, $a3, 0
# %op689 = mul i32 %op688, 49
	addi.w $t1, $zero, 49
	mul.w $a3, $a3, $t1
# %op690 = add i32 %op685, %op689
	add.w $a2, $a2, $a3
# %op692 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op693 = load i32, i32* %op692
	ld.w $a3, $a3, 0
# %op695 = mul i32 %op693, -124
	addi.w $t1, $zero, -124
	mul.w $a3, $a3, $t1
# %op696 = add i32 %op690, %op695
	add.w $a2, $a2, $a3
# %op697 = call i32 @relu_reg(i32 %op696)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -40
	bl relu_reg
	addi.d $a2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op699 = mul i32 %op697, -3
	addi.w $t1, $zero, -3
	mul.w $a2, $a2, $t1
# %op700 = add i32 %op561, %op699
	add.w $a1, $a1, $a2
# %op702 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op703 = load i32, i32* %op702
	ld.w $a2, $a2, 0
# %op704 = mul i32 %op703, 81
	addi.w $t1, $zero, 81
	mul.w $a2, $a2, $t1
# %op706 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op707 = load i32, i32* %op706
	ld.w $a3, $a3, 0
# %op708 = mul i32 %op707, 68
	addi.w $t1, $zero, 68
	mul.w $a3, $a3, $t1
# %op709 = add i32 %op704, %op708
	add.w $a2, $a2, $a3
# %op711 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op712 = load i32, i32* %op711
	ld.w $a3, $a3, 0
# %op714 = mul i32 %op712, -102
	addi.w $t1, $zero, -102
	mul.w $a3, $a3, $t1
# %op715 = add i32 %op709, %op714
	add.w $a2, $a2, $a3
# %op717 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op718 = load i32, i32* %op717
	ld.w $a3, $a3, 0
# %op720 = mul i32 %op718, -74
	addi.w $t1, $zero, -74
	mul.w $a3, $a3, $t1
# %op721 = add i32 %op715, %op720
	add.w $a2, $a2, $a3
# %op723 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op724 = load i32, i32* %op723
	ld.w $a3, $a3, 0
# %op725 = mul i32 %op724, 121
	addi.w $t1, $zero, 121
	mul.w $a3, $a3, $t1
# %op726 = add i32 %op721, %op725
	add.w $a2, $a2, $a3
# %op728 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op729 = load i32, i32* %op728
	ld.w $a3, $a3, 0
# %op731 = mul i32 %op729, -15
	addi.w $t1, $zero, -15
	mul.w $a3, $a3, $t1
# %op732 = add i32 %op726, %op731
	add.w $a2, $a2, $a3
# %op734 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op735 = load i32, i32* %op734
	ld.w $a3, $a3, 0
# %op736 = mul i32 %op735, 55
	addi.w $t1, $zero, 55
	mul.w $a3, $a3, $t1
# %op737 = add i32 %op732, %op736
	add.w $a2, $a2, $a3
# %op739 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op740 = load i32, i32* %op739
	ld.w $a3, $a3, 0
# %op741 = mul i32 %op740, 101
	addi.w $t1, $zero, 101
	mul.w $a3, $a3, $t1
# %op742 = add i32 %op737, %op741
	add.w $a2, $a2, $a3
# %op744 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op745 = load i32, i32* %op744
	ld.w $a3, $a3, 0
# %op747 = mul i32 %op745, -13
	addi.w $t1, $zero, -13
	mul.w $a3, $a3, $t1
# %op748 = add i32 %op742, %op747
	add.w $a2, $a2, $a3
# %op750 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op751 = load i32, i32* %op750
	ld.w $a3, $a3, 0
# %op753 = mul i32 %op751, -62
	addi.w $t1, $zero, -62
	mul.w $a3, $a3, $t1
# %op754 = add i32 %op748, %op753
	add.w $a2, $a2, $a3
# %op756 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op757 = load i32, i32* %op756
	ld.w $a3, $a3, 0
# %op758 = mul i32 %op757, 64
	addi.w $t1, $zero, 64
	mul.w $a3, $a3, $t1
# %op759 = add i32 %op754, %op758
	add.w $a2, $a2, $a3
# %op761 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op762 = load i32, i32* %op761
	ld.w $a3, $a3, 0
# %op763 = mul i32 %op762, 114
	addi.w $t1, $zero, 114
	mul.w $a3, $a3, $t1
# %op764 = add i32 %op759, %op763
	add.w $a2, $a2, $a3
# %op766 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op767 = load i32, i32* %op766
	ld.w $a3, $a3, 0
# %op768 = mul i32 %op767, 38
	addi.w $t1, $zero, 38
	mul.w $a3, $a3, $t1
# %op769 = add i32 %op764, %op768
	add.w $a2, $a2, $a3
# %op771 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op772 = load i32, i32* %op771
	ld.w $a3, $a3, 0
# %op774 = mul i32 %op772, -21
	addi.w $t1, $zero, -21
	mul.w $a3, $a3, $t1
# %op775 = add i32 %op769, %op774
	add.w $a2, $a2, $a3
# %op777 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op778 = load i32, i32* %op777
	ld.w $a3, $a3, 0
# %op779 = mul i32 %op778, 112
	addi.w $t1, $zero, 112
	mul.w $a3, $a3, $t1
# %op780 = add i32 %op775, %op779
	add.w $a2, $a2, $a3
# %op782 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op783 = load i32, i32* %op782
	ld.w $a3, $a3, 0
# %op784 = mul i32 %op783, 114
	addi.w $t1, $zero, 114
	mul.w $a3, $a3, $t1
# %op785 = add i32 %op780, %op784
	add.w $a2, $a2, $a3
# %op787 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op788 = load i32, i32* %op787
	ld.w $a3, $a3, 0
# %op789 = mul i32 %op788, 112
	addi.w $t1, $zero, 112
	mul.w $a3, $a3, $t1
# %op790 = add i32 %op785, %op789
	add.w $a2, $a2, $a3
# %op792 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op793 = load i32, i32* %op792
	ld.w $a3, $a3, 0
# %op795 = mul i32 %op793, -10
	addi.w $t1, $zero, -10
	mul.w $a3, $a3, $t1
# %op796 = add i32 %op790, %op795
	add.w $a2, $a2, $a3
# %op798 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op799 = load i32, i32* %op798
	ld.w $a3, $a3, 0
# %op801 = mul i32 %op799, -16
	addi.w $t1, $zero, -16
	mul.w $a3, $a3, $t1
# %op802 = add i32 %op796, %op801
	add.w $a2, $a2, $a3
# %op804 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op805 = load i32, i32* %op804
	ld.w $a3, $a3, 0
# %op807 = mul i32 %op805, -50
	addi.w $t1, $zero, -50
	mul.w $a3, $a3, $t1
# %op808 = add i32 %op802, %op807
	add.w $a2, $a2, $a3
# %op810 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op811 = load i32, i32* %op810
	ld.w $a3, $a3, 0
# %op813 = mul i32 %op811, -112
	addi.w $t1, $zero, -112
	mul.w $a3, $a3, $t1
# %op814 = add i32 %op808, %op813
	add.w $a2, $a2, $a3
# %op816 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op817 = load i32, i32* %op816
	ld.w $a3, $a3, 0
# %op819 = mul i32 %op817, -116
	addi.w $t1, $zero, -116
	mul.w $a3, $a3, $t1
# %op820 = add i32 %op814, %op819
	add.w $a2, $a2, $a3
# %op822 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op823 = load i32, i32* %op822
	ld.w $a3, $a3, 0
# %op825 = mul i32 %op823, -54
	addi.w $t1, $zero, -54
	mul.w $a3, $a3, $t1
# %op826 = add i32 %op820, %op825
	add.w $a2, $a2, $a3
# %op828 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op829 = load i32, i32* %op828
	ld.w $a3, $a3, 0
# %op830 = mul i32 %op829, 82
	addi.w $t1, $zero, 82
	mul.w $a3, $a3, $t1
# %op831 = add i32 %op826, %op830
	add.w $a2, $a2, $a3
# %op833 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op834 = load i32, i32* %op833
	ld.w $a3, $a3, 0
# %op836 = mul i32 %op834, -72
	addi.w $t1, $zero, -72
	mul.w $a3, $a3, $t1
# %op837 = add i32 %op831, %op836
	add.w $a2, $a2, $a3
# %op838 = call i32 @relu_reg(i32 %op837)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -40
	bl relu_reg
	addi.d $a2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op839 = mul i32 %op838, 32
	addi.w $t1, $zero, 32
	mul.w $a2, $a2, $t1
# %op840 = add i32 %op700, %op839
	add.w $a1, $a1, $a2
# %op842 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op843 = load i32, i32* %op842
	ld.w $a2, $a2, 0
# %op844 = mul i32 %op843, 15
	addi.w $t1, $zero, 15
	mul.w $a2, $a2, $t1
# %op846 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op847 = load i32, i32* %op846
	ld.w $a3, $a3, 0
# %op849 = mul i32 %op847, -77
	addi.w $t1, $zero, -77
	mul.w $a3, $a3, $t1
# %op850 = add i32 %op844, %op849
	add.w $a2, $a2, $a3
# %op852 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op853 = load i32, i32* %op852
	ld.w $a3, $a3, 0
# %op854 = mul i32 %op853, 66
	addi.w $t1, $zero, 66
	mul.w $a3, $a3, $t1
# %op855 = add i32 %op850, %op854
	add.w $a2, $a2, $a3
# %op857 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op858 = load i32, i32* %op857
	ld.w $a3, $a3, 0
# %op860 = mul i32 %op858, -90
	addi.w $t1, $zero, -90
	mul.w $a3, $a3, $t1
# %op861 = add i32 %op855, %op860
	add.w $a2, $a2, $a3
# %op863 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op864 = load i32, i32* %op863
	ld.w $a3, $a3, 0
# %op866 = mul i32 %op864, -6
	addi.w $t1, $zero, -6
	mul.w $a3, $a3, $t1
# %op867 = add i32 %op861, %op866
	add.w $a2, $a2, $a3
# %op869 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op870 = load i32, i32* %op869
	ld.w $a3, $a3, 0
# %op872 = mul i32 %op870, -30
	addi.w $t1, $zero, -30
	mul.w $a3, $a3, $t1
# %op873 = add i32 %op867, %op872
	add.w $a2, $a2, $a3
# %op875 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op876 = load i32, i32* %op875
	ld.w $a3, $a3, 0
# %op878 = mul i32 %op876, -8
	addi.w $t1, $zero, -8
	mul.w $a3, $a3, $t1
# %op879 = add i32 %op873, %op878
	add.w $a2, $a2, $a3
# %op881 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op882 = load i32, i32* %op881
	ld.w $a3, $a3, 0
# %op883 = mul i32 %op882, 81
	addi.w $t1, $zero, 81
	mul.w $a3, $a3, $t1
# %op884 = add i32 %op879, %op883
	add.w $a2, $a2, $a3
# %op886 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op887 = load i32, i32* %op886
	ld.w $a3, $a3, 0
# %op888 = mul i32 %op887, 2
	addi.w $t1, $zero, 2
	mul.w $a3, $a3, $t1
# %op889 = add i32 %op884, %op888
	add.w $a2, $a2, $a3
# %op891 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op892 = load i32, i32* %op891
	ld.w $a3, $a3, 0
# %op894 = mul i32 %op892, -110
	addi.w $t1, $zero, -110
	mul.w $a3, $a3, $t1
# %op895 = add i32 %op889, %op894
	add.w $a2, $a2, $a3
# %op897 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op898 = load i32, i32* %op897
	ld.w $a3, $a3, 0
# %op900 = mul i32 %op898, -95
	addi.w $t1, $zero, -95
	mul.w $a3, $a3, $t1
# %op901 = add i32 %op895, %op900
	add.w $a2, $a2, $a3
# %op903 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op904 = load i32, i32* %op903
	ld.w $a3, $a3, 0
# %op905 = mul i32 %op904, 59
	addi.w $t1, $zero, 59
	mul.w $a3, $a3, $t1
# %op906 = add i32 %op901, %op905
	add.w $a2, $a2, $a3
# %op908 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op909 = load i32, i32* %op908
	ld.w $a3, $a3, 0
# %op910 = mul i32 %op909, 52
	addi.w $t1, $zero, 52
	mul.w $a3, $a3, $t1
# %op911 = add i32 %op906, %op910
	add.w $a2, $a2, $a3
# %op913 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op914 = load i32, i32* %op913
	ld.w $a3, $a3, 0
# %op915 = mul i32 %op914, 15
	addi.w $t1, $zero, 15
	mul.w $a3, $a3, $t1
# %op916 = add i32 %op911, %op915
	add.w $a2, $a2, $a3
# %op918 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op919 = load i32, i32* %op918
	ld.w $a3, $a3, 0
# %op920 = mul i32 %op919, 55
	addi.w $t1, $zero, 55
	mul.w $a3, $a3, $t1
# %op921 = add i32 %op916, %op920
	add.w $a2, $a2, $a3
# %op923 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op924 = load i32, i32* %op923
	ld.w $a3, $a3, 0
# %op926 = mul i32 %op924, -33
	addi.w $t1, $zero, -33
	mul.w $a3, $a3, $t1
# %op927 = add i32 %op921, %op926
	add.w $a2, $a2, $a3
# %op929 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op930 = load i32, i32* %op929
	ld.w $a3, $a3, 0
# %op931 = mul i32 %op930, 14
	addi.w $t1, $zero, 14
	mul.w $a3, $a3, $t1
# %op932 = add i32 %op927, %op931
	add.w $a2, $a2, $a3
# %op934 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op935 = load i32, i32* %op934
	ld.w $a3, $a3, 0
# %op936 = mul i32 %op935, 58
	addi.w $t1, $zero, 58
	mul.w $a3, $a3, $t1
# %op937 = add i32 %op932, %op936
	add.w $a2, $a2, $a3
# %op939 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op940 = load i32, i32* %op939
	ld.w $a3, $a3, 0
# %op941 = mul i32 %op940, 67
	addi.w $t1, $zero, 67
	mul.w $a3, $a3, $t1
# %op942 = add i32 %op937, %op941
	add.w $a2, $a2, $a3
# %op944 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op945 = load i32, i32* %op944
	ld.w $a3, $a3, 0
# %op946 = mul i32 %op945, 86
	addi.w $t1, $zero, 86
	mul.w $a3, $a3, $t1
# %op947 = add i32 %op942, %op946
	add.w $a2, $a2, $a3
# %op949 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op950 = load i32, i32* %op949
	ld.w $a3, $a3, 0
# %op952 = mul i32 %op950, -79
	addi.w $t1, $zero, -79
	mul.w $a3, $a3, $t1
# %op953 = add i32 %op947, %op952
	add.w $a2, $a2, $a3
# %op955 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op956 = load i32, i32* %op955
	ld.w $a3, $a3, 0
# %op957 = mul i32 %op956, 48
	addi.w $t1, $zero, 48
	mul.w $a3, $a3, $t1
# %op958 = add i32 %op953, %op957
	add.w $a2, $a2, $a3
# %op960 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op961 = load i32, i32* %op960
	ld.w $a3, $a3, 0
# %op963 = mul i32 %op961, -13
	addi.w $t1, $zero, -13
	mul.w $a3, $a3, $t1
# %op964 = add i32 %op958, %op963
	add.w $a2, $a2, $a3
# %op966 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op967 = load i32, i32* %op966
	ld.w $a3, $a3, 0
# %op969 = mul i32 %op967, -15
	addi.w $t1, $zero, -15
	mul.w $a3, $a3, $t1
# %op970 = add i32 %op964, %op969
	add.w $a2, $a2, $a3
# %op972 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op973 = load i32, i32* %op972
	ld.w $a3, $a3, 0
# %op974 = mul i32 %op973, 66
	addi.w $t1, $zero, 66
	mul.w $a3, $a3, $t1
# %op975 = add i32 %op970, %op974
	add.w $a2, $a2, $a3
# %op976 = call i32 @relu_reg(i32 %op975)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -40
	bl relu_reg
	addi.d $a2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op978 = mul i32 %op976, -95
	addi.w $t1, $zero, -95
	mul.w $a2, $a2, $t1
# %op979 = add i32 %op840, %op978
	add.w $a1, $a1, $a2
# %op981 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op982 = load i32, i32* %op981
	ld.w $a2, $a2, 0
# %op983 = mul i32 %op982, 33
	addi.w $t1, $zero, 33
	mul.w $a2, $a2, $t1
# %op985 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op986 = load i32, i32* %op985
	ld.w $a3, $a3, 0
# %op987 = mul i32 %op986, 82
	addi.w $t1, $zero, 82
	mul.w $a3, $a3, $t1
# %op988 = add i32 %op983, %op987
	add.w $a2, $a2, $a3
# %op990 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op991 = load i32, i32* %op990
	ld.w $a3, $a3, 0
# %op992 = mul i32 %op991, 67
	addi.w $t1, $zero, 67
	mul.w $a3, $a3, $t1
# %op993 = add i32 %op988, %op992
	add.w $a2, $a2, $a3
# %op995 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op996 = load i32, i32* %op995
	ld.w $a3, $a3, 0
# %op997 = mul i32 %op996, 30
	addi.w $t1, $zero, 30
	mul.w $a3, $a3, $t1
# %op998 = add i32 %op993, %op997
	add.w $a2, $a2, $a3
# %op1000 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1001 = load i32, i32* %op1000
	ld.w $a3, $a3, 0
# %op1003 = mul i32 %op1001, -2
	addi.w $t1, $zero, -2
	mul.w $a3, $a3, $t1
# %op1004 = add i32 %op998, %op1003
	add.w $a2, $a2, $a3
# %op1006 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1007 = load i32, i32* %op1006
	ld.w $a3, $a3, 0
# %op1008 = mul i32 %op1007, 65
	addi.w $t1, $zero, 65
	mul.w $a3, $a3, $t1
# %op1009 = add i32 %op1004, %op1008
	add.w $a2, $a2, $a3
# %op1011 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1012 = load i32, i32* %op1011
	ld.w $a3, $a3, 0
# %op1013 = mul i32 %op1012, 120
	addi.w $t1, $zero, 120
	mul.w $a3, $a3, $t1
# %op1014 = add i32 %op1009, %op1013
	add.w $a2, $a2, $a3
# %op1016 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1017 = load i32, i32* %op1016
	ld.w $a3, $a3, 0
# %op1019 = mul i32 %op1017, -13
	addi.w $t1, $zero, -13
	mul.w $a3, $a3, $t1
# %op1020 = add i32 %op1014, %op1019
	add.w $a2, $a2, $a3
# %op1022 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1023 = load i32, i32* %op1022
	ld.w $a3, $a3, 0
# %op1024 = mul i32 %op1023, 18
	addi.w $t1, $zero, 18
	mul.w $a3, $a3, $t1
# %op1025 = add i32 %op1020, %op1024
	add.w $a2, $a2, $a3
# %op1027 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1028 = load i32, i32* %op1027
	ld.w $a3, $a3, 0
# %op1029 = mul i32 %op1028, 5
	addi.w $t1, $zero, 5
	mul.w $a3, $a3, $t1
# %op1030 = add i32 %op1025, %op1029
	add.w $a2, $a2, $a3
# %op1032 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1033 = load i32, i32* %op1032
	ld.w $a3, $a3, 0
# %op1034 = mul i32 %op1033, 104
	addi.w $t1, $zero, 104
	mul.w $a3, $a3, $t1
# %op1035 = add i32 %op1030, %op1034
	add.w $a2, $a2, $a3
# %op1037 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1038 = load i32, i32* %op1037
	ld.w $a3, $a3, 0
# %op1040 = mul i32 %op1038, -119
	addi.w $t1, $zero, -119
	mul.w $a3, $a3, $t1
# %op1041 = add i32 %op1035, %op1040
	add.w $a2, $a2, $a3
# %op1043 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1044 = load i32, i32* %op1043
	ld.w $a3, $a3, 0
# %op1046 = mul i32 %op1044, -7
	addi.w $t1, $zero, -7
	mul.w $a3, $a3, $t1
# %op1047 = add i32 %op1041, %op1046
	add.w $a2, $a2, $a3
# %op1049 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1050 = load i32, i32* %op1049
	ld.w $a3, $a3, 0
# %op1051 = mul i32 %op1050, 71
	addi.w $t1, $zero, 71
	mul.w $a3, $a3, $t1
# %op1052 = add i32 %op1047, %op1051
	add.w $a2, $a2, $a3
# %op1054 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1055 = load i32, i32* %op1054
	ld.w $a3, $a3, 0
# %op1056 = mul i32 %op1055, 107
	addi.w $t1, $zero, 107
	mul.w $a3, $a3, $t1
# %op1057 = add i32 %op1052, %op1056
	add.w $a2, $a2, $a3
# %op1059 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1060 = load i32, i32* %op1059
	ld.w $a3, $a3, 0
# %op1061 = mul i32 %op1060, 24
	addi.w $t1, $zero, 24
	mul.w $a3, $a3, $t1
# %op1062 = add i32 %op1057, %op1061
	add.w $a2, $a2, $a3
# %op1064 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1065 = load i32, i32* %op1064
	ld.w $a3, $a3, 0
# %op1066 = mul i32 %op1065, 82
	addi.w $t1, $zero, 82
	mul.w $a3, $a3, $t1
# %op1067 = add i32 %op1062, %op1066
	add.w $a2, $a2, $a3
# %op1069 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1070 = load i32, i32* %op1069
	ld.w $a3, $a3, 0
# %op1072 = mul i32 %op1070, -96
	addi.w $t1, $zero, -96
	mul.w $a3, $a3, $t1
# %op1073 = add i32 %op1067, %op1072
	add.w $a2, $a2, $a3
# %op1075 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1076 = load i32, i32* %op1075
	ld.w $a3, $a3, 0
# %op1078 = mul i32 %op1076, -104
	addi.w $t1, $zero, -104
	mul.w $a3, $a3, $t1
# %op1079 = add i32 %op1073, %op1078
	add.w $a2, $a2, $a3
# %op1081 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1082 = load i32, i32* %op1081
	ld.w $a3, $a3, 0
# %op1084 = mul i32 %op1082, -121
	addi.w $t1, $zero, -121
	mul.w $a3, $a3, $t1
# %op1085 = add i32 %op1079, %op1084
	add.w $a2, $a2, $a3
# %op1087 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1088 = load i32, i32* %op1087
	ld.w $a3, $a3, 0
# %op1089 = mul i32 %op1088, 65
	addi.w $t1, $zero, 65
	mul.w $a3, $a3, $t1
# %op1090 = add i32 %op1085, %op1089
	add.w $a2, $a2, $a3
# %op1092 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1093 = load i32, i32* %op1092
	ld.w $a3, $a3, 0
# %op1094 = mul i32 %op1093, 97
	addi.w $t1, $zero, 97
	mul.w $a3, $a3, $t1
# %op1095 = add i32 %op1090, %op1094
	add.w $a2, $a2, $a3
# %op1097 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1098 = load i32, i32* %op1097
	ld.w $a3, $a3, 0
# %op1099 = mul i32 %op1098, 83
	addi.w $t1, $zero, 83
	mul.w $a3, $a3, $t1
# %op1100 = add i32 %op1095, %op1099
	add.w $a2, $a2, $a3
# %op1102 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1103 = load i32, i32* %op1102
	ld.w $a3, $a3, 0
# %op1104 = mul i32 %op1103, 46
	addi.w $t1, $zero, 46
	mul.w $a3, $a3, $t1
# %op1105 = add i32 %op1100, %op1104
	add.w $a2, $a2, $a3
# %op1107 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1108 = load i32, i32* %op1107
	ld.w $a3, $a3, 0
# %op1110 = mul i32 %op1108, -84
	addi.w $t1, $zero, -84
	mul.w $a3, $a3, $t1
# %op1111 = add i32 %op1105, %op1110
	add.w $a2, $a2, $a3
# %op1112 = call i32 @relu_reg(i32 %op1111)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -40
	bl relu_reg
	addi.d $a2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op1114 = mul i32 %op1112, -50
	addi.w $t1, $zero, -50
	mul.w $a2, $a2, $t1
# %op1115 = add i32 %op979, %op1114
	add.w $a1, $a1, $a2
# %op1117 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op1118 = load i32, i32* %op1117
	ld.w $a2, $a2, 0
# %op1120 = mul i32 %op1118, -29
	addi.w $t1, $zero, -29
	mul.w $a2, $a2, $t1
# %op1122 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1123 = load i32, i32* %op1122
	ld.w $a3, $a3, 0
# %op1124 = mul i32 %op1123, 7
	addi.w $t1, $zero, 7
	mul.w $a3, $a3, $t1
# %op1125 = add i32 %op1120, %op1124
	add.w $a2, $a2, $a3
# %op1127 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1128 = load i32, i32* %op1127
	ld.w $a3, $a3, 0
# %op1130 = mul i32 %op1128, -70
	addi.w $t1, $zero, -70
	mul.w $a3, $a3, $t1
# %op1131 = add i32 %op1125, %op1130
	add.w $a2, $a2, $a3
# %op1133 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1134 = load i32, i32* %op1133
	ld.w $a3, $a3, 0
# %op1135 = mul i32 %op1134, 38
	addi.w $t1, $zero, 38
	mul.w $a3, $a3, $t1
# %op1136 = add i32 %op1131, %op1135
	add.w $a2, $a2, $a3
# %op1138 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1139 = load i32, i32* %op1138
	ld.w $a3, $a3, 0
# %op1141 = mul i32 %op1139, -90
	addi.w $t1, $zero, -90
	mul.w $a3, $a3, $t1
# %op1142 = add i32 %op1136, %op1141
	add.w $a2, $a2, $a3
# %op1144 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1145 = load i32, i32* %op1144
	ld.w $a3, $a3, 0
# %op1147 = mul i32 %op1145, -15
	addi.w $t1, $zero, -15
	mul.w $a3, $a3, $t1
# %op1148 = add i32 %op1142, %op1147
	add.w $a2, $a2, $a3
# %op1150 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1151 = load i32, i32* %op1150
	ld.w $a3, $a3, 0
# %op1153 = mul i32 %op1151, -32
	addi.w $t1, $zero, -32
	mul.w $a3, $a3, $t1
# %op1154 = add i32 %op1148, %op1153
	add.w $a2, $a2, $a3
# %op1156 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1157 = load i32, i32* %op1156
	ld.w $a3, $a3, 0
# %op1158 = mul i32 %op1157, 37
	addi.w $t1, $zero, 37
	mul.w $a3, $a3, $t1
# %op1159 = add i32 %op1154, %op1158
	add.w $a2, $a2, $a3
# %op1161 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1162 = load i32, i32* %op1161
	ld.w $a3, $a3, 0
# %op1163 = mul i32 %op1162, 36
	addi.w $t1, $zero, 36
	mul.w $a3, $a3, $t1
# %op1164 = add i32 %op1159, %op1163
	add.w $a2, $a2, $a3
# %op1166 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1167 = load i32, i32* %op1166
	ld.w $a3, $a3, 0
# %op1169 = mul i32 %op1167, -62
	addi.w $t1, $zero, -62
	mul.w $a3, $a3, $t1
# %op1170 = add i32 %op1164, %op1169
	add.w $a2, $a2, $a3
# %op1172 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1173 = load i32, i32* %op1172
	ld.w $a3, $a3, 0
# %op1175 = mul i32 %op1173, -125
	addi.w $t1, $zero, -125
	mul.w $a3, $a3, $t1
# %op1176 = add i32 %op1170, %op1175
	add.w $a2, $a2, $a3
# %op1178 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1179 = load i32, i32* %op1178
	ld.w $a3, $a3, 0
# %op1181 = mul i32 %op1179, -46
	addi.w $t1, $zero, -46
	mul.w $a3, $a3, $t1
# %op1182 = add i32 %op1176, %op1181
	add.w $a2, $a2, $a3
# %op1184 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1185 = load i32, i32* %op1184
	ld.w $a3, $a3, 0
# %op1187 = mul i32 %op1185, -70
	addi.w $t1, $zero, -70
	mul.w $a3, $a3, $t1
# %op1188 = add i32 %op1182, %op1187
	add.w $a2, $a2, $a3
# %op1190 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1191 = load i32, i32* %op1190
	ld.w $a3, $a3, 0
# %op1192 = mul i32 %op1191, 37
	addi.w $t1, $zero, 37
	mul.w $a3, $a3, $t1
# %op1193 = add i32 %op1188, %op1192
	add.w $a2, $a2, $a3
# %op1195 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1196 = load i32, i32* %op1195
	ld.w $a3, $a3, 0
# %op1198 = mul i32 %op1196, -73
	addi.w $t1, $zero, -73
	mul.w $a3, $a3, $t1
# %op1199 = add i32 %op1193, %op1198
	add.w $a2, $a2, $a3
# %op1201 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1202 = load i32, i32* %op1201
	ld.w $a3, $a3, 0
# %op1204 = mul i32 %op1202, -34
	addi.w $t1, $zero, -34
	mul.w $a3, $a3, $t1
# %op1205 = add i32 %op1199, %op1204
	add.w $a2, $a2, $a3
# %op1207 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1208 = load i32, i32* %op1207
	ld.w $a3, $a3, 0
# %op1210 = mul i32 %op1208, -87
	addi.w $t1, $zero, -87
	mul.w $a3, $a3, $t1
# %op1211 = add i32 %op1205, %op1210
	add.w $a2, $a2, $a3
# %op1213 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1214 = load i32, i32* %op1213
	ld.w $a3, $a3, 0
# %op1216 = mul i32 %op1214, -75
	addi.w $t1, $zero, -75
	mul.w $a3, $a3, $t1
# %op1217 = add i32 %op1211, %op1216
	add.w $a2, $a2, $a3
# %op1219 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1220 = load i32, i32* %op1219
	ld.w $a3, $a3, 0
# %op1221 = mul i32 %op1220, 71
	addi.w $t1, $zero, 71
	mul.w $a3, $a3, $t1
# %op1222 = add i32 %op1217, %op1221
	add.w $a2, $a2, $a3
# %op1224 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1225 = load i32, i32* %op1224
	ld.w $a3, $a3, 0
# %op1227 = mul i32 %op1225, -77
	addi.w $t1, $zero, -77
	mul.w $a3, $a3, $t1
# %op1228 = add i32 %op1222, %op1227
	add.w $a2, $a2, $a3
# %op1230 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1231 = load i32, i32* %op1230
	ld.w $a3, $a3, 0
# %op1232 = mul i32 %op1231, 53
	addi.w $t1, $zero, 53
	mul.w $a3, $a3, $t1
# %op1233 = add i32 %op1228, %op1232
	add.w $a2, $a2, $a3
# %op1235 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1236 = load i32, i32* %op1235
	ld.w $a3, $a3, 0
# %op1237 = mul i32 %op1236, 37
	addi.w $t1, $zero, 37
	mul.w $a3, $a3, $t1
# %op1238 = add i32 %op1233, %op1237
	add.w $a2, $a2, $a3
# %op1240 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1241 = load i32, i32* %op1240
	ld.w $a3, $a3, 0
# %op1243 = mul i32 %op1241, -103
	addi.w $t1, $zero, -103
	mul.w $a3, $a3, $t1
# %op1244 = add i32 %op1238, %op1243
	add.w $a2, $a2, $a3
# %op1246 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1247 = load i32, i32* %op1246
	ld.w $a3, $a3, 0
# %op1249 = mul i32 %op1247, -13
	addi.w $t1, $zero, -13
	mul.w $a3, $a3, $t1
# %op1250 = add i32 %op1244, %op1249
	add.w $a2, $a2, $a3
# %op1252 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1253 = load i32, i32* %op1252
	ld.w $a3, $a3, 0
# %op1255 = mul i32 %op1253, -114
	addi.w $t1, $zero, -114
	mul.w $a3, $a3, $t1
# %op1256 = add i32 %op1250, %op1255
	add.w $a2, $a2, $a3
# %op1257 = call i32 @relu_reg(i32 %op1256)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -40
	bl relu_reg
	addi.d $a2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op1259 = mul i32 %op1257, -23
	addi.w $t1, $zero, -23
	mul.w $a2, $a2, $t1
# %op1260 = add i32 %op1115, %op1259
	add.w $a1, $a1, $a2
# %op1262 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op1263 = load i32, i32* %op1262
	ld.w $a2, $a2, 0
# %op1264 = mul i32 %op1263, 67
	addi.w $t1, $zero, 67
	mul.w $a2, $a2, $t1
# %op1266 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1267 = load i32, i32* %op1266
	ld.w $a3, $a3, 0
# %op1268 = mul i32 %op1267, 42
	addi.w $t1, $zero, 42
	mul.w $a3, $a3, $t1
# %op1269 = add i32 %op1264, %op1268
	add.w $a2, $a2, $a3
# %op1271 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1272 = load i32, i32* %op1271
	ld.w $a3, $a3, 0
# %op1273 = mul i32 %op1272, 41
	addi.w $t1, $zero, 41
	mul.w $a3, $a3, $t1
# %op1274 = add i32 %op1269, %op1273
	add.w $a2, $a2, $a3
# %op1276 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1277 = load i32, i32* %op1276
	ld.w $a3, $a3, 0
# %op1279 = mul i32 %op1277, -123
	addi.w $t1, $zero, -123
	mul.w $a3, $a3, $t1
# %op1280 = add i32 %op1274, %op1279
	add.w $a2, $a2, $a3
# %op1282 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1283 = load i32, i32* %op1282
	ld.w $a3, $a3, 0
# %op1285 = mul i32 %op1283, -92
	addi.w $t1, $zero, -92
	mul.w $a3, $a3, $t1
# %op1286 = add i32 %op1280, %op1285
	add.w $a2, $a2, $a3
# %op1288 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1289 = load i32, i32* %op1288
	ld.w $a3, $a3, 0
# %op1290 = mul i32 %op1289, 10
	addi.w $t1, $zero, 10
	mul.w $a3, $a3, $t1
# %op1291 = add i32 %op1286, %op1290
	add.w $a2, $a2, $a3
# %op1293 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1294 = load i32, i32* %op1293
	ld.w $a3, $a3, 0
# %op1296 = mul i32 %op1294, -77
	addi.w $t1, $zero, -77
	mul.w $a3, $a3, $t1
# %op1297 = add i32 %op1291, %op1296
	add.w $a2, $a2, $a3
# %op1299 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1300 = load i32, i32* %op1299
	ld.w $a3, $a3, 0
# %op1301 = mul i32 %op1300, 75
	addi.w $t1, $zero, 75
	mul.w $a3, $a3, $t1
# %op1302 = add i32 %op1297, %op1301
	add.w $a2, $a2, $a3
# %op1304 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1305 = load i32, i32* %op1304
	ld.w $a3, $a3, 0
# %op1306 = mul i32 %op1305, 96
	addi.w $t1, $zero, 96
	mul.w $a3, $a3, $t1
# %op1307 = add i32 %op1302, %op1306
	add.w $a2, $a2, $a3
# %op1309 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 1, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1310 = load i32, i32* %op1309
	ld.w $a3, $a3, 0
# %op1312 = mul i32 %op1310, -51
	addi.w $t1, $zero, -51
	mul.w $a3, $a3, $t1
# %op1313 = add i32 %op1307, %op1312
	add.w $a2, $a2, $a3
# %op1315 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1316 = load i32, i32* %op1315
	ld.w $a3, $a3, 0
# %op1317 = mul i32 %op1316, 109
	addi.w $t1, $zero, 109
	mul.w $a3, $a3, $t1
# %op1318 = add i32 %op1313, %op1317
	add.w $a2, $a2, $a3
# %op1320 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1321 = load i32, i32* %op1320
	ld.w $a3, $a3, 0
# %op1323 = mul i32 %op1321, -74
	addi.w $t1, $zero, -74
	mul.w $a3, $a3, $t1
# %op1324 = add i32 %op1318, %op1323
	add.w $a2, $a2, $a3
# %op1326 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1327 = load i32, i32* %op1326
	ld.w $a3, $a3, 0
# %op1329 = mul i32 %op1327, -7
	addi.w $t1, $zero, -7
	mul.w $a3, $a3, $t1
# %op1330 = add i32 %op1324, %op1329
	add.w $a2, $a2, $a3
# %op1332 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1333 = load i32, i32* %op1332
	ld.w $a3, $a3, 0
# %op1335 = mul i32 %op1333, -122
	addi.w $t1, $zero, -122
	mul.w $a3, $a3, $t1
# %op1336 = add i32 %op1330, %op1335
	add.w $a2, $a2, $a3
# %op1338 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 2, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1339 = load i32, i32* %op1338
	ld.w $a3, $a3, 0
# %op1340 = mul i32 %op1339, 67
	addi.w $t1, $zero, 67
	mul.w $a3, $a3, $t1
# %op1341 = add i32 %op1336, %op1340
	add.w $a2, $a2, $a3
# %op1343 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1344 = load i32, i32* %op1343
	ld.w $a3, $a3, 0
# %op1345 = mul i32 %op1344, 47
	addi.w $t1, $zero, 47
	mul.w $a3, $a3, $t1
# %op1346 = add i32 %op1341, %op1345
	add.w $a2, $a2, $a3
# %op1348 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1349 = load i32, i32* %op1348
	ld.w $a3, $a3, 0
# %op1350 = mul i32 %op1349, 22
	addi.w $t1, $zero, 22
	mul.w $a3, $a3, $t1
# %op1351 = add i32 %op1346, %op1350
	add.w $a2, $a2, $a3
# %op1353 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1354 = load i32, i32* %op1353
	ld.w $a3, $a3, 0
# %op1356 = mul i32 %op1354, -68
	addi.w $t1, $zero, -68
	mul.w $a3, $a3, $t1
# %op1357 = add i32 %op1351, %op1356
	add.w $a2, $a2, $a3
# %op1359 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1360 = load i32, i32* %op1359
	ld.w $a3, $a3, 0
# %op1361 = mul i32 %op1360, 38
	addi.w $t1, $zero, 38
	mul.w $a3, $a3, $t1
# %op1362 = add i32 %op1357, %op1361
	add.w $a2, $a2, $a3
# %op1364 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 3, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1365 = load i32, i32* %op1364
	ld.w $a3, $a3, 0
# %op1366 = mul i32 %op1365, 29
	addi.w $t1, $zero, 29
	mul.w $a3, $a3, $t1
# %op1367 = add i32 %op1362, %op1366
	add.w $a2, $a2, $a3
# %op1369 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1370 = load i32, i32* %op1369
	ld.w $a3, $a3, 0
# %op1371 = mul i32 %op1370, 115
	addi.w $t1, $zero, 115
	mul.w $a3, $a3, $t1
# %op1372 = add i32 %op1367, %op1371
	add.w $a2, $a2, $a3
# %op1374 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1375 = load i32, i32* %op1374
	ld.w $a3, $a3, 0
# %op1377 = mul i32 %op1375, -121
	addi.w $t1, $zero, -121
	mul.w $a3, $a3, $t1
# %op1378 = add i32 %op1372, %op1377
	add.w $a2, $a2, $a3
# %op1380 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1381 = load i32, i32* %op1380
	ld.w $a3, $a3, 0
# %op1382 = mul i32 %op1381, 36
	addi.w $t1, $zero, 36
	mul.w $a3, $a3, $t1
# %op1383 = add i32 %op1378, %op1382
	add.w $a2, $a2, $a3
# %op1385 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op1386 = load i32, i32* %op1385
	ld.w $a3, $a3, 0
# %op1388 = mul i32 %op1386, -49
	addi.w $t1, $zero, -49
	mul.w $a3, $a3, $t1
# %op1389 = add i32 %op1383, %op1388
	add.w $a2, $a2, $a3
# %op1391 = getelementptr [5 x i32], [5 x i32]* %arg0, i32 4, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a0,$a0,$t0
# %op1392 = load i32, i32* %op1391
	ld.w $a0, $a0, 0
# %op1393 = mul i32 %op1392, 85
	addi.w $t1, $zero, 85
	mul.w $a0, $a0, $t1
# %op1394 = add i32 %op1389, %op1393
	add.w $a0, $a2, $a0
# %op1395 = call i32 @relu_reg(i32 %op1394)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -24
	bl relu_reg
	addi.d $a0,$a0,0
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op1396 = mul i32 %op1395, 46
	addi.w $t1, $zero, 46
	mul.w $a0, $a0, $t1
# %op1397 = add i32 %op1260, %op1396
	add.w $a0, $a1, $a0
# %op1398 = icmp sgt i32 %op1397, 0
	addi.w $t1, $zero, 0
	slt $a0,$t1,$a0
# br i1 %op1398, label %label1399, label %label1400
	addi.w $t0,$zero,0
	blt $t0,$a0,.model_label1399
	b .model_label1400
.model_label1399:
# ret i32 1
	addi.w $t0, $zero, 1
	or $a0, $zero, $t0
	b model_exit
.model_label1400:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b model_exit
model_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -416
	st.d $ra, $sp, 408
	st.d $fp, $sp, 400
	addi.d $fp, $sp, 416
.main_label_entry:
# %op2 = alloca [5 x [5 x i32]]
	lu12i.w $t0, 0
	ori $t0, $t0, 404
	sub.d $a0,$fp,$t0
# %op1 = call i32 @getint()
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	bl getint
	addi.d $a1,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# br label %label3
	st.d $a1, $fp, -412
	ld.d $a2, $fp, -412
	b .main_label3
.main_label3:
# %op38 = phi i32 [ %op1, %label_entry ], [ %op35, %label33 ]
# %op5 = icmp sgt i32 %op38, 0
	addi.w $t1, $zero, 0
	slt $a1,$t1,$a2
# br i1 %op5, label %label6, label %label8
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label6
	b .main_label8
.main_label6:
# br label %label9
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -412
	ld.d $a1, $fp, -412
	b .main_label9
.main_label8:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
.main_label9:
# %op40 = phi i32 [ 0, %label6 ], [ %op30, %label28 ]
# %op11 = icmp slt i32 %op40, 5
	addi.w $t1, $zero, 5
	slt $a3,$a1,$t1
# br i1 %op11, label %label12, label %label14
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label12
	b .main_label14
.main_label12:
# br label %label18
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -412
	ld.d $a3, $fp, -412
	b .main_label18
.main_label14:
# %op15 = getelementptr [5 x [5 x i32]], [5 x [5 x i32]]* %op2, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 100
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 20
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op16 = call i32 @model([5 x i32]* %op15)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	ld.d $a0, $fp, -32
	bl model
	addi.d $a1,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op17 = icmp ne i32 0, %op16
	addi.w $t0, $zero, 0
	slt $t8,$a1,$t0
	slt $t0,$t0,$a1
	or $a1,$t0,$t8
# br i1 %op17, label %label31, label %label32
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label31
	b .main_label32
.main_label18:
# %op41 = phi i32 [ 0, %label12 ], [ %op27, %label21 ]
# %op20 = icmp slt i32 %op41, 5
	addi.w $t1, $zero, 5
	slt $a4,$a3,$t1
# br i1 %op20, label %label21, label %label28
	addi.w $t0,$zero,0
	blt $t0,$a4,.main_label21
	b .main_label28
.main_label21:
# %op22 = call i32 @getint()
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	bl getint
	addi.d $a4,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# %op25 = getelementptr [5 x [5 x i32]], [5 x [5 x i32]]* %op2, i32 0, i32 %op40, i32 %op41
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 100
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 20
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a0,$t0
# store i32 %op22, i32* %op25
	st.w $a4, $a5, 0
# %op27 = add i32 %op41, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label18
	st.d $a4, $fp, -412
	ld.d $a3, $fp, -412
	b .main_label18
.main_label28:
# %op30 = add i32 %op40, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a1, $t1
# br label %label9
	st.d $a3, $fp, -412
	ld.d $a1, $fp, -412
	b .main_label9
.main_label31:
# call void @putch(i32 99)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	addi.w $a0, $zero, 99
	bl putch
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# call void @putch(i32 97)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	addi.w $a0, $zero, 97
	bl putch
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# call void @putch(i32 116)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	addi.w $a0, $zero, 116
	bl putch
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# call void @putch(i32 10)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	addi.w $a0, $zero, 10
	bl putch
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# br label %label33
	b .main_label33
.main_label32:
# call void @putch(i32 100)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	addi.w $a0, $zero, 100
	bl putch
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# call void @putch(i32 111)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	addi.w $a0, $zero, 111
	bl putch
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# call void @putch(i32 103)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	addi.w $a0, $zero, 103
	bl putch
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# call void @putch(i32 10)
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	st.d $t2, $fp, -88
	st.d $t3, $fp, -96
	st.d $t4, $fp, -104
	st.d $t5, $fp, -112
	st.d $t6, $fp, -120
	st.d $t7, $fp, -128
	fst.s $fa0, $fp, -136
	fst.s $fa1, $fp, -144
	fst.s $fa2, $fp, -152
	fst.s $fa3, $fp, -160
	fst.s $fa4, $fp, -168
	fst.s $fa5, $fp, -176
	fst.s $fa6, $fp, -184
	fst.s $fa7, $fp, -192
	fst.s $ft2, $fp, -200
	fst.s $ft3, $fp, -208
	fst.s $ft4, $fp, -216
	fst.s $ft5, $fp, -224
	fst.s $ft6, $fp, -232
	fst.s $ft7, $fp, -240
	fst.s $ft8, $fp, -248
	fst.s $ft9, $fp, -256
	fst.s $ft10, $fp, -264
	fst.s $ft11, $fp, -272
	fst.s $ft12, $fp, -280
	fst.s $ft13, $fp, -288
	fst.s $ft14, $fp, -296
	fst.s $ft15, $fp, -304
	addi.w $a0, $zero, 10
	bl putch
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
	ld.d $t3, $fp, -96
	ld.d $t4, $fp, -104
	ld.d $t5, $fp, -112
	ld.d $t6, $fp, -120
	ld.d $t7, $fp, -128
	fld.s $fa0, $fp, -136
	fld.s $fa1, $fp, -144
	fld.s $fa2, $fp, -152
	fld.s $fa3, $fp, -160
	fld.s $fa4, $fp, -168
	fld.s $fa5, $fp, -176
	fld.s $fa6, $fp, -184
	fld.s $fa7, $fp, -192
	fld.s $ft2, $fp, -200
	fld.s $ft3, $fp, -208
	fld.s $ft4, $fp, -216
	fld.s $ft5, $fp, -224
	fld.s $ft6, $fp, -232
	fld.s $ft7, $fp, -240
	fld.s $ft8, $fp, -248
	fld.s $ft9, $fp, -256
	fld.s $ft10, $fp, -264
	fld.s $ft11, $fp, -272
	fld.s $ft12, $fp, -280
	fld.s $ft13, $fp, -288
	fld.s $ft14, $fp, -296
	fld.s $ft15, $fp, -304
# br label %label33
	b .main_label33
.main_label33:
# %op35 = sub i32 %op38, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a2, $t1
# br label %label3
	st.d $a1, $fp, -412
	ld.d $a2, $fp, -412
	b .main_label3
main_exit:
	# epilog
	ld.d $ra, $sp, 408
	ld.d $fp, $sp, 400
	addi.d $sp, $sp, 416
	jr $ra
