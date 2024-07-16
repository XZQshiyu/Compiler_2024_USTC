# Global variables
	.text
	.data
	.globl maxn
	.align 2
	.type maxn, @object
	.size maxn, 4
maxn:
	.word 18
	.globl mod
	.align 2
	.type mod, @object
	.size mod, 4
mod:
	.word 1000000007
	.globl dp
	.align 3
	.type dp, @object
	.size dp, 52907904
dp:
	.space 52907904
	.globl list
	.align 3
	.type list, @object
	.size list, 800
list:
	.space 800
	.globl cns
	.align 3
	.type cns, @object
	.size cns, 80
cns:
	.space 80
	.text
	.align 2
	.globl equal
	.type equal, @function
equal:
	addi.d $sp, $sp, -304
	st.d $ra, $sp, 296
	st.d $fp, $sp, 288
	addi.d $fp, $sp, 304
.equal_label_entry:
# %op6 = icmp eq i32 %arg0, %arg1
	slt $t8,$a1,$a0
	slt $t0,$a0,$a1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a0,$t8,$t0
# br i1 %op6, label %label7, label %label8
	addi.w $t0,$zero,0
	blt $t0,$a0,.equal_label7
	b .equal_label8
.equal_label7:
# ret i32 1
	addi.w $t0, $zero, 1
	or $a0, $zero, $t0
	b equal_exit
.equal_label8:
# ret i32 0
	addi.w $t0, $zero, 0
	or $a0, $zero, $t0
	b equal_exit
equal_exit:
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
# %op18 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %arg0, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 12916
	ori $t8, $t8, 3968
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 717
	ori $t8, $t8, 2496
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 39
	ori $t8, $t8, 3552
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 2
	ori $t8, $t8, 880
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 504
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 28
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dp
	add.d $a6,$t1,$t0
# %op19 = load i32, i32* %op18
	ld.w $a6, $a6, 0
# %op21 = icmp ne i32 %op19, -1
	addi.w $t1, $zero, -1
	slt $t8,$t1,$a6
	slt $t0,$a6,$t1
	or $a6,$t0,$t8
# br i1 %op21, label %label22, label %label31
	addi.w $t0,$zero,0
	blt $t0,$a6,.dfs_label22
	b .dfs_label31
.dfs_label22:
# %op29 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %arg0, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 12916
	ori $t8, $t8, 3968
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 717
	ori $t8, $t8, 2496
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 39
	ori $t8, $t8, 3552
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 2
	ori $t8, $t8, 880
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 504
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 28
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dp
	add.d $a6,$t1,$t0
# %op30 = load i32, i32* %op29
	ld.w $a6, $a6, 0
# ret i32 %op30
	or $a0, $zero, $a6
	b dfs_exit
.dfs_label31:
# %op34 = add i32 %arg0, %arg1
	add.w $a6, $a0, $a1
# %op36 = add i32 %op34, %arg2
	add.w $a6, $a6, $a2
# %op38 = add i32 %op36, %arg3
	add.w $a6, $a6, $a3
# %op40 = add i32 %op38, %arg4
	add.w $a6, $a6, $a4
# %op41 = icmp eq i32 %op40, 0
	addi.w $t1, $zero, 0
	slt $t8,$t1,$a6
	slt $t0,$a6,$t1
	or $t0,$t0,$t8
	addi.w $t8,$zero,1
	sub.w  $a6,$t8,$t0
# br i1 %op41, label %label42, label %label43
	addi.w $t0,$zero,0
	blt $t0,$a6,.dfs_label42
	b .dfs_label43
.dfs_label42:
# ret i32 1
	addi.w $t0, $zero, 1
	or $a0, $zero, $t0
	b dfs_exit
.dfs_label43:
# %op46 = icmp ne i32 0, %arg0
	addi.w $t0, $zero, 0
	slt $t8,$a0,$t0
	slt $t0,$t0,$a0
	or $a6,$t0,$t8
# br i1 %op46, label %label47, label %label64
	addi.w $t0,$zero,0
	blt $t0,$a6,.dfs_label47
	addi.w $t0, $zero, 0
	or $a7, $zero, $t0
	b .dfs_label64
.dfs_label47:
# %op51 = call i32 @equal(i32 %arg5, i32 2)
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
	addi.w $a1, $zero, 2
	bl equal
	addi.d $a6,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
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
# %op52 = sub i32 %arg0, %op51
	sub.w $a6, $a0, $a6
# %op54 = sub i32 %arg0, 1
	addi.w $t1, $zero, 1
	sub.w $t2, $a0, $t1
# %op59 = call i32 @dfs(i32 %op54, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 1)
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
	ld.d $a0, $fp, -88
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	addi.w $a5, $zero, 1
	bl dfs
	addi.d $t2,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
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
# %op60 = mul i32 %op52, %op59
	mul.w $a6, $a6, $t2
# %op61 = add i32 0, %op60
	addi.w $t0, $zero, 0
	add.w $a6, $t0, $a6
# %op62 = load i32, i32* @mod
	la.local $t0, mod
	ld.w $t2, $t0, 0
# %op63 = srem i32 %op61, %op62
	mod.w $a6, $a6, $t2
# br label %label64
	st.d $a6, $fp, -312
	ld.d $a7, $fp, -312
	b .dfs_label64
.dfs_label64:
# %op164 = phi i32 [ 0, %label43 ], [ %op63, %label47 ]
# %op66 = icmp ne i32 0, %arg1
	addi.w $t0, $zero, 0
	slt $t8,$a1,$t0
	slt $t0,$t0,$a1
	or $a6,$t0,$t8
# br i1 %op66, label %label67, label %label85
	addi.w $t0,$zero,0
	blt $t0,$a6,.dfs_label67
	or $t2, $zero, $a7
	b .dfs_label85
.dfs_label67:
# %op71 = call i32 @equal(i32 %arg5, i32 3)
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
	addi.w $a1, $zero, 3
	bl equal
	addi.d $a6,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
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
# %op72 = sub i32 %arg1, %op71
	sub.w $a6, $a1, $a6
# %op74 = add i32 %arg0, 1
	addi.w $t1, $zero, 1
	add.w $t3, $a0, $t1
# %op76 = sub i32 %arg1, 1
	addi.w $t1, $zero, 1
	sub.w $t4, $a1, $t1
# %op80 = call i32 @dfs(i32 %op74, i32 %op76, i32 %arg2, i32 %arg3, i32 %arg4, i32 2)
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
	ld.d $a0, $fp, -96
	ld.d $a1, $fp, -104
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	addi.w $a5, $zero, 2
	bl dfs
	addi.d $t3,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
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
# %op81 = mul i32 %op72, %op80
	mul.w $a6, $a6, $t3
# %op82 = add i32 %op164, %op81
	add.w $a6, $a7, $a6
# %op83 = load i32, i32* @mod
	la.local $t0, mod
	ld.w $a7, $t0, 0
# %op84 = srem i32 %op82, %op83
	mod.w $a6, $a6, $a7
# br label %label85
	st.d $a6, $fp, -312
	ld.d $t2, $fp, -312
	b .dfs_label85
.dfs_label85:
# %op165 = phi i32 [ %op164, %label64 ], [ %op84, %label67 ]
# %op87 = icmp ne i32 0, %arg2
	addi.w $t0, $zero, 0
	slt $t8,$a2,$t0
	slt $t0,$t0,$a2
	or $a6,$t0,$t8
# br i1 %op87, label %label88, label %label106
	addi.w $t0,$zero,0
	blt $t0,$a6,.dfs_label88
	or $a7, $zero, $t2
	b .dfs_label106
.dfs_label88:
# %op92 = call i32 @equal(i32 %arg5, i32 4)
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
	addi.w $a1, $zero, 4
	bl equal
	addi.d $a6,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
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
# %op93 = sub i32 %arg2, %op92
	sub.w $a6, $a2, $a6
# %op96 = add i32 %arg1, 1
	addi.w $t1, $zero, 1
	add.w $t3, $a1, $t1
# %op98 = sub i32 %arg2, 1
	addi.w $t1, $zero, 1
	sub.w $t4, $a2, $t1
# %op101 = call i32 @dfs(i32 %arg0, i32 %op96, i32 %op98, i32 %arg3, i32 %arg4, i32 3)
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
	ld.d $a1, $fp, -96
	ld.d $a2, $fp, -104
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	addi.w $a5, $zero, 3
	bl dfs
	addi.d $t3,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
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
# %op102 = mul i32 %op93, %op101
	mul.w $a6, $a6, $t3
# %op103 = add i32 %op165, %op102
	add.w $a6, $t2, $a6
# %op104 = load i32, i32* @mod
	la.local $t0, mod
	ld.w $t2, $t0, 0
# %op105 = srem i32 %op103, %op104
	mod.w $a6, $a6, $t2
# br label %label106
	st.d $a6, $fp, -312
	ld.d $a7, $fp, -312
	b .dfs_label106
.dfs_label106:
# %op166 = phi i32 [ %op165, %label85 ], [ %op105, %label88 ]
# %op108 = icmp ne i32 0, %arg3
	addi.w $t0, $zero, 0
	slt $t8,$a3,$t0
	slt $t0,$t0,$a3
	or $a6,$t0,$t8
# br i1 %op108, label %label109, label %label127
	addi.w $t0,$zero,0
	blt $t0,$a6,.dfs_label109
	or $t2, $zero, $a7
	b .dfs_label127
.dfs_label109:
# %op113 = call i32 @equal(i32 %arg5, i32 5)
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
	addi.w $a1, $zero, 5
	bl equal
	addi.d $a6,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
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
# %op114 = sub i32 %arg3, %op113
	sub.w $a6, $a3, $a6
# %op118 = add i32 %arg2, 1
	addi.w $t1, $zero, 1
	add.w $t3, $a2, $t1
# %op120 = sub i32 %arg3, 1
	addi.w $t1, $zero, 1
	sub.w $t4, $a3, $t1
# %op122 = call i32 @dfs(i32 %arg0, i32 %arg1, i32 %op118, i32 %op120, i32 %arg4, i32 4)
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
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -96
	ld.d $a3, $fp, -104
	ld.d $a4, $fp, -56
	addi.w $a5, $zero, 4
	bl dfs
	addi.d $t3,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
	ld.d $a6, $fp, -72
	ld.d $a7, $fp, -80
	ld.d $t2, $fp, -88
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
# %op123 = mul i32 %op114, %op122
	mul.w $a6, $a6, $t3
# %op124 = add i32 %op166, %op123
	add.w $a6, $a7, $a6
# %op125 = load i32, i32* @mod
	la.local $t0, mod
	ld.w $a7, $t0, 0
# %op126 = srem i32 %op124, %op125
	mod.w $a6, $a6, $a7
# br label %label127
	st.d $a6, $fp, -312
	ld.d $t2, $fp, -312
	b .dfs_label127
.dfs_label127:
# %op167 = phi i32 [ %op166, %label106 ], [ %op126, %label109 ]
# %op129 = icmp ne i32 0, %arg4
	addi.w $t0, $zero, 0
	slt $t8,$a4,$t0
	slt $t0,$t0,$a4
	or $a6,$t0,$t8
# br i1 %op129, label %label130, label %label145
	addi.w $t0,$zero,0
	blt $t0,$a6,.dfs_label130
	or $a7, $zero, $t2
	b .dfs_label145
.dfs_label130:
# %op137 = add i32 %arg3, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a3, $t1
# %op139 = sub i32 %arg4, 1
	addi.w $t1, $zero, 1
	sub.w $t3, $a4, $t1
# %op140 = call i32 @dfs(i32 %arg0, i32 %arg1, i32 %arg2, i32 %op137, i32 %op139, i32 5)
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
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -72
	ld.d $a4, $fp, -96
	addi.w $a5, $zero, 5
	bl dfs
	addi.d $a6,$a0,0
	ld.d $a0, $fp, -24
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	ld.d $a5, $fp, -64
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
# %op141 = mul i32 %arg4, %op140
	mul.w $a6, $a4, $a6
# %op142 = add i32 %op167, %op141
	add.w $a6, $t2, $a6
# %op143 = load i32, i32* @mod
	la.local $t0, mod
	ld.w $t2, $t0, 0
# %op144 = srem i32 %op142, %op143
	mod.w $a6, $a6, $t2
# br label %label145
	st.d $a6, $fp, -312
	ld.d $a7, $fp, -312
	b .dfs_label145
.dfs_label145:
# %op168 = phi i32 [ %op167, %label127 ], [ %op144, %label130 ]
# %op147 = load i32, i32* @mod
	la.local $t0, mod
	ld.w $a6, $t0, 0
# %op148 = srem i32 %op168, %op147
	mod.w $a6, $a7, $a6
# %op155 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %arg0, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 12916
	ori $t8, $t8, 3968
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 717
	ori $t8, $t8, 2496
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 39
	ori $t8, $t8, 3552
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 2
	ori $t8, $t8, 880
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 504
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 28
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dp
	add.d $a7,$t1,$t0
# store i32 %op148, i32* %op155
	st.w $a6, $a7, 0
# %op162 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %arg0, i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4, i32 %arg5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 12916
	ori $t8, $t8, 3968
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 717
	ori $t8, $t8, 2496
	mul.d $t8,$a0,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 39
	ori $t8, $t8, 3552
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 2
	ori $t8, $t8, 880
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 504
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 28
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dp
	add.d $a0,$t1,$t0
# %op163 = load i32, i32* %op162
	ld.w $a0, $a0, 0
# ret i32 %op163
	b dfs_exit
dfs_exit:
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
# br label %label3
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label3
.main_label3:
# %op103 = phi i32 [ 0, %label_entry ], [ %op18, %label16 ]
# %op5 = load i32, i32* @maxn
	la.local $t0, maxn
	ld.w $a2, $t0, 0
# %op6 = icmp slt i32 %op103, %op5
	slt $a2,$a1,$a2
# br i1 %op6, label %label7, label %label9
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label7
	b .main_label9
.main_label7:
# br label %label10
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a2, $fp, -312
	b .main_label10
.main_label9:
# br label %label63
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label63
.main_label10:
# %op108 = phi i32 [ 0, %label7 ], [ %op27, %label25 ]
# %op12 = load i32, i32* @maxn
	la.local $t0, maxn
	ld.w $a3, $t0, 0
# %op13 = icmp slt i32 %op108, %op12
	slt $a3,$a2,$a3
# br i1 %op13, label %label14, label %label16
	addi.w $t0,$zero,0
	blt $t0,$a3,.main_label14
	b .main_label16
.main_label14:
# br label %label19
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a3, $fp, -312
	b .main_label19
.main_label16:
# %op18 = add i32 %op103, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label3
	st.d $a2, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label3
.main_label19:
# %op112 = phi i32 [ 0, %label14 ], [ %op36, %label34 ]
# %op21 = load i32, i32* @maxn
	la.local $t0, maxn
	ld.w $a4, $t0, 0
# %op22 = icmp slt i32 %op112, %op21
	slt $a4,$a3,$a4
# br i1 %op22, label %label23, label %label25
	addi.w $t0,$zero,0
	blt $t0,$a4,.main_label23
	b .main_label25
.main_label23:
# br label %label28
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a4, $fp, -312
	b .main_label28
.main_label25:
# %op27 = add i32 %op108, 1
	addi.w $t1, $zero, 1
	add.w $a3, $a2, $t1
# br label %label10
	st.d $a3, $fp, -312
	ld.d $a2, $fp, -312
	b .main_label10
.main_label28:
# %op115 = phi i32 [ 0, %label23 ], [ %op45, %label43 ]
# %op30 = load i32, i32* @maxn
	la.local $t0, maxn
	ld.w $a5, $t0, 0
# %op31 = icmp slt i32 %op115, %op30
	slt $a5,$a4,$a5
# br i1 %op31, label %label32, label %label34
	addi.w $t0,$zero,0
	blt $t0,$a5,.main_label32
	b .main_label34
.main_label32:
# br label %label37
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a5, $fp, -312
	b .main_label37
.main_label34:
# %op36 = add i32 %op112, 1
	addi.w $t1, $zero, 1
	add.w $a4, $a3, $t1
# br label %label19
	st.d $a4, $fp, -312
	ld.d $a3, $fp, -312
	b .main_label19
.main_label37:
# %op117 = phi i32 [ 0, %label32 ], [ %op62, %label60 ]
# %op39 = load i32, i32* @maxn
	la.local $t0, maxn
	ld.w $a6, $t0, 0
# %op40 = icmp slt i32 %op117, %op39
	slt $a6,$a5,$a6
# br i1 %op40, label %label41, label %label43
	addi.w $t0,$zero,0
	blt $t0,$a6,.main_label41
	b .main_label43
.main_label41:
# br label %label46
	addi.w $t0, $zero, 0
	st.d $t0, $fp, -312
	ld.d $a6, $fp, -312
	b .main_label46
.main_label43:
# %op45 = add i32 %op115, 1
	addi.w $t1, $zero, 1
	add.w $a5, $a4, $t1
# br label %label28
	st.d $a5, $fp, -312
	ld.d $a4, $fp, -312
	b .main_label28
.main_label46:
# %op118 = phi i32 [ 0, %label41 ], [ %op59, %label49 ]
# %op48 = icmp slt i32 %op118, 7
	addi.w $t1, $zero, 7
	slt $a7,$a6,$t1
# br i1 %op48, label %label49, label %label60
	addi.w $t0,$zero,0
	blt $t0,$a7,.main_label49
	b .main_label60
.main_label49:
# %op57 = getelementptr [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]], [18 x [18 x [18 x [18 x [18 x [7 x i32]]]]]]* @dp, i32 0, i32 %op103, i32 %op108, i32 %op112, i32 %op115, i32 %op117, i32 %op118
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	lu12i.w $t8, 12916
	ori $t8, $t8, 3968
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 717
	ori $t8, $t8, 2496
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 39
	ori $t8, $t8, 3552
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	lu12i.w $t8, 2
	ori $t8, $t8, 880
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 504
	mul.d $t8,$a4,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 28
	mul.d $t8,$a5,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a6,$t8
	add.d $t0,$t0,$t8
	la.local $t1, dp
	add.d $a7,$t1,$t0
# store i32 -1, i32* %op57
	addi.w $t0, $zero, -1
	st.w $t0, $a7, 0
# %op59 = add i32 %op118, 1
	addi.w $t1, $zero, 1
	add.w $a7, $a6, $t1
# br label %label46
	st.d $a7, $fp, -312
	ld.d $a6, $fp, -312
	b .main_label46
.main_label60:
# %op62 = add i32 %op117, 1
	addi.w $t1, $zero, 1
	add.w $a6, $a5, $t1
# br label %label37
	st.d $a6, $fp, -312
	ld.d $a5, $fp, -312
	b .main_label37
.main_label63:
# %op119 = phi i32 [ 0, %label9 ], [ %op82, %label67 ]
# %op66 = icmp slt i32 %op119, %op1
	slt $a2,$a1,$a0
# br i1 %op66, label %label67, label %label83
	addi.w $t0,$zero,0
	blt $t0,$a2,.main_label67
	b .main_label83
.main_label67:
# %op68 = call i32 @getint()
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
# %op70 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %op119
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, list
	add.d $a3,$t1,$t0
# store i32 %op68, i32* %op70
	st.w $a2, $a3, 0
# %op72 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %op119
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, list
	add.d $a2,$t1,$t0
# %op73 = load i32, i32* %op72
	ld.w $a2, $a2, 0
# %op74 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 %op73
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a2,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cns
	add.d $a2,$t1,$t0
# %op75 = load i32, i32* %op74
	ld.w $a2, $a2, 0
# %op76 = add i32 %op75, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a2, $t1
# %op78 = getelementptr [200 x i32], [200 x i32]* @list, i32 0, i32 %op119
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 800
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, list
	add.d $a3,$t1,$t0
# %op79 = load i32, i32* %op78
	ld.w $a3, $a3, 0
# %op80 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 %op79
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t8, $zero, 4
	mul.d $t8,$a3,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cns
	add.d $a3,$t1,$t0
# store i32 %op76, i32* %op80
	st.w $a2, $a3, 0
# %op82 = add i32 %op119, 1
	addi.w $t1, $zero, 1
	add.w $a2, $a1, $t1
# br label %label63
	st.d $a2, $fp, -312
	ld.d $a1, $fp, -312
	b .main_label63
.main_label83:
# %op85 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 1
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 1
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cns
	add.d $a0,$t1,$t0
# %op86 = load i32, i32* %op85
	ld.w $a0, $a0, 0
# %op87 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 2
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 2
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cns
	add.d $a1,$t1,$t0
# %op88 = load i32, i32* %op87
	ld.w $a1, $a1, 0
# %op89 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 3
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 3
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cns
	add.d $a2,$t1,$t0
# %op90 = load i32, i32* %op89
	ld.w $a2, $a2, 0
# %op91 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 4
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 4
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cns
	add.d $a3,$t1,$t0
# %op92 = load i32, i32* %op91
	ld.w $a3, $a3, 0
# %op93 = getelementptr [20 x i32], [20 x i32]* @cns, i32 0, i32 5
	add.d $t0,$zero,$zero
	addi.w $t1, $zero, 0
	addi.w $t8, $zero, 80
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	addi.w $t1, $zero, 5
	addi.w $t8, $zero, 4
	mul.d $t8,$t1,$t8
	add.d $t0,$t0,$t8
	la.local $t1, cns
	add.d $a4,$t1,$t0
# %op94 = load i32, i32* %op93
	ld.w $a4, $a4, 0
# %op95 = call i32 @dfs(i32 %op86, i32 %op88, i32 %op90, i32 %op92, i32 %op94, i32 0)
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
	ld.d $a1, $fp, -32
	ld.d $a2, $fp, -40
	ld.d $a3, $fp, -48
	ld.d $a4, $fp, -56
	addi.w $a5, $zero, 0
	bl dfs
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
# call void @putint(i32 %op95)
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
# ret i32 %op95
	b main_exit
main_exit:
	# epilog
	ld.d $ra, $sp, 312
	ld.d $fp, $sp, 304
	addi.d $sp, $sp, 320
	jr $ra
