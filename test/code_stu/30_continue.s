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
# br label %label2
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	b .main_label2
.main_label2:
# %op19 = phi i32 [ 0, %label_entry ], [ %op19, %label10 ], [ %op16, %label13 ]
# %op20 = phi i32 [ 0, %label_entry ], [ %op12, %label10 ], [ %op18, %label13 ]
# %op4 = icmp slt i32 %op20, 100
	addi.w $t1, $zero, 100
	slt $a2,$a0,$t1
# br i1 %op4, label %label5, label %label8
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label5
	b .main_label8
.main_label5:
# %op7 = icmp eq i32 %op20, 50
	addi.w $t1, $zero, 50
	slt $t8,$t1,$a0
	slt $t0,$a0,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a2,$t8,$t0
# br i1 %op7, label %label10, label %label13
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label10
	b .main_label13
.main_label8:
# ret i32 %op19
	or $a0, $zero, $a1
	b main_exit
.main_label10:
# %op12 = add i32 %op20, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a0, $t1
# br label %label2
	st.d $a2, $fp, -312
	st.d $a1, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	b .main_label2
.main_label13:
# %op16 = add i32 %op19, %op20
	add.w $a2, $a1, $a0
# %op18 = add i32 %op20, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a0, $t1
# br label %label2
	st.d $a3, $fp, -312
	st.d $a2, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	b .main_label2
main_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
