	.text
	.align 2
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -720
	st.d $ra, $sp, 712
	st.d $fp, $sp, 704
	addi.d $fp, $sp, 720
.main_label_entry:
# %op0 = alloca [100 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 704
	sub.d $a0,$fp,$t0
# br label %label3
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -712
	ld.d $a1, $fp, -712
	b .main_label3
.main_label3:
# %op27 = phi i32 [ 0, %label_entry ], [ %op11, %label6 ]
# %op4 = call i32 @getint()
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
	bl getint
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
# %op5 = icmp ne i32 0, %op4
	addi.w $t0, $zero, 0
	slt $t8,$a2,$t0
	slt $t0,$t0,$a2
	or $a2,$t0,$t8
# br i1 %op5, label %label6, label %label12
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label6
	b .main_label12
.main_label6:
# %op7 = call i32 @getint()
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
	bl getint
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
# %op9 = getelementptr [100 x i32], [100 x i32]* %op0, i32 0, i32 %op27
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a0,$t0
# store i32 %op7, i32* %op9
	st.w $a2, $a3, 0
# %op11 = add i32 %op27, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label3
	st.d $a2, $fp, -712
	ld.d $a1, $fp, -712
	b .main_label3
.main_label12:
# br label %label13
	st.d $a1, $fp, -712
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -720
	ld.d $a2, $fp, -712
	ld.d $a3, $fp, -720
	b .main_label13
.main_label13:
# %op28 = phi i32 [ 0, %label12 ], [ %op23, %label16 ]
# %op29 = phi i32 [ %op27, %label12 ], [ %op18, %label16 ]
# %op15 = icmp ne i32 0, %op29
	addi.w $t0, $zero, 0
	slt $t8,$a2,$t0
	slt $t0,$t0,$a2
	or $a1,$t0,$t8
# br i1 %op15, label %label16, label %label24
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label16
	b .main_label24
.main_label16:
# %op18 = sub i32 %op29, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a2, $t1
# %op21 = getelementptr [100 x i32], [100 x i32]* %op0, i32 0, i32 %op18
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	add.d $a4,$a0,$t0
# %op22 = load i32, i32* %op21
	ld.w $a4, $a4, 0
# %op23 = add i32 %op28, %op22
	add.w $a4, $a3, $a4
# br label %label13
	st.d $a1, $fp, -712
	st.d $a4, $fp, -720
	ld.d $a2, $fp, -712
	ld.d $a3, $fp, -720
	b .main_label13
.main_label24:
# %op26 = srem i32 %op28, 79
	addi.w $t1, $zero, 79
	mod.w $a0, $a3, $t1
# ret i32 %op26
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 712
	ld.d $fp, $sp, 704
	addi.d $sp, $sp, 720
	jr $ra
