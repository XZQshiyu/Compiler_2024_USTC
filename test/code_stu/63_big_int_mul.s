# Global variables
	.text
	.data
	.globl len
	.align 2
	.type len, @object
	.size len, 4
len:
	.word 20
	.text
	.align 2
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -848
	st.d $ra, $sp, 840
	st.d $fp, $sp, 832
	addi.d $fp, $sp, 848
.main_label_entry:
# %op55 = alloca [40 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 464
	sub.d $a0,$fp,$t0
# %op54 = alloca [25 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 564
	sub.d $a1,$fp,$t0
# %op53 = alloca [25 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 664
	sub.d $a2,$fp,$t0
# %op27 = alloca [20 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 744
	sub.d $a3,$fp,$t0
# %op5 = alloca [20 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 824
	sub.d $a4,$fp,$t0
# %op6 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# call void @memset_int(i32* %op6, i32 20)
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
	ld.d $a0, $fp, -64
	addi.w $a1, $zero, 20
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
# %op7 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 1, i32* %op7
	addi.w $t0, $zero, 1
	st.w $t0, $a5, 0
# %op8 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 2, i32* %op8
	addi.w $t0, $zero, 2
	st.w $t0, $a5, 0
# %op9 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 3, i32* %op9
	addi.w $t0, $zero, 3
	st.w $t0, $a5, 0
# %op10 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 4, i32* %op10
	addi.w $t0, $zero, 4
	st.w $t0, $a5, 0
# %op11 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 5, i32* %op11
	addi.w $t0, $zero, 5
	st.w $t0, $a5, 0
# %op12 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 5
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 6, i32* %op12
	addi.w $t0, $zero, 6
	st.w $t0, $a5, 0
# %op13 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 6
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 6
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 7, i32* %op13
	addi.w $t0, $zero, 7
	st.w $t0, $a5, 0
# %op14 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 7
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 7
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 8, i32* %op14
	addi.w $t0, $zero, 8
	st.w $t0, $a5, 0
# %op15 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 8
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 8
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 9, i32* %op15
	addi.w $t0, $zero, 9
	st.w $t0, $a5, 0
# %op16 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 9
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 9
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 0, i32* %op16
	addi.w $t0, $zero, 0
	st.w $t0, $a5, 0
# %op17 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 10
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 10
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 1, i32* %op17
	addi.w $t0, $zero, 1
	st.w $t0, $a5, 0
# %op18 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 11
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 11
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 2, i32* %op18
	addi.w $t0, $zero, 2
	st.w $t0, $a5, 0
# %op19 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 12
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 12
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 3, i32* %op19
	addi.w $t0, $zero, 3
	st.w $t0, $a5, 0
# %op20 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 13
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 13
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 4, i32* %op20
	addi.w $t0, $zero, 4
	st.w $t0, $a5, 0
# %op21 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 14
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 14
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 5, i32* %op21
	addi.w $t0, $zero, 5
	st.w $t0, $a5, 0
# %op22 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 6, i32* %op22
	addi.w $t0, $zero, 6
	st.w $t0, $a5, 0
# %op23 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 16
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 16
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 7, i32* %op23
	addi.w $t0, $zero, 7
	st.w $t0, $a5, 0
# %op24 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 17
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 17
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 8, i32* %op24
	addi.w $t0, $zero, 8
	st.w $t0, $a5, 0
# %op25 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 18
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 18
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 9, i32* %op25
	addi.w $t0, $zero, 9
	st.w $t0, $a5, 0
# %op26 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 19
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 19
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a4,$t0
# store i32 0, i32* %op26
	addi.w $t0, $zero, 0
	st.w $t0, $a5, 0
# %op28 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# call void @memset_int(i32* %op28, i32 20)
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
	ld.d $a0, $fp, -64
	addi.w $a1, $zero, 20
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
# %op29 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 2, i32* %op29
	addi.w $t0, $zero, 2
	st.w $t0, $a5, 0
# %op30 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 3, i32* %op30
	addi.w $t0, $zero, 3
	st.w $t0, $a5, 0
# %op31 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 4, i32* %op31
	addi.w $t0, $zero, 4
	st.w $t0, $a5, 0
# %op32 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 2, i32* %op32
	addi.w $t0, $zero, 2
	st.w $t0, $a5, 0
# %op33 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 5, i32* %op33
	addi.w $t0, $zero, 5
	st.w $t0, $a5, 0
# %op34 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 5
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 7, i32* %op34
	addi.w $t0, $zero, 7
	st.w $t0, $a5, 0
# %op35 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 6
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 6
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 9, i32* %op35
	addi.w $t0, $zero, 9
	st.w $t0, $a5, 0
# %op36 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 7
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 7
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 9, i32* %op36
	addi.w $t0, $zero, 9
	st.w $t0, $a5, 0
# %op37 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 8
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 8
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 0, i32* %op37
	addi.w $t0, $zero, 0
	st.w $t0, $a5, 0
# %op38 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 9
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 9
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 1, i32* %op38
	addi.w $t0, $zero, 1
	st.w $t0, $a5, 0
# %op39 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 10
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 10
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 9, i32* %op39
	addi.w $t0, $zero, 9
	st.w $t0, $a5, 0
# %op40 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 11
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 11
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 8, i32* %op40
	addi.w $t0, $zero, 8
	st.w $t0, $a5, 0
# %op41 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 12
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 12
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 7, i32* %op41
	addi.w $t0, $zero, 7
	st.w $t0, $a5, 0
# %op42 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 13
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 13
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 6, i32* %op42
	addi.w $t0, $zero, 6
	st.w $t0, $a5, 0
# %op43 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 14
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 14
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 4, i32* %op43
	addi.w $t0, $zero, 4
	st.w $t0, $a5, 0
# %op44 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 3, i32* %op44
	addi.w $t0, $zero, 3
	st.w $t0, $a5, 0
# %op45 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 16
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 16
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 2, i32* %op45
	addi.w $t0, $zero, 2
	st.w $t0, $a5, 0
# %op46 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 17
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 17
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 1, i32* %op46
	addi.w $t0, $zero, 1
	st.w $t0, $a5, 0
# %op47 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 18
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 18
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 2, i32* %op47
	addi.w $t0, $zero, 2
	st.w $t0, $a5, 0
# %op48 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 19
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 19
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# store i32 2, i32* %op48
	addi.w $t0, $zero, 2
	st.w $t0, $a5, 0
# %op50 = load i32, i32* @len
	la.local $t0, len
	ld.w $a5, $t0, 0
# %op52 = load i32, i32* @len
	la.local $t0, len
	ld.w $a6, $t0, 0
# %op56 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a7,$a0,$t0
# call void @memset_int(i32* %op56, i32 40)
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
	ld.d $a0, $fp, -80
	addi.w $a1, $zero, 40
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
# br label %label57
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -832
	ld.d $a7, $fp, -832
	b .main_label57
.main_label57:
# %op177 = phi i32 [ 0, %label_entry ], [ %op68, %label61 ]
# %op60 = icmp slt i32 %op177, %op50
	slt $t2,$a7,$a5
# br i1 %op60, label %label61, label %label69
	addi.w $t0,$zero,0
	blt $t0,$t2,.main_label61
	b .main_label69
.main_label61:
# %op63 = getelementptr [20 x i32], [20 x i32]* %op5, i32 0, i32 %op177
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a7,$t8
	add.d $t0,$t0,$t8
	add.d $t2,$a4,$t0
# %op64 = load i32, i32* %op63
	ld.w $t2, $t2, 0
# %op66 = getelementptr [25 x i32], [25 x i32]* %op53, i32 0, i32 %op177
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 100
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a7,$t8
	add.d $t0,$t0,$t8
	add.d $t3,$a2,$t0
# store i32 %op64, i32* %op66
	st.w $t2, $t3, 0
# %op68 = add i32 %op177, 1
	addi.w $t1, $zero, 1
	add.w $t2, $a7, $t1
# br label %label57
	st.d $t2, $fp, -832
	ld.d $a7, $fp, -832
	b .main_label57
.main_label69:
# br label %label70
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -832
	ld.d $a4, $fp, -832
	b .main_label70
.main_label70:
# %op178 = phi i32 [ 0, %label69 ], [ %op81, %label74 ]
# %op73 = icmp slt i32 %op178, %op52
	slt $a7,$a4,$a6
# br i1 %op73, label %label74, label %label82
	addi.w $t0,$zero,0
	blt $t0,$a7,.main_label74
	b .main_label82
.main_label74:
# %op76 = getelementptr [20 x i32], [20 x i32]* %op27, i32 0, i32 %op178
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a7,$a3,$t0
# %op77 = load i32, i32* %op76
	ld.w $a7, $a7, 0
# %op79 = getelementptr [25 x i32], [25 x i32]* %op54, i32 0, i32 %op178
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 100
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $t2,$a1,$t0
# store i32 %op77, i32* %op79
	st.w $a7, $t2, 0
# %op81 = add i32 %op178, 1
	addi.w $t1, $zero, 1
	add.w $a7, $a4, $t1
# br label %label70
	st.d $a7, $fp, -832
	ld.d $a4, $fp, -832
	b .main_label70
.main_label82:
# %op85 = add i32 %op50, %op52
	add.w $a3, $a5, $a6
# %op86 = sub i32 %op85, 1
	addi.w $t1, $zero, 1
	sub.w $a3, $a3, $t1
# br label %label87
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -832
	ld.d $a4, $fp, -832
	b .main_label87
.main_label87:
# %op179 = phi i32 [ 0, %label82 ], [ %op95, %label91 ]
# %op90 = icmp sle i32 %op179, %op86
	slt $a7,$a3,$a4
	addi.w $t8,$zero,1
	sub.w $a7,$t8,$a7
# br i1 %op90, label %label91, label %label96
	addi.w $t0,$zero,0
	blt $t0,$a7,.main_label91
	b .main_label96
.main_label91:
# %op93 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op179
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a7,$a0,$t0
# store i32 0, i32* %op93
	addi.w $t0, $zero, 0
	st.w $t0, $a7, 0
# %op95 = add i32 %op179, 1
	addi.w $t1, $zero, 1
	add.w $a7, $a4, $t1
# br label %label87
	st.d $a7, $fp, -832
	ld.d $a4, $fp, -832
	b .main_label87
.main_label96:
# %op98 = sub i32 %op52, 1
	addi.w $t1, $zero, 1
	sub.w $a4, $a6, $t1
# br label %label99
	st.d $a4, $fp, -832
	st.d $a3, $fp, -840
	ld.d $a7, $fp, -832
	ld.d $t2, $fp, -840
	b .main_label99
.main_label99:
# %op181 = phi i32 [ %op86, %label96 ], [ %op133, %label129 ]
# %op184 = phi i32 [ %op98, %label96 ], [ %op135, %label129 ]
# %op102 = icmp sgt i32 %op184, -1
	addi.w $t1, $zero, -1
	slt $a3,$t1,$a7
# br i1 %op102, label %label103, label %label109
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label103
	b .main_label109
.main_label103:
# %op105 = getelementptr [25 x i32], [25 x i32]* %op54, i32 0, i32 %op184
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 100
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a7,$t8
	add.d $t0,$t0,$t8
	add.d $a3,$a1,$t0
# %op106 = load i32, i32* %op105
	ld.w $a3, $a3, 0
# %op108 = sub i32 %op50, 1
	addi.w $t1, $zero, 1
	sub.w $a4, $a5, $t1
# br label %label113
	st.d $a4, $fp, -832
	st.d $t2, $fp, -840
	ld.d $t3, $fp, -832
	ld.d $t4, $fp, -840
	b .main_label113
.main_label109:
# %op110 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op111 = load i32, i32* %op110
	ld.w $a1, $a1, 0
# %op112 = icmp ne i32 %op111, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $a1,$t0,$t8
# br i1 %op112, label %label159, label %label162
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label159
	b .main_label162
.main_label113:
# %op186 = phi i32 [ %op181, %label103 ], [ %op158, %label154 ]
# %op187 = phi i32 [ %op108, %label103 ], [ %op156, %label154 ]
# %op116 = icmp sgt i32 %op187, -1
	addi.w $t1, $zero, -1
	slt $a4,$t1,$t3
# br i1 %op116, label %label117, label %label129
	addi.w $t0,$zero,0
	blt $t0,$a4,.main_label117
	b .main_label129
.main_label117:
# %op119 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op186
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	add.d $a4,$a0,$t0
# %op120 = load i32, i32* %op119
	ld.w $a4, $a4, 0
# %op123 = getelementptr [25 x i32], [25 x i32]* %op53, i32 0, i32 %op187
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 100
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t3,$t8
	add.d $t0,$t0,$t8
	add.d $t5,$a2,$t0
# %op124 = load i32, i32* %op123
	ld.w $t5, $t5, 0
# %op125 = mul i32 %op106, %op124
	mul.w $t5, $a3, $t5
# %op126 = add i32 %op120, %op125
	add.w $a4, $a4, $t5
# %op128 = icmp sge i32 %op126, 10
	addi.w $t1, $zero, 10
	slt $t5,$a4,$t1
	addi.w $t8,$zero,1
	sub.w $t5,$t8,$t5
# br i1 %op128, label %label136, label %label150
	addi.w $t0,$zero,0
	blt $t0,$t5,.main_label136
	b .main_label150
.main_label129:
# %op132 = add i32 %op186, %op50
	add.w $a3, $t4, $a5
# %op133 = sub i32 %op132, 1
	addi.w $t1, $zero, 1
	sub.w $a3, $a3, $t1
# %op135 = sub i32 %op184, 1
	addi.w $t1, $zero, 1
	sub.w $a4, $a7, $t1
# br label %label99
	st.d $a4, $fp, -832
	st.d $a3, $fp, -840
	ld.d $a7, $fp, -832
	ld.d $t2, $fp, -840
	b .main_label99
.main_label136:
# %op139 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op186
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	add.d $t5,$a0,$t0
# store i32 %op126, i32* %op139
	st.w $a4, $t5, 0
# %op141 = sub i32 %op186, 1
	addi.w $t1, $zero, 1
	sub.w $t5, $t4, $t1
# %op142 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op141
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t5,$t8
	add.d $t0,$t0,$t8
	add.d $t5,$a0,$t0
# %op143 = load i32, i32* %op142
	ld.w $t5, $t5, 0
# %op145 = sdiv i32 %op126, 10
	addi.w $t1, $zero, 10
	div.w $t6, $a4, $t1
# %op146 = add i32 %op143, %op145
	add.w $t5, $t5, $t6
# %op148 = sub i32 %op186, 1
	addi.w $t1, $zero, 1
	sub.w $t6, $t4, $t1
# %op149 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op148
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t6,$t8
	add.d $t0,$t0,$t8
	add.d $t6,$a0,$t0
# store i32 %op146, i32* %op149
	st.w $t5, $t6, 0
# br label %label154
	b .main_label154
.main_label150:
# %op153 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op186
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	add.d $t5,$a0,$t0
# store i32 %op126, i32* %op153
	st.w $a4, $t5, 0
# br label %label154
	b .main_label154
.main_label154:
# %op156 = sub i32 %op187, 1
	addi.w $t1, $zero, 1
	sub.w $a4, $t3, $t1
# %op158 = sub i32 %op186, 1
	addi.w $t1, $zero, 1
	sub.w $t5, $t4, $t1
# br label %label113
	st.d $a4, $fp, -832
	st.d $t5, $fp, -840
	ld.d $t3, $fp, -832
	ld.d $t4, $fp, -840
	b .main_label113
.main_label159:
# %op160 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op161 = load i32, i32* %op160
	ld.w $a1, $a1, 0
# call void @putint(i32 %op161)
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
# br label %label162
	b .main_label162
.main_label162:
# br label %label163
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -832
	ld.d $a1, $fp, -832
	b .main_label163
.main_label163:
# %op188 = phi i32 [ 1, %label162 ], [ %op175, %label170 ]
# %op167 = add i32 %op50, %op52
	add.w $a2, $a5, $a6
# %op168 = sub i32 %op167, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a2, $t1
# %op169 = icmp sle i32 %op188, %op168
	slt $a2,$a2,$a1
	addi.w $t8,$zero,1
	sub.w $a2,$t8,$a2
# br i1 %op169, label %label170, label %label176
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label170
	b .main_label176
.main_label170:
# %op172 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op188
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 160
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	add.d $a2,$a0,$t0
# %op173 = load i32, i32* %op172
	ld.w $a2, $a2, 0
# call void @putint(i32 %op173)
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
# %op175 = add i32 %op188, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label163
	st.d $a2, $fp, -832
	ld.d $a1, $fp, -832
	b .main_label163
.main_label176:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 840
	ld.d $fp, $sp, 832
	addi.d $sp, $sp, 848
	jr $ra
