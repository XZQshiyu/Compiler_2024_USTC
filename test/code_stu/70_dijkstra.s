# Global variables
	.text
	.data
	.globl INF
	.align 2
	.type INF, @object
	.size INF, 4
INF:
	.word 65535
	.globl e
	.align 3
	.type e, @object
	.size e, 1024
e:
	.space 1024
	.globl book
	.align 3
	.type book, @object
	.size book, 64
book:
	.space 64
	.globl dis
	.align 3
	.type dis, @object
	.size dis, 64
dis:
	.space 64
	.globl n
	.align 2
	.type n, @object
	.size n, 4
n:
	.word 0
	.globl m
	.align 2
	.type m, @object
	.size m, 4
m:
	.word 0
	.globl v1
	.align 2
	.type v1, @object
	.size v1, 4
v1:
	.word 0
	.globl v2
	.align 2
	.type v2, @object
	.size v2, 4
v2:
	.word 0
	.globl w
	.align 2
	.type w, @object
	.size w, 4
w:
	.word 0
	.text
	.align 2
	.globl Dijkstra
	.type Dijkstra, @function
Dijkstra:
	addi.d $sp, $sp, -336
	st.d $ra, $sp, 328
	st.d $fp, $sp, 320
	addi.d $fp, $sp, 336
.Dijkstra_label_entry:
# br label %label2
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .Dijkstra_label2
.Dijkstra_label2:
# %op98 = phi i32 [ 1, %label_entry ], [ %op15, %label6 ]
# %op4 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op5 = icmp sle i32 %op98, %op4
	slt $a1,$a1,$a0
	addi.w $t8,$zero,1
	sub.w $a1,$t8,$a1
# br i1 %op5, label %label6, label %label16
	addi.w $t0,$zero,0
	blt $t0,$a1,.Dijkstra_label6
	b .Dijkstra_label16
.Dijkstra_label6:
# %op8 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 1, i32 %op98
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 1024
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, e
	add.d $a1,$t1,$t0
# %op9 = load i32, i32* %op8
	ld.w $a1, $a1, 0
# %op11 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %op98
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dis
	add.d $a2,$t1,$t0
# store i32 %op9, i32* %op11
	st.w $a1, $a2, 0
# %op13 = getelementptr [16 x i32], [16 x i32]* @book, i32 0, i32 %op98
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, book
	add.d $a1,$t1,$t0
# store i32 0, i32* %op13
	addi.w $t0, $zero, 0
	st.w $t0, $a1, 0
# %op15 = add i32 %op98, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a0, $t1
# br label %label2
	st.d $a1, $fp, -312
	ld.d $a0, $fp, -312
	b .Dijkstra_label2
.Dijkstra_label16:
# %op17 = getelementptr [16 x i32], [16 x i32]* @book, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, book
	add.d $a0,$t1,$t0
# store i32 1, i32* %op17
	addi.w $t0, $zero, 1
	st.w $t0, $a0, 0
# br label %label18
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .Dijkstra_label18
.Dijkstra_label18:
# %op103 = phi i32 [ 1, %label16 ], [ %op69, %label67 ]
# %op20 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op21 = sub i32 %op20, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a1, $t1
# %op22 = icmp sle i32 %op103, %op21
	slt $a1,$a1,$a0
	addi.w $t8,$zero,1
	sub.w $a1,$t8,$a1
# br i1 %op22, label %label23, label %label28
	addi.w $t0,$zero,0
	blt $t0,$a1,.Dijkstra_label23
	b .Dijkstra_label28
.Dijkstra_label23:
# %op25 = load i32, i32* @INF
	la.local $t0, INF
	ld.w $a1, $t0, 0
# br label %label29
	st.d $a1, $fp, -312
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -320
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -328
	ld.d $a2, $fp, -312
	ld.d $a3, $fp, -320
	ld.d $a4, $fp, -328
	b .Dijkstra_label29
.Dijkstra_label28:
# ret void
	addi.w $a0, $zero, 0
	b Dijkstra_exit
.Dijkstra_label29:
# %op104 = phi i32 [ 1, %label23 ], [ %op50, %label48 ]
# %op105 = phi i32 [ 0, %label23 ], [ %op107, %label48 ]
# %op106 = phi i32 [ %op25, %label23 ], [ %op108, %label48 ]
# %op31 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op32 = icmp sle i32 %op104, %op31
	slt $a1,$a1,$a4
	addi.w $t8,$zero,1
	sub.w $a1,$t8,$a1
# br i1 %op32, label %label33, label %label39
	addi.w $t0,$zero,0
	blt $t0,$a1,.Dijkstra_label33
	b .Dijkstra_label39
.Dijkstra_label33:
# %op36 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %op104
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dis
	add.d $a1,$t1,$t0
# %op37 = load i32, i32* %op36
	ld.w $a1, $a1, 0
# %op38 = icmp sgt i32 %op106, %op37
	slt $a1,$a1,$a2
# br i1 %op38, label %label51, label %label48
	addi.w $t0,$zero,0
	blt $t0,$a1,.Dijkstra_label51
	or $a5, $zero, $a2
	or $a6, $zero, $a3
	b .Dijkstra_label48
.Dijkstra_label39:
# %op41 = getelementptr [16 x i32], [16 x i32]* @book, i32 0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, book
	add.d $a1,$t1,$t0
# store i32 1, i32* %op41
	addi.w $t0, $zero, 1
	st.w $t0, $a1, 0
# br label %label56
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a1, $fp, -312
	b .Dijkstra_label56
.Dijkstra_label43:
# %op45 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %op104
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dis
	add.d $a1,$t1,$t0
# %op46 = load i32, i32* %op45
	ld.w $a1, $a1, 0
# br label %label48
	st.d $a1, $fp, -312
	st.d $a4, $fp, -320
	ld.d $a5, $fp, -312
	ld.d $a6, $fp, -320
	b .Dijkstra_label48
.Dijkstra_label48:
# %op107 = phi i32 [ %op105, %label33 ], [ %op105, %label51 ], [ %op104, %label43 ]
# %op108 = phi i32 [ %op106, %label33 ], [ %op106, %label51 ], [ %op46, %label43 ]
# %op50 = add i32 %op104, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a4, $t1
# br label %label29
	st.d $a5, $fp, -312
	st.d $a6, $fp, -320
	st.d $a1, $fp, -328
	ld.d $a2, $fp, -312
	ld.d $a3, $fp, -320
	ld.d $a4, $fp, -328
	b .Dijkstra_label29
.Dijkstra_label51:
# %op53 = getelementptr [16 x i32], [16 x i32]* @book, i32 0, i32 %op104
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, book
	add.d $a1,$t1,$t0
# %op54 = load i32, i32* %op53
	ld.w $a1, $a1, 0
# %op55 = icmp eq i32 %op54, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a1
	slt $t0,$a1,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a1,$t8,$t0
# br i1 %op55, label %label43, label %label48
	addi.w $t0,$zero,0
	blt $t0,$a1,.Dijkstra_label43
	or $a5, $zero, $a2
	or $a6, $zero, $a3
	b .Dijkstra_label48
.Dijkstra_label56:
# %op109 = phi i32 [ 1, %label39 ], [ %op85, %label83 ]
# %op58 = load i32, i32* @n
	la.local $t0, n
	ld.w $a2, $t0, 0
# %op59 = icmp sle i32 %op109, %op58
	slt $a2,$a2,$a1
	addi.w $t8,$zero,1
	sub.w $a2,$t8,$a2
# br i1 %op59, label %label60, label %label67
	addi.w $t0,$zero,0
	blt $t0,$a2,.Dijkstra_label60
	b .Dijkstra_label67
.Dijkstra_label60:
# %op63 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %op105, i32 %op109
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 1024
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 64
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, e
	add.d $a2,$t1,$t0
# %op64 = load i32, i32* %op63
	ld.w $a2, $a2, 0
# %op65 = load i32, i32* @INF
	la.local $t0, INF
	ld.w $a4, $t0, 0
# %op66 = icmp slt i32 %op64, %op65
	slt $a2,$a2,$a4
# br i1 %op66, label %label70, label %label83
	addi.w $t0,$zero,0
	blt $t0,$a2,.Dijkstra_label70
	b .Dijkstra_label83
.Dijkstra_label67:
# %op69 = add i32 %op103, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a0, $t1
# br label %label18
	st.d $a1, $fp, -312
	ld.d $a0, $fp, -312
	b .Dijkstra_label18
.Dijkstra_label70:
# %op72 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %op109
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dis
	add.d $a2,$t1,$t0
# %op73 = load i32, i32* %op72
	ld.w $a2, $a2, 0
# %op75 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dis
	add.d $a4,$t1,$t0
# %op76 = load i32, i32* %op75
	ld.w $a4, $a4, 0
# %op79 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %op105, i32 %op109
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 1024
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 64
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, e
	add.d $a5,$t1,$t0
# %op80 = load i32, i32* %op79
	ld.w $a5, $a5, 0
# %op81 = add i32 %op76, %op80
	add.w $a4, $a4, $a5
# %op82 = icmp sgt i32 %op73, %op81
	slt $a2,$a4,$a2
# br i1 %op82, label %label86, label %label97
	addi.w $t0,$zero,0
	blt $t0,$a2,.Dijkstra_label86
	b .Dijkstra_label97
.Dijkstra_label83:
# %op85 = add i32 %op109, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label56
	st.d $a2, $fp, -312
	ld.d $a1, $fp, -312
	b .Dijkstra_label56
.Dijkstra_label86:
# %op88 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dis
	add.d $a2,$t1,$t0
# %op89 = load i32, i32* %op88
	ld.w $a2, $a2, 0
# %op92 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %op105, i32 %op109
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 1024
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 64
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, e
	add.d $a4,$t1,$t0
# %op93 = load i32, i32* %op92
	ld.w $a4, $a4, 0
# %op94 = add i32 %op89, %op93
	add.w $a2, $a2, $a4
# %op96 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %op109
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dis
	add.d $a4,$t1,$t0
# store i32 %op94, i32* %op96
	st.w $a2, $a4, 0
# br label %label97
	b .Dijkstra_label97
.Dijkstra_label97:
# br label %label83
	b .Dijkstra_label83
Dijkstra_exit:
	# epilog
	ld.d $ra, $sp, 328
	ld.d $fp, $sp, 320
	addi.d $sp, $sp, 336
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.main_label_entry:
# %op1 = call i32 @getint()
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
# store i32 %op1, i32* @n
	la.local $t1, n
	st.w $a0, $t1, 0
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
# store i32 %op2, i32* @m
	la.local $t1, m
	st.w $a0, $t1, 0
# br label %label3
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label3
.main_label3:
# %op61 = phi i32 [ 1, %label_entry ], [ %op20, %label18 ]
# %op5 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op6 = icmp sle i32 %op61, %op5
	slt $a1,$a1,$a0
	addi.w $t8,$zero,1
	sub.w $a1,$t8,$a1
# br i1 %op6, label %label7, label %label9
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label7
	b .main_label9
.main_label7:
# br label %label10
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label10
.main_label9:
# br label %label33
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label33
.main_label10:
# %op62 = phi i32 [ 1, %label7 ], [ %op32, %label30 ]
# %op12 = load i32, i32* @n
	la.local $t0, n
	ld.w $a2, $t0, 0
# %op13 = icmp sle i32 %op62, %op12
	slt $a2,$a2,$a1
	addi.w $t8,$zero,1
	sub.w $a2,$t8,$a2
# br i1 %op13, label %label14, label %label18
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label14
	b .main_label18
.main_label14:
# %op17 = icmp eq i32 %op61, %op62
	slt $t8,$a1,$a0
	slt $t0,$a0,$a1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op17, label %label21, label %label25
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label21
	b .main_label25
.main_label18:
# %op20 = add i32 %op61, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a0, $t1
# br label %label3
	st.d $a1, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label3
.main_label21:
# %op24 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %op61, i32 %op62
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 1024
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 64
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, e
	add.d $a2,$t1,$t0
# store i32 0, i32* %op24
	addi.w $t0, $zero, 0
	st.w $t0, $a2, 0
# br label %label30
	b .main_label30
.main_label25:
# %op26 = load i32, i32* @INF
	la.local $t0, INF
	ld.w $a2, $t0, 0
# %op29 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %op61, i32 %op62
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 1024
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 64
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, e
	add.d $a3,$t1,$t0
# store i32 %op26, i32* %op29
	st.w $a2, $a3, 0
# br label %label30
	b .main_label30
.main_label30:
# %op32 = add i32 %op62, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label10
	st.d $a2, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label10
.main_label33:
# %op65 = phi i32 [ 1, %label9 ], [ %op47, %label37 ]
# %op35 = load i32, i32* @m
	la.local $t0, m
	ld.w $a1, $t0, 0
# %op36 = icmp sle i32 %op65, %op35
	slt $a1,$a1,$a0
	addi.w $t8,$zero,1
	sub.w $a1,$t8,$a1
# br i1 %op36, label %label37, label %label48
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label37
	b .main_label48
.main_label37:
# %op39 = call i32 @getint()
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
# %op41 = call i32 @getint()
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
# %op42 = call i32 @getint()
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
	addi.d $a3,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
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
# %op45 = getelementptr [16 x [16 x i32]], [16 x [16 x i32]]* @e, i32 0, i32 %op39, i32 %op41
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 1024
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 64
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, e
	add.d $a1,$t1,$t0
# store i32 %op42, i32* %op45
	st.w $a3, $a1, 0
# %op47 = add i32 %op65, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a0, $t1
# br label %label33
	st.d $a1, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label33
.main_label48:
# call void @Dijkstra()
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
	bl Dijkstra
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
# br label %label49
	addi.w $t0, $zero, 1
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label49
.main_label49:
# %op66 = phi i32 [ 1, %label48 ], [ %op58, %label53 ]
# %op51 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op52 = icmp sle i32 %op66, %op51
	slt $a1,$a1,$a0
	addi.w $t8,$zero,1
	sub.w $a1,$t8,$a1
# br i1 %op52, label %label53, label %label59
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label53
	b .main_label59
.main_label53:
# %op55 = getelementptr [16 x i32], [16 x i32]* @dis, i32 0, i32 %op66
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 64
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dis
	add.d $a1,$t1,$t0
# %op56 = load i32, i32* %op55
	ld.w $a1, $a1, 0
# call void @putint(i32 %op56)
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
# call void @putch(i32 32)
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
	addi.w $a0, $zero, 32
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
# %op58 = add i32 %op66, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a0, $t1
# br label %label49
	st.d $a1, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label49
.main_label59:
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
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
