# Global variables
	.text
	.data
	.globl N
	.align 2
	.type N, @object
	.size N, 4
N:
	.word 10000
	.text
	.align 2
	.globl long_array
	.type long_array, @function
long_array:
	lu12i.w $t0, -30
	ori $t0, $t0, 2560
	add.d $sp, $sp, $t0
	lu12i.w $t0, 29
	ori $t0, $t0, 1528
	stx.d $ra, $sp, $t0
	lu12i.w $t0, 29
	ori $t0, $t0, 1520
	stx.d $fp, $sp, $t0
	lu12i.w $t0, 29
	ori $t0, $t0, 1536
	add.d $fp, $sp, $t0
.long_array_label_entry:
# %op4 = alloca [10000 x i32]
	lu12i.w $t0, 9
	ori $t0, $t0, 3440
	sub.d $a1,$fp,$t0
# %op3 = alloca [10000 x i32]
	lu12i.w $t0, 19
	ori $t0, $t0, 2480
	sub.d $a2,$fp,$t0
# %op2 = alloca [10000 x i32]
	lu12i.w $t0, 29
	ori $t0, $t0, 1520
	sub.d $a3,$fp,$t0
# br label %label6
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	lu12i.w $a4, -30
	ori $a4, $a4, 2568
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .long_array_label6
.long_array_label6:
# %op159 = phi i32 [ 0, %label_entry ], [ %op18, %label10 ]
# %op8 = load i32, i32* @N
	la.local $t0, N
	ld.w $a5, $t0, 0
# %op9 = icmp slt i32 %op159, %op8
	slt $a5,$a4,$a5
# br i1 %op9, label %label10, label %label19
	addi.w $t0,$zero,0
	blt $t0,$a5,.long_array_label10
	b .long_array_label19
.long_array_label10:
# %op13 = mul i32 %op159, %op159
	mul.w $a5, $a4, $a4
# %op14 = srem i32 %op13, 10
	addi.w $t1, $zero, 10
	mod.w $a5, $a5, $t1
# %op16 = getelementptr [10000 x i32], [10000 x i32]* %op2, i32 0, i32 %op159
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a3,$t0
# store i32 %op14, i32* %op16
	st.w $a5, $a6, 0
# %op18 = add i32 %op159, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# br label %label6
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $a4, -30
	ori $a4, $a4, 2568
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .long_array_label6
.long_array_label19:
# br label %label20
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	lu12i.w $a4, -30
	ori $a4, $a4, 2568
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .long_array_label20
.long_array_label20:
# %op160 = phi i32 [ 0, %label19 ], [ %op36, %label24 ]
# %op22 = load i32, i32* @N
	la.local $t0, N
	ld.w $a5, $t0, 0
# %op23 = icmp slt i32 %op160, %op22
	slt $a5,$a4,$a5
# br i1 %op23, label %label24, label %label37
	addi.w $t0,$zero,0
	blt $t0,$a5,.long_array_label24
	b .long_array_label37
.long_array_label24:
# %op26 = getelementptr [10000 x i32], [10000 x i32]* %op2, i32 0, i32 %op160
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a3,$t0
# %op27 = load i32, i32* %op26
	ld.w $a5, $a5, 0
# %op29 = getelementptr [10000 x i32], [10000 x i32]* %op2, i32 0, i32 %op160
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a3,$t0
# %op30 = load i32, i32* %op29
	ld.w $a6, $a6, 0
# %op31 = mul i32 %op27, %op30
	mul.w $a5, $a5, $a6
# %op32 = srem i32 %op31, 10
	addi.w $t1, $zero, 10
	mod.w $a5, $a5, $t1
# %op34 = getelementptr [10000 x i32], [10000 x i32]* %op3, i32 0, i32 %op160
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a2,$t0
# store i32 %op32, i32* %op34
	st.w $a5, $a6, 0
# %op36 = add i32 %op160, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# br label %label20
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $a4, -30
	ori $a4, $a4, 2568
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .long_array_label20
.long_array_label37:
# br label %label38
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	lu12i.w $a4, -30
	ori $a4, $a4, 2568
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .long_array_label38
.long_array_label38:
# %op161 = phi i32 [ 0, %label37 ], [ %op58, %label42 ]
# %op40 = load i32, i32* @N
	la.local $t0, N
	ld.w $a5, $t0, 0
# %op41 = icmp slt i32 %op161, %op40
	slt $a5,$a4,$a5
# br i1 %op41, label %label42, label %label59
	addi.w $t0,$zero,0
	blt $t0,$a5,.long_array_label42
	b .long_array_label59
.long_array_label42:
# %op44 = getelementptr [10000 x i32], [10000 x i32]* %op3, i32 0, i32 %op161
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a5,$a2,$t0
# %op45 = load i32, i32* %op44
	ld.w $a5, $a5, 0
# %op47 = getelementptr [10000 x i32], [10000 x i32]* %op3, i32 0, i32 %op161
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a2,$t0
# %op48 = load i32, i32* %op47
	ld.w $a6, $a6, 0
# %op49 = mul i32 %op45, %op48
	mul.w $a5, $a5, $a6
# %op50 = srem i32 %op49, 100
	addi.w $t1, $zero, 100
	mod.w $a5, $a5, $t1
# %op52 = getelementptr [10000 x i32], [10000 x i32]* %op2, i32 0, i32 %op161
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a3,$t0
# %op53 = load i32, i32* %op52
	ld.w $a6, $a6, 0
# %op54 = add i32 %op50, %op53
	add.w $a5, $a5, $a6
# %op56 = getelementptr [10000 x i32], [10000 x i32]* %op4, i32 0, i32 %op161
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a1,$t0
# store i32 %op54, i32* %op56
	st.w $a5, $a6, 0
# %op58 = add i32 %op161, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# br label %label38
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $a4, -30
	ori $a4, $a4, 2568
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	b .long_array_label38
.long_array_label59:
# br label %label61
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
	lu12i.w $a4, -30
	ori $a4, $a4, 2568
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	lu12i.w $a5, -30
	ori $a5, $a5, 2560
	lu32i.d $a5, -1
	lu52i.d $a5, $a5, -1
	add.d $a5, $fp, $a5
	ld.d $a5, $a5, 0
	b .long_array_label61
.long_array_label61:
# %op164 = phi i32 [ 0, %label59 ], [ %op168, %label81 ]
# %op165 = phi i32 [ 0, %label59 ], [ %op83, %label81 ]
# %op63 = load i32, i32* @N
	la.local $t0, N
	ld.w $a6, $t0, 0
# %op64 = icmp slt i32 %op165, %op63
	slt $a6,$a4,$a6
# br i1 %op64, label %label65, label %label68
	addi.w $t0,$zero,0
	blt $t0,$a6,.long_array_label65
	b .long_array_label68
.long_array_label65:
# %op67 = icmp slt i32 %op165, 10
	addi.w $t1, $zero, 10
	slt $a6,$a4,$t1
# br i1 %op67, label %label70, label %label78
	addi.w $t0,$zero,0
	blt $t0,$a6,.long_array_label70
	b .long_array_label78
.long_array_label68:
# ret i32 %op164
	or $a0, $zero, $a5
	b long_array_exit
.long_array_label70:
# %op73 = getelementptr [10000 x i32], [10000 x i32]* %op4, i32 0, i32 %op165
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a1,$t0
# %op74 = load i32, i32* %op73
	ld.w $a6, $a6, 0
# %op75 = add i32 %op164, %op74
	add.w $a6, $a5, $a6
# %op76 = srem i32 %op75, 1333
	addi.w $t1, $zero, 1333
	mod.w $a6, $a6, $t1
# call void @putint(i32 %op76)
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
	ld.d $a0, $fp, -72
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
# br label %label81
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a6, $t8, 0
	lu12i.w $a7, -30
	ori $a7, $a7, 2568
	lu32i.d $a7, -1
	lu52i.d $a7, $a7, -1
	add.d $a7, $fp, $a7
	ld.d $a7, $a7, 0
	b .long_array_label81
.long_array_label78:
# %op80 = icmp slt i32 %op165, 20
	addi.w $t1, $zero, 20
	slt $a6,$a4,$t1
# br i1 %op80, label %label84, label %label88
	addi.w $t0,$zero,0
	blt $t0,$a6,.long_array_label84
	b .long_array_label88
.long_array_label81:
# %op168 = phi i32 [ %op76, %label70 ], [ %op171, %label91 ]
# %op83 = add i32 %op165, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a4, $t1
# br label %label61
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a6, $t8, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a7, $t8, 0
	lu12i.w $a4, -30
	ori $a4, $a4, 2568
	lu32i.d $a4, -1
	lu52i.d $a4, $a4, -1
	add.d $a4, $fp, $a4
	ld.d $a4, $a4, 0
	lu12i.w $a5, -30
	ori $a5, $a5, 2560
	lu32i.d $a5, -1
	lu52i.d $a5, $a5, -1
	add.d $a5, $fp, $a5
	ld.d $a5, $a5, 0
	b .long_array_label61
.long_array_label84:
# %op86 = load i32, i32* @N
	la.local $t0, N
	ld.w $a6, $t0, 0
# %op87 = sdiv i32 %op86, 2
	addi.w $t1, $zero, 2
	div.w $a6, $a6, $t1
# br label %label92
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a6, $t8, 0
	lu12i.w $t2, -30
	ori $t2, $t2, 2568
	lu32i.d $t2, -1
	lu52i.d $t2, $t2, -1
	add.d $t2, $fp, $t2
	ld.d $t2, $t2, 0
	lu12i.w $t3, -30
	ori $t3, $t3, 2560
	lu32i.d $t3, -1
	lu52i.d $t3, $t3, -1
	add.d $t3, $fp, $t3
	ld.d $t3, $t3, 0
	b .long_array_label92
.long_array_label88:
# %op90 = icmp slt i32 %op165, 30
	addi.w $t1, $zero, 30
	slt $t2,$a4,$t1
# br i1 %op90, label %label110, label %label114
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_array_label110
	b .long_array_label114
.long_array_label91:
# %op171 = phi i32 [ %op175, %label123 ], [ %op173, %label108 ]
# br label %label81
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a6, $t8, 0
	lu12i.w $a7, -30
	ori $a7, $a7, 2568
	lu32i.d $a7, -1
	lu52i.d $a7, $a7, -1
	add.d $a7, $fp, $a7
	ld.d $a7, $a7, 0
	b .long_array_label81
.long_array_label92:
# %op172 = phi i32 [ %op87, %label84 ], [ %op107, %label96 ]
# %op173 = phi i32 [ %op164, %label84 ], [ %op105, %label96 ]
# %op94 = load i32, i32* @N
	la.local $t0, N
	ld.w $a6, $t0, 0
# %op95 = icmp slt i32 %op172, %op94
	slt $a6,$t3,$a6
# br i1 %op95, label %label96, label %label108
	addi.w $t0,$zero,0
	blt $t0,$a6,.long_array_label96
	b .long_array_label108
.long_array_label96:
# %op99 = getelementptr [10000 x i32], [10000 x i32]* %op4, i32 0, i32 %op165
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $a6,$a1,$t0
# %op100 = load i32, i32* %op99
	ld.w $a6, $a6, 0
# %op101 = add i32 %op173, %op100
	add.w $a6, $t2, $a6
# %op103 = getelementptr [10000 x i32], [10000 x i32]* %op2, i32 0, i32 %op172
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t3,$t8
	add.d $t0,$t0,$t8
	add.d $t4,$a3,$t0
# %op104 = load i32, i32* %op103
	ld.w $t4, $t4, 0
# %op105 = sub i32 %op101, %op104
	sub.w $a6, $a6, $t4
# %op107 = add i32 %op172, 1
	addi.w $t1, $zero, 1
	add.w $t4, $t3, $t1
# br label %label92
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a6, $t8, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t4, $t8, 0
	lu12i.w $t2, -30
	ori $t2, $t2, 2568
	lu32i.d $t2, -1
	lu52i.d $t2, $t2, -1
	add.d $t2, $fp, $t2
	ld.d $t2, $t2, 0
	lu12i.w $t3, -30
	ori $t3, $t3, 2560
	lu32i.d $t3, -1
	lu52i.d $t3, $t3, -1
	add.d $t3, $fp, $t3
	ld.d $t3, $t3, 0
	b .long_array_label92
.long_array_label108:
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
	ld.d $a0, $fp, -88
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
# br label %label91
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
	lu12i.w $a6, -30
	ori $a6, $a6, 2568
	lu32i.d $a6, -1
	lu52i.d $a6, $a6, -1
	add.d $a6, $fp, $a6
	ld.d $a6, $a6, 0
	b .long_array_label91
.long_array_label110:
# %op112 = load i32, i32* @N
	la.local $t0, N
	ld.w $t2, $t0, 0
# %op113 = sdiv i32 %op112, 2
	addi.w $t1, $zero, 2
	div.w $t2, $t2, $t1
# br label %label124
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $a5, $t8, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
	lu12i.w $t3, -30
	ori $t3, $t3, 2568
	lu32i.d $t3, -1
	lu52i.d $t3, $t3, -1
	add.d $t3, $fp, $t3
	ld.d $t3, $t3, 0
	lu12i.w $t4, -30
	ori $t4, $t4, 2560
	lu32i.d $t4, -1
	lu52i.d $t4, $t4, -1
	add.d $t4, $fp, $t4
	ld.d $t4, $t4, 0
	b .long_array_label124
.long_array_label114:
# %op117 = getelementptr [10000 x i32], [10000 x i32]* %op4, i32 0, i32 %op165
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $t3,$a1,$t0
# %op118 = load i32, i32* %op117
	ld.w $t3, $t3, 0
# %op120 = mul i32 %op118, %arg0
	mul.w $t3, $t3, $a0
# %op121 = add i32 %op164, %op120
	add.w $t3, $a5, $t3
# %op122 = srem i32 %op121, 99988
	lu12i.w $t1, 24
	ori $t1, $t1, 1684
	mod.w $t3, $t3, $t1
# br label %label123
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t3, $t8, 0
	lu12i.w $t2, -30
	ori $t2, $t2, 2568
	lu32i.d $t2, -1
	lu52i.d $t2, $t2, -1
	add.d $t2, $fp, $t2
	ld.d $t2, $t2, 0
	b .long_array_label123
.long_array_label123:
# %op175 = phi i32 [ %op177, %label131 ], [ %op122, %label114 ]
# br label %label91
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
	lu12i.w $a6, -30
	ori $a6, $a6, 2568
	lu32i.d $a6, -1
	lu52i.d $a6, $a6, -1
	add.d $a6, $fp, $a6
	ld.d $a6, $a6, 0
	b .long_array_label91
.long_array_label124:
# %op176 = phi i32 [ %op113, %label110 ], [ %op178, %label158 ]
# %op177 = phi i32 [ %op164, %label110 ], [ %op179, %label158 ]
# %op126 = load i32, i32* @N
	la.local $t0, N
	ld.w $t2, $t0, 0
# %op127 = icmp slt i32 %op176, %op126
	slt $t2,$t4,$t2
# br i1 %op127, label %label128, label %label131
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_array_label128
	b .long_array_label131
.long_array_label128:
# %op130 = icmp sgt i32 %op176, 2233
	lu12i.w $t1, 0
	ori $t1, $t1, 2233
	slt $t2,$t1,$t4
# br i1 %op130, label %label133, label %label145
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_array_label133
	b .long_array_label145
.long_array_label131:
# call void @putint(i32 %op177)
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
	ld.d $a0, $fp, -96
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
# br label %label123
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t3, $t8, 0
	lu12i.w $t2, -30
	ori $t2, $t2, 2568
	lu32i.d $t2, -1
	lu52i.d $t2, $t2, -1
	add.d $t2, $fp, $t2
	ld.d $t2, $t2, 0
	b .long_array_label123
.long_array_label133:
# %op136 = getelementptr [10000 x i32], [10000 x i32]* %op3, i32 0, i32 %op165
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $t2,$a2,$t0
# %op137 = load i32, i32* %op136
	ld.w $t2, $t2, 0
# %op138 = add i32 %op177, %op137
	add.w $t2, $t3, $t2
# %op140 = getelementptr [10000 x i32], [10000 x i32]* %op2, i32 0, i32 %op176
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	add.d $t5,$a3,$t0
# %op141 = load i32, i32* %op140
	ld.w $t5, $t5, 0
# %op142 = sub i32 %op138, %op141
	sub.w $t2, $t2, $t5
# %op144 = add i32 %op176, 1
	addi.w $t1, $zero, 1
	add.w $t5, $t4, $t1
# br label %label158
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t5, $t8, 0
	lu12i.w $t6, -30
	ori $t6, $t6, 2568
	lu32i.d $t6, -1
	lu52i.d $t6, $t6, -1
	add.d $t6, $fp, $t6
	ld.d $t6, $t6, 0
	lu12i.w $t7, -30
	ori $t7, $t7, 2560
	lu32i.d $t7, -1
	lu52i.d $t7, $t7, -1
	add.d $t7, $fp, $t7
	ld.d $t7, $t7, 0
	b .long_array_label158
.long_array_label145:
# %op148 = getelementptr [10000 x i32], [10000 x i32]* %op2, i32 0, i32 %op165
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	add.d $t2,$a3,$t0
# %op149 = load i32, i32* %op148
	ld.w $t2, $t2, 0
# %op150 = add i32 %op177, %op149
	add.w $t2, $t3, $t2
# %op152 = getelementptr [10000 x i32], [10000 x i32]* %op4, i32 0, i32 %op176
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	add.d $t5,$a1,$t0
# %op153 = load i32, i32* %op152
	ld.w $t5, $t5, 0
# %op154 = add i32 %op150, %op153
	add.w $t2, $t2, $t5
# %op155 = srem i32 %op154, 13333
	lu12i.w $t1, 3
	ori $t1, $t1, 1045
	mod.w $t2, $t2, $t1
# %op157 = add i32 %op176, 2
	addi.w $t1, $zero, 2
	add.w $t5, $t4, $t1
# br label %label158
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t5, $t8, 0
	lu12i.w $t6, -30
	ori $t6, $t6, 2568
	lu32i.d $t6, -1
	lu52i.d $t6, $t6, -1
	add.d $t6, $fp, $t6
	ld.d $t6, $t6, 0
	lu12i.w $t7, -30
	ori $t7, $t7, 2560
	lu32i.d $t7, -1
	lu52i.d $t7, $t7, -1
	add.d $t7, $fp, $t7
	ld.d $t7, $t7, 0
	b .long_array_label158
.long_array_label158:
# %op178 = phi i32 [ %op144, %label133 ], [ %op157, %label145 ]
# %op179 = phi i32 [ %op142, %label133 ], [ %op155, %label145 ]
# br label %label124
	lu12i.w $t8, -30
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t6, $t8, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t7, $t8, 0
	lu12i.w $t3, -30
	ori $t3, $t3, 2568
	lu32i.d $t3, -1
	lu52i.d $t3, $t3, -1
	add.d $t3, $fp, $t3
	ld.d $t3, $t3, 0
	lu12i.w $t4, -30
	ori $t4, $t4, 2560
	lu32i.d $t4, -1
	lu52i.d $t4, $t4, -1
	add.d $t4, $fp, $t4
	ld.d $t4, $t4, 0
	b .long_array_label124
long_array_exit:
	# epilog
	lu12i.w $t0, 29
	ori $t0, $t0, 1528
	ldx.d $ra, $sp, $t0
	lu12i.w $t0, 29
	ori $t0, $t0, 1520
	ldx.d $fp, $sp, $t0
	lu12i.w $t0, 29
	ori $t0, $t0, 1536
	add.d $sp, $sp, $t0
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.main_label_entry:
# %op0 = call i32 @long_array(i32 9)
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
	addi.w $a0, $zero, 9
	bl long_array
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
