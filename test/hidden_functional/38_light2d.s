# Global variables
	.text
	.data
	.globl W
	.align 2
	.type W, @object
	.size W, 4
W:
	.word 192
	.globl H
	.align 2
	.type H, @object
	.size H, 4
H:
	.word 192
	.globl N
	.align 2
	.type N, @object
	.size N, 4
N:
	.word 24
	.globl PI
	.align 2
	.type PI, @object
	.size PI, 4
PI:
	.word 1078530011
	.globl TWO_PI
	.align 2
	.type TWO_PI, @object
	.size TWO_PI, 4
TWO_PI:
	.word 1086918619
	.globl MAX_STEP
	.align 2
	.type MAX_STEP, @object
	.size MAX_STEP, 4
MAX_STEP:
	.word 10
	.globl MAX_DISTANCE
	.align 2
	.type MAX_DISTANCE, @object
	.size MAX_DISTANCE, 4
MAX_DISTANCE:
	.word 1073741824
	.globl EPSILON
	.align 2
	.type EPSILON, @object
	.size EPSILON, 4
EPSILON:
	.word 897988541
	.globl RAND_MAX
	.align 2
	.type RAND_MAX, @object
	.size RAND_MAX, 4
RAND_MAX:
	.word 100000006
	.globl seed
	.align 2
	.type seed, @object
	.size seed, 4
seed:
	.word 0
	.text
	.align 2
	.globl rand
	.type rand, @function
rand:
	addi sp, sp, -304
	sd ra, 296(sp)
	sd s0, 288(sp)
	addi s0, sp, 304
.rand_label_entry:
# %op0 = load i32, i32* @seed
	la t0, seed
	lw a0, 0(t0)
# %op1 = mul i32 %op0, 19980130
	li t1, 19980130
	mul a0, a0, t1
# %op2 = add i32 %op1, 23333
	li t1, 23333
	add a0, a0, t1
# %op3 = srem i32 %op2, 100000007
	li t1, 100000007
	rem a0, a0, t1
# store i32 %op3, i32* @seed
	la t1, seed
	sw a0, 0(t1)
# %op4 = load i32, i32* @seed
	la t0, seed
	lw a0, 0(t0)
# %op5 = icmp slt i32 %op4, 0
	addi t1, zero, 0
	slt a0,a0,t1
# br i1 %op5, label %label6, label %label9
	addi t0,zero,0
	blt t0,a0,.rand_label6
	j .rand_label9
.rand_label6:
# %op7 = load i32, i32* @seed
	la t0, seed
	lw a0, 0(t0)
# %op8 = add i32 %op7, 100000007
	li t1, 100000007
	add a0, a0, t1
# store i32 %op8, i32* @seed
	la t1, seed
	sw a0, 0(t1)
# br label %label9
	j .rand_label9
.rand_label9:
# %op10 = load i32, i32* @seed
	la t0, seed
	lw a0, 0(t0)
# ret i32 %op10
	j rand_exit
rand_exit:
	# epilog
	ld ra, 296(sp)
	ld s0, 288(sp)
	addi sp, sp, 304
	jr ra
	.globl my_fabs
	.type my_fabs, @function
my_fabs:
	addi sp, sp, -304
	sd ra, 296(sp)
	sd s0, 288(sp)
	addi s0, sp, 304
.my_fabs_label_entry:
# %op4 = fcmp ugt float %arg0, 0x0
	li s11, 0
	fmv.s.x ft1, s11
	flt.s s9, ft1, fa0
	bnez      s9, float_true1
	j          float_false1
float_true1:
	addi     a0, zero, 1
	j          float_exit1
float_false1:
	addi     a0, zero, 0
	j          float_exit1
float_exit1:
# br i1 %op4, label %label5, label %label7
	addi t0,zero,0
	blt t0,a0,.my_fabs_label5
	j .my_fabs_label7
.my_fabs_label5:
# ret float %arg0
	j my_fabs_exit
.my_fabs_label7:
# %op9 = fsub float 0x0, %arg0
	li s11, 0
	fmv.s.x ft0, s11
	fsub.s fa0,ft0,fa0
# ret float %op9
	j my_fabs_exit
my_fabs_exit:
	# epilog
	ld ra, 296(sp)
	ld s0, 288(sp)
	addi sp, sp, 304
	jr ra
	.globl my_sqrt
	.type my_sqrt, @function
my_sqrt:
	addi sp, sp, -320
	sd ra, 312(sp)
	sd s0, 304(sp)
	addi s0, sp, 320
.my_sqrt_label_entry:
# %op5 = fdiv float %arg0, 0x4020000000000000
	li s11, 1090519040
	fmv.s.x ft1, s11
	fdiv.s fa1,fa0,ft1
# %op6 = fadd float %op5, 0x3fe0000000000000
	li s11, 1056964608
	fmv.s.x ft1, s11
	fadd.s fa1,fa1,ft1
# %op9 = fmul float 0x4000000000000000, %arg0
	li s11, 1073741824
	fmv.s.x ft0, s11
	fmul.s fa2,ft0,fa0
# %op12 = fadd float 0x4010000000000000, %arg0
	li s11, 1082130432
	fmv.s.x ft0, s11
	fadd.s fa3,ft0,fa0
# %op13 = fdiv float %op9, %op12
	fdiv.s fa2,fa2,fa3
# %op14 = fadd float %op6, %op13
	fadd.s fa1,fa1,fa2
# br label %label16
	fsw fa1, -312(fp)
	addi t0, zero, 10
	sd t0, -320(fp)
	flw fa2, -312(fp)
	ld a0, -320(fp)
	j .my_sqrt_label16
.my_sqrt_label16:
# %op31 = phi i32 [ 10, %label_entry ], [ %op28, %label19 ]
# %op32 = phi float [ %op14, %label_entry ], [ %op26, %label19 ]
# %op18 = icmp ne i32 0, %op31
	addi t0, zero, 0
	slt s11,a0,t0
	slt t0,t0,a0
	or a1,t0,s11
# br i1 %op18, label %label19, label %label29
	addi t0,zero,0
	blt t0,a1,.my_sqrt_label19
	j .my_sqrt_label29
.my_sqrt_label19:
# %op23 = fdiv float %arg0, %op32
	fdiv.s fa1,fa0,fa2
# %op24 = fadd float %op32, %op23
	fadd.s fa1,fa2,fa1
# %op26 = fdiv float %op24, 0x4000000000000000
	li s11, 1073741824
	fmv.s.x ft1, s11
	fdiv.s fa1,fa1,ft1
# %op28 = sub i32 %op31, 1
	addi t1, zero, 1
	sub a1, a0, t1
# br label %label16
	fsw fa1, -312(fp)
	sd a1, -320(fp)
	flw fa2, -312(fp)
	ld a0, -320(fp)
	j .my_sqrt_label16
.my_sqrt_label29:
# ret float %op32
	fmv.s fa0, fa2
	j my_sqrt_exit
my_sqrt_exit:
	# epilog
	ld ra, 312(sp)
	ld s0, 304(sp)
	addi sp, sp, 320
	jr ra
	.globl p
	.type p, @function
p:
	addi sp, sp, -304
	sd ra, 296(sp)
	sd s0, 288(sp)
	addi s0, sp, 304
.p_label_entry:
# %op4 = fmul float 0x4008000000000000, %arg0
	li s11, 1077936128
	fmv.s.x ft0, s11
	fmul.s fa1,ft0,fa0
# %op7 = fmul float 0x4010000000000000, %arg0
	li s11, 1082130432
	fmv.s.x ft0, s11
	fmul.s fa2,ft0,fa0
# %op9 = fmul float %op7, %arg0
	fmul.s fa2,fa2,fa0
# %op11 = fmul float %op9, %arg0
	fmul.s fa0,fa2,fa0
# %op12 = fsub float %op4, %op11
	fsub.s fa0,fa1,fa0
# ret float %op12
	j p_exit
p_exit:
	# epilog
	ld ra, 296(sp)
	ld s0, 288(sp)
	addi sp, sp, 304
	jr ra
	.globl my_sin_impl
	.type my_sin_impl, @function
my_sin_impl:
	addi sp, sp, -304
	sd ra, 296(sp)
	sd s0, 288(sp)
	addi s0, sp, 304
.my_sin_impl_label_entry:
# %op3 = call float @my_fabs(float %arg0)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -136(fp)
	jal my_fabs
	fmv.s fa1,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op4 = load float, float* @EPSILON
	la t0, EPSILON
	flw fa2, 0(t0)
# %op5 = fcmp ule float %op3, %op4
	fle.s s9, fa1, fa2
	bnez      s9, float_true2
	j          float_false2
float_true2:
	addi     a0, zero, 1
	j          float_exit2
float_false2:
	addi     a0, zero, 0
	j          float_exit2
float_exit2:
# br i1 %op5, label %label6, label %label8
	addi t0,zero,0
	blt t0,a0,.my_sin_impl_label6
	j .my_sin_impl_label8
.my_sin_impl_label6:
# ret float %arg0
	j my_sin_impl_exit
.my_sin_impl_label8:
# %op10 = fdiv float %arg0, 0x4008000000000000
	li s11, 1077936128
	fmv.s.x ft1, s11
	fdiv.s fa0,fa0,ft1
# %op11 = call float @my_sin_impl(float %op10)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -136(fp)
	jal my_sin_impl
	fmv.s fa0,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op12 = call float @p(float %op11)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -136(fp)
	jal p
	fmv.s fa0,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# ret float %op12
	j my_sin_impl_exit
my_sin_impl_exit:
	# epilog
	ld ra, 296(sp)
	ld s0, 288(sp)
	addi sp, sp, 304
	jr ra
	.globl my_sin
	.type my_sin, @function
my_sin:
	addi sp, sp, -320
	sd ra, 312(sp)
	sd s0, 304(sp)
	addi s0, sp, 320
.my_sin_label_entry:
# %op3 = load float, float* @TWO_PI
	la t0, TWO_PI
	flw fa1, 0(t0)
# %op4 = fcmp ugt float %arg0, %op3
	flt.s s9, fa1, fa0
	bnez      s9, float_true3
	j          float_false3
float_true3:
	addi     a0, zero, 1
	j          float_exit3
float_false3:
	addi     a0, zero, 0
	j          float_exit3
float_exit3:
# br i1 %op4, label %label5, label %label21
	addi t0,zero,0
	blt t0,a0,.my_sin_label5
	j .my_sin_label21
.my_sin_label5:
# %op8 = load float, float* @TWO_PI
	la t0, TWO_PI
	flw fa2, 0(t0)
# %op9 = fdiv float %arg0, %op8
	fdiv.s fa2,fa0,fa2
# %op10 = fptosi float %op9 to i32
	fcvt.w.s a0, fa2, rtz
# %op13 = load float, float* @TWO_PI
	la t0, TWO_PI
	flw fa2, 0(t0)
# %op14 = sitofp i32 %op10 to float
	fcvt.s.w fa3, a0
# %op15 = fmul float %op14, %op13
	fmul.s fa2,fa3,fa2
# %op16 = fsub float %arg0, %op15
	fsub.s fa0,fa0,fa2
# br label %label17
	fsw fa0, -312(fp)
	flw fa1, -312(fp)
	j .my_sin_label17
.my_sin_label17:
# %op43 = phi float [ %op16, %label5 ], [ %arg0, %label21 ]
# %op19 = load float, float* @PI
	la t0, PI
	flw fa0, 0(t0)
# %op20 = fcmp ugt float %op43, %op19
	flt.s s9, fa0, fa1
	bnez      s9, float_true4
	j          float_false4
float_true4:
	addi     a0, zero, 1
	j          float_exit4
float_false4:
	addi     a0, zero, 0
	j          float_exit4
float_exit4:
# br i1 %op20, label %label26, label %label30
	addi t0,zero,0
	blt t0,a0,.my_sin_label26
	fmv.s fa0, fa1
	j .my_sin_label30
.my_sin_label21:
# %op23 = load float, float* @TWO_PI
	la t0, TWO_PI
	flw fa1, 0(t0)
# %op24 = fsub float 0x0, %op23
	li s11, 0
	fmv.s.x ft0, s11
	fsub.s fa1,ft0,fa1
# %op25 = fcmp ult float %arg0, %op24
	flt.s s9, fa0, fa1
	bnez      s9, float_true5
	j          float_false5
float_true5:
	addi     a0, zero, 1
	j          float_exit5
float_false5:
	addi     a0, zero, 0
	j          float_exit5
float_exit5:
# br i1 %op25, label %label5, label %label17
	addi t0,zero,0
	blt t0,a0,.my_sin_label5
	fmv.s fa1, fa0
	j .my_sin_label17
.my_sin_label26:
# %op28 = load float, float* @TWO_PI
	la t0, TWO_PI
	flw fa2, 0(t0)
# %op29 = fsub float %op43, %op28
	fsub.s fa1,fa1,fa2
# br label %label30
	fsw fa1, -312(fp)
	flw fa0, -312(fp)
	j .my_sin_label30
.my_sin_label30:
# %op44 = phi float [ %op43, %label17 ], [ %op29, %label26 ]
# %op32 = load float, float* @PI
	la t0, PI
	flw fa1, 0(t0)
# %op33 = fsub float 0x0, %op32
	li s11, 0
	fmv.s.x ft0, s11
	fsub.s fa1,ft0,fa1
# %op34 = fcmp ult float %op44, %op33
	flt.s s9, fa0, fa1
	bnez      s9, float_true6
	j          float_false6
float_true6:
	addi     a0, zero, 1
	j          float_exit6
float_false6:
	addi     a0, zero, 0
	j          float_exit6
float_exit6:
# br i1 %op34, label %label35, label %label39
	addi t0,zero,0
	blt t0,a0,.my_sin_label35
	fmv.s fa1, fa0
	j .my_sin_label39
.my_sin_label35:
# %op37 = load float, float* @TWO_PI
	la t0, TWO_PI
	flw fa2, 0(t0)
# %op38 = fadd float %op44, %op37
	fadd.s fa0,fa0,fa2
# br label %label39
	fsw fa0, -312(fp)
	flw fa1, -312(fp)
	j .my_sin_label39
.my_sin_label39:
# %op45 = phi float [ %op44, %label30 ], [ %op38, %label35 ]
# %op41 = call float @my_sin_impl(float %op45)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -144(fp)
	jal my_sin_impl
	fmv.s fa0,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# ret float %op41
	j my_sin_exit
my_sin_exit:
	# epilog
	ld ra, 312(sp)
	ld s0, 304(sp)
	addi sp, sp, 320
	jr ra
	.globl my_cos
	.type my_cos, @function
my_cos:
	addi sp, sp, -304
	sd ra, 296(sp)
	sd s0, 288(sp)
	addi s0, sp, 304
.my_cos_label_entry:
# %op3 = load float, float* @PI
	la t0, PI
	flw fa1, 0(t0)
# %op5 = fdiv float %op3, 0x4000000000000000
	li s11, 1073741824
	fmv.s.x ft1, s11
	fdiv.s fa1,fa1,ft1
# %op6 = fadd float %arg0, %op5
	fadd.s fa0,fa0,fa1
# %op7 = call float @my_sin(float %op6)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -136(fp)
	jal my_sin
	fmv.s fa0,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# ret float %op7
	j my_cos_exit
my_cos_exit:
	# epilog
	ld ra, 296(sp)
	ld s0, 288(sp)
	addi sp, sp, 304
	jr ra
	.globl circle_sdf
	.type circle_sdf, @function
circle_sdf:
	addi sp, sp, -304
	sd ra, 296(sp)
	sd s0, 288(sp)
	addi s0, sp, 304
.circle_sdf_label_entry:
# %op13 = fsub float %arg0, %arg2
	fsub.s fa0,fa0,fa2
# %op17 = fsub float %arg1, %arg3
	fsub.s fa1,fa1,fa3
# %op20 = fmul float %op13, %op13
	fmul.s fa0,fa0,fa0
# %op23 = fmul float %op17, %op17
	fmul.s fa1,fa1,fa1
# %op24 = fadd float %op20, %op23
	fadd.s fa0,fa0,fa1
# %op25 = call float @my_sqrt(float %op24)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -136(fp)
	jal my_sqrt
	fmv.s fa0,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op27 = fsub float %op25, %arg4
	fsub.s fa0,fa0,fa4
# ret float %op27
	j circle_sdf_exit
circle_sdf_exit:
	# epilog
	ld ra, 296(sp)
	ld s0, 288(sp)
	addi sp, sp, 304
	jr ra
	.globl scene
	.type scene, @function
scene:
	addi sp, sp, -304
	sd ra, 296(sp)
	sd s0, 288(sp)
	addi s0, sp, 304
.scene_label_entry:
# %op9 = call float @circle_sdf(float %arg0, float %arg1, float 0x3fd99999a0000000, float 0x3fd99999a0000000, float 0x3fb99999a0000000)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	li s11, 1053609165
	fmv.s.x fa2, s11
	li s11, 1053609165
	fmv.s.x fa3, s11
	li s11, 1036831949
	fmv.s.x fa4, s11
	jal circle_sdf
	fmv.s fa2,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op13 = call float @circle_sdf(float %arg0, float %arg1, float 0x3fe3333340000000, float 0x3fe3333340000000, float 0x3fa99999a0000000)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	li s11, 1058642330
	fmv.s.x fa2, s11
	li s11, 1058642330
	fmv.s.x fa3, s11
	li s11, 1028443341
	fmv.s.x fa4, s11
	jal circle_sdf
	fmv.s fa0,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op16 = fcmp ult float %op9, %op13
	flt.s s9, fa2, fa0
	bnez      s9, float_true7
	j          float_false7
float_true7:
	addi     a1, zero, 1
	j          float_exit7
float_false7:
	addi     a1, zero, 0
	j          float_exit7
float_exit7:
# br i1 %op16, label %label17, label %label23
	addi t0,zero,0
	blt t0,a1,.scene_label17
	j .scene_label23
.scene_label17:
# %op20 = getelementptr float, float* %arg2, i32 0
	addi t0, zero, 0
	add s11,t0 , t0
	add s11,s11,s11
	add a1,s11,a0
# store float %op9, float* %op20
	fsw fa2, 0(a1)
# %op22 = getelementptr float, float* %arg2, i32 1
	addi t0, zero, 1
	add s11,t0 , t0
	add s11,s11,s11
	add a1,s11,a0
# store float 0x4008000000000000, float* %op22
	li s11, 1077936128
	fmv.s.x ft0, s11
	fsw ft0, 0(a1)
# br label %label29
	j .scene_label29
.scene_label23:
# %op26 = getelementptr float, float* %arg2, i32 0
	addi t0, zero, 0
	add s11,t0 , t0
	add s11,s11,s11
	add a1,s11,a0
# store float %op13, float* %op26
	fsw fa0, 0(a1)
# %op28 = getelementptr float, float* %arg2, i32 1
	addi t0, zero, 1
	add s11,t0 , t0
	add s11,s11,s11
	add a0,s11,a0
# store float 0x0, float* %op28
	li s11, 0
	fmv.s.x ft0, s11
	fsw ft0, 0(a0)
# br label %label29
	j .scene_label29
.scene_label29:
# ret void
	addi a0, zero, 0
	j scene_exit
scene_exit:
	# epilog
	ld ra, 296(sp)
	ld s0, 288(sp)
	addi sp, sp, 304
	jr ra
	.globl trace
	.type trace, @function
trace:
	addi sp, sp, -336
	sd ra, 328(sp)
	sd s0, 320(sp)
	addi s0, sp, 336
.trace_label_entry:
# %op15 = alloca [2 x float]
	li t0, 312
	sub a0,fp,t0
# br label %label10
	li s11, 0
	fmv.s.x ft0, s11
	fsw ft0, -320(fp)
	addi t0, zero, 0
	sd t0, -328(fp)
	flw fa4, -320(fp)
	ld a1, -328(fp)
	j .trace_label10
.trace_label10:
# %op46 = phi i32 [ 0, %label_entry ], [ %op45, %label39 ]
# %op47 = phi float [ 0x0, %label_entry ], [ %op43, %label39 ]
# %op12 = load i32, i32* @MAX_STEP
	la t0, MAX_STEP
	lw a2, 0(t0)
# %op13 = icmp slt i32 %op46, %op12
	slt a2,a1,a2
# br i1 %op13, label %label32, label %label31
	addi t0,zero,0
	blt t0,a2,.trace_label32
	j .trace_label31
.trace_label14:
# %op19 = fmul float %arg2, %op47
	fmul.s fa5,fa2,fa4
# %op20 = fadd float %arg0, %op19
	fadd.s fa5,fa0,fa5
# %op24 = fmul float %arg3, %op47
	fmul.s fa6,fa3,fa4
# %op25 = fadd float %arg1, %op24
	fadd.s fa6,fa1,fa6
# %op26 = getelementptr [2 x float], [2 x float]* %op15, i32 0, i32 0
	add t0,zero,zero
	addi t1, zero, 0
	addi s11, zero, 8
	mul s11,t1,s11
	add t0,t0,s11
	addi t1, zero, 0
	addi s11, zero, 4
	mul s11,t1,s11
	add t0,t0,s11
	add a2,a0,t0
# call void @scene(float %op20, float %op25, float* %op26)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -176(fp)
	flw fa1, -184(fp)
	ld a0, -40(fp)
	jal scene
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op27 = getelementptr [2 x float], [2 x float]* %op15, i32 0, i32 0
	add t0,zero,zero
	addi t1, zero, 0
	addi s11, zero, 8
	mul s11,t1,s11
	add t0,t0,s11
	addi t1, zero, 0
	addi s11, zero, 4
	mul s11,t1,s11
	add t0,t0,s11
	add a2,a0,t0
# %op28 = load float, float* %op27
	flw fa5, 0(a2)
# %op29 = load float, float* @EPSILON
	la t0, EPSILON
	flw fa6, 0(t0)
# %op30 = fcmp ult float %op28, %op29
	flt.s s9, fa5, fa6
	bnez      s9, float_true8
	j          float_false8
float_true8:
	addi     a2, zero, 1
	j          float_exit8
float_false8:
	addi     a2, zero, 0
	j          float_exit8
float_exit8:
# br i1 %op30, label %label36, label %label39
	addi t0,zero,0
	blt t0,a2,.trace_label36
	j .trace_label39
.trace_label31:
# ret float 0x0
	li s11, 0
	fmv.s.x ft0, s11
	fmv.s fa0, ft0
	j trace_exit
.trace_label32:
# %op34 = load float, float* @MAX_DISTANCE
	la t0, MAX_DISTANCE
	flw fa5, 0(t0)
# %op35 = fcmp ult float %op47, %op34
	flt.s s9, fa4, fa5
	bnez      s9, float_true9
	j          float_false9
float_true9:
	addi     a2, zero, 1
	j          float_exit9
float_false9:
	addi     a2, zero, 0
	j          float_exit9
float_exit9:
# br i1 %op35, label %label14, label %label31
	addi t0,zero,0
	blt t0,a2,.trace_label14
	j .trace_label31
.trace_label36:
# %op37 = getelementptr [2 x float], [2 x float]* %op15, i32 0, i32 1
	add t0,zero,zero
	addi t1, zero, 0
	addi s11, zero, 8
	mul s11,t1,s11
	add t0,t0,s11
	addi t1, zero, 1
	addi s11, zero, 4
	mul s11,t1,s11
	add t0,t0,s11
	add a2,a0,t0
# %op38 = load float, float* %op37
	flw fa5, 0(a2)
# ret float %op38
	fmv.s fa0, fa5
	j trace_exit
.trace_label39:
# %op41 = getelementptr [2 x float], [2 x float]* %op15, i32 0, i32 0
	add t0,zero,zero
	addi t1, zero, 0
	addi s11, zero, 8
	mul s11,t1,s11
	add t0,t0,s11
	addi t1, zero, 0
	addi s11, zero, 4
	mul s11,t1,s11
	add t0,t0,s11
	add a2,a0,t0
# %op42 = load float, float* %op41
	flw fa5, 0(a2)
# %op43 = fadd float %op47, %op42
	fadd.s fa5,fa4,fa5
# %op45 = add i32 %op46, 1
	addi t1, zero, 1
	add a2, a1, t1
# br label %label10
	fsw fa5, -320(fp)
	sd a2, -328(fp)
	flw fa4, -320(fp)
	ld a1, -328(fp)
	j .trace_label10
trace_exit:
	# epilog
	ld ra, 328(sp)
	ld s0, 320(sp)
	addi sp, sp, 336
	jr ra
	.globl sample
	.type sample, @function
sample:
	addi sp, sp, -320
	sd ra, 312(sp)
	sd s0, 304(sp)
	addi s0, sp, 320
.sample_label_entry:
# br label %label6
	li s11, 0
	fmv.s.x ft0, s11
	fsw ft0, -312(fp)
	addi t0, zero, 0
	sd t0, -320(fp)
	flw fa0, -312(fp)
	ld a0, -320(fp)
	j .sample_label6
.sample_label6:
# %op45 = phi i32 [ 0, %label_entry ], [ %op37, %label10 ]
# %op46 = phi float [ 0x0, %label_entry ], [ %op35, %label10 ]
# %op8 = load i32, i32* @N
	la t0, N
	lw a1, 0(t0)
# %op9 = icmp slt i32 %op45, %op8
	slt a1,a0,a1
# br i1 %op9, label %label10, label %label38
	addi t0,zero,0
	blt t0,a1,.sample_label10
	j .sample_label38
.sample_label10:
# %op12 = call i32 @rand()
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	jal rand
	addi a1,a0,0
	ld a0, -24(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op13 = sitofp i32 %op12 to float
	fcvt.s.w fa3, a1
# %op15 = load float, float* @TWO_PI
	la t0, TWO_PI
	flw fa4, 0(t0)
# %op18 = load i32, i32* @RAND_MAX
	la t0, RAND_MAX
	lw a1, 0(t0)
# %op19 = sitofp i32 %op18 to float
	fcvt.s.w fa5, a1
# %op20 = fdiv float %op13, %op19
	fdiv.s fa3,fa3,fa5
# %op21 = sitofp i32 %op45 to float
	fcvt.s.w fa5, a0
# %op22 = fadd float %op21, %op20
	fadd.s fa3,fa5,fa3
# %op23 = fmul float %op15, %op22
	fmul.s fa3,fa4,fa3
# %op24 = load i32, i32* @N
	la t0, N
	lw a1, 0(t0)
# %op25 = sitofp i32 %op24 to float
	fcvt.s.w fa4, a1
# %op26 = fdiv float %op23, %op25
	fdiv.s fa3,fa3,fa4
# %op31 = call float @my_cos(float %op26)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -160(fp)
	jal my_cos
	fmv.s fa4,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op33 = call float @my_sin(float %op26)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -160(fp)
	jal my_sin
	fmv.s fa3,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op34 = call float @trace(float %arg0, float %arg1, float %op31, float %op33)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa0, -144(fp)
	flw fa1, -152(fp)
	flw fa2, -168(fp)
	flw fa3, -160(fp)
	jal trace
	fmv.s fa3,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op35 = fadd float %op46, %op34
	fadd.s fa3,fa0,fa3
# %op37 = add i32 %op45, 1
	addi t1, zero, 1
	add a1, a0, t1
# br label %label6
	fsw fa3, -312(fp)
	sd a1, -320(fp)
	flw fa0, -312(fp)
	ld a0, -320(fp)
	j .sample_label6
.sample_label38:
# %op40 = load i32, i32* @N
	la t0, N
	lw a0, 0(t0)
# %op41 = sitofp i32 %op40 to float
	fcvt.s.w fa1, a0
# %op42 = fdiv float %op46, %op41
	fdiv.s fa0,fa0,fa1
# ret float %op42
	j sample_exit
sample_exit:
	# epilog
	ld ra, 312(sp)
	ld s0, 304(sp)
	addi sp, sp, 320
	jr ra
	.globl write_pgm
	.type write_pgm, @function
write_pgm:
	addi sp, sp, -320
	sd ra, 312(sp)
	sd s0, 304(sp)
	addi s0, sp, 320
.write_pgm_label_entry:
# call void @putch(i32 80)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 80
	jal putch
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# call void @putch(i32 50)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 50
	jal putch
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# call void @putch(i32 10)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 10
	jal putch
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op0 = load i32, i32* @W
	la t0, W
	lw a0, 0(t0)
# call void @putint(i32 %op0)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	ld a0, -24(fp)
	jal putint
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# call void @putch(i32 32)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 32
	jal putch
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op1 = load i32, i32* @H
	la t0, H
	lw a0, 0(t0)
# call void @putint(i32 %op1)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	ld a0, -24(fp)
	jal putint
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# call void @putch(i32 32)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 32
	jal putch
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# call void @putint(i32 255)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 255
	jal putint
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# call void @putch(i32 10)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 10
	jal putch
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# br label %label3
	addi t0, zero, 0
	sd t0, -312(fp)
	ld a0, -312(fp)
	j .write_pgm_label3
.write_pgm_label3:
# %op46 = phi i32 [ 0, %label_entry ], [ %op37, %label35 ]
# %op5 = load i32, i32* @H
	la t0, H
	lw a1, 0(t0)
# %op6 = icmp slt i32 %op46, %op5
	slt a1,a0,a1
# br i1 %op6, label %label7, label %label9
	addi t0,zero,0
	blt t0,a1,.write_pgm_label7
	j .write_pgm_label9
.write_pgm_label7:
# br label %label10
	addi t0, zero, 0
	sd t0, -312(fp)
	ld a1, -312(fp)
	j .write_pgm_label10
.write_pgm_label9:
# ret void
	addi a0, zero, 0
	j write_pgm_exit
.write_pgm_label10:
# %op50 = phi i32 [ 0, %label7 ], [ %op42, %label39 ]
# %op12 = load i32, i32* @W
	la t0, W
	lw a2, 0(t0)
# %op13 = icmp slt i32 %op50, %op12
	slt a2,a1,a2
# br i1 %op13, label %label14, label %label35
	addi t0,zero,0
	blt t0,a2,.write_pgm_label14
	j .write_pgm_label35
.write_pgm_label14:
# %op17 = sitofp i32 %op50 to float
	fcvt.s.w fa0, a1
# %op20 = sitofp i32 %op46 to float
	fcvt.s.w fa1, a0
# %op23 = load i32, i32* @W
	la t0, W
	lw a2, 0(t0)
# %op24 = sitofp i32 %op23 to float
	fcvt.s.w fa2, a2
# %op25 = fdiv float %op17, %op24
	fdiv.s fa0,fa0,fa2
# %op27 = load i32, i32* @H
	la t0, H
	lw a2, 0(t0)
# %op28 = sitofp i32 %op27 to float
	fcvt.s.w fa2, a2
# %op29 = fdiv float %op20, %op28
	fdiv.s fa1,fa1,fa2
# %op30 = call float @sample(float %op25, float %op29)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	flw fa1, -136(fp)
	flw fa2, -144(fp)
	jal sample
	fmv.s fa0,fa0
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op31 = fmul float %op30, 0x406fe00000000000
	li s11, 1132396544
	fmv.s.x ft1, s11
	fmul.s fa0,fa0,ft1
# %op32 = fptosi float %op31 to i32
	fcvt.w.s a2, fa0, rtz
# %op34 = icmp sgt i32 %op32, 255
	addi t1, zero, 255
	slt a3,t1,a2
# br i1 %op34, label %label38, label %label39
	addi t0,zero,0
	blt t0,a3,.write_pgm_label38
	or a4, zero, a2
	j .write_pgm_label39
.write_pgm_label35:
# call void @putch(i32 10)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 10
	jal putch
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op37 = add i32 %op46, 1
	addi t1, zero, 1
	add a1, a0, t1
# br label %label3
	sd a1, -312(fp)
	ld a0, -312(fp)
	j .write_pgm_label3
.write_pgm_label38:
# br label %label39
	addi t0, zero, 255
	sd t0, -312(fp)
	ld a4, -312(fp)
	j .write_pgm_label39
.write_pgm_label39:
# %op52 = phi i32 [ %op32, %label14 ], [ 255, %label38 ]
# call void @putint(i32 %op52)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	ld a0, -56(fp)
	jal putint
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# call void @putch(i32 32)
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	addi a0, zero, 32
	jal putch
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# %op42 = add i32 %op50, 1
	addi t1, zero, 1
	add a2, a1, t1
# br label %label10
	sd a2, -312(fp)
	ld a1, -312(fp)
	j .write_pgm_label10
write_pgm_exit:
	# epilog
	ld ra, 312(sp)
	ld s0, 304(sp)
	addi sp, sp, 320
	jr ra
	.globl main
	.type main, @function
main:
	addi sp, sp, -304
	sd ra, 296(sp)
	sd s0, 288(sp)
	addi s0, sp, 304
.main_label_entry:
# call void @write_pgm()
	sd a0, -24(fp)
	sd a1, -32(fp)
	sd a2, -40(fp)
	sd a3, -48(fp)
	sd a4, -56(fp)
	sd a5, -64(fp)
	sd a6, -72(fp)
	sd a7, -80(fp)
	sd t2, -88(fp)
	sd t3, -96(fp)
	sd t4, -104(fp)
	sd t5, -112(fp)
	sd t6, -120(fp)
	sd s10, -128(fp)
	fsw fa0, -136(fp)
	fsw fa1, -144(fp)
	fsw fa2, -152(fp)
	fsw fa3, -160(fp)
	fsw fa4, -168(fp)
	fsw fa5, -176(fp)
	fsw fa6, -184(fp)
	fsw fa7, -192(fp)
	fsw ft2, -200(fp)
	fsw ft3, -208(fp)
	fsw ft4, -216(fp)
	fsw ft5, -224(fp)
	fsw ft6, -232(fp)
	fsw ft7, -240(fp)
	fsw ft8, -248(fp)
	fsw ft9, -256(fp)
	fsw ft10, -264(fp)
	fsw ft11, -272(fp)
	fsw fs8, -280(fp)
	fsw fs9, -288(fp)
	fsw fs10, -296(fp)
	fsw fs11, -304(fp)
	jal write_pgm
	ld a0, -24(fp)
	ld a1, -32(fp)
	ld a2, -40(fp)
	ld a3, -48(fp)
	ld a4, -56(fp)
	ld a5, -64(fp)
	ld a6, -72(fp)
	ld a7, -80(fp)
	ld t2, -88(fp)
	ld t3, -96(fp)
	ld t4, -104(fp)
	ld t5, -112(fp)
	ld t6, -120(fp)
	ld s10, -128(fp)
	flw fa0, -136(fp)
	flw fa1, -144(fp)
	flw fa2, -152(fp)
	flw fa3, -160(fp)
	flw fa4, -168(fp)
	flw fa5, -176(fp)
	flw fa6, -184(fp)
	flw fa7, -192(fp)
	flw ft2, -200(fp)
	flw ft3, -208(fp)
	flw ft4, -216(fp)
	flw ft5, -224(fp)
	flw ft6, -232(fp)
	flw ft7, -240(fp)
	flw ft8, -248(fp)
	flw ft9, -256(fp)
	flw ft10, -264(fp)
	flw ft11, -272(fp)
	flw fs8, -280(fp)
	flw fs9, -288(fp)
	flw fs10, -296(fp)
	flw fs11, -304(fp)
# ret i32 0
	addi t0, zero, 0
	or a0, zero, t0
	j main_exit
main_exit:
	# epilog
	ld ra, 296(sp)
	ld s0, 288(sp)
	addi sp, sp, 304
	jr ra
