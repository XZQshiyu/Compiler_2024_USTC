# Global variables
	.text
	.data
	.globl k
	.align 2
	.type k, @object
	.size k, 4
k:
	.word 0
	.globl n
	.align 2
	.type n, @object
	.size n, 4
n:
	.word 10
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
# store i32 1, i32* @k
	la.local $t1, k
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# br label %label1
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label1
.main_label1:
# %op17 = phi i32 [ 0, %label_entry ], [ %op8, %label6 ]
# %op3 = load i32, i32* @n
	la.local $t0, n
	ld.w $a1, $t0, 0
# %op4 = sub i32 %op3, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a1, $t1
# %op5 = icmp sle i32 %op17, %op4
	slt $a1,$a1,$a0
	addi.w $t8,$zero,1
	sub.w $a1,$t8,$a1
# br i1 %op5, label %label6, label %label14
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label6
	b .main_label14
.main_label6:
# %op8 = add i32 %op17, 1
	addi.w $t1, $zero, 1
	add.w $a1, $a0, $t1
# %op11 = load i32, i32* @k
	la.local $t0, k
	ld.w $a2, $t0, 0
# %op12 = load i32, i32* @k
	la.local $t0, k
	ld.w $a3, $t0, 0
# %op13 = add i32 %op11, %op12
	add.w $a2, $a2, $a3
# store i32 %op13, i32* @k
	la.local $t1, k
	st.w $a2, $t1, 0
# br label %label1
	st.d $a1, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label1
.main_label14:
# %op15 = load i32, i32* @k
	la.local $t0, k
	ld.w $a0, $t0, 0
# call void @putint(i32 %op15)
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
# %op16 = load i32, i32* @k
	la.local $t0, k
	ld.w $a0, $t0, 0
# ret i32 %op16
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
