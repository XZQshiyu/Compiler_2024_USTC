	.text
	.align 2
	.globl deepWhileBr
	.type deepWhileBr, @function
deepWhileBr:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.deepWhileBr_label_entry:
# %op7 = add i32 %arg0, %arg1
	add.w $a0, $a0, $a1
# br label %label8
	st.d $a0, $fp, -312
	ld.d $a1, $fp, -312
	b .deepWhileBr_label8
.deepWhileBr_label8:
# %op36 = phi i32 [ %op7, %label_entry ], [ %op38, %label23 ]
# %op10 = icmp slt i32 %op36, 75
	addi.w $t1, $zero, 75
	slt $a0,$a1,$t1
# br i1 %op10, label %label11, label %label15
	addi.w $t0,$zero,0
	blt $t0,$a0,.deepWhileBr_label11
	b .deepWhileBr_label15
.deepWhileBr_label11:
# %op14 = icmp slt i32 %op36, 100
	addi.w $t1, $zero, 100
	slt $a0,$a1,$t1
# br i1 %op14, label %label17, label %label23
	addi.w $t0,$zero,0
	blt $t0,$a0,.deepWhileBr_label17
	or $a2, $zero, $a1
	b .deepWhileBr_label23
.deepWhileBr_label15:
# ret i32 %op36
	or $a0, $zero, $a1
	b deepWhileBr_exit
.deepWhileBr_label17:
# %op20 = add i32 %op36, 42
	addi.w $t1, $zero, 42
	add.w $a0, $a1, $t1
# %op22 = icmp sgt i32 %op20, 99
	addi.w $t1, $zero, 99
	slt $a3,$t1,$a0
# br i1 %op22, label %label24, label %label29
	addi.w $t0,$zero,0
	blt $t0,$a3,.deepWhileBr_label24
	or $a4, $zero, $a0
	b .deepWhileBr_label29
.deepWhileBr_label23:
# %op38 = phi i32 [ %op36, %label11 ], [ %op40, %label29 ]
# br label %label8
	st.d $a2, $fp, -312
	ld.d $a1, $fp, -312
	b .deepWhileBr_label8
.deepWhileBr_label24:
# br label %label30
	b .deepWhileBr_label30
.deepWhileBr_label29:
# %op40 = phi i32 [ %op20, %label17 ], [ %op41, %label33 ]
# br label %label23
	st.d $a4, $fp, -312
	ld.d $a2, $fp, -312
	b .deepWhileBr_label23
.deepWhileBr_label30:
# br label %label33
	addi.w $t0, $zero, 168
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .deepWhileBr_label33
.deepWhileBr_label33:
# %op41 = phi i32 [ 168, %label30 ]
# br label %label29
	st.d $a0, $fp, -312
	ld.d $a4, $fp, -312
	b .deepWhileBr_label29
deepWhileBr_exit:
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
# %op3 = call i32 @deepWhileBr(i32 2, i32 2)
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
	addi.w $a0, $zero, 2
	addi.w $a1, $zero, 2
	bl deepWhileBr
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
# ret i32 %op3
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
