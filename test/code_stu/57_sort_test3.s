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
	.globl QuickSort
	.type QuickSort, @function
QuickSort:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.QuickSort_label_entry:
# %op8 = icmp slt i32 %arg1, %arg2
	slt $a3,$a1,$a2
# br i1 %op8, label %label9, label %label19
	addi.w $t0,$zero,0
	blt $t0,$a3,.QuickSort_label9
	b .QuickSort_label19
.QuickSort_label9:
# %op17 = getelementptr i32, i32* %arg0, i32 %arg1
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a0
# %op18 = load i32, i32* %op17
	ld.w $a3, $a3, 0
# br label %label20
	st.d $a1, $fp, -320
	st.d $a2, $fp, -328
	ld.d $a4, $fp, -320
	ld.d $a5, $fp, -328
	b .QuickSort_label20
.QuickSort_label19:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b QuickSort_exit
.QuickSort_label20:
# %op106 = phi i32 [ %arg2, %label9 ], [ %op111, %label101 ]
# %op107 = phi i32 [ %arg1, %label9 ], [ %op110, %label101 ]
# %op23 = icmp slt i32 %op107, %op106
	slt $a6,$a4,$a5
# br i1 %op23, label %label24, label %label25
	addi.w $t0,$zero,0
	blt $t0,$a6,.QuickSort_label24
	b .QuickSort_label25
.QuickSort_label24:
# br label %label43
	st.d $a5, $fp, -320
	ld.d $a6, $fp, -320
	b .QuickSort_label43
.QuickSort_label25:
# %op29 = getelementptr i32, i32* %arg0, i32 %op107
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# store i32 %op18, i32* %op29
	st.w $a3, $a5, 0
# %op32 = sub i32 %op107, 1
	addi.w $t1, $zero, 1
	sub.w $a3, $a4, $t1
# %op36 = call i32 @QuickSort(i32* %arg0, i32 %arg1, i32 %op32)
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
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -48
	bl QuickSort
	st.w $a0, $fp, -308
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
# %op38 = add i32 %op107, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a4, $t1
# %op42 = call i32 @QuickSort(i32* %arg0, i32 %op38, i32 %arg2)
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
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	bl QuickSort
	st.w $a0, $fp, -312
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
# br label %label19
	b .QuickSort_label19
.QuickSort_label43:
# %op108 = phi i32 [ %op106, %label24 ], [ %op49, %label47 ]
# %op46 = icmp slt i32 %op107, %op108
	slt $a7,$a4,$a6
# br i1 %op46, label %label54, label %label50
	addi.w $t0,$zero,0
	blt $t0,$a7,.QuickSort_label54
	b .QuickSort_label50
.QuickSort_label47:
# %op49 = sub i32 %op108, 1
	addi.w $t1, $zero, 1
	sub.w $a7, $a6, $t1
# br label %label43
	st.d $a7, $fp, -320
	ld.d $a6, $fp, -320
	b .QuickSort_label43
.QuickSort_label50:
# %op53 = icmp slt i32 %op107, %op108
	slt $a7,$a4,$a6
# br i1 %op53, label %label62, label %label72
	addi.w $t0,$zero,0
	blt $t0,$a7,.QuickSort_label62
	or $t2, $zero, $a4
	b .QuickSort_label72
.QuickSort_label54:
# %op57 = getelementptr i32, i32* %arg0, i32 %op108
	add.d $t8,$a6 , $a6
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a0
# %op58 = load i32, i32* %op57
	ld.w $a7, $a7, 0
# %op60 = sub i32 %op18, 1
	addi.w $t1, $zero, 1
	sub.w $t2, $a3, $t1
# %op61 = icmp sgt i32 %op58, %op60
	slt $a7,$t2,$a7
# br i1 %op61, label %label47, label %label50
	addi.w $t0,$zero,0
	blt $t0,$a7,.QuickSort_label47
	b .QuickSort_label50
.QuickSort_label62:
# %op65 = getelementptr i32, i32* %arg0, i32 %op108
	add.d $t8,$a6 , $a6
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a0
# %op66 = load i32, i32* %op65
	ld.w $a7, $a7, 0
# %op69 = getelementptr i32, i32* %arg0, i32 %op107
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $t3,$t8,$a0
# store i32 %op66, i32* %op69
	st.w $a7, $t3, 0
# %op71 = add i32 %op107, 1
	addi.w $t1, $zero, 1
	add.w $a7, $a4, $t1
# br label %label72
	st.d $a7, $fp, -320
	ld.d $t2, $fp, -320
	b .QuickSort_label72
.QuickSort_label72:
# %op109 = phi i32 [ %op107, %label50 ], [ %op71, %label62 ]
# br label %label73
	st.d $t2, $fp, -320
	ld.d $a7, $fp, -320
	b .QuickSort_label73
.QuickSort_label73:
# %op110 = phi i32 [ %op109, %label72 ], [ %op79, %label77 ]
# %op76 = icmp slt i32 %op110, %op108
	slt $t2,$a7,$a6
# br i1 %op76, label %label84, label %label80
	addi.w $t0,$zero,0
	blt $t0,$t2,.QuickSort_label84
	b .QuickSort_label80
.QuickSort_label77:
# %op79 = add i32 %op110, 1
	addi.w $t1, $zero, 1
	add.w $t2, $a7, $t1
# br label %label73
	st.d $t2, $fp, -320
	ld.d $a7, $fp, -320
	b .QuickSort_label73
.QuickSort_label80:
# %op83 = icmp slt i32 %op110, %op108
	slt $t2,$a7,$a6
# br i1 %op83, label %label91, label %label101
	addi.w $t0,$zero,0
	blt $t0,$t2,.QuickSort_label91
	or $t3, $zero, $a6
	b .QuickSort_label101
.QuickSort_label84:
# %op87 = getelementptr i32, i32* %arg0, i32 %op110
	add.d $t8,$a7 , $a7
	add.d $t8,$t8,$t8
	add.d $t2,$t8,$a0
# %op88 = load i32, i32* %op87
	ld.w $t2, $t2, 0
# %op90 = icmp slt i32 %op88, %op18
	slt $t2,$t2,$a3
# br i1 %op90, label %label77, label %label80
	addi.w $t0,$zero,0
	blt $t0,$t2,.QuickSort_label77
	b .QuickSort_label80
.QuickSort_label91:
# %op94 = getelementptr i32, i32* %arg0, i32 %op110
	add.d $t8,$a7 , $a7
	add.d $t8,$t8,$t8
	add.d $t2,$t8,$a0
# %op95 = load i32, i32* %op94
	ld.w $t2, $t2, 0
# %op98 = getelementptr i32, i32* %arg0, i32 %op108
	add.d $t8,$a6 , $a6
	add.d $t8,$t8,$t8
	add.d $t4,$t8,$a0
# store i32 %op95, i32* %op98
	st.w $t2, $t4, 0
# %op100 = sub i32 %op108, 1
	addi.w $t1, $zero, 1
	sub.w $a6, $a6, $t1
# br label %label101
	st.d $a6, $fp, -320
	ld.d $t3, $fp, -320
	b .QuickSort_label101
.QuickSort_label101:
# %op111 = phi i32 [ %op108, %label80 ], [ %op100, %label91 ]
# br label %label20
	st.d $a7, $fp, -320
	st.d $t3, $fp, -328
	ld.d $a4, $fp, -320
	ld.d $a5, $fp, -328
	b .QuickSort_label20
QuickSort_exit:
	# epilog
	ld.d $ra, $sp, 328
	ld.d $fp, $sp, 320
	addi.d $sp, $sp, 336
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -352
	st.d $ra, $sp, 344
	st.d $fp, $sp, 336
	addi.d $fp, $sp, 352
.main_label_entry:
# %op0 = alloca [10 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 344
	sub.d $a0,$fp,$t0
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
	add.d $a1,$a0,$t0
# store i32 4, i32* %op1
	addi.w $t0, $zero, 4
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 3, i32* %op2
	addi.w $t0, $zero, 3
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 9, i32* %op3
	addi.w $t0, $zero, 9
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 2, i32* %op4
	addi.w $t0, $zero, 2
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 0, i32* %op5
	addi.w $t0, $zero, 0
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 1, i32* %op6
	addi.w $t0, $zero, 1
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 6, i32* %op7
	addi.w $t0, $zero, 6
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 5, i32* %op8
	addi.w $t0, $zero, 5
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 7, i32* %op9
	addi.w $t0, $zero, 7
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# store i32 8, i32* %op10
	addi.w $t0, $zero, 8
	st.w $t0, $a1, 0
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
	add.d $a1,$a0,$t0
# %op16 = call i32 @QuickSort(i32* %op13, i32 0, i32 9)
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
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 9
	bl QuickSort
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
	st.d $a1, $fp, -352
	ld.d $a2, $fp, -352
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
# %op24 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 %op32
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
	st.d $a1, $fp, -352
	ld.d $a2, $fp, -352
	b .main_label17
.main_label30:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 344
	ld.d $fp, $sp, 336
	addi.d $sp, $sp, 352
	jr $ra
