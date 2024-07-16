# Global variables
	.text
	.data
	.globl n
	.align 2
	.type n, @object
	.size n, 4
n:
	.word 0
	.text
	.align 2
	.globl counting_sort
	.type counting_sort, @function
counting_sort:
	addi.d $sp, $sp, -352
	st.d $ra, $sp, 344
	st.d $fp, $sp, 336
	addi.d $fp, $sp, 352
.counting_sort_label_entry:
# %op6 = alloca [10 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 344
	sub.d $a3,$fp,$t0
# br label %label10
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -352
	ld.d $a4, $fp, -352
	b .counting_sort_label10
.counting_sort_label10:
# %op92 = phi i32 [ 0, %label_entry ], [ %op17, %label13 ]
# %op12 = icmp slt i32 %op92, 10
	addi.w $t1, $zero, 10
	slt $a5,$a4,$t1
# br i1 %op12, label %label13, label %label18
	addi.w $t0,$zero,0
	blt $t0,$a5,.counting_sort_label13
	b .counting_sort_label18
.counting_sort_label13:
# %op15 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op92
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 0, i32* %op15
	addi.w $t0, $zero, 0
	st.w $t0, $a5, 0
# %op17 = add i32 %op92, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# br label %label10
	st.d $a5, $fp, -352
	ld.d $a4, $fp, -352
	b .counting_sort_label10
.counting_sort_label18:
# br label %label19
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -352
	ld.d $a4, $fp, -352
	b .counting_sort_label19
.counting_sort_label19:
# %op93 = phi i32 [ 0, %label18 ], [ %op37, %label23 ]
# %op22 = icmp slt i32 %op93, %arg2
	slt $a5,$a4,$a2
# br i1 %op22, label %label23, label %label38
	addi.w $t0,$zero,0
	blt $t0,$a5,.counting_sort_label23
	b .counting_sort_label38
.counting_sort_label23:
# %op26 = getelementptr i32, i32* %arg0, i32 %op93
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# %op27 = load i32, i32* %op26
	ld.w $a5, $a5, 0
# %op28 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op27
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# %op29 = load i32, i32* %op28
	ld.w $a5, $a5, 0
# %op30 = add i32 %op29, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a5, $t1
# %op33 = getelementptr i32, i32* %arg0, i32 %op93
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a6,$t8,$a0
# %op34 = load i32, i32* %op33
	ld.w $a6, $a6, 0
# %op35 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op34
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a3,$t0
# store i32 %op30, i32* %op35
	st.w $a5, $a6, 0
# %op37 = add i32 %op93, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# br label %label19
	st.d $a5, $fp, -352
	ld.d $a4, $fp, -352
	b .counting_sort_label19
.counting_sort_label38:
# br label %label39
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -352
	ld.d $a4, $fp, -352
	b .counting_sort_label39
.counting_sort_label39:
# %op94 = phi i32 [ 1, %label38 ], [ %op54, %label42 ]
# %op41 = icmp slt i32 %op94, 10
	addi.w $t1, $zero, 10
	slt $a5,$a4,$t1
# br i1 %op41, label %label42, label %label55
	addi.w $t0,$zero,0
	blt $t0,$a5,.counting_sort_label42
	b .counting_sort_label55
.counting_sort_label42:
# %op44 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op94
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# %op45 = load i32, i32* %op44
	ld.w $a5, $a5, 0
# %op47 = sub i32 %op94, 1
	addi.w $t1, $zero, 1
	sub.w $a6, $a4, $t1
# %op48 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op47
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a3,$t0
# %op49 = load i32, i32* %op48
	ld.w $a6, $a6, 0
# %op50 = add i32 %op45, %op49
	add.w $a5, $a5, $a6
# %op52 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op94
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a3,$t0
# store i32 %op50, i32* %op52
	st.w $a5, $a6, 0
# %op54 = add i32 %op94, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# br label %label39
	st.d $a5, $fp, -352
	ld.d $a4, $fp, -352
	b .counting_sort_label39
.counting_sort_label55:
# br label %label57
	st.d $a2, $fp, -352
	ld.d $a4, $fp, -352
	b .counting_sort_label57
.counting_sort_label57:
# %op95 = phi i32 [ %arg2, %label55 ], [ %op90, %label60 ]
# %op59 = icmp sgt i32 %op95, 0
	addi.w $t1, $zero, 0
	slt $a2,$t1,$a4
# br i1 %op59, label %label60, label %label91
	addi.w $t0,$zero,0
	blt $t0,$a2,.counting_sort_label60
	b .counting_sort_label91
.counting_sort_label60:
# %op63 = sub i32 %op95, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a4, $t1
# %op64 = getelementptr i32, i32* %arg0, i32 %op63
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a0
# %op65 = load i32, i32* %op64
	ld.w $a2, $a2, 0
# %op66 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op65
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a3,$t0
# %op67 = load i32, i32* %op66
	ld.w $a2, $a2, 0
# %op68 = sub i32 %op67, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a2, $t1
# %op71 = sub i32 %op95, 1
	addi.w $t1, $zero, 1
	sub.w $a5, $a4, $t1
# %op72 = getelementptr i32, i32* %arg0, i32 %op71
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# %op73 = load i32, i32* %op72
	ld.w $a5, $a5, 0
# %op74 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op73
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 %op68, i32* %op74
	st.w $a2, $a5, 0
# %op77 = sub i32 %op95, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a4, $t1
# %op78 = getelementptr i32, i32* %arg0, i32 %op77
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a0
# %op79 = load i32, i32* %op78
	ld.w $a2, $a2, 0
# %op83 = sub i32 %op95, 1
	addi.w $t1, $zero, 1
	sub.w $a5, $a4, $t1
# %op84 = getelementptr i32, i32* %arg0, i32 %op83
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# %op85 = load i32, i32* %op84
	ld.w $a5, $a5, 0
# %op86 = getelementptr [10 x i32], [10 x i32]* %op6, i32 0, i32 %op85
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# %op87 = load i32, i32* %op86
	ld.w $a5, $a5, 0
# %op88 = getelementptr i32, i32* %arg1, i32 %op87
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a1
# store i32 %op79, i32* %op88
	st.w $a2, $a5, 0
# %op90 = sub i32 %op95, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a4, $t1
# br label %label57
	st.d $a2, $fp, -352
	ld.d $a4, $fp, -352
	b .counting_sort_label57
.counting_sort_label91:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b counting_sort_exit
counting_sort_exit:
	# epilog
	ld.d $ra, $sp, 344
	ld.d $fp, $sp, 336
	addi.d $sp, $sp, 352
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -400
	st.d $ra, $sp, 392
	st.d $fp, $sp, 384
	addi.d $fp, $sp, 400
.main_label_entry:
# %op12 = alloca [10 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 344
	sub.d $a0,$fp,$t0
# %op0 = alloca [10 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 384
	sub.d $a1,$fp,$t0
# store i32 10, i32* @n
	la.local $t1, n
	addi.w $t0, $zero, 10
	st.w $t0, $t1, 0
# %op1 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 4, i32* %op1
	addi.w $t0, $zero, 4
	st.w $t0, $a2, 0
# %op2 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 3, i32* %op2
	addi.w $t0, $zero, 3
	st.w $t0, $a2, 0
# %op3 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 9, i32* %op3
	addi.w $t0, $zero, 9
	st.w $t0, $a2, 0
# %op4 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 2, i32* %op4
	addi.w $t0, $zero, 2
	st.w $t0, $a2, 0
# %op5 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 0, i32* %op5
	addi.w $t0, $zero, 0
	st.w $t0, $a2, 0
# %op6 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 5
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 1, i32* %op6
	addi.w $t0, $zero, 1
	st.w $t0, $a2, 0
# %op7 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 6
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 6
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 6, i32* %op7
	addi.w $t0, $zero, 6
	st.w $t0, $a2, 0
# %op8 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 7
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 7
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 5, i32* %op8
	addi.w $t0, $zero, 5
	st.w $t0, $a2, 0
# %op9 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 8
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 8
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 7, i32* %op9
	addi.w $t0, $zero, 7
	st.w $t0, $a2, 0
# %op10 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 9
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 9
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 8, i32* %op10
	addi.w $t0, $zero, 8
	st.w $t0, $a2, 0
# %op13 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a1,$t0
# %op14 = getelementptr [10 x i32], [10 x i32]* %op12, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op15 = load i32, i32* @n
	la.local $t0, n
	ld.w $a3, $t0, 0
# %op16 = call i32 @counting_sort(i32* %op13, i32* %op14, i32 %op15)
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
	ld.d $a1, $fp, -40
	ld.d $a2, $fp, -48
	bl counting_sort
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
# br label %label17
	st.d $a1, $fp, -392
	ld.d $a2, $fp, -392
	b .main_label17
.main_label17:
# %op32 = phi i32 [ %op16, %label_entry ], [ %op29, %label21 ]
# %op19 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op20 = icmp slt i32 %op32, %op19
	slt $a1,$a2,$a1
# br i1 %op20, label %label21, label %label30
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label21
	b .main_label30
.main_label21:
# %op24 = getelementptr [10 x i32], [10 x i32]* %op12, i32 0, i32 %op32
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op25 = load i32, i32* %op24
	ld.w $a1, $a1, 0
# call void @putint(i32 %op25)
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
	bl putint
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
# %op29 = add i32 %op32, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a2, $t1
# br label %label17
	st.d $a1, $fp, -392
	ld.d $a2, $fp, -392
	b .main_label17
.main_label30:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 392
	ld.d $fp, $sp, 384
	addi.d $sp, $sp, 400
	jr $ra
