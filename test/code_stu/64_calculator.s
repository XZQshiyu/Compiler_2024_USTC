# Global variables
	.text
	.data
	.globl ints
	.align 3
	.type ints, @object
	.size ints, 40000
ints:
	.space 40000
	.globl intt
	.align 2
	.type intt, @object
	.size intt, 4
intt:
	.word 0
	.globl chas
	.align 3
	.type chas, @object
	.size chas, 40000
chas:
	.space 40000
	.globl chat
	.align 2
	.type chat, @object
	.size chat, 4
chat:
	.word 0
	.globl i
	.align 2
	.type i, @object
	.size i, 4
i:
	.word 0
	.globl ii
	.align 2
	.type ii, @object
	.size ii, 4
ii:
	.word 1
	.globl c
	.align 2
	.type c, @object
	.size c, 4
c:
	.word 0
	.globl get
	.align 3
	.type get, @object
	.size get, 40000
get:
	.space 40000
	.globl get2
	.align 3
	.type get2, @object
	.size get2, 40000
get2:
	.space 40000
	.text
	.align 2
	.globl isdigit
	.type isdigit, @function
isdigit:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.isdigit_label_entry:
# %op3 = icmp sge i32 %arg0, 48
	addi.w $t1, $zero, 48
	slt $a1,$a0,$t1
	addi.w $t8,$zero,1
	sub.w $a1,$t8,$a1
# br i1 %op3, label %label6, label %label5
	addi.w $t0,$zero,0
	blt $t0,$a1,.isdigit_label6
	b .isdigit_label5
.isdigit_label4:
# ret i32 1
	addi.w $t0, $zero, 1
	or $a0, $zero, $t0
	b isdigit_exit
.isdigit_label5:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b isdigit_exit
.isdigit_label6:
# %op8 = icmp sle i32 %arg0, 57
	addi.w $t1, $zero, 57
	slt $a0,$t1,$a0
	addi.w $t8,$zero,1
	sub.w $a0,$t8,$a0
# br i1 %op8, label %label4, label %label5
	addi.w $t0,$zero,0
	blt $t0,$a0,.isdigit_label4
	b .isdigit_label5
isdigit_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl power
	.type power, @function
power:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.power_label_entry:
# br label %label5
	st.d $a2, $fp, -312
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a3, $fp, -320
	b .power_label5
.power_label5:
# %op16 = phi i32 [ 1, %label_entry ], [ %op11, %label8 ]
# %op17 = phi i32 [ %arg1, %label_entry ], [ %op13, %label8 ]
# %op7 = icmp ne i32 %op17, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a0
	slt $t0,$a0,$t1
	or $a2,$t0,$t8
# br i1 %op7, label %label8, label %label14
	addi.w $t0,$zero,0
	blt $t0,$a2,.power_label8
	b .power_label14
.power_label8:
# %op11 = mul i32 %op16, %arg0
	mul.w $a2, $a3, $a1
# %op13 = sub i32 %op17, 1
	addi.w $t1, $zero, 1
	sub.w $a4, $a0, $t1
# br label %label5
	st.d $a4, $fp, -312
	st.d $a2, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a3, $fp, -320
	b .power_label5
.power_label14:
# ret i32 %op16
	or $a0, $zero, $a3
	b power_exit
power_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl getstr
	.type getstr, @function
getstr:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.getstr_label_entry:
# %op3 = call i32 @getch()
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
# br label %label5
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	st.d $a1, $fp, -320
	ld.d $a2, $fp, -312
	ld.d $a3, $fp, -320
	b .getstr_label5
.getstr_label5:
# %op21 = phi i32 [ 0, %label_entry ], [ %op14, %label8 ]
# %op22 = phi i32 [ %op3, %label_entry ], [ %op15, %label8 ]
# %op7 = icmp ne i32 %op22, 13
	addi.w $t1, $zero, 13
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $a1,$t0,$t8
# br i1 %op7, label %label18, label %label16
	addi.w $t0,$zero,0
	blt $t0,$a1,.getstr_label18
	b .getstr_label16
.getstr_label8:
# %op12 = getelementptr i32, i32* %arg0, i32 %op21
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a1,$t8,$a0
# store i32 %op22, i32* %op12
	st.w $a3, $a1, 0
# %op14 = add i32 %op21, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a2, $t1
# %op15 = call i32 @getch()
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
	addi.d $a4,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
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
# br label %label5
	st.d $a1, $fp, -312
	st.d $a4, $fp, -320
	ld.d $a2, $fp, -312
	ld.d $a3, $fp, -320
	b .getstr_label5
.getstr_label16:
# ret i32 %op21
	or $a0, $zero, $a2
	b getstr_exit
.getstr_label18:
# %op20 = icmp ne i32 %op22, 10
	addi.w $t1, $zero, 10
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $a1,$t0,$t8
# br i1 %op20, label %label8, label %label16
	addi.w $t0,$zero,0
	blt $t0,$a1,.getstr_label8
	b .getstr_label16
getstr_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl intpush
	.type intpush, @function
intpush:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.intpush_label_entry:
# %op2 = load i32, i32* @intt
	la.local $t0, intt
	ld.w $a1, $t0, 0
# %op3 = add i32 %op2, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a1, $t1
# store i32 %op3, i32* @intt
	la.local $t1, intt
	st.w $a1, $t1, 0
# %op5 = load i32, i32* @intt
	la.local $t0, intt
	ld.w $a1, $t0, 0
# %op6 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %op5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, ints
	add.d $a1,$t1,$t0
# store i32 %arg0, i32* %op6
	st.w $a0, $a1, 0
# ret void
	addi.w $a0, $zero, 0
	b intpush_exit
intpush_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl chapush
	.type chapush, @function
chapush:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.chapush_label_entry:
# %op2 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a1, $t0, 0
# %op3 = add i32 %op2, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a1, $t1
# store i32 %op3, i32* @chat
	la.local $t1, chat
	st.w $a1, $t1, 0
# %op5 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a1, $t0, 0
# %op6 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a1,$t1,$t0
# store i32 %arg0, i32* %op6
	st.w $a0, $a1, 0
# ret void
	addi.w $a0, $zero, 0
	b chapush_exit
chapush_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl intpop
	.type intpop, @function
intpop:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.intpop_label_entry:
# %op0 = load i32, i32* @intt
	la.local $t0, intt
	ld.w $a0, $t0, 0
# %op1 = sub i32 %op0, 1
	addi.w $t1, $zero, 1
	sub.w $a0, $a0, $t1
# store i32 %op1, i32* @intt
	la.local $t1, intt
	st.w $a0, $t1, 0
# %op2 = load i32, i32* @intt
	la.local $t0, intt
	ld.w $a0, $t0, 0
# %op3 = add i32 %op2, 1
	addi.w $t1, $zero, 1
	add.w $a0, $a0, $t1
# %op4 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %op3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, ints
	add.d $a0,$t1,$t0
# %op5 = load i32, i32* %op4
	ld.w $a0, $a0, 0
# ret i32 %op5
	b intpop_exit
intpop_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl chapop
	.type chapop, @function
chapop:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.chapop_label_entry:
# %op0 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a0, $t0, 0
# %op1 = sub i32 %op0, 1
	addi.w $t1, $zero, 1
	sub.w $a0, $a0, $t1
# store i32 %op1, i32* @chat
	la.local $t1, chat
	st.w $a0, $t1, 0
# %op2 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a0, $t0, 0
# %op3 = add i32 %op2, 1
	addi.w $t1, $zero, 1
	add.w $a0, $a0, $t1
# %op4 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a0,$t1,$t0
# %op5 = load i32, i32* %op4
	ld.w $a0, $a0, 0
# ret i32 %op5
	b chapop_exit
chapop_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl intadd
	.type intadd, @function
intadd:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.intadd_label_entry:
# %op2 = load i32, i32* @intt
	la.local $t0, intt
	ld.w $a1, $t0, 0
# %op3 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %op2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, ints
	add.d $a1,$t1,$t0
# %op4 = load i32, i32* %op3
	ld.w $a1, $a1, 0
# %op5 = mul i32 %op4, 10
	addi.w $t1, $zero, 10
	mul.w $a1, $a1, $t1
# %op6 = load i32, i32* @intt
	la.local $t0, intt
	ld.w $a2, $t0, 0
# %op7 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %op6
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, ints
	add.d $a2,$t1,$t0
# store i32 %op5, i32* %op7
	st.w $a1, $a2, 0
# %op8 = load i32, i32* @intt
	la.local $t0, intt
	ld.w $a1, $t0, 0
# %op9 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %op8
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, ints
	add.d $a1,$t1,$t0
# %op10 = load i32, i32* %op9
	ld.w $a1, $a1, 0
# %op12 = add i32 %op10, %arg0
	add.w $a0, $a1, $a0
# %op13 = load i32, i32* @intt
	la.local $t0, intt
	ld.w $a1, $t0, 0
# %op14 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 %op13
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, ints
	add.d $a1,$t1,$t0
# store i32 %op12, i32* %op14
	st.w $a0, $a1, 0
# ret void
	addi.w $a0, $zero, 0
	b intadd_exit
intadd_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl find
	.type find, @function
find:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.find_label_entry:
# %op0 = call i32 @chapop()
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
	bl chapop
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
# store i32 %op0, i32* @c
	la.local $t1, c
	st.w $a0, $t1, 0
# %op1 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a0, $t0, 0
# %op2 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a0,$t1,$t0
# store i32 32, i32* %op2
	addi.w $t0, $zero, 32
	st.w $t0, $a0, 0
# %op3 = load i32, i32* @c
	la.local $t0, c
	ld.w $a0, $t0, 0
# %op4 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a1, $t0, 0
# %op5 = add i32 %op4, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a1, $t1
# %op6 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# store i32 %op3, i32* %op6
	st.w $a0, $a1, 0
# %op7 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a0, $t0, 0
# %op8 = add i32 %op7, 2
	addi.w $t1, $zero, 2
	add.w $a0, $a0, $t1
# store i32 %op8, i32* @ii
	la.local $t1, ii
	st.w $a0, $t1, 0
# %op9 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a0, $t0, 0
# %op10 = icmp eq i32 %op9, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a0
	slt $t0,$a0,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a0,$t8,$t0
# br i1 %op10, label %label11, label %label12
	addi.w $t0,$zero,0
	blt $t0,$a0,.find_label11
	b .find_label12
.find_label11:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b find_exit
.find_label12:
# ret i32 1
	addi.w $t0, $zero, 1
	or $a0, $zero, $t0
	b find_exit
find_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.main_label_entry:
# store i32 0, i32* @intt
	la.local $t1, intt
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# store i32 0, i32* @chat
	la.local $t1, chat
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op1 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a1,$t1,$t0
# %op2 = call i32 @getstr(i32* %op1)
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
	bl getstr
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
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op6 = icmp slt i32 %op4, %op2
	slt $a2,$a2,$a1
# br i1 %op6, label %label7, label %label13
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label7
	b .main_label13
.main_label7:
# %op8 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op9 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op8
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op10 = load i32, i32* %op9
	ld.w $a2, $a2, 0
# %op11 = call i32 @isdigit(i32 %op10)
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
	bl isdigit
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
# %op12 = icmp eq i32 %op11, 1
	addi.w $t1, $zero, 1
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op12, label %label14, label %label22
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label14
	b .main_label22
.main_label13:
# br label %label243
	b .main_label243
.main_label14:
# %op15 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op16 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op17 = load i32, i32* %op16
	ld.w $a2, $a2, 0
# %op18 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a3, $t0, 0
# %op19 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op18
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a3,$t1,$t0
# store i32 %op17, i32* %op19
	st.w $a2, $a3, 0
# %op20 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a2, $t0, 0
# %op21 = add i32 %op20, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a2, $t1
# store i32 %op21, i32* @ii
	la.local $t1, ii
	st.w $a2, $t1, 0
# br label %label27
	b .main_label27
.main_label22:
# %op23 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op24 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op23
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op25 = load i32, i32* %op24
	ld.w $a2, $a2, 0
# %op26 = icmp eq i32 %op25, 40
	addi.w $t1, $zero, 40
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op26, label %label30, label %label31
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label30
	b .main_label31
.main_label27:
# %op28 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op29 = add i32 %op28, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a2, $t1
# store i32 %op29, i32* @i
	la.local $t1, i
	st.w $a2, $t1, 0
# br label %label3
	b .main_label3
.main_label30:
# call void @chapush(i32 40)
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
	addi.w $a0, $zero, 40
	bl chapush
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
# br label %label31
	b .main_label31
.main_label31:
# %op32 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op33 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op32
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op34 = load i32, i32* %op33
	ld.w $a2, $a2, 0
# %op35 = icmp eq i32 %op34, 94
	addi.w $t1, $zero, 94
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op35, label %label36, label %label37
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label36
	b .main_label37
.main_label36:
# call void @chapush(i32 94)
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
	addi.w $a0, $zero, 94
	bl chapush
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
# br label %label37
	b .main_label37
.main_label37:
# %op38 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op39 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op38
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op40 = load i32, i32* %op39
	ld.w $a2, $a2, 0
# %op41 = icmp eq i32 %op40, 41
	addi.w $t1, $zero, 41
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op41, label %label42, label %label44
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label42
	b .main_label44
.main_label42:
# %op43 = call i32 @chapop()
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
	bl chapop
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
# store i32 %op43, i32* @c
	la.local $t1, c
	st.w $a2, $t1, 0
# br label %label49
	b .main_label49
.main_label44:
# %op45 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op46 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op45
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op47 = load i32, i32* %op46
	ld.w $a2, $a2, 0
# %op48 = icmp eq i32 %op47, 43
	addi.w $t1, $zero, 43
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op48, label %label63, label %label64
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label63
	b .main_label64
.main_label49:
# %op50 = load i32, i32* @c
	la.local $t0, c
	ld.w $a2, $t0, 0
# %op51 = icmp ne i32 %op50, 40
	addi.w $t1, $zero, 40
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $a2,$t0,$t8
# br i1 %op51, label %label52, label %label62
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label52
	b .main_label62
.main_label52:
# %op53 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a2, $t0, 0
# %op54 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op53
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a2,$t1,$t0
# store i32 32, i32* %op54
	addi.w $t0, $zero, 32
	st.w $t0, $a2, 0
# %op55 = load i32, i32* @c
	la.local $t0, c
	ld.w $a2, $t0, 0
# %op56 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a3, $t0, 0
# %op57 = add i32 %op56, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a3, $t1
# %op58 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op57
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a3,$t1,$t0
# store i32 %op55, i32* %op58
	st.w $a2, $a3, 0
# %op59 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a2, $t0, 0
# %op60 = add i32 %op59, 2
	addi.w $t1, $zero, 2
	add.w $a2, $a2, $t1
# store i32 %op60, i32* @ii
	la.local $t1, ii
	st.w $a2, $t1, 0
# %op61 = call i32 @chapop()
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
	bl chapop
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
# store i32 %op61, i32* @c
	la.local $t1, c
	st.w $a2, $t1, 0
# br label %label49
	b .main_label49
.main_label62:
# br label %label44
	b .main_label44
.main_label63:
# br label %label69
	b .main_label69
.main_label64:
# %op65 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op66 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op65
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op67 = load i32, i32* %op66
	ld.w $a2, $a2, 0
# %op68 = icmp eq i32 %op67, 45
	addi.w $t1, $zero, 45
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op68, label %label105, label %label106
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label105
	b .main_label106
.main_label69:
# %op70 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op71 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op70
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op72 = load i32, i32* %op71
	ld.w $a2, $a2, 0
# %op73 = icmp eq i32 %op72, 43
	addi.w $t1, $zero, 43
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op73, label %label74, label %label98
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label74
	b .main_label98
.main_label74:
# %op75 = call i32 @find()
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
	bl find
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
# %op76 = icmp eq i32 %op75, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op76, label %label103, label %label104
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label103
	b .main_label104
.main_label77:
# call void @chapush(i32 43)
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
	addi.w $a0, $zero, 43
	bl chapush
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
# br label %label64
	b .main_label64
.main_label78:
# %op79 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op80 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op79
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op81 = load i32, i32* %op80
	ld.w $a2, $a2, 0
# %op82 = icmp eq i32 %op81, 94
	addi.w $t1, $zero, 94
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op82, label %label74, label %label77
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label74
	b .main_label77
.main_label83:
# %op84 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op85 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op84
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op86 = load i32, i32* %op85
	ld.w $a2, $a2, 0
# %op87 = icmp eq i32 %op86, 37
	addi.w $t1, $zero, 37
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op87, label %label74, label %label78
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label74
	b .main_label78
.main_label88:
# %op89 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op90 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op89
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op91 = load i32, i32* %op90
	ld.w $a2, $a2, 0
# %op92 = icmp eq i32 %op91, 47
	addi.w $t1, $zero, 47
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op92, label %label74, label %label83
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label74
	b .main_label83
.main_label93:
# %op94 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op95 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op94
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op96 = load i32, i32* %op95
	ld.w $a2, $a2, 0
# %op97 = icmp eq i32 %op96, 42
	addi.w $t1, $zero, 42
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op97, label %label74, label %label88
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label74
	b .main_label88
.main_label98:
# %op99 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op100 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op99
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op101 = load i32, i32* %op100
	ld.w $a2, $a2, 0
# %op102 = icmp eq i32 %op101, 45
	addi.w $t1, $zero, 45
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op102, label %label74, label %label93
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label74
	b .main_label93
.main_label103:
# br label %label77
	b .main_label77
.main_label104:
# br label %label69
	b .main_label69
.main_label105:
# br label %label111
	b .main_label111
.main_label106:
# %op107 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op108 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op107
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op109 = load i32, i32* %op108
	ld.w $a2, $a2, 0
# %op110 = icmp eq i32 %op109, 42
	addi.w $t1, $zero, 42
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op110, label %label147, label %label148
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label147
	b .main_label148
.main_label111:
# %op112 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op113 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op112
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op114 = load i32, i32* %op113
	ld.w $a2, $a2, 0
# %op115 = icmp eq i32 %op114, 43
	addi.w $t1, $zero, 43
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op115, label %label116, label %label140
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label116
	b .main_label140
.main_label116:
# %op117 = call i32 @find()
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
	bl find
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
# %op118 = icmp eq i32 %op117, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op118, label %label145, label %label146
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label145
	b .main_label146
.main_label119:
# call void @chapush(i32 45)
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
	addi.w $a0, $zero, 45
	bl chapush
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
# br label %label106
	b .main_label106
.main_label120:
# %op121 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op122 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op121
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op123 = load i32, i32* %op122
	ld.w $a2, $a2, 0
# %op124 = icmp eq i32 %op123, 94
	addi.w $t1, $zero, 94
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op124, label %label116, label %label119
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label116
	b .main_label119
.main_label125:
# %op126 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op127 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op126
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op128 = load i32, i32* %op127
	ld.w $a2, $a2, 0
# %op129 = icmp eq i32 %op128, 37
	addi.w $t1, $zero, 37
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op129, label %label116, label %label120
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label116
	b .main_label120
.main_label130:
# %op131 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op132 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op131
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op133 = load i32, i32* %op132
	ld.w $a2, $a2, 0
# %op134 = icmp eq i32 %op133, 47
	addi.w $t1, $zero, 47
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op134, label %label116, label %label125
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label116
	b .main_label125
.main_label135:
# %op136 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op137 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op136
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op138 = load i32, i32* %op137
	ld.w $a2, $a2, 0
# %op139 = icmp eq i32 %op138, 42
	addi.w $t1, $zero, 42
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op139, label %label116, label %label130
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label116
	b .main_label130
.main_label140:
# %op141 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op142 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op141
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op143 = load i32, i32* %op142
	ld.w $a2, $a2, 0
# %op144 = icmp eq i32 %op143, 45
	addi.w $t1, $zero, 45
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op144, label %label116, label %label135
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label116
	b .main_label135
.main_label145:
# br label %label119
	b .main_label119
.main_label146:
# br label %label111
	b .main_label111
.main_label147:
# br label %label153
	b .main_label153
.main_label148:
# %op149 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op150 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op149
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op151 = load i32, i32* %op150
	ld.w $a2, $a2, 0
# %op152 = icmp eq i32 %op151, 47
	addi.w $t1, $zero, 47
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op152, label %label179, label %label180
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label179
	b .main_label180
.main_label153:
# %op154 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op155 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op154
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op156 = load i32, i32* %op155
	ld.w $a2, $a2, 0
# %op157 = icmp eq i32 %op156, 42
	addi.w $t1, $zero, 42
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op157, label %label158, label %label172
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label158
	b .main_label172
.main_label158:
# %op159 = call i32 @find()
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
	bl find
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
# %op160 = icmp eq i32 %op159, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op160, label %label177, label %label178
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label177
	b .main_label178
.main_label161:
# call void @chapush(i32 42)
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
	addi.w $a0, $zero, 42
	bl chapush
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
# br label %label148
	b .main_label148
.main_label162:
# %op163 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op164 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op163
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op165 = load i32, i32* %op164
	ld.w $a2, $a2, 0
# %op166 = icmp eq i32 %op165, 94
	addi.w $t1, $zero, 94
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op166, label %label158, label %label161
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label158
	b .main_label161
.main_label167:
# %op168 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op169 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op168
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op170 = load i32, i32* %op169
	ld.w $a2, $a2, 0
# %op171 = icmp eq i32 %op170, 37
	addi.w $t1, $zero, 37
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op171, label %label158, label %label162
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label158
	b .main_label162
.main_label172:
# %op173 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op174 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op173
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op175 = load i32, i32* %op174
	ld.w $a2, $a2, 0
# %op176 = icmp eq i32 %op175, 47
	addi.w $t1, $zero, 47
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op176, label %label158, label %label167
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label158
	b .main_label167
.main_label177:
# br label %label161
	b .main_label161
.main_label178:
# br label %label153
	b .main_label153
.main_label179:
# br label %label185
	b .main_label185
.main_label180:
# %op181 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op182 = getelementptr [10000 x i32], [10000 x i32]* @get, i32 0, i32 %op181
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get
	add.d $a2,$t1,$t0
# %op183 = load i32, i32* %op182
	ld.w $a2, $a2, 0
# %op184 = icmp eq i32 %op183, 37
	addi.w $t1, $zero, 37
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op184, label %label211, label %label212
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label211
	b .main_label212
.main_label185:
# %op186 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op187 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op186
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op188 = load i32, i32* %op187
	ld.w $a2, $a2, 0
# %op189 = icmp eq i32 %op188, 42
	addi.w $t1, $zero, 42
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op189, label %label190, label %label204
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label190
	b .main_label204
.main_label190:
# %op191 = call i32 @find()
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
	bl find
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
# %op192 = icmp eq i32 %op191, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op192, label %label209, label %label210
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label209
	b .main_label210
.main_label193:
# call void @chapush(i32 47)
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
	addi.w $a0, $zero, 47
	bl chapush
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
# br label %label180
	b .main_label180
.main_label194:
# %op195 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op196 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op195
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op197 = load i32, i32* %op196
	ld.w $a2, $a2, 0
# %op198 = icmp eq i32 %op197, 94
	addi.w $t1, $zero, 94
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op198, label %label190, label %label193
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label190
	b .main_label193
.main_label199:
# %op200 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op201 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op200
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op202 = load i32, i32* %op201
	ld.w $a2, $a2, 0
# %op203 = icmp eq i32 %op202, 37
	addi.w $t1, $zero, 37
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op203, label %label190, label %label194
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label190
	b .main_label194
.main_label204:
# %op205 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op206 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op205
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op207 = load i32, i32* %op206
	ld.w $a2, $a2, 0
# %op208 = icmp eq i32 %op207, 47
	addi.w $t1, $zero, 47
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op208, label %label190, label %label199
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label190
	b .main_label199
.main_label209:
# br label %label193
	b .main_label193
.main_label210:
# br label %label185
	b .main_label185
.main_label211:
# br label %label217
	b .main_label217
.main_label212:
# %op213 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a2, $t0, 0
# %op214 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op213
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a2,$t1,$t0
# store i32 32, i32* %op214
	addi.w $t0, $zero, 32
	st.w $t0, $a2, 0
# %op215 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a2, $t0, 0
# %op216 = add i32 %op215, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a2, $t1
# store i32 %op216, i32* @ii
	la.local $t1, ii
	st.w $a2, $t1, 0
# br label %label27
	b .main_label27
.main_label217:
# %op218 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op219 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op218
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op220 = load i32, i32* %op219
	ld.w $a2, $a2, 0
# %op221 = icmp eq i32 %op220, 42
	addi.w $t1, $zero, 42
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op221, label %label222, label %label236
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label222
	b .main_label236
.main_label222:
# %op223 = call i32 @find()
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
	bl find
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
# %op224 = icmp eq i32 %op223, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op224, label %label241, label %label242
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label241
	b .main_label242
.main_label225:
# call void @chapush(i32 37)
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
	addi.w $a0, $zero, 37
	bl chapush
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
# br label %label212
	b .main_label212
.main_label226:
# %op227 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op228 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op227
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op229 = load i32, i32* %op228
	ld.w $a2, $a2, 0
# %op230 = icmp eq i32 %op229, 94
	addi.w $t1, $zero, 94
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op230, label %label222, label %label225
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label222
	b .main_label225
.main_label231:
# %op232 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op233 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op232
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op234 = load i32, i32* %op233
	ld.w $a2, $a2, 0
# %op235 = icmp eq i32 %op234, 37
	addi.w $t1, $zero, 37
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op235, label %label222, label %label226
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label222
	b .main_label226
.main_label236:
# %op237 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a2, $t0, 0
# %op238 = getelementptr [10000 x i32], [10000 x i32]* @chas, i32 0, i32 %op237
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, chas
	add.d $a2,$t1,$t0
# %op239 = load i32, i32* %op238
	ld.w $a2, $a2, 0
# %op240 = icmp eq i32 %op239, 47
	addi.w $t1, $zero, 47
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op240, label %label222, label %label231
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label222
	b .main_label231
.main_label241:
# br label %label225
	b .main_label225
.main_label242:
# br label %label217
	b .main_label217
.main_label243:
# %op244 = load i32, i32* @chat
	la.local $t0, chat
	ld.w $a1, $t0, 0
# %op245 = icmp sgt i32 %op244, 0
	addi.w $t1, $zero, 0
	slt $a1,$t1,$a1
# br i1 %op245, label %label246, label %label257
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label246
	b .main_label257
.main_label246:
# %op248 = call i32 @chapop()
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
	bl chapop
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
# %op249 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a2, $t0, 0
# %op250 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op249
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a2,$t1,$t0
# store i32 32, i32* %op250
	addi.w $t0, $zero, 32
	st.w $t0, $a2, 0
# %op252 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a2, $t0, 0
# %op253 = add i32 %op252, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a2, $t1
# %op254 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op253
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a2,$t1,$t0
# store i32 %op248, i32* %op254
	st.w $a1, $a2, 0
# %op255 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a1, $t0, 0
# %op256 = add i32 %op255, 2
	addi.w $t1, $zero, 2
	add.w $a1, $a1, $t1
# store i32 %op256, i32* @ii
	la.local $t1, ii
	st.w $a1, $t1, 0
# br label %label243
	b .main_label243
.main_label257:
# %op258 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a1, $t0, 0
# %op259 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op258
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# store i32 64, i32* %op259
	addi.w $t0, $zero, 64
	st.w $t0, $a1, 0
# store i32 1, i32* @i
	la.local $t1, i
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# br label %label260
	b .main_label260
.main_label260:
# %op395 = phi i32 [ %op398, %label288 ], [ undef, %label257 ]
# %op261 = load i32, i32* @i
	la.local $t0, i
	ld.w $a1, $t0, 0
# %op262 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op261
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# %op263 = load i32, i32* %op262
	ld.w $a1, $a1, 0
# %op264 = icmp ne i32 %op263, 64
	addi.w $t1, $zero, 64
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $a1,$t0,$t8
# br i1 %op264, label %label265, label %label270
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label265
	b .main_label270
.main_label265:
# %op266 = load i32, i32* @i
	la.local $t0, i
	ld.w $a1, $t0, 0
# %op267 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op266
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# %op268 = load i32, i32* %op267
	ld.w $a1, $a1, 0
# %op269 = icmp eq i32 %op268, 43
	addi.w $t1, $zero, 43
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a1,$t8,$t0
# br i1 %op269, label %label273, label %label311
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label273
	b .main_label311
.main_label270:
# %op271 = getelementptr [10000 x i32], [10000 x i32]* @ints, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, ints
	add.d $a0,$t1,$t0
# %op272 = load i32, i32* %op271
	ld.w $a0, $a0, 0
# call void @putint(i32 %op272)
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
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
.main_label273:
# %op275 = call i32 @intpop()
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
	bl intpop
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
# %op277 = call i32 @intpop()
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
	bl intpop
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
# %op279 = load i32, i32* @i
	la.local $t0, i
	ld.w $a3, $t0, 0
# %op280 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op279
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a3,$t1,$t0
# %op281 = load i32, i32* %op280
	ld.w $a3, $a3, 0
# %op282 = icmp eq i32 %op281, 43
	addi.w $t1, $zero, 43
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op282, label %label316, label %label320
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label316
	or $a4, $zero, $a0
	b .main_label320
.main_label283:
# %op284 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op285 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op284
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a2,$t1,$t0
# %op286 = load i32, i32* %op285
	ld.w $a2, $a2, 0
# %op287 = icmp ne i32 %op286, 32
	addi.w $t1, $zero, 32
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $a2,$t0,$t8
# br i1 %op287, label %label367, label %label372
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label367
	b .main_label372
.main_label288:
# %op398 = phi i32 [ %op406, %label365 ], [ %op395, %label372 ]
# %op289 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op290 = add i32 %op289, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a2, $t1
# store i32 %op290, i32* @i
	la.local $t1, i
	st.w $a2, $t1, 0
# br label %label260
	st.d $a1, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label260
.main_label291:
# %op292 = load i32, i32* @i
	la.local $t0, i
	ld.w $a1, $t0, 0
# %op293 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op292
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# %op294 = load i32, i32* %op293
	ld.w $a1, $a1, 0
# %op295 = icmp eq i32 %op294, 94
	addi.w $t1, $zero, 94
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a1,$t8,$t0
# br i1 %op295, label %label273, label %label283
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label273
	b .main_label283
.main_label296:
# %op297 = load i32, i32* @i
	la.local $t0, i
	ld.w $a1, $t0, 0
# %op298 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op297
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# %op299 = load i32, i32* %op298
	ld.w $a1, $a1, 0
# %op300 = icmp eq i32 %op299, 37
	addi.w $t1, $zero, 37
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a1,$t8,$t0
# br i1 %op300, label %label273, label %label291
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label273
	b .main_label291
.main_label301:
# %op302 = load i32, i32* @i
	la.local $t0, i
	ld.w $a1, $t0, 0
# %op303 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op302
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# %op304 = load i32, i32* %op303
	ld.w $a1, $a1, 0
# %op305 = icmp eq i32 %op304, 47
	addi.w $t1, $zero, 47
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a1,$t8,$t0
# br i1 %op305, label %label273, label %label296
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label273
	b .main_label296
.main_label306:
# %op307 = load i32, i32* @i
	la.local $t0, i
	ld.w $a1, $t0, 0
# %op308 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op307
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# %op309 = load i32, i32* %op308
	ld.w $a1, $a1, 0
# %op310 = icmp eq i32 %op309, 42
	addi.w $t1, $zero, 42
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a1,$t8,$t0
# br i1 %op310, label %label273, label %label301
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label273
	b .main_label301
.main_label311:
# %op312 = load i32, i32* @i
	la.local $t0, i
	ld.w $a1, $t0, 0
# %op313 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op312
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a1,$t1,$t0
# %op314 = load i32, i32* %op313
	ld.w $a1, $a1, 0
# %op315 = icmp eq i32 %op314, 45
	addi.w $t1, $zero, 45
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a1,$t8,$t0
# br i1 %op315, label %label273, label %label306
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label273
	b .main_label306
.main_label316:
# %op319 = add i32 %op275, %op277
	add.w $a3, $a1, $a2
# br label %label320
	st.d $a3, $fp, -312
	ld.d $a4, $fp, -312
	b .main_label320
.main_label320:
# %op401 = phi i32 [ %op395, %label273 ], [ %op319, %label316 ]
# %op321 = load i32, i32* @i
	la.local $t0, i
	ld.w $a3, $t0, 0
# %op322 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op321
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a3,$t1,$t0
# %op323 = load i32, i32* %op322
	ld.w $a3, $a3, 0
# %op324 = icmp eq i32 %op323, 45
	addi.w $t1, $zero, 45
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op324, label %label325, label %label329
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label325
	or $a5, $zero, $a4
	b .main_label329
.main_label325:
# %op328 = sub i32 %op277, %op275
	sub.w $a3, $a2, $a1
# br label %label329
	st.d $a3, $fp, -312
	ld.d $a5, $fp, -312
	b .main_label329
.main_label329:
# %op402 = phi i32 [ %op401, %label320 ], [ %op328, %label325 ]
# %op330 = load i32, i32* @i
	la.local $t0, i
	ld.w $a3, $t0, 0
# %op331 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op330
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a3,$t1,$t0
# %op332 = load i32, i32* %op331
	ld.w $a3, $a3, 0
# %op333 = icmp eq i32 %op332, 42
	addi.w $t1, $zero, 42
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op333, label %label334, label %label338
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label334
	or $a4, $zero, $a5
	b .main_label338
.main_label334:
# %op337 = mul i32 %op275, %op277
	mul.w $a3, $a1, $a2
# br label %label338
	st.d $a3, $fp, -312
	ld.d $a4, $fp, -312
	b .main_label338
.main_label338:
# %op403 = phi i32 [ %op402, %label329 ], [ %op337, %label334 ]
# %op339 = load i32, i32* @i
	la.local $t0, i
	ld.w $a3, $t0, 0
# %op340 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op339
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a3,$t1,$t0
# %op341 = load i32, i32* %op340
	ld.w $a3, $a3, 0
# %op342 = icmp eq i32 %op341, 47
	addi.w $t1, $zero, 47
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op342, label %label343, label %label347
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label343
	or $a5, $zero, $a4
	b .main_label347
.main_label343:
# %op346 = sdiv i32 %op277, %op275
	div.w $a3, $a2, $a1
# br label %label347
	st.d $a3, $fp, -312
	ld.d $a5, $fp, -312
	b .main_label347
.main_label347:
# %op404 = phi i32 [ %op403, %label338 ], [ %op346, %label343 ]
# %op348 = load i32, i32* @i
	la.local $t0, i
	ld.w $a3, $t0, 0
# %op349 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op348
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a3,$t1,$t0
# %op350 = load i32, i32* %op349
	ld.w $a3, $a3, 0
# %op351 = icmp eq i32 %op350, 37
	addi.w $t1, $zero, 37
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op351, label %label352, label %label356
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label352
	or $a4, $zero, $a5
	b .main_label356
.main_label352:
# %op355 = srem i32 %op277, %op275
	mod.w $a3, $a2, $a1
# br label %label356
	st.d $a3, $fp, -312
	ld.d $a4, $fp, -312
	b .main_label356
.main_label356:
# %op405 = phi i32 [ %op404, %label347 ], [ %op355, %label352 ]
# %op357 = load i32, i32* @i
	la.local $t0, i
	ld.w $a3, $t0, 0
# %op358 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op357
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a3,$t1,$t0
# %op359 = load i32, i32* %op358
	ld.w $a3, $a3, 0
# %op360 = icmp eq i32 %op359, 94
	addi.w $t1, $zero, 94
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op360, label %label361, label %label365
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label361
	or $a5, $zero, $a4
	b .main_label365
.main_label361:
# %op364 = call i32 @power(i32 %op277, i32 %op275)
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
	ld.d $a2, $fp, -32
	bl power
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
# br label %label365
	st.d $a1, $fp, -312
	ld.d $a5, $fp, -312
	b .main_label365
.main_label365:
# %op406 = phi i32 [ %op405, %label356 ], [ %op364, %label361 ]
# call void @intpush(i32 %op406)
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
	bl intpush
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
# br label %label288
	st.d $a5, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label288
.main_label367:
# %op368 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op369 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op368
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a2,$t1,$t0
# %op370 = load i32, i32* %op369
	ld.w $a2, $a2, 0
# %op371 = sub i32 %op370, 48
	addi.w $t1, $zero, 48
	sub.w $a2, $a2, $t1
# call void @intpush(i32 %op371)
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
	bl intpush
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
# store i32 1, i32* @ii
	la.local $t1, ii
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# br label %label373
	b .main_label373
.main_label372:
# br label %label288
	st.d $a0, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label288
.main_label373:
# %op374 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op375 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a3, $t0, 0
# %op376 = add i32 %op374, %op375
	add.w $a2, $a2, $a3
# %op377 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op376
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a2,$t1,$t0
# %op378 = load i32, i32* %op377
	ld.w $a2, $a2, 0
# %op379 = icmp ne i32 %op378, 32
	addi.w $t1, $zero, 32
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $a2,$t0,$t8
# br i1 %op379, label %label380, label %label389
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label380
	b .main_label389
.main_label380:
# %op381 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op382 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a3, $t0, 0
# %op383 = add i32 %op381, %op382
	add.w $a2, $a2, $a3
# %op384 = getelementptr [10000 x i32], [10000 x i32]* @get2, i32 0, i32 %op383
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 9
	ori $t8, $t8, 3136
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, get2
	add.d $a2,$t1,$t0
# %op385 = load i32, i32* %op384
	ld.w $a2, $a2, 0
# %op386 = sub i32 %op385, 48
	addi.w $t1, $zero, 48
	sub.w $a2, $a2, $t1
# call void @intadd(i32 %op386)
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
	bl intadd
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
# %op387 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a2, $t0, 0
# %op388 = add i32 %op387, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a2, $t1
# store i32 %op388, i32* @ii
	la.local $t1, ii
	st.w $a2, $t1, 0
# br label %label373
	b .main_label373
.main_label389:
# %op390 = load i32, i32* @i
	la.local $t0, i
	ld.w $a2, $t0, 0
# %op391 = load i32, i32* @ii
	la.local $t0, ii
	ld.w $a3, $t0, 0
# %op392 = add i32 %op390, %op391
	add.w $a2, $a2, $a3
# %op393 = sub i32 %op392, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a2, $t1
# store i32 %op393, i32* @i
	la.local $t1, i
	st.w $a2, $t1, 0
# br label %label372
	b .main_label372
main_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
