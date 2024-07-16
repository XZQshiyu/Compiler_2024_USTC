# Global variables
	.text
	.data
	.globl a
	.align 2
	.type a, @object
	.size a, 4
a:
	.word 3
	.globl b
	.align 2
	.type b, @object
	.size b, 4
b:
	.word 5
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
# %op2 = load i32, i32* @b
	la.local $t0, b
	ld.w $a0, $t0, 0
# %op3 = add i32 5, %op2
	addi.w $t0, $zero, 5
	add.w $a0, $t0, $a0
# ret i32 %op3
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
