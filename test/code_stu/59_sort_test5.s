# Global variables
	.text
	.data
	.globl n
	.align 2
	.type n, @object
	.size n, 4
n:
	.word 0
	.text
	.align 2
	.globl swap
	.type swap, @function
swap:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.swap_label_entry:
# %op9 = getelementptr i32, i32* %arg0, i32 %arg1
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a3,$t8,$a0
# %op10 = load i32, i32* %op9
	ld.w $a3, $a3, 0
# %op13 = getelementptr i32, i32* %arg0, i32 %arg2
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# %op14 = load i32, i32* %op13
	ld.w $a4, $a4, 0
# %op17 = getelementptr i32, i32* %arg0, i32 %arg1
	add.d $t8,$a1 , $a1
	add.d $t8,$t8,$t8
	add.d $a1,$t8,$a0
# store i32 %op14, i32* %op17
	st.w $a4, $a1, 0
# %op21 = getelementptr i32, i32* %arg0, i32 %arg2
	add.d $t8,$a2 , $a2
	add.d $t8,$t8,$t8
	add.d $a0,$t8,$a0
# store i32 %op10, i32* %op21
	st.w $a3, $a0, 0
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b swap_exit
swap_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl heap_ajust
	.type heap_ajust, @function
heap_ajust:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.heap_ajust_label_entry:
# %op10 = mul i32 %arg1, 2
	addi.w $t1, $zero, 2
	mul.w $a3, $a0, $t1
# %op11 = add i32 %op10, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a3, $t1
# %op15 = add i32 %arg2, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a2, $t1
# br label %label12
	st.d $a3, $fp, -316
	st.d $a0, $fp, -324
	ld.d $a5, $fp, -316
	ld.d $a6, $fp, -324
	b .heap_ajust_label12
.heap_ajust_label12:
# %op57 = phi i32 [ %op11, %label_entry ], [ %op55, %label56 ]
# %op58 = phi i32 [ %arg1, %label_entry ], [ %op59, %label56 ]
# %op16 = icmp slt i32 %op57, %op15
	slt $a0,$a5,$a4
# br i1 %op16, label %label17, label %label21
	addi.w $t0,$zero,0
	blt $t0,$a0,.heap_ajust_label17
	b .heap_ajust_label21
.heap_ajust_label17:
# %op20 = icmp slt i32 %op57, %arg2
	slt $a0,$a5,$a2
# br i1 %op20, label %label35, label %label25
	addi.w $t0,$zero,0
	blt $t0,$a0,.heap_ajust_label35
	or $a3, $zero, $a5
	b .heap_ajust_label25
.heap_ajust_label21:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b heap_ajust_exit
.heap_ajust_label22:
# %op24 = add i32 %op57, 1
	addi.w $t1, $zero, 1
	add.w $a0, $a5, $t1
# br label %label25
	st.d $a0, $fp, -316
	ld.d $a3, $fp, -316
	b .heap_ajust_label25
.heap_ajust_label25:
# %op59 = phi i32 [ %op57, %label17 ], [ %op57, %label35 ], [ %op24, %label22 ]
# %op28 = getelementptr i32, i32* %arg0, i32 %op58
	add.d $t8,$a6 , $a6
	add.d $t8,$t8,$t8
	add.d $a0,$t8,$a1
# %op29 = load i32, i32* %op28
	ld.w $a0, $a0, 0
# %op32 = getelementptr i32, i32* %arg0, i32 %op59
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a1
# %op33 = load i32, i32* %op32
	ld.w $a7, $a7, 0
# %op34 = icmp sgt i32 %op29, %op33
	slt $a0,$a7,$a0
# br i1 %op34, label %label46, label %label47
	addi.w $t0,$zero,0
	blt $t0,$a0,.heap_ajust_label46
	b .heap_ajust_label47
.heap_ajust_label35:
# %op38 = getelementptr i32, i32* %arg0, i32 %op57
	add.d $t8,$a5 , $a5
	add.d $t8,$t8,$t8
	add.d $a0,$t8,$a1
# %op39 = load i32, i32* %op38
	ld.w $a0, $a0, 0
# %op42 = add i32 %op57, 1
	addi.w $t1, $zero, 1
	add.w $a7, $a5, $t1
# %op43 = getelementptr i32, i32* %arg0, i32 %op42
	add.d $t8,$a7 , $a7
	add.d $t8,$t8,$t8
	add.d $a7,$t8,$a1
# %op44 = load i32, i32* %op43
	ld.w $a7, $a7, 0
# %op45 = icmp slt i32 %op39, %op44
	slt $a0,$a0,$a7
# br i1 %op45, label %label22, label %label25
	addi.w $t0,$zero,0
	blt $t0,$a0,.heap_ajust_label22
	or $a3, $zero, $a5
	b .heap_ajust_label25
.heap_ajust_label46:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b heap_ajust_exit
.heap_ajust_label47:
# %op51 = call i32 @swap(i32* %arg0, i32 %op58, i32 %op59)
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
	ld.d $a1, $fp, -72
	ld.d $a2, $fp, -48
	bl swap
	st.w $a0, $fp, -308
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
# %op54 = mul i32 %op59, 2
	addi.w $t1, $zero, 2
	mul.w $a0, $a3, $t1
# %op55 = add i32 %op54, 1
	addi.w $t1, $zero, 1
	add.w $a0, $a0, $t1
# br label %label56
	b .heap_ajust_label56
.heap_ajust_label56:
# br label %label12
	st.d $a0, $fp, -316
	st.d $a3, $fp, -324
	ld.d $a5, $fp, -316
	ld.d $a6, $fp, -324
	b .heap_ajust_label12
heap_ajust_exit:
	# epilog
	ld.d $ra, $sp, 328
	ld.d $fp, $sp, 320
	addi.d $sp, $sp, 336
	jr $ra
	.globl heap_sort
	.type heap_sort, @function
heap_sort:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.heap_sort_label_entry:
# %op7 = sdiv i32 %arg1, 2
	addi.w $t1, $zero, 2
	div.w $a2, $a1, $t1
# %op8 = sub i32 %op7, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a2, $t1
# %op15 = sub i32 %arg1, 1
	addi.w $t1, $zero, 1
	sub.w $a3, $a1, $t1
# br label %label9
	st.d $a2, $fp, -324
	ld.d $a4, $fp, -324
	b .heap_sort_label9
.heap_sort_label9:
# %op44 = phi i32 [ %op8, %label_entry ], [ %op21, %label13 ]
# %op12 = icmp sgt i32 %op44, -1
	addi.w $t1, $zero, -1
	slt $a2,$t1,$a4
# br i1 %op12, label %label13, label %label22
	addi.w $t0,$zero,0
	blt $t0,$a2,.heap_sort_label13
	b .heap_sort_label22
.heap_sort_label13:
# %op19 = call i32 @heap_ajust(i32* %arg0, i32 %op44, i32 %op15)
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
	ld.d $a1, $fp, -24
	ld.d $a0, $fp, -56
	ld.d $a2, $fp, -48
	bl heap_ajust
	st.w $a0, $fp, -308
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
# %op21 = sub i32 %op44, 1
	addi.w $t1, $zero, 1
	sub.w $a2, $a4, $t1
# br label %label9
	st.d $a2, $fp, -324
	ld.d $a4, $fp, -324
	b .heap_sort_label9
.heap_sort_label22:
# %op24 = sub i32 %arg1, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a1, $t1
# br label %label25
	st.d $a1, $fp, -324
	ld.d $a2, $fp, -324
	b .heap_sort_label25
.heap_sort_label25:
# %op47 = phi i32 [ %op24, %label22 ], [ %op41, %label28 ]
# %op27 = icmp sgt i32 %op47, 0
	addi.w $t1, $zero, 0
	slt $a1,$t1,$a2
# br i1 %op27, label %label28, label %label42
	addi.w $t0,$zero,0
	blt $t0,$a1,.heap_sort_label28
	b .heap_sort_label42
.heap_sort_label28:
# %op33 = call i32 @swap(i32* %arg0, i32 0, i32 %op47)
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
	addi.w $a1, $zero, 0
	ld.d $a2, $fp, -40
	bl swap
	st.w $a0, $fp, -312
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
# %op35 = sub i32 %op47, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a2, $t1
# %op39 = call i32 @heap_ajust(i32* %arg0, i32 0, i32 %op35)
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
	ld.d $a1, $fp, -24
	addi.w $a0, $zero, 0
	ld.d $a2, $fp, -32
	bl heap_ajust
	st.w $a0, $fp, -316
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
# %op41 = sub i32 %op47, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a2, $t1
# br label %label25
	st.d $a1, $fp, -324
	ld.d $a2, $fp, -324
	b .heap_sort_label25
.heap_sort_label42:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b heap_sort_exit
heap_sort_exit:
	# epilog
	ld.d $ra, $sp, 328
	ld.d $fp, $sp, 320
	addi.d $sp, $sp, 336
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -352
	st.d $ra, $sp, 344
	st.d $fp, $sp, 336
	addi.d $fp, $sp, 352
.main_label_entry:
# %op0 = alloca [10 x i32]
	lu12i.w $t0, 0
	ori $t0, $t0, 344
	sub.d $a0,$fp,$t0
# store i32 10, i32* @n
	la.local $t1, n
	addi.w $t0, $zero, 10
	st.w $t0, $t1, 0
# %op1 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 4, i32* %op1
	addi.w $t0, $zero, 4
	st.w $t0, $a1, 0
# %op2 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 3, i32* %op2
	addi.w $t0, $zero, 3
	st.w $t0, $a1, 0
# %op3 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 9, i32* %op3
	addi.w $t0, $zero, 9
	st.w $t0, $a1, 0
# %op4 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 2, i32* %op4
	addi.w $t0, $zero, 2
	st.w $t0, $a1, 0
# %op5 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 0, i32* %op5
	addi.w $t0, $zero, 0
	st.w $t0, $a1, 0
# %op6 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 5
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 1, i32* %op6
	addi.w $t0, $zero, 1
	st.w $t0, $a1, 0
# %op7 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 6
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 6
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 6, i32* %op7
	addi.w $t0, $zero, 6
	st.w $t0, $a1, 0
# %op8 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 7
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 7
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 5, i32* %op8
	addi.w $t0, $zero, 5
	st.w $t0, $a1, 0
# %op9 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 8
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 8
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 7, i32* %op9
	addi.w $t0, $zero, 7
	st.w $t0, $a1, 0
# %op10 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 9
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 9
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# store i32 8, i32* %op10
	addi.w $t0, $zero, 8
	st.w $t0, $a1, 0
# %op12 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op13 = load i32, i32* @n
	la.local $t0, n
	ld.w $a2, $t0, 0
# %op14 = call i32 @heap_sort(i32* %op12, i32 %op13)
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
	ld.d $a1, $fp, -40
	bl heap_sort
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
# br label %label15
	st.d $a1, $fp, -352
	ld.d $a2, $fp, -352
	b .main_label15
.main_label15:
# %op30 = phi i32 [ %op14, %label_entry ], [ %op27, %label19 ]
# %op17 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op18 = icmp slt i32 %op30, %op17
	slt $a1,$a2,$a1
# br i1 %op18, label %label19, label %label28
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label19
	b .main_label28
.main_label19:
# %op22 = getelementptr [10 x i32], [10 x i32]* %op0, i32 0, i32 %op30
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	add.d $a1,$a0,$t0
# %op23 = load i32, i32* %op22
	ld.w $a1, $a1, 0
# call void @putint(i32 %op23)
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
# %op27 = add i32 %op30, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a2, $t1
# br label %label15
	st.d $a1, $fp, -352
	ld.d $a2, $fp, -352
	b .main_label15
.main_label28:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 344
	ld.d $fp, $sp, 336
	addi.d $sp, $sp, 352
	jr $ra
