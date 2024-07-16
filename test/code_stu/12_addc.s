# Global variables
	.text
	.data
	.globl a
	.align 2
	.type a, @object
	.size a, 4
a:
	.word 10
	.text
	.align 2
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.main_label_entry:
# %op0 = load i32, i32* @a
	la.local $t0, a
	ld.w $a0, $t0, 0
# %op1 = add i32 %op0, 5
	addi.w $t1, $zero, 5
	add.w $a0, $a0, $t1
# ret i32 %op1
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
