# Global variables
	.text
	.data
	.globl buf
	.align 3
	.type buf, @object
	.size buf, 800
buf:
	.space 800
	.text
	.align 2
	.globl merge_sort
	.type merge_sort, @function
merge_sort:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.merge_sort_label_entry:
# %op5 = add i32 %arg0, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a0, $t1
# %op7 = icmp sge i32 %op5, %arg1
	slt $a2,$a2,$a1
	addi.w $t8,$zero,1
	sub.w $a2,$t8,$a2
# br i1 %op7, label %label8, label %label9
	addi.w $t0,$zero,0
	blt $t0,$a2,.merge_sort_label8
	b .merge_sort_label9
.merge_sort_label8:
# ret void
	addi.w $a0, $zero, 0
	b merge_sort_exit
.merge_sort_label9:
# %op13 = add i32 %arg0, %arg1
	add.w $a2, $a0, $a1
# %op14 = sdiv i32 %op13, 2
	addi.w $t1, $zero, 2
	div.w $a2, $a2, $t1
# call void @merge_sort(i32 %arg0, i32 %op14)
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
	ld.d $a1, $fp, -40
	bl merge_sort
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
# call void @merge_sort(i32 %op14, i32 %arg1)
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
	ld.d $a1, $fp, -32
	bl merge_sort
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
# br label %label25
	st.d $a0, $fp, -312
	st.d $a2, $fp, -320
	st.d $a0, $fp, -328
	ld.d $a3, $fp, -312
	ld.d $a4, $fp, -320
	ld.d $a5, $fp, -328
	b .merge_sort_label25
.merge_sort_label25:
# %op104 = phi i32 [ %arg0, %label9 ], [ %op60, %label58 ]
# %op105 = phi i32 [ %op14, %label9 ], [ %op107, %label58 ]
# %op106 = phi i32 [ %arg0, %label9 ], [ %op108, %label58 ]
# %op28 = icmp slt i32 %op106, %op14
	slt $a6,$a3,$a2
# br i1 %op28, label %label38, label %label37
	addi.w $t0,$zero,0
	blt $t0,$a6,.merge_sort_label38
	b .merge_sort_label37
.merge_sort_label29:
# %op31 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %op106
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a6,$t1,$t0
# %op32 = load i32, i32* %op31
	ld.w $a6, $a6, 0
# %op34 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a7,$t1,$t0
# %op35 = load i32, i32* %op34
	ld.w $a7, $a7, 0
# %op36 = icmp slt i32 %op32, %op35
	slt $a6,$a6,$a7
# br i1 %op36, label %label42, label %label50
	addi.w $t0,$zero,0
	blt $t0,$a6,.merge_sort_label42
	b .merge_sort_label50
.merge_sort_label37:
# br label %label61
	st.d $a3, $fp, -312
	st.d $a5, $fp, -320
	ld.d $a6, $fp, -312
	ld.d $a7, $fp, -320
	b .merge_sort_label61
.merge_sort_label38:
# %op41 = icmp slt i32 %op105, %arg1
	slt $a6,$a4,$a1
# br i1 %op41, label %label29, label %label37
	addi.w $t0,$zero,0
	blt $t0,$a6,.merge_sort_label29
	b .merge_sort_label37
.merge_sort_label42:
# %op44 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %op106
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a6,$t1,$t0
# %op45 = load i32, i32* %op44
	ld.w $a6, $a6, 0
# %op47 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %op104
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a7,$t1,$t0
# store i32 %op45, i32* %op47
	st.w $a6, $a7, 0
# %op49 = add i32 %op106, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a3, $t1
# br label %label58
	st.d $a6, $fp, -312
	st.d $a4, $fp, -320
	ld.d $a7, $fp, -312
	ld.d $t2, $fp, -320
	b .merge_sort_label58
.merge_sort_label50:
# %op52 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a6,$t1,$t0
# %op53 = load i32, i32* %op52
	ld.w $a6, $a6, 0
# %op55 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %op104
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $t3,$t1,$t0
# store i32 %op53, i32* %op55
	st.w $a6, $t3, 0
# %op57 = add i32 %op105, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a4, $t1
# br label %label58
	st.d $a3, $fp, -312
	st.d $a6, $fp, -320
	ld.d $a7, $fp, -312
	ld.d $t2, $fp, -320
	b .merge_sort_label58
.merge_sort_label58:
# %op107 = phi i32 [ %op105, %label42 ], [ %op57, %label50 ]
# %op108 = phi i32 [ %op49, %label42 ], [ %op106, %label50 ]
# %op60 = add i32 %op104, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a5, $t1
# br label %label25
	st.d $a7, $fp, -312
	st.d $t2, $fp, -320
	st.d $a6, $fp, -328
	ld.d $a3, $fp, -312
	ld.d $a4, $fp, -320
	ld.d $a5, $fp, -328
	b .merge_sort_label25
.merge_sort_label61:
# %op109 = phi i32 [ %op104, %label37 ], [ %op74, %label65 ]
# %op110 = phi i32 [ %op106, %label37 ], [ %op72, %label65 ]
# %op64 = icmp slt i32 %op110, %op14
	slt $a3,$a6,$a2
# br i1 %op64, label %label65, label %label75
	addi.w $t0,$zero,0
	blt $t0,$a3,.merge_sort_label65
	b .merge_sort_label75
.merge_sort_label65:
# %op67 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %op110
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a3,$t1,$t0
# %op68 = load i32, i32* %op67
	ld.w $a3, $a3, 0
# %op70 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %op109
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a5,$t1,$t0
# store i32 %op68, i32* %op70
	st.w $a3, $a5, 0
# %op72 = add i32 %op110, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a6, $t1
# %op74 = add i32 %op109, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a7, $t1
# br label %label61
	st.d $a3, $fp, -312
	st.d $a5, $fp, -320
	ld.d $a6, $fp, -312
	ld.d $a7, $fp, -320
	b .merge_sort_label61
.merge_sort_label75:
# br label %label76
	st.d $a4, $fp, -312
	st.d $a7, $fp, -320
	ld.d $a2, $fp, -312
	ld.d $a3, $fp, -320
	b .merge_sort_label76
.merge_sort_label76:
# %op111 = phi i32 [ %op109, %label75 ], [ %op89, %label80 ]
# %op112 = phi i32 [ %op105, %label75 ], [ %op87, %label80 ]
# %op79 = icmp slt i32 %op112, %arg1
	slt $a4,$a2,$a1
# br i1 %op79, label %label80, label %label90
	addi.w $t0,$zero,0
	blt $t0,$a4,.merge_sort_label80
	b .merge_sort_label90
.merge_sort_label80:
# %op82 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %op112
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a4,$t1,$t0
# %op83 = load i32, i32* %op82
	ld.w $a4, $a4, 0
# %op85 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %op111
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a5,$t1,$t0
# store i32 %op83, i32* %op85
	st.w $a4, $a5, 0
# %op87 = add i32 %op112, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a2, $t1
# %op89 = add i32 %op111, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a3, $t1
# br label %label76
	st.d $a4, $fp, -312
	st.d $a5, $fp, -320
	ld.d $a2, $fp, -312
	ld.d $a3, $fp, -320
	b .merge_sort_label76
.merge_sort_label90:
# br label %label91
	st.d $a0, $fp, -312
	ld.d $a2, $fp, -312
	b .merge_sort_label91
.merge_sort_label91:
# %op113 = phi i32 [ %arg0, %label90 ], [ %op102, %label95 ]
# %op94 = icmp slt i32 %op113, %arg1
	slt $a0,$a2,$a1
# br i1 %op94, label %label95, label %label103
	addi.w $t0,$zero,0
	blt $t0,$a0,.merge_sort_label95
	b .merge_sort_label103
.merge_sort_label95:
# %op97 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 1, i32 %op113
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a0,$t1,$t0
# %op98 = load i32, i32* %op97
	ld.w $a0, $a0, 0
# %op100 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0, i32 %op113
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a3,$t1,$t0
# store i32 %op98, i32* %op100
	st.w $a0, $a3, 0
# %op102 = add i32 %op113, 1
	addi.w $t1, $zero, 1
	add.w $a0, $a2, $t1
# br label %label91
	st.d $a0, $fp, -312
	ld.d $a2, $fp, -312
	b .merge_sort_label91
.merge_sort_label103:
# ret void
	addi.w $a0, $zero, 0
	b merge_sort_exit
merge_sort_exit:
	# epilog
	ld.d $ra, $sp, 328
	ld.d $fp, $sp, 320
	addi.d $sp, $sp, 336
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.main_label_entry:
# %op1 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a0,$t1,$t0
# %op2 = getelementptr [100 x i32], [100 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a0,$a0,$t0
# %op3 = call i32 @getarray(i32* %op2)
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
	bl getarray
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
# call void @merge_sort(i32 0, i32 %op3)
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
	addi.w $a0, $zero, 0
	ld.d $a1, $fp, -24
	bl merge_sort
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
# %op6 = getelementptr [2 x [100 x i32]], [2 x [100 x i32]]* @buf, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, buf
	add.d $a1,$t1,$t0
# %op7 = getelementptr [100 x i32], [100 x i32]* %op6, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a1,$t0
# call void @putarray(i32 %op3, i32* %op7)
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
	bl putarray
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
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
