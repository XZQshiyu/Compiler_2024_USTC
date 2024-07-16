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
	.globl bubblesort
	.type bubblesort, @function
bubblesort:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.bubblesort_label_entry:
# br label %label4
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a1, $fp, -312
	b .bubblesort_label4
.bubblesort_label4:
# %op56 = phi i32 [ 0, %label_entry ], [ %op31, %label29 ]
# %op6 = load i32, i32* @n
	la.local $t0, n
	ld.w $a2, $t0, 0
# %op7 = sub i32 %op6, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a2, $t1
# %op8 = icmp slt i32 %op56, %op7
	slt $a2,$a1,$a2
# br i1 %op8, label %label9, label %label10
	addi.w $t0,$zero,0
	blt $t0,$a2,.bubblesort_label9
	b .bubblesort_label10
.bubblesort_label9:
# br label %label11
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a2, $fp, -312
	b .bubblesort_label11
.bubblesort_label10:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b bubblesort_exit
.bubblesort_label11:
# %op58 = phi i32 [ 0, %label9 ], [ %op53, %label51 ]
# %op13 = load i32, i32* @n
	la.local $t0, n
	ld.w $a3, $t0, 0
# %op15 = sub i32 %op13, %op56
	sub.w $a3, $a3, $a1
# %op16 = sub i32 %op15, 1
	addi.w $t1, $zero, 1
	sub.w $a3, $a3, $t1
# %op17 = icmp slt i32 %op58, %op16
	slt $a3,$a2,$a3
# br i1 %op17, label %label18, label %label29
	addi.w $t0,$zero,0
	blt $t0,$a3,.bubblesort_label18
	b .bubblesort_label29
.bubblesort_label18:
# %op21 = getelementptr i32, i32* %arg0, i32 %op58
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a0
# %op22 = load i32, i32* %op21
	ld.w $a3, $a3, 0
# %op25 = add i32 %op58, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a2, $t1
# %op26 = getelementptr i32, i32* %arg0, i32 %op25
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# %op27 = load i32, i32* %op26
	ld.w $a4, $a4, 0
# %op28 = icmp sgt i32 %op22, %op27
	slt $a3,$a4,$a3
# br i1 %op28, label %label32, label %label51
	addi.w $t0,$zero,0
	blt $t0,$a3,.bubblesort_label32
	b .bubblesort_label51
.bubblesort_label29:
# %op31 = add i32 %op56, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label4
	st.d $a2, $fp, -312
	ld.d $a1, $fp, -312
	b .bubblesort_label4
.bubblesort_label32:
# %op36 = add i32 %op58, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# %op37 = getelementptr i32, i32* %arg0, i32 %op36
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a0
# %op38 = load i32, i32* %op37
	ld.w $a3, $a3, 0
# %op41 = getelementptr i32, i32* %arg0, i32 %op58
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# %op42 = load i32, i32* %op41
	ld.w $a4, $a4, 0
# %op45 = add i32 %op58, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a2, $t1
# %op46 = getelementptr i32, i32* %arg0, i32 %op45
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# store i32 %op42, i32* %op46
	st.w $a4, $a5, 0
# %op50 = getelementptr i32, i32* %arg0, i32 %op58
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# store i32 %op38, i32* %op50
	st.w $a3, $a4, 0
# br label %label51
	b .bubblesort_label51
.bubblesort_label51:
# %op53 = add i32 %op58, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# br label %label11
	st.d $a3, $fp, -312
	ld.d $a2, $fp, -312
	b .bubblesort_label11
bubblesort_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
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
# %op12 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 0
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
# %op13 = call i32 @bubblesort(i32* %op12)
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
	bl bubblesort
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
# br label %label14
	st.d $a1, $fp, -352
	ld.d $a2, $fp, -352
	b .main_label14
.main_label14:
# %op29 = phi i32 [ %op13, %label_entry ], [ %op26, %label18 ]
# %op16 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op17 = icmp slt i32 %op29, %op16
	slt $a1,$a2,$a1
# br i1 %op17, label %label18, label %label27
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label18
	b .main_label27
.main_label18:
# %op21 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 %op29
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op22 = load i32, i32* %op21
	ld.w $a1, $a1, 0
# call void @putint(i32 %op22)
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
# %op26 = add i32 %op29, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a2, $t1
# br label %label14
	st.d $a1, $fp, -352
	ld.d $a2, $fp, -352
	b .main_label14
.main_label27:
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
