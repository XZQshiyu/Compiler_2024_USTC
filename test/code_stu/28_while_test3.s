# Global variables
	.text
	.data
	.globl g
	.align 2
	.type g, @object
	.size g, 4
g:
	.word 0
	.globl h
	.align 2
	.type h, @object
	.size h, 4
h:
	.word 0
	.globl f
	.align 2
	.type f, @object
	.size f, 4
f:
	.word 0
	.globl e
	.align 2
	.type e, @object
	.size e, 4
e:
	.word 0
	.text
	.align 2
	.globl EightWhile
	.type EightWhile, @function
EightWhile:
	addi.d $sp, $sp, -352
	st.d $ra, $sp, 344
	st.d $fp, $sp, 336
	addi.d $fp, $sp, 352
.EightWhile_label_entry:
# br label %label4
	addi.w $t0, $zero, 5
	st.d $t0, $fp, -316
	addi.w $t0, $zero, 6
	st.d $t0, $fp, -324
	addi.w $t0, $zero, 7
	st.d $t0, $fp, -332
	addi.w $t0, $zero, 10
	st.d $t0, $fp, -340
	ld.d $a0, $fp, -316
	ld.d $a1, $fp, -324
	ld.d $a2, $fp, -332
	ld.d $a3, $fp, -340
	b .EightWhile_label4
.EightWhile_label4:
# %op89 = phi i32 [ 10, %label_entry ], [ %op93, %label32 ]
# %op90 = phi i32 [ 7, %label_entry ], [ %op94, %label32 ]
# %op91 = phi i32 [ 6, %label_entry ], [ %op34, %label32 ]
# %op92 = phi i32 [ 5, %label_entry ], [ %op9, %label32 ]
# %op6 = icmp slt i32 %op92, 20
	addi.w $t1, $zero, 20
	slt $a4,$a0,$t1
# br i1 %op6, label %label7, label %label10
	addi.w $t0,$zero,0
	blt $t0,$a4,.EightWhile_label7
	b .EightWhile_label10
.EightWhile_label7:
# %op9 = add i32 %op92, 3
	addi.w $t1, $zero, 3
	add.w $a4, $a0, $t1
# br label %label26
	st.d $a1, $fp, -316
	st.d $a2, $fp, -324
	st.d $a3, $fp, -332
	ld.d $a5, $fp, -316
	ld.d $a6, $fp, -324
	ld.d $a7, $fp, -332
	b .EightWhile_label26
.EightWhile_label10:
# %op14 = add i32 %op91, %op89
	add.w $a1, $a1, $a3
# %op15 = add i32 %op92, %op14
	add.w $a0, $a0, $a1
# %op17 = add i32 %op15, %op90
	add.w $a0, $a0, $a2
# %op18 = load i32, i32* @e
	la.local $t0, e
	ld.w $a1, $t0, 0
# %op20 = add i32 %op18, %op89
	add.w $a1, $a1, $a3
# %op21 = load i32, i32* @g
	la.local $t0, g
	ld.w $a2, $t0, 0
# %op22 = sub i32 %op20, %op21
	sub.w $a1, $a1, $a2
# %op23 = load i32, i32* @h
	la.local $t0, h
	ld.w $a2, $t0, 0
# %op24 = add i32 %op22, %op23
	add.w $a1, $a1, $a2
# %op25 = sub i32 %op17, %op24
	sub.w $a0, $a0, $a1
# ret i32 %op25
	b EightWhile_exit
.EightWhile_label26:
# %op93 = phi i32 [ %op89, %label7 ], [ %op96, %label41 ]
# %op94 = phi i32 [ %op90, %label7 ], [ %op43, %label41 ]
# %op95 = phi i32 [ %op91, %label7 ], [ %op31, %label41 ]
# %op28 = icmp slt i32 %op95, 10
	addi.w $t1, $zero, 10
	slt $t2,$a5,$t1
# br i1 %op28, label %label29, label %label32
	addi.w $t0,$zero,0
	blt $t0,$t2,.EightWhile_label29
	b .EightWhile_label32
.EightWhile_label29:
# %op31 = add i32 %op95, 1
	addi.w $t1, $zero, 1
	add.w $t2, $a5, $t1
# br label %label35
	st.d $a6, $fp, -316
	st.d $a7, $fp, -324
	ld.d $t3, $fp, -316
	ld.d $t4, $fp, -324
	b .EightWhile_label35
.EightWhile_label32:
# %op34 = sub i32 %op95, 2
	addi.w $t1, $zero, 2
	sub.w $a5, $a5, $t1
# br label %label4
	st.d $a4, $fp, -316
	st.d $a5, $fp, -324
	st.d $a6, $fp, -332
	st.d $a7, $fp, -340
	ld.d $a0, $fp, -316
	ld.d $a1, $fp, -324
	ld.d $a2, $fp, -332
	ld.d $a3, $fp, -340
	b .EightWhile_label4
.EightWhile_label35:
# %op96 = phi i32 [ %op93, %label29 ], [ %op52, %label50 ]
# %op97 = phi i32 [ %op94, %label29 ], [ %op40, %label50 ]
# %op37 = icmp eq i32 %op97, 7
	addi.w $t1, $zero, 7
	slt $t8,$t1,$t3
	slt $t0,$t3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $t5,$t8,$t0
# br i1 %op37, label %label38, label %label41
	addi.w $t0,$zero,0
	blt $t0,$t5,.EightWhile_label38
	b .EightWhile_label41
.EightWhile_label38:
# %op40 = sub i32 %op97, 1
	addi.w $t1, $zero, 1
	sub.w $t5, $t3, $t1
# br label %label44
	st.d $t4, $fp, -316
	ld.d $t6, $fp, -316
	b .EightWhile_label44
.EightWhile_label41:
# %op43 = add i32 %op97, 1
	addi.w $t1, $zero, 1
	add.w $t3, $t3, $t1
# br label %label26
	st.d $t2, $fp, -316
	st.d $t3, $fp, -324
	st.d $t4, $fp, -332
	ld.d $a5, $fp, -316
	ld.d $a6, $fp, -324
	ld.d $a7, $fp, -332
	b .EightWhile_label26
.EightWhile_label44:
# %op98 = phi i32 [ %op96, %label38 ], [ %op49, %label59 ]
# %op46 = icmp slt i32 %op98, 20
	addi.w $t1, $zero, 20
	slt $t7,$t6,$t1
# br i1 %op46, label %label47, label %label50
	addi.w $t0,$zero,0
	blt $t0,$t7,.EightWhile_label47
	b .EightWhile_label50
.EightWhile_label47:
# %op49 = add i32 %op98, 3
	addi.w $t1, $zero, 3
	add.w $t0, $t6, $t1
	st.w $t0, $fp, -308
# br label %label53
	b .EightWhile_label53
.EightWhile_label50:
# %op52 = sub i32 %op98, 1
	addi.w $t1, $zero, 1
	sub.w $t6, $t6, $t1
# br label %label35
	st.d $t5, $fp, -316
	st.d $t6, $fp, -324
	ld.d $t3, $fp, -316
	ld.d $t4, $fp, -324
	b .EightWhile_label35
.EightWhile_label53:
# %op54 = load i32, i32* @e
	la.local $t0, e
	ld.w $t7, $t0, 0
# %op55 = icmp sgt i32 %op54, 1
	addi.w $t1, $zero, 1
	slt $t7,$t1,$t7
# br i1 %op55, label %label56, label %label59
	addi.w $t0,$zero,0
	blt $t0,$t7,.EightWhile_label56
	b .EightWhile_label59
.EightWhile_label56:
# %op57 = load i32, i32* @e
	la.local $t0, e
	ld.w $t7, $t0, 0
# %op58 = sub i32 %op57, 1
	addi.w $t1, $zero, 1
	sub.w $t7, $t7, $t1
# store i32 %op58, i32* @e
	la.local $t1, e
	st.w $t7, $t1, 0
# br label %label62
	b .EightWhile_label62
.EightWhile_label59:
# %op60 = load i32, i32* @e
	la.local $t0, e
	ld.w $t7, $t0, 0
# %op61 = add i32 %op60, 1
	addi.w $t1, $zero, 1
	add.w $t7, $t7, $t1
# store i32 %op61, i32* @e
	la.local $t1, e
	st.w $t7, $t1, 0
# br label %label44
	ld.w $t0, $fp, -308
	st.d $t0, $fp, -316
	ld.d $t6, $fp, -316
	b .EightWhile_label44
.EightWhile_label62:
# %op63 = load i32, i32* @f
	la.local $t0, f
	ld.w $t7, $t0, 0
# %op64 = icmp sgt i32 %op63, 2
	addi.w $t1, $zero, 2
	slt $t7,$t1,$t7
# br i1 %op64, label %label65, label %label68
	addi.w $t0,$zero,0
	blt $t0,$t7,.EightWhile_label65
	b .EightWhile_label68
.EightWhile_label65:
# %op66 = load i32, i32* @f
	la.local $t0, f
	ld.w $t7, $t0, 0
# %op67 = sub i32 %op66, 2
	addi.w $t1, $zero, 2
	sub.w $t7, $t7, $t1
# store i32 %op67, i32* @f
	la.local $t1, f
	st.w $t7, $t1, 0
# br label %label71
	b .EightWhile_label71
.EightWhile_label68:
# %op69 = load i32, i32* @f
	la.local $t0, f
	ld.w $t7, $t0, 0
# %op70 = add i32 %op69, 1
	addi.w $t1, $zero, 1
	add.w $t7, $t7, $t1
# store i32 %op70, i32* @f
	la.local $t1, f
	st.w $t7, $t1, 0
# br label %label53
	b .EightWhile_label53
.EightWhile_label71:
# %op72 = load i32, i32* @g
	la.local $t0, g
	ld.w $t7, $t0, 0
# %op73 = icmp slt i32 %op72, 3
	addi.w $t1, $zero, 3
	slt $t7,$t7,$t1
# br i1 %op73, label %label74, label %label77
	addi.w $t0,$zero,0
	blt $t0,$t7,.EightWhile_label74
	b .EightWhile_label77
.EightWhile_label74:
# %op75 = load i32, i32* @g
	la.local $t0, g
	ld.w $t7, $t0, 0
# %op76 = add i32 %op75, 10
	addi.w $t1, $zero, 10
	add.w $t7, $t7, $t1
# store i32 %op76, i32* @g
	la.local $t1, g
	st.w $t7, $t1, 0
# br label %label80
	b .EightWhile_label80
.EightWhile_label77:
# %op78 = load i32, i32* @g
	la.local $t0, g
	ld.w $t7, $t0, 0
# %op79 = sub i32 %op78, 8
	addi.w $t1, $zero, 8
	sub.w $t7, $t7, $t1
# store i32 %op79, i32* @g
	la.local $t1, g
	st.w $t7, $t1, 0
# br label %label62
	b .EightWhile_label62
.EightWhile_label80:
# %op81 = load i32, i32* @h
	la.local $t0, h
	ld.w $t7, $t0, 0
# %op82 = icmp slt i32 %op81, 10
	addi.w $t1, $zero, 10
	slt $t7,$t7,$t1
# br i1 %op82, label %label83, label %label86
	addi.w $t0,$zero,0
	blt $t0,$t7,.EightWhile_label83
	b .EightWhile_label86
.EightWhile_label83:
# %op84 = load i32, i32* @h
	la.local $t0, h
	ld.w $t7, $t0, 0
# %op85 = add i32 %op84, 8
	addi.w $t1, $zero, 8
	add.w $t7, $t7, $t1
# store i32 %op85, i32* @h
	la.local $t1, h
	st.w $t7, $t1, 0
# br label %label80
	b .EightWhile_label80
.EightWhile_label86:
# %op87 = load i32, i32* @h
	la.local $t0, h
	ld.w $t7, $t0, 0
# %op88 = sub i32 %op87, 1
	addi.w $t1, $zero, 1
	sub.w $t7, $t7, $t1
# store i32 %op88, i32* @h
	la.local $t1, h
	st.w $t7, $t1, 0
# br label %label71
	b .EightWhile_label71
EightWhile_exit:
	# epilog
	ld.d $ra, $sp, 344
	ld.d $fp, $sp, 336
	addi.d $sp, $sp, 352
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.main_label_entry:
# store i32 1, i32* @g
	la.local $t1, g
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# store i32 2, i32* @h
	la.local $t1, h
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# store i32 4, i32* @e
	la.local $t1, e
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# store i32 6, i32* @f
	la.local $t1, f
	addi.w $t0, $zero, 6
	st.w $t0, $t1, 0
# %op0 = call i32 @EightWhile()
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
	bl EightWhile
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
