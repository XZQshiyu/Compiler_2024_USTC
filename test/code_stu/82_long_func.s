# Global variables
	.text
	.data
	.globl SHIFT_TABLE
	.align 3
	.type SHIFT_TABLE, @object
	.size SHIFT_TABLE, 64
SHIFT_TABLE:
	.word 1
	.word 2
	.word 4
	.word 8
	.word 16
	.word 32
	.word 64
	.word 128
	.word 256
	.word 512
	.word 1024
	.word 2048
	.word 4096
	.word 8192
	.word 16384
	.word 32768
	.text
	.align 2
	.globl long_func
	.type long_func, @function
long_func:
	addi.d $sp, $sp, -1600
	st.d $ra, $sp, 1592
	st.d $fp, $sp, 1584
	addi.d $fp, $sp, 1600
.long_func_label_entry:
# br label %label8
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 2
	st.d $t0, $fp, -1584
	ld.d $a0, $fp, -1568
	ld.d $a1, $fp, -1576
	ld.d $a2, $fp, -1584
	b .long_func_label8
.long_func_label8:
# %op2949 = phi i32 [ 1, %label_entry ], [ %op2970, %label702 ]
# %op2950 = phi i32 [ 0, %label_entry ], [ %op3154, %label702 ]
# %op2951 = phi i32 [ 2, %label_entry ], [ %op3070, %label702 ]
# %op10 = icmp sgt i32 %op2950, 0
	addi.w $t1, $zero, 0
	slt $a3,$t1,$a1
# br i1 %op10, label %label11, label %label13
	addi.w $t0,$zero,0
	blt $t0,$a3,.long_func_label11
	b .long_func_label13
.long_func_label11:
# br label %label19
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1576
	st.d $a1, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $a3, $fp, -1568
	ld.d $a4, $fp, -1576
	ld.d $a5, $fp, -1584
	ld.d $a6, $fp, -1592
	b .long_func_label19
.long_func_label13:
# call void @putint(i32 %op2949)
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
# br label %label734
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 2
	st.d $t0, $fp, -1584
	ld.d $a0, $fp, -1568
	ld.d $a1, $fp, -1576
	ld.d $a2, $fp, -1584
	b .long_func_label734
.long_func_label19:
# %op2956 = phi i32 [ 1, %label11 ], [ %op40, %label36 ]
# %op2957 = phi i32 [ %op2950, %label11 ], [ %op38, %label36 ]
# %op2958 = phi i32 [ 0, %label11 ], [ %op42, %label36 ]
# %op2959 = phi i32 [ 0, %label11 ], [ %op2960, %label36 ]
# %op21 = icmp slt i32 %op2958, 16
	addi.w $t1, $zero, 16
	slt $a7,$a6,$t1
# br i1 %op21, label %label22, label %label26
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label22
	b .long_func_label26
.long_func_label22:
# %op24 = srem i32 %op2957, 2
	addi.w $t1, $zero, 2
	mod.w $a7, $a5, $t1
# %op25 = icmp ne i32 0, %op24
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $a7,$t0,$t8
# br i1 %op25, label %label43, label %label36
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label43
	or $t2, $zero, $a3
	b .long_func_label36
.long_func_label26:
# %op28 = icmp ne i32 0, %op2959
	addi.w $t0, $zero, 0
	slt $t8,$a3,$t0
	slt $t0,$t0,$a3
	or $a3,$t0,$t8
# br i1 %op28, label %label47, label %label53
	addi.w $t0,$zero,0
	blt $t0,$a3,.long_func_label47
	or $a4, $zero, $a0
	b .long_func_label53
.long_func_label29:
# %op32 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op2958
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op33 = load i32, i32* %op32
	ld.w $a7, $a7, 0
# %op34 = mul i32 1, %op33
	addi.w $t0, $zero, 1
	mul.w $a7, $t0, $a7
# %op35 = add i32 %op2959, %op34
	add.w $a7, $a3, $a7
# br label %label36
	st.d $a7, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label36
.long_func_label36:
# %op2960 = phi i32 [ %op2959, %label22 ], [ %op2959, %label43 ], [ %op35, %label29 ]
# %op38 = sdiv i32 %op2957, 2
	addi.w $t1, $zero, 2
	div.w $a7, $a5, $t1
# %op40 = sdiv i32 %op2956, 2
	addi.w $t1, $zero, 2
	div.w $t3, $a4, $t1
# %op42 = add i32 %op2958, 1
	addi.w $t1, $zero, 1
	add.w $t4, $a6, $t1
# br label %label19
	st.d $t2, $fp, -1568
	st.d $t3, $fp, -1576
	st.d $a7, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $a3, $fp, -1568
	ld.d $a4, $fp, -1576
	ld.d $a5, $fp, -1584
	ld.d $a6, $fp, -1592
	b .long_func_label19
.long_func_label43:
# %op45 = srem i32 %op2956, 2
	addi.w $t1, $zero, 2
	mod.w $a7, $a4, $t1
# %op46 = icmp ne i32 0, %op45
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $a7,$t0,$t8
# br i1 %op46, label %label29, label %label36
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label29
	or $t2, $zero, $a3
	b .long_func_label36
.long_func_label47:
# br label %label59
	st.d $a0, $fp, -1568
	st.d $a2, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	ld.d $a3, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	b .long_func_label59
.long_func_label53:
# %op2970 = phi i32 [ %op2949, %label26 ], [ %op2981, %label64 ]
# br label %label376
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $a2, $fp, -1576
	st.d $a2, $fp, -1584
	ld.d $a3, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	b .long_func_label376
.long_func_label59:
# %op2981 = phi i32 [ 0, %label47 ], [ %op2996, %label344 ]
# %op2982 = phi i32 [ %op2951, %label47 ], [ %op3058, %label344 ]
# %op2983 = phi i32 [ %op2949, %label47 ], [ %op3031, %label344 ]
# %op61 = icmp ne i32 0, %op2982
	addi.w $t0, $zero, 0
	slt $t8,$a5,$t0
	slt $t0,$t0,$a5
	or $a7,$t0,$t8
# br i1 %op61, label %label62, label %label64
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label62
	b .long_func_label64
.long_func_label62:
# br label %label67
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $a5, $fp, -1592
	ld.d $a7, $fp, -1568
	ld.d $t2, $fp, -1576
	ld.d $t3, $fp, -1584
	ld.d $t4, $fp, -1592
	b .long_func_label67
.long_func_label64:
# br label %label53
	st.d $a6, $fp, -1568
	ld.d $a4, $fp, -1568
	b .long_func_label53
.long_func_label67:
# %op2988 = phi i32 [ 1, %label62 ], [ %op88, %label84 ]
# %op2989 = phi i32 [ %op2982, %label62 ], [ %op86, %label84 ]
# %op2990 = phi i32 [ 0, %label62 ], [ %op90, %label84 ]
# %op2991 = phi i32 [ 0, %label62 ], [ %op2992, %label84 ]
# %op69 = icmp slt i32 %op2990, 16
	addi.w $t1, $zero, 16
	slt $t5,$t3,$t1
# br i1 %op69, label %label70, label %label74
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label70
	b .long_func_label74
.long_func_label70:
# %op72 = srem i32 %op2989, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t4, $t1
# %op73 = icmp ne i32 0, %op72
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op73, label %label91, label %label84
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label91
	or $t6, $zero, $a7
	b .long_func_label84
.long_func_label74:
# %op76 = icmp ne i32 0, %op2991
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $a7,$t0,$t8
# br i1 %op76, label %label95, label %label101
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label95
	or $t2, $zero, $a6
	b .long_func_label101
.long_func_label77:
# %op80 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op2990
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op81 = load i32, i32* %op80
	ld.w $t5, $t5, 0
# %op82 = mul i32 1, %op81
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op83 = add i32 %op2991, %op82
	add.w $t5, $a7, $t5
# br label %label84
	st.d $t5, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label84
.long_func_label84:
# %op2992 = phi i32 [ %op2991, %label70 ], [ %op2991, %label91 ], [ %op83, %label77 ]
# %op86 = sdiv i32 %op2989, 2
	addi.w $t1, $zero, 2
	div.w $t5, $t4, $t1
# %op88 = sdiv i32 %op2988, 2
	addi.w $t1, $zero, 2
	div.w $t7, $t2, $t1
# %op90 = add i32 %op2990, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t3, $t1
	st.w $t0, $fp, -308
# br label %label67
	st.d $t6, $fp, -1568
	st.d $t7, $fp, -1576
	ld.w $t0, $fp, -308
	st.d $t0, $fp, -1584
	st.d $t5, $fp, -1592
	ld.d $a7, $fp, -1568
	ld.d $t2, $fp, -1576
	ld.d $t3, $fp, -1584
	ld.d $t4, $fp, -1592
	b .long_func_label67
.long_func_label91:
# %op93 = srem i32 %op2988, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t2, $t1
# %op94 = icmp ne i32 0, %op93
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op94, label %label77, label %label84
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label77
	or $t6, $zero, $a7
	b .long_func_label84
.long_func_label95:
# br label %label107
	st.d $a3, $fp, -1568
	st.d $a6, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label107
.long_func_label101:
# %op2996 = phi i32 [ %op2981, %label74 ], [ %op3003, %label113 ]
# br label %label221
	st.d $a3, $fp, -1568
	st.d $a3, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label221
.long_func_label107:
# %op3002 = phi i32 [ %op2983, %label95 ], [ %op3023, %label192 ]
# %op3003 = phi i32 [ %op2981, %label95 ], [ %op3011, %label192 ]
# %op109 = icmp ne i32 0, %op3002
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t4,$t0,$t8
# br i1 %op109, label %label110, label %label113
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label110
	b .long_func_label113
.long_func_label110:
# br label %label116
	st.d $a7, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t3, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -312
	ld.d $t5, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -316
	ld.d $t7, $fp, -1592
	b .long_func_label116
.long_func_label113:
# br label %label101
	st.d $t3, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label101
.long_func_label116:
# %op3008 = phi i32 [ %op3002, %label110 ], [ %op139, %label135 ]
# %op3009 = phi i32 [ %op3003, %label110 ], [ %op137, %label135 ]
# %op3010 = phi i32 [ 0, %label110 ], [ %op141, %label135 ]
# %op3011 = phi i32 [ 0, %label110 ], [ %op3012, %label135 ]
# %op118 = icmp slt i32 %op3010, 16
	ld.w $t0, $fp, -316
	addi.w $t1, $zero, 16
	slt $t4,$t0,$t1
# br i1 %op118, label %label119, label %label123
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label119
	b .long_func_label123
.long_func_label119:
# %op121 = srem i32 %op3009, 2
	addi.w $t1, $zero, 2
	mod.w $t4, $t7, $t1
# %op122 = icmp ne i32 0, %op121
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op122, label %label127, label %label131
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label127
	b .long_func_label131
.long_func_label123:
# br label %label158
	st.d $a7, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $t3, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -336
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -340
	b .long_func_label158
.long_func_label127:
# %op129 = srem i32 %op3008, 2
	ld.w $t0, $fp, -312
	addi.w $t1, $zero, 2
	mod.w $t4, $t0, $t1
# %op130 = icmp eq i32 %op129, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t4
	slt $t0,$t4,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t4,$t8,$t0
# br i1 %op130, label %label142, label %label149
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label142
	or $t0, $zero, $t5
	st.w $t0, $fp, -328
	b .long_func_label149
.long_func_label131:
# %op133 = srem i32 %op3008, 2
	ld.w $t0, $fp, -312
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op134 = icmp ne i32 0, %op133
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op134, label %label150, label %label157
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label150
	or $t0, $zero, $t5
	st.w $t0, $fp, -332
	b .long_func_label157
.long_func_label135:
# %op3012 = phi i32 [ %op3013, %label149 ], [ %op3014, %label157 ]
# %op137 = sdiv i32 %op3009, 2
	addi.w $t1, $zero, 2
	div.w $t6, $t7, $t1
# %op139 = sdiv i32 %op3008, 2
	ld.w $t0, $fp, -312
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -320
# %op141 = add i32 %op3010, 1
	ld.w $t0, $fp, -316
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -324
# br label %label116
	ld.w $t0, $fp, -320
	st.d $t0, $fp, -1568
	st.d $t4, $fp, -1576
	ld.w $t0, $fp, -324
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -312
	ld.d $t5, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -316
	ld.d $t7, $fp, -1592
	b .long_func_label116
.long_func_label142:
# %op145 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3010
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -316
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op146 = load i32, i32* %op145
	ld.w $t4, $t4, 0
# %op147 = mul i32 1, %op146
	addi.w $t0, $zero, 1
	mul.w $t4, $t0, $t4
# %op148 = add i32 %op3011, %op147
	add.w $t4, $t5, $t4
# br label %label149
	st.d $t4, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -328
	b .long_func_label149
.long_func_label149:
# %op3013 = phi i32 [ %op3011, %label127 ], [ %op148, %label142 ]
# br label %label135
	ld.w $t0, $fp, -328
	st.d $t0, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label135
.long_func_label150:
# %op153 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3010
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -316
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op154 = load i32, i32* %op153
	ld.w $t6, $t6, 0
# %op155 = mul i32 1, %op154
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op156 = add i32 %op3011, %op155
	add.w $t6, $t5, $t6
# br label %label157
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -332
	b .long_func_label157
.long_func_label157:
# %op3014 = phi i32 [ %op3011, %label131 ], [ %op156, %label150 ]
# br label %label135
	ld.w $t0, $fp, -332
	st.d $t0, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label135
.long_func_label158:
# %op3015 = phi i32 [ %op3002, %label123 ], [ %op179, %label175 ]
# %op3016 = phi i32 [ %op3003, %label123 ], [ %op177, %label175 ]
# %op3017 = phi i32 [ 0, %label123 ], [ %op181, %label175 ]
# %op3018 = phi i32 [ 0, %label123 ], [ %op3019, %label175 ]
# %op160 = icmp slt i32 %op3017, 16
	addi.w $t1, $zero, 16
	slt $t4,$t6,$t1
# br i1 %op160, label %label161, label %label165
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label161
	b .long_func_label165
.long_func_label161:
# %op163 = srem i32 %op3016, 2
	addi.w $t1, $zero, 2
	mod.w $t4, $t7, $t1
# %op164 = icmp ne i32 0, %op163
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op164, label %label182, label %label175
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label182
	ld.w $t0, $fp, -340
	or $t0, $zero, $t0
	st.w $t0, $fp, -344
	b .long_func_label175
.long_func_label165:
# br label %label187
	b .long_func_label187
.long_func_label168:
# %op171 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3017
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op172 = load i32, i32* %op171
	ld.w $t4, $t4, 0
# %op173 = mul i32 1, %op172
	addi.w $t0, $zero, 1
	mul.w $t4, $t0, $t4
# %op174 = add i32 %op3018, %op173
	ld.w $t0, $fp, -340
	add.w $t4, $t0, $t4
# br label %label175
	st.d $t4, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -344
	b .long_func_label175
.long_func_label175:
# %op3019 = phi i32 [ %op3018, %label161 ], [ %op3018, %label182 ], [ %op174, %label168 ]
# %op177 = sdiv i32 %op3016, 2
	addi.w $t1, $zero, 2
	div.w $t4, $t7, $t1
# %op179 = sdiv i32 %op3015, 2
	ld.w $t0, $fp, -336
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -348
# %op181 = add i32 %op3017, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t6, $t1
	st.w $t0, $fp, -352
# br label %label158
	ld.w $t0, $fp, -348
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -352
	st.d $t0, $fp, -1576
	st.d $t4, $fp, -1584
	ld.w $t0, $fp, -344
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -336
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -340
	b .long_func_label158
.long_func_label182:
# %op184 = srem i32 %op3015, 2
	ld.w $t0, $fp, -336
	addi.w $t1, $zero, 2
	mod.w $t4, $t0, $t1
# %op185 = icmp ne i32 0, %op184
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op185, label %label168, label %label175
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label168
	ld.w $t0, $fp, -340
	or $t0, $zero, $t0
	st.w $t0, $fp, -344
	b .long_func_label175
.long_func_label187:
# %op189 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op190 = load i32, i32* %op189
	ld.w $t4, $t4, 0
# %op191 = mul i32 %op3018, %op190
	ld.w $t0, $fp, -340
	mul.w $t4, $t0, $t4
# br label %label195
	st.d $t4, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -356
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -360
	b .long_func_label195
.long_func_label192:
# %op3023 = phi i32 [ 0, %label186 ], [ %op3027, %label202 ]
# br label %label107
	st.d $t4, $fp, -1568
	st.d $t5, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label107
.long_func_label195:
# %op3024 = phi i32 [ 65535, %label187 ], [ %op214, %label210 ]
# %op3025 = phi i32 [ %op191, %label187 ], [ %op212, %label210 ]
# %op3026 = phi i32 [ 0, %label187 ], [ %op216, %label210 ]
# %op3027 = phi i32 [ 0, %label187 ], [ %op3028, %label210 ]
# %op197 = icmp slt i32 %op3026, 16
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 16
	slt $t4,$t0,$t1
# br i1 %op197, label %label198, label %label202
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label198
	b .long_func_label202
.long_func_label198:
# %op200 = srem i32 %op3025, 2
	addi.w $t1, $zero, 2
	mod.w $t4, $t6, $t1
# %op201 = icmp ne i32 0, %op200
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op201, label %label217, label %label210
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label217
	or $t0, $zero, $t7
	st.w $t0, $fp, -364
	b .long_func_label210
.long_func_label202:
# br label %label192
	st.d $t7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label192
.long_func_label203:
# %op206 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3026
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -360
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op207 = load i32, i32* %op206
	ld.w $t4, $t4, 0
# %op208 = mul i32 1, %op207
	addi.w $t0, $zero, 1
	mul.w $t4, $t0, $t4
# %op209 = add i32 %op3027, %op208
	add.w $t4, $t7, $t4
# br label %label210
	st.d $t4, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -364
	b .long_func_label210
.long_func_label210:
# %op3028 = phi i32 [ %op3027, %label198 ], [ %op3027, %label217 ], [ %op209, %label203 ]
# %op212 = sdiv i32 %op3025, 2
	addi.w $t1, $zero, 2
	div.w $t4, $t6, $t1
# %op214 = sdiv i32 %op3024, 2
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -368
# %op216 = add i32 %op3026, 1
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -372
# br label %label195
	st.d $t4, $fp, -1568
	ld.w $t0, $fp, -364
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -368
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -372
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -356
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -360
	b .long_func_label195
.long_func_label217:
# %op219 = srem i32 %op3024, 2
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 2
	mod.w $t4, $t0, $t1
# %op220 = icmp ne i32 0, %op219
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op220, label %label203, label %label210
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label203
	or $t0, $zero, $t7
	st.w $t0, $fp, -364
	b .long_func_label210
.long_func_label221:
# %op3030 = phi i32 [ %op2983, %label101 ], [ %op3051, %label309 ]
# %op3031 = phi i32 [ %op2983, %label101 ], [ %op3039, %label309 ]
# %op223 = icmp ne i32 0, %op3030
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t4,$t0,$t8
# br i1 %op223, label %label224, label %label227
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label224
	b .long_func_label227
.long_func_label224:
# br label %label233
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t3, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -380
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -376
	ld.d $t7, $fp, -1592
	b .long_func_label233
.long_func_label227:
# br label %label341
	b .long_func_label341
.long_func_label233:
# %op3036 = phi i32 [ %op3030, %label224 ], [ %op256, %label252 ]
# %op3037 = phi i32 [ %op3031, %label224 ], [ %op254, %label252 ]
# %op3038 = phi i32 [ 0, %label224 ], [ %op258, %label252 ]
# %op3039 = phi i32 [ 0, %label224 ], [ %op3040, %label252 ]
# %op235 = icmp slt i32 %op3038, 16
	addi.w $t1, $zero, 16
	slt $t5,$t7,$t1
# br i1 %op235, label %label236, label %label240
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label236
	b .long_func_label240
.long_func_label236:
# %op238 = srem i32 %op3037, 2
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op239 = icmp ne i32 0, %op238
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op239, label %label244, label %label248
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label244
	b .long_func_label248
.long_func_label240:
# br label %label275
	st.d $t3, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $a7, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -404
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -400
	b .long_func_label275
.long_func_label244:
# %op246 = srem i32 %op3036, 2
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op247 = icmp eq i32 %op246, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t5
	slt $t0,$t5,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op247, label %label259, label %label266
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label259
	or $t0, $zero, $t4
	st.w $t0, $fp, -392
	b .long_func_label266
.long_func_label248:
# %op250 = srem i32 %op3036, 2
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op251 = icmp ne i32 0, %op250
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op251, label %label267, label %label274
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label267
	or $t0, $zero, $t4
	st.w $t0, $fp, -396
	b .long_func_label274
.long_func_label252:
# %op3040 = phi i32 [ %op3041, %label266 ], [ %op3042, %label274 ]
# %op254 = sdiv i32 %op3037, 2
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op256 = sdiv i32 %op3036, 2
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -384
# %op258 = add i32 %op3038, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -388
# br label %label233
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	ld.w $t0, $fp, -384
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -388
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -380
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -376
	ld.d $t7, $fp, -1592
	b .long_func_label233
.long_func_label259:
# %op262 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3038
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op263 = load i32, i32* %op262
	ld.w $t5, $t5, 0
# %op264 = mul i32 1, %op263
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op265 = add i32 %op3039, %op264
	add.w $t5, $t4, $t5
# br label %label266
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -392
	b .long_func_label266
.long_func_label266:
# %op3041 = phi i32 [ %op3039, %label244 ], [ %op265, %label259 ]
# br label %label252
	ld.w $t0, $fp, -392
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label252
.long_func_label267:
# %op270 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3038
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op271 = load i32, i32* %op270
	ld.w $t6, $t6, 0
# %op272 = mul i32 1, %op271
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op273 = add i32 %op3039, %op272
	add.w $t6, $t4, $t6
# br label %label274
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -396
	b .long_func_label274
.long_func_label274:
# %op3042 = phi i32 [ %op3039, %label248 ], [ %op273, %label267 ]
# br label %label252
	ld.w $t0, $fp, -396
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label252
.long_func_label275:
# %op3043 = phi i32 [ %op3030, %label240 ], [ %op296, %label292 ]
# %op3044 = phi i32 [ %op3031, %label240 ], [ %op294, %label292 ]
# %op3045 = phi i32 [ 0, %label240 ], [ %op298, %label292 ]
# %op3046 = phi i32 [ 0, %label240 ], [ %op3047, %label292 ]
# %op277 = icmp slt i32 %op3045, 16
	addi.w $t1, $zero, 16
	slt $t5,$t7,$t1
# br i1 %op277, label %label278, label %label282
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label278
	b .long_func_label282
.long_func_label278:
# %op280 = srem i32 %op3044, 2
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op281 = icmp ne i32 0, %op280
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op281, label %label299, label %label292
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label299
	or $t0, $zero, $t6
	st.w $t0, $fp, -408
	b .long_func_label292
.long_func_label282:
# br label %label304
	b .long_func_label304
.long_func_label285:
# %op288 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3045
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op289 = load i32, i32* %op288
	ld.w $t5, $t5, 0
# %op290 = mul i32 1, %op289
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op291 = add i32 %op3046, %op290
	add.w $t5, $t6, $t5
# br label %label292
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -408
	b .long_func_label292
.long_func_label292:
# %op3047 = phi i32 [ %op3046, %label278 ], [ %op3046, %label299 ], [ %op291, %label285 ]
# %op294 = sdiv i32 %op3044, 2
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, 2
	div.w $t5, $t0, $t1
# %op296 = sdiv i32 %op3043, 2
	ld.w $t0, $fp, -400
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -412
# %op298 = add i32 %op3045, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -416
# br label %label275
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -408
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -416
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -412
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -404
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -400
	b .long_func_label275
.long_func_label299:
# %op301 = srem i32 %op3043, 2
	ld.w $t0, $fp, -400
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op302 = icmp ne i32 0, %op301
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op302, label %label285, label %label292
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label285
	or $t0, $zero, $t6
	st.w $t0, $fp, -408
	b .long_func_label292
.long_func_label304:
# %op306 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op307 = load i32, i32* %op306
	ld.w $t5, $t5, 0
# %op308 = mul i32 %op3046, %op307
	mul.w $t5, $t6, $t5
# br label %label312
	st.d $t5, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -424
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -420
	b .long_func_label312
.long_func_label309:
# %op3051 = phi i32 [ 0, %label303 ], [ %op3055, %label319 ]
# br label %label221
	st.d $t5, $fp, -1568
	st.d $t4, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label221
.long_func_label312:
# %op3052 = phi i32 [ 65535, %label304 ], [ %op331, %label327 ]
# %op3053 = phi i32 [ %op308, %label304 ], [ %op329, %label327 ]
# %op3054 = phi i32 [ 0, %label304 ], [ %op333, %label327 ]
# %op3055 = phi i32 [ 0, %label304 ], [ %op3056, %label327 ]
# %op314 = icmp slt i32 %op3054, 16
	ld.w $t0, $fp, -424
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op314, label %label315, label %label319
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label315
	b .long_func_label319
.long_func_label315:
# %op317 = srem i32 %op3053, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t6, $t1
# %op318 = icmp ne i32 0, %op317
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op318, label %label334, label %label327
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label334
	or $t0, $zero, $t7
	st.w $t0, $fp, -428
	b .long_func_label327
.long_func_label319:
# br label %label309
	st.d $t7, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label309
.long_func_label320:
# %op323 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3054
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -424
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op324 = load i32, i32* %op323
	ld.w $t5, $t5, 0
# %op325 = mul i32 1, %op324
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op326 = add i32 %op3055, %op325
	add.w $t5, $t7, $t5
# br label %label327
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -428
	b .long_func_label327
.long_func_label327:
# %op3056 = phi i32 [ %op3055, %label315 ], [ %op3055, %label334 ], [ %op326, %label320 ]
# %op329 = sdiv i32 %op3053, 2
	addi.w $t1, $zero, 2
	div.w $t5, $t6, $t1
# %op331 = sdiv i32 %op3052, 2
	ld.w $t0, $fp, -420
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -432
# %op333 = add i32 %op3054, 1
	ld.w $t0, $fp, -424
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -436
# br label %label312
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -428
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -436
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -432
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -424
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -420
	b .long_func_label312
.long_func_label334:
# %op336 = srem i32 %op3052, 2
	ld.w $t0, $fp, -420
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op337 = icmp ne i32 0, %op336
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op337, label %label320, label %label327
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label320
	or $t0, $zero, $t7
	st.w $t0, $fp, -428
	b .long_func_label327
.long_func_label341:
# br label %label349
	b .long_func_label349
.long_func_label344:
# %op3058 = phi i32 [ %op3059, %label348 ], [ %op3061, %label354 ]
# br label %label59
	st.d $t3, $fp, -1568
	st.d $t4, $fp, -1576
	st.d $t2, $fp, -1584
	ld.d $a3, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	b .long_func_label59
.long_func_label349:
# %op351 = icmp sgt i32 %op2982, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $a7,$t1,$a5
# br i1 %op351, label %label355, label %label369
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label355
	b .long_func_label369
.long_func_label354:
# %op3061 = phi i32 [ %op3063, %label375 ], [ %op2982, %label352 ]
# br label %label344
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label344
.long_func_label355:
# %op358 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op359 = load i32, i32* %op358
	ld.w $a7, $a7, 0
# %op360 = sdiv i32 %op2982, %op359
	div.w $a7, $a5, $a7
# %op362 = add i32 %op360, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $a7, $a7, $t1
# %op366 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op367 = load i32, i32* %op366
	ld.w $t4, $t4, 0
# %op368 = sub i32 %op362, %op367
	sub.w $a7, $a7, $t4
# br label %label375
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label375
.long_func_label369:
# %op372 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op373 = load i32, i32* %op372
	ld.w $a7, $a7, 0
# %op374 = sdiv i32 %op2982, %op373
	div.w $a7, $a5, $a7
# br label %label375
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label375
.long_func_label375:
# %op3063 = phi i32 [ %op368, %label355 ], [ %op374, %label369 ]
# br label %label354
	st.d $t4, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label354
.long_func_label376:
# %op3070 = phi i32 [ 0, %label53 ], [ %op3085, %label664 ]
# %op3071 = phi i32 [ %op2951, %label53 ], [ %op3147, %label664 ]
# %op3072 = phi i32 [ %op2951, %label53 ], [ %op3120, %label664 ]
# %op378 = icmp ne i32 0, %op3071
	addi.w $t0, $zero, 0
	slt $t8,$a5,$t0
	slt $t0,$t0,$a5
	or $a7,$t0,$t8
# br i1 %op378, label %label379, label %label381
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label379
	b .long_func_label381
.long_func_label379:
# br label %label387
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $a5, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1592
	ld.d $a7, $fp, -1568
	ld.d $t2, $fp, -1576
	ld.d $t3, $fp, -1584
	ld.d $t4, $fp, -1592
	b .long_func_label387
.long_func_label381:
# br label %label699
	b .long_func_label699
.long_func_label387:
# %op3077 = phi i32 [ 1, %label379 ], [ %op408, %label404 ]
# %op3078 = phi i32 [ %op3071, %label379 ], [ %op406, %label404 ]
# %op3079 = phi i32 [ 0, %label379 ], [ %op410, %label404 ]
# %op3080 = phi i32 [ 0, %label379 ], [ %op3081, %label404 ]
# %op389 = icmp slt i32 %op3079, 16
	addi.w $t1, $zero, 16
	slt $t5,$t3,$t1
# br i1 %op389, label %label390, label %label394
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label390
	b .long_func_label394
.long_func_label390:
# %op392 = srem i32 %op3078, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t2, $t1
# %op393 = icmp ne i32 0, %op392
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op393, label %label411, label %label404
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label411
	or $t6, $zero, $a7
	b .long_func_label404
.long_func_label394:
# %op396 = icmp ne i32 0, %op3080
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $a7,$t0,$t8
# br i1 %op396, label %label415, label %label421
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label415
	or $t2, $zero, $a3
	b .long_func_label421
.long_func_label397:
# %op400 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3079
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op401 = load i32, i32* %op400
	ld.w $t5, $t5, 0
# %op402 = mul i32 1, %op401
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op403 = add i32 %op3080, %op402
	add.w $t5, $a7, $t5
# br label %label404
	st.d $t5, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label404
.long_func_label404:
# %op3081 = phi i32 [ %op3080, %label390 ], [ %op3080, %label411 ], [ %op403, %label397 ]
# %op406 = sdiv i32 %op3078, 2
	addi.w $t1, $zero, 2
	div.w $t5, $t2, $t1
# %op408 = sdiv i32 %op3077, 2
	addi.w $t1, $zero, 2
	div.w $t7, $t4, $t1
# %op410 = add i32 %op3079, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t3, $t1
	st.w $t0, $fp, -448
# br label %label387
	st.d $t6, $fp, -1568
	st.d $t5, $fp, -1576
	ld.w $t0, $fp, -448
	st.d $t0, $fp, -1584
	st.d $t7, $fp, -1592
	ld.d $a7, $fp, -1568
	ld.d $t2, $fp, -1576
	ld.d $t3, $fp, -1584
	ld.d $t4, $fp, -1592
	b .long_func_label387
.long_func_label411:
# %op413 = srem i32 %op3077, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t4, $t1
# %op414 = icmp ne i32 0, %op413
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op414, label %label397, label %label404
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label397
	or $t6, $zero, $a7
	b .long_func_label404
.long_func_label415:
# br label %label427
	st.d $a6, $fp, -1568
	st.d $a3, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label427
.long_func_label421:
# %op3085 = phi i32 [ %op3070, %label394 ], [ %op3092, %label433 ]
# br label %label541
	st.d $a6, $fp, -1568
	st.d $a6, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label541
.long_func_label427:
# %op3091 = phi i32 [ %op3072, %label415 ], [ %op3112, %label512 ]
# %op3092 = phi i32 [ %op3070, %label415 ], [ %op3100, %label512 ]
# %op429 = icmp ne i32 0, %op3091
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t4,$t0,$t8
# br i1 %op429, label %label430, label %label433
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label430
	b .long_func_label433
.long_func_label430:
# br label %label436
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t3, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -456
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -452
	ld.d $t7, $fp, -1592
	b .long_func_label436
.long_func_label433:
# br label %label421
	st.d $t3, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label421
.long_func_label436:
# %op3097 = phi i32 [ %op3091, %label430 ], [ %op459, %label455 ]
# %op3098 = phi i32 [ %op3092, %label430 ], [ %op457, %label455 ]
# %op3099 = phi i32 [ 0, %label430 ], [ %op461, %label455 ]
# %op3100 = phi i32 [ 0, %label430 ], [ %op3101, %label455 ]
# %op438 = icmp slt i32 %op3099, 16
	addi.w $t1, $zero, 16
	slt $t5,$t7,$t1
# br i1 %op438, label %label439, label %label443
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label439
	b .long_func_label443
.long_func_label439:
# %op441 = srem i32 %op3098, 2
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op442 = icmp ne i32 0, %op441
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op442, label %label447, label %label451
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label447
	b .long_func_label451
.long_func_label443:
# br label %label478
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t3, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -476
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -480
	b .long_func_label478
.long_func_label447:
# %op449 = srem i32 %op3097, 2
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op450 = icmp eq i32 %op449, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t5
	slt $t0,$t5,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op450, label %label462, label %label469
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label462
	or $t0, $zero, $t4
	st.w $t0, $fp, -468
	b .long_func_label469
.long_func_label451:
# %op453 = srem i32 %op3097, 2
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op454 = icmp ne i32 0, %op453
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op454, label %label470, label %label477
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label470
	or $t0, $zero, $t4
	st.w $t0, $fp, -472
	b .long_func_label477
.long_func_label455:
# %op3101 = phi i32 [ %op3102, %label469 ], [ %op3103, %label477 ]
# %op457 = sdiv i32 %op3098, 2
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op459 = sdiv i32 %op3097, 2
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -460
# %op461 = add i32 %op3099, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -464
# br label %label436
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	ld.w $t0, $fp, -460
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -464
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -456
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -452
	ld.d $t7, $fp, -1592
	b .long_func_label436
.long_func_label462:
# %op465 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3099
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op466 = load i32, i32* %op465
	ld.w $t5, $t5, 0
# %op467 = mul i32 1, %op466
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op468 = add i32 %op3100, %op467
	add.w $t5, $t4, $t5
# br label %label469
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -468
	b .long_func_label469
.long_func_label469:
# %op3102 = phi i32 [ %op3100, %label447 ], [ %op468, %label462 ]
# br label %label455
	ld.w $t0, $fp, -468
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label455
.long_func_label470:
# %op473 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3099
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op474 = load i32, i32* %op473
	ld.w $t6, $t6, 0
# %op475 = mul i32 1, %op474
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op476 = add i32 %op3100, %op475
	add.w $t6, $t4, $t6
# br label %label477
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -472
	b .long_func_label477
.long_func_label477:
# %op3103 = phi i32 [ %op3100, %label451 ], [ %op476, %label470 ]
# br label %label455
	ld.w $t0, $fp, -472
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label455
.long_func_label478:
# %op3104 = phi i32 [ %op3091, %label443 ], [ %op499, %label495 ]
# %op3105 = phi i32 [ %op3092, %label443 ], [ %op497, %label495 ]
# %op3106 = phi i32 [ 0, %label443 ], [ %op501, %label495 ]
# %op3107 = phi i32 [ 0, %label443 ], [ %op3108, %label495 ]
# %op480 = icmp slt i32 %op3106, 16
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op480, label %label481, label %label485
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label481
	b .long_func_label485
.long_func_label481:
# %op483 = srem i32 %op3105, 2
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op484 = icmp ne i32 0, %op483
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op484, label %label502, label %label495
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label502
	or $t0, $zero, $t5
	st.w $t0, $fp, -484
	b .long_func_label495
.long_func_label485:
# br label %label507
	b .long_func_label507
.long_func_label488:
# %op491 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3106
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -480
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op492 = load i32, i32* %op491
	ld.w $t6, $t6, 0
# %op493 = mul i32 1, %op492
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op494 = add i32 %op3107, %op493
	add.w $t6, $t5, $t6
# br label %label495
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -484
	b .long_func_label495
.long_func_label495:
# %op3108 = phi i32 [ %op3107, %label481 ], [ %op3107, %label502 ], [ %op494, %label488 ]
# %op497 = sdiv i32 %op3105, 2
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op499 = sdiv i32 %op3104, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -488
# %op501 = add i32 %op3106, 1
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -492
# br label %label478
	ld.w $t0, $fp, -484
	st.d $t0, $fp, -1568
	st.d $t6, $fp, -1576
	ld.w $t0, $fp, -488
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -492
	st.d $t0, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -476
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -480
	b .long_func_label478
.long_func_label502:
# %op504 = srem i32 %op3104, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t7, $t1
# %op505 = icmp ne i32 0, %op504
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op505, label %label488, label %label495
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label488
	or $t0, $zero, $t5
	st.w $t0, $fp, -484
	b .long_func_label495
.long_func_label507:
# %op509 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op510 = load i32, i32* %op509
	ld.w $t6, $t6, 0
# %op511 = mul i32 %op3107, %op510
	mul.w $t5, $t5, $t6
# br label %label515
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t5, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -500
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -496
	b .long_func_label515
.long_func_label512:
# %op3112 = phi i32 [ 0, %label506 ], [ %op3116, %label522 ]
# br label %label427
	st.d $t5, $fp, -1568
	st.d $t4, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label427
.long_func_label515:
# %op3113 = phi i32 [ 65535, %label507 ], [ %op534, %label530 ]
# %op3114 = phi i32 [ %op511, %label507 ], [ %op532, %label530 ]
# %op3115 = phi i32 [ 0, %label507 ], [ %op536, %label530 ]
# %op3116 = phi i32 [ 0, %label507 ], [ %op3117, %label530 ]
# %op517 = icmp slt i32 %op3115, 16
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op517, label %label518, label %label522
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label518
	b .long_func_label522
.long_func_label518:
# %op520 = srem i32 %op3114, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t7, $t1
# %op521 = icmp ne i32 0, %op520
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op521, label %label537, label %label530
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label537
	or $t0, $zero, $t6
	st.w $t0, $fp, -504
	b .long_func_label530
.long_func_label522:
# br label %label512
	st.d $t6, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label512
.long_func_label523:
# %op526 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3115
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -500
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op527 = load i32, i32* %op526
	ld.w $t5, $t5, 0
# %op528 = mul i32 1, %op527
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op529 = add i32 %op3116, %op528
	add.w $t5, $t6, $t5
# br label %label530
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -504
	b .long_func_label530
.long_func_label530:
# %op3117 = phi i32 [ %op3116, %label518 ], [ %op3116, %label537 ], [ %op529, %label523 ]
# %op532 = sdiv i32 %op3114, 2
	addi.w $t1, $zero, 2
	div.w $t5, $t7, $t1
# %op534 = sdiv i32 %op3113, 2
	ld.w $t0, $fp, -496
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -508
# %op536 = add i32 %op3115, 1
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -512
# br label %label515
	ld.w $t0, $fp, -504
	st.d $t0, $fp, -1568
	st.d $t5, $fp, -1576
	ld.w $t0, $fp, -512
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -508
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -500
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -496
	b .long_func_label515
.long_func_label537:
# %op539 = srem i32 %op3113, 2
	ld.w $t0, $fp, -496
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op540 = icmp ne i32 0, %op539
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op540, label %label523, label %label530
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label523
	or $t0, $zero, $t6
	st.w $t0, $fp, -504
	b .long_func_label530
.long_func_label541:
# %op3119 = phi i32 [ %op3072, %label421 ], [ %op3140, %label629 ]
# %op3120 = phi i32 [ %op3072, %label421 ], [ %op3128, %label629 ]
# %op543 = icmp ne i32 0, %op3119
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t4,$t0,$t8
# br i1 %op543, label %label544, label %label547
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label544
	b .long_func_label547
.long_func_label544:
# br label %label553
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t3, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $a7, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -516
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -520
	ld.d $t7, $fp, -1592
	b .long_func_label553
.long_func_label547:
# br label %label661
	b .long_func_label661
.long_func_label553:
# %op3125 = phi i32 [ %op3119, %label544 ], [ %op576, %label572 ]
# %op3126 = phi i32 [ %op3120, %label544 ], [ %op574, %label572 ]
# %op3127 = phi i32 [ 0, %label544 ], [ %op578, %label572 ]
# %op3128 = phi i32 [ 0, %label544 ], [ %op3129, %label572 ]
# %op555 = icmp slt i32 %op3127, 16
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op555, label %label556, label %label560
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label556
	b .long_func_label560
.long_func_label556:
# %op558 = srem i32 %op3126, 2
	ld.w $t0, $fp, -516
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op559 = icmp ne i32 0, %op558
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op559, label %label564, label %label568
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label564
	b .long_func_label568
.long_func_label560:
# br label %label595
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t3, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $a7, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -544
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -540
	b .long_func_label595
.long_func_label564:
# %op566 = srem i32 %op3125, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t7, $t1
# %op567 = icmp eq i32 %op566, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t5
	slt $t0,$t5,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op567, label %label579, label %label586
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label579
	or $t0, $zero, $t4
	st.w $t0, $fp, -532
	b .long_func_label586
.long_func_label568:
# %op570 = srem i32 %op3125, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t7, $t1
# %op571 = icmp ne i32 0, %op570
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op571, label %label587, label %label594
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label587
	or $t0, $zero, $t4
	st.w $t0, $fp, -536
	b .long_func_label594
.long_func_label572:
# %op3129 = phi i32 [ %op3130, %label586 ], [ %op3131, %label594 ]
# %op574 = sdiv i32 %op3126, 2
	ld.w $t0, $fp, -516
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op576 = sdiv i32 %op3125, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -524
# %op578 = add i32 %op3127, 1
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -528
# br label %label553
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	ld.w $t0, $fp, -528
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -524
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -516
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -520
	ld.d $t7, $fp, -1592
	b .long_func_label553
.long_func_label579:
# %op582 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3127
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -520
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op583 = load i32, i32* %op582
	ld.w $t5, $t5, 0
# %op584 = mul i32 1, %op583
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op585 = add i32 %op3128, %op584
	add.w $t5, $t4, $t5
# br label %label586
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -532
	b .long_func_label586
.long_func_label586:
# %op3130 = phi i32 [ %op3128, %label564 ], [ %op585, %label579 ]
# br label %label572
	ld.w $t0, $fp, -532
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label572
.long_func_label587:
# %op590 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3127
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -520
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op591 = load i32, i32* %op590
	ld.w $t6, $t6, 0
# %op592 = mul i32 1, %op591
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op593 = add i32 %op3128, %op592
	add.w $t6, $t4, $t6
# br label %label594
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -536
	b .long_func_label594
.long_func_label594:
# %op3131 = phi i32 [ %op3128, %label568 ], [ %op593, %label587 ]
# br label %label572
	ld.w $t0, $fp, -536
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label572
.long_func_label595:
# %op3132 = phi i32 [ %op3119, %label560 ], [ %op616, %label612 ]
# %op3133 = phi i32 [ %op3120, %label560 ], [ %op614, %label612 ]
# %op3134 = phi i32 [ 0, %label560 ], [ %op618, %label612 ]
# %op3135 = phi i32 [ 0, %label560 ], [ %op3136, %label612 ]
# %op597 = icmp slt i32 %op3134, 16
	addi.w $t1, $zero, 16
	slt $t6,$t7,$t1
# br i1 %op597, label %label598, label %label602
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label598
	b .long_func_label602
.long_func_label598:
# %op600 = srem i32 %op3133, 2
	ld.w $t0, $fp, -544
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op601 = icmp ne i32 0, %op600
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op601, label %label619, label %label612
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label619
	or $t0, $zero, $t5
	st.w $t0, $fp, -548
	b .long_func_label612
.long_func_label602:
# br label %label624
	b .long_func_label624
.long_func_label605:
# %op608 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3134
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op609 = load i32, i32* %op608
	ld.w $t6, $t6, 0
# %op610 = mul i32 1, %op609
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op611 = add i32 %op3135, %op610
	add.w $t6, $t5, $t6
# br label %label612
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -548
	b .long_func_label612
.long_func_label612:
# %op3136 = phi i32 [ %op3135, %label598 ], [ %op3135, %label619 ], [ %op611, %label605 ]
# %op614 = sdiv i32 %op3133, 2
	ld.w $t0, $fp, -544
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op616 = sdiv i32 %op3132, 2
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -552
# %op618 = add i32 %op3134, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -556
# br label %label595
	ld.w $t0, $fp, -548
	st.d $t0, $fp, -1568
	st.d $t6, $fp, -1576
	ld.w $t0, $fp, -556
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -552
	st.d $t0, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -544
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -540
	b .long_func_label595
.long_func_label619:
# %op621 = srem i32 %op3132, 2
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op622 = icmp ne i32 0, %op621
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op622, label %label605, label %label612
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label605
	or $t0, $zero, $t5
	st.w $t0, $fp, -548
	b .long_func_label612
.long_func_label624:
# %op626 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op627 = load i32, i32* %op626
	ld.w $t6, $t6, 0
# %op628 = mul i32 %op3135, %op627
	mul.w $t5, $t5, $t6
# br label %label632
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t5, $fp, -1576
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -560
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -564
	b .long_func_label632
.long_func_label629:
# %op3140 = phi i32 [ 0, %label623 ], [ %op3144, %label639 ]
# br label %label541
	st.d $t5, $fp, -1568
	st.d $t4, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label541
.long_func_label632:
# %op3141 = phi i32 [ 65535, %label624 ], [ %op651, %label647 ]
# %op3142 = phi i32 [ %op628, %label624 ], [ %op649, %label647 ]
# %op3143 = phi i32 [ 0, %label624 ], [ %op653, %label647 ]
# %op3144 = phi i32 [ 0, %label624 ], [ %op3145, %label647 ]
# %op634 = icmp slt i32 %op3143, 16
	ld.w $t0, $fp, -564
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op634, label %label635, label %label639
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label635
	b .long_func_label639
.long_func_label635:
# %op637 = srem i32 %op3142, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t7, $t1
# %op638 = icmp ne i32 0, %op637
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op638, label %label654, label %label647
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label654
	or $t0, $zero, $t6
	st.w $t0, $fp, -568
	b .long_func_label647
.long_func_label639:
# br label %label629
	st.d $t6, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label629
.long_func_label640:
# %op643 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3143
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -564
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op644 = load i32, i32* %op643
	ld.w $t5, $t5, 0
# %op645 = mul i32 1, %op644
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op646 = add i32 %op3144, %op645
	add.w $t5, $t6, $t5
# br label %label647
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -568
	b .long_func_label647
.long_func_label647:
# %op3145 = phi i32 [ %op3144, %label635 ], [ %op3144, %label654 ], [ %op646, %label640 ]
# %op649 = sdiv i32 %op3142, 2
	addi.w $t1, $zero, 2
	div.w $t5, $t7, $t1
# %op651 = sdiv i32 %op3141, 2
	ld.w $t0, $fp, -560
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -572
# %op653 = add i32 %op3143, 1
	ld.w $t0, $fp, -564
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -576
# br label %label632
	ld.w $t0, $fp, -568
	st.d $t0, $fp, -1568
	st.d $t5, $fp, -1576
	ld.w $t0, $fp, -572
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -576
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -560
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -564
	b .long_func_label632
.long_func_label654:
# %op656 = srem i32 %op3141, 2
	ld.w $t0, $fp, -560
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op657 = icmp ne i32 0, %op656
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op657, label %label640, label %label647
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label640
	or $t0, $zero, $t6
	st.w $t0, $fp, -568
	b .long_func_label647
.long_func_label661:
# br label %label669
	b .long_func_label669
.long_func_label664:
# %op3147 = phi i32 [ %op3148, %label668 ], [ %op3150, %label674 ]
# br label %label376
	st.d $t2, $fp, -1568
	st.d $t4, $fp, -1576
	st.d $t3, $fp, -1584
	ld.d $a3, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	b .long_func_label376
.long_func_label669:
# %op671 = icmp sgt i32 %op3071, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $a7,$t1,$a5
# br i1 %op671, label %label675, label %label689
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label675
	b .long_func_label689
.long_func_label674:
# %op3150 = phi i32 [ %op3152, %label695 ], [ %op3071, %label672 ]
# br label %label664
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label664
.long_func_label675:
# %op678 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op679 = load i32, i32* %op678
	ld.w $a7, $a7, 0
# %op680 = sdiv i32 %op3071, %op679
	div.w $a7, $a5, $a7
# %op682 = add i32 %op680, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $a7, $a7, $t1
# %op686 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op687 = load i32, i32* %op686
	ld.w $t4, $t4, 0
# %op688 = sub i32 %op682, %op687
	sub.w $a7, $a7, $t4
# br label %label695
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label695
.long_func_label689:
# %op692 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op693 = load i32, i32* %op692
	ld.w $a7, $a7, 0
# %op694 = sdiv i32 %op3071, %op693
	div.w $a7, $a5, $a7
# br label %label695
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label695
.long_func_label695:
# %op3152 = phi i32 [ %op688, %label675 ], [ %op694, %label689 ]
# br label %label674
	st.d $t4, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label674
.long_func_label699:
# br label %label707
	b .long_func_label707
.long_func_label702:
# %op3154 = phi i32 [ %op3155, %label706 ], [ %op3157, %label712 ]
# br label %label8
	st.d $a4, $fp, -1568
	st.d $a6, $fp, -1576
	st.d $a3, $fp, -1584
	ld.d $a0, $fp, -1568
	ld.d $a1, $fp, -1576
	ld.d $a2, $fp, -1584
	b .long_func_label8
.long_func_label707:
# %op709 = icmp sgt i32 %op2950, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $a5,$t1,$a1
# br i1 %op709, label %label713, label %label727
	addi.w $t0,$zero,0
	blt $t0,$a5,.long_func_label713
	b .long_func_label727
.long_func_label712:
# %op3157 = phi i32 [ %op3159, %label733 ], [ %op2950, %label710 ]
# br label %label702
	st.d $a5, $fp, -1568
	ld.d $a6, $fp, -1568
	b .long_func_label702
.long_func_label713:
# %op716 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a5,$t1,$t0
# %op717 = load i32, i32* %op716
	ld.w $a5, $a5, 0
# %op718 = sdiv i32 %op2950, %op717
	div.w $a5, $a1, $a5
# %op720 = add i32 %op718, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $a5, $a5, $t1
# %op724 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a6,$t1,$t0
# %op725 = load i32, i32* %op724
	ld.w $a6, $a6, 0
# %op726 = sub i32 %op720, %op725
	sub.w $a5, $a5, $a6
# br label %label733
	st.d $a5, $fp, -1568
	ld.d $a6, $fp, -1568
	b .long_func_label733
.long_func_label727:
# %op730 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a5,$t1,$t0
# %op731 = load i32, i32* %op730
	ld.w $a5, $a5, 0
# %op732 = sdiv i32 %op2950, %op731
	div.w $a5, $a1, $a5
# br label %label733
	st.d $a5, $fp, -1568
	ld.d $a6, $fp, -1568
	b .long_func_label733
.long_func_label733:
# %op3159 = phi i32 [ %op726, %label713 ], [ %op732, %label727 ]
# br label %label712
	st.d $a6, $fp, -1568
	ld.d $a5, $fp, -1568
	b .long_func_label712
.long_func_label734:
# %op3178 = phi i32 [ 1, %label13 ], [ %op3199, %label1425 ]
# %op3179 = phi i32 [ 1, %label13 ], [ %op3383, %label1425 ]
# %op3180 = phi i32 [ 2, %label13 ], [ %op3299, %label1425 ]
# %op736 = icmp sgt i32 %op3179, 0
	addi.w $t1, $zero, 0
	slt $a3,$t1,$a1
# br i1 %op736, label %label737, label %label739
	addi.w $t0,$zero,0
	blt $t0,$a3,.long_func_label737
	b .long_func_label739
.long_func_label737:
# br label %label742
	st.d $a1, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $a3, $fp, -1568
	ld.d $a4, $fp, -1576
	ld.d $a5, $fp, -1584
	ld.d $a6, $fp, -1592
	b .long_func_label742
.long_func_label739:
# call void @putint(i32 %op3178)
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
# br label %label1457
	addi.w $t0, $zero, 2
	st.d $t0, $fp, -1568
	ld.d $a0, $fp, -1568
	b .long_func_label1457
.long_func_label742:
# %op3185 = phi i32 [ 1, %label737 ], [ %op763, %label759 ]
# %op3186 = phi i32 [ %op3179, %label737 ], [ %op761, %label759 ]
# %op3187 = phi i32 [ 0, %label737 ], [ %op765, %label759 ]
# %op3188 = phi i32 [ 0, %label737 ], [ %op3189, %label759 ]
# %op744 = icmp slt i32 %op3187, 16
	addi.w $t1, $zero, 16
	slt $a7,$a6,$t1
# br i1 %op744, label %label745, label %label749
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label745
	b .long_func_label749
.long_func_label745:
# %op747 = srem i32 %op3186, 2
	addi.w $t1, $zero, 2
	mod.w $a7, $a3, $t1
# %op748 = icmp ne i32 0, %op747
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $a7,$t0,$t8
# br i1 %op748, label %label766, label %label759
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label766
	or $t2, $zero, $a4
	b .long_func_label759
.long_func_label749:
# %op751 = icmp ne i32 0, %op3188
	addi.w $t0, $zero, 0
	slt $t8,$a4,$t0
	slt $t0,$t0,$a4
	or $a3,$t0,$t8
# br i1 %op751, label %label770, label %label776
	addi.w $t0,$zero,0
	blt $t0,$a3,.long_func_label770
	or $a4, $zero, $a0
	b .long_func_label776
.long_func_label752:
# %op755 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3187
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op756 = load i32, i32* %op755
	ld.w $a7, $a7, 0
# %op757 = mul i32 1, %op756
	addi.w $t0, $zero, 1
	mul.w $a7, $t0, $a7
# %op758 = add i32 %op3188, %op757
	add.w $a7, $a4, $a7
# br label %label759
	st.d $a7, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label759
.long_func_label759:
# %op3189 = phi i32 [ %op3188, %label745 ], [ %op3188, %label766 ], [ %op758, %label752 ]
# %op761 = sdiv i32 %op3186, 2
	addi.w $t1, $zero, 2
	div.w $a7, $a3, $t1
# %op763 = sdiv i32 %op3185, 2
	addi.w $t1, $zero, 2
	div.w $t3, $a5, $t1
# %op765 = add i32 %op3187, 1
	addi.w $t1, $zero, 1
	add.w $t4, $a6, $t1
# br label %label742
	st.d $a7, $fp, -1568
	st.d $t2, $fp, -1576
	st.d $t3, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $a3, $fp, -1568
	ld.d $a4, $fp, -1576
	ld.d $a5, $fp, -1584
	ld.d $a6, $fp, -1592
	b .long_func_label742
.long_func_label766:
# %op768 = srem i32 %op3185, 2
	addi.w $t1, $zero, 2
	mod.w $a7, $a5, $t1
# %op769 = icmp ne i32 0, %op768
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $a7,$t0,$t8
# br i1 %op769, label %label752, label %label759
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label752
	or $t2, $zero, $a4
	b .long_func_label759
.long_func_label770:
# br label %label782
	st.d $a0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $a2, $fp, -1584
	ld.d $a3, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	b .long_func_label782
.long_func_label776:
# %op3199 = phi i32 [ %op3178, %label749 ], [ %op3210, %label787 ]
# br label %label1099
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $a2, $fp, -1576
	st.d $a2, $fp, -1584
	ld.d $a3, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	b .long_func_label1099
.long_func_label782:
# %op3210 = phi i32 [ 0, %label770 ], [ %op3225, %label1067 ]
# %op3211 = phi i32 [ %op3180, %label770 ], [ %op3287, %label1067 ]
# %op3212 = phi i32 [ %op3178, %label770 ], [ %op3260, %label1067 ]
# %op784 = icmp ne i32 0, %op3211
	addi.w $t0, $zero, 0
	slt $t8,$a6,$t0
	slt $t0,$t0,$a6
	or $a7,$t0,$t8
# br i1 %op784, label %label785, label %label787
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label785
	b .long_func_label787
.long_func_label785:
# br label %label790
	st.d $a6, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $a7, $fp, -1568
	ld.d $t2, $fp, -1576
	ld.d $t3, $fp, -1584
	ld.d $t4, $fp, -1592
	b .long_func_label790
.long_func_label787:
# br label %label776
	st.d $a5, $fp, -1568
	ld.d $a4, $fp, -1568
	b .long_func_label776
.long_func_label790:
# %op3217 = phi i32 [ 1, %label785 ], [ %op811, %label807 ]
# %op3218 = phi i32 [ %op3211, %label785 ], [ %op809, %label807 ]
# %op3219 = phi i32 [ 0, %label785 ], [ %op813, %label807 ]
# %op3220 = phi i32 [ 0, %label785 ], [ %op3221, %label807 ]
# %op792 = icmp slt i32 %op3219, 16
	addi.w $t1, $zero, 16
	slt $t5,$t4,$t1
# br i1 %op792, label %label793, label %label797
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label793
	b .long_func_label797
.long_func_label793:
# %op795 = srem i32 %op3218, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $a7, $t1
# %op796 = icmp ne i32 0, %op795
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op796, label %label814, label %label807
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label814
	or $t6, $zero, $t2
	b .long_func_label807
.long_func_label797:
# %op799 = icmp ne i32 0, %op3220
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $a7,$t0,$t8
# br i1 %op799, label %label818, label %label824
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label818
	or $t2, $zero, $a5
	b .long_func_label824
.long_func_label800:
# %op803 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3219
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op804 = load i32, i32* %op803
	ld.w $t5, $t5, 0
# %op805 = mul i32 1, %op804
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op806 = add i32 %op3220, %op805
	add.w $t5, $t2, $t5
# br label %label807
	st.d $t5, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label807
.long_func_label807:
# %op3221 = phi i32 [ %op3220, %label793 ], [ %op3220, %label814 ], [ %op806, %label800 ]
# %op809 = sdiv i32 %op3218, 2
	addi.w $t1, $zero, 2
	div.w $t5, $a7, $t1
# %op811 = sdiv i32 %op3217, 2
	addi.w $t1, $zero, 2
	div.w $t7, $t3, $t1
# %op813 = add i32 %op3219, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t4, $t1
	st.w $t0, $fp, -596
# br label %label790
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	st.d $t7, $fp, -1584
	ld.w $t0, $fp, -596
	st.d $t0, $fp, -1592
	ld.d $a7, $fp, -1568
	ld.d $t2, $fp, -1576
	ld.d $t3, $fp, -1584
	ld.d $t4, $fp, -1592
	b .long_func_label790
.long_func_label814:
# %op816 = srem i32 %op3217, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t3, $t1
# %op817 = icmp ne i32 0, %op816
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op817, label %label800, label %label807
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label800
	or $t6, $zero, $t2
	b .long_func_label807
.long_func_label818:
# br label %label830
	st.d $a3, $fp, -1568
	st.d $a5, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label830
.long_func_label824:
# %op3225 = phi i32 [ %op3210, %label797 ], [ %op3232, %label836 ]
# br label %label944
	st.d $a3, $fp, -1568
	st.d $a3, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label944
.long_func_label830:
# %op3231 = phi i32 [ %op3212, %label818 ], [ %op3252, %label915 ]
# %op3232 = phi i32 [ %op3210, %label818 ], [ %op3240, %label915 ]
# %op832 = icmp ne i32 0, %op3231
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t4,$t0,$t8
# br i1 %op832, label %label833, label %label836
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label833
	b .long_func_label836
.long_func_label833:
# br label %label839
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t3, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -604
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -600
	ld.d $t7, $fp, -1592
	b .long_func_label839
.long_func_label836:
# br label %label824
	st.d $t3, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label824
.long_func_label839:
# %op3237 = phi i32 [ %op3231, %label833 ], [ %op862, %label858 ]
# %op3238 = phi i32 [ %op3232, %label833 ], [ %op860, %label858 ]
# %op3239 = phi i32 [ 0, %label833 ], [ %op864, %label858 ]
# %op3240 = phi i32 [ 0, %label833 ], [ %op3241, %label858 ]
# %op841 = icmp slt i32 %op3239, 16
	addi.w $t1, $zero, 16
	slt $t5,$t7,$t1
# br i1 %op841, label %label842, label %label846
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label842
	b .long_func_label846
.long_func_label842:
# %op844 = srem i32 %op3238, 2
	ld.w $t0, $fp, -604
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op845 = icmp ne i32 0, %op844
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op845, label %label850, label %label854
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label850
	b .long_func_label854
.long_func_label846:
# br label %label881
	st.d $t3, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -624
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -628
	b .long_func_label881
.long_func_label850:
# %op852 = srem i32 %op3237, 2
	ld.w $t0, $fp, -600
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op853 = icmp eq i32 %op852, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t5
	slt $t0,$t5,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op853, label %label865, label %label872
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label865
	or $t0, $zero, $t4
	st.w $t0, $fp, -616
	b .long_func_label872
.long_func_label854:
# %op856 = srem i32 %op3237, 2
	ld.w $t0, $fp, -600
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op857 = icmp ne i32 0, %op856
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op857, label %label873, label %label880
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label873
	or $t0, $zero, $t4
	st.w $t0, $fp, -620
	b .long_func_label880
.long_func_label858:
# %op3241 = phi i32 [ %op3242, %label872 ], [ %op3243, %label880 ]
# %op860 = sdiv i32 %op3238, 2
	ld.w $t0, $fp, -604
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op862 = sdiv i32 %op3237, 2
	ld.w $t0, $fp, -600
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -608
# %op864 = add i32 %op3239, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -612
# br label %label839
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	ld.w $t0, $fp, -608
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -612
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -604
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -600
	ld.d $t7, $fp, -1592
	b .long_func_label839
.long_func_label865:
# %op868 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3239
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op869 = load i32, i32* %op868
	ld.w $t5, $t5, 0
# %op870 = mul i32 1, %op869
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op871 = add i32 %op3240, %op870
	add.w $t5, $t4, $t5
# br label %label872
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -616
	b .long_func_label872
.long_func_label872:
# %op3242 = phi i32 [ %op3240, %label850 ], [ %op871, %label865 ]
# br label %label858
	ld.w $t0, $fp, -616
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label858
.long_func_label873:
# %op876 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3239
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op877 = load i32, i32* %op876
	ld.w $t6, $t6, 0
# %op878 = mul i32 1, %op877
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op879 = add i32 %op3240, %op878
	add.w $t6, $t4, $t6
# br label %label880
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -620
	b .long_func_label880
.long_func_label880:
# %op3243 = phi i32 [ %op3240, %label854 ], [ %op879, %label873 ]
# br label %label858
	ld.w $t0, $fp, -620
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label858
.long_func_label881:
# %op3244 = phi i32 [ %op3231, %label846 ], [ %op902, %label898 ]
# %op3245 = phi i32 [ %op3232, %label846 ], [ %op900, %label898 ]
# %op3246 = phi i32 [ 0, %label846 ], [ %op904, %label898 ]
# %op3247 = phi i32 [ 0, %label846 ], [ %op3248, %label898 ]
# %op883 = icmp slt i32 %op3246, 16
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op883, label %label884, label %label888
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label884
	b .long_func_label888
.long_func_label884:
# %op886 = srem i32 %op3245, 2
	ld.w $t0, $fp, -624
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op887 = icmp ne i32 0, %op886
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op887, label %label905, label %label898
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label905
	or $t0, $zero, $t6
	st.w $t0, $fp, -632
	b .long_func_label898
.long_func_label888:
# br label %label910
	b .long_func_label910
.long_func_label891:
# %op894 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3246
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -628
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op895 = load i32, i32* %op894
	ld.w $t5, $t5, 0
# %op896 = mul i32 1, %op895
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op897 = add i32 %op3247, %op896
	add.w $t5, $t6, $t5
# br label %label898
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -632
	b .long_func_label898
.long_func_label898:
# %op3248 = phi i32 [ %op3247, %label884 ], [ %op3247, %label905 ], [ %op897, %label891 ]
# %op900 = sdiv i32 %op3245, 2
	ld.w $t0, $fp, -624
	addi.w $t1, $zero, 2
	div.w $t5, $t0, $t1
# %op902 = sdiv i32 %op3244, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -636
# %op904 = add i32 %op3246, 1
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -640
# br label %label881
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -632
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -636
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -640
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -624
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -628
	b .long_func_label881
.long_func_label905:
# %op907 = srem i32 %op3244, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t7, $t1
# %op908 = icmp ne i32 0, %op907
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op908, label %label891, label %label898
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label891
	or $t0, $zero, $t6
	st.w $t0, $fp, -632
	b .long_func_label898
.long_func_label910:
# %op912 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op913 = load i32, i32* %op912
	ld.w $t5, $t5, 0
# %op914 = mul i32 %op3247, %op913
	mul.w $t5, $t6, $t5
# br label %label918
	st.d $t5, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -644
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -648
	b .long_func_label918
.long_func_label915:
# %op3252 = phi i32 [ 0, %label909 ], [ %op3256, %label925 ]
# br label %label830
	st.d $t5, $fp, -1568
	st.d $t4, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label830
.long_func_label918:
# %op3253 = phi i32 [ 65535, %label910 ], [ %op937, %label933 ]
# %op3254 = phi i32 [ %op914, %label910 ], [ %op935, %label933 ]
# %op3255 = phi i32 [ 0, %label910 ], [ %op939, %label933 ]
# %op3256 = phi i32 [ 0, %label910 ], [ %op3257, %label933 ]
# %op920 = icmp slt i32 %op3255, 16
	ld.w $t0, $fp, -648
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op920, label %label921, label %label925
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label921
	b .long_func_label925
.long_func_label921:
# %op923 = srem i32 %op3254, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t6, $t1
# %op924 = icmp ne i32 0, %op923
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op924, label %label940, label %label933
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label940
	or $t0, $zero, $t7
	st.w $t0, $fp, -652
	b .long_func_label933
.long_func_label925:
# br label %label915
	st.d $t7, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label915
.long_func_label926:
# %op929 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3255
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -648
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op930 = load i32, i32* %op929
	ld.w $t5, $t5, 0
# %op931 = mul i32 1, %op930
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op932 = add i32 %op3256, %op931
	add.w $t5, $t7, $t5
# br label %label933
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -652
	b .long_func_label933
.long_func_label933:
# %op3257 = phi i32 [ %op3256, %label921 ], [ %op3256, %label940 ], [ %op932, %label926 ]
# %op935 = sdiv i32 %op3254, 2
	addi.w $t1, $zero, 2
	div.w $t5, $t6, $t1
# %op937 = sdiv i32 %op3253, 2
	ld.w $t0, $fp, -644
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -656
# %op939 = add i32 %op3255, 1
	ld.w $t0, $fp, -648
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -660
# br label %label918
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -652
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -656
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -660
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -644
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -648
	b .long_func_label918
.long_func_label940:
# %op942 = srem i32 %op3253, 2
	ld.w $t0, $fp, -644
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op943 = icmp ne i32 0, %op942
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op943, label %label926, label %label933
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label926
	or $t0, $zero, $t7
	st.w $t0, $fp, -652
	b .long_func_label933
.long_func_label944:
# %op3259 = phi i32 [ %op3212, %label824 ], [ %op3280, %label1032 ]
# %op3260 = phi i32 [ %op3212, %label824 ], [ %op3268, %label1032 ]
# %op946 = icmp ne i32 0, %op3259
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t4,$t0,$t8
# br i1 %op946, label %label947, label %label950
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label947
	b .long_func_label950
.long_func_label947:
# br label %label956
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t3, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -668
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -664
	ld.d $t7, $fp, -1592
	b .long_func_label956
.long_func_label950:
# br label %label1064
	b .long_func_label1064
.long_func_label956:
# %op3265 = phi i32 [ %op3259, %label947 ], [ %op979, %label975 ]
# %op3266 = phi i32 [ %op3260, %label947 ], [ %op977, %label975 ]
# %op3267 = phi i32 [ 0, %label947 ], [ %op981, %label975 ]
# %op3268 = phi i32 [ 0, %label947 ], [ %op3269, %label975 ]
# %op958 = icmp slt i32 %op3267, 16
	addi.w $t1, $zero, 16
	slt $t5,$t7,$t1
# br i1 %op958, label %label959, label %label963
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label959
	b .long_func_label963
.long_func_label959:
# %op961 = srem i32 %op3266, 2
	ld.w $t0, $fp, -668
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op962 = icmp ne i32 0, %op961
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op962, label %label967, label %label971
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label967
	b .long_func_label971
.long_func_label963:
# br label %label998
	st.d $t3, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -688
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -692
	b .long_func_label998
.long_func_label967:
# %op969 = srem i32 %op3265, 2
	ld.w $t0, $fp, -664
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op970 = icmp eq i32 %op969, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t5
	slt $t0,$t5,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op970, label %label982, label %label989
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label982
	or $t0, $zero, $t4
	st.w $t0, $fp, -680
	b .long_func_label989
.long_func_label971:
# %op973 = srem i32 %op3265, 2
	ld.w $t0, $fp, -664
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op974 = icmp ne i32 0, %op973
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op974, label %label990, label %label997
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label990
	or $t0, $zero, $t4
	st.w $t0, $fp, -684
	b .long_func_label997
.long_func_label975:
# %op3269 = phi i32 [ %op3270, %label989 ], [ %op3271, %label997 ]
# %op977 = sdiv i32 %op3266, 2
	ld.w $t0, $fp, -668
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op979 = sdiv i32 %op3265, 2
	ld.w $t0, $fp, -664
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -672
# %op981 = add i32 %op3267, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -676
# br label %label956
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	ld.w $t0, $fp, -672
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -676
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -668
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -664
	ld.d $t7, $fp, -1592
	b .long_func_label956
.long_func_label982:
# %op985 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3267
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op986 = load i32, i32* %op985
	ld.w $t5, $t5, 0
# %op987 = mul i32 1, %op986
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op988 = add i32 %op3268, %op987
	add.w $t5, $t4, $t5
# br label %label989
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -680
	b .long_func_label989
.long_func_label989:
# %op3270 = phi i32 [ %op3268, %label967 ], [ %op988, %label982 ]
# br label %label975
	ld.w $t0, $fp, -680
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label975
.long_func_label990:
# %op993 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3267
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op994 = load i32, i32* %op993
	ld.w $t6, $t6, 0
# %op995 = mul i32 1, %op994
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op996 = add i32 %op3268, %op995
	add.w $t6, $t4, $t6
# br label %label997
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -684
	b .long_func_label997
.long_func_label997:
# %op3271 = phi i32 [ %op3268, %label971 ], [ %op996, %label990 ]
# br label %label975
	ld.w $t0, $fp, -684
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label975
.long_func_label998:
# %op3272 = phi i32 [ %op3259, %label963 ], [ %op1019, %label1015 ]
# %op3273 = phi i32 [ %op3260, %label963 ], [ %op1017, %label1015 ]
# %op3274 = phi i32 [ 0, %label963 ], [ %op1021, %label1015 ]
# %op3275 = phi i32 [ 0, %label963 ], [ %op3276, %label1015 ]
# %op1000 = icmp slt i32 %op3274, 16
	ld.w $t0, $fp, -692
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op1000, label %label1001, label %label1005
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1001
	b .long_func_label1005
.long_func_label1001:
# %op1003 = srem i32 %op3273, 2
	ld.w $t0, $fp, -688
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op1004 = icmp ne i32 0, %op1003
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1004, label %label1022, label %label1015
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1022
	or $t0, $zero, $t6
	st.w $t0, $fp, -696
	b .long_func_label1015
.long_func_label1005:
# br label %label1027
	b .long_func_label1027
.long_func_label1008:
# %op1011 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3274
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -692
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1012 = load i32, i32* %op1011
	ld.w $t5, $t5, 0
# %op1013 = mul i32 1, %op1012
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op1014 = add i32 %op3275, %op1013
	add.w $t5, $t6, $t5
# br label %label1015
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -696
	b .long_func_label1015
.long_func_label1015:
# %op3276 = phi i32 [ %op3275, %label1001 ], [ %op3275, %label1022 ], [ %op1014, %label1008 ]
# %op1017 = sdiv i32 %op3273, 2
	ld.w $t0, $fp, -688
	addi.w $t1, $zero, 2
	div.w $t5, $t0, $t1
# %op1019 = sdiv i32 %op3272, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -700
# %op1021 = add i32 %op3274, 1
	ld.w $t0, $fp, -692
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -704
# br label %label998
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -696
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -700
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -704
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -688
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -692
	b .long_func_label998
.long_func_label1022:
# %op1024 = srem i32 %op3272, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t7, $t1
# %op1025 = icmp ne i32 0, %op1024
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1025, label %label1008, label %label1015
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1008
	or $t0, $zero, $t6
	st.w $t0, $fp, -696
	b .long_func_label1015
.long_func_label1027:
# %op1029 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1030 = load i32, i32* %op1029
	ld.w $t5, $t5, 0
# %op1031 = mul i32 %op3275, %op1030
	mul.w $t5, $t6, $t5
# br label %label1035
	st.d $t5, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -708
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -712
	b .long_func_label1035
.long_func_label1032:
# %op3280 = phi i32 [ 0, %label1026 ], [ %op3284, %label1042 ]
# br label %label944
	st.d $t5, $fp, -1568
	st.d $t4, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label944
.long_func_label1035:
# %op3281 = phi i32 [ 65535, %label1027 ], [ %op1054, %label1050 ]
# %op3282 = phi i32 [ %op1031, %label1027 ], [ %op1052, %label1050 ]
# %op3283 = phi i32 [ 0, %label1027 ], [ %op1056, %label1050 ]
# %op3284 = phi i32 [ 0, %label1027 ], [ %op3285, %label1050 ]
# %op1037 = icmp slt i32 %op3283, 16
	ld.w $t0, $fp, -712
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op1037, label %label1038, label %label1042
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1038
	b .long_func_label1042
.long_func_label1038:
# %op1040 = srem i32 %op3282, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t6, $t1
# %op1041 = icmp ne i32 0, %op1040
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1041, label %label1057, label %label1050
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1057
	or $t0, $zero, $t7
	st.w $t0, $fp, -716
	b .long_func_label1050
.long_func_label1042:
# br label %label1032
	st.d $t7, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label1032
.long_func_label1043:
# %op1046 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3283
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -712
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1047 = load i32, i32* %op1046
	ld.w $t5, $t5, 0
# %op1048 = mul i32 1, %op1047
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op1049 = add i32 %op3284, %op1048
	add.w $t5, $t7, $t5
# br label %label1050
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -716
	b .long_func_label1050
.long_func_label1050:
# %op3285 = phi i32 [ %op3284, %label1038 ], [ %op3284, %label1057 ], [ %op1049, %label1043 ]
# %op1052 = sdiv i32 %op3282, 2
	addi.w $t1, $zero, 2
	div.w $t5, $t6, $t1
# %op1054 = sdiv i32 %op3281, 2
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -720
# %op1056 = add i32 %op3283, 1
	ld.w $t0, $fp, -712
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -724
# br label %label1035
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -716
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -720
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -724
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -708
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -712
	b .long_func_label1035
.long_func_label1057:
# %op1059 = srem i32 %op3281, 2
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op1060 = icmp ne i32 0, %op1059
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1060, label %label1043, label %label1050
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1043
	or $t0, $zero, $t7
	st.w $t0, $fp, -716
	b .long_func_label1050
.long_func_label1064:
# br label %label1072
	b .long_func_label1072
.long_func_label1067:
# %op3287 = phi i32 [ %op3288, %label1071 ], [ %op3290, %label1077 ]
# br label %label782
	st.d $t3, $fp, -1568
	st.d $t2, $fp, -1576
	st.d $t4, $fp, -1584
	ld.d $a3, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	b .long_func_label782
.long_func_label1072:
# %op1074 = icmp sgt i32 %op3211, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $a7,$t1,$a6
# br i1 %op1074, label %label1078, label %label1092
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label1078
	b .long_func_label1092
.long_func_label1077:
# %op3290 = phi i32 [ %op3292, %label1098 ], [ %op3211, %label1075 ]
# br label %label1067
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1067
.long_func_label1078:
# %op1081 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op1082 = load i32, i32* %op1081
	ld.w $a7, $a7, 0
# %op1083 = sdiv i32 %op3211, %op1082
	div.w $a7, $a6, $a7
# %op1085 = add i32 %op1083, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $a7, $a7, $t1
# %op1089 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op1090 = load i32, i32* %op1089
	ld.w $t4, $t4, 0
# %op1091 = sub i32 %op1085, %op1090
	sub.w $a7, $a7, $t4
# br label %label1098
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1098
.long_func_label1092:
# %op1095 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op1096 = load i32, i32* %op1095
	ld.w $a7, $a7, 0
# %op1097 = sdiv i32 %op3211, %op1096
	div.w $a7, $a6, $a7
# br label %label1098
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1098
.long_func_label1098:
# %op3292 = phi i32 [ %op1091, %label1078 ], [ %op1097, %label1092 ]
# br label %label1077
	st.d $t4, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label1077
.long_func_label1099:
# %op3299 = phi i32 [ 0, %label776 ], [ %op3314, %label1387 ]
# %op3300 = phi i32 [ %op3180, %label776 ], [ %op3376, %label1387 ]
# %op3301 = phi i32 [ %op3180, %label776 ], [ %op3349, %label1387 ]
# %op1101 = icmp ne i32 0, %op3300
	addi.w $t0, $zero, 0
	slt $t8,$a5,$t0
	slt $t0,$t0,$a5
	or $a7,$t0,$t8
# br i1 %op1101, label %label1102, label %label1104
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label1102
	b .long_func_label1104
.long_func_label1102:
# br label %label1110
	st.d $a5, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $a7, $fp, -1568
	ld.d $t2, $fp, -1576
	ld.d $t3, $fp, -1584
	ld.d $t4, $fp, -1592
	b .long_func_label1110
.long_func_label1104:
# br label %label1422
	b .long_func_label1422
.long_func_label1110:
# %op3306 = phi i32 [ 1, %label1102 ], [ %op1131, %label1127 ]
# %op3307 = phi i32 [ %op3300, %label1102 ], [ %op1129, %label1127 ]
# %op3308 = phi i32 [ 0, %label1102 ], [ %op1133, %label1127 ]
# %op3309 = phi i32 [ 0, %label1102 ], [ %op3310, %label1127 ]
# %op1112 = icmp slt i32 %op3308, 16
	addi.w $t1, $zero, 16
	slt $t5,$t4,$t1
# br i1 %op1112, label %label1113, label %label1117
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1113
	b .long_func_label1117
.long_func_label1113:
# %op1115 = srem i32 %op3307, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $a7, $t1
# %op1116 = icmp ne i32 0, %op1115
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1116, label %label1134, label %label1127
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1134
	or $t6, $zero, $t2
	b .long_func_label1127
.long_func_label1117:
# %op1119 = icmp ne i32 0, %op3309
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $a7,$t0,$t8
# br i1 %op1119, label %label1138, label %label1144
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label1138
	or $t2, $zero, $a3
	b .long_func_label1144
.long_func_label1120:
# %op1123 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3308
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1124 = load i32, i32* %op1123
	ld.w $t5, $t5, 0
# %op1125 = mul i32 1, %op1124
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op1126 = add i32 %op3309, %op1125
	add.w $t5, $t2, $t5
# br label %label1127
	st.d $t5, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1127
.long_func_label1127:
# %op3310 = phi i32 [ %op3309, %label1113 ], [ %op3309, %label1134 ], [ %op1126, %label1120 ]
# %op1129 = sdiv i32 %op3307, 2
	addi.w $t1, $zero, 2
	div.w $t5, $a7, $t1
# %op1131 = sdiv i32 %op3306, 2
	addi.w $t1, $zero, 2
	div.w $t7, $t3, $t1
# %op1133 = add i32 %op3308, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t4, $t1
	st.w $t0, $fp, -736
# br label %label1110
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	st.d $t7, $fp, -1584
	ld.w $t0, $fp, -736
	st.d $t0, $fp, -1592
	ld.d $a7, $fp, -1568
	ld.d $t2, $fp, -1576
	ld.d $t3, $fp, -1584
	ld.d $t4, $fp, -1592
	b .long_func_label1110
.long_func_label1134:
# %op1136 = srem i32 %op3306, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t3, $t1
# %op1137 = icmp ne i32 0, %op1136
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1137, label %label1120, label %label1127
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1120
	or $t6, $zero, $t2
	b .long_func_label1127
.long_func_label1138:
# br label %label1150
	st.d $a6, $fp, -1568
	st.d $a3, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label1150
.long_func_label1144:
# %op3314 = phi i32 [ %op3299, %label1117 ], [ %op3321, %label1156 ]
# br label %label1264
	st.d $a6, $fp, -1568
	st.d $a6, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label1264
.long_func_label1150:
# %op3320 = phi i32 [ %op3301, %label1138 ], [ %op3341, %label1235 ]
# %op3321 = phi i32 [ %op3299, %label1138 ], [ %op3329, %label1235 ]
# %op1152 = icmp ne i32 0, %op3320
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t4,$t0,$t8
# br i1 %op1152, label %label1153, label %label1156
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1153
	b .long_func_label1156
.long_func_label1153:
# br label %label1159
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t3, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -744
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -740
	ld.d $t7, $fp, -1592
	b .long_func_label1159
.long_func_label1156:
# br label %label1144
	st.d $t3, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label1144
.long_func_label1159:
# %op3326 = phi i32 [ %op3320, %label1153 ], [ %op1182, %label1178 ]
# %op3327 = phi i32 [ %op3321, %label1153 ], [ %op1180, %label1178 ]
# %op3328 = phi i32 [ 0, %label1153 ], [ %op1184, %label1178 ]
# %op3329 = phi i32 [ 0, %label1153 ], [ %op3330, %label1178 ]
# %op1161 = icmp slt i32 %op3328, 16
	addi.w $t1, $zero, 16
	slt $t5,$t7,$t1
# br i1 %op1161, label %label1162, label %label1166
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1162
	b .long_func_label1166
.long_func_label1162:
# %op1164 = srem i32 %op3327, 2
	ld.w $t0, $fp, -744
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op1165 = icmp ne i32 0, %op1164
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1165, label %label1170, label %label1174
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1170
	b .long_func_label1174
.long_func_label1166:
# br label %label1201
	st.d $t3, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -764
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -768
	b .long_func_label1201
.long_func_label1170:
# %op1172 = srem i32 %op3326, 2
	ld.w $t0, $fp, -740
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op1173 = icmp eq i32 %op1172, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t5
	slt $t0,$t5,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op1173, label %label1185, label %label1192
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1185
	or $t0, $zero, $t4
	st.w $t0, $fp, -756
	b .long_func_label1192
.long_func_label1174:
# %op1176 = srem i32 %op3326, 2
	ld.w $t0, $fp, -740
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1177 = icmp ne i32 0, %op1176
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1177, label %label1193, label %label1200
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1193
	or $t0, $zero, $t4
	st.w $t0, $fp, -760
	b .long_func_label1200
.long_func_label1178:
# %op3330 = phi i32 [ %op3331, %label1192 ], [ %op3332, %label1200 ]
# %op1180 = sdiv i32 %op3327, 2
	ld.w $t0, $fp, -744
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op1182 = sdiv i32 %op3326, 2
	ld.w $t0, $fp, -740
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -748
# %op1184 = add i32 %op3328, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -752
# br label %label1159
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	ld.w $t0, $fp, -748
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -752
	st.d $t0, $fp, -1592
	ld.d $t4, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -744
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -740
	ld.d $t7, $fp, -1592
	b .long_func_label1159
.long_func_label1185:
# %op1188 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3328
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1189 = load i32, i32* %op1188
	ld.w $t5, $t5, 0
# %op1190 = mul i32 1, %op1189
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op1191 = add i32 %op3329, %op1190
	add.w $t5, $t4, $t5
# br label %label1192
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -756
	b .long_func_label1192
.long_func_label1192:
# %op3331 = phi i32 [ %op3329, %label1170 ], [ %op1191, %label1185 ]
# br label %label1178
	ld.w $t0, $fp, -756
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label1178
.long_func_label1193:
# %op1196 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3328
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1197 = load i32, i32* %op1196
	ld.w $t6, $t6, 0
# %op1198 = mul i32 1, %op1197
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1199 = add i32 %op3329, %op1198
	add.w $t6, $t4, $t6
# br label %label1200
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -760
	b .long_func_label1200
.long_func_label1200:
# %op3332 = phi i32 [ %op3329, %label1174 ], [ %op1199, %label1193 ]
# br label %label1178
	ld.w $t0, $fp, -760
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label1178
.long_func_label1201:
# %op3333 = phi i32 [ %op3320, %label1166 ], [ %op1222, %label1218 ]
# %op3334 = phi i32 [ %op3321, %label1166 ], [ %op1220, %label1218 ]
# %op3335 = phi i32 [ 0, %label1166 ], [ %op1224, %label1218 ]
# %op3336 = phi i32 [ 0, %label1166 ], [ %op3337, %label1218 ]
# %op1203 = icmp slt i32 %op3335, 16
	ld.w $t0, $fp, -768
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op1203, label %label1204, label %label1208
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1204
	b .long_func_label1208
.long_func_label1204:
# %op1206 = srem i32 %op3334, 2
	ld.w $t0, $fp, -764
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op1207 = icmp ne i32 0, %op1206
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1207, label %label1225, label %label1218
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1225
	or $t0, $zero, $t6
	st.w $t0, $fp, -772
	b .long_func_label1218
.long_func_label1208:
# br label %label1230
	b .long_func_label1230
.long_func_label1211:
# %op1214 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3335
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -768
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1215 = load i32, i32* %op1214
	ld.w $t5, $t5, 0
# %op1216 = mul i32 1, %op1215
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op1217 = add i32 %op3336, %op1216
	add.w $t5, $t6, $t5
# br label %label1218
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -772
	b .long_func_label1218
.long_func_label1218:
# %op3337 = phi i32 [ %op3336, %label1204 ], [ %op3336, %label1225 ], [ %op1217, %label1211 ]
# %op1220 = sdiv i32 %op3334, 2
	ld.w $t0, $fp, -764
	addi.w $t1, $zero, 2
	div.w $t5, $t0, $t1
# %op1222 = sdiv i32 %op3333, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -776
# %op1224 = add i32 %op3335, 1
	ld.w $t0, $fp, -768
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -780
# br label %label1201
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -772
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -776
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -780
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -764
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -768
	b .long_func_label1201
.long_func_label1225:
# %op1227 = srem i32 %op3333, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t7, $t1
# %op1228 = icmp ne i32 0, %op1227
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1228, label %label1211, label %label1218
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1211
	or $t0, $zero, $t6
	st.w $t0, $fp, -772
	b .long_func_label1218
.long_func_label1230:
# %op1232 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1233 = load i32, i32* %op1232
	ld.w $t5, $t5, 0
# %op1234 = mul i32 %op3336, %op1233
	mul.w $t5, $t6, $t5
# br label %label1238
	st.d $t5, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -784
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -788
	b .long_func_label1238
.long_func_label1235:
# %op3341 = phi i32 [ 0, %label1229 ], [ %op3345, %label1245 ]
# br label %label1150
	st.d $t5, $fp, -1568
	st.d $t4, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label1150
.long_func_label1238:
# %op3342 = phi i32 [ 65535, %label1230 ], [ %op1257, %label1253 ]
# %op3343 = phi i32 [ %op1234, %label1230 ], [ %op1255, %label1253 ]
# %op3344 = phi i32 [ 0, %label1230 ], [ %op1259, %label1253 ]
# %op3345 = phi i32 [ 0, %label1230 ], [ %op3346, %label1253 ]
# %op1240 = icmp slt i32 %op3344, 16
	ld.w $t0, $fp, -788
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op1240, label %label1241, label %label1245
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1241
	b .long_func_label1245
.long_func_label1241:
# %op1243 = srem i32 %op3343, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t6, $t1
# %op1244 = icmp ne i32 0, %op1243
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1244, label %label1260, label %label1253
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1260
	or $t0, $zero, $t7
	st.w $t0, $fp, -792
	b .long_func_label1253
.long_func_label1245:
# br label %label1235
	st.d $t7, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label1235
.long_func_label1246:
# %op1249 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3344
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -788
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1250 = load i32, i32* %op1249
	ld.w $t5, $t5, 0
# %op1251 = mul i32 1, %op1250
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op1252 = add i32 %op3345, %op1251
	add.w $t5, $t7, $t5
# br label %label1253
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -792
	b .long_func_label1253
.long_func_label1253:
# %op3346 = phi i32 [ %op3345, %label1241 ], [ %op3345, %label1260 ], [ %op1252, %label1246 ]
# %op1255 = sdiv i32 %op3343, 2
	addi.w $t1, $zero, 2
	div.w $t5, $t6, $t1
# %op1257 = sdiv i32 %op3342, 2
	ld.w $t0, $fp, -784
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -796
# %op1259 = add i32 %op3344, 1
	ld.w $t0, $fp, -788
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -800
# br label %label1238
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -792
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -796
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -800
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -784
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -788
	b .long_func_label1238
.long_func_label1260:
# %op1262 = srem i32 %op3342, 2
	ld.w $t0, $fp, -784
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op1263 = icmp ne i32 0, %op1262
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op1263, label %label1246, label %label1253
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1246
	or $t0, $zero, $t7
	st.w $t0, $fp, -792
	b .long_func_label1253
.long_func_label1264:
# %op3348 = phi i32 [ %op3301, %label1144 ], [ %op3369, %label1352 ]
# %op3349 = phi i32 [ %op3301, %label1144 ], [ %op3357, %label1352 ]
# %op1266 = icmp ne i32 0, %op3348
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t4,$t0,$t8
# br i1 %op1266, label %label1267, label %label1270
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1267
	b .long_func_label1270
.long_func_label1267:
# br label %label1276
	st.d $t3, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -808
	ld.d $t5, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -804
	ld.d $t7, $fp, -1592
	b .long_func_label1276
.long_func_label1270:
# br label %label1384
	b .long_func_label1384
.long_func_label1276:
# %op3354 = phi i32 [ %op3348, %label1267 ], [ %op1299, %label1295 ]
# %op3355 = phi i32 [ %op3349, %label1267 ], [ %op1297, %label1295 ]
# %op3356 = phi i32 [ 0, %label1267 ], [ %op1301, %label1295 ]
# %op3357 = phi i32 [ 0, %label1267 ], [ %op3358, %label1295 ]
# %op1278 = icmp slt i32 %op3356, 16
	addi.w $t1, $zero, 16
	slt $t4,$t7,$t1
# br i1 %op1278, label %label1279, label %label1283
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1279
	b .long_func_label1283
.long_func_label1279:
# %op1281 = srem i32 %op3355, 2
	ld.w $t0, $fp, -808
	addi.w $t1, $zero, 2
	mod.w $t4, $t0, $t1
# %op1282 = icmp ne i32 0, %op1281
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op1282, label %label1287, label %label1291
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1287
	b .long_func_label1291
.long_func_label1283:
# br label %label1318
	st.d $t3, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $a7, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -828
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -832
	b .long_func_label1318
.long_func_label1287:
# %op1289 = srem i32 %op3354, 2
	ld.w $t0, $fp, -804
	addi.w $t1, $zero, 2
	mod.w $t4, $t0, $t1
# %op1290 = icmp eq i32 %op1289, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t4
	slt $t0,$t4,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t4,$t8,$t0
# br i1 %op1290, label %label1302, label %label1309
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1302
	or $t0, $zero, $t5
	st.w $t0, $fp, -820
	b .long_func_label1309
.long_func_label1291:
# %op1293 = srem i32 %op3354, 2
	ld.w $t0, $fp, -804
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1294 = icmp ne i32 0, %op1293
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1294, label %label1310, label %label1317
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1310
	or $t0, $zero, $t5
	st.w $t0, $fp, -824
	b .long_func_label1317
.long_func_label1295:
# %op3358 = phi i32 [ %op3359, %label1309 ], [ %op3360, %label1317 ]
# %op1297 = sdiv i32 %op3355, 2
	ld.w $t0, $fp, -808
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op1299 = sdiv i32 %op3354, 2
	ld.w $t0, $fp, -804
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -812
# %op1301 = add i32 %op3356, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -816
# br label %label1276
	st.d $t6, $fp, -1568
	st.d $t4, $fp, -1576
	ld.w $t0, $fp, -812
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -816
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -808
	ld.d $t5, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -804
	ld.d $t7, $fp, -1592
	b .long_func_label1276
.long_func_label1302:
# %op1305 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3356
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op1306 = load i32, i32* %op1305
	ld.w $t4, $t4, 0
# %op1307 = mul i32 1, %op1306
	addi.w $t0, $zero, 1
	mul.w $t4, $t0, $t4
# %op1308 = add i32 %op3357, %op1307
	add.w $t4, $t5, $t4
# br label %label1309
	st.d $t4, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -820
	b .long_func_label1309
.long_func_label1309:
# %op3359 = phi i32 [ %op3357, %label1287 ], [ %op1308, %label1302 ]
# br label %label1295
	ld.w $t0, $fp, -820
	st.d $t0, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1295
.long_func_label1310:
# %op1313 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3356
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1314 = load i32, i32* %op1313
	ld.w $t6, $t6, 0
# %op1315 = mul i32 1, %op1314
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1316 = add i32 %op3357, %op1315
	add.w $t6, $t5, $t6
# br label %label1317
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -824
	b .long_func_label1317
.long_func_label1317:
# %op3360 = phi i32 [ %op3357, %label1291 ], [ %op1316, %label1310 ]
# br label %label1295
	ld.w $t0, $fp, -824
	st.d $t0, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1295
.long_func_label1318:
# %op3361 = phi i32 [ %op3348, %label1283 ], [ %op1339, %label1335 ]
# %op3362 = phi i32 [ %op3349, %label1283 ], [ %op1337, %label1335 ]
# %op3363 = phi i32 [ 0, %label1283 ], [ %op1341, %label1335 ]
# %op3364 = phi i32 [ 0, %label1283 ], [ %op3365, %label1335 ]
# %op1320 = icmp slt i32 %op3363, 16
	ld.w $t0, $fp, -832
	addi.w $t1, $zero, 16
	slt $t4,$t0,$t1
# br i1 %op1320, label %label1321, label %label1325
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1321
	b .long_func_label1325
.long_func_label1321:
# %op1323 = srem i32 %op3362, 2
	ld.w $t0, $fp, -828
	addi.w $t1, $zero, 2
	mod.w $t4, $t0, $t1
# %op1324 = icmp ne i32 0, %op1323
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op1324, label %label1342, label %label1335
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1342
	or $t0, $zero, $t6
	st.w $t0, $fp, -836
	b .long_func_label1335
.long_func_label1325:
# br label %label1347
	b .long_func_label1347
.long_func_label1328:
# %op1331 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3363
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -832
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op1332 = load i32, i32* %op1331
	ld.w $t4, $t4, 0
# %op1333 = mul i32 1, %op1332
	addi.w $t0, $zero, 1
	mul.w $t4, $t0, $t4
# %op1334 = add i32 %op3364, %op1333
	add.w $t4, $t6, $t4
# br label %label1335
	st.d $t4, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -836
	b .long_func_label1335
.long_func_label1335:
# %op3365 = phi i32 [ %op3364, %label1321 ], [ %op3364, %label1342 ], [ %op1334, %label1328 ]
# %op1337 = sdiv i32 %op3362, 2
	ld.w $t0, $fp, -828
	addi.w $t1, $zero, 2
	div.w $t4, $t0, $t1
# %op1339 = sdiv i32 %op3361, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -840
# %op1341 = add i32 %op3363, 1
	ld.w $t0, $fp, -832
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -844
# br label %label1318
	st.d $t4, $fp, -1568
	ld.w $t0, $fp, -836
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -840
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -844
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -828
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -832
	b .long_func_label1318
.long_func_label1342:
# %op1344 = srem i32 %op3361, 2
	addi.w $t1, $zero, 2
	mod.w $t4, $t7, $t1
# %op1345 = icmp ne i32 0, %op1344
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op1345, label %label1328, label %label1335
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1328
	or $t0, $zero, $t6
	st.w $t0, $fp, -836
	b .long_func_label1335
.long_func_label1347:
# %op1349 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op1350 = load i32, i32* %op1349
	ld.w $t4, $t4, 0
# %op1351 = mul i32 %op3364, %op1350
	mul.w $t4, $t6, $t4
# br label %label1355
	st.d $t4, $fp, -1568
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -852
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -848
	b .long_func_label1355
.long_func_label1352:
# %op3369 = phi i32 [ 0, %label1346 ], [ %op3373, %label1362 ]
# br label %label1264
	st.d $t4, $fp, -1568
	st.d $t5, $fp, -1576
	ld.d $a7, $fp, -1568
	ld.d $t3, $fp, -1576
	b .long_func_label1264
.long_func_label1355:
# %op3370 = phi i32 [ 65535, %label1347 ], [ %op1374, %label1370 ]
# %op3371 = phi i32 [ %op1351, %label1347 ], [ %op1372, %label1370 ]
# %op3372 = phi i32 [ 0, %label1347 ], [ %op1376, %label1370 ]
# %op3373 = phi i32 [ 0, %label1347 ], [ %op3374, %label1370 ]
# %op1357 = icmp slt i32 %op3372, 16
	ld.w $t0, $fp, -848
	addi.w $t1, $zero, 16
	slt $t4,$t0,$t1
# br i1 %op1357, label %label1358, label %label1362
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1358
	b .long_func_label1362
.long_func_label1358:
# %op1360 = srem i32 %op3371, 2
	addi.w $t1, $zero, 2
	mod.w $t4, $t6, $t1
# %op1361 = icmp ne i32 0, %op1360
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op1361, label %label1377, label %label1370
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1377
	ld.w $t0, $fp, -852
	or $t0, $zero, $t0
	st.w $t0, $fp, -856
	b .long_func_label1370
.long_func_label1362:
# br label %label1352
	ld.w $t0, $fp, -852
	st.d $t0, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1352
.long_func_label1363:
# %op1366 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3372
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -848
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op1367 = load i32, i32* %op1366
	ld.w $t4, $t4, 0
# %op1368 = mul i32 1, %op1367
	addi.w $t0, $zero, 1
	mul.w $t4, $t0, $t4
# %op1369 = add i32 %op3373, %op1368
	ld.w $t0, $fp, -852
	add.w $t4, $t0, $t4
# br label %label1370
	st.d $t4, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -856
	b .long_func_label1370
.long_func_label1370:
# %op3374 = phi i32 [ %op3373, %label1358 ], [ %op3373, %label1377 ], [ %op1369, %label1363 ]
# %op1372 = sdiv i32 %op3371, 2
	addi.w $t1, $zero, 2
	div.w $t4, $t6, $t1
# %op1374 = sdiv i32 %op3370, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -860
# %op1376 = add i32 %op3372, 1
	ld.w $t0, $fp, -848
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -864
# br label %label1355
	st.d $t4, $fp, -1568
	ld.w $t0, $fp, -860
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -856
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -864
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -852
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -848
	b .long_func_label1355
.long_func_label1377:
# %op1379 = srem i32 %op3370, 2
	addi.w $t1, $zero, 2
	mod.w $t4, $t7, $t1
# %op1380 = icmp ne i32 0, %op1379
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t4,$t0,$t8
# br i1 %op1380, label %label1363, label %label1370
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label1363
	ld.w $t0, $fp, -852
	or $t0, $zero, $t0
	st.w $t0, $fp, -856
	b .long_func_label1370
.long_func_label1384:
# br label %label1392
	b .long_func_label1392
.long_func_label1387:
# %op3376 = phi i32 [ %op3377, %label1391 ], [ %op3379, %label1397 ]
# br label %label1099
	st.d $t2, $fp, -1568
	st.d $t4, $fp, -1576
	st.d $t3, $fp, -1584
	ld.d $a3, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	b .long_func_label1099
.long_func_label1392:
# %op1394 = icmp sgt i32 %op3300, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $a7,$t1,$a5
# br i1 %op1394, label %label1398, label %label1412
	addi.w $t0,$zero,0
	blt $t0,$a7,.long_func_label1398
	b .long_func_label1412
.long_func_label1397:
# %op3379 = phi i32 [ %op3381, %label1418 ], [ %op3300, %label1395 ]
# br label %label1387
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1387
.long_func_label1398:
# %op1401 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op1402 = load i32, i32* %op1401
	ld.w $a7, $a7, 0
# %op1403 = sdiv i32 %op3300, %op1402
	div.w $a7, $a5, $a7
# %op1405 = add i32 %op1403, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $a7, $a7, $t1
# %op1409 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op1410 = load i32, i32* %op1409
	ld.w $t4, $t4, 0
# %op1411 = sub i32 %op1405, %op1410
	sub.w $a7, $a7, $t4
# br label %label1418
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1418
.long_func_label1412:
# %op1415 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op1416 = load i32, i32* %op1415
	ld.w $a7, $a7, 0
# %op1417 = sdiv i32 %op3300, %op1416
	div.w $a7, $a5, $a7
# br label %label1418
	st.d $a7, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label1418
.long_func_label1418:
# %op3381 = phi i32 [ %op1411, %label1398 ], [ %op1417, %label1412 ]
# br label %label1397
	st.d $t4, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label1397
.long_func_label1422:
# br label %label1430
	b .long_func_label1430
.long_func_label1425:
# %op3383 = phi i32 [ %op3384, %label1429 ], [ %op3386, %label1435 ]
# br label %label734
	st.d $a4, $fp, -1568
	st.d $a6, $fp, -1576
	st.d $a3, $fp, -1584
	ld.d $a0, $fp, -1568
	ld.d $a1, $fp, -1576
	ld.d $a2, $fp, -1584
	b .long_func_label734
.long_func_label1430:
# %op1432 = icmp sgt i32 %op3179, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $a5,$t1,$a1
# br i1 %op1432, label %label1436, label %label1450
	addi.w $t0,$zero,0
	blt $t0,$a5,.long_func_label1436
	b .long_func_label1450
.long_func_label1435:
# %op3386 = phi i32 [ %op3388, %label1456 ], [ %op3179, %label1433 ]
# br label %label1425
	st.d $a5, $fp, -1568
	ld.d $a6, $fp, -1568
	b .long_func_label1425
.long_func_label1436:
# %op1439 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a5,$t1,$t0
# %op1440 = load i32, i32* %op1439
	ld.w $a5, $a5, 0
# %op1441 = sdiv i32 %op3179, %op1440
	div.w $a5, $a1, $a5
# %op1443 = add i32 %op1441, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $a5, $a5, $t1
# %op1447 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a6,$t1,$t0
# %op1448 = load i32, i32* %op1447
	ld.w $a6, $a6, 0
# %op1449 = sub i32 %op1443, %op1448
	sub.w $a5, $a5, $a6
# br label %label1456
	st.d $a5, $fp, -1568
	ld.d $a6, $fp, -1568
	b .long_func_label1456
.long_func_label1450:
# %op1453 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a5,$t1,$t0
# %op1454 = load i32, i32* %op1453
	ld.w $a5, $a5, 0
# %op1455 = sdiv i32 %op3179, %op1454
	div.w $a5, $a1, $a5
# br label %label1456
	st.d $a5, $fp, -1568
	ld.d $a6, $fp, -1568
	b .long_func_label1456
.long_func_label1456:
# %op3388 = phi i32 [ %op1449, %label1436 ], [ %op1455, %label1450 ]
# br label %label1435
	st.d $a6, $fp, -1568
	ld.d $a5, $fp, -1568
	b .long_func_label1435
.long_func_label1457:
# %op3410 = phi i32 [ 2, %label739 ], [ %op1475, %label1471 ]
# %op1459 = icmp slt i32 %op3410, 16
	addi.w $t1, $zero, 16
	slt $a1,$a0,$t1
# br i1 %op1459, label %label1460, label %label1465
	addi.w $t0,$zero,0
	blt $t0,$a1,.long_func_label1460
	b .long_func_label1465
.long_func_label1460:
# br label %label1466
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1568
	st.d $a0, $fp, -1576
	addi.w $t0, $zero, 2
	st.d $t0, $fp, -1584
	ld.d $a1, $fp, -1568
	ld.d $a2, $fp, -1576
	ld.d $a3, $fp, -1584
	b .long_func_label1466
.long_func_label1465:
# br label %label2191
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	ld.d $a0, $fp, -1568
	b .long_func_label2191
.long_func_label1466:
# %op3433 = phi i32 [ 1, %label1460 ], [ %op3454, %label2159 ]
# %op3434 = phi i32 [ %op3410, %label1460 ], [ %op3638, %label2159 ]
# %op3435 = phi i32 [ 2, %label1460 ], [ %op3554, %label2159 ]
# %op1468 = icmp sgt i32 %op3434, 0
	addi.w $t1, $zero, 0
	slt $a4,$t1,$a2
# br i1 %op1468, label %label1469, label %label1471
	addi.w $t0,$zero,0
	blt $t0,$a4,.long_func_label1469
	b .long_func_label1471
.long_func_label1469:
# br label %label1476
	st.d $a2, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1592
	ld.d $a4, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	ld.d $a7, $fp, -1592
	b .long_func_label1476
.long_func_label1471:
# call void @putint(i32 %op3433)
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
# %op1475 = add i32 %op3410, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a0, $t1
# br label %label1457
	st.d $a1, $fp, -1568
	ld.d $a0, $fp, -1568
	b .long_func_label1457
.long_func_label1476:
# %op3440 = phi i32 [ 1, %label1469 ], [ %op1497, %label1493 ]
# %op3441 = phi i32 [ %op3434, %label1469 ], [ %op1495, %label1493 ]
# %op3442 = phi i32 [ 0, %label1469 ], [ %op1499, %label1493 ]
# %op3443 = phi i32 [ 0, %label1469 ], [ %op3444, %label1493 ]
# %op1478 = icmp slt i32 %op3442, 16
	addi.w $t1, $zero, 16
	slt $t2,$a5,$t1
# br i1 %op1478, label %label1479, label %label1483
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label1479
	b .long_func_label1483
.long_func_label1479:
# %op1481 = srem i32 %op3441, 2
	addi.w $t1, $zero, 2
	mod.w $t2, $a4, $t1
# %op1482 = icmp ne i32 0, %op1481
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t2,$t0,$t8
# br i1 %op1482, label %label1500, label %label1493
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label1500
	or $t3, $zero, $a6
	b .long_func_label1493
.long_func_label1483:
# %op1485 = icmp ne i32 0, %op3443
	addi.w $t0, $zero, 0
	slt $t8,$a6,$t0
	slt $t0,$t0,$a6
	or $a4,$t0,$t8
# br i1 %op1485, label %label1504, label %label1510
	addi.w $t0,$zero,0
	blt $t0,$a4,.long_func_label1504
	or $a5, $zero, $a1
	b .long_func_label1510
.long_func_label1486:
# %op1489 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3442
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t2,$t1,$t0
# %op1490 = load i32, i32* %op1489
	ld.w $t2, $t2, 0
# %op1491 = mul i32 1, %op1490
	addi.w $t0, $zero, 1
	mul.w $t2, $t0, $t2
# %op1492 = add i32 %op3443, %op1491
	add.w $t2, $a6, $t2
# br label %label1493
	st.d $t2, $fp, -1568
	ld.d $t3, $fp, -1568
	b .long_func_label1493
.long_func_label1493:
# %op3444 = phi i32 [ %op3443, %label1479 ], [ %op3443, %label1500 ], [ %op1492, %label1486 ]
# %op1495 = sdiv i32 %op3441, 2
	addi.w $t1, $zero, 2
	div.w $t2, $a4, $t1
# %op1497 = sdiv i32 %op3440, 2
	addi.w $t1, $zero, 2
	div.w $t4, $a7, $t1
# %op1499 = add i32 %op3442, 1
	addi.w $t1, $zero, 1
	add.w $t5, $a5, $t1
# br label %label1476
	st.d $t2, $fp, -1568
	st.d $t5, $fp, -1576
	st.d $t3, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $a4, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	ld.d $a7, $fp, -1592
	b .long_func_label1476
.long_func_label1500:
# %op1502 = srem i32 %op3440, 2
	addi.w $t1, $zero, 2
	mod.w $t2, $a7, $t1
# %op1503 = icmp ne i32 0, %op1502
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t2,$t0,$t8
# br i1 %op1503, label %label1486, label %label1493
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label1486
	or $t3, $zero, $a6
	b .long_func_label1493
.long_func_label1504:
# br label %label1516
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $a3, $fp, -1576
	st.d $a1, $fp, -1584
	ld.d $a4, $fp, -1568
	ld.d $a6, $fp, -1576
	ld.d $a7, $fp, -1584
	b .long_func_label1516
.long_func_label1510:
# %op3454 = phi i32 [ %op3433, %label1483 ], [ %op3465, %label1521 ]
# br label %label1833
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $a3, $fp, -1576
	st.d $a3, $fp, -1584
	ld.d $a4, $fp, -1568
	ld.d $a6, $fp, -1576
	ld.d $a7, $fp, -1584
	b .long_func_label1833
.long_func_label1516:
# %op3465 = phi i32 [ 0, %label1504 ], [ %op3480, %label1801 ]
# %op3466 = phi i32 [ %op3435, %label1504 ], [ %op3542, %label1801 ]
# %op3467 = phi i32 [ %op3433, %label1504 ], [ %op3515, %label1801 ]
# %op1518 = icmp ne i32 0, %op3466
	addi.w $t0, $zero, 0
	slt $t8,$a6,$t0
	slt $t0,$t0,$a6
	or $t2,$t0,$t8
# br i1 %op1518, label %label1519, label %label1521
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label1519
	b .long_func_label1521
.long_func_label1519:
# br label %label1524
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $a6, $fp, -1592
	ld.d $t2, $fp, -1568
	ld.d $t3, $fp, -1576
	ld.d $t4, $fp, -1584
	ld.d $t5, $fp, -1592
	b .long_func_label1524
.long_func_label1521:
# br label %label1510
	st.d $a4, $fp, -1568
	ld.d $a5, $fp, -1568
	b .long_func_label1510
.long_func_label1524:
# %op3472 = phi i32 [ 1, %label1519 ], [ %op1545, %label1541 ]
# %op3473 = phi i32 [ %op3466, %label1519 ], [ %op1543, %label1541 ]
# %op3474 = phi i32 [ 0, %label1519 ], [ %op1547, %label1541 ]
# %op3475 = phi i32 [ 0, %label1519 ], [ %op3476, %label1541 ]
# %op1526 = icmp slt i32 %op3474, 16
	addi.w $t1, $zero, 16
	slt $t6,$t4,$t1
# br i1 %op1526, label %label1527, label %label1531
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1527
	b .long_func_label1531
.long_func_label1527:
# %op1529 = srem i32 %op3473, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t5, $t1
# %op1530 = icmp ne i32 0, %op1529
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1530, label %label1548, label %label1541
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1548
	or $t7, $zero, $t2
	b .long_func_label1541
.long_func_label1531:
# %op1533 = icmp ne i32 0, %op3475
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t2,$t0,$t8
# br i1 %op1533, label %label1552, label %label1558
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label1552
	or $t3, $zero, $a4
	b .long_func_label1558
.long_func_label1534:
# %op1537 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3474
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1538 = load i32, i32* %op1537
	ld.w $t6, $t6, 0
# %op1539 = mul i32 1, %op1538
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1540 = add i32 %op3475, %op1539
	add.w $t6, $t2, $t6
# br label %label1541
	st.d $t6, $fp, -1568
	ld.d $t7, $fp, -1568
	b .long_func_label1541
.long_func_label1541:
# %op3476 = phi i32 [ %op3475, %label1527 ], [ %op3475, %label1548 ], [ %op1540, %label1534 ]
# %op1543 = sdiv i32 %op3473, 2
	addi.w $t1, $zero, 2
	div.w $t6, $t5, $t1
# %op1545 = sdiv i32 %op3472, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t3, $t1
	st.w $t0, $fp, -884
# %op1547 = add i32 %op3474, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t4, $t1
	st.w $t0, $fp, -888
# br label %label1524
	st.d $t7, $fp, -1568
	ld.w $t0, $fp, -884
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -888
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t2, $fp, -1568
	ld.d $t3, $fp, -1576
	ld.d $t4, $fp, -1584
	ld.d $t5, $fp, -1592
	b .long_func_label1524
.long_func_label1548:
# %op1550 = srem i32 %op3472, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t3, $t1
# %op1551 = icmp ne i32 0, %op1550
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1551, label %label1534, label %label1541
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1534
	or $t7, $zero, $t2
	b .long_func_label1541
.long_func_label1552:
# br label %label1564
	st.d $a7, $fp, -1568
	st.d $a4, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label1564
.long_func_label1558:
# %op3480 = phi i32 [ %op3465, %label1531 ], [ %op3487, %label1570 ]
# br label %label1678
	st.d $a7, $fp, -1568
	st.d $a7, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label1678
.long_func_label1564:
# %op3486 = phi i32 [ %op3467, %label1552 ], [ %op3507, %label1649 ]
# %op3487 = phi i32 [ %op3465, %label1552 ], [ %op3495, %label1649 ]
# %op1566 = icmp ne i32 0, %op3486
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t5,$t0,$t8
# br i1 %op1566, label %label1567, label %label1570
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1567
	b .long_func_label1570
.long_func_label1567:
# br label %label1573
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -892
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -900
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -896
	b .long_func_label1573
.long_func_label1570:
# br label %label1558
	st.d $t4, $fp, -1568
	ld.d $t3, $fp, -1568
	b .long_func_label1558
.long_func_label1573:
# %op3492 = phi i32 [ %op3486, %label1567 ], [ %op1596, %label1592 ]
# %op3493 = phi i32 [ %op3487, %label1567 ], [ %op1594, %label1592 ]
# %op3494 = phi i32 [ 0, %label1567 ], [ %op1598, %label1592 ]
# %op3495 = phi i32 [ 0, %label1567 ], [ %op3496, %label1592 ]
# %op1575 = icmp slt i32 %op3494, 16
	ld.w $t0, $fp, -900
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op1575, label %label1576, label %label1580
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1576
	b .long_func_label1580
.long_func_label1576:
# %op1578 = srem i32 %op3493, 2
	ld.w $t0, $fp, -896
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1579 = icmp ne i32 0, %op1578
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1579, label %label1584, label %label1588
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1584
	b .long_func_label1588
.long_func_label1580:
# br label %label1615
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	st.d $t4, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -920
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -924
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -928
	b .long_func_label1615
.long_func_label1584:
# %op1586 = srem i32 %op3492, 2
	ld.w $t0, $fp, -892
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1587 = icmp eq i32 %op1586, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t6,$t8,$t0
# br i1 %op1587, label %label1599, label %label1606
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1599
	or $t0, $zero, $t5
	st.w $t0, $fp, -912
	b .long_func_label1606
.long_func_label1588:
# %op1590 = srem i32 %op3492, 2
	ld.w $t0, $fp, -892
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op1591 = icmp ne i32 0, %op1590
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op1591, label %label1607, label %label1614
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label1607
	or $t0, $zero, $t5
	st.w $t0, $fp, -916
	b .long_func_label1614
.long_func_label1592:
# %op3496 = phi i32 [ %op3497, %label1606 ], [ %op3498, %label1614 ]
# %op1594 = sdiv i32 %op3493, 2
	ld.w $t0, $fp, -896
	addi.w $t1, $zero, 2
	div.w $t7, $t0, $t1
# %op1596 = sdiv i32 %op3492, 2
	ld.w $t0, $fp, -892
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -904
# %op1598 = add i32 %op3494, 1
	ld.w $t0, $fp, -900
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -908
# br label %label1573
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -904
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -908
	st.d $t0, $fp, -1584
	st.d $t7, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -892
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -900
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -896
	b .long_func_label1573
.long_func_label1599:
# %op1602 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3494
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -900
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1603 = load i32, i32* %op1602
	ld.w $t6, $t6, 0
# %op1604 = mul i32 1, %op1603
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1605 = add i32 %op3495, %op1604
	add.w $t6, $t5, $t6
# br label %label1606
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -912
	b .long_func_label1606
.long_func_label1606:
# %op3497 = phi i32 [ %op3495, %label1584 ], [ %op1605, %label1599 ]
# br label %label1592
	ld.w $t0, $fp, -912
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1592
.long_func_label1607:
# %op1610 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3494
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -900
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op1611 = load i32, i32* %op1610
	ld.w $t7, $t7, 0
# %op1612 = mul i32 1, %op1611
	addi.w $t0, $zero, 1
	mul.w $t7, $t0, $t7
# %op1613 = add i32 %op3495, %op1612
	add.w $t7, $t5, $t7
# br label %label1614
	st.d $t7, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -916
	b .long_func_label1614
.long_func_label1614:
# %op3498 = phi i32 [ %op3495, %label1588 ], [ %op1613, %label1607 ]
# br label %label1592
	ld.w $t0, $fp, -916
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1592
.long_func_label1615:
# %op3499 = phi i32 [ %op3486, %label1580 ], [ %op1636, %label1632 ]
# %op3500 = phi i32 [ %op3487, %label1580 ], [ %op1634, %label1632 ]
# %op3501 = phi i32 [ 0, %label1580 ], [ %op1638, %label1632 ]
# %op3502 = phi i32 [ 0, %label1580 ], [ %op3503, %label1632 ]
# %op1617 = icmp slt i32 %op3501, 16
	ld.w $t0, $fp, -928
	addi.w $t1, $zero, 16
	slt $t7,$t0,$t1
# br i1 %op1617, label %label1618, label %label1622
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label1618
	b .long_func_label1622
.long_func_label1618:
# %op1620 = srem i32 %op3500, 2
	ld.w $t0, $fp, -924
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op1621 = icmp ne i32 0, %op1620
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op1621, label %label1639, label %label1632
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label1639
	or $t0, $zero, $t6
	st.w $t0, $fp, -932
	b .long_func_label1632
.long_func_label1622:
# br label %label1644
	b .long_func_label1644
.long_func_label1625:
# %op1628 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3501
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -928
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op1629 = load i32, i32* %op1628
	ld.w $t7, $t7, 0
# %op1630 = mul i32 1, %op1629
	addi.w $t0, $zero, 1
	mul.w $t7, $t0, $t7
# %op1631 = add i32 %op3502, %op1630
	add.w $t7, $t6, $t7
# br label %label1632
	st.d $t7, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -932
	b .long_func_label1632
.long_func_label1632:
# %op3503 = phi i32 [ %op3502, %label1618 ], [ %op3502, %label1639 ], [ %op1631, %label1625 ]
# %op1634 = sdiv i32 %op3500, 2
	ld.w $t0, $fp, -924
	addi.w $t1, $zero, 2
	div.w $t7, $t0, $t1
# %op1636 = sdiv i32 %op3499, 2
	ld.w $t0, $fp, -920
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -936
# %op1638 = add i32 %op3501, 1
	ld.w $t0, $fp, -928
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -940
# br label %label1615
	ld.w $t0, $fp, -932
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -936
	st.d $t0, $fp, -1576
	st.d $t7, $fp, -1584
	ld.w $t0, $fp, -940
	st.d $t0, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -920
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -924
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -928
	b .long_func_label1615
.long_func_label1639:
# %op1641 = srem i32 %op3499, 2
	ld.w $t0, $fp, -920
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op1642 = icmp ne i32 0, %op1641
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op1642, label %label1625, label %label1632
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label1625
	or $t0, $zero, $t6
	st.w $t0, $fp, -932
	b .long_func_label1632
.long_func_label1644:
# %op1646 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op1647 = load i32, i32* %op1646
	ld.w $t7, $t7, 0
# %op1648 = mul i32 %op3502, %op1647
	mul.w $t6, $t6, $t7
# br label %label1652
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -944
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -952
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -948
	b .long_func_label1652
.long_func_label1649:
# %op3507 = phi i32 [ 0, %label1643 ], [ %op3511, %label1659 ]
# br label %label1564
	st.d $t6, $fp, -1568
	st.d $t5, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label1564
.long_func_label1652:
# %op3508 = phi i32 [ 65535, %label1644 ], [ %op1671, %label1667 ]
# %op3509 = phi i32 [ %op1648, %label1644 ], [ %op1669, %label1667 ]
# %op3510 = phi i32 [ 0, %label1644 ], [ %op1673, %label1667 ]
# %op3511 = phi i32 [ 0, %label1644 ], [ %op3512, %label1667 ]
# %op1654 = icmp slt i32 %op3510, 16
	ld.w $t0, $fp, -952
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op1654, label %label1655, label %label1659
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1655
	b .long_func_label1659
.long_func_label1655:
# %op1657 = srem i32 %op3509, 2
	ld.w $t0, $fp, -948
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1658 = icmp ne i32 0, %op1657
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1658, label %label1674, label %label1667
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1674
	or $t0, $zero, $t7
	st.w $t0, $fp, -956
	b .long_func_label1667
.long_func_label1659:
# br label %label1649
	st.d $t7, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1649
.long_func_label1660:
# %op1663 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3510
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -952
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1664 = load i32, i32* %op1663
	ld.w $t6, $t6, 0
# %op1665 = mul i32 1, %op1664
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1666 = add i32 %op3511, %op1665
	add.w $t6, $t7, $t6
# br label %label1667
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -956
	b .long_func_label1667
.long_func_label1667:
# %op3512 = phi i32 [ %op3511, %label1655 ], [ %op3511, %label1674 ], [ %op1666, %label1660 ]
# %op1669 = sdiv i32 %op3509, 2
	ld.w $t0, $fp, -948
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op1671 = sdiv i32 %op3508, 2
	ld.w $t0, $fp, -944
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -960
# %op1673 = add i32 %op3510, 1
	ld.w $t0, $fp, -952
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -964
# br label %label1652
	ld.w $t0, $fp, -956
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -960
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -964
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -944
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -952
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -948
	b .long_func_label1652
.long_func_label1674:
# %op1676 = srem i32 %op3508, 2
	ld.w $t0, $fp, -944
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1677 = icmp ne i32 0, %op1676
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1677, label %label1660, label %label1667
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1660
	or $t0, $zero, $t7
	st.w $t0, $fp, -956
	b .long_func_label1667
.long_func_label1678:
# %op3514 = phi i32 [ %op3467, %label1558 ], [ %op3535, %label1766 ]
# %op3515 = phi i32 [ %op3467, %label1558 ], [ %op3523, %label1766 ]
# %op1680 = icmp ne i32 0, %op3514
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t5,$t0,$t8
# br i1 %op1680, label %label1681, label %label1684
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1681
	b .long_func_label1684
.long_func_label1681:
# br label %label1690
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -968
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -976
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -972
	b .long_func_label1690
.long_func_label1684:
# br label %label1798
	b .long_func_label1798
.long_func_label1690:
# %op3520 = phi i32 [ %op3514, %label1681 ], [ %op1713, %label1709 ]
# %op3521 = phi i32 [ %op3515, %label1681 ], [ %op1711, %label1709 ]
# %op3522 = phi i32 [ 0, %label1681 ], [ %op1715, %label1709 ]
# %op3523 = phi i32 [ 0, %label1681 ], [ %op3524, %label1709 ]
# %op1692 = icmp slt i32 %op3522, 16
	ld.w $t0, $fp, -976
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op1692, label %label1693, label %label1697
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1693
	b .long_func_label1697
.long_func_label1693:
# %op1695 = srem i32 %op3521, 2
	ld.w $t0, $fp, -972
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1696 = icmp ne i32 0, %op1695
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1696, label %label1701, label %label1705
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1701
	b .long_func_label1705
.long_func_label1697:
# br label %label1732
	st.d $t2, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -996
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1004
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1000
	b .long_func_label1732
.long_func_label1701:
# %op1703 = srem i32 %op3520, 2
	ld.w $t0, $fp, -968
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1704 = icmp eq i32 %op1703, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t6,$t8,$t0
# br i1 %op1704, label %label1716, label %label1723
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1716
	or $t0, $zero, $t5
	st.w $t0, $fp, -988
	b .long_func_label1723
.long_func_label1705:
# %op1707 = srem i32 %op3520, 2
	ld.w $t0, $fp, -968
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op1708 = icmp ne i32 0, %op1707
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op1708, label %label1724, label %label1731
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label1724
	or $t0, $zero, $t5
	st.w $t0, $fp, -992
	b .long_func_label1731
.long_func_label1709:
# %op3524 = phi i32 [ %op3525, %label1723 ], [ %op3526, %label1731 ]
# %op1711 = sdiv i32 %op3521, 2
	ld.w $t0, $fp, -972
	addi.w $t1, $zero, 2
	div.w $t7, $t0, $t1
# %op1713 = sdiv i32 %op3520, 2
	ld.w $t0, $fp, -968
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -980
# %op1715 = add i32 %op3522, 1
	ld.w $t0, $fp, -976
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -984
# br label %label1690
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -980
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -984
	st.d $t0, $fp, -1584
	st.d $t7, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -968
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -976
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -972
	b .long_func_label1690
.long_func_label1716:
# %op1719 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3522
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -976
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1720 = load i32, i32* %op1719
	ld.w $t6, $t6, 0
# %op1721 = mul i32 1, %op1720
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1722 = add i32 %op3523, %op1721
	add.w $t6, $t5, $t6
# br label %label1723
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -988
	b .long_func_label1723
.long_func_label1723:
# %op3525 = phi i32 [ %op3523, %label1701 ], [ %op1722, %label1716 ]
# br label %label1709
	ld.w $t0, $fp, -988
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1709
.long_func_label1724:
# %op1727 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3522
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -976
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op1728 = load i32, i32* %op1727
	ld.w $t7, $t7, 0
# %op1729 = mul i32 1, %op1728
	addi.w $t0, $zero, 1
	mul.w $t7, $t0, $t7
# %op1730 = add i32 %op3523, %op1729
	add.w $t7, $t5, $t7
# br label %label1731
	st.d $t7, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -992
	b .long_func_label1731
.long_func_label1731:
# %op3526 = phi i32 [ %op3523, %label1705 ], [ %op1730, %label1724 ]
# br label %label1709
	ld.w $t0, $fp, -992
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1709
.long_func_label1732:
# %op3527 = phi i32 [ %op3514, %label1697 ], [ %op1753, %label1749 ]
# %op3528 = phi i32 [ %op3515, %label1697 ], [ %op1751, %label1749 ]
# %op3529 = phi i32 [ 0, %label1697 ], [ %op1755, %label1749 ]
# %op3530 = phi i32 [ 0, %label1697 ], [ %op3531, %label1749 ]
# %op1734 = icmp slt i32 %op3529, 16
	ld.w $t0, $fp, -1004
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op1734, label %label1735, label %label1739
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1735
	b .long_func_label1739
.long_func_label1735:
# %op1737 = srem i32 %op3528, 2
	ld.w $t0, $fp, -1000
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1738 = icmp ne i32 0, %op1737
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1738, label %label1756, label %label1749
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1756
	or $t0, $zero, $t7
	st.w $t0, $fp, -1008
	b .long_func_label1749
.long_func_label1739:
# br label %label1761
	b .long_func_label1761
.long_func_label1742:
# %op1745 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3529
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1004
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1746 = load i32, i32* %op1745
	ld.w $t6, $t6, 0
# %op1747 = mul i32 1, %op1746
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1748 = add i32 %op3530, %op1747
	add.w $t6, $t7, $t6
# br label %label1749
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1008
	b .long_func_label1749
.long_func_label1749:
# %op3531 = phi i32 [ %op3530, %label1735 ], [ %op3530, %label1756 ], [ %op1748, %label1742 ]
# %op1751 = sdiv i32 %op3528, 2
	ld.w $t0, $fp, -1000
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op1753 = sdiv i32 %op3527, 2
	ld.w $t0, $fp, -996
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1012
# %op1755 = add i32 %op3529, 1
	ld.w $t0, $fp, -1004
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1016
# br label %label1732
	ld.w $t0, $fp, -1012
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1008
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1016
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -996
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1004
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1000
	b .long_func_label1732
.long_func_label1756:
# %op1758 = srem i32 %op3527, 2
	ld.w $t0, $fp, -996
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1759 = icmp ne i32 0, %op1758
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1759, label %label1742, label %label1749
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1742
	or $t0, $zero, $t7
	st.w $t0, $fp, -1008
	b .long_func_label1749
.long_func_label1761:
# %op1763 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1764 = load i32, i32* %op1763
	ld.w $t6, $t6, 0
# %op1765 = mul i32 %op3530, %op1764
	mul.w $t6, $t7, $t6
# br label %label1769
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $t6, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1028
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1020
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1024
	b .long_func_label1769
.long_func_label1766:
# %op3535 = phi i32 [ 0, %label1760 ], [ %op3539, %label1776 ]
# br label %label1678
	st.d $t6, $fp, -1568
	st.d $t5, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label1678
.long_func_label1769:
# %op3536 = phi i32 [ 65535, %label1761 ], [ %op1788, %label1784 ]
# %op3537 = phi i32 [ %op1765, %label1761 ], [ %op1786, %label1784 ]
# %op3538 = phi i32 [ 0, %label1761 ], [ %op1790, %label1784 ]
# %op3539 = phi i32 [ 0, %label1761 ], [ %op3540, %label1784 ]
# %op1771 = icmp slt i32 %op3538, 16
	ld.w $t0, $fp, -1024
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op1771, label %label1772, label %label1776
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1772
	b .long_func_label1776
.long_func_label1772:
# %op1774 = srem i32 %op3537, 2
	ld.w $t0, $fp, -1020
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1775 = icmp ne i32 0, %op1774
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1775, label %label1791, label %label1784
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1791
	ld.w $t0, $fp, -1028
	or $t0, $zero, $t0
	st.w $t0, $fp, -1032
	b .long_func_label1784
.long_func_label1776:
# br label %label1766
	ld.w $t0, $fp, -1028
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1766
.long_func_label1777:
# %op1780 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3538
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1024
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1781 = load i32, i32* %op1780
	ld.w $t6, $t6, 0
# %op1782 = mul i32 1, %op1781
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1783 = add i32 %op3539, %op1782
	ld.w $t0, $fp, -1028
	add.w $t6, $t0, $t6
# br label %label1784
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1032
	b .long_func_label1784
.long_func_label1784:
# %op3540 = phi i32 [ %op3539, %label1772 ], [ %op3539, %label1791 ], [ %op1783, %label1777 ]
# %op1786 = sdiv i32 %op3537, 2
	ld.w $t0, $fp, -1020
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op1788 = sdiv i32 %op3536, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -1036
# %op1790 = add i32 %op3538, 1
	ld.w $t0, $fp, -1024
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1040
# br label %label1769
	ld.w $t0, $fp, -1036
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1032
	st.d $t0, $fp, -1576
	st.d $t6, $fp, -1584
	ld.w $t0, $fp, -1040
	st.d $t0, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1028
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1020
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1024
	b .long_func_label1769
.long_func_label1791:
# %op1793 = srem i32 %op3536, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t7, $t1
# %op1794 = icmp ne i32 0, %op1793
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1794, label %label1777, label %label1784
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1777
	ld.w $t0, $fp, -1028
	or $t0, $zero, $t0
	st.w $t0, $fp, -1032
	b .long_func_label1784
.long_func_label1798:
# br label %label1806
	b .long_func_label1806
.long_func_label1801:
# %op3542 = phi i32 [ %op3543, %label1805 ], [ %op3545, %label1811 ]
# br label %label1516
	st.d $t3, $fp, -1568
	st.d $t5, $fp, -1576
	st.d $t4, $fp, -1584
	ld.d $a4, $fp, -1568
	ld.d $a6, $fp, -1576
	ld.d $a7, $fp, -1584
	b .long_func_label1516
.long_func_label1806:
# %op1808 = icmp sgt i32 %op3466, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2,$t1,$a6
# br i1 %op1808, label %label1812, label %label1826
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label1812
	b .long_func_label1826
.long_func_label1811:
# %op3545 = phi i32 [ %op3547, %label1832 ], [ %op3466, %label1809 ]
# br label %label1801
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label1801
.long_func_label1812:
# %op1815 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t2,$t1,$t0
# %op1816 = load i32, i32* %op1815
	ld.w $t2, $t2, 0
# %op1817 = sdiv i32 %op3466, %op1816
	div.w $t2, $a6, $t2
# %op1819 = add i32 %op1817, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t2, $t1
# %op1823 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op1824 = load i32, i32* %op1823
	ld.w $t5, $t5, 0
# %op1825 = sub i32 %op1819, %op1824
	sub.w $t2, $t2, $t5
# br label %label1832
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label1832
.long_func_label1826:
# %op1829 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t2,$t1,$t0
# %op1830 = load i32, i32* %op1829
	ld.w $t2, $t2, 0
# %op1831 = sdiv i32 %op3466, %op1830
	div.w $t2, $a6, $t2
# br label %label1832
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label1832
.long_func_label1832:
# %op3547 = phi i32 [ %op1825, %label1812 ], [ %op1831, %label1826 ]
# br label %label1811
	st.d $t5, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label1811
.long_func_label1833:
# %op3554 = phi i32 [ 0, %label1510 ], [ %op3569, %label2121 ]
# %op3555 = phi i32 [ %op3435, %label1510 ], [ %op3631, %label2121 ]
# %op3556 = phi i32 [ %op3435, %label1510 ], [ %op3604, %label2121 ]
# %op1835 = icmp ne i32 0, %op3555
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t2,$t0,$t8
# br i1 %op1835, label %label1836, label %label1838
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label1836
	b .long_func_label1838
.long_func_label1836:
# br label %label1844
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $a7, $fp, -1592
	ld.d $t2, $fp, -1568
	ld.d $t3, $fp, -1576
	ld.d $t4, $fp, -1584
	ld.d $t5, $fp, -1592
	b .long_func_label1844
.long_func_label1838:
# br label %label2156
	b .long_func_label2156
.long_func_label1844:
# %op3561 = phi i32 [ 1, %label1836 ], [ %op1865, %label1861 ]
# %op3562 = phi i32 [ %op3555, %label1836 ], [ %op1863, %label1861 ]
# %op3563 = phi i32 [ 0, %label1836 ], [ %op1867, %label1861 ]
# %op3564 = phi i32 [ 0, %label1836 ], [ %op3565, %label1861 ]
# %op1846 = icmp slt i32 %op3563, 16
	addi.w $t1, $zero, 16
	slt $t6,$t4,$t1
# br i1 %op1846, label %label1847, label %label1851
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1847
	b .long_func_label1851
.long_func_label1847:
# %op1849 = srem i32 %op3562, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t5, $t1
# %op1850 = icmp ne i32 0, %op1849
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1850, label %label1868, label %label1861
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1868
	or $t7, $zero, $t3
	b .long_func_label1861
.long_func_label1851:
# %op1853 = icmp ne i32 0, %op3564
	addi.w $t0, $zero, 0
	slt $t8,$t3,$t0
	slt $t0,$t0,$t3
	or $t2,$t0,$t8
# br i1 %op1853, label %label1872, label %label1878
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label1872
	or $t3, $zero, $a4
	b .long_func_label1878
.long_func_label1854:
# %op1857 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3563
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1858 = load i32, i32* %op1857
	ld.w $t6, $t6, 0
# %op1859 = mul i32 1, %op1858
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1860 = add i32 %op3564, %op1859
	add.w $t6, $t3, $t6
# br label %label1861
	st.d $t6, $fp, -1568
	ld.d $t7, $fp, -1568
	b .long_func_label1861
.long_func_label1861:
# %op3565 = phi i32 [ %op3564, %label1847 ], [ %op3564, %label1868 ], [ %op1860, %label1854 ]
# %op1863 = sdiv i32 %op3562, 2
	addi.w $t1, $zero, 2
	div.w $t6, $t5, $t1
# %op1865 = sdiv i32 %op3561, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t2, $t1
	st.w $t0, $fp, -1052
# %op1867 = add i32 %op3563, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t4, $t1
	st.w $t0, $fp, -1056
# br label %label1844
	ld.w $t0, $fp, -1052
	st.d $t0, $fp, -1568
	st.d $t7, $fp, -1576
	ld.w $t0, $fp, -1056
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t2, $fp, -1568
	ld.d $t3, $fp, -1576
	ld.d $t4, $fp, -1584
	ld.d $t5, $fp, -1592
	b .long_func_label1844
.long_func_label1868:
# %op1870 = srem i32 %op3561, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t2, $t1
# %op1871 = icmp ne i32 0, %op1870
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1871, label %label1854, label %label1861
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1854
	or $t7, $zero, $t3
	b .long_func_label1861
.long_func_label1872:
# br label %label1884
	st.d $a6, $fp, -1568
	st.d $a4, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label1884
.long_func_label1878:
# %op3569 = phi i32 [ %op3554, %label1851 ], [ %op3576, %label1890 ]
# br label %label1998
	st.d $a6, $fp, -1568
	st.d $a6, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label1998
.long_func_label1884:
# %op3575 = phi i32 [ %op3556, %label1872 ], [ %op3596, %label1969 ]
# %op3576 = phi i32 [ %op3554, %label1872 ], [ %op3584, %label1969 ]
# %op1886 = icmp ne i32 0, %op3575
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t5,$t0,$t8
# br i1 %op1886, label %label1887, label %label1890
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label1887
	b .long_func_label1890
.long_func_label1887:
# br label %label1893
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1060
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1068
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1064
	b .long_func_label1893
.long_func_label1890:
# br label %label1878
	st.d $t4, $fp, -1568
	ld.d $t3, $fp, -1568
	b .long_func_label1878
.long_func_label1893:
# %op3581 = phi i32 [ %op3575, %label1887 ], [ %op1916, %label1912 ]
# %op3582 = phi i32 [ %op3576, %label1887 ], [ %op1914, %label1912 ]
# %op3583 = phi i32 [ 0, %label1887 ], [ %op1918, %label1912 ]
# %op3584 = phi i32 [ 0, %label1887 ], [ %op3585, %label1912 ]
# %op1895 = icmp slt i32 %op3583, 16
	ld.w $t0, $fp, -1068
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op1895, label %label1896, label %label1900
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1896
	b .long_func_label1900
.long_func_label1896:
# %op1898 = srem i32 %op3582, 2
	ld.w $t0, $fp, -1064
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1899 = icmp ne i32 0, %op1898
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1899, label %label1904, label %label1908
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1904
	b .long_func_label1908
.long_func_label1900:
# br label %label1935
	st.d $t2, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1088
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1096
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1092
	b .long_func_label1935
.long_func_label1904:
# %op1906 = srem i32 %op3581, 2
	ld.w $t0, $fp, -1060
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1907 = icmp eq i32 %op1906, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t6,$t8,$t0
# br i1 %op1907, label %label1919, label %label1926
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1919
	or $t0, $zero, $t5
	st.w $t0, $fp, -1080
	b .long_func_label1926
.long_func_label1908:
# %op1910 = srem i32 %op3581, 2
	ld.w $t0, $fp, -1060
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op1911 = icmp ne i32 0, %op1910
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op1911, label %label1927, label %label1934
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label1927
	or $t0, $zero, $t5
	st.w $t0, $fp, -1084
	b .long_func_label1934
.long_func_label1912:
# %op3585 = phi i32 [ %op3586, %label1926 ], [ %op3587, %label1934 ]
# %op1914 = sdiv i32 %op3582, 2
	ld.w $t0, $fp, -1064
	addi.w $t1, $zero, 2
	div.w $t7, $t0, $t1
# %op1916 = sdiv i32 %op3581, 2
	ld.w $t0, $fp, -1060
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1072
# %op1918 = add i32 %op3583, 1
	ld.w $t0, $fp, -1068
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1076
# br label %label1893
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -1072
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1076
	st.d $t0, $fp, -1584
	st.d $t7, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1060
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1068
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1064
	b .long_func_label1893
.long_func_label1919:
# %op1922 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3583
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1068
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1923 = load i32, i32* %op1922
	ld.w $t6, $t6, 0
# %op1924 = mul i32 1, %op1923
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1925 = add i32 %op3584, %op1924
	add.w $t6, $t5, $t6
# br label %label1926
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1080
	b .long_func_label1926
.long_func_label1926:
# %op3586 = phi i32 [ %op3584, %label1904 ], [ %op1925, %label1919 ]
# br label %label1912
	ld.w $t0, $fp, -1080
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1912
.long_func_label1927:
# %op1930 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3583
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1068
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op1931 = load i32, i32* %op1930
	ld.w $t7, $t7, 0
# %op1932 = mul i32 1, %op1931
	addi.w $t0, $zero, 1
	mul.w $t7, $t0, $t7
# %op1933 = add i32 %op3584, %op1932
	add.w $t7, $t5, $t7
# br label %label1934
	st.d $t7, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1084
	b .long_func_label1934
.long_func_label1934:
# %op3587 = phi i32 [ %op3584, %label1908 ], [ %op1933, %label1927 ]
# br label %label1912
	ld.w $t0, $fp, -1084
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1912
.long_func_label1935:
# %op3588 = phi i32 [ %op3575, %label1900 ], [ %op1956, %label1952 ]
# %op3589 = phi i32 [ %op3576, %label1900 ], [ %op1954, %label1952 ]
# %op3590 = phi i32 [ 0, %label1900 ], [ %op1958, %label1952 ]
# %op3591 = phi i32 [ 0, %label1900 ], [ %op3592, %label1952 ]
# %op1937 = icmp slt i32 %op3590, 16
	ld.w $t0, $fp, -1096
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op1937, label %label1938, label %label1942
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1938
	b .long_func_label1942
.long_func_label1938:
# %op1940 = srem i32 %op3589, 2
	ld.w $t0, $fp, -1092
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1941 = icmp ne i32 0, %op1940
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1941, label %label1959, label %label1952
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1959
	or $t0, $zero, $t7
	st.w $t0, $fp, -1100
	b .long_func_label1952
.long_func_label1942:
# br label %label1964
	b .long_func_label1964
.long_func_label1945:
# %op1948 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3590
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1096
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1949 = load i32, i32* %op1948
	ld.w $t6, $t6, 0
# %op1950 = mul i32 1, %op1949
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1951 = add i32 %op3591, %op1950
	add.w $t6, $t7, $t6
# br label %label1952
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1100
	b .long_func_label1952
.long_func_label1952:
# %op3592 = phi i32 [ %op3591, %label1938 ], [ %op3591, %label1959 ], [ %op1951, %label1945 ]
# %op1954 = sdiv i32 %op3589, 2
	ld.w $t0, $fp, -1092
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op1956 = sdiv i32 %op3588, 2
	ld.w $t0, $fp, -1088
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1104
# %op1958 = add i32 %op3590, 1
	ld.w $t0, $fp, -1096
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1108
# br label %label1935
	ld.w $t0, $fp, -1104
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1100
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1108
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1088
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1096
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1092
	b .long_func_label1935
.long_func_label1959:
# %op1961 = srem i32 %op3588, 2
	ld.w $t0, $fp, -1088
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1962 = icmp ne i32 0, %op1961
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1962, label %label1945, label %label1952
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1945
	or $t0, $zero, $t7
	st.w $t0, $fp, -1100
	b .long_func_label1952
.long_func_label1964:
# %op1966 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1967 = load i32, i32* %op1966
	ld.w $t6, $t6, 0
# %op1968 = mul i32 %op3591, %op1967
	mul.w $t6, $t7, $t6
# br label %label1972
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1120
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1116
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1112
	b .long_func_label1972
.long_func_label1969:
# %op3596 = phi i32 [ 0, %label1963 ], [ %op3600, %label1979 ]
# br label %label1884
	st.d $t6, $fp, -1568
	st.d $t5, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label1884
.long_func_label1972:
# %op3597 = phi i32 [ 65535, %label1964 ], [ %op1991, %label1987 ]
# %op3598 = phi i32 [ %op1968, %label1964 ], [ %op1989, %label1987 ]
# %op3599 = phi i32 [ 0, %label1964 ], [ %op1993, %label1987 ]
# %op3600 = phi i32 [ 0, %label1964 ], [ %op3601, %label1987 ]
# %op1974 = icmp slt i32 %op3599, 16
	ld.w $t0, $fp, -1116
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op1974, label %label1975, label %label1979
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1975
	b .long_func_label1979
.long_func_label1975:
# %op1977 = srem i32 %op3598, 2
	ld.w $t0, $fp, -1112
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op1978 = icmp ne i32 0, %op1977
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1978, label %label1994, label %label1987
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1994
	ld.w $t0, $fp, -1120
	or $t0, $zero, $t0
	st.w $t0, $fp, -1124
	b .long_func_label1987
.long_func_label1979:
# br label %label1969
	ld.w $t0, $fp, -1120
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label1969
.long_func_label1980:
# %op1983 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3599
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1116
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op1984 = load i32, i32* %op1983
	ld.w $t6, $t6, 0
# %op1985 = mul i32 1, %op1984
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op1986 = add i32 %op3600, %op1985
	ld.w $t0, $fp, -1120
	add.w $t6, $t0, $t6
# br label %label1987
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1124
	b .long_func_label1987
.long_func_label1987:
# %op3601 = phi i32 [ %op3600, %label1975 ], [ %op3600, %label1994 ], [ %op1986, %label1980 ]
# %op1989 = sdiv i32 %op3598, 2
	ld.w $t0, $fp, -1112
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op1991 = sdiv i32 %op3597, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -1128
# %op1993 = add i32 %op3599, 1
	ld.w $t0, $fp, -1116
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1132
# br label %label1972
	ld.w $t0, $fp, -1128
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1124
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1132
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1120
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1116
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1112
	b .long_func_label1972
.long_func_label1994:
# %op1996 = srem i32 %op3597, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t7, $t1
# %op1997 = icmp ne i32 0, %op1996
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op1997, label %label1980, label %label1987
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label1980
	ld.w $t0, $fp, -1120
	or $t0, $zero, $t0
	st.w $t0, $fp, -1124
	b .long_func_label1987
.long_func_label1998:
# %op3603 = phi i32 [ %op3556, %label1878 ], [ %op3624, %label2086 ]
# %op3604 = phi i32 [ %op3556, %label1878 ], [ %op3612, %label2086 ]
# %op2000 = icmp ne i32 0, %op3603
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t5,$t0,$t8
# br i1 %op2000, label %label2001, label %label2004
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2001
	b .long_func_label2004
.long_func_label2001:
# br label %label2010
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t4, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t2, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1136
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1144
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1140
	b .long_func_label2010
.long_func_label2004:
# br label %label2118
	b .long_func_label2118
.long_func_label2010:
# %op3609 = phi i32 [ %op3603, %label2001 ], [ %op2033, %label2029 ]
# %op3610 = phi i32 [ %op3604, %label2001 ], [ %op2031, %label2029 ]
# %op3611 = phi i32 [ 0, %label2001 ], [ %op2035, %label2029 ]
# %op3612 = phi i32 [ 0, %label2001 ], [ %op3613, %label2029 ]
# %op2012 = icmp slt i32 %op3611, 16
	ld.w $t0, $fp, -1144
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2012, label %label2013, label %label2017
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2013
	b .long_func_label2017
.long_func_label2013:
# %op2015 = srem i32 %op3610, 2
	ld.w $t0, $fp, -1140
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2016 = icmp ne i32 0, %op2015
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2016, label %label2021, label %label2025
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2021
	b .long_func_label2025
.long_func_label2017:
# br label %label2052
	st.d $t2, $fp, -1568
	st.d $t4, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1164
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1172
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1168
	b .long_func_label2052
.long_func_label2021:
# %op2023 = srem i32 %op3609, 2
	ld.w $t0, $fp, -1136
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2024 = icmp eq i32 %op2023, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t6,$t8,$t0
# br i1 %op2024, label %label2036, label %label2043
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2036
	or $t0, $zero, $t5
	st.w $t0, $fp, -1156
	b .long_func_label2043
.long_func_label2025:
# %op2027 = srem i32 %op3609, 2
	ld.w $t0, $fp, -1136
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op2028 = icmp ne i32 0, %op2027
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op2028, label %label2044, label %label2051
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label2044
	or $t0, $zero, $t5
	st.w $t0, $fp, -1160
	b .long_func_label2051
.long_func_label2029:
# %op3613 = phi i32 [ %op3614, %label2043 ], [ %op3615, %label2051 ]
# %op2031 = sdiv i32 %op3610, 2
	ld.w $t0, $fp, -1140
	addi.w $t1, $zero, 2
	div.w $t7, $t0, $t1
# %op2033 = sdiv i32 %op3609, 2
	ld.w $t0, $fp, -1136
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1148
# %op2035 = add i32 %op3611, 1
	ld.w $t0, $fp, -1144
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1152
# br label %label2010
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -1148
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1152
	st.d $t0, $fp, -1584
	st.d $t7, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1136
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1144
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1140
	b .long_func_label2010
.long_func_label2036:
# %op2039 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3611
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1144
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2040 = load i32, i32* %op2039
	ld.w $t6, $t6, 0
# %op2041 = mul i32 1, %op2040
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2042 = add i32 %op3612, %op2041
	add.w $t6, $t5, $t6
# br label %label2043
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1156
	b .long_func_label2043
.long_func_label2043:
# %op3614 = phi i32 [ %op3612, %label2021 ], [ %op2042, %label2036 ]
# br label %label2029
	ld.w $t0, $fp, -1156
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2029
.long_func_label2044:
# %op2047 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3611
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1144
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op2048 = load i32, i32* %op2047
	ld.w $t7, $t7, 0
# %op2049 = mul i32 1, %op2048
	addi.w $t0, $zero, 1
	mul.w $t7, $t0, $t7
# %op2050 = add i32 %op3612, %op2049
	add.w $t7, $t5, $t7
# br label %label2051
	st.d $t7, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1160
	b .long_func_label2051
.long_func_label2051:
# %op3615 = phi i32 [ %op3612, %label2025 ], [ %op2050, %label2044 ]
# br label %label2029
	ld.w $t0, $fp, -1160
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2029
.long_func_label2052:
# %op3616 = phi i32 [ %op3603, %label2017 ], [ %op2073, %label2069 ]
# %op3617 = phi i32 [ %op3604, %label2017 ], [ %op2071, %label2069 ]
# %op3618 = phi i32 [ 0, %label2017 ], [ %op2075, %label2069 ]
# %op3619 = phi i32 [ 0, %label2017 ], [ %op3620, %label2069 ]
# %op2054 = icmp slt i32 %op3618, 16
	ld.w $t0, $fp, -1168
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2054, label %label2055, label %label2059
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2055
	b .long_func_label2059
.long_func_label2055:
# %op2057 = srem i32 %op3617, 2
	ld.w $t0, $fp, -1164
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2058 = icmp ne i32 0, %op2057
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2058, label %label2076, label %label2069
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2076
	ld.w $t0, $fp, -1172
	or $t0, $zero, $t0
	st.w $t0, $fp, -1176
	b .long_func_label2069
.long_func_label2059:
# br label %label2081
	b .long_func_label2081
.long_func_label2062:
# %op2065 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3618
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1168
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2066 = load i32, i32* %op2065
	ld.w $t6, $t6, 0
# %op2067 = mul i32 1, %op2066
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2068 = add i32 %op3619, %op2067
	ld.w $t0, $fp, -1172
	add.w $t6, $t0, $t6
# br label %label2069
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1176
	b .long_func_label2069
.long_func_label2069:
# %op3620 = phi i32 [ %op3619, %label2055 ], [ %op3619, %label2076 ], [ %op2068, %label2062 ]
# %op2071 = sdiv i32 %op3617, 2
	ld.w $t0, $fp, -1164
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op2073 = sdiv i32 %op3616, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -1180
# %op2075 = add i32 %op3618, 1
	ld.w $t0, $fp, -1168
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1184
# br label %label2052
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -1180
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1176
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -1184
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1164
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1172
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1168
	b .long_func_label2052
.long_func_label2076:
# %op2078 = srem i32 %op3616, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t7, $t1
# %op2079 = icmp ne i32 0, %op2078
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2079, label %label2062, label %label2069
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2062
	ld.w $t0, $fp, -1172
	or $t0, $zero, $t0
	st.w $t0, $fp, -1176
	b .long_func_label2069
.long_func_label2081:
# %op2083 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2084 = load i32, i32* %op2083
	ld.w $t6, $t6, 0
# %op2085 = mul i32 %op3619, %op2084
	ld.w $t0, $fp, -1172
	mul.w $t6, $t0, $t6
# br label %label2089
	st.d $t6, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1196
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1188
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1192
	b .long_func_label2089
.long_func_label2086:
# %op3624 = phi i32 [ 0, %label2080 ], [ %op3628, %label2096 ]
# br label %label1998
	st.d $t5, $fp, -1568
	st.d $t6, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label1998
.long_func_label2089:
# %op3625 = phi i32 [ 65535, %label2081 ], [ %op2108, %label2104 ]
# %op3626 = phi i32 [ %op2085, %label2081 ], [ %op2106, %label2104 ]
# %op3627 = phi i32 [ 0, %label2081 ], [ %op2110, %label2104 ]
# %op3628 = phi i32 [ 0, %label2081 ], [ %op3629, %label2104 ]
# %op2091 = icmp slt i32 %op3627, 16
	ld.w $t0, $fp, -1192
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2091, label %label2092, label %label2096
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2092
	b .long_func_label2096
.long_func_label2092:
# %op2094 = srem i32 %op3626, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t7, $t1
# %op2095 = icmp ne i32 0, %op2094
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2095, label %label2111, label %label2104
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2111
	ld.w $t0, $fp, -1196
	or $t0, $zero, $t0
	st.w $t0, $fp, -1200
	b .long_func_label2104
.long_func_label2096:
# br label %label2086
	ld.w $t0, $fp, -1196
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2086
.long_func_label2097:
# %op2100 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3627
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1192
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2101 = load i32, i32* %op2100
	ld.w $t6, $t6, 0
# %op2102 = mul i32 1, %op2101
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2103 = add i32 %op3628, %op2102
	ld.w $t0, $fp, -1196
	add.w $t6, $t0, $t6
# br label %label2104
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1200
	b .long_func_label2104
.long_func_label2104:
# %op3629 = phi i32 [ %op3628, %label2092 ], [ %op3628, %label2111 ], [ %op2103, %label2097 ]
# %op2106 = sdiv i32 %op3626, 2
	addi.w $t1, $zero, 2
	div.w $t6, $t7, $t1
# %op2108 = sdiv i32 %op3625, 2
	ld.w $t0, $fp, -1188
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1204
# %op2110 = add i32 %op3627, 1
	ld.w $t0, $fp, -1192
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1208
# br label %label2089
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -1200
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1204
	st.d $t0, $fp, -1584
	ld.w $t0, $fp, -1208
	st.d $t0, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1196
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1188
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1192
	b .long_func_label2089
.long_func_label2111:
# %op2113 = srem i32 %op3625, 2
	ld.w $t0, $fp, -1188
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2114 = icmp ne i32 0, %op2113
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2114, label %label2097, label %label2104
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2097
	ld.w $t0, $fp, -1196
	or $t0, $zero, $t0
	st.w $t0, $fp, -1200
	b .long_func_label2104
.long_func_label2118:
# br label %label2126
	b .long_func_label2126
.long_func_label2121:
# %op3631 = phi i32 [ %op3632, %label2125 ], [ %op3634, %label2131 ]
# br label %label1833
	st.d $t3, $fp, -1568
	st.d $t2, $fp, -1576
	st.d $t5, $fp, -1584
	ld.d $a4, $fp, -1568
	ld.d $a6, $fp, -1576
	ld.d $a7, $fp, -1584
	b .long_func_label1833
.long_func_label2126:
# %op2128 = icmp sgt i32 %op3555, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t4,$t1,$a7
# br i1 %op2128, label %label2132, label %label2146
	addi.w $t0,$zero,0
	blt $t0,$t4,.long_func_label2132
	b .long_func_label2146
.long_func_label2131:
# %op3634 = phi i32 [ %op3636, %label2152 ], [ %op3555, %label2129 ]
# br label %label2121
	st.d $t4, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2121
.long_func_label2132:
# %op2135 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op2136 = load i32, i32* %op2135
	ld.w $t4, $t4, 0
# %op2137 = sdiv i32 %op3555, %op2136
	div.w $t4, $a7, $t4
# %op2139 = add i32 %op2137, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t4, $t4, $t1
# %op2143 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op2144 = load i32, i32* %op2143
	ld.w $t5, $t5, 0
# %op2145 = sub i32 %op2139, %op2144
	sub.w $t4, $t4, $t5
# br label %label2152
	st.d $t4, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2152
.long_func_label2146:
# %op2149 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t4,$t1,$t0
# %op2150 = load i32, i32* %op2149
	ld.w $t4, $t4, 0
# %op2151 = sdiv i32 %op3555, %op2150
	div.w $t4, $a7, $t4
# br label %label2152
	st.d $t4, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2152
.long_func_label2152:
# %op3636 = phi i32 [ %op2145, %label2132 ], [ %op2151, %label2146 ]
# br label %label2131
	st.d $t5, $fp, -1568
	ld.d $t4, $fp, -1568
	b .long_func_label2131
.long_func_label2156:
# br label %label2164
	b .long_func_label2164
.long_func_label2159:
# %op3638 = phi i32 [ %op3639, %label2163 ], [ %op3641, %label2169 ]
# br label %label1466
	st.d $a5, $fp, -1568
	st.d $a7, $fp, -1576
	st.d $a4, $fp, -1584
	ld.d $a1, $fp, -1568
	ld.d $a2, $fp, -1576
	ld.d $a3, $fp, -1584
	b .long_func_label1466
.long_func_label2164:
# %op2166 = icmp sgt i32 %op3434, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $a6,$t1,$a2
# br i1 %op2166, label %label2170, label %label2184
	addi.w $t0,$zero,0
	blt $t0,$a6,.long_func_label2170
	b .long_func_label2184
.long_func_label2169:
# %op3641 = phi i32 [ %op3643, %label2190 ], [ %op3434, %label2167 ]
# br label %label2159
	st.d $a6, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label2159
.long_func_label2170:
# %op2173 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a6,$t1,$t0
# %op2174 = load i32, i32* %op2173
	ld.w $a6, $a6, 0
# %op2175 = sdiv i32 %op3434, %op2174
	div.w $a6, $a2, $a6
# %op2177 = add i32 %op2175, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $a6, $a6, $t1
# %op2181 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op2182 = load i32, i32* %op2181
	ld.w $a7, $a7, 0
# %op2183 = sub i32 %op2177, %op2182
	sub.w $a6, $a6, $a7
# br label %label2190
	st.d $a6, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label2190
.long_func_label2184:
# %op2187 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a6,$t1,$t0
# %op2188 = load i32, i32* %op2187
	ld.w $a6, $a6, 0
# %op2189 = sdiv i32 %op3434, %op2188
	div.w $a6, $a2, $a6
# br label %label2190
	st.d $a6, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label2190
.long_func_label2190:
# %op3643 = phi i32 [ %op2183, %label2170 ], [ %op2189, %label2184 ]
# br label %label2169
	st.d $a7, $fp, -1568
	ld.d $a6, $fp, -1568
	b .long_func_label2169
.long_func_label2191:
# %op3665 = phi i32 [ 0, %label1465 ], [ %op2930, %label2928 ]
# %op2193 = icmp slt i32 %op3665, 16
	addi.w $t1, $zero, 16
	slt $a1,$a0,$t1
# br i1 %op2193, label %label2194, label %label2199
	addi.w $t0,$zero,0
	blt $t0,$a1,.long_func_label2194
	b .long_func_label2199
.long_func_label2194:
# br label %label2200
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1568
	st.d $a0, $fp, -1576
	addi.w $t0, $zero, 2
	st.d $t0, $fp, -1584
	ld.d $a1, $fp, -1568
	ld.d $a2, $fp, -1576
	ld.d $a3, $fp, -1584
	b .long_func_label2200
.long_func_label2199:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b long_func_exit
.long_func_label2200:
# %op3688 = phi i32 [ 1, %label2194 ], [ %op3709, %label2895 ]
# %op3689 = phi i32 [ %op3665, %label2194 ], [ %op3893, %label2895 ]
# %op3690 = phi i32 [ 2, %label2194 ], [ %op3809, %label2895 ]
# %op2202 = icmp sgt i32 %op3689, 0
	addi.w $t1, $zero, 0
	slt $a4,$t1,$a2
# br i1 %op2202, label %label2203, label %label2205
	addi.w $t0,$zero,0
	blt $t0,$a4,.long_func_label2203
	b .long_func_label2205
.long_func_label2203:
# br label %label2212
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	st.d $a2, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $a4, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	ld.d $a7, $fp, -1592
	b .long_func_label2212
.long_func_label2205:
# %op2208 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3665
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a2,$t1,$t0
# %op2209 = load i32, i32* %op2208
	ld.w $a2, $a2, 0
# %op2211 = icmp ne i32 %op2209, %op3688
	slt $t8,$a1,$a2
	slt $t0,$a2,$a1
	or $a1,$t0,$t8
# br i1 %op2211, label %label2927, label %label2928
	addi.w $t0,$zero,0
	blt $t0,$a1,.long_func_label2927
	b .long_func_label2928
.long_func_label2212:
# %op3695 = phi i32 [ 1, %label2203 ], [ %op2233, %label2229 ]
# %op3696 = phi i32 [ %op3689, %label2203 ], [ %op2231, %label2229 ]
# %op3697 = phi i32 [ 0, %label2203 ], [ %op2235, %label2229 ]
# %op3698 = phi i32 [ 0, %label2203 ], [ %op3699, %label2229 ]
# %op2214 = icmp slt i32 %op3697, 16
	addi.w $t1, $zero, 16
	slt $t2,$a7,$t1
# br i1 %op2214, label %label2215, label %label2219
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2215
	b .long_func_label2219
.long_func_label2215:
# %op2217 = srem i32 %op3696, 2
	addi.w $t1, $zero, 2
	mod.w $t2, $a6, $t1
# %op2218 = icmp ne i32 0, %op2217
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t2,$t0,$t8
# br i1 %op2218, label %label2236, label %label2229
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2236
	or $t3, $zero, $a5
	b .long_func_label2229
.long_func_label2219:
# %op2221 = icmp ne i32 0, %op3698
	addi.w $t0, $zero, 0
	slt $t8,$a5,$t0
	slt $t0,$t0,$a5
	or $a4,$t0,$t8
# br i1 %op2221, label %label2240, label %label2246
	addi.w $t0,$zero,0
	blt $t0,$a4,.long_func_label2240
	or $a5, $zero, $a1
	b .long_func_label2246
.long_func_label2222:
# %op2225 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3697
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t2,$t1,$t0
# %op2226 = load i32, i32* %op2225
	ld.w $t2, $t2, 0
# %op2227 = mul i32 1, %op2226
	addi.w $t0, $zero, 1
	mul.w $t2, $t0, $t2
# %op2228 = add i32 %op3698, %op2227
	add.w $t2, $a5, $t2
# br label %label2229
	st.d $t2, $fp, -1568
	ld.d $t3, $fp, -1568
	b .long_func_label2229
.long_func_label2229:
# %op3699 = phi i32 [ %op3698, %label2215 ], [ %op3698, %label2236 ], [ %op2228, %label2222 ]
# %op2231 = sdiv i32 %op3696, 2
	addi.w $t1, $zero, 2
	div.w $t2, $a6, $t1
# %op2233 = sdiv i32 %op3695, 2
	addi.w $t1, $zero, 2
	div.w $t4, $a4, $t1
# %op2235 = add i32 %op3697, 1
	addi.w $t1, $zero, 1
	add.w $t5, $a7, $t1
# br label %label2212
	st.d $t4, $fp, -1568
	st.d $t3, $fp, -1576
	st.d $t2, $fp, -1584
	st.d $t5, $fp, -1592
	ld.d $a4, $fp, -1568
	ld.d $a5, $fp, -1576
	ld.d $a6, $fp, -1584
	ld.d $a7, $fp, -1592
	b .long_func_label2212
.long_func_label2236:
# %op2238 = srem i32 %op3695, 2
	addi.w $t1, $zero, 2
	mod.w $t2, $a4, $t1
# %op2239 = icmp ne i32 0, %op2238
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t2,$t0,$t8
# br i1 %op2239, label %label2222, label %label2229
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2222
	or $t3, $zero, $a5
	b .long_func_label2229
.long_func_label2240:
# br label %label2252
	st.d $a3, $fp, -1568
	st.d $a1, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	ld.d $a4, $fp, -1568
	ld.d $a6, $fp, -1576
	ld.d $a7, $fp, -1584
	b .long_func_label2252
.long_func_label2246:
# %op3709 = phi i32 [ %op3688, %label2219 ], [ %op3720, %label2257 ]
# br label %label2569
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $a3, $fp, -1576
	st.d $a3, $fp, -1584
	ld.d $a4, $fp, -1568
	ld.d $a6, $fp, -1576
	ld.d $a7, $fp, -1584
	b .long_func_label2569
.long_func_label2252:
# %op3720 = phi i32 [ 0, %label2240 ], [ %op3735, %label2537 ]
# %op3721 = phi i32 [ %op3690, %label2240 ], [ %op3797, %label2537 ]
# %op3722 = phi i32 [ %op3688, %label2240 ], [ %op3770, %label2537 ]
# %op2254 = icmp ne i32 0, %op3721
	addi.w $t0, $zero, 0
	slt $t8,$a4,$t0
	slt $t0,$t0,$a4
	or $t2,$t0,$t8
# br i1 %op2254, label %label2255, label %label2257
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2255
	b .long_func_label2257
.long_func_label2255:
# br label %label2260
	st.d $a4, $fp, -1568
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t2, $fp, -1568
	ld.d $t3, $fp, -1576
	ld.d $t4, $fp, -1584
	ld.d $t5, $fp, -1592
	b .long_func_label2260
.long_func_label2257:
# br label %label2246
	st.d $a7, $fp, -1568
	ld.d $a5, $fp, -1568
	b .long_func_label2246
.long_func_label2260:
# %op3727 = phi i32 [ 1, %label2255 ], [ %op2281, %label2277 ]
# %op3728 = phi i32 [ %op3721, %label2255 ], [ %op2279, %label2277 ]
# %op3729 = phi i32 [ 0, %label2255 ], [ %op2283, %label2277 ]
# %op3730 = phi i32 [ 0, %label2255 ], [ %op3731, %label2277 ]
# %op2262 = icmp slt i32 %op3729, 16
	addi.w $t1, $zero, 16
	slt $t6,$t5,$t1
# br i1 %op2262, label %label2263, label %label2267
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2263
	b .long_func_label2267
.long_func_label2263:
# %op2265 = srem i32 %op3728, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t2, $t1
# %op2266 = icmp ne i32 0, %op2265
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2266, label %label2284, label %label2277
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2284
	or $t7, $zero, $t4
	b .long_func_label2277
.long_func_label2267:
# %op2269 = icmp ne i32 0, %op3730
	addi.w $t0, $zero, 0
	slt $t8,$t4,$t0
	slt $t0,$t0,$t4
	or $t2,$t0,$t8
# br i1 %op2269, label %label2288, label %label2294
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2288
	or $t3, $zero, $a7
	b .long_func_label2294
.long_func_label2270:
# %op2273 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3729
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2274 = load i32, i32* %op2273
	ld.w $t6, $t6, 0
# %op2275 = mul i32 1, %op2274
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2276 = add i32 %op3730, %op2275
	add.w $t6, $t4, $t6
# br label %label2277
	st.d $t6, $fp, -1568
	ld.d $t7, $fp, -1568
	b .long_func_label2277
.long_func_label2277:
# %op3731 = phi i32 [ %op3730, %label2263 ], [ %op3730, %label2284 ], [ %op2276, %label2270 ]
# %op2279 = sdiv i32 %op3728, 2
	addi.w $t1, $zero, 2
	div.w $t6, $t2, $t1
# %op2281 = sdiv i32 %op3727, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t3, $t1
	st.w $t0, $fp, -1228
# %op2283 = add i32 %op3729, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t5, $t1
	st.w $t0, $fp, -1232
# br label %label2260
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -1228
	st.d $t0, $fp, -1576
	st.d $t7, $fp, -1584
	ld.w $t0, $fp, -1232
	st.d $t0, $fp, -1592
	ld.d $t2, $fp, -1568
	ld.d $t3, $fp, -1576
	ld.d $t4, $fp, -1584
	ld.d $t5, $fp, -1592
	b .long_func_label2260
.long_func_label2284:
# %op2286 = srem i32 %op3727, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t3, $t1
# %op2287 = icmp ne i32 0, %op2286
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2287, label %label2270, label %label2277
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2270
	or $t7, $zero, $t4
	b .long_func_label2277
.long_func_label2288:
# br label %label2300
	st.d $a6, $fp, -1568
	st.d $a7, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label2300
.long_func_label2294:
# %op3735 = phi i32 [ %op3720, %label2267 ], [ %op3742, %label2306 ]
# br label %label2414
	st.d $a6, $fp, -1568
	st.d $a6, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label2414
.long_func_label2300:
# %op3741 = phi i32 [ %op3722, %label2288 ], [ %op3762, %label2385 ]
# %op3742 = phi i32 [ %op3720, %label2288 ], [ %op3750, %label2385 ]
# %op2302 = icmp ne i32 0, %op3741
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t5,$t0,$t8
# br i1 %op2302, label %label2303, label %label2306
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2303
	b .long_func_label2306
.long_func_label2303:
# br label %label2309
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1236
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1244
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1240
	b .long_func_label2309
.long_func_label2306:
# br label %label2294
	st.d $t4, $fp, -1568
	ld.d $t3, $fp, -1568
	b .long_func_label2294
.long_func_label2309:
# %op3747 = phi i32 [ %op3741, %label2303 ], [ %op2332, %label2328 ]
# %op3748 = phi i32 [ %op3742, %label2303 ], [ %op2330, %label2328 ]
# %op3749 = phi i32 [ 0, %label2303 ], [ %op2334, %label2328 ]
# %op3750 = phi i32 [ 0, %label2303 ], [ %op3751, %label2328 ]
# %op2311 = icmp slt i32 %op3749, 16
	ld.w $t0, $fp, -1244
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2311, label %label2312, label %label2316
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2312
	b .long_func_label2316
.long_func_label2312:
# %op2314 = srem i32 %op3748, 2
	ld.w $t0, $fp, -1240
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2315 = icmp ne i32 0, %op2314
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2315, label %label2320, label %label2324
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2320
	b .long_func_label2324
.long_func_label2316:
# br label %label2351
	st.d $t2, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1264
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1272
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1268
	b .long_func_label2351
.long_func_label2320:
# %op2322 = srem i32 %op3747, 2
	ld.w $t0, $fp, -1236
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2323 = icmp eq i32 %op2322, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t6,$t8,$t0
# br i1 %op2323, label %label2335, label %label2342
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2335
	or $t0, $zero, $t5
	st.w $t0, $fp, -1256
	b .long_func_label2342
.long_func_label2324:
# %op2326 = srem i32 %op3747, 2
	ld.w $t0, $fp, -1236
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op2327 = icmp ne i32 0, %op2326
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op2327, label %label2343, label %label2350
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label2343
	or $t0, $zero, $t5
	st.w $t0, $fp, -1260
	b .long_func_label2350
.long_func_label2328:
# %op3751 = phi i32 [ %op3752, %label2342 ], [ %op3753, %label2350 ]
# %op2330 = sdiv i32 %op3748, 2
	ld.w $t0, $fp, -1240
	addi.w $t1, $zero, 2
	div.w $t7, $t0, $t1
# %op2332 = sdiv i32 %op3747, 2
	ld.w $t0, $fp, -1236
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1248
# %op2334 = add i32 %op3749, 1
	ld.w $t0, $fp, -1244
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1252
# br label %label2309
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -1248
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1252
	st.d $t0, $fp, -1584
	st.d $t7, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1236
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1244
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1240
	b .long_func_label2309
.long_func_label2335:
# %op2338 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3749
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1244
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2339 = load i32, i32* %op2338
	ld.w $t6, $t6, 0
# %op2340 = mul i32 1, %op2339
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2341 = add i32 %op3750, %op2340
	add.w $t6, $t5, $t6
# br label %label2342
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1256
	b .long_func_label2342
.long_func_label2342:
# %op3752 = phi i32 [ %op3750, %label2320 ], [ %op2341, %label2335 ]
# br label %label2328
	ld.w $t0, $fp, -1256
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2328
.long_func_label2343:
# %op2346 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3749
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1244
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op2347 = load i32, i32* %op2346
	ld.w $t7, $t7, 0
# %op2348 = mul i32 1, %op2347
	addi.w $t0, $zero, 1
	mul.w $t7, $t0, $t7
# %op2349 = add i32 %op3750, %op2348
	add.w $t7, $t5, $t7
# br label %label2350
	st.d $t7, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1260
	b .long_func_label2350
.long_func_label2350:
# %op3753 = phi i32 [ %op3750, %label2324 ], [ %op2349, %label2343 ]
# br label %label2328
	ld.w $t0, $fp, -1260
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2328
.long_func_label2351:
# %op3754 = phi i32 [ %op3741, %label2316 ], [ %op2372, %label2368 ]
# %op3755 = phi i32 [ %op3742, %label2316 ], [ %op2370, %label2368 ]
# %op3756 = phi i32 [ 0, %label2316 ], [ %op2374, %label2368 ]
# %op3757 = phi i32 [ 0, %label2316 ], [ %op3758, %label2368 ]
# %op2353 = icmp slt i32 %op3756, 16
	ld.w $t0, $fp, -1272
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2353, label %label2354, label %label2358
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2354
	b .long_func_label2358
.long_func_label2354:
# %op2356 = srem i32 %op3755, 2
	ld.w $t0, $fp, -1268
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2357 = icmp ne i32 0, %op2356
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2357, label %label2375, label %label2368
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2375
	or $t0, $zero, $t7
	st.w $t0, $fp, -1276
	b .long_func_label2368
.long_func_label2358:
# br label %label2380
	b .long_func_label2380
.long_func_label2361:
# %op2364 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3756
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1272
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2365 = load i32, i32* %op2364
	ld.w $t6, $t6, 0
# %op2366 = mul i32 1, %op2365
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2367 = add i32 %op3757, %op2366
	add.w $t6, $t7, $t6
# br label %label2368
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1276
	b .long_func_label2368
.long_func_label2368:
# %op3758 = phi i32 [ %op3757, %label2354 ], [ %op3757, %label2375 ], [ %op2367, %label2361 ]
# %op2370 = sdiv i32 %op3755, 2
	ld.w $t0, $fp, -1268
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op2372 = sdiv i32 %op3754, 2
	ld.w $t0, $fp, -1264
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1280
# %op2374 = add i32 %op3756, 1
	ld.w $t0, $fp, -1272
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1284
# br label %label2351
	ld.w $t0, $fp, -1280
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1276
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1284
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1264
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1272
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1268
	b .long_func_label2351
.long_func_label2375:
# %op2377 = srem i32 %op3754, 2
	ld.w $t0, $fp, -1264
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2378 = icmp ne i32 0, %op2377
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2378, label %label2361, label %label2368
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2361
	or $t0, $zero, $t7
	st.w $t0, $fp, -1276
	b .long_func_label2368
.long_func_label2380:
# %op2382 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2383 = load i32, i32* %op2382
	ld.w $t6, $t6, 0
# %op2384 = mul i32 %op3757, %op2383
	mul.w $t6, $t7, $t6
# br label %label2388
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1296
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1292
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1288
	b .long_func_label2388
.long_func_label2385:
# %op3762 = phi i32 [ 0, %label2379 ], [ %op3766, %label2395 ]
# br label %label2300
	st.d $t6, $fp, -1568
	st.d $t5, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label2300
.long_func_label2388:
# %op3763 = phi i32 [ 65535, %label2380 ], [ %op2407, %label2403 ]
# %op3764 = phi i32 [ %op2384, %label2380 ], [ %op2405, %label2403 ]
# %op3765 = phi i32 [ 0, %label2380 ], [ %op2409, %label2403 ]
# %op3766 = phi i32 [ 0, %label2380 ], [ %op3767, %label2403 ]
# %op2390 = icmp slt i32 %op3765, 16
	ld.w $t0, $fp, -1292
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2390, label %label2391, label %label2395
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2391
	b .long_func_label2395
.long_func_label2391:
# %op2393 = srem i32 %op3764, 2
	ld.w $t0, $fp, -1288
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2394 = icmp ne i32 0, %op2393
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2394, label %label2410, label %label2403
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2410
	ld.w $t0, $fp, -1296
	or $t0, $zero, $t0
	st.w $t0, $fp, -1300
	b .long_func_label2403
.long_func_label2395:
# br label %label2385
	ld.w $t0, $fp, -1296
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2385
.long_func_label2396:
# %op2399 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3765
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1292
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2400 = load i32, i32* %op2399
	ld.w $t6, $t6, 0
# %op2401 = mul i32 1, %op2400
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2402 = add i32 %op3766, %op2401
	ld.w $t0, $fp, -1296
	add.w $t6, $t0, $t6
# br label %label2403
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1300
	b .long_func_label2403
.long_func_label2403:
# %op3767 = phi i32 [ %op3766, %label2391 ], [ %op3766, %label2410 ], [ %op2402, %label2396 ]
# %op2405 = sdiv i32 %op3764, 2
	ld.w $t0, $fp, -1288
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op2407 = sdiv i32 %op3763, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -1304
# %op2409 = add i32 %op3765, 1
	ld.w $t0, $fp, -1292
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1308
# br label %label2388
	ld.w $t0, $fp, -1304
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1300
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1308
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1296
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1292
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1288
	b .long_func_label2388
.long_func_label2410:
# %op2412 = srem i32 %op3763, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t7, $t1
# %op2413 = icmp ne i32 0, %op2412
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2413, label %label2396, label %label2403
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2396
	ld.w $t0, $fp, -1296
	or $t0, $zero, $t0
	st.w $t0, $fp, -1300
	b .long_func_label2403
.long_func_label2414:
# %op3769 = phi i32 [ %op3722, %label2294 ], [ %op3790, %label2502 ]
# %op3770 = phi i32 [ %op3722, %label2294 ], [ %op3778, %label2502 ]
# %op2416 = icmp ne i32 0, %op3769
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t5,$t0,$t8
# br i1 %op2416, label %label2417, label %label2420
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2417
	b .long_func_label2420
.long_func_label2417:
# br label %label2426
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1312
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1320
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1316
	b .long_func_label2426
.long_func_label2420:
# br label %label2534
	b .long_func_label2534
.long_func_label2426:
# %op3775 = phi i32 [ %op3769, %label2417 ], [ %op2449, %label2445 ]
# %op3776 = phi i32 [ %op3770, %label2417 ], [ %op2447, %label2445 ]
# %op3777 = phi i32 [ 0, %label2417 ], [ %op2451, %label2445 ]
# %op3778 = phi i32 [ 0, %label2417 ], [ %op3779, %label2445 ]
# %op2428 = icmp slt i32 %op3777, 16
	ld.w $t0, $fp, -1320
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2428, label %label2429, label %label2433
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2429
	b .long_func_label2433
.long_func_label2429:
# %op2431 = srem i32 %op3776, 2
	ld.w $t0, $fp, -1316
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2432 = icmp ne i32 0, %op2431
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2432, label %label2437, label %label2441
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2437
	b .long_func_label2441
.long_func_label2433:
# br label %label2468
	st.d $t2, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1340
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1348
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1344
	b .long_func_label2468
.long_func_label2437:
# %op2439 = srem i32 %op3775, 2
	ld.w $t0, $fp, -1312
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2440 = icmp eq i32 %op2439, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t6,$t8,$t0
# br i1 %op2440, label %label2452, label %label2459
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2452
	or $t0, $zero, $t5
	st.w $t0, $fp, -1332
	b .long_func_label2459
.long_func_label2441:
# %op2443 = srem i32 %op3775, 2
	ld.w $t0, $fp, -1312
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op2444 = icmp ne i32 0, %op2443
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op2444, label %label2460, label %label2467
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label2460
	or $t0, $zero, $t5
	st.w $t0, $fp, -1336
	b .long_func_label2467
.long_func_label2445:
# %op3779 = phi i32 [ %op3780, %label2459 ], [ %op3781, %label2467 ]
# %op2447 = sdiv i32 %op3776, 2
	ld.w $t0, $fp, -1316
	addi.w $t1, $zero, 2
	div.w $t7, $t0, $t1
# %op2449 = sdiv i32 %op3775, 2
	ld.w $t0, $fp, -1312
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1324
# %op2451 = add i32 %op3777, 1
	ld.w $t0, $fp, -1320
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1328
# br label %label2426
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -1324
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1328
	st.d $t0, $fp, -1584
	st.d $t7, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1312
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1320
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1316
	b .long_func_label2426
.long_func_label2452:
# %op2455 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3777
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1320
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2456 = load i32, i32* %op2455
	ld.w $t6, $t6, 0
# %op2457 = mul i32 1, %op2456
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2458 = add i32 %op3778, %op2457
	add.w $t6, $t5, $t6
# br label %label2459
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1332
	b .long_func_label2459
.long_func_label2459:
# %op3780 = phi i32 [ %op3778, %label2437 ], [ %op2458, %label2452 ]
# br label %label2445
	ld.w $t0, $fp, -1332
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2445
.long_func_label2460:
# %op2463 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3777
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1320
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op2464 = load i32, i32* %op2463
	ld.w $t7, $t7, 0
# %op2465 = mul i32 1, %op2464
	addi.w $t0, $zero, 1
	mul.w $t7, $t0, $t7
# %op2466 = add i32 %op3778, %op2465
	add.w $t7, $t5, $t7
# br label %label2467
	st.d $t7, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1336
	b .long_func_label2467
.long_func_label2467:
# %op3781 = phi i32 [ %op3778, %label2441 ], [ %op2466, %label2460 ]
# br label %label2445
	ld.w $t0, $fp, -1336
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2445
.long_func_label2468:
# %op3782 = phi i32 [ %op3769, %label2433 ], [ %op2489, %label2485 ]
# %op3783 = phi i32 [ %op3770, %label2433 ], [ %op2487, %label2485 ]
# %op3784 = phi i32 [ 0, %label2433 ], [ %op2491, %label2485 ]
# %op3785 = phi i32 [ 0, %label2433 ], [ %op3786, %label2485 ]
# %op2470 = icmp slt i32 %op3784, 16
	ld.w $t0, $fp, -1348
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2470, label %label2471, label %label2475
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2471
	b .long_func_label2475
.long_func_label2471:
# %op2473 = srem i32 %op3783, 2
	ld.w $t0, $fp, -1344
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2474 = icmp ne i32 0, %op2473
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2474, label %label2492, label %label2485
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2492
	or $t0, $zero, $t7
	st.w $t0, $fp, -1352
	b .long_func_label2485
.long_func_label2475:
# br label %label2497
	b .long_func_label2497
.long_func_label2478:
# %op2481 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3784
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1348
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2482 = load i32, i32* %op2481
	ld.w $t6, $t6, 0
# %op2483 = mul i32 1, %op2482
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2484 = add i32 %op3785, %op2483
	add.w $t6, $t7, $t6
# br label %label2485
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1352
	b .long_func_label2485
.long_func_label2485:
# %op3786 = phi i32 [ %op3785, %label2471 ], [ %op3785, %label2492 ], [ %op2484, %label2478 ]
# %op2487 = sdiv i32 %op3783, 2
	ld.w $t0, $fp, -1344
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op2489 = sdiv i32 %op3782, 2
	ld.w $t0, $fp, -1340
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1356
# %op2491 = add i32 %op3784, 1
	ld.w $t0, $fp, -1348
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1360
# br label %label2468
	ld.w $t0, $fp, -1356
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1352
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1360
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1340
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1348
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1344
	b .long_func_label2468
.long_func_label2492:
# %op2494 = srem i32 %op3782, 2
	ld.w $t0, $fp, -1340
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2495 = icmp ne i32 0, %op2494
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2495, label %label2478, label %label2485
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2478
	or $t0, $zero, $t7
	st.w $t0, $fp, -1352
	b .long_func_label2485
.long_func_label2497:
# %op2499 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2500 = load i32, i32* %op2499
	ld.w $t6, $t6, 0
# %op2501 = mul i32 %op3785, %op2500
	mul.w $t6, $t7, $t6
# br label %label2505
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1372
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1368
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1364
	b .long_func_label2505
.long_func_label2502:
# %op3790 = phi i32 [ 0, %label2496 ], [ %op3794, %label2512 ]
# br label %label2414
	st.d $t6, $fp, -1568
	st.d $t5, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label2414
.long_func_label2505:
# %op3791 = phi i32 [ 65535, %label2497 ], [ %op2524, %label2520 ]
# %op3792 = phi i32 [ %op2501, %label2497 ], [ %op2522, %label2520 ]
# %op3793 = phi i32 [ 0, %label2497 ], [ %op2526, %label2520 ]
# %op3794 = phi i32 [ 0, %label2497 ], [ %op3795, %label2520 ]
# %op2507 = icmp slt i32 %op3793, 16
	ld.w $t0, $fp, -1368
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2507, label %label2508, label %label2512
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2508
	b .long_func_label2512
.long_func_label2508:
# %op2510 = srem i32 %op3792, 2
	ld.w $t0, $fp, -1364
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2511 = icmp ne i32 0, %op2510
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2511, label %label2527, label %label2520
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2527
	ld.w $t0, $fp, -1372
	or $t0, $zero, $t0
	st.w $t0, $fp, -1376
	b .long_func_label2520
.long_func_label2512:
# br label %label2502
	ld.w $t0, $fp, -1372
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2502
.long_func_label2513:
# %op2516 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3793
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1368
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2517 = load i32, i32* %op2516
	ld.w $t6, $t6, 0
# %op2518 = mul i32 1, %op2517
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2519 = add i32 %op3794, %op2518
	ld.w $t0, $fp, -1372
	add.w $t6, $t0, $t6
# br label %label2520
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1376
	b .long_func_label2520
.long_func_label2520:
# %op3795 = phi i32 [ %op3794, %label2508 ], [ %op3794, %label2527 ], [ %op2519, %label2513 ]
# %op2522 = sdiv i32 %op3792, 2
	ld.w $t0, $fp, -1364
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op2524 = sdiv i32 %op3791, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -1380
# %op2526 = add i32 %op3793, 1
	ld.w $t0, $fp, -1368
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1384
# br label %label2505
	ld.w $t0, $fp, -1380
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1376
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1384
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1372
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1368
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1364
	b .long_func_label2505
.long_func_label2527:
# %op2529 = srem i32 %op3791, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t7, $t1
# %op2530 = icmp ne i32 0, %op2529
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2530, label %label2513, label %label2520
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2513
	ld.w $t0, $fp, -1372
	or $t0, $zero, $t0
	st.w $t0, $fp, -1376
	b .long_func_label2520
.long_func_label2534:
# br label %label2542
	b .long_func_label2542
.long_func_label2537:
# %op3797 = phi i32 [ %op3798, %label2541 ], [ %op3800, %label2547 ]
# br label %label2252
	st.d $t5, $fp, -1568
	st.d $t4, $fp, -1576
	st.d $t3, $fp, -1584
	ld.d $a4, $fp, -1568
	ld.d $a6, $fp, -1576
	ld.d $a7, $fp, -1584
	b .long_func_label2252
.long_func_label2542:
# %op2544 = icmp sgt i32 %op3721, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2,$t1,$a4
# br i1 %op2544, label %label2548, label %label2562
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2548
	b .long_func_label2562
.long_func_label2547:
# %op3800 = phi i32 [ %op3802, %label2568 ], [ %op3721, %label2545 ]
# br label %label2537
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2537
.long_func_label2548:
# %op2551 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t2,$t1,$t0
# %op2552 = load i32, i32* %op2551
	ld.w $t2, $t2, 0
# %op2553 = sdiv i32 %op3721, %op2552
	div.w $t2, $a4, $t2
# %op2555 = add i32 %op2553, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t2, $t1
# %op2559 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op2560 = load i32, i32* %op2559
	ld.w $t5, $t5, 0
# %op2561 = sub i32 %op2555, %op2560
	sub.w $t2, $t2, $t5
# br label %label2568
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2568
.long_func_label2562:
# %op2565 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t2,$t1,$t0
# %op2566 = load i32, i32* %op2565
	ld.w $t2, $t2, 0
# %op2567 = sdiv i32 %op3721, %op2566
	div.w $t2, $a4, $t2
# br label %label2568
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2568
.long_func_label2568:
# %op3802 = phi i32 [ %op2561, %label2548 ], [ %op2567, %label2562 ]
# br label %label2547
	st.d $t5, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label2547
.long_func_label2569:
# %op3809 = phi i32 [ 0, %label2246 ], [ %op3824, %label2857 ]
# %op3810 = phi i32 [ %op3690, %label2246 ], [ %op3886, %label2857 ]
# %op3811 = phi i32 [ %op3690, %label2246 ], [ %op3859, %label2857 ]
# %op2571 = icmp ne i32 0, %op3810
	addi.w $t0, $zero, 0
	slt $t8,$a7,$t0
	slt $t0,$t0,$a7
	or $t2,$t0,$t8
# br i1 %op2571, label %label2572, label %label2574
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2572
	b .long_func_label2574
.long_func_label2572:
# br label %label2580
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $a7, $fp, -1592
	ld.d $t2, $fp, -1568
	ld.d $t3, $fp, -1576
	ld.d $t4, $fp, -1584
	ld.d $t5, $fp, -1592
	b .long_func_label2580
.long_func_label2574:
# br label %label2892
	b .long_func_label2892
.long_func_label2580:
# %op3816 = phi i32 [ 1, %label2572 ], [ %op2601, %label2597 ]
# %op3817 = phi i32 [ %op3810, %label2572 ], [ %op2599, %label2597 ]
# %op3818 = phi i32 [ 0, %label2572 ], [ %op2603, %label2597 ]
# %op3819 = phi i32 [ 0, %label2572 ], [ %op3820, %label2597 ]
# %op2582 = icmp slt i32 %op3818, 16
	addi.w $t1, $zero, 16
	slt $t6,$t4,$t1
# br i1 %op2582, label %label2583, label %label2587
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2583
	b .long_func_label2587
.long_func_label2583:
# %op2585 = srem i32 %op3817, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t5, $t1
# %op2586 = icmp ne i32 0, %op2585
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2586, label %label2604, label %label2597
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2604
	or $t7, $zero, $t3
	b .long_func_label2597
.long_func_label2587:
# %op2589 = icmp ne i32 0, %op3819
	addi.w $t0, $zero, 0
	slt $t8,$t3,$t0
	slt $t0,$t0,$t3
	or $t2,$t0,$t8
# br i1 %op2589, label %label2608, label %label2614
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2608
	or $t3, $zero, $a4
	b .long_func_label2614
.long_func_label2590:
# %op2593 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3818
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2594 = load i32, i32* %op2593
	ld.w $t6, $t6, 0
# %op2595 = mul i32 1, %op2594
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2596 = add i32 %op3819, %op2595
	add.w $t6, $t3, $t6
# br label %label2597
	st.d $t6, $fp, -1568
	ld.d $t7, $fp, -1568
	b .long_func_label2597
.long_func_label2597:
# %op3820 = phi i32 [ %op3819, %label2583 ], [ %op3819, %label2604 ], [ %op2596, %label2590 ]
# %op2599 = sdiv i32 %op3817, 2
	addi.w $t1, $zero, 2
	div.w $t6, $t5, $t1
# %op2601 = sdiv i32 %op3816, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t2, $t1
	st.w $t0, $fp, -1396
# %op2603 = add i32 %op3818, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t4, $t1
	st.w $t0, $fp, -1400
# br label %label2580
	ld.w $t0, $fp, -1396
	st.d $t0, $fp, -1568
	st.d $t7, $fp, -1576
	ld.w $t0, $fp, -1400
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t2, $fp, -1568
	ld.d $t3, $fp, -1576
	ld.d $t4, $fp, -1584
	ld.d $t5, $fp, -1592
	b .long_func_label2580
.long_func_label2604:
# %op2606 = srem i32 %op3816, 2
	addi.w $t1, $zero, 2
	mod.w $t6, $t2, $t1
# %op2607 = icmp ne i32 0, %op2606
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2607, label %label2590, label %label2597
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2590
	or $t7, $zero, $t3
	b .long_func_label2597
.long_func_label2608:
# br label %label2620
	st.d $a6, $fp, -1568
	st.d $a4, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label2620
.long_func_label2614:
# %op3824 = phi i32 [ %op3809, %label2587 ], [ %op3831, %label2626 ]
# br label %label2734
	st.d $a6, $fp, -1568
	st.d $a6, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label2734
.long_func_label2620:
# %op3830 = phi i32 [ %op3811, %label2608 ], [ %op3851, %label2705 ]
# %op3831 = phi i32 [ %op3809, %label2608 ], [ %op3839, %label2705 ]
# %op2622 = icmp ne i32 0, %op3830
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t5,$t0,$t8
# br i1 %op2622, label %label2623, label %label2626
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2623
	b .long_func_label2626
.long_func_label2623:
# br label %label2629
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1404
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1412
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1408
	b .long_func_label2629
.long_func_label2626:
# br label %label2614
	st.d $t4, $fp, -1568
	ld.d $t3, $fp, -1568
	b .long_func_label2614
.long_func_label2629:
# %op3836 = phi i32 [ %op3830, %label2623 ], [ %op2652, %label2648 ]
# %op3837 = phi i32 [ %op3831, %label2623 ], [ %op2650, %label2648 ]
# %op3838 = phi i32 [ 0, %label2623 ], [ %op2654, %label2648 ]
# %op3839 = phi i32 [ 0, %label2623 ], [ %op3840, %label2648 ]
# %op2631 = icmp slt i32 %op3838, 16
	ld.w $t0, $fp, -1412
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2631, label %label2632, label %label2636
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2632
	b .long_func_label2636
.long_func_label2632:
# %op2634 = srem i32 %op3837, 2
	ld.w $t0, $fp, -1408
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2635 = icmp ne i32 0, %op2634
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2635, label %label2640, label %label2644
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2640
	b .long_func_label2644
.long_func_label2636:
# br label %label2671
	st.d $t2, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1432
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1440
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1436
	b .long_func_label2671
.long_func_label2640:
# %op2642 = srem i32 %op3836, 2
	ld.w $t0, $fp, -1404
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2643 = icmp eq i32 %op2642, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t6
	slt $t0,$t6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t6,$t8,$t0
# br i1 %op2643, label %label2655, label %label2662
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2655
	or $t0, $zero, $t5
	st.w $t0, $fp, -1424
	b .long_func_label2662
.long_func_label2644:
# %op2646 = srem i32 %op3836, 2
	ld.w $t0, $fp, -1404
	addi.w $t1, $zero, 2
	mod.w $t7, $t0, $t1
# %op2647 = icmp ne i32 0, %op2646
	addi.w $t0, $zero, 0
	slt $t8,$t7,$t0
	slt $t0,$t0,$t7
	or $t7,$t0,$t8
# br i1 %op2647, label %label2663, label %label2670
	addi.w $t0,$zero,0
	blt $t0,$t7,.long_func_label2663
	or $t0, $zero, $t5
	st.w $t0, $fp, -1428
	b .long_func_label2670
.long_func_label2648:
# %op3840 = phi i32 [ %op3841, %label2662 ], [ %op3842, %label2670 ]
# %op2650 = sdiv i32 %op3837, 2
	ld.w $t0, $fp, -1408
	addi.w $t1, $zero, 2
	div.w $t7, $t0, $t1
# %op2652 = sdiv i32 %op3836, 2
	ld.w $t0, $fp, -1404
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1416
# %op2654 = add i32 %op3838, 1
	ld.w $t0, $fp, -1412
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1420
# br label %label2629
	st.d $t6, $fp, -1568
	ld.w $t0, $fp, -1416
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1420
	st.d $t0, $fp, -1584
	st.d $t7, $fp, -1592
	ld.d $t5, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1404
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1412
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1408
	b .long_func_label2629
.long_func_label2655:
# %op2658 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3838
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1412
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2659 = load i32, i32* %op2658
	ld.w $t6, $t6, 0
# %op2660 = mul i32 1, %op2659
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2661 = add i32 %op3839, %op2660
	add.w $t6, $t5, $t6
# br label %label2662
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1424
	b .long_func_label2662
.long_func_label2662:
# %op3841 = phi i32 [ %op3839, %label2640 ], [ %op2661, %label2655 ]
# br label %label2648
	ld.w $t0, $fp, -1424
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2648
.long_func_label2663:
# %op2666 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3838
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1412
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t7,$t1,$t0
# %op2667 = load i32, i32* %op2666
	ld.w $t7, $t7, 0
# %op2668 = mul i32 1, %op2667
	addi.w $t0, $zero, 1
	mul.w $t7, $t0, $t7
# %op2669 = add i32 %op3839, %op2668
	add.w $t7, $t5, $t7
# br label %label2670
	st.d $t7, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1428
	b .long_func_label2670
.long_func_label2670:
# %op3842 = phi i32 [ %op3839, %label2644 ], [ %op2669, %label2663 ]
# br label %label2648
	ld.w $t0, $fp, -1428
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2648
.long_func_label2671:
# %op3843 = phi i32 [ %op3830, %label2636 ], [ %op2692, %label2688 ]
# %op3844 = phi i32 [ %op3831, %label2636 ], [ %op2690, %label2688 ]
# %op3845 = phi i32 [ 0, %label2636 ], [ %op2694, %label2688 ]
# %op3846 = phi i32 [ 0, %label2636 ], [ %op3847, %label2688 ]
# %op2673 = icmp slt i32 %op3845, 16
	ld.w $t0, $fp, -1440
	addi.w $t1, $zero, 16
	slt $t6,$t0,$t1
# br i1 %op2673, label %label2674, label %label2678
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2674
	b .long_func_label2678
.long_func_label2674:
# %op2676 = srem i32 %op3844, 2
	ld.w $t0, $fp, -1436
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2677 = icmp ne i32 0, %op2676
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2677, label %label2695, label %label2688
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2695
	or $t0, $zero, $t7
	st.w $t0, $fp, -1444
	b .long_func_label2688
.long_func_label2678:
# br label %label2700
	b .long_func_label2700
.long_func_label2681:
# %op2684 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3845
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1440
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2685 = load i32, i32* %op2684
	ld.w $t6, $t6, 0
# %op2686 = mul i32 1, %op2685
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2687 = add i32 %op3846, %op2686
	add.w $t6, $t7, $t6
# br label %label2688
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1444
	b .long_func_label2688
.long_func_label2688:
# %op3847 = phi i32 [ %op3846, %label2674 ], [ %op3846, %label2695 ], [ %op2687, %label2681 ]
# %op2690 = sdiv i32 %op3844, 2
	ld.w $t0, $fp, -1436
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op2692 = sdiv i32 %op3843, 2
	ld.w $t0, $fp, -1432
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1448
# %op2694 = add i32 %op3845, 1
	ld.w $t0, $fp, -1440
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1452
# br label %label2671
	ld.w $t0, $fp, -1448
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1444
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1452
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1432
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1440
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1436
	b .long_func_label2671
.long_func_label2695:
# %op2697 = srem i32 %op3843, 2
	ld.w $t0, $fp, -1432
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2698 = icmp ne i32 0, %op2697
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2698, label %label2681, label %label2688
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2681
	or $t0, $zero, $t7
	st.w $t0, $fp, -1444
	b .long_func_label2688
.long_func_label2700:
# %op2702 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2703 = load i32, i32* %op2702
	ld.w $t6, $t6, 0
# %op2704 = mul i32 %op3846, %op2703
	mul.w $t6, $t7, $t6
# br label %label2708
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1576
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1464
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1456
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1460
	b .long_func_label2708
.long_func_label2705:
# %op3851 = phi i32 [ 0, %label2699 ], [ %op3855, %label2715 ]
# br label %label2620
	st.d $t6, $fp, -1568
	st.d $t5, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label2620
.long_func_label2708:
# %op3852 = phi i32 [ 65535, %label2700 ], [ %op2727, %label2723 ]
# %op3853 = phi i32 [ %op2704, %label2700 ], [ %op2725, %label2723 ]
# %op3854 = phi i32 [ 0, %label2700 ], [ %op2729, %label2723 ]
# %op3855 = phi i32 [ 0, %label2700 ], [ %op3856, %label2723 ]
# %op2710 = icmp slt i32 %op3854, 16
	addi.w $t1, $zero, 16
	slt $t6,$t7,$t1
# br i1 %op2710, label %label2711, label %label2715
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2711
	b .long_func_label2715
.long_func_label2711:
# %op2713 = srem i32 %op3853, 2
	ld.w $t0, $fp, -1460
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2714 = icmp ne i32 0, %op2713
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2714, label %label2730, label %label2723
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2730
	ld.w $t0, $fp, -1464
	or $t0, $zero, $t0
	st.w $t0, $fp, -1468
	b .long_func_label2723
.long_func_label2715:
# br label %label2705
	ld.w $t0, $fp, -1464
	st.d $t0, $fp, -1568
	ld.d $t6, $fp, -1568
	b .long_func_label2705
.long_func_label2716:
# %op2719 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3854
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2720 = load i32, i32* %op2719
	ld.w $t6, $t6, 0
# %op2721 = mul i32 1, %op2720
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2722 = add i32 %op3855, %op2721
	ld.w $t0, $fp, -1464
	add.w $t6, $t0, $t6
# br label %label2723
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1468
	b .long_func_label2723
.long_func_label2723:
# %op3856 = phi i32 [ %op3855, %label2711 ], [ %op3855, %label2730 ], [ %op2722, %label2716 ]
# %op2725 = sdiv i32 %op3853, 2
	ld.w $t0, $fp, -1460
	addi.w $t1, $zero, 2
	div.w $t6, $t0, $t1
# %op2727 = sdiv i32 %op3852, 2
	ld.w $t0, $fp, -1456
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1472
# %op2729 = add i32 %op3854, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t7, $t1
	st.w $t0, $fp, -1476
# br label %label2708
	ld.w $t0, $fp, -1476
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1468
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1472
	st.d $t0, $fp, -1584
	st.d $t6, $fp, -1592
	ld.d $t7, $fp, -1568
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1464
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1456
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1460
	b .long_func_label2708
.long_func_label2730:
# %op2732 = srem i32 %op3852, 2
	ld.w $t0, $fp, -1456
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2733 = icmp ne i32 0, %op2732
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2733, label %label2716, label %label2723
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2716
	ld.w $t0, $fp, -1464
	or $t0, $zero, $t0
	st.w $t0, $fp, -1468
	b .long_func_label2723
.long_func_label2734:
# %op3858 = phi i32 [ %op3811, %label2614 ], [ %op3879, %label2822 ]
# %op3859 = phi i32 [ %op3811, %label2614 ], [ %op3867, %label2822 ]
# %op2736 = icmp ne i32 0, %op3858
	addi.w $t0, $zero, 0
	slt $t8,$t2,$t0
	slt $t0,$t0,$t2
	or $t5,$t0,$t8
# br i1 %op2736, label %label2737, label %label2740
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2737
	b .long_func_label2740
.long_func_label2737:
# br label %label2746
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	st.d $t4, $fp, -1584
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1484
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1480
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1488
	b .long_func_label2746
.long_func_label2740:
# br label %label2854
	b .long_func_label2854
.long_func_label2746:
# %op3864 = phi i32 [ %op3858, %label2737 ], [ %op2769, %label2765 ]
# %op3865 = phi i32 [ %op3859, %label2737 ], [ %op2767, %label2765 ]
# %op3866 = phi i32 [ 0, %label2737 ], [ %op2771, %label2765 ]
# %op3867 = phi i32 [ 0, %label2737 ], [ %op3868, %label2765 ]
# %op2748 = icmp slt i32 %op3866, 16
	ld.w $t0, $fp, -1484
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op2748, label %label2749, label %label2753
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2749
	b .long_func_label2753
.long_func_label2749:
# %op2751 = srem i32 %op3865, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t7, $t1
# %op2752 = icmp ne i32 0, %op2751
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op2752, label %label2757, label %label2761
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2757
	b .long_func_label2761
.long_func_label2753:
# br label %label2788
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	st.d $t2, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t4, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1512
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1508
	b .long_func_label2788
.long_func_label2757:
# %op2759 = srem i32 %op3864, 2
	ld.w $t0, $fp, -1480
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op2760 = icmp eq i32 %op2759, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$t5
	slt $t0,$t5,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op2760, label %label2772, label %label2779
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2772
	ld.w $t0, $fp, -1488
	or $t0, $zero, $t0
	st.w $t0, $fp, -1500
	b .long_func_label2779
.long_func_label2761:
# %op2763 = srem i32 %op3864, 2
	ld.w $t0, $fp, -1480
	addi.w $t1, $zero, 2
	mod.w $t6, $t0, $t1
# %op2764 = icmp ne i32 0, %op2763
	addi.w $t0, $zero, 0
	slt $t8,$t6,$t0
	slt $t0,$t0,$t6
	or $t6,$t0,$t8
# br i1 %op2764, label %label2780, label %label2787
	addi.w $t0,$zero,0
	blt $t0,$t6,.long_func_label2780
	ld.w $t0, $fp, -1488
	or $t0, $zero, $t0
	st.w $t0, $fp, -1504
	b .long_func_label2787
.long_func_label2765:
# %op3868 = phi i32 [ %op3869, %label2779 ], [ %op3870, %label2787 ]
# %op2767 = sdiv i32 %op3865, 2
	addi.w $t1, $zero, 2
	div.w $t6, $t7, $t1
# %op2769 = sdiv i32 %op3864, 2
	ld.w $t0, $fp, -1480
	addi.w $t1, $zero, 2
	div.w $t0, $t0, $t1
	st.w $t0, $fp, -1492
# %op2771 = add i32 %op3866, 1
	ld.w $t0, $fp, -1484
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1496
# br label %label2746
	ld.w $t0, $fp, -1496
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1492
	st.d $t0, $fp, -1576
	st.d $t6, $fp, -1584
	st.d $t5, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1484
	ld.d $t0, $fp, -1576
	st.w $t0, $fp, -1480
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1488
	b .long_func_label2746
.long_func_label2772:
# %op2775 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3866
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1484
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op2776 = load i32, i32* %op2775
	ld.w $t5, $t5, 0
# %op2777 = mul i32 1, %op2776
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op2778 = add i32 %op3867, %op2777
	ld.w $t0, $fp, -1488
	add.w $t5, $t0, $t5
# br label %label2779
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1500
	b .long_func_label2779
.long_func_label2779:
# %op3869 = phi i32 [ %op3867, %label2757 ], [ %op2778, %label2772 ]
# br label %label2765
	ld.w $t0, $fp, -1500
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2765
.long_func_label2780:
# %op2783 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3866
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1484
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t6,$t1,$t0
# %op2784 = load i32, i32* %op2783
	ld.w $t6, $t6, 0
# %op2785 = mul i32 1, %op2784
	addi.w $t0, $zero, 1
	mul.w $t6, $t0, $t6
# %op2786 = add i32 %op3867, %op2785
	ld.w $t0, $fp, -1488
	add.w $t6, $t0, $t6
# br label %label2787
	st.d $t6, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1504
	b .long_func_label2787
.long_func_label2787:
# %op3870 = phi i32 [ %op3867, %label2761 ], [ %op2786, %label2780 ]
# br label %label2765
	ld.w $t0, $fp, -1504
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2765
.long_func_label2788:
# %op3871 = phi i32 [ %op3858, %label2753 ], [ %op2809, %label2805 ]
# %op3872 = phi i32 [ %op3859, %label2753 ], [ %op2807, %label2805 ]
# %op3873 = phi i32 [ 0, %label2753 ], [ %op2811, %label2805 ]
# %op3874 = phi i32 [ 0, %label2753 ], [ %op3875, %label2805 ]
# %op2790 = icmp slt i32 %op3873, 16
	ld.w $t0, $fp, -1512
	addi.w $t1, $zero, 16
	slt $t5,$t0,$t1
# br i1 %op2790, label %label2791, label %label2795
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2791
	b .long_func_label2795
.long_func_label2791:
# %op2793 = srem i32 %op3872, 2
	ld.w $t0, $fp, -1508
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op2794 = icmp ne i32 0, %op2793
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op2794, label %label2812, label %label2805
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2812
	or $t0, $zero, $t7
	st.w $t0, $fp, -1516
	b .long_func_label2805
.long_func_label2795:
# br label %label2817
	b .long_func_label2817
.long_func_label2798:
# %op2801 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3873
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	ld.w $t1, $fp, -1512
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op2802 = load i32, i32* %op2801
	ld.w $t5, $t5, 0
# %op2803 = mul i32 1, %op2802
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op2804 = add i32 %op3874, %op2803
	add.w $t5, $t7, $t5
# br label %label2805
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1516
	b .long_func_label2805
.long_func_label2805:
# %op3875 = phi i32 [ %op3874, %label2791 ], [ %op3874, %label2812 ], [ %op2804, %label2798 ]
# %op2807 = sdiv i32 %op3872, 2
	ld.w $t0, $fp, -1508
	addi.w $t1, $zero, 2
	div.w $t5, $t0, $t1
# %op2809 = sdiv i32 %op3871, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t6, $t1
	st.w $t0, $fp, -1520
# %op2811 = add i32 %op3873, 1
	ld.w $t0, $fp, -1512
	addi.w $t1, $zero, 1
	add.w $t0, $t0, $t1
	st.w $t0, $fp, -1524
# br label %label2788
	ld.w $t0, $fp, -1524
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1520
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1516
	st.d $t0, $fp, -1584
	st.d $t5, $fp, -1592
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1512
	ld.d $t6, $fp, -1576
	ld.d $t7, $fp, -1584
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1508
	b .long_func_label2788
.long_func_label2812:
# %op2814 = srem i32 %op3871, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t6, $t1
# %op2815 = icmp ne i32 0, %op2814
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op2815, label %label2798, label %label2805
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2798
	or $t0, $zero, $t7
	st.w $t0, $fp, -1516
	b .long_func_label2805
.long_func_label2817:
# %op2819 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op2820 = load i32, i32* %op2819
	ld.w $t5, $t5, 0
# %op2821 = mul i32 %op3874, %op2820
	mul.w $t5, $t7, $t5
# br label %label2825
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1568
	lu12i.w $t0, 15
	ori $t0, $t0, 4095
	st.d $t0, $fp, -1576
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -1584
	st.d $t5, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1532
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1528
	b .long_func_label2825
.long_func_label2822:
# %op3879 = phi i32 [ 0, %label2816 ], [ %op3883, %label2832 ]
# br label %label2734
	st.d $t5, $fp, -1568
	ld.w $t0, $fp, -1488
	st.d $t0, $fp, -1576
	ld.d $t2, $fp, -1568
	ld.d $t4, $fp, -1576
	b .long_func_label2734
.long_func_label2825:
# %op3880 = phi i32 [ 65535, %label2817 ], [ %op2844, %label2840 ]
# %op3881 = phi i32 [ %op2821, %label2817 ], [ %op2842, %label2840 ]
# %op3882 = phi i32 [ 0, %label2817 ], [ %op2846, %label2840 ]
# %op3883 = phi i32 [ 0, %label2817 ], [ %op3884, %label2840 ]
# %op2827 = icmp slt i32 %op3882, 16
	addi.w $t1, $zero, 16
	slt $t5,$t6,$t1
# br i1 %op2827, label %label2828, label %label2832
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2828
	b .long_func_label2832
.long_func_label2828:
# %op2830 = srem i32 %op3881, 2
	ld.w $t0, $fp, -1528
	addi.w $t1, $zero, 2
	mod.w $t5, $t0, $t1
# %op2831 = icmp ne i32 0, %op2830
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op2831, label %label2847, label %label2840
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2847
	ld.w $t0, $fp, -1532
	or $t0, $zero, $t0
	st.w $t0, $fp, -1536
	b .long_func_label2840
.long_func_label2832:
# br label %label2822
	ld.w $t0, $fp, -1532
	st.d $t0, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2822
.long_func_label2833:
# %op2836 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 %op3882
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$t6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op2837 = load i32, i32* %op2836
	ld.w $t5, $t5, 0
# %op2838 = mul i32 1, %op2837
	addi.w $t0, $zero, 1
	mul.w $t5, $t0, $t5
# %op2839 = add i32 %op3883, %op2838
	ld.w $t0, $fp, -1532
	add.w $t5, $t0, $t5
# br label %label2840
	st.d $t5, $fp, -1568
	ld.d $t0, $fp, -1568
	st.w $t0, $fp, -1536
	b .long_func_label2840
.long_func_label2840:
# %op3884 = phi i32 [ %op3883, %label2828 ], [ %op3883, %label2847 ], [ %op2839, %label2833 ]
# %op2842 = sdiv i32 %op3881, 2
	ld.w $t0, $fp, -1528
	addi.w $t1, $zero, 2
	div.w $t5, $t0, $t1
# %op2844 = sdiv i32 %op3880, 2
	addi.w $t1, $zero, 2
	div.w $t0, $t7, $t1
	st.w $t0, $fp, -1540
# %op2846 = add i32 %op3882, 1
	addi.w $t1, $zero, 1
	add.w $t0, $t6, $t1
	st.w $t0, $fp, -1544
# br label %label2825
	ld.w $t0, $fp, -1544
	st.d $t0, $fp, -1568
	ld.w $t0, $fp, -1540
	st.d $t0, $fp, -1576
	ld.w $t0, $fp, -1536
	st.d $t0, $fp, -1584
	st.d $t5, $fp, -1592
	ld.d $t6, $fp, -1568
	ld.d $t7, $fp, -1576
	ld.d $t0, $fp, -1584
	st.w $t0, $fp, -1532
	ld.d $t0, $fp, -1592
	st.w $t0, $fp, -1528
	b .long_func_label2825
.long_func_label2847:
# %op2849 = srem i32 %op3880, 2
	addi.w $t1, $zero, 2
	mod.w $t5, $t7, $t1
# %op2850 = icmp ne i32 0, %op2849
	addi.w $t0, $zero, 0
	slt $t8,$t5,$t0
	slt $t0,$t0,$t5
	or $t5,$t0,$t8
# br i1 %op2850, label %label2833, label %label2840
	addi.w $t0,$zero,0
	blt $t0,$t5,.long_func_label2833
	ld.w $t0, $fp, -1532
	or $t0, $zero, $t0
	st.w $t0, $fp, -1536
	b .long_func_label2840
.long_func_label2854:
# br label %label2862
	b .long_func_label2862
.long_func_label2857:
# %op3886 = phi i32 [ %op3887, %label2861 ], [ %op3889, %label2867 ]
# br label %label2569
	st.d $t3, $fp, -1568
	st.d $t4, $fp, -1576
	st.d $t5, $fp, -1584
	ld.d $a4, $fp, -1568
	ld.d $a6, $fp, -1576
	ld.d $a7, $fp, -1584
	b .long_func_label2569
.long_func_label2862:
# %op2864 = icmp sgt i32 %op3810, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2,$t1,$a7
# br i1 %op2864, label %label2868, label %label2882
	addi.w $t0,$zero,0
	blt $t0,$t2,.long_func_label2868
	b .long_func_label2882
.long_func_label2867:
# %op3889 = phi i32 [ %op3891, %label2888 ], [ %op3810, %label2865 ]
# br label %label2857
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2857
.long_func_label2868:
# %op2871 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t2,$t1,$t0
# %op2872 = load i32, i32* %op2871
	ld.w $t2, $t2, 0
# %op2873 = sdiv i32 %op3810, %op2872
	div.w $t2, $a7, $t2
# %op2875 = add i32 %op2873, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t2, $t1
# %op2879 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t5,$t1,$t0
# %op2880 = load i32, i32* %op2879
	ld.w $t5, $t5, 0
# %op2881 = sub i32 %op2875, %op2880
	sub.w $t2, $t2, $t5
# br label %label2888
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2888
.long_func_label2882:
# %op2885 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $t2,$t1,$t0
# %op2886 = load i32, i32* %op2885
	ld.w $t2, $t2, 0
# %op2887 = sdiv i32 %op3810, %op2886
	div.w $t2, $a7, $t2
# br label %label2888
	st.d $t2, $fp, -1568
	ld.d $t5, $fp, -1568
	b .long_func_label2888
.long_func_label2888:
# %op3891 = phi i32 [ %op2881, %label2868 ], [ %op2887, %label2882 ]
# br label %label2867
	st.d $t5, $fp, -1568
	ld.d $t2, $fp, -1568
	b .long_func_label2867
.long_func_label2892:
# br label %label2900
	b .long_func_label2900
.long_func_label2895:
# %op3893 = phi i32 [ %op3894, %label2899 ], [ %op3896, %label2905 ]
# br label %label2200
	st.d $a5, $fp, -1568
	st.d $a7, $fp, -1576
	st.d $a4, $fp, -1584
	ld.d $a1, $fp, -1568
	ld.d $a2, $fp, -1576
	ld.d $a3, $fp, -1584
	b .long_func_label2200
.long_func_label2900:
# %op2902 = icmp sgt i32 %op3689, 32767
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $a6,$t1,$a2
# br i1 %op2902, label %label2906, label %label2920
	addi.w $t0,$zero,0
	blt $t0,$a6,.long_func_label2906
	b .long_func_label2920
.long_func_label2905:
# %op3896 = phi i32 [ %op3898, %label2926 ], [ %op3689, %label2903 ]
# br label %label2895
	st.d $a6, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label2895
.long_func_label2906:
# %op2909 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a6,$t1,$t0
# %op2910 = load i32, i32* %op2909
	ld.w $a6, $a6, 0
# %op2911 = sdiv i32 %op3689, %op2910
	div.w $a6, $a2, $a6
# %op2913 = add i32 %op2911, 65536
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $a6, $a6, $t1
# %op2917 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 15
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 15
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a7,$t1,$t0
# %op2918 = load i32, i32* %op2917
	ld.w $a7, $a7, 0
# %op2919 = sub i32 %op2913, %op2918
	sub.w $a6, $a6, $a7
# br label %label2926
	st.d $a6, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label2926
.long_func_label2920:
# %op2923 = getelementptr [16 x i32], [16 x i32]* @SHIFT_TABLE, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, SHIFT_TABLE
	add.d $a6,$t1,$t0
# %op2924 = load i32, i32* %op2923
	ld.w $a6, $a6, 0
# %op2925 = sdiv i32 %op3689, %op2924
	div.w $a6, $a2, $a6
# br label %label2926
	st.d $a6, $fp, -1568
	ld.d $a7, $fp, -1568
	b .long_func_label2926
.long_func_label2926:
# %op3898 = phi i32 [ %op2919, %label2906 ], [ %op2925, %label2920 ]
# br label %label2905
	st.d $a7, $fp, -1568
	ld.d $a6, $fp, -1568
	b .long_func_label2905
.long_func_label2927:
# ret i32 1
	addi.w $t0, $zero, 1
	or $a0, $zero, $t0
	b long_func_exit
.long_func_label2928:
# %op2930 = add i32 %op3665, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a0, $t1
# br label %label2191
	st.d $a1, $fp, -1568
	ld.d $a0, $fp, -1568
	b .long_func_label2191
long_func_exit:
	# epilog
	ld.d $ra, $sp, 1592
	ld.d $fp, $sp, 1584
	addi.d $sp, $sp, 1600
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.main_label_entry:
# %op0 = call i32 @long_func()
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
	bl long_func
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
