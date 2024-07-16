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
	.globl insertsort
	.type insertsort, @function
insertsort:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.insertsort_label_entry:
# br label %label3
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a1, $fp, -312
	b .insertsort_label3
.insertsort_label3:
# %op49 = phi i32 [ 1, %label_entry ], [ %op39, %label32 ]
# %op5 = load i32, i32* @n
	la.local $t0, n
	ld.w $a2, $t0, 0
# %op6 = icmp slt i32 %op49, %op5
	slt $a2,$a1,$a2
# br i1 %op6, label %label7, label %label16
	addi.w $t0,$zero,0
	blt $t0,$a2,.insertsort_label7
	b .insertsort_label16
.insertsort_label7:
# %op11 = getelementptr i32, i32* %arg0, i32 %op49
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a0
# %op12 = load i32, i32* %op11
	ld.w $a2, $a2, 0
# %op15 = sub i32 %op49, 1
	addi.w $t1, $zero, 1
	sub.w $a3, $a1, $t1
# br label %label17
	st.d $a3, $fp, -312
	ld.d $a4, $fp, -312
	b .insertsort_label17
.insertsort_label16:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b insertsort_exit
.insertsort_label17:
# %op50 = phi i32 [ %op15, %label7 ], [ %op31, %label21 ]
# %op20 = icmp sgt i32 %op50, -1
	addi.w $t1, $zero, -1
	slt $a3,$t1,$a4
# br i1 %op20, label %label40, label %label32
	addi.w $t0,$zero,0
	blt $t0,$a3,.insertsort_label40
	b .insertsort_label32
.insertsort_label21:
# %op24 = getelementptr i32, i32* %arg0, i32 %op50
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a0
# %op25 = load i32, i32* %op24
	ld.w $a3, $a3, 0
# %op28 = add i32 %op50, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# %op29 = getelementptr i32, i32* %arg0, i32 %op28
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# store i32 %op25, i32* %op29
	st.w $a3, $a5, 0
# %op31 = sub i32 %op50, 1
	addi.w $t1, $zero, 1
	sub.w $a3, $a4, $t1
# br label %label17
	st.d $a3, $fp, -312
	ld.d $a4, $fp, -312
	b .insertsort_label17
.insertsort_label32:
# %op36 = add i32 %op50, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a4, $t1
# %op37 = getelementptr i32, i32* %arg0, i32 %op36
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a0
# store i32 %op12, i32* %op37
	st.w $a2, $a3, 0
# %op39 = add i32 %op49, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label3
	st.d $a2, $fp, -312
	ld.d $a1, $fp, -312
	b .insertsort_label3
.insertsort_label40:
# %op44 = getelementptr i32, i32* %arg0, i32 %op50
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a0
# %op45 = load i32, i32* %op44
	ld.w $a3, $a3, 0
# %op46 = icmp slt i32 %op12, %op45
	slt $a3,$a2,$a3
# br i1 %op46, label %label21, label %label32
	addi.w $t0,$zero,0
	blt $t0,$a3,.insertsort_label21
	b .insertsort_label32
insertsort_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
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
	.globl getMid
	.type getMid, @function
getMid:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.getMid_label_entry:
# %op3 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op4 = srem i32 %op3, 2
	addi.w $t1, $zero, 2
	mod.w $a1, $a1, $t1
# %op5 = icmp eq i32 %op4, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a1,$t8,$t0
# br i1 %op5, label %label6, label %label20
	addi.w $t0,$zero,0
	blt $t0,$a1,.getMid_label6
	b .getMid_label20
.getMid_label6:
# %op7 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op8 = sdiv i32 %op7, 2
	addi.w $t1, $zero, 2
	div.w $a1, $a1, $t1
# %op11 = getelementptr i32, i32* %arg0, i32 %op8
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a0
# %op12 = load i32, i32* %op11
	ld.w $a2, $a2, 0
# %op15 = sub i32 %op8, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a1, $t1
# %op16 = getelementptr i32, i32* %arg0, i32 %op15
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a1,$t8,$a0
# %op17 = load i32, i32* %op16
	ld.w $a1, $a1, 0
# %op18 = add i32 %op12, %op17
	add.w $a1, $a2, $a1
# %op19 = sdiv i32 %op18, 2
	addi.w $t1, $zero, 2
	div.w $a1, $a1, $t1
# ret i32 %op19
	or $a0, $zero, $a1
	b getMid_exit
.getMid_label20:
# %op21 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op22 = sdiv i32 %op21, 2
	addi.w $t1, $zero, 2
	div.w $a1, $a1, $t1
# %op25 = getelementptr i32, i32* %arg0, i32 %op22
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a0,$t8,$a0
# %op26 = load i32, i32* %op25
	ld.w $a0, $a0, 0
# ret i32 %op26
	b getMid_exit
getMid_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl getMost
	.type getMost, @function
getMost:
	lu12i.w $t0, -2
	ori $t0, $t0, 3856
	add.d $sp, $sp, $t0
	lu12i.w $t0, 1
	ori $t0, $t0, 232
	stx.d $ra, $sp, $t0
	lu12i.w $t0, 1
	ori $t0, $t0, 224
	stx.d $fp, $sp, $t0
	lu12i.w $t0, 1
	ori $t0, $t0, 240
	add.d $fp, $sp, $t0
.getMost_label_entry:
# %op2 = alloca [1000 x i32]
	lu12i.w $t0, 1
	ori $t0, $t0, 208
	sub.d $a2,$fp,$t0
# br label %label4
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	lu12i.w $a3, -2
	ori $a3, $a3, 3880
	lu32i.d $a3, -1
	lu52i.d $a3, $a3, -1
	add.d $a3, $fp, $a3
	ld.d $a3, $a3, 0
	b .getMost_label4
.getMost_label4:
# %op46 = phi i32 [ 0, %label_entry ], [ %op11, %label7 ]
# %op6 = icmp slt i32 %op46, 1000
	addi.w $t1, $zero, 1000
	slt $a4,$a3,$t1
# br i1 %op6, label %label7, label %label12
	addi.w $t0,$zero,0
	blt $t0,$a4,.getMost_label7
	b .getMost_label12
.getMost_label7:
# %op9 = getelementptr [1000 x i32], [1000 x i32]* %op2, i32 0, i32 %op46
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 0
	ori $t8, $t8, 4000
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	add.d $a4,$a2,$t0
# store i32 0, i32* %op9
	addi.w $t0, $zero, 0
	st.w $t0, $a4, 0
# %op11 = add i32 %op46, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label4
	lu12i.w $t8, -2
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a4, $t8, 0
	lu12i.w $a3, -2
	ori $a3, $a3, 3880
	lu32i.d $a3, -1
	lu52i.d $a3, $a3, -1
	add.d $a3, $fp, $a3
	ld.d $a3, $a3, 0
	b .getMost_label4
.getMost_label12:
# br label %label15
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	lu12i.w $a3, -2
	ori $a3, $a3, 3880
	lu32i.d $a3, -1
	lu52i.d $a3, $a3, -1
	add.d $a3, $fp, $a3
	ld.d $a3, $a3, 0
	lu12i.w $a4, -2
	ori $a4, $a4, 3872
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .getMost_label15
.getMost_label15:
# %op48 = phi i32 [ %op51, %label43 ], [ undef, %label12 ]
# %op49 = phi i32 [ 0, %label12 ], [ %op52, %label43 ]
# %op50 = phi i32 [ 0, %label12 ], [ %op45, %label43 ]
# %op17 = load i32, i32* @n
	la.local $t0, n
	ld.w $a5, $t0, 0
# %op18 = icmp slt i32 %op50, %op17
	slt $a5,$a4,$a5
# br i1 %op18, label %label19, label %label36
	addi.w $t0,$zero,0
	blt $t0,$a5,.getMost_label19
	b .getMost_label36
.getMost_label19:
# %op23 = getelementptr i32, i32* %arg0, i32 %op50
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a1
# %op24 = load i32, i32* %op23
	ld.w $a5, $a5, 0
# %op26 = getelementptr [1000 x i32], [1000 x i32]* %op2, i32 0, i32 %op24
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 0
	ori $t8, $t8, 4000
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a2,$t0
# %op27 = load i32, i32* %op26
	ld.w $a6, $a6, 0
# %op28 = add i32 %op27, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a6, $t1
# %op30 = getelementptr [1000 x i32], [1000 x i32]* %op2, i32 0, i32 %op24
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 0
	ori $t8, $t8, 4000
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	add.d $a7,$a2,$t0
# store i32 %op28, i32* %op30
	st.w $a6, $a7, 0
# %op32 = getelementptr [1000 x i32], [1000 x i32]* %op2, i32 0, i32 %op24
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 0
	ori $t8, $t8, 4000
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a2,$t0
# %op33 = load i32, i32* %op32
	ld.w $a6, $a6, 0
# %op35 = icmp sgt i32 %op33, %op49
	slt $a6,$a3,$a6
# br i1 %op35, label %label38, label %label43
	addi.w $t0,$zero,0
	blt $t0,$a6,.getMost_label38
	or $a7, $zero, $a0
	or $t2, $zero, $a3
	b .getMost_label43
.getMost_label36:
# ret i32 %op48
	b getMost_exit
.getMost_label38:
# %op40 = getelementptr [1000 x i32], [1000 x i32]* %op2, i32 0, i32 %op24
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 0
	ori $t8, $t8, 4000
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a2,$t0
# %op41 = load i32, i32* %op40
	ld.w $a6, $a6, 0
# br label %label43
	lu12i.w $t8, -2
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a6, $t8, 0
	lu12i.w $a7, -2
	ori $a7, $a7, 3880
	lu32i.d $a7, -1
	lu52i.d $a7, $a7, -1
	add.d $a7, $fp, $a7
	ld.d $a7, $a7, 0
	lu12i.w $t2, -2
	ori $t2, $t2, 3872
	lu32i.d $t2, -1
	lu52i.d $t2, $t2, -1
	add.d $t2, $fp, $t2
	ld.d $t2, $t2, 0
	b .getMost_label43
.getMost_label43:
# %op51 = phi i32 [ %op48, %label19 ], [ %op24, %label38 ]
# %op52 = phi i32 [ %op49, %label19 ], [ %op41, %label38 ]
# %op45 = add i32 %op50, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# br label %label15
	lu12i.w $t8, -2
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a7, $t8, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $a3, -2
	ori $a3, $a3, 3880
	lu32i.d $a3, -1
	lu52i.d $a3, $a3, -1
	add.d $a3, $fp, $a3
	ld.d $a3, $a3, 0
	lu12i.w $a0, -2
	ori $a0, $a0, 3872
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a4, -2
	ori $a4, $a4, 3864
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .getMost_label15
getMost_exit:
	# epilog
	lu12i.w $t0, 1
	ori $t0, $t0, 232
	ldx.d $ra, $sp, $t0
	lu12i.w $t0, 1
	ori $t0, $t0, 224
	ldx.d $fp, $sp, $t0
	lu12i.w $t0, 1
	ori $t0, $t0, 240
	add.d $sp, $sp, $t0
	jr $ra
	.globl revert
	.type revert, @function
revert:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.revert_label_entry:
# br label %label5
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	b .revert_label5
.revert_label5:
# %op30 = phi i32 [ 0, %label_entry ], [ %op28, %label9 ]
# %op31 = phi i32 [ 0, %label_entry ], [ %op26, %label9 ]
# %op8 = icmp slt i32 %op31, %op30
	slt $a3,$a0,$a1
# br i1 %op8, label %label9, label %label29
	addi.w $t0,$zero,0
	blt $t0,$a3,.revert_label9
	b .revert_label29
.revert_label9:
# %op12 = getelementptr i32, i32* %arg0, i32 %op31
	add.d $t8,$a0 , $a0
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a2
# %op13 = load i32, i32* %op12
	ld.w $a3, $a3, 0
# %op16 = getelementptr i32, i32* %arg0, i32 %op30
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a2
# %op17 = load i32, i32* %op16
	ld.w $a4, $a4, 0
# %op20 = getelementptr i32, i32* %arg0, i32 %op31
	add.d $t8,$a0 , $a0
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a2
# store i32 %op17, i32* %op20
	st.w $a4, $a5, 0
# %op24 = getelementptr i32, i32* %arg0, i32 %op30
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a2
# store i32 %op13, i32* %op24
	st.w $a3, $a4, 0
# %op26 = add i32 %op31, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a0, $t1
# %op28 = sub i32 %op30, 1
	addi.w $t1, $zero, 1
	sub.w $a4, $a1, $t1
# br label %label5
	st.d $a3, $fp, -312
	st.d $a4, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	b .revert_label5
.revert_label29:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b revert_exit
revert_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl arrCopy
	.type arrCopy, @function
arrCopy:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.arrCopy_label_entry:
# br label %label5
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .arrCopy_label5
.arrCopy_label5:
# %op20 = phi i32 [ 0, %label_entry ], [ %op18, %label9 ]
# %op7 = load i32, i32* @n
	la.local $t0, n
	ld.w $a3, $t0, 0
# %op8 = icmp slt i32 %op20, %op7
	slt $a3,$a0,$a3
# br i1 %op8, label %label9, label %label19
	addi.w $t0,$zero,0
	blt $t0,$a3,.arrCopy_label9
	b .arrCopy_label19
.arrCopy_label9:
# %op12 = getelementptr i32, i32* %arg0, i32 %op20
	add.d $t8,$a0 , $a0
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a1
# %op13 = load i32, i32* %op12
	ld.w $a3, $a3, 0
# %op16 = getelementptr i32, i32* %arg1, i32 %op20
	add.d $t8,$a0 , $a0
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a2
# store i32 %op13, i32* %op16
	st.w $a3, $a4, 0
# %op18 = add i32 %op20, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a0, $t1
# br label %label5
	st.d $a3, $fp, -312
	ld.d $a0, $fp, -312
	b .arrCopy_label5
.arrCopy_label19:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b arrCopy_exit
arrCopy_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl calSum
	.type calSum, @function
calSum:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.calSum_label_entry:
# %op21 = sub i32 %arg1, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a1, $t1
# br label %label6
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -320
	ld.d $a3, $fp, -312
	ld.d $a4, $fp, -320
	b .calSum_label6
.calSum_label6:
# %op36 = phi i32 [ 0, %label_entry ], [ %op35, %label33 ]
# %op37 = phi i32 [ 0, %label_entry ], [ %op38, %label33 ]
# %op8 = load i32, i32* @n
	la.local $t0, n
	ld.w $a5, $t0, 0
# %op9 = icmp slt i32 %op36, %op8
	slt $a5,$a3,$a5
# br i1 %op9, label %label10, label %label23
	addi.w $t0,$zero,0
	blt $t0,$a5,.calSum_label10
	b .calSum_label23
.calSum_label10:
# %op14 = getelementptr i32, i32* %arg0, i32 %op36
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# %op15 = load i32, i32* %op14
	ld.w $a5, $a5, 0
# %op16 = add i32 %op37, %op15
	add.w $a5, $a4, $a5
# %op19 = srem i32 %op36, %arg1
	mod.w $a6, $a3, $a1
# %op22 = icmp ne i32 %op19, %op21
	slt $t8,$a2,$a6
	slt $t0,$a6,$a2
	or $a6,$t0,$t8
# br i1 %op22, label %label24, label %label28
	addi.w $t0,$zero,0
	blt $t0,$a6,.calSum_label24
	b .calSum_label28
.calSum_label23:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b calSum_exit
.calSum_label24:
# %op27 = getelementptr i32, i32* %arg0, i32 %op36
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a6,$t8,$a0
# store i32 0, i32* %op27
	addi.w $t0, $zero, 0
	st.w $t0, $a6, 0
# br label %label33
	st.d $a5, $fp, -312
	ld.d $a6, $fp, -312
	b .calSum_label33
.calSum_label28:
# %op32 = getelementptr i32, i32* %arg0, i32 %op36
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a0
# store i32 %op16, i32* %op32
	st.w $a5, $a7, 0
# br label %label33
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a6, $fp, -312
	b .calSum_label33
.calSum_label33:
# %op38 = phi i32 [ %op16, %label24 ], [ 0, %label28 ]
# %op35 = add i32 %op36, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a3, $t1
# br label %label6
	st.d $a5, $fp, -312
	st.d $a6, $fp, -320
	ld.d $a3, $fp, -312
	ld.d $a4, $fp, -320
	b .calSum_label6
calSum_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl avgPooling
	.type avgPooling, @function
avgPooling:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.avgPooling_label_entry:
# %op31 = sub i32 %arg1, 1
	addi.w $t1, $zero, 1
	sub.w $a3, $a2, $t1
# %op14 = sub i32 %arg1, 1
	addi.w $t1, $zero, 1
	sub.w $a4, $a2, $t1
# br label %label7
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -316
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -324
	ld.d $a5, $fp, -316
	ld.d $a6, $fp, -324
	b .avgPooling_label7
.avgPooling_label7:
# %op82 = phi i32 [ %op85, %label33 ], [ undef, %label_entry ]
# %op83 = phi i32 [ 0, %label_entry ], [ %op35, %label33 ]
# %op84 = phi i32 [ 0, %label_entry ], [ %op86, %label33 ]
# %op9 = load i32, i32* @n
	la.local $t0, n
	ld.w $a7, $t0, 0
# %op10 = icmp slt i32 %op83, %op9
	slt $a7,$a5,$a7
# br i1 %op10, label %label11, label %label16
	addi.w $t0,$zero,0
	blt $t0,$a7,.avgPooling_label11
	b .avgPooling_label16
.avgPooling_label11:
# %op15 = icmp slt i32 %op83, %op14
	slt $a7,$a5,$a4
# br i1 %op15, label %label21, label %label28
	addi.w $t0,$zero,0
	blt $t0,$a7,.avgPooling_label21
	b .avgPooling_label28
.avgPooling_label16:
# %op17 = load i32, i32* @n
	la.local $t0, n
	ld.w $a0, $t0, 0
# %op19 = sub i32 %op17, %arg1
	sub.w $a0, $a0, $a2
# %op20 = add i32 %op19, 1
	addi.w $t1, $zero, 1
	add.w $a0, $a0, $t1
# br label %label71
	st.d $a0, $fp, -316
	ld.d $a2, $fp, -316
	b .avgPooling_label71
.avgPooling_label21:
# %op25 = getelementptr i32, i32* %arg0, i32 %op83
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a1
# %op26 = load i32, i32* %op25
	ld.w $a7, $a7, 0
# %op27 = add i32 %op84, %op26
	add.w $a7, $a6, $a7
# br label %label33
	st.d $a0, $fp, -316
	st.d $a7, $fp, -324
	ld.d $t2, $fp, -316
	ld.d $t3, $fp, -324
	b .avgPooling_label33
.avgPooling_label28:
# %op32 = icmp eq i32 %op83, %op31
	slt $t8,$a3,$a5
	slt $t0,$a5,$a3
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a7,$t8,$t0
# br i1 %op32, label %label36, label %label45
	addi.w $t0,$zero,0
	blt $t0,$a7,.avgPooling_label36
	b .avgPooling_label45
.avgPooling_label33:
# %op85 = phi i32 [ %op82, %label21 ], [ %op87, %label70 ]
# %op86 = phi i32 [ %op27, %label21 ], [ %op88, %label70 ]
# %op35 = add i32 %op83, 1
	addi.w $t1, $zero, 1
	add.w $a7, $a5, $t1
# br label %label7
	st.d $t2, $fp, -316
	st.d $a7, $fp, -324
	st.d $t3, $fp, -332
	ld.d $a0, $fp, -316
	ld.d $a5, $fp, -324
	ld.d $a6, $fp, -332
	b .avgPooling_label7
.avgPooling_label36:
# %op38 = getelementptr i32, i32* %arg0, i32 0
	addi.w $t0, $zero, 0
	add.d $t8,$t0 , $t0
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a1
# %op39 = load i32, i32* %op38
	ld.w $a7, $a7, 0
# %op42 = sdiv i32 %op84, %arg1
	div.w $t4, $a6, $a2
# %op44 = getelementptr i32, i32* %arg0, i32 0
	addi.w $t0, $zero, 0
	add.d $t8,$t0 , $t0
	add.d $t8,$t8,$t8
	add.d $t5,$t8,$a1
# store i32 %op42, i32* %op44
	st.w $t4, $t5, 0
# br label %label70
	st.d $a7, $fp, -316
	st.d $a6, $fp, -324
	ld.d $t4, $fp, -316
	ld.d $t5, $fp, -324
	b .avgPooling_label70
.avgPooling_label45:
# %op49 = getelementptr i32, i32* %arg0, i32 %op83
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a1
# %op50 = load i32, i32* %op49
	ld.w $a7, $a7, 0
# %op51 = add i32 %op84, %op50
	add.w $a7, $a6, $a7
# %op53 = sub i32 %op51, %op82
	sub.w $a7, $a7, $a0
# %op57 = sub i32 %op83, %arg1
	sub.w $t6, $a5, $a2
# %op58 = add i32 %op57, 1
	addi.w $t1, $zero, 1
	add.w $t6, $t6, $t1
# %op59 = getelementptr i32, i32* %arg0, i32 %op58
	add.d $t8,$t6 , $t6
	add.d $t8,$t8,$t8
	add.d $t6,$t8,$a1
# %op60 = load i32, i32* %op59
	ld.w $t6, $t6, 0
# %op63 = sdiv i32 %op53, %arg1
	div.w $t0, $a7, $a2
	st.w $t0, $fp, -308
# %op67 = sub i32 %op83, %arg1
	sub.w $t7, $a5, $a2
# %op68 = add i32 %op67, 1
	addi.w $t1, $zero, 1
	add.w $t7, $t7, $t1
# %op69 = getelementptr i32, i32* %arg0, i32 %op68
	add.d $t8,$t7 , $t7
	add.d $t8,$t8,$t8
	add.d $t7,$t8,$a1
# store i32 %op63, i32* %op69
	ld.w $t0, $fp, -308
	st.w $t0, $t7, 0
# br label %label70
	st.d $t6, $fp, -316
	st.d $a7, $fp, -324
	ld.d $t4, $fp, -316
	ld.d $t5, $fp, -324
	b .avgPooling_label70
.avgPooling_label70:
# %op87 = phi i32 [ %op39, %label36 ], [ %op60, %label45 ]
# %op88 = phi i32 [ %op84, %label36 ], [ %op53, %label45 ]
# br label %label33
	st.d $t4, $fp, -316
	st.d $t5, $fp, -324
	ld.d $t2, $fp, -316
	ld.d $t3, $fp, -324
	b .avgPooling_label33
.avgPooling_label71:
# %op89 = phi i32 [ %op20, %label16 ], [ %op80, %label75 ]
# %op73 = load i32, i32* @n
	la.local $t0, n
	ld.w $a0, $t0, 0
# %op74 = icmp slt i32 %op89, %op73
	slt $a0,$a2,$a0
# br i1 %op74, label %label75, label %label81
	addi.w $t0,$zero,0
	blt $t0,$a0,.avgPooling_label75
	b .avgPooling_label81
.avgPooling_label75:
# %op78 = getelementptr i32, i32* %arg0, i32 %op89
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a0,$t8,$a1
# store i32 0, i32* %op78
	addi.w $t0, $zero, 0
	st.w $t0, $a0, 0
# %op80 = add i32 %op89, 1
	addi.w $t1, $zero, 1
	add.w $a0, $a2, $t1
# br label %label71
	st.d $a0, $fp, -316
	ld.d $a2, $fp, -316
	b .avgPooling_label71
.avgPooling_label81:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b avgPooling_exit
avgPooling_exit:
	# epilog
	ld.d $ra, $sp, 328
	ld.d $fp, $sp, 320
	addi.d $sp, $sp, 336
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -624
	st.d $ra, $sp, 616
	st.d $fp, $sp, 608
	addi.d $fp, $sp, 624
.main_label_entry:
# %op1 = alloca [32 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 432
	sub.d $a0,$fp,$t0
# %op0 = alloca [32 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 560
	sub.d $a1,$fp,$t0
# store i32 32, i32* @n
	la.local $t1, n
	addi.w $t0, $zero, 32
	st.w $t0, $t1, 0
# %op2 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 7, i32* %op2
	addi.w $t0, $zero, 7
	st.w $t0, $a2, 0
# %op3 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 23, i32* %op3
	addi.w $t0, $zero, 23
	st.w $t0, $a2, 0
# %op4 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 89, i32* %op4
	addi.w $t0, $zero, 89
	st.w $t0, $a2, 0
# %op5 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 26, i32* %op5
	addi.w $t0, $zero, 26
	st.w $t0, $a2, 0
# %op6 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 282, i32* %op6
	addi.w $t0, $zero, 282
	st.w $t0, $a2, 0
# %op7 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 5
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 254, i32* %op7
	addi.w $t0, $zero, 254
	st.w $t0, $a2, 0
# %op8 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 6
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 6
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 27, i32* %op8
	addi.w $t0, $zero, 27
	st.w $t0, $a2, 0
# %op9 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 7
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 7
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 5, i32* %op9
	addi.w $t0, $zero, 5
	st.w $t0, $a2, 0
# %op10 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 8
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 8
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 83, i32* %op10
	addi.w $t0, $zero, 83
	st.w $t0, $a2, 0
# %op11 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 9
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 9
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 273, i32* %op11
	addi.w $t0, $zero, 273
	st.w $t0, $a2, 0
# %op12 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 10
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 10
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 574, i32* %op12
	addi.w $t0, $zero, 574
	st.w $t0, $a2, 0
# %op13 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 11
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 11
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 905, i32* %op13
	addi.w $t0, $zero, 905
	st.w $t0, $a2, 0
# %op14 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 12
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 12
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 354, i32* %op14
	addi.w $t0, $zero, 354
	st.w $t0, $a2, 0
# %op15 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 13
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 13
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 657, i32* %op15
	addi.w $t0, $zero, 657
	st.w $t0, $a2, 0
# %op16 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 14
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 14
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 935, i32* %op16
	addi.w $t0, $zero, 935
	st.w $t0, $a2, 0
# %op17 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 264, i32* %op17
	addi.w $t0, $zero, 264
	st.w $t0, $a2, 0
# %op18 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 16
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 16
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 639, i32* %op18
	addi.w $t0, $zero, 639
	st.w $t0, $a2, 0
# %op19 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 17
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 17
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 459, i32* %op19
	addi.w $t0, $zero, 459
	st.w $t0, $a2, 0
# %op20 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 18
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 18
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 29, i32* %op20
	addi.w $t0, $zero, 29
	st.w $t0, $a2, 0
# %op21 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 19
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 19
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 68, i32* %op21
	addi.w $t0, $zero, 68
	st.w $t0, $a2, 0
# %op22 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 20
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 20
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 929, i32* %op22
	addi.w $t0, $zero, 929
	st.w $t0, $a2, 0
# %op23 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 21
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 21
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 756, i32* %op23
	addi.w $t0, $zero, 756
	st.w $t0, $a2, 0
# %op24 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 22
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 22
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 452, i32* %op24
	addi.w $t0, $zero, 452
	st.w $t0, $a2, 0
# %op25 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 23
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 23
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 279, i32* %op25
	addi.w $t0, $zero, 279
	st.w $t0, $a2, 0
# %op26 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 24
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 24
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 58, i32* %op26
	addi.w $t0, $zero, 58
	st.w $t0, $a2, 0
# %op27 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 25
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 25
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 87, i32* %op27
	addi.w $t0, $zero, 87
	st.w $t0, $a2, 0
# %op28 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 26
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 26
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 96, i32* %op28
	addi.w $t0, $zero, 96
	st.w $t0, $a2, 0
# %op29 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 27
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 27
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 36, i32* %op29
	addi.w $t0, $zero, 36
	st.w $t0, $a2, 0
# %op30 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 28
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 28
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 39, i32* %op30
	addi.w $t0, $zero, 39
	st.w $t0, $a2, 0
# %op31 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 29
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 29
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 28, i32* %op31
	addi.w $t0, $zero, 28
	st.w $t0, $a2, 0
# %op32 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 30
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 30
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 1, i32* %op32
	addi.w $t0, $zero, 1
	st.w $t0, $a2, 0
# %op33 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 31
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 31
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 290, i32* %op33
	addi.w $t0, $zero, 290
	st.w $t0, $a2, 0
# %op35 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# %op36 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op37 = call i32 @arrCopy(i32* %op35, i32* %op36)
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
	ld.d $a1, $fp, -40
	ld.d $a2, $fp, -48
	bl arrCopy
	st.w $a0, $fp, -564
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
# %op38 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op39 = call i32 @revert(i32* %op38)
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
	ld.d $a2, $fp, -40
	bl revert
	st.w $a0, $fp, -568
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
# br label %label41
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label41
.main_label41:
# %op153 = phi i32 [ 0, %label_entry ], [ %op50, %label44 ]
# %op43 = icmp slt i32 %op153, 32
	addi.w $t1, $zero, 32
	slt $a3,$a2,$t1
# br i1 %op43, label %label44, label %label51
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label44
	b .main_label51
.main_label44:
# %op46 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 %op153
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op47 = load i32, i32* %op46
	ld.w $a3, $a3, 0
# call void @putint(i32 %op47)
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
	ld.d $a0, $fp, -48
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
# %op50 = add i32 %op153, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# br label %label41
	st.d $a3, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label41
.main_label51:
# %op52 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op53 = call i32 @bubblesort(i32* %op52)
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
	bl bubblesort
	st.w $a0, $fp, -572
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
# br label %label54
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label54
.main_label54:
# %op155 = phi i32 [ 0, %label51 ], [ %op63, %label57 ]
# %op56 = icmp slt i32 %op155, 32
	addi.w $t1, $zero, 32
	slt $a3,$a2,$t1
# br i1 %op56, label %label57, label %label64
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label57
	b .main_label64
.main_label57:
# %op59 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 %op155
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op60 = load i32, i32* %op59
	ld.w $a3, $a3, 0
# call void @putint(i32 %op60)
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
	ld.d $a0, $fp, -48
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
# %op63 = add i32 %op155, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# br label %label54
	st.d $a3, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label54
.main_label64:
# %op65 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op66 = call i32 @getMid(i32* %op65)
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
	bl getMid
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
# call void @putint(i32 %op66)
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
# %op68 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op69 = call i32 @getMost(i32* %op68)
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
	ld.d $a1, $fp, -40
	bl getMost
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
# call void @putint(i32 %op69)
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
# %op71 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# %op72 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op73 = call i32 @arrCopy(i32* %op71, i32* %op72)
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
	ld.d $a1, $fp, -40
	ld.d $a2, $fp, -48
	bl arrCopy
	st.w $a0, $fp, -576
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
# %op74 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op75 = call i32 @bubblesort(i32* %op74)
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
	bl bubblesort
	st.w $a0, $fp, -580
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
# br label %label76
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label76
.main_label76:
# %op157 = phi i32 [ 0, %label64 ], [ %op85, %label79 ]
# %op78 = icmp slt i32 %op157, 32
	addi.w $t1, $zero, 32
	slt $a3,$a2,$t1
# br i1 %op78, label %label79, label %label86
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label79
	b .main_label86
.main_label79:
# %op81 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 %op157
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op82 = load i32, i32* %op81
	ld.w $a3, $a3, 0
# call void @putint(i32 %op82)
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
	ld.d $a0, $fp, -48
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
# %op85 = add i32 %op157, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# br label %label76
	st.d $a3, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label76
.main_label86:
# %op87 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# %op88 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op89 = call i32 @arrCopy(i32* %op87, i32* %op88)
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
	ld.d $a1, $fp, -40
	ld.d $a2, $fp, -48
	bl arrCopy
	st.w $a0, $fp, -584
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
# %op90 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op91 = call i32 @insertsort(i32* %op90)
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
	bl insertsort
	st.w $a0, $fp, -588
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
# br label %label92
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label92
.main_label92:
# %op159 = phi i32 [ 0, %label86 ], [ %op101, %label95 ]
# %op94 = icmp slt i32 %op159, 32
	addi.w $t1, $zero, 32
	slt $a3,$a2,$t1
# br i1 %op94, label %label95, label %label102
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label95
	b .main_label102
.main_label95:
# %op97 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 %op159
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op98 = load i32, i32* %op97
	ld.w $a3, $a3, 0
# call void @putint(i32 %op98)
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
	ld.d $a0, $fp, -48
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
# %op101 = add i32 %op159, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# br label %label92
	st.d $a3, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label92
.main_label102:
# %op103 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# %op104 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op105 = call i32 @arrCopy(i32* %op103, i32* %op104)
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
	ld.d $a1, $fp, -40
	ld.d $a2, $fp, -48
	bl arrCopy
	st.w $a0, $fp, -592
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
# %op106 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op109 = call i32 @QuickSort(i32* %op106, i32 0, i32 31)
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
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 31
	bl QuickSort
	st.w $a0, $fp, -596
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
# br label %label110
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label110
.main_label110:
# %op161 = phi i32 [ 0, %label102 ], [ %op119, %label113 ]
# %op112 = icmp slt i32 %op161, 32
	addi.w $t1, $zero, 32
	slt $a3,$a2,$t1
# br i1 %op112, label %label113, label %label120
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label113
	b .main_label120
.main_label113:
# %op115 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 %op161
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op116 = load i32, i32* %op115
	ld.w $a3, $a3, 0
# call void @putint(i32 %op116)
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
	ld.d $a0, $fp, -48
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
# %op119 = add i32 %op161, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# br label %label110
	st.d $a3, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label110
.main_label120:
# %op121 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# %op122 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op123 = call i32 @arrCopy(i32* %op121, i32* %op122)
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
	ld.d $a1, $fp, -40
	ld.d $a2, $fp, -48
	bl arrCopy
	st.w $a0, $fp, -600
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
# %op124 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op125 = call i32 @calSum(i32* %op124, i32 4)
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
	addi.w $a1, $zero, 4
	bl calSum
	st.w $a0, $fp, -604
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
# br label %label126
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label126
.main_label126:
# %op163 = phi i32 [ 0, %label120 ], [ %op135, %label129 ]
# %op128 = icmp slt i32 %op163, 32
	addi.w $t1, $zero, 32
	slt $a3,$a2,$t1
# br i1 %op128, label %label129, label %label136
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label129
	b .main_label136
.main_label129:
# %op131 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 %op163
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# %op132 = load i32, i32* %op131
	ld.w $a3, $a3, 0
# call void @putint(i32 %op132)
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
	ld.d $a0, $fp, -48
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
# %op135 = add i32 %op163, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# br label %label126
	st.d $a3, $fp, -620
	ld.d $a2, $fp, -620
	b .main_label126
.main_label136:
# %op137 = getelementptr [32 x i32], [32 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a1,$t0
# %op138 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op139 = call i32 @arrCopy(i32* %op137, i32* %op138)
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
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	bl arrCopy
	st.w $a0, $fp, -608
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
# %op140 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op141 = call i32 @avgPooling(i32* %op140, i32 3)
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
	ld.d $a1, $fp, -32
	addi.w $a2, $zero, 3
	bl avgPooling
	st.w $a0, $fp, -612
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
# br label %label142
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -620
	ld.d $a1, $fp, -620
	b .main_label142
.main_label142:
# %op165 = phi i32 [ 0, %label136 ], [ %op151, %label145 ]
# %op144 = icmp slt i32 %op165, 32
	addi.w $t1, $zero, 32
	slt $a2,$a1,$t1
# br i1 %op144, label %label145, label %label152
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label145
	b .main_label152
.main_label145:
# %op147 = getelementptr [32 x i32], [32 x i32]* %op1, i32 0, i32 %op165
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 128
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op148 = load i32, i32* %op147
	ld.w $a2, $a2, 0
# call void @putint(i32 %op148)
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
# %op151 = add i32 %op165, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label142
	st.d $a2, $fp, -620
	ld.d $a1, $fp, -620
	b .main_label142
.main_label152:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 616
	ld.d $fp, $sp, 608
	addi.d $sp, $sp, 624
	jr $ra
