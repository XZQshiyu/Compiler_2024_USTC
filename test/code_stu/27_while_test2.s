	.text
	.align 2
	.globl FourWhile
	.type FourWhile, @function
FourWhile:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.FourWhile_label_entry:
# br label %label4
	addi.w $t0, $zero, 5
	st.d $t0, $fp, -312
	addi.w $t0, $zero, 6
	st.d $t0, $fp, -320
	addi.w $t0, $zero, 7
	st.d $t0, $fp, -328
	addi.w $t0, $zero, 10
	st.d $t0, $fp, -336
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	ld.d $a2, $fp, -328
	ld.d $a3, $fp, -336
	b .FourWhile_label4
.FourWhile_label4:
# %op45 = phi i32 [ 10, %label_entry ], [ %op49, %label24 ]
# %op46 = phi i32 [ 7, %label_entry ], [ %op50, %label24 ]
# %op47 = phi i32 [ 6, %label_entry ], [ %op26, %label24 ]
# %op48 = phi i32 [ 5, %label_entry ], [ %op9, %label24 ]
# %op6 = icmp slt i32 %op48, 20
	addi.w $t1, $zero, 20
	slt $a4,$a0,$t1
# br i1 %op6, label %label7, label %label10
	addi.w $t0,$zero,0
	blt $t0,$a4,.FourWhile_label7
	b .FourWhile_label10
.FourWhile_label7:
# %op9 = add i32 %op48, 3
	addi.w $t1, $zero, 3
	add.w $a4, $a0, $t1
# br label %label18
	st.d $a1, $fp, -312
	st.d $a2, $fp, -320
	st.d $a3, $fp, -328
	ld.d $a5, $fp, -312
	ld.d $a6, $fp, -320
	ld.d $a7, $fp, -328
	b .FourWhile_label18
.FourWhile_label10:
# %op14 = add i32 %op47, %op45
	add.w $a1, $a1, $a3
# %op15 = add i32 %op48, %op14
	add.w $a0, $a0, $a1
# %op17 = add i32 %op15, %op46
	add.w $a0, $a0, $a2
# ret i32 %op17
	b FourWhile_exit
.FourWhile_label18:
# %op49 = phi i32 [ %op45, %label7 ], [ %op52, %label33 ]
# %op50 = phi i32 [ %op46, %label7 ], [ %op35, %label33 ]
# %op51 = phi i32 [ %op47, %label7 ], [ %op23, %label33 ]
# %op20 = icmp slt i32 %op51, 10
	addi.w $t1, $zero, 10
	slt $t2,$a5,$t1
# br i1 %op20, label %label21, label %label24
	addi.w $t0,$zero,0
	blt $t0,$t2,.FourWhile_label21
	b .FourWhile_label24
.FourWhile_label21:
# %op23 = add i32 %op51, 1
	addi.w $t1, $zero, 1
	add.w $t2, $a5, $t1
# br label %label27
	st.d $a6, $fp, -312
	st.d $a7, $fp, -320
	ld.d $t3, $fp, -312
	ld.d $t4, $fp, -320
	b .FourWhile_label27
.FourWhile_label24:
# %op26 = sub i32 %op51, 2
	addi.w $t1, $zero, 2
	sub.w $a5, $a5, $t1
# br label %label4
	st.d $a4, $fp, -312
	st.d $a5, $fp, -320
	st.d $a6, $fp, -328
	st.d $a7, $fp, -336
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	ld.d $a2, $fp, -328
	ld.d $a3, $fp, -336
	b .FourWhile_label4
.FourWhile_label27:
# %op52 = phi i32 [ %op49, %label21 ], [ %op44, %label42 ]
# %op53 = phi i32 [ %op50, %label21 ], [ %op32, %label42 ]
# %op29 = icmp eq i32 %op53, 7
	addi.w $t1, $zero, 7
	slt $t8,$t1,$t3
	slt $t0,$t3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op29, label %label30, label %label33
	addi.w $t0,$zero,0
	blt $t0,$t5,.FourWhile_label30
	b .FourWhile_label33
.FourWhile_label30:
# %op32 = sub i32 %op53, 1
	addi.w $t1, $zero, 1
	sub.w $t5, $t3, $t1
# br label %label36
	st.d $t4, $fp, -312
	ld.d $t6, $fp, -312
	b .FourWhile_label36
.FourWhile_label33:
# %op35 = add i32 %op53, 1
	addi.w $t1, $zero, 1
	add.w $t3, $t3, $t1
# br label %label18
	st.d $t2, $fp, -312
	st.d $t3, $fp, -320
	st.d $t4, $fp, -328
	ld.d $a5, $fp, -312
	ld.d $a6, $fp, -320
	ld.d $a7, $fp, -328
	b .FourWhile_label18
.FourWhile_label36:
# %op54 = phi i32 [ %op52, %label30 ], [ %op41, %label39 ]
# %op38 = icmp slt i32 %op54, 20
	addi.w $t1, $zero, 20
	slt $t7,$t6,$t1
# br i1 %op38, label %label39, label %label42
	addi.w $t0,$zero,0
	blt $t0,$t7,.FourWhile_label39
	b .FourWhile_label42
.FourWhile_label39:
# %op41 = add i32 %op54, 3
	addi.w $t1, $zero, 3
	add.w $t7, $t6, $t1
# br label %label36
	st.d $t7, $fp, -312
	ld.d $t6, $fp, -312
	b .FourWhile_label36
.FourWhile_label42:
# %op44 = sub i32 %op54, 1
	addi.w $t1, $zero, 1
	sub.w $t6, $t6, $t1
# br label %label27
	st.d $t5, $fp, -312
	st.d $t6, $fp, -320
	ld.d $t3, $fp, -312
	ld.d $t4, $fp, -320
	b .FourWhile_label27
FourWhile_exit:
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
# %op0 = call i32 @FourWhile()
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
	bl FourWhile
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
