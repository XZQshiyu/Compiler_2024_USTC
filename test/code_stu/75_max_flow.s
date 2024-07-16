# Global variables
	.text
	.data
	.globl INF
	.align 2
	.type INF, @object
	.size INF, 4
INF:
	.word 1879048192
	.globl size
	.align 3
	.type size, @object
	.size size, 40
size:
	.space 40
	.globl to
	.align 3
	.type to, @object
	.size to, 400
to:
	.space 400
	.globl cap
	.align 3
	.type cap, @object
	.size cap, 400
cap:
	.space 400
	.globl rev
	.align 3
	.type rev, @object
	.size rev, 400
rev:
	.space 400
	.globl used
	.align 3
	.type used, @object
	.size used, 40
used:
	.space 40
	.text
	.align 2
	.globl my_memset
	.type my_memset, @function
my_memset:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.my_memset_label_entry:
# br label %label7
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a3, $fp, -312
	b .my_memset_label7
.my_memset_label7:
# %op19 = phi i32 [ 0, %label_entry ], [ %op17, %label11 ]
# %op10 = icmp slt i32 %op19, %arg2
	slt $a4,$a3,$a2
# br i1 %op10, label %label11, label %label18
	addi.w $t0,$zero,0
	blt $t0,$a4,.my_memset_label11
	b .my_memset_label18
.my_memset_label11:
# %op15 = getelementptr i32, i32* %arg0, i32 %op19
	add.d $t8,$a3 , $a3
	add.d $t8,$t8,$t8
	add.d $a4,$t8,$a0
# store i32 %arg1, i32* %op15
	st.w $a1, $a4, 0
# %op17 = add i32 %op19, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label7
	st.d $a4, $fp, -312
	ld.d $a3, $fp, -312
	b .my_memset_label7
.my_memset_label18:
# ret void
	addi.w $a0, $zero, 0
	b my_memset_exit
my_memset_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl add_node
	.type add_node, @function
add_node:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.add_node_label_entry:
# %op9 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a3,$t1,$t0
# %op10 = load i32, i32* %op9
	ld.w $a3, $a3, 0
# %op11 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %arg0, i32 %op10
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, to
	add.d $a3,$t1,$t0
# store i32 %arg1, i32* %op11
	st.w $a1, $a3, 0
# %op15 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a3,$t1,$t0
# %op16 = load i32, i32* %op15
	ld.w $a3, $a3, 0
# %op17 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %arg0, i32 %op16
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a3,$t1,$t0
# store i32 %arg2, i32* %op17
	st.w $a2, $a3, 0
# %op19 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a2,$t1,$t0
# %op20 = load i32, i32* %op19
	ld.w $a2, $a2, 0
# %op23 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a3,$t1,$t0
# %op24 = load i32, i32* %op23
	ld.w $a3, $a3, 0
# %op25 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %arg0, i32 %op24
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, rev
	add.d $a3,$t1,$t0
# store i32 %op20, i32* %op25
	st.w $a2, $a3, 0
# %op29 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a2,$t1,$t0
# %op30 = load i32, i32* %op29
	ld.w $a2, $a2, 0
# %op31 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %arg1, i32 %op30
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, to
	add.d $a2,$t1,$t0
# store i32 %arg0, i32* %op31
	st.w $a0, $a2, 0
# %op34 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a2,$t1,$t0
# %op35 = load i32, i32* %op34
	ld.w $a2, $a2, 0
# %op36 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %arg1, i32 %op35
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a2,$t1,$t0
# store i32 0, i32* %op36
	addi.w $t0, $zero, 0
	st.w $t0, $a2, 0
# %op38 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a2,$t1,$t0
# %op39 = load i32, i32* %op38
	ld.w $a2, $a2, 0
# %op42 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a3,$t1,$t0
# %op43 = load i32, i32* %op42
	ld.w $a3, $a3, 0
# %op44 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %arg1, i32 %op43
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, rev
	add.d $a3,$t1,$t0
# store i32 %op39, i32* %op44
	st.w $a2, $a3, 0
# %op46 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a2,$t1,$t0
# %op47 = load i32, i32* %op46
	ld.w $a2, $a2, 0
# %op48 = add i32 %op47, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a2, $t1
# %op50 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a0,$t1,$t0
# store i32 %op48, i32* %op50
	st.w $a2, $a0, 0
# %op52 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a0,$t1,$t0
# %op53 = load i32, i32* %op52
	ld.w $a0, $a0, 0
# %op54 = add i32 %op53, 1
	addi.w $t1, $zero, 1
	add.w $a0, $a0, $t1
# %op56 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a1,$t1,$t0
# store i32 %op54, i32* %op56
	st.w $a0, $a1, 0
# ret void
	addi.w $a0, $zero, 0
	b add_node_exit
add_node_exit:
	# epilog
	ld.d $ra, $sp, 296
	ld.d $fp, $sp, 288
	addi.d $sp, $sp, 304
	jr $ra
	.globl dfs
	.type dfs, @function
dfs:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.dfs_label_entry:
# %op8 = icmp eq i32 %arg0, %arg1
	slt $t8,$a1,$a0
	slt $t0,$a0,$a1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a3,$t8,$t0
# br i1 %op8, label %label9, label %label11
	addi.w $t0,$zero,0
	blt $t0,$a3,.dfs_label9
	b .dfs_label11
.dfs_label9:
# ret i32 %arg2
	or $a0, $zero, $a2
	b dfs_exit
.dfs_label11:
# %op13 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 %arg0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, used
	add.d $a3,$t1,$t0
# store i32 1, i32* %op13
	addi.w $t0, $zero, 1
	st.w $t0, $a3, 0
# br label %label15
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a3, $fp, -312
	b .dfs_label15
.dfs_label15:
# %op105 = phi i32 [ 0, %label11 ], [ %op32, %label30 ], [ %op102, %label100 ], [ %op41, %label39 ]
# %op18 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 %arg0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a4,$t1,$t0
# %op19 = load i32, i32* %op18
	ld.w $a4, $a4, 0
# %op20 = icmp slt i32 %op105, %op19
	slt $a4,$a3,$a4
# br i1 %op20, label %label21, label %label29
	addi.w $t0,$zero,0
	blt $t0,$a4,.dfs_label21
	b .dfs_label29
.dfs_label21:
# %op24 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, to
	add.d $a4,$t1,$t0
# %op25 = load i32, i32* %op24
	ld.w $a4, $a4, 0
# %op26 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 %op25
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	la.local $t1, used
	add.d $a4,$t1,$t0
# %op27 = load i32, i32* %op26
	ld.w $a4, $a4, 0
# %op28 = icmp ne i32 0, %op27
	addi.w $t0, $zero, 0
	slt $t8,$a4,$t0
	slt $t0,$t0,$a4
	or $a4,$t0,$t8
# br i1 %op28, label %label30, label %label33
	addi.w $t0,$zero,0
	blt $t0,$a4,.dfs_label30
	b .dfs_label33
.dfs_label29:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b dfs_exit
.dfs_label30:
# %op32 = add i32 %op105, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label15
	st.d $a4, $fp, -312
	ld.d $a3, $fp, -312
	b .dfs_label15
.dfs_label33:
# %op36 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a4,$t1,$t0
# %op37 = load i32, i32* %op36
	ld.w $a4, $a4, 0
# %op38 = icmp sle i32 %op37, 0
	addi.w $t1, $zero, 0
	slt $a4,$t1,$a4
	addi.w $t8,$zero,1
	sub.w $a4,$t8,$a4
# br i1 %op38, label %label39, label %label42
	addi.w $t0,$zero,0
	blt $t0,$a4,.dfs_label39
	b .dfs_label42
.dfs_label39:
# %op41 = add i32 %op105, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label15
	st.d $a4, $fp, -312
	ld.d $a3, $fp, -312
	b .dfs_label15
.dfs_label42:
# %op47 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a4,$t1,$t0
# %op48 = load i32, i32* %op47
	ld.w $a4, $a4, 0
# %op49 = icmp slt i32 %arg2, %op48
	slt $a4,$a2,$a4
# br i1 %op49, label %label50, label %label52
	addi.w $t0,$zero,0
	blt $t0,$a4,.dfs_label50
	b .dfs_label52
.dfs_label50:
# br label %label57
	st.d $a2, $fp, -312
	ld.d $a4, $fp, -312
	b .dfs_label57
.dfs_label52:
# %op55 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a5,$t1,$t0
# %op56 = load i32, i32* %op55
	ld.w $a5, $a5, 0
# br label %label57
	st.d $a5, $fp, -312
	ld.d $a4, $fp, -312
	b .dfs_label57
.dfs_label57:
# %op106 = phi i32 [ %arg2, %label50 ], [ %op56, %label52 ]
# %op61 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, to
	add.d $a5,$t1,$t0
# %op62 = load i32, i32* %op61
	ld.w $a5, $a5, 0
# %op65 = call i32 @dfs(i32 %op62, i32 %arg1, i32 %op106)
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
	ld.d $a0, $fp, -64
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -56
	bl dfs
	addi.d $a4,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
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
# %op67 = icmp sgt i32 %op65, 0
	addi.w $t1, $zero, 0
	slt $a5,$t1,$a4
# br i1 %op67, label %label68, label %label100
	addi.w $t0,$zero,0
	blt $t0,$a5,.dfs_label68
	b .dfs_label100
.dfs_label68:
# %op71 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a5,$t1,$t0
# %op72 = load i32, i32* %op71
	ld.w $a5, $a5, 0
# %op74 = sub i32 %op72, %op65
	sub.w $a5, $a5, $a4
# %op77 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a6,$t1,$t0
# store i32 %op74, i32* %op77
	st.w $a5, $a6, 0
# %op80 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, to
	add.d $a5,$t1,$t0
# %op81 = load i32, i32* %op80
	ld.w $a5, $a5, 0
# %op84 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, rev
	add.d $a6,$t1,$t0
# %op85 = load i32, i32* %op84
	ld.w $a6, $a6, 0
# %op86 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %op81, i32 %op85
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a5,$t1,$t0
# %op87 = load i32, i32* %op86
	ld.w $a5, $a5, 0
# %op89 = add i32 %op87, %op65
	add.w $a5, $a5, $a4
# %op92 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @to, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, to
	add.d $a6,$t1,$t0
# %op93 = load i32, i32* %op92
	ld.w $a6, $a6, 0
# %op96 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @rev, i32 0, i32 %arg0, i32 %op105
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, rev
	add.d $a7,$t1,$t0
# %op97 = load i32, i32* %op96
	ld.w $a7, $a7, 0
# %op98 = getelementptr [10 x [10 x i32]], [10 x [10 x i32]]* @cap, i32 0, i32 %op93, i32 %op97
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 400
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 40
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a7,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cap
	add.d $a6,$t1,$t0
# store i32 %op89, i32* %op98
	st.w $a5, $a6, 0
# ret i32 %op65
	or $a0, $zero, $a4
	b dfs_exit
.dfs_label100:
# %op102 = add i32 %op105, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label15
	st.d $a4, $fp, -312
	ld.d $a3, $fp, -312
	b .dfs_label15
dfs_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl max_flow
	.type max_flow, @function
max_flow:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.max_flow_label_entry:
# br label %label5
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a0, $fp, -312
	b .max_flow_label5
.max_flow_label5:
# %op24 = phi i32 [ 0, %label_entry ], [ %op22, %label19 ]
# br label %label7
	b .max_flow_label7
.max_flow_label7:
# %op8 = getelementptr [10 x i32], [10 x i32]* @used, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, used
	add.d $a3,$t1,$t0
# call void @my_memset(i32* %op8, i32 0, i32 10)
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
	ld.d $a0, $fp, -48
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 10
	bl my_memset
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
# %op12 = load i32, i32* @INF
	la.local $t0, INF
	ld.w $a3, $t0, 0
# %op13 = call i32 @dfs(i32 %arg0, i32 %arg1, i32 %op12)
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
	ld.d $a2, $fp, -48
	bl dfs
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
# %op15 = icmp eq i32 %op13, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a3
	slt $t0,$a3,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a4,$t8,$t0
# br i1 %op15, label %label17, label %label19
	addi.w $t0,$zero,0
	blt $t0,$a4,.max_flow_label17
	b .max_flow_label19
.max_flow_label17:
# ret i32 %op24
	b max_flow_exit
.max_flow_label19:
# %op22 = add i32 %op24, %op13
	add.w $a3, $a0, $a3
# br label %label5
	st.d $a3, $fp, -312
	ld.d $a0, $fp, -312
	b .max_flow_label5
max_flow_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
	.globl main
	.type main, @function
main:
	addi.d $sp, $sp, -320
	st.d $ra, $sp, 312
	st.d $fp, $sp, 304
	addi.d $fp, $sp, 320
.main_label_entry:
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
# %op3 = call i32 @getint()
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
# %op4 = getelementptr [10 x i32], [10 x i32]* @size, i32 0, i32 0
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 40
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, size
	add.d $a2,$t1,$t0
# call void @my_memset(i32* %op4, i32 0, i32 10)
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
	ld.d $a0, $fp, -40
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 10
	bl my_memset
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
# br label %label5
	st.d $a1, $fp, -312
	ld.d $a2, $fp, -312
	b .main_label5
.main_label5:
# %op26 = phi i32 [ %op3, %label_entry ], [ %op19, %label8 ]
# %op7 = icmp sgt i32 %op26, 0
	addi.w $t1, $zero, 0
	slt $a1,$t1,$a2
# br i1 %op7, label %label8, label %label20
	addi.w $t0,$zero,0
	blt $t0,$a1,.main_label8
	b .main_label20
.main_label8:
# %op11 = call i32 @getint()
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
# %op12 = call i32 @getint()
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
# %op14 = call i32 @getint()
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
	addi.d $a4,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
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
# call void @add_node(i32 %op11, i32 %op12, i32 %op14)
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
	ld.d $a1, $fp, -48
	ld.d $a2, $fp, -56
	bl add_node
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
# %op19 = sub i32 %op26, 1
	addi.w $t1, $zero, 1
	sub.w $a1, $a2, $t1
# br label %label5
	st.d $a1, $fp, -312
	ld.d $a2, $fp, -312
	b .main_label5
.main_label20:
# %op22 = call i32 @max_flow(i32 1, i32 %op2)
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
	addi.w $a1, $zero, 1
	ld.d $a2, $fp, -24
	bl max_flow
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
# call void @putint(i32 %op22)
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
