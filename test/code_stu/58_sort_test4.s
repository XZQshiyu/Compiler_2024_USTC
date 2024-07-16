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
	.globl select_sort
	.type select_sort, @function
select_sort:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.select_sort_label_entry:
# %op10 = sub i32 %arg1, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a1, $t1
# br label %label7
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a3, $fp, -312
	b .select_sort_label7
.select_sort_label7:
# %op63 = phi i32 [ 0, %label_entry ], [ %op59, %label57 ]
# %op11 = icmp slt i32 %op63, %op10
	slt $a4,$a3,$a2
# br i1 %op11, label %label12, label %label16
	addi.w $t0,$zero,0
	blt $t0,$a4,.select_sort_label12
	b .select_sort_label16
.select_sort_label12:
# %op15 = add i32 %op63, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label17
	st.d $a4, $fp, -312
	st.d $a3, $fp, -320
	ld.d $a5, $fp, -312
	ld.d $a6, $fp, -320
	b .select_sort_label17
.select_sort_label16:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b select_sort_exit
.select_sort_label17:
# %op64 = phi i32 [ %op63, %label12 ], [ %op66, %label37 ]
# %op65 = phi i32 [ %op15, %label12 ], [ %op39, %label37 ]
# %op20 = icmp slt i32 %op65, %arg1
	slt $a4,$a5,$a1
# br i1 %op20, label %label21, label %label31
	addi.w $t0,$zero,0
	blt $t0,$a4,.select_sort_label21
	b .select_sort_label31
.select_sort_label21:
# %op24 = getelementptr i32, i32* %arg0, i32 %op64
	add.d $t8,$a6 , $a6
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# %op25 = load i32, i32* %op24
	ld.w $a4, $a4, 0
# %op28 = getelementptr i32, i32* %arg0, i32 %op65
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a0
# %op29 = load i32, i32* %op28
	ld.w $a7, $a7, 0
# %op30 = icmp sgt i32 %op25, %op29
	slt $a4,$a7,$a4
# br i1 %op30, label %label35, label %label37
	addi.w $t0,$zero,0
	blt $t0,$a4,.select_sort_label35
	or $a7, $zero, $a6
	b .select_sort_label37
.select_sort_label31:
# %op34 = icmp ne i32 %op64, %op63
	slt $t8,$a3,$a6
	slt $t0,$a6,$a3
	or $a4,$t0,$t8
# br i1 %op34, label %label40, label %label57
	addi.w $t0,$zero,0
	blt $t0,$a4,.select_sort_label40
	b .select_sort_label57
.select_sort_label35:
# br label %label37
	st.d $a5, $fp, -312
	ld.d $a7, $fp, -312
	b .select_sort_label37
.select_sort_label37:
# %op66 = phi i32 [ %op64, %label21 ], [ %op65, %label35 ]
# %op39 = add i32 %op65, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a5, $t1
# br label %label17
	st.d $a4, $fp, -312
	st.d $a7, $fp, -320
	ld.d $a5, $fp, -312
	ld.d $a6, $fp, -320
	b .select_sort_label17
.select_sort_label40:
# %op44 = getelementptr i32, i32* %arg0, i32 %op64
	add.d $t8,$a6 , $a6
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# %op45 = load i32, i32* %op44
	ld.w $a4, $a4, 0
# %op48 = getelementptr i32, i32* %arg0, i32 %op63
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# %op49 = load i32, i32* %op48
	ld.w $a5, $a5, 0
# %op52 = getelementptr i32, i32* %arg0, i32 %op64
	add.d $t8,$a6 , $a6
	add.d $t8,$t8,$t8
	add.d $a6,$t8,$a0
# store i32 %op49, i32* %op52
	st.w $a5, $a6, 0
# %op56 = getelementptr i32, i32* %arg0, i32 %op63
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# store i32 %op45, i32* %op56
	st.w $a4, $a5, 0
# br label %label57
	b .select_sort_label57
.select_sort_label57:
# %op59 = add i32 %op63, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label7
	st.d $a4, $fp, -312
	ld.d $a3, $fp, -312
	b .select_sort_label7
select_sort_exit:
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
# %op13 = load i32, i32* @n
	la.local $t0, n
	ld.w $a2, $t0, 0
# %op14 = call i32 @select_sort(i32* %op12, i32 %op13)
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
	bl select_sort
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
# br label %label15
	st.d $a1, $fp, -352
	ld.d $a2, $fp, -352
	b .main_label15
.main_label15:
# %op30 = phi i32 [ %op14, %label_entry ], [ %op27, %label19 ]
# %op17 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op18 = icmp slt i32 %op30, %op17
	slt $a1,$a2,$a1
# br i1 %op18, label %label19, label %label28
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label19
	b .main_label28
.main_label19:
# %op22 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 %op30
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op23 = load i32, i32* %op22
	ld.w $a1, $a1, 0
# call void @putint(i32 %op23)
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
# %op27 = add i32 %op30, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a2, $t1
# br label %label15
	st.d $a1, $fp, -352
	ld.d $a2, $fp, -352
	b .main_label15
.main_label28:
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
