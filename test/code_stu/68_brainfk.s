# Global variables
	.text
	.data
	.globl TAPE_LEN
	.align 2
	.type TAPE_LEN, @object
	.size TAPE_LEN, 4
TAPE_LEN:
	.word 65536
	.globl BUFFER_LEN
	.align 2
	.type BUFFER_LEN, @object
	.size BUFFER_LEN, 4
BUFFER_LEN:
	.word 32768
	.globl tape
	.align 3
	.type tape, @object
	.size tape, 262144
tape:
	.space 262144
	.globl program
	.align 3
	.type program, @object
	.size program, 131072
program:
	.space 131072
	.globl ptr
	.align 2
	.type ptr, @object
	.size ptr, 4
ptr:
	.word 0
	.text
	.align 2
	.globl read_program
	.type read_program, @function
read_program:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.read_program_label_entry:
# %op2 = call i32 @getint()
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
# br label %label3
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a1, $fp, -312
	b .read_program_label3
.read_program_label3:
# %op16 = phi i32 [ 0, %label_entry ], [ %op12, %label7 ]
# %op6 = icmp slt i32 %op16, %op2
	slt $a2,$a1,$a0
# br i1 %op6, label %label7, label %label13
	addi.w $t0,$zero,0
	blt $t0,$a2,.read_program_label7
	b .read_program_label13
.read_program_label7:
# %op8 = call i32 @getch()
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
# %op10 = getelementptr [32768 x i32], [32768 x i32]* @program, i32 0, i32 %op16
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 32
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, program
	add.d $a3,$t1,$t0
# store i32 %op8, i32* %op10
	st.w $a2, $a3, 0
# %op12 = add i32 %op16, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label3
	st.d $a2, $fp, -312
	ld.d $a1, $fp, -312
	b .read_program_label3
.read_program_label13:
# %op15 = getelementptr [32768 x i32], [32768 x i32]* @program, i32 0, i32 %op16
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 32
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, program
	add.d $a0,$t1,$t0
# store i32 0, i32* %op15
	addi.w $t0, $zero, 0
	st.w $t0, $a0, 0
# ret void
	addi.w $a0, $zero, 0
	b read_program_exit
read_program_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl interpret
	.type interpret, @function
interpret:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.interpret_label_entry:
# br label %label5
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -316
	ld.d $a1, $fp, -316
	b .interpret_label5
.interpret_label5:
# %op104 = phi i32 [ 0, %label_entry ], [ %op27, %label25 ]
# %op8 = getelementptr i32, i32* %arg0, i32 %op104
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a0
# %op9 = load i32, i32* %op8
	ld.w $a2, $a2, 0
# %op10 = icmp ne i32 0, %op9
	addi.w $t0, $zero, 0
	slt $t8,$a2,$t0
	slt $t0,$t0,$a2
	or $a2,$t0,$t8
# br i1 %op10, label %label11, label %label18
	addi.w $t0,$zero,0
	blt $t0,$a2,.interpret_label11
	b .interpret_label18
.interpret_label11:
# %op14 = getelementptr i32, i32* %arg0, i32 %op104
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a2,$t8,$a0
# %op15 = load i32, i32* %op14
	ld.w $a2, $a2, 0
# %op17 = icmp eq i32 %op15, 62
	addi.w $t1, $zero, 62
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op17, label %label19, label %label22
	addi.w $t0,$zero,0
	blt $t0,$a3,.interpret_label19
	b .interpret_label22
.interpret_label18:
# ret void
	addi.w $a0, $zero, 0
	b interpret_exit
.interpret_label19:
# %op20 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $a3, $t0, 0
# %op21 = add i32 %op20, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a3, $t1
# store i32 %op21, i32* @ptr
	la.local $t1, ptr
	st.w $a3, $t1, 0
# br label %label25
	st.d $a1, $fp, -316
	ld.d $a3, $fp, -316
	b .interpret_label25
.interpret_label22:
# %op24 = icmp eq i32 %op15, 60
	addi.w $t1, $zero, 60
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a4,$t8,$t0
# br i1 %op24, label %label28, label %label31
	addi.w $t0,$zero,0
	blt $t0,$a4,.interpret_label28
	b .interpret_label31
.interpret_label25:
# %op107 = phi i32 [ %op104, %label19 ], [ %op110, %label34 ]
# %op27 = add i32 %op107, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a3, $t1
# br label %label5
	st.d $a2, $fp, -316
	ld.d $a1, $fp, -316
	b .interpret_label5
.interpret_label28:
# %op29 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $a4, $t0, 0
# %op30 = sub i32 %op29, 1
	addi.w $t1, $zero, 1
	sub.w $a4, $a4, $t1
# store i32 %op30, i32* @ptr
	la.local $t1, ptr
	st.w $a4, $t1, 0
# br label %label34
	st.d $a1, $fp, -316
	ld.d $a4, $fp, -316
	b .interpret_label34
.interpret_label31:
# %op33 = icmp eq i32 %op15, 43
	addi.w $t1, $zero, 43
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a5,$t8,$t0
# br i1 %op33, label %label35, label %label42
	addi.w $t0,$zero,0
	blt $t0,$a5,.interpret_label35
	b .interpret_label42
.interpret_label34:
# %op110 = phi i32 [ %op113, %label45 ], [ %op104, %label28 ]
# br label %label25
	st.d $a4, $fp, -316
	ld.d $a3, $fp, -316
	b .interpret_label25
.interpret_label35:
# %op36 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $a5, $t0, 0
# %op37 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %op36
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 64
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, tape
	add.d $a5,$t1,$t0
# %op38 = load i32, i32* %op37
	ld.w $a5, $a5, 0
# %op39 = add i32 %op38, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a5, $t1
# %op40 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $a6, $t0, 0
# %op41 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %op40
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 64
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, tape
	add.d $a6,$t1,$t0
# store i32 %op39, i32* %op41
	st.w $a5, $a6, 0
# br label %label45
	st.d $a1, $fp, -316
	ld.d $a5, $fp, -316
	b .interpret_label45
.interpret_label42:
# %op44 = icmp eq i32 %op15, 45
	addi.w $t1, $zero, 45
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a6,$t8,$t0
# br i1 %op44, label %label46, label %label53
	addi.w $t0,$zero,0
	blt $t0,$a6,.interpret_label46
	b .interpret_label53
.interpret_label45:
# %op113 = phi i32 [ %op104, %label35 ], [ %op116, %label56 ]
# br label %label34
	st.d $a5, $fp, -316
	ld.d $a4, $fp, -316
	b .interpret_label34
.interpret_label46:
# %op47 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $a6, $t0, 0
# %op48 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %op47
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 64
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, tape
	add.d $a6,$t1,$t0
# %op49 = load i32, i32* %op48
	ld.w $a6, $a6, 0
# %op50 = sub i32 %op49, 1
	addi.w $t1, $zero, 1
	sub.w $a6, $a6, $t1
# %op51 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $a7, $t0, 0
# %op52 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %op51
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 64
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, tape
	add.d $a7,$t1,$t0
# store i32 %op50, i32* %op52
	st.w $a6, $a7, 0
# br label %label56
	st.d $a1, $fp, -316
	ld.d $a6, $fp, -316
	b .interpret_label56
.interpret_label53:
# %op55 = icmp eq i32 %op15, 46
	addi.w $t1, $zero, 46
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a7,$t8,$t0
# br i1 %op55, label %label57, label %label61
	addi.w $t0,$zero,0
	blt $t0,$a7,.interpret_label57
	b .interpret_label61
.interpret_label56:
# %op116 = phi i32 [ %op104, %label46 ], [ %op119, %label64 ]
# br label %label45
	st.d $a6, $fp, -316
	ld.d $a5, $fp, -316
	b .interpret_label45
.interpret_label57:
# %op58 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $a7, $t0, 0
# %op59 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %op58
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 64
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, tape
	add.d $a7,$t1,$t0
# %op60 = load i32, i32* %op59
	ld.w $a7, $a7, 0
# call void @putch(i32 %op60)
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
# br label %label64
	st.d $a1, $fp, -316
	ld.d $a7, $fp, -316
	b .interpret_label64
.interpret_label61:
# %op63 = icmp eq i32 %op15, 44
	addi.w $t1, $zero, 44
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t2,$t8,$t0
# br i1 %op63, label %label65, label %label69
	addi.w $t0,$zero,0
	blt $t0,$t2,.interpret_label65
	b .interpret_label69
.interpret_label64:
# %op119 = phi i32 [ %op104, %label57 ], [ %op122, %label72 ]
# br label %label56
	st.d $a7, $fp, -316
	ld.d $a6, $fp, -316
	b .interpret_label56
.interpret_label65:
# %op66 = call i32 @getch()
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
	addi.d $t2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
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
# %op67 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $t3, $t0, 0
# %op68 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %op67
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 64
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, tape
	add.d $t3,$t1,$t0
# store i32 %op66, i32* %op68
	st.w $t2, $t3, 0
# br label %label72
	st.d $a1, $fp, -316
	ld.d $t2, $fp, -316
	b .interpret_label72
.interpret_label69:
# %op71 = icmp eq i32 %op15, 93
	addi.w $t1, $zero, 93
	slt $t8,$t1,$a2
	slt $t0,$a2,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op71, label %label75, label %label74
	addi.w $t0,$zero,0
	blt $t0,$a2,.interpret_label75
	or $t3, $zero, $a1
	b .interpret_label74
.interpret_label72:
# %op122 = phi i32 [ %op104, %label65 ], [ %op125, %label74 ]
# br label %label64
	st.d $t2, $fp, -316
	ld.d $a7, $fp, -316
	b .interpret_label64
.interpret_label73:
# br label %label80
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -316
	st.d $a1, $fp, -324
	ld.d $a2, $fp, -316
	ld.d $t4, $fp, -324
	b .interpret_label80
.interpret_label74:
# %op125 = phi i32 [ %op104, %label69 ], [ %op104, %label75 ], [ %op128, %label92 ]
# br label %label72
	st.d $t3, $fp, -316
	ld.d $t2, $fp, -316
	b .interpret_label72
.interpret_label75:
# %op76 = load i32, i32* @ptr
	la.local $t0, ptr
	ld.w $a2, $t0, 0
# %op77 = getelementptr [65536 x i32], [65536 x i32]* @tape, i32 0, i32 %op76
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 64
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, tape
	add.d $a2,$t1,$t0
# %op78 = load i32, i32* %op77
	ld.w $a2, $a2, 0
# %op79 = icmp ne i32 0, %op78
	addi.w $t0, $zero, 0
	slt $t8,$a2,$t0
	slt $t0,$t0,$a2
	or $a2,$t0,$t8
# br i1 %op79, label %label73, label %label74
	addi.w $t0,$zero,0
	blt $t0,$a2,.interpret_label73
	or $t3, $zero, $a1
	b .interpret_label74
.interpret_label80:
# %op128 = phi i32 [ %op104, %label73 ], [ %op85, %label99 ]
# %op129 = phi i32 [ 1, %label73 ], [ %op131, %label99 ]
# %op82 = icmp sgt i32 %op129, 0
	addi.w $t1, $zero, 0
	slt $t5,$t1,$a2
# br i1 %op82, label %label83, label %label92
	addi.w $t0,$zero,0
	blt $t0,$t5,.interpret_label83
	b .interpret_label92
.interpret_label83:
# %op85 = sub i32 %op128, 1
	addi.w $t1, $zero, 1
	sub.w $t5, $t4, $t1
# %op88 = getelementptr i32, i32* %arg0, i32 %op85
	add.d $t8,$t5 , $t5
	add.d $t8,$t8,$t8
	add.d $t6,$t8,$a0
# %op89 = load i32, i32* %op88
	ld.w $t6, $t6, 0
# %op91 = icmp eq i32 %op89, 91
	addi.w $t1, $zero, 91
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t7,$t8,$t0
# br i1 %op91, label %label93, label %label96
	addi.w $t0,$zero,0
	blt $t0,$t7,.interpret_label93
	b .interpret_label96
.interpret_label92:
# br label %label74
	st.d $t4, $fp, -316
	ld.d $t3, $fp, -316
	b .interpret_label74
.interpret_label93:
# %op95 = sub i32 %op129, 1
	addi.w $t1, $zero, 1
	sub.w $t7, $a2, $t1
# br label %label99
	st.d $t7, $fp, -316
	ld.d $t0, $fp, -316
	st.w $t0, $fp, -308
	b .interpret_label99
.interpret_label96:
# %op98 = icmp eq i32 %op89, 93
	addi.w $t1, $zero, 93
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t6,$t8,$t0
# br i1 %op98, label %label100, label %label103
	addi.w $t0,$zero,0
	blt $t0,$t6,.interpret_label100
	or $t7, $zero, $a2
	b .interpret_label103
.interpret_label99:
# %op131 = phi i32 [ %op95, %label93 ], [ %op132, %label103 ]
# br label %label80
	ld.w $t0, $fp, -308
	st.d $t0, $fp, -316
	st.d $t5, $fp, -324
	ld.d $a2, $fp, -316
	ld.d $t4, $fp, -324
	b .interpret_label80
.interpret_label100:
# %op102 = add i32 %op129, 1
	addi.w $t1, $zero, 1
	add.w $t6, $a2, $t1
# br label %label103
	st.d $t6, $fp, -316
	ld.d $t7, $fp, -316
	b .interpret_label103
.interpret_label103:
# %op132 = phi i32 [ %op129, %label96 ], [ %op102, %label100 ]
# br label %label99
	st.d $t7, $fp, -316
	ld.d $t0, $fp, -316
	st.w $t0, $fp, -308
	b .interpret_label99
interpret_exit:
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
# call void @read_program()
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
	bl read_program
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
# %op0 = getelementptr [32768 x i32], [32768 x i32]* @program, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 32
	ori $t8, $t8, 0
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, program
	add.d $a0,$t1,$t0
# call void @interpret(i32* %op0)
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
	bl interpret
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
main_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
