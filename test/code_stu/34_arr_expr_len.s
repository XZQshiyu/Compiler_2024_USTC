# Global variables
	.text
	.data
	.globl N
	.align 2
	.type N, @object
	.size N, 4
N:
	.word -1
	.globl arr
	.align 3
	.type arr, @object
	.size arr, 24
arr:
	.word 1
	.word 2
	.word 33
	.word 4
	.word 5
	.word 6
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
# %op15 = phi i32 [ 0, %label_entry ], [ %op10, %label5 ]
# %op16 = phi i32 [ 0, %label_entry ], [ %op12, %label5 ]
# %op4 = icmp slt i32 %op16, 6
	addi.w $t1, $zero, 6
	slt $a2,$a0,$t1
# br i1 %op4, label %label5, label %label13
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label5
	b .main_label13
.main_label5:
# %op8 = getelementptr [6 x i32], [6 x i32]* @arr, i32 0, i32 %op16
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 24
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, arr
	add.d $a2,$t1,$t0
# %op9 = load i32, i32* %op8
	ld.w $a2, $a2, 0
# %op10 = add i32 %op15, %op9
	add.w $a2, $a1, $a2
# %op12 = add i32 %op16, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a0, $t1
# br label %label2
	st.d $a3, $fp, -312
	st.d $a2, $fp, -320
	ld.d $a0, $fp, -312
	ld.d $a1, $fp, -320
	b .main_label2
.main_label13:
# ret i32 %op15
	or $a0, $zero, $a1
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
