	.text
	.align 2
	.globl whileIf
	.type whileIf, @function
whileIf:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.whileIf_label_entry:
# br label %label2
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	b .whileIf_label2
.whileIf_label2:
# %op22 = phi i32 [ 0, %label_entry ], [ %op24, %label14 ]
# %op23 = phi i32 [ 0, %label_entry ], [ %op16, %label14 ]
# %op4 = icmp slt i32 %op23, 100
	addi.w $t1, $zero, 100
	slt $a2,$a0,$t1
# br i1 %op4, label %label5, label %label8
	addi.w $t0,$zero,0
	blt $t0,$a2,.whileIf_label5
	b .whileIf_label8
.whileIf_label5:
# %op7 = icmp eq i32 %op23, 5
	addi.w $t1, $zero, 5
	slt $t8,$t1,$a0
	slt $t0,$a0,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op7, label %label10, label %label11
	addi.w $t0,$zero,0
	blt $t0,$a2,.whileIf_label10
	b .whileIf_label11
.whileIf_label8:
# ret i32 %op22
	or $a0, $zero, $a1
	b whileIf_exit
.whileIf_label10:
# br label %label14
	addi.w $t0, $zero, 25
	st.d $t0, $fp, -312
	ld.d $a2, $fp, -312
	b .whileIf_label14
.whileIf_label11:
# %op13 = icmp eq i32 %op23, 10
	addi.w $t1, $zero, 10
	slt $t8,$t1,$a0
	slt $t0,$a0,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op13, label %label17, label %label18
	addi.w $t0,$zero,0
	blt $t0,$a3,.whileIf_label17
	b .whileIf_label18
.whileIf_label14:
# %op24 = phi i32 [ 25, %label10 ], [ %op25, %label21 ]
# %op16 = add i32 %op23, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a0, $t1
# br label %label2
	st.d $a3, $fp, -312
	st.d $a2, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	b .whileIf_label2
.whileIf_label17:
# br label %label21
	addi.w $t0, $zero, 42
	st.d $t0, $fp, -312
	ld.d $a3, $fp, -312
	b .whileIf_label21
.whileIf_label18:
# %op20 = mul i32 %op23, 2
	addi.w $t1, $zero, 2
	mul.w $a4, $a0, $t1
# br label %label21
	st.d $a4, $fp, -312
	ld.d $a3, $fp, -312
	b .whileIf_label21
.whileIf_label21:
# %op25 = phi i32 [ %op20, %label18 ], [ 42, %label17 ]
# br label %label14
	st.d $a3, $fp, -312
	ld.d $a2, $fp, -312
	b .whileIf_label14
whileIf_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.main_label_entry:
# %op0 = call i32 @whileIf()
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
	bl whileIf
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
# ret i32 %op0
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
