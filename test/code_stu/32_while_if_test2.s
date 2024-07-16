	.text
	.align 2
	.globl ifWhile
	.type ifWhile, @function
ifWhile:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.ifWhile_label_entry:
# br label %label5
	b .ifWhile_label5
.ifWhile_label5:
# br label %label17
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -328
	addi.w $t0, $zero, 3
	st.d $t0, $fp, -336
	ld.d $a0, $fp, -328
	ld.d $a1, $fp, -336
	b .ifWhile_label17
.ifWhile_label6:
# %op26 = phi i32 [ %op16, %label14 ], [ %op29, %label25 ]
# ret i32 %op26
	b ifWhile_exit
.ifWhile_label17:
# %op29 = phi i32 [ 3, %label5 ], [ %op22, %label20 ]
# %op30 = phi i32 [ 0, %label5 ], [ %op24, %label20 ]
# %op19 = icmp slt i32 %op30, 5
	addi.w $t1, $zero, 5
	slt $a2,$a0,$t1
# br i1 %op19, label %label20, label %label25
	addi.w $t0,$zero,0
	blt $t0,$a2,.ifWhile_label20
	b .ifWhile_label25
.ifWhile_label20:
# %op22 = mul i32 %op29, 2
	addi.w $t1, $zero, 2
	mul.w $a2, $a1, $t1
# %op24 = add i32 %op30, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a0, $t1
# br label %label17
	st.d $a3, $fp, -328
	st.d $a2, $fp, -336
	ld.d $a0, $fp, -328
	ld.d $a1, $fp, -336
	b .ifWhile_label17
.ifWhile_label25:
# br label %label6
	st.d $a1, $fp, -328
	ld.d $a0, $fp, -328
	b .ifWhile_label6
ifWhile_exit:
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
# %op0 = call i32 @ifWhile()
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
	bl ifWhile
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
