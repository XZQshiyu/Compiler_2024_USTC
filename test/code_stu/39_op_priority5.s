# Global variables
	.text
	.data
	.globl a
	.align 2
	.type a, @object
	.size a, 4
a:
	.word 1
	.globl b
	.align 2
	.type b, @object
	.size b, 4
b:
	.word 0
	.globl c
	.align 2
	.type c, @object
	.size c, 4
c:
	.word 1
	.globl d
	.align 2
	.type d, @object
	.size d, 4
d:
	.word 2
	.globl e
	.align 2
	.type e, @object
	.size e, 4
e:
	.word 4
	.text
	.align 2
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.main_label_entry:
# %op1 = load i32, i32* @a
	la.local $t0, a
	ld.w $a0, $t0, 0
# %op2 = load i32, i32* @b
	la.local $t0, b
	ld.w $a1, $t0, 0
# %op3 = mul i32 %op1, %op2
	mul.w $a0, $a0, $a1
# %op4 = load i32, i32* @c
	la.local $t0, c
	ld.w $a1, $t0, 0
# %op5 = sdiv i32 %op3, %op4
	div.w $a0, $a0, $a1
# %op6 = load i32, i32* @e
	la.local $t0, e
	ld.w $a1, $t0, 0
# %op7 = load i32, i32* @d
	la.local $t0, d
	ld.w $a2, $t0, 0
# %op8 = add i32 %op6, %op7
	add.w $a1, $a1, $a2
# %op9 = icmp eq i32 %op5, %op8
	slt $t8,$a1,$a0
	slt $t0,$a0,$a1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a0,$t8,$t0
# br i1 %op9, label %label26, label %label14
	addi.w $t0,$zero,0
	blt $t0,$a0,.main_label26
	b .main_label14
.main_label10:
# br label %label11
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label11
.main_label11:
# %op38 = phi i32 [ 1, %label10 ], [ 0, %label14 ]
# call void @putint(i32 %op38)
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
# ret i32 %op38
	or $a0, $zero, $a1
	b main_exit
.main_label14:
# %op15 = load i32, i32* @a
	la.local $t0, a
	ld.w $a0, $t0, 0
# %op16 = load i32, i32* @b
	la.local $t0, b
	ld.w $a1, $t0, 0
# %op17 = load i32, i32* @c
	la.local $t0, c
	ld.w $a2, $t0, 0
# %op18 = mul i32 %op16, %op17
	mul.w $a1, $a1, $a2
# %op19 = sub i32 %op15, %op18
	sub.w $a0, $a0, $a1
# %op20 = load i32, i32* @d
	la.local $t0, d
	ld.w $a1, $t0, 0
# %op21 = load i32, i32* @a
	la.local $t0, a
	ld.w $a2, $t0, 0
# %op22 = load i32, i32* @c
	la.local $t0, c
	ld.w $a3, $t0, 0
# %op23 = sdiv i32 %op21, %op22
	div.w $a2, $a2, $a3
# %op24 = sub i32 %op20, %op23
	sub.w $a1, $a1, $a2
# %op25 = icmp eq i32 %op19, %op24
	slt $t8,$a1,$a0
	slt $t0,$a0,$a1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a0,$t8,$t0
# br i1 %op25, label %label10, label %label11
	addi.w $t0,$zero,0
	blt $t0,$a0,.main_label10
	addi.w $t0, $zero, 0
	or $a1, $zero, $t0
	b .main_label11
.main_label26:
# %op27 = load i32, i32* @a
	la.local $t0, a
	ld.w $a0, $t0, 0
# %op28 = load i32, i32* @a
	la.local $t0, a
	ld.w $a1, $t0, 0
# %op29 = load i32, i32* @b
	la.local $t0, b
	ld.w $a2, $t0, 0
# %op30 = add i32 %op28, %op29
	add.w $a1, $a1, $a2
# %op31 = mul i32 %op27, %op30
	mul.w $a0, $a0, $a1
# %op32 = load i32, i32* @c
	la.local $t0, c
	ld.w $a1, $t0, 0
# %op33 = add i32 %op31, %op32
	add.w $a0, $a0, $a1
# %op34 = load i32, i32* @d
	la.local $t0, d
	ld.w $a1, $t0, 0
# %op35 = load i32, i32* @e
	la.local $t0, e
	ld.w $a2, $t0, 0
# %op36 = add i32 %op34, %op35
	add.w $a1, $a1, $a2
# %op37 = icmp sle i32 %op33, %op36
	slt $a0,$a1,$a0
	addi.w $t8,$zero,1
	sub.w $a0,$t8,$a0
# br i1 %op37, label %label10, label %label14
	addi.w $t0,$zero,0
	blt $t0,$a0,.main_label10
	b .main_label14
main_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
