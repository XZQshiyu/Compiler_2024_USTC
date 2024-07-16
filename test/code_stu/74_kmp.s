	.text
	.align 2
	.globl get_next
	.type get_next, @function
get_next:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.get_next_label_entry:
# %op6 = getelementptr i32, i32* %arg1, i32 0
	addi.w $t0, $zero, 0
	add.d $t8,$t0 , $t0
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a1
# store i32 -1, i32* %op6
	addi.w $t0, $zero, -1
	st.w $t0, $a2, 0
# br label %label10
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	addi.w $t0, $zero, -1
	st.d $t0, $fp, -320
	ld.d $a2, $fp, -312
	ld.d $a3, $fp, -320
	b .get_next_label10
.get_next_label10:
# %op46 = phi i32 [ -1, %label_entry ], [ %op48, %label35 ]
# %op47 = phi i32 [ 0, %label_entry ], [ %op49, %label35 ]
# %op13 = getelementptr i32, i32* %arg0, i32 %op47
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# %op14 = load i32, i32* %op13
	ld.w $a4, $a4, 0
# %op15 = icmp ne i32 0, %op14
	addi.w $t0, $zero, 0
	slt $t8,$a4,$t0
	slt $t0,$t0,$a4
	or $a4,$t0,$t8
# br i1 %op15, label %label16, label %label20
	addi.w $t0,$zero,0
	blt $t0,$a4,.get_next_label16
	b .get_next_label20
.get_next_label16:
# %op19 = icmp eq i32 %op46, -1
	addi.w $t1, $zero, -1
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a4,$t8,$t0
# br i1 %op19, label %label21, label %label36
	addi.w $t0,$zero,0
	blt $t0,$a4,.get_next_label21
	b .get_next_label36
.get_next_label20:
# ret void
	addi.w $a0, $zero, 0
	b get_next_exit
.get_next_label21:
# %op23 = add i32 %op46, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# %op25 = add i32 %op47, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a2, $t1
# %op29 = getelementptr i32, i32* %arg1, i32 %op25
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a6,$t8,$a1
# store i32 %op23, i32* %op29
	st.w $a4, $a6, 0
# br label %label35
	st.d $a5, $fp, -312
	st.d $a4, $fp, -320
	ld.d $a6, $fp, -312
	ld.d $a7, $fp, -320
	b .get_next_label35
.get_next_label30:
# %op33 = getelementptr i32, i32* %arg1, i32 %op46
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a1
# %op34 = load i32, i32* %op33
	ld.w $a4, $a4, 0
# br label %label35
	st.d $a2, $fp, -312
	st.d $a4, $fp, -320
	ld.d $a6, $fp, -312
	ld.d $a7, $fp, -320
	b .get_next_label35
.get_next_label35:
# %op48 = phi i32 [ %op23, %label21 ], [ %op34, %label30 ]
# %op49 = phi i32 [ %op25, %label21 ], [ %op47, %label30 ]
# br label %label10
	st.d $a6, $fp, -312
	st.d $a7, $fp, -320
	ld.d $a2, $fp, -312
	ld.d $a3, $fp, -320
	b .get_next_label10
.get_next_label36:
# %op39 = getelementptr i32, i32* %arg0, i32 %op47
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# %op40 = load i32, i32* %op39
	ld.w $a4, $a4, 0
# %op43 = getelementptr i32, i32* %arg0, i32 %op46
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# %op44 = load i32, i32* %op43
	ld.w $a5, $a5, 0
# %op45 = icmp eq i32 %op40, %op44
	slt $t8,$a5,$a4
	slt $t0,$a4,$a5
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a4,$t8,$t0
# br i1 %op45, label %label21, label %label30
	addi.w $t0,$zero,0
	blt $t0,$a4,.get_next_label21
	b .get_next_label30
get_next_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl KMP
	.type KMP, @function
KMP:
	lu12i.w $t0, -5
	ori $t0, $t0, 3776
	add.d $sp, $sp, $t0
	lu12i.w $t0, 4
	ori $t0, $t0, 312
	stx.d $ra, $sp, $t0
	lu12i.w $t0, 4
	ori $t0, $t0, 304
	stx.d $fp, $sp, $t0
	lu12i.w $t0, 4
	ori $t0, $t0, 320
	add.d $fp, $sp, $t0
.KMP_label_entry:
# %op4 = alloca [4096 x i32]
	lu12i.w $t0, 4
	ori $t0, $t0, 304
	sub.d $a2,$fp,$t0
# %op6 = getelementptr [4096 x i32], [4096 x i32]* %op4, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a2,$t0
# call void @get_next(i32* %arg0, i32* %op6)
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
	ld.d $a1, $fp, -48
	bl get_next
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
# br label %label9
	addi.w $t0, $zero, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	lu12i.w $a3, -5
	ori $a3, $a3, 3784
	lu32i.d $a3, -1
	lu52i.d $a3, $a3, -1
	add.d $a3, $fp, $a3
	ld.d $a3, $a3, 0
	lu12i.w $a4, -5
	ori $a4, $a4, 3776
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .KMP_label9
.KMP_label9:
# %op56 = phi i32 [ 0, %label_entry ], [ %op58, %label46 ]
# %op57 = phi i32 [ 0, %label_entry ], [ %op59, %label46 ]
# %op12 = getelementptr i32, i32* %arg1, i32 %op56
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a1
# %op13 = load i32, i32* %op12
	ld.w $a5, $a5, 0
# %op14 = icmp ne i32 0, %op13
	addi.w $t0, $zero, 0
	slt $t8,$a5,$t0
	slt $t0,$t0,$a5
	or $a5,$t0,$t8
# br i1 %op14, label %label15, label %label25
	addi.w $t0,$zero,0
	blt $t0,$a5,.KMP_label15
	b .KMP_label25
.KMP_label15:
# %op18 = getelementptr i32, i32* %arg0, i32 %op57
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a5,$t8,$a0
# %op19 = load i32, i32* %op18
	ld.w $a5, $a5, 0
# %op22 = getelementptr i32, i32* %arg1, i32 %op56
	add.d $t8,$a4 , $a4
	add.d $t8,$t8,$t8
	add.d $a6,$t8,$a1
# %op23 = load i32, i32* %op22
	ld.w $a6, $a6, 0
# %op24 = icmp eq i32 %op19, %op23
	slt $t8,$a6,$a5
	slt $t0,$a5,$a6
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a5,$t8,$t0
# br i1 %op24, label %label27, label %label39
	addi.w $t0,$zero,0
	blt $t0,$a5,.KMP_label27
	b .KMP_label39
.KMP_label25:
# ret i32 -1
	addi.w $t0, $zero, -1
	or $a0, $zero, $t0
	b KMP_exit
.KMP_label27:
# %op29 = add i32 %op57, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a3, $t1
# %op31 = add i32 %op56, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a4, $t1
# %op34 = getelementptr i32, i32* %arg0, i32 %op29
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a0
# %op35 = load i32, i32* %op34
	ld.w $a7, $a7, 0
# %op36 = icmp eq i32 0, %op35
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a7,$t8,$t0
# %op37 = zext i1 %op36 to i32
# %op38 = icmp ne i32 0, %op37
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $a7,$t0,$t8
# br i1 %op38, label %label47, label %label49
	addi.w $t0,$zero,0
	blt $t0,$a7,.KMP_label47
	b .KMP_label49
.KMP_label39:
# %op41 = getelementptr [4096 x i32], [4096 x i32]* %op4, i32 0, i32 %op57
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a2,$t0
# %op42 = load i32, i32* %op41
	ld.w $a5, $a5, 0
# %op45 = icmp eq i32 %op42, -1
	addi.w $t1, $zero, -1
	slt $t8,$t1,$a5
	slt $t0,$a5,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a6,$t8,$t0
# br i1 %op45, label %label50, label %label55
	addi.w $t0,$zero,0
	blt $t0,$a6,.KMP_label50
	or $t3, $zero, $a5
	or $t4, $zero, $a4
	b .KMP_label55
.KMP_label46:
# %op58 = phi i32 [ %op31, %label49 ], [ %op60, %label55 ]
# %op59 = phi i32 [ %op29, %label49 ], [ %op61, %label55 ]
# br label %label9
	lu12i.w $t8, -5
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a7, $t8, 0
	lu12i.w $a3, -5
	ori $a3, $a3, 3784
	lu32i.d $a3, -1
	lu52i.d $a3, $a3, -1
	add.d $a3, $fp, $a3
	ld.d $a3, $a3, 0
	lu12i.w $a4, -5
	ori $a4, $a4, 3776
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .KMP_label9
.KMP_label47:
# ret i32 %op31
	or $a0, $zero, $a6
	b KMP_exit
.KMP_label49:
# br label %label46
	lu12i.w $t8, -5
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a6, $t8, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $a7, -5
	ori $a7, $a7, 3784
	lu32i.d $a7, -1
	lu52i.d $a7, $a7, -1
	add.d $a7, $fp, $a7
	ld.d $a7, $a7, 0
	lu12i.w $t2, -5
	ori $t2, $t2, 3776
	lu32i.d $t2, -1
	lu52i.d $t2, $t2, -1
	add.d $t2, $fp, $t2
	ld.d $t2, $t2, 0
	b .KMP_label46
.KMP_label50:
# %op52 = add i32 %op42, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a5, $t1
# %op54 = add i32 %op56, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a4, $t1
# br label %label55
	lu12i.w $t8, -5
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a6, $t8, 0
	lu12i.w $t3, -5
	ori $t3, $t3, 3784
	lu32i.d $t3, -1
	lu52i.d $t3, $t3, -1
	add.d $t3, $fp, $t3
	ld.d $t3, $t3, 0
	lu12i.w $t4, -5
	ori $t4, $t4, 3776
	lu32i.d $t4, -1
	lu52i.d $t4, $t4, -1
	add.d $t4, $fp, $t4
	ld.d $t4, $t4, 0
	b .KMP_label55
.KMP_label55:
# %op60 = phi i32 [ %op56, %label39 ], [ %op54, %label50 ]
# %op61 = phi i32 [ %op42, %label39 ], [ %op52, %label50 ]
# br label %label46
	lu12i.w $t8, -5
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t4, $t8, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t3, $t8, 0
	lu12i.w $a7, -5
	ori $a7, $a7, 3784
	lu32i.d $a7, -1
	lu52i.d $a7, $a7, -1
	add.d $a7, $fp, $a7
	ld.d $a7, $a7, 0
	lu12i.w $t2, -5
	ori $t2, $t2, 3776
	lu32i.d $t2, -1
	lu52i.d $t2, $t2, -1
	add.d $t2, $fp, $t2
	ld.d $t2, $t2, 0
	b .KMP_label46
KMP_exit:
	# epilog
	lu12i.w $t0, 4
	ori $t0, $t0, 312
	ldx.d $ra, $sp, $t0
	lu12i.w $t0, 4
	ori $t0, $t0, 304
	ldx.d $fp, $sp, $t0
	lu12i.w $t0, 4
	ori $t0, $t0, 320
	add.d $sp, $sp, $t0
	jr $ra
	.globl read_str
	.type read_str, @function
read_str:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.read_str_label_entry:
# br label %label3
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .read_str_label3
.read_str_label3:
# %op24 = phi i32 [ 0, %label_entry ], [ %op23, %label21 ]
# br label %label5
	b .read_str_label5
.read_str_label5:
# %op6 = call i32 @getch()
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
	bl getch
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
# %op9 = getelementptr i32, i32* %arg0, i32 %op24
	add.d $t8,$a0 , $a0
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a1
# store i32 %op6, i32* %op9
	st.w $a2, $a3, 0
# %op12 = getelementptr i32, i32* %arg0, i32 %op24
	add.d $t8,$a0 , $a0
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a1
# %op13 = load i32, i32* %op12
	ld.w $a2, $a2, 0
# %op14 = icmp eq i32 %op13, 10
	addi.w $t1, $zero, 10
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op14, label %label20, label %label21
	addi.w $t0,$zero,0
	blt $t0,$a2,.read_str_label20
	b .read_str_label21
.read_str_label15:
# %op18 = getelementptr i32, i32* %arg0, i32 %op24
	add.d $t8,$a0 , $a0
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a1
# store i32 0, i32* %op18
	addi.w $t0, $zero, 0
	st.w $t0, $a2, 0
# ret i32 %op24
	b read_str_exit
.read_str_label20:
# br label %label15
	b .read_str_label15
.read_str_label21:
# %op23 = add i32 %op24, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a0, $t1
# br label %label3
	st.d $a2, $fp, -312
	ld.d $a0, $fp, -312
	b .read_str_label3
read_str_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl main
	.type main, @function
main:
	lu12i.w $t0, -9
	ori $t0, $t0, 3776
	add.d $sp, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 312
	stx.d $ra, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 304
	stx.d $fp, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 320
	add.d $fp, $sp, $t0
.main_label_entry:
# %op1 = alloca [4096 x i32]
	lu12i.w $t0, 4
	ori $t0, $t0, 304
	sub.d $a0,$fp,$t0
# %op0 = alloca [4096 x i32]
	lu12i.w $t0, 8
	ori $t0, $t0, 304
	sub.d $a1,$fp,$t0
# %op2 = getelementptr [4096 x i32], [4096 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# %op3 = call i32 @read_str(i32* %op2)
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
	bl read_str
	lu12i.w $t8, -9
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
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
# %op4 = getelementptr [4096 x i32], [4096 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op5 = call i32 @read_str(i32* %op4)
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
	bl read_str
	lu12i.w $t8, -9
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
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
# %op6 = getelementptr [4096 x i32], [4096 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a1,$t0
# %op7 = getelementptr [4096 x i32], [4096 x i32]* %op1, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a0,$a0,$t0
# %op8 = call i32 @KMP(i32* %op6, i32* %op7)
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
	ld.d $a1, $fp, -24
	bl KMP
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
# call void @putint(i32 %op8)
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
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
main_exit:
	# epilog
	lu12i.w $t0, 8
	ori $t0, $t0, 312
	ldx.d $ra, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 304
	ldx.d $fp, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 320
	add.d $sp, $sp, $t0
	jr $ra
