# Global variables
	.text
	.data
	.globl a
	.align 3
	.type a, @object
	.size a, 16384
a:
	.space 16384
	.text
	.align 2
	.globl f1
	.type f1, @function
f1:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.f1_label_entry:
# %op2 = getelementptr [4096 x i32], [4096 x i32]* @a, i32 0, i32 5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 5
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, a
	add.d $a1,$t1,$t0
# store i32 4000, i32* %op2
	lu12i.w $t0, 0
	ori $t0, $t0, 4000
	st.w $t0, $a1, 0
# %op3 = getelementptr [4096 x i32], [4096 x i32]* @a, i32 0, i32 4000
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t1, 0
	ori $t1, $t1, 4000
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, a
	add.d $a1,$t1,$t0
# store i32 3, i32* %op3
	addi.w $t0, $zero, 3
	st.w $t0, $a1, 0
# %op4 = getelementptr [4096 x i32], [4096 x i32]* @a, i32 0, i32 4095
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t1, 0
	ori $t1, $t1, 4095
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, a
	add.d $a1,$t1,$t0
# store i32 7, i32* %op4
	addi.w $t0, $zero, 7
	st.w $t0, $a1, 0
# %op5 = getelementptr [4096 x i32], [4096 x i32]* @a, i32 0, i32 2216
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t1, 0
	ori $t1, $t1, 2216
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, a
	add.d $a1,$t1,$t0
# %op6 = load i32, i32* %op5
	ld.w $a1, $a1, 0
# %op7 = add i32 %op6, 9
	addi.w $t1, $zero, 9
	add.w $a1, $a1, $t1
# %op9 = getelementptr [4096 x i32], [4096 x i32]* @a, i32 0, i32 4095
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t1, 0
	ori $t1, $t1, 4095
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, a
	add.d $a2,$t1,$t0
# %op10 = load i32, i32* %op9
	ld.w $a2, $a2, 0
# %op11 = getelementptr i32, i32* %arg0, i32 %op10
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a0,$t8,$a0
# store i32 %op7, i32* %op11
	st.w $a1, $a0, 0
# %op12 = getelementptr [4096 x i32], [4096 x i32]* @a, i32 0, i32 5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 5
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, a
	add.d $a0,$t1,$t0
# %op13 = load i32, i32* %op12
	ld.w $a0, $a0, 0
# %op14 = getelementptr [4096 x i32], [4096 x i32]* @a, i32 0, i32 %op13
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, a
	add.d $a0,$t1,$t0
# %op15 = load i32, i32* %op14
	ld.w $a0, $a0, 0
# ret i32 %op15
	b f1_exit
f1_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl main
	.type main, @function
main:
	lu12i.w $t0, -9
	ori $t0, $t0, 3792
	add.d $sp, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 296
	stx.d $ra, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 288
	stx.d $fp, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 304
	add.d $fp, $sp, $t0
.main_label_entry:
# %op8 = alloca [1024 x [4 x i32]]
	lu12i.w $t0, 4
	ori $t0, $t0, 304
	sub.d $a0,$fp,$t0
# %op0 = alloca [4 x [1024 x i32]]
	lu12i.w $t0, 8
	ori $t0, $t0, 304
	sub.d $a1,$fp,$t0
# %op1 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %op0, i32 0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	lu12i.w $t8, 1
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# call void @memset_int(i32* %op1, i32 4096)
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
	lu12i.w $a1, 1
	ori $a1, $a1, 0
	bl memset_int
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
# %op2 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %op0, i32 0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	lu12i.w $t8, 1
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 1, i32* %op2
	addi.w $t0, $zero, 1
	st.w $t0, $a2, 0
# %op3 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %op0, i32 0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	lu12i.w $t8, 1
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 2, i32* %op3
	addi.w $t0, $zero, 2
	st.w $t0, $a2, 0
# %op4 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %op0, i32 0, i32 2, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	lu12i.w $t8, 1
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 3, i32* %op4
	addi.w $t0, $zero, 3
	st.w $t0, $a2, 0
# %op5 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %op0, i32 0, i32 3, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	lu12i.w $t8, 1
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 4, i32* %op5
	addi.w $t0, $zero, 4
	st.w $t0, $a2, 0
# %op6 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %op0, i32 0, i32 3, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	lu12i.w $t8, 1
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a1,$t0
# store i32 5, i32* %op6
	addi.w $t0, $zero, 5
	st.w $t0, $a2, 0
# %op7 = getelementptr [4 x [1024 x i32]], [4 x [1024 x i32]]* %op0, i32 0, i32 3, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	lu12i.w $t8, 1
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a1,$t0
# store i32 6, i32* %op7
	addi.w $t0, $zero, 6
	st.w $t0, $a1, 0
# %op9 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %op8, i32 0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 16
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# call void @memset_int(i32* %op9, i32 4096)
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
	lu12i.w $a1, 1
	ori $a1, $a1, 0
	bl memset_int
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
# %op10 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %op8, i32 0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 16
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 1, i32* %op10
	addi.w $t0, $zero, 1
	st.w $t0, $a1, 0
# %op11 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %op8, i32 0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 16
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 2, i32* %op11
	addi.w $t0, $zero, 2
	st.w $t0, $a1, 0
# %op12 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %op8, i32 0, i32 1, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 16
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 3, i32* %op12
	addi.w $t0, $zero, 3
	st.w $t0, $a1, 0
# %op13 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %op8, i32 0, i32 1, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 16
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 4, i32* %op13
	addi.w $t0, $zero, 4
	st.w $t0, $a1, 0
# %op14 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %op8, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 16
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op15 = getelementptr [4 x i32], [4 x i32]* %op14, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 16
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a1,$t0
# %op16 = call i32 @f1(i32* %op15)
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
	bl f1
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
# call void @putint(i32 %op16)
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
# %op17 = getelementptr [1024 x [4 x i32]], [1024 x [4 x i32]]* %op8, i32 0, i32 2, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 4
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 16
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a0,$a0,$t0
# %op18 = load i32, i32* %op17
	ld.w $a0, $a0, 0
# ret i32 %op18
	b main_exit
main_exit:
	# epilog
	lu12i.w $t0, 8
	ori $t0, $t0, 296
	ldx.d $ra, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 288
	ldx.d $fp, $sp, $t0
	lu12i.w $t0, 8
	ori $t0, $t0, 304
	add.d $sp, $sp, $t0
	jr $ra
