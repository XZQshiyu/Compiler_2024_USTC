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
# %op3 = zext i1 false to i32
	addi.w $t0, $zero, 0
	add.d $a0, $zero, $t0
# %op4 = sub i32 0, %op3
	addi.w $t0, $zero, 0
	sub.w $a0, $t0, $a0
# %op5 = icmp ne i32 0, %op4
	addi.w $t0, $zero, 0
	slt $t8,$a0,$t0
	slt $t0,$t0,$a0
	or $a0,$t0,$t8
# br i1 %op5, label %label6, label %label10
	addi.w $t0,$zero,0
	blt $t0,$a0,.main_label6
	b .main_label10
.main_label6:
# br label %label11
	addi.w $t0, $zero, -1
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label11
.main_label10:
# br label %label11
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .main_label11
.main_label11:
# %op13 = phi i32 [ -1, %label6 ], [ 0, %label10 ]
# ret i32 %op13
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
