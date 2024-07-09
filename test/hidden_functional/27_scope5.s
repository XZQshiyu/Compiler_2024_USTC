	.text
	.align 2
	.globl main
	.type main, @function
main:
	lu12i.w $t0, 2
	ori $t0, $t0, 3504
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.main_label_entry:
# %op0 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 28
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -24
# store i32 0, i32* %op0
	ld.d $t1, $fp, -24
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op1 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 44
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -40
# store i32 0, i32* %op1
	ld.d $t1, $fp, -40
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op2 = load i32, i32* %op0
	ld.d $t0, $fp, -24
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -48
# %op3 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op4 = add i32 %op2, %op3
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# store i32 %op4, i32* %op0
	ld.d $t1, $fp, -24
	ld.w $t0, $fp, -56
	st.w $t0, $t1, 0
# %op5 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -60
# %op6 = load i32, i32* %op0
	ld.d $t0, $fp, -24
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -64
# %op7 = add i32 %op5, %op6
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -64
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# store i32 %op7, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -68
	st.w $t0, $t1, 0
# %op8 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 84
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -80
# store i32 2, i32* %op8
	ld.d $t1, $fp, -80
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op9 = load i32, i32* %op8
	ld.d $t0, $fp, -80
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -88
# %op10 = add i32 %op9, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# store i32 %op10, i32* %op8
	ld.d $t1, $fp, -80
	ld.w $t0, $fp, -92
	st.w $t0, $t1, 0
# %op11 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -96
# %op12 = load i32, i32* %op8
	ld.d $t0, $fp, -80
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -100
# %op13 = add i32 %op11, %op12
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32 %op13, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -104
	st.w $t0, $t1, 0
# %op14 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 116
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -112
# store i32 3, i32* %op14
	ld.d $t1, $fp, -112
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op15 = load i32, i32* %op14
	ld.d $t0, $fp, -112
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -120
# %op16 = add i32 %op15, 2
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# store i32 %op16, i32* %op14
	ld.d $t1, $fp, -112
	ld.w $t0, $fp, -124
	st.w $t0, $t1, 0
# %op17 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -128
# %op18 = load i32, i32* %op14
	ld.d $t0, $fp, -112
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -132
# %op19 = add i32 %op17, %op18
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -132
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# store i32 %op19, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -136
	st.w $t0, $t1, 0
# %op20 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 148
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -144
# store i32 2, i32* %op20
	ld.d $t1, $fp, -144
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op21 = load i32, i32* %op20
	ld.d $t0, $fp, -144
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -152
# %op22 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op23 = add i32 %op21, %op22
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -156
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# store i32 %op23, i32* %op20
	ld.d $t1, $fp, -144
	ld.w $t0, $fp, -160
	st.w $t0, $t1, 0
# %op24 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -164
# %op25 = load i32, i32* %op20
	ld.d $t0, $fp, -144
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -168
# %op26 = add i32 %op24, %op25
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -168
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# store i32 %op26, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -172
	st.w $t0, $t1, 0
# %op27 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 188
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -184
# store i32 2, i32* %op27
	ld.d $t1, $fp, -184
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op28 = load i32, i32* %op27
	ld.d $t0, $fp, -184
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -192
# %op29 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op30 = add i32 %op28, %op29
	ld.w $t0, $fp, -192
	ld.w $t1, $fp, -196
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# store i32 %op30, i32* %op27
	ld.d $t1, $fp, -184
	ld.w $t0, $fp, -200
	st.w $t0, $t1, 0
# %op31 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -204
# %op32 = load i32, i32* %op27
	ld.d $t0, $fp, -184
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -208
# %op33 = add i32 %op31, %op32
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -208
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# store i32 %op33, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -212
	st.w $t0, $t1, 0
# %op34 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 228
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -224
# store i32 1, i32* %op34
	ld.d $t1, $fp, -224
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op35 = load i32, i32* %op34
	ld.d $t0, $fp, -224
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -232
# %op36 = add i32 %op35, 2
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# store i32 %op36, i32* %op34
	ld.d $t1, $fp, -224
	ld.w $t0, $fp, -236
	st.w $t0, $t1, 0
# %op37 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -240
# %op38 = load i32, i32* %op34
	ld.d $t0, $fp, -224
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -244
# %op39 = add i32 %op37, %op38
	ld.w $t0, $fp, -240
	ld.w $t1, $fp, -244
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# store i32 %op39, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -248
	st.w $t0, $t1, 0
# %op40 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 260
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -256
# store i32 1, i32* %op40
	ld.d $t1, $fp, -256
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op41 = load i32, i32* %op40
	ld.d $t0, $fp, -256
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -264
# %op42 = add i32 %op41, 0
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -268
# store i32 %op42, i32* %op40
	ld.d $t1, $fp, -256
	ld.w $t0, $fp, -268
	st.w $t0, $t1, 0
# %op43 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -272
# %op44 = load i32, i32* %op40
	ld.d $t0, $fp, -256
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -276
# %op45 = add i32 %op43, %op44
	ld.w $t0, $fp, -272
	ld.w $t1, $fp, -276
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# store i32 %op45, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -280
	st.w $t0, $t1, 0
# %op46 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 292
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -288
# store i32 1, i32* %op46
	ld.d $t1, $fp, -288
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op47 = load i32, i32* %op46
	ld.d $t0, $fp, -288
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -296
# %op48 = add i32 %op47, 3
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# store i32 %op48, i32* %op46
	ld.d $t1, $fp, -288
	ld.w $t0, $fp, -300
	st.w $t0, $t1, 0
# %op49 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -304
# %op50 = load i32, i32* %op46
	ld.d $t0, $fp, -288
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -308
# %op51 = add i32 %op49, %op50
	ld.w $t0, $fp, -304
	ld.w $t1, $fp, -308
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# store i32 %op51, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -312
	st.w $t0, $t1, 0
# %op52 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 324
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -320
# store i32 1, i32* %op52
	ld.d $t1, $fp, -320
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op53 = load i32, i32* %op52
	ld.d $t0, $fp, -320
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -328
# %op54 = add i32 %op53, 2
	ld.w $t0, $fp, -328
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -332
# store i32 %op54, i32* %op52
	ld.d $t1, $fp, -320
	ld.w $t0, $fp, -332
	st.w $t0, $t1, 0
# %op55 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -336
# %op56 = load i32, i32* %op52
	ld.d $t0, $fp, -320
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -340
# %op57 = add i32 %op55, %op56
	ld.w $t0, $fp, -336
	ld.w $t1, $fp, -340
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -344
# store i32 %op57, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -344
	st.w $t0, $t1, 0
# %op58 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 356
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -352
# store i32 1, i32* %op58
	ld.d $t1, $fp, -352
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op59 = load i32, i32* %op58
	ld.d $t0, $fp, -352
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -360
# %op60 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# %op61 = add i32 %op59, %op60
	ld.w $t0, $fp, -360
	ld.w $t1, $fp, -364
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# store i32 %op61, i32* %op58
	ld.d $t1, $fp, -352
	ld.w $t0, $fp, -368
	st.w $t0, $t1, 0
# %op62 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -372
# %op63 = load i32, i32* %op58
	ld.d $t0, $fp, -352
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -376
# %op64 = add i32 %op62, %op63
	ld.w $t0, $fp, -372
	ld.w $t1, $fp, -376
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -380
# store i32 %op64, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -380
	st.w $t0, $t1, 0
# %op65 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 396
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -392
# store i32 2, i32* %op65
	ld.d $t1, $fp, -392
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op66 = load i32, i32* %op65
	ld.d $t0, $fp, -392
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -400
# %op67 = add i32 %op66, 1
	ld.w $t0, $fp, -400
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -404
# store i32 %op67, i32* %op65
	ld.d $t1, $fp, -392
	ld.w $t0, $fp, -404
	st.w $t0, $t1, 0
# %op68 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -408
# %op69 = load i32, i32* %op65
	ld.d $t0, $fp, -392
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -412
# %op70 = add i32 %op68, %op69
	ld.w $t0, $fp, -408
	ld.w $t1, $fp, -412
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# store i32 %op70, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -416
	st.w $t0, $t1, 0
# %op71 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 428
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -424
# store i32 0, i32* %op71
	ld.d $t1, $fp, -424
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op72 = load i32, i32* %op71
	ld.d $t0, $fp, -424
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -432
# %op73 = add i32 %op72, 1
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -436
# store i32 %op73, i32* %op71
	ld.d $t1, $fp, -424
	ld.w $t0, $fp, -436
	st.w $t0, $t1, 0
# %op74 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -440
# %op75 = load i32, i32* %op71
	ld.d $t0, $fp, -424
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -444
# %op76 = add i32 %op74, %op75
	ld.w $t0, $fp, -440
	ld.w $t1, $fp, -444
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# store i32 %op76, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -448
	st.w $t0, $t1, 0
# %op77 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 460
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -456
# store i32 4, i32* %op77
	ld.d $t1, $fp, -456
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op78 = load i32, i32* %op77
	ld.d $t0, $fp, -456
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -464
# %op79 = add i32 %op78, 1
	ld.w $t0, $fp, -464
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -468
# store i32 %op79, i32* %op77
	ld.d $t1, $fp, -456
	ld.w $t0, $fp, -468
	st.w $t0, $t1, 0
# %op80 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -472
# %op81 = load i32, i32* %op77
	ld.d $t0, $fp, -456
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -476
# %op82 = add i32 %op80, %op81
	ld.w $t0, $fp, -472
	ld.w $t1, $fp, -476
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -480
# store i32 %op82, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -480
	st.w $t0, $t1, 0
# %op83 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 492
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -488
# store i32 3, i32* %op83
	ld.d $t1, $fp, -488
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op84 = load i32, i32* %op83
	ld.d $t0, $fp, -488
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -496
# %op85 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -500
# %op86 = add i32 %op84, %op85
	ld.w $t0, $fp, -496
	ld.w $t1, $fp, -500
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -504
# store i32 %op86, i32* %op83
	ld.d $t1, $fp, -488
	ld.w $t0, $fp, -504
	st.w $t0, $t1, 0
# %op87 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -508
# %op88 = load i32, i32* %op83
	ld.d $t0, $fp, -488
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -512
# %op89 = add i32 %op87, %op88
	ld.w $t0, $fp, -508
	ld.w $t1, $fp, -512
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -516
# store i32 %op89, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -516
	st.w $t0, $t1, 0
# %op90 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 532
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -528
# store i32 3, i32* %op90
	ld.d $t1, $fp, -528
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op91 = load i32, i32* %op90
	ld.d $t0, $fp, -528
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -536
# %op92 = add i32 %op91, 0
	ld.w $t0, $fp, -536
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -540
# store i32 %op92, i32* %op90
	ld.d $t1, $fp, -528
	ld.w $t0, $fp, -540
	st.w $t0, $t1, 0
# %op93 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -544
# %op94 = load i32, i32* %op90
	ld.d $t0, $fp, -528
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -548
# %op95 = add i32 %op93, %op94
	ld.w $t0, $fp, -544
	ld.w $t1, $fp, -548
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -552
# store i32 %op95, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -552
	st.w $t0, $t1, 0
# %op96 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 564
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -560
# store i32 3, i32* %op96
	ld.d $t1, $fp, -560
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op97 = load i32, i32* %op96
	ld.d $t0, $fp, -560
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -568
# %op98 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -572
# %op99 = add i32 %op97, %op98
	ld.w $t0, $fp, -568
	ld.w $t1, $fp, -572
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -576
# store i32 %op99, i32* %op96
	ld.d $t1, $fp, -560
	ld.w $t0, $fp, -576
	st.w $t0, $t1, 0
# %op100 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -580
# %op101 = load i32, i32* %op96
	ld.d $t0, $fp, -560
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -584
# %op102 = add i32 %op100, %op101
	ld.w $t0, $fp, -580
	ld.w $t1, $fp, -584
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -588
# store i32 %op102, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -588
	st.w $t0, $t1, 0
# %op103 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 604
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -600
# store i32 0, i32* %op103
	ld.d $t1, $fp, -600
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op104 = load i32, i32* %op103
	ld.d $t0, $fp, -600
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -608
# %op105 = add i32 %op104, 2
	ld.w $t0, $fp, -608
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -612
# store i32 %op105, i32* %op103
	ld.d $t1, $fp, -600
	ld.w $t0, $fp, -612
	st.w $t0, $t1, 0
# %op106 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -616
# %op107 = load i32, i32* %op103
	ld.d $t0, $fp, -600
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -620
# %op108 = add i32 %op106, %op107
	ld.w $t0, $fp, -616
	ld.w $t1, $fp, -620
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# store i32 %op108, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -624
	st.w $t0, $t1, 0
# %op109 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 636
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -632
# store i32 1, i32* %op109
	ld.d $t1, $fp, -632
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op110 = load i32, i32* %op109
	ld.d $t0, $fp, -632
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -640
# %op111 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -644
# %op112 = add i32 %op110, %op111
	ld.w $t0, $fp, -640
	ld.w $t1, $fp, -644
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -648
# store i32 %op112, i32* %op109
	ld.d $t1, $fp, -632
	ld.w $t0, $fp, -648
	st.w $t0, $t1, 0
# %op113 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -652
# %op114 = load i32, i32* %op109
	ld.d $t0, $fp, -632
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -656
# %op115 = add i32 %op113, %op114
	ld.w $t0, $fp, -652
	ld.w $t1, $fp, -656
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -660
# store i32 %op115, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -660
	st.w $t0, $t1, 0
# %op116 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 676
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -672
# store i32 4, i32* %op116
	ld.d $t1, $fp, -672
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op117 = load i32, i32* %op116
	ld.d $t0, $fp, -672
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -680
# %op118 = add i32 %op117, 4
	ld.w $t0, $fp, -680
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -684
# store i32 %op118, i32* %op116
	ld.d $t1, $fp, -672
	ld.w $t0, $fp, -684
	st.w $t0, $t1, 0
# %op119 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -688
# %op120 = load i32, i32* %op116
	ld.d $t0, $fp, -672
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -692
# %op121 = add i32 %op119, %op120
	ld.w $t0, $fp, -688
	ld.w $t1, $fp, -692
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# store i32 %op121, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -696
	st.w $t0, $t1, 0
# %op122 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 708
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -704
# store i32 3, i32* %op122
	ld.d $t1, $fp, -704
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op123 = load i32, i32* %op122
	ld.d $t0, $fp, -704
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -712
# %op124 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -716
# %op125 = add i32 %op123, %op124
	ld.w $t0, $fp, -712
	ld.w $t1, $fp, -716
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -720
# store i32 %op125, i32* %op122
	ld.d $t1, $fp, -704
	ld.w $t0, $fp, -720
	st.w $t0, $t1, 0
# %op126 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -724
# %op127 = load i32, i32* %op122
	ld.d $t0, $fp, -704
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -728
# %op128 = add i32 %op126, %op127
	ld.w $t0, $fp, -724
	ld.w $t1, $fp, -728
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -732
# store i32 %op128, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -732
	st.w $t0, $t1, 0
# %op129 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 748
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -744
# store i32 4, i32* %op129
	ld.d $t1, $fp, -744
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op130 = load i32, i32* %op129
	ld.d $t0, $fp, -744
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -752
# %op131 = add i32 %op130, 4
	ld.w $t0, $fp, -752
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -756
# store i32 %op131, i32* %op129
	ld.d $t1, $fp, -744
	ld.w $t0, $fp, -756
	st.w $t0, $t1, 0
# %op132 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -760
# %op133 = load i32, i32* %op129
	ld.d $t0, $fp, -744
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -764
# %op134 = add i32 %op132, %op133
	ld.w $t0, $fp, -760
	ld.w $t1, $fp, -764
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -768
# store i32 %op134, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -768
	st.w $t0, $t1, 0
# %op135 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 780
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -776
# store i32 1, i32* %op135
	ld.d $t1, $fp, -776
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op136 = load i32, i32* %op135
	ld.d $t0, $fp, -776
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -784
# %op137 = add i32 %op136, 0
	ld.w $t0, $fp, -784
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -788
# store i32 %op137, i32* %op135
	ld.d $t1, $fp, -776
	ld.w $t0, $fp, -788
	st.w $t0, $t1, 0
# %op138 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -792
# %op139 = load i32, i32* %op135
	ld.d $t0, $fp, -776
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -796
# %op140 = add i32 %op138, %op139
	ld.w $t0, $fp, -792
	ld.w $t1, $fp, -796
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -800
# store i32 %op140, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -800
	st.w $t0, $t1, 0
# %op141 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 812
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -808
# store i32 1, i32* %op141
	ld.d $t1, $fp, -808
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op142 = load i32, i32* %op141
	ld.d $t0, $fp, -808
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -816
# %op143 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -820
# %op144 = add i32 %op142, %op143
	ld.w $t0, $fp, -816
	ld.w $t1, $fp, -820
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -824
# store i32 %op144, i32* %op141
	ld.d $t1, $fp, -808
	ld.w $t0, $fp, -824
	st.w $t0, $t1, 0
# %op145 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -828
# %op146 = load i32, i32* %op141
	ld.d $t0, $fp, -808
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -832
# %op147 = add i32 %op145, %op146
	ld.w $t0, $fp, -828
	ld.w $t1, $fp, -832
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -836
# store i32 %op147, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -836
	st.w $t0, $t1, 0
# %op148 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 852
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -848
# store i32 0, i32* %op148
	ld.d $t1, $fp, -848
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op149 = load i32, i32* %op148
	ld.d $t0, $fp, -848
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -856
# %op150 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -860
# %op151 = add i32 %op149, %op150
	ld.w $t0, $fp, -856
	ld.w $t1, $fp, -860
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -864
# store i32 %op151, i32* %op148
	ld.d $t1, $fp, -848
	ld.w $t0, $fp, -864
	st.w $t0, $t1, 0
# %op152 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -868
# %op153 = load i32, i32* %op148
	ld.d $t0, $fp, -848
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -872
# %op154 = add i32 %op152, %op153
	ld.w $t0, $fp, -868
	ld.w $t1, $fp, -872
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -876
# store i32 %op154, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -876
	st.w $t0, $t1, 0
# %op155 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 892
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -888
# store i32 1, i32* %op155
	ld.d $t1, $fp, -888
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op156 = load i32, i32* %op155
	ld.d $t0, $fp, -888
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -896
# %op157 = add i32 %op156, 4
	ld.w $t0, $fp, -896
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -900
# store i32 %op157, i32* %op155
	ld.d $t1, $fp, -888
	ld.w $t0, $fp, -900
	st.w $t0, $t1, 0
# %op158 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -904
# %op159 = load i32, i32* %op155
	ld.d $t0, $fp, -888
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -908
# %op160 = add i32 %op158, %op159
	ld.w $t0, $fp, -904
	ld.w $t1, $fp, -908
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -912
# store i32 %op160, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -912
	st.w $t0, $t1, 0
# %op161 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 924
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -920
# store i32 4, i32* %op161
	ld.d $t1, $fp, -920
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op162 = load i32, i32* %op161
	ld.d $t0, $fp, -920
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -928
# %op163 = add i32 %op162, 4
	ld.w $t0, $fp, -928
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -932
# store i32 %op163, i32* %op161
	ld.d $t1, $fp, -920
	ld.w $t0, $fp, -932
	st.w $t0, $t1, 0
# %op164 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -936
# %op165 = load i32, i32* %op161
	ld.d $t0, $fp, -920
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -940
# %op166 = add i32 %op164, %op165
	ld.w $t0, $fp, -936
	ld.w $t1, $fp, -940
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -944
# store i32 %op166, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -944
	st.w $t0, $t1, 0
# %op167 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 956
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -952
# store i32 0, i32* %op167
	ld.d $t1, $fp, -952
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op168 = load i32, i32* %op167
	ld.d $t0, $fp, -952
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -960
# %op169 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -964
# %op170 = add i32 %op168, %op169
	ld.w $t0, $fp, -960
	ld.w $t1, $fp, -964
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -968
# store i32 %op170, i32* %op167
	ld.d $t1, $fp, -952
	ld.w $t0, $fp, -968
	st.w $t0, $t1, 0
# %op171 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -972
# %op172 = load i32, i32* %op167
	ld.d $t0, $fp, -952
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -976
# %op173 = add i32 %op171, %op172
	ld.w $t0, $fp, -972
	ld.w $t1, $fp, -976
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -980
# store i32 %op173, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -980
	st.w $t0, $t1, 0
# %op174 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 996
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -992
# store i32 2, i32* %op174
	ld.d $t1, $fp, -992
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op175 = load i32, i32* %op174
	ld.d $t0, $fp, -992
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1000
# %op176 = add i32 %op175, 4
	ld.w $t0, $fp, -1000
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1004
# store i32 %op176, i32* %op174
	ld.d $t1, $fp, -992
	ld.w $t0, $fp, -1004
	st.w $t0, $t1, 0
# %op177 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1008
# %op178 = load i32, i32* %op174
	ld.d $t0, $fp, -992
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1012
# %op179 = add i32 %op177, %op178
	ld.w $t0, $fp, -1008
	ld.w $t1, $fp, -1012
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1016
# store i32 %op179, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1016
	st.w $t0, $t1, 0
# %op180 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1028
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1024
# store i32 4, i32* %op180
	ld.d $t1, $fp, -1024
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op181 = load i32, i32* %op180
	ld.d $t0, $fp, -1024
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1032
# %op182 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1036
# %op183 = add i32 %op181, %op182
	ld.w $t0, $fp, -1032
	ld.w $t1, $fp, -1036
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1040
# store i32 %op183, i32* %op180
	ld.d $t1, $fp, -1024
	ld.w $t0, $fp, -1040
	st.w $t0, $t1, 0
# %op184 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1044
# %op185 = load i32, i32* %op180
	ld.d $t0, $fp, -1024
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1048
# %op186 = add i32 %op184, %op185
	ld.w $t0, $fp, -1044
	ld.w $t1, $fp, -1048
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1052
# store i32 %op186, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1052
	st.w $t0, $t1, 0
# %op187 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1068
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1064
# store i32 0, i32* %op187
	ld.d $t1, $fp, -1064
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op188 = load i32, i32* %op187
	ld.d $t0, $fp, -1064
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1072
# %op189 = add i32 %op188, 4
	ld.w $t0, $fp, -1072
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1076
# store i32 %op189, i32* %op187
	ld.d $t1, $fp, -1064
	ld.w $t0, $fp, -1076
	st.w $t0, $t1, 0
# %op190 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1080
# %op191 = load i32, i32* %op187
	ld.d $t0, $fp, -1064
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1084
# %op192 = add i32 %op190, %op191
	ld.w $t0, $fp, -1080
	ld.w $t1, $fp, -1084
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1088
# store i32 %op192, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1088
	st.w $t0, $t1, 0
# %op193 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1100
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1096
# store i32 3, i32* %op193
	ld.d $t1, $fp, -1096
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op194 = load i32, i32* %op193
	ld.d $t0, $fp, -1096
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1104
# %op195 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1108
# %op196 = add i32 %op194, %op195
	ld.w $t0, $fp, -1104
	ld.w $t1, $fp, -1108
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1112
# store i32 %op196, i32* %op193
	ld.d $t1, $fp, -1096
	ld.w $t0, $fp, -1112
	st.w $t0, $t1, 0
# %op197 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1116
# %op198 = load i32, i32* %op193
	ld.d $t0, $fp, -1096
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1120
# %op199 = add i32 %op197, %op198
	ld.w $t0, $fp, -1116
	ld.w $t1, $fp, -1120
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1124
# store i32 %op199, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1124
	st.w $t0, $t1, 0
# %op200 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1140
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1136
# store i32 0, i32* %op200
	ld.d $t1, $fp, -1136
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op201 = load i32, i32* %op200
	ld.d $t0, $fp, -1136
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1144
# %op202 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1148
# %op203 = add i32 %op201, %op202
	ld.w $t0, $fp, -1144
	ld.w $t1, $fp, -1148
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1152
# store i32 %op203, i32* %op200
	ld.d $t1, $fp, -1136
	ld.w $t0, $fp, -1152
	st.w $t0, $t1, 0
# %op204 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1156
# %op205 = load i32, i32* %op200
	ld.d $t0, $fp, -1136
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1160
# %op206 = add i32 %op204, %op205
	ld.w $t0, $fp, -1156
	ld.w $t1, $fp, -1160
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1164
# store i32 %op206, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1164
	st.w $t0, $t1, 0
# %op207 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1180
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1176
# store i32 4, i32* %op207
	ld.d $t1, $fp, -1176
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op208 = load i32, i32* %op207
	ld.d $t0, $fp, -1176
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1184
# %op209 = add i32 %op208, 1
	ld.w $t0, $fp, -1184
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1188
# store i32 %op209, i32* %op207
	ld.d $t1, $fp, -1176
	ld.w $t0, $fp, -1188
	st.w $t0, $t1, 0
# %op210 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1192
# %op211 = load i32, i32* %op207
	ld.d $t0, $fp, -1176
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1196
# %op212 = add i32 %op210, %op211
	ld.w $t0, $fp, -1192
	ld.w $t1, $fp, -1196
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1200
# store i32 %op212, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1200
	st.w $t0, $t1, 0
# %op213 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1212
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1208
# store i32 1, i32* %op213
	ld.d $t1, $fp, -1208
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op214 = load i32, i32* %op213
	ld.d $t0, $fp, -1208
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1216
# %op215 = add i32 %op214, 0
	ld.w $t0, $fp, -1216
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1220
# store i32 %op215, i32* %op213
	ld.d $t1, $fp, -1208
	ld.w $t0, $fp, -1220
	st.w $t0, $t1, 0
# %op216 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1224
# %op217 = load i32, i32* %op213
	ld.d $t0, $fp, -1208
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1228
# %op218 = add i32 %op216, %op217
	ld.w $t0, $fp, -1224
	ld.w $t1, $fp, -1228
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1232
# store i32 %op218, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1232
	st.w $t0, $t1, 0
# %op219 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1244
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1240
# store i32 2, i32* %op219
	ld.d $t1, $fp, -1240
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op220 = load i32, i32* %op219
	ld.d $t0, $fp, -1240
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1248
# %op221 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1252
# %op222 = add i32 %op220, %op221
	ld.w $t0, $fp, -1248
	ld.w $t1, $fp, -1252
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1256
# store i32 %op222, i32* %op219
	ld.d $t1, $fp, -1240
	ld.w $t0, $fp, -1256
	st.w $t0, $t1, 0
# %op223 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1260
# %op224 = load i32, i32* %op219
	ld.d $t0, $fp, -1240
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1264
# %op225 = add i32 %op223, %op224
	ld.w $t0, $fp, -1260
	ld.w $t1, $fp, -1264
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1268
# store i32 %op225, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1268
	st.w $t0, $t1, 0
# %op226 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1284
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1280
# store i32 4, i32* %op226
	ld.d $t1, $fp, -1280
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op227 = load i32, i32* %op226
	ld.d $t0, $fp, -1280
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1288
# %op228 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1292
# %op229 = add i32 %op227, %op228
	ld.w $t0, $fp, -1288
	ld.w $t1, $fp, -1292
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1296
# store i32 %op229, i32* %op226
	ld.d $t1, $fp, -1280
	ld.w $t0, $fp, -1296
	st.w $t0, $t1, 0
# %op230 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1300
# %op231 = load i32, i32* %op226
	ld.d $t0, $fp, -1280
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1304
# %op232 = add i32 %op230, %op231
	ld.w $t0, $fp, -1300
	ld.w $t1, $fp, -1304
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1308
# store i32 %op232, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1308
	st.w $t0, $t1, 0
# %op233 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1324
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1320
# store i32 0, i32* %op233
	ld.d $t1, $fp, -1320
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op234 = load i32, i32* %op233
	ld.d $t0, $fp, -1320
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1328
# %op235 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1332
# %op236 = add i32 %op234, %op235
	ld.w $t0, $fp, -1328
	ld.w $t1, $fp, -1332
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1336
# store i32 %op236, i32* %op233
	ld.d $t1, $fp, -1320
	ld.w $t0, $fp, -1336
	st.w $t0, $t1, 0
# %op237 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1340
# %op238 = load i32, i32* %op233
	ld.d $t0, $fp, -1320
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1344
# %op239 = add i32 %op237, %op238
	ld.w $t0, $fp, -1340
	ld.w $t1, $fp, -1344
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1348
# store i32 %op239, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1348
	st.w $t0, $t1, 0
# %op240 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1364
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1360
# store i32 4, i32* %op240
	ld.d $t1, $fp, -1360
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op241 = load i32, i32* %op240
	ld.d $t0, $fp, -1360
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1368
# %op242 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1372
# %op243 = add i32 %op241, %op242
	ld.w $t0, $fp, -1368
	ld.w $t1, $fp, -1372
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1376
# store i32 %op243, i32* %op240
	ld.d $t1, $fp, -1360
	ld.w $t0, $fp, -1376
	st.w $t0, $t1, 0
# %op244 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1380
# %op245 = load i32, i32* %op240
	ld.d $t0, $fp, -1360
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1384
# %op246 = add i32 %op244, %op245
	ld.w $t0, $fp, -1380
	ld.w $t1, $fp, -1384
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1388
# store i32 %op246, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1388
	st.w $t0, $t1, 0
# %op247 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1404
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1400
# store i32 0, i32* %op247
	ld.d $t1, $fp, -1400
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op248 = load i32, i32* %op247
	ld.d $t0, $fp, -1400
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1408
# %op249 = add i32 %op248, 1
	ld.w $t0, $fp, -1408
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1412
# store i32 %op249, i32* %op247
	ld.d $t1, $fp, -1400
	ld.w $t0, $fp, -1412
	st.w $t0, $t1, 0
# %op250 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1416
# %op251 = load i32, i32* %op247
	ld.d $t0, $fp, -1400
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1420
# %op252 = add i32 %op250, %op251
	ld.w $t0, $fp, -1416
	ld.w $t1, $fp, -1420
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1424
# store i32 %op252, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1424
	st.w $t0, $t1, 0
# %op253 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1436
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1432
# store i32 1, i32* %op253
	ld.d $t1, $fp, -1432
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op254 = load i32, i32* %op253
	ld.d $t0, $fp, -1432
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1440
# %op255 = add i32 %op254, 4
	ld.w $t0, $fp, -1440
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1444
# store i32 %op255, i32* %op253
	ld.d $t1, $fp, -1432
	ld.w $t0, $fp, -1444
	st.w $t0, $t1, 0
# %op256 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1448
# %op257 = load i32, i32* %op253
	ld.d $t0, $fp, -1432
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1452
# %op258 = add i32 %op256, %op257
	ld.w $t0, $fp, -1448
	ld.w $t1, $fp, -1452
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1456
# store i32 %op258, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1456
	st.w $t0, $t1, 0
# %op259 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1468
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1464
# store i32 0, i32* %op259
	ld.d $t1, $fp, -1464
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op260 = load i32, i32* %op259
	ld.d $t0, $fp, -1464
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1472
# %op261 = add i32 %op260, 2
	ld.w $t0, $fp, -1472
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1476
# store i32 %op261, i32* %op259
	ld.d $t1, $fp, -1464
	ld.w $t0, $fp, -1476
	st.w $t0, $t1, 0
# %op262 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1480
# %op263 = load i32, i32* %op259
	ld.d $t0, $fp, -1464
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1484
# %op264 = add i32 %op262, %op263
	ld.w $t0, $fp, -1480
	ld.w $t1, $fp, -1484
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1488
# store i32 %op264, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1488
	st.w $t0, $t1, 0
# %op265 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1500
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1496
# store i32 0, i32* %op265
	ld.d $t1, $fp, -1496
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op266 = load i32, i32* %op265
	ld.d $t0, $fp, -1496
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1504
# %op267 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1508
# %op268 = add i32 %op266, %op267
	ld.w $t0, $fp, -1504
	ld.w $t1, $fp, -1508
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1512
# store i32 %op268, i32* %op265
	ld.d $t1, $fp, -1496
	ld.w $t0, $fp, -1512
	st.w $t0, $t1, 0
# %op269 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1516
# %op270 = load i32, i32* %op265
	ld.d $t0, $fp, -1496
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1520
# %op271 = add i32 %op269, %op270
	ld.w $t0, $fp, -1516
	ld.w $t1, $fp, -1520
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1524
# store i32 %op271, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1524
	st.w $t0, $t1, 0
# %op272 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1540
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1536
# store i32 0, i32* %op272
	ld.d $t1, $fp, -1536
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op273 = load i32, i32* %op272
	ld.d $t0, $fp, -1536
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1544
# %op274 = add i32 %op273, 2
	ld.w $t0, $fp, -1544
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1548
# store i32 %op274, i32* %op272
	ld.d $t1, $fp, -1536
	ld.w $t0, $fp, -1548
	st.w $t0, $t1, 0
# %op275 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1552
# %op276 = load i32, i32* %op272
	ld.d $t0, $fp, -1536
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1556
# %op277 = add i32 %op275, %op276
	ld.w $t0, $fp, -1552
	ld.w $t1, $fp, -1556
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1560
# store i32 %op277, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1560
	st.w $t0, $t1, 0
# %op278 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1572
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1568
# store i32 2, i32* %op278
	ld.d $t1, $fp, -1568
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op279 = load i32, i32* %op278
	ld.d $t0, $fp, -1568
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1576
# %op280 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1580
# %op281 = add i32 %op279, %op280
	ld.w $t0, $fp, -1576
	ld.w $t1, $fp, -1580
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1584
# store i32 %op281, i32* %op278
	ld.d $t1, $fp, -1568
	ld.w $t0, $fp, -1584
	st.w $t0, $t1, 0
# %op282 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1588
# %op283 = load i32, i32* %op278
	ld.d $t0, $fp, -1568
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1592
# %op284 = add i32 %op282, %op283
	ld.w $t0, $fp, -1588
	ld.w $t1, $fp, -1592
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1596
# store i32 %op284, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1596
	st.w $t0, $t1, 0
# %op285 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1612
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1608
# store i32 2, i32* %op285
	ld.d $t1, $fp, -1608
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op286 = load i32, i32* %op285
	ld.d $t0, $fp, -1608
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1616
# %op287 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1620
# %op288 = add i32 %op286, %op287
	ld.w $t0, $fp, -1616
	ld.w $t1, $fp, -1620
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1624
# store i32 %op288, i32* %op285
	ld.d $t1, $fp, -1608
	ld.w $t0, $fp, -1624
	st.w $t0, $t1, 0
# %op289 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1628
# %op290 = load i32, i32* %op285
	ld.d $t0, $fp, -1608
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1632
# %op291 = add i32 %op289, %op290
	ld.w $t0, $fp, -1628
	ld.w $t1, $fp, -1632
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1636
# store i32 %op291, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1636
	st.w $t0, $t1, 0
# %op292 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1652
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1648
# store i32 4, i32* %op292
	ld.d $t1, $fp, -1648
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op293 = load i32, i32* %op292
	ld.d $t0, $fp, -1648
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1656
# %op294 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1660
# %op295 = add i32 %op293, %op294
	ld.w $t0, $fp, -1656
	ld.w $t1, $fp, -1660
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1664
# store i32 %op295, i32* %op292
	ld.d $t1, $fp, -1648
	ld.w $t0, $fp, -1664
	st.w $t0, $t1, 0
# %op296 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1668
# %op297 = load i32, i32* %op292
	ld.d $t0, $fp, -1648
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1672
# %op298 = add i32 %op296, %op297
	ld.w $t0, $fp, -1668
	ld.w $t1, $fp, -1672
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1676
# store i32 %op298, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1676
	st.w $t0, $t1, 0
# %op299 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1692
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1688
# store i32 1, i32* %op299
	ld.d $t1, $fp, -1688
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op300 = load i32, i32* %op299
	ld.d $t0, $fp, -1688
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1696
# %op301 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1700
# %op302 = add i32 %op300, %op301
	ld.w $t0, $fp, -1696
	ld.w $t1, $fp, -1700
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1704
# store i32 %op302, i32* %op299
	ld.d $t1, $fp, -1688
	ld.w $t0, $fp, -1704
	st.w $t0, $t1, 0
# %op303 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1708
# %op304 = load i32, i32* %op299
	ld.d $t0, $fp, -1688
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1712
# %op305 = add i32 %op303, %op304
	ld.w $t0, $fp, -1708
	ld.w $t1, $fp, -1712
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1716
# store i32 %op305, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1716
	st.w $t0, $t1, 0
# %op306 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1732
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1728
# store i32 1, i32* %op306
	ld.d $t1, $fp, -1728
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op307 = load i32, i32* %op306
	ld.d $t0, $fp, -1728
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1736
# %op308 = add i32 %op307, 0
	ld.w $t0, $fp, -1736
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1740
# store i32 %op308, i32* %op306
	ld.d $t1, $fp, -1728
	ld.w $t0, $fp, -1740
	st.w $t0, $t1, 0
# %op309 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1744
# %op310 = load i32, i32* %op306
	ld.d $t0, $fp, -1728
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1748
# %op311 = add i32 %op309, %op310
	ld.w $t0, $fp, -1744
	ld.w $t1, $fp, -1748
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1752
# store i32 %op311, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1752
	st.w $t0, $t1, 0
# %op312 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1764
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1760
# store i32 0, i32* %op312
	ld.d $t1, $fp, -1760
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op313 = load i32, i32* %op312
	ld.d $t0, $fp, -1760
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1768
# %op314 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1772
# %op315 = add i32 %op313, %op314
	ld.w $t0, $fp, -1768
	ld.w $t1, $fp, -1772
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1776
# store i32 %op315, i32* %op312
	ld.d $t1, $fp, -1760
	ld.w $t0, $fp, -1776
	st.w $t0, $t1, 0
# %op316 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1780
# %op317 = load i32, i32* %op312
	ld.d $t0, $fp, -1760
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1784
# %op318 = add i32 %op316, %op317
	ld.w $t0, $fp, -1780
	ld.w $t1, $fp, -1784
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1788
# store i32 %op318, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1788
	st.w $t0, $t1, 0
# %op319 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1804
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1800
# store i32 0, i32* %op319
	ld.d $t1, $fp, -1800
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op320 = load i32, i32* %op319
	ld.d $t0, $fp, -1800
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1808
# %op321 = add i32 %op320, 2
	ld.w $t0, $fp, -1808
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1812
# store i32 %op321, i32* %op319
	ld.d $t1, $fp, -1800
	ld.w $t0, $fp, -1812
	st.w $t0, $t1, 0
# %op322 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1816
# %op323 = load i32, i32* %op319
	ld.d $t0, $fp, -1800
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1820
# %op324 = add i32 %op322, %op323
	ld.w $t0, $fp, -1816
	ld.w $t1, $fp, -1820
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1824
# store i32 %op324, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1824
	st.w $t0, $t1, 0
# %op325 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1836
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1832
# store i32 3, i32* %op325
	ld.d $t1, $fp, -1832
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op326 = load i32, i32* %op325
	ld.d $t0, $fp, -1832
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1840
# %op327 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1844
# %op328 = add i32 %op326, %op327
	ld.w $t0, $fp, -1840
	ld.w $t1, $fp, -1844
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1848
# store i32 %op328, i32* %op325
	ld.d $t1, $fp, -1832
	ld.w $t0, $fp, -1848
	st.w $t0, $t1, 0
# %op329 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1852
# %op330 = load i32, i32* %op325
	ld.d $t0, $fp, -1832
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1856
# %op331 = add i32 %op329, %op330
	ld.w $t0, $fp, -1852
	ld.w $t1, $fp, -1856
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1860
# store i32 %op331, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1860
	st.w $t0, $t1, 0
# %op332 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1876
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1872
# store i32 1, i32* %op332
	ld.d $t1, $fp, -1872
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op333 = load i32, i32* %op332
	ld.d $t0, $fp, -1872
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1880
# %op334 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1884
# %op335 = add i32 %op333, %op334
	ld.w $t0, $fp, -1880
	ld.w $t1, $fp, -1884
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1888
# store i32 %op335, i32* %op332
	ld.d $t1, $fp, -1872
	ld.w $t0, $fp, -1888
	st.w $t0, $t1, 0
# %op336 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1892
# %op337 = load i32, i32* %op332
	ld.d $t0, $fp, -1872
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1896
# %op338 = add i32 %op336, %op337
	ld.w $t0, $fp, -1892
	ld.w $t1, $fp, -1896
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1900
# store i32 %op338, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1900
	st.w $t0, $t1, 0
# %op339 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1916
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1912
# store i32 3, i32* %op339
	ld.d $t1, $fp, -1912
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op340 = load i32, i32* %op339
	ld.d $t0, $fp, -1912
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1920
# %op341 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1924
# %op342 = add i32 %op340, %op341
	ld.w $t0, $fp, -1920
	ld.w $t1, $fp, -1924
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1928
# store i32 %op342, i32* %op339
	ld.d $t1, $fp, -1912
	ld.w $t0, $fp, -1928
	st.w $t0, $t1, 0
# %op343 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1932
# %op344 = load i32, i32* %op339
	ld.d $t0, $fp, -1912
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1936
# %op345 = add i32 %op343, %op344
	ld.w $t0, $fp, -1932
	ld.w $t1, $fp, -1936
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1940
# store i32 %op345, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1940
	st.w $t0, $t1, 0
# %op346 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1956
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1952
# store i32 2, i32* %op346
	ld.d $t1, $fp, -1952
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op347 = load i32, i32* %op346
	ld.d $t0, $fp, -1952
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1960
# %op348 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1964
# %op349 = add i32 %op347, %op348
	ld.w $t0, $fp, -1960
	ld.w $t1, $fp, -1964
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1968
# store i32 %op349, i32* %op346
	ld.d $t1, $fp, -1952
	ld.w $t0, $fp, -1968
	st.w $t0, $t1, 0
# %op350 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1972
# %op351 = load i32, i32* %op346
	ld.d $t0, $fp, -1952
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -1976
# %op352 = add i32 %op350, %op351
	ld.w $t0, $fp, -1972
	ld.w $t1, $fp, -1976
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1980
# store i32 %op352, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -1980
	st.w $t0, $t1, 0
# %op353 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 1996
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -1992
# store i32 3, i32* %op353
	ld.d $t1, $fp, -1992
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op354 = load i32, i32* %op353
	ld.d $t0, $fp, -1992
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2000
# %op355 = add i32 %op354, 1
	ld.w $t0, $fp, -2000
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2004
# store i32 %op355, i32* %op353
	ld.d $t1, $fp, -1992
	ld.w $t0, $fp, -2004
	st.w $t0, $t1, 0
# %op356 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2008
# %op357 = load i32, i32* %op353
	ld.d $t0, $fp, -1992
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2012
# %op358 = add i32 %op356, %op357
	ld.w $t0, $fp, -2008
	ld.w $t1, $fp, -2012
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2016
# store i32 %op358, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -2016
	st.w $t0, $t1, 0
# %op359 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2028
	sub.d $t0,$fp,$t0
	st.d $t0, $fp, -2024
# store i32 4, i32* %op359
	ld.d $t1, $fp, -2024
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op360 = load i32, i32* %op359
	ld.d $t0, $fp, -2024
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2032
# %op361 = add i32 %op360, 1
	ld.w $t0, $fp, -2032
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2036
# store i32 %op361, i32* %op359
	ld.d $t1, $fp, -2024
	ld.w $t0, $fp, -2036
	st.w $t0, $t1, 0
# %op362 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2040
# %op363 = load i32, i32* %op359
	ld.d $t0, $fp, -2024
	ld.w $t0, $t0, 0
	st.w $t0, $fp, -2044
# %op364 = add i32 %op362, %op363
	ld.w $t0, $fp, -2040
	ld.w $t1, $fp, -2044
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2048
# store i32 %op364, i32* %op1
	ld.d $t1, $fp, -40
	ld.w $t0, $fp, -2048
	st.w $t0, $t1, 0
# %op365 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2060
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op365
	lu12i.w $t1, -1
	ori $t1, $t1, 2040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op366 = load i32, i32* %op365
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op367 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op368 = add i32 %op366, %op367
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op368, i32* %op365
	lu12i.w $t1, -1
	ori $t1, $t1, 2040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op369 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op370 = load i32, i32* %op365
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op371 = add i32 %op369, %op370
	lu12i.w $t0, -1
	ori $t0, $t0, 2020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op371, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 2012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op372 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2100
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op372
	lu12i.w $t1, -1
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op373 = load i32, i32* %op372
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op374 = add i32 %op373, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op374, i32* %op372
	lu12i.w $t1, -1
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op375 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op376 = load i32, i32* %op372
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op377 = add i32 %op375, %op376
	lu12i.w $t0, -1
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op377, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op378 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2132
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op378
	lu12i.w $t1, -1
	ori $t1, $t1, 1968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op379 = load i32, i32* %op378
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op380 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op381 = add i32 %op379, %op380
	lu12i.w $t0, -1
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op381, i32* %op378
	lu12i.w $t1, -1
	ori $t1, $t1, 1968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op382 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op383 = load i32, i32* %op378
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op384 = add i32 %op382, %op383
	lu12i.w $t0, -1
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1944
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op384, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op385 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2172
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op385
	lu12i.w $t1, -1
	ori $t1, $t1, 1928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op386 = load i32, i32* %op385
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op387 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op388 = add i32 %op386, %op387
	lu12i.w $t0, -1
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op388, i32* %op385
	lu12i.w $t1, -1
	ori $t1, $t1, 1928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op389 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op390 = load i32, i32* %op385
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op391 = add i32 %op389, %op390
	lu12i.w $t0, -1
	ori $t0, $t0, 1908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op391, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op392 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2212
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op392
	lu12i.w $t1, -1
	ori $t1, $t1, 1888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op393 = load i32, i32* %op392
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op394 = add i32 %op393, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op394, i32* %op392
	lu12i.w $t1, -1
	ori $t1, $t1, 1888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op395 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op396 = load i32, i32* %op392
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op397 = add i32 %op395, %op396
	lu12i.w $t0, -1
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op397, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op398 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2244
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op398
	lu12i.w $t1, -1
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op399 = load i32, i32* %op398
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op400 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op401 = add i32 %op399, %op400
	lu12i.w $t0, -1
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op401, i32* %op398
	lu12i.w $t1, -1
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op402 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op403 = load i32, i32* %op398
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op404 = add i32 %op402, %op403
	lu12i.w $t0, -1
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op404, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op405 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2284
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op405
	lu12i.w $t1, -1
	ori $t1, $t1, 1816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op406 = load i32, i32* %op405
	lu12i.w $t0, -1
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op407 = add i32 %op406, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op407, i32* %op405
	lu12i.w $t1, -1
	ori $t1, $t1, 1816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op408 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op409 = load i32, i32* %op405
	lu12i.w $t0, -1
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op410 = add i32 %op408, %op409
	lu12i.w $t0, -1
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op410, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op411 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2316
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op411
	lu12i.w $t1, -1
	ori $t1, $t1, 1784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op412 = load i32, i32* %op411
	lu12i.w $t0, -1
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op413 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op414 = add i32 %op412, %op413
	lu12i.w $t0, -1
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op414, i32* %op411
	lu12i.w $t1, -1
	ori $t1, $t1, 1784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op415 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op416 = load i32, i32* %op411
	lu12i.w $t0, -1
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op417 = add i32 %op415, %op416
	lu12i.w $t0, -1
	ori $t0, $t0, 1764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op417, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op418 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2356
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op418
	lu12i.w $t1, -1
	ori $t1, $t1, 1744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op419 = load i32, i32* %op418
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op420 = add i32 %op419, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 1736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op420, i32* %op418
	lu12i.w $t1, -1
	ori $t1, $t1, 1744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op421 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op422 = load i32, i32* %op418
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op423 = add i32 %op421, %op422
	lu12i.w $t0, -1
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op423, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op424 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2388
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op424
	lu12i.w $t1, -1
	ori $t1, $t1, 1712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op425 = load i32, i32* %op424
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op426 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op427 = add i32 %op425, %op426
	lu12i.w $t0, -1
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op427, i32* %op424
	lu12i.w $t1, -1
	ori $t1, $t1, 1712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op428 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op429 = load i32, i32* %op424
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op430 = add i32 %op428, %op429
	lu12i.w $t0, -1
	ori $t0, $t0, 1692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op430, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op431 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2428
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op431
	lu12i.w $t1, -1
	ori $t1, $t1, 1672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op432 = load i32, i32* %op431
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op433 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op434 = add i32 %op432, %op433
	lu12i.w $t0, -1
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op434, i32* %op431
	lu12i.w $t1, -1
	ori $t1, $t1, 1672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op435 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op436 = load i32, i32* %op431
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op437 = add i32 %op435, %op436
	lu12i.w $t0, -1
	ori $t0, $t0, 1652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op437, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op438 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2468
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op438
	lu12i.w $t1, -1
	ori $t1, $t1, 1632
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op439 = load i32, i32* %op438
	lu12i.w $t0, -1
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op440 = add i32 %op439, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op440, i32* %op438
	lu12i.w $t1, -1
	ori $t1, $t1, 1632
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op441 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op442 = load i32, i32* %op438
	lu12i.w $t0, -1
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op443 = add i32 %op441, %op442
	lu12i.w $t0, -1
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op443, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op444 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2500
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op444
	lu12i.w $t1, -1
	ori $t1, $t1, 1600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op445 = load i32, i32* %op444
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op446 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op447 = add i32 %op445, %op446
	lu12i.w $t0, -1
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op447, i32* %op444
	lu12i.w $t1, -1
	ori $t1, $t1, 1600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op448 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op449 = load i32, i32* %op444
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op450 = add i32 %op448, %op449
	lu12i.w $t0, -1
	ori $t0, $t0, 1580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op450, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op451 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2540
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op451
	lu12i.w $t1, -1
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op452 = load i32, i32* %op451
	lu12i.w $t0, -1
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op453 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op454 = add i32 %op452, %op453
	lu12i.w $t0, -1
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op454, i32* %op451
	lu12i.w $t1, -1
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op455 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op456 = load i32, i32* %op451
	lu12i.w $t0, -1
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op457 = add i32 %op455, %op456
	lu12i.w $t0, -1
	ori $t0, $t0, 1540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op457, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op458 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2580
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op458
	lu12i.w $t1, -1
	ori $t1, $t1, 1520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op459 = load i32, i32* %op458
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op460 = add i32 %op459, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op460, i32* %op458
	lu12i.w $t1, -1
	ori $t1, $t1, 1520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op461 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op462 = load i32, i32* %op458
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op463 = add i32 %op461, %op462
	lu12i.w $t0, -1
	ori $t0, $t0, 1504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1500
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op463, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op464 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2612
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op464
	lu12i.w $t1, -1
	ori $t1, $t1, 1488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op465 = load i32, i32* %op464
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op466 = add i32 %op465, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op466, i32* %op464
	lu12i.w $t1, -1
	ori $t1, $t1, 1488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op467 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op468 = load i32, i32* %op464
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op469 = add i32 %op467, %op468
	lu12i.w $t0, -1
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op469, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op470 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2644
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op470
	lu12i.w $t1, -1
	ori $t1, $t1, 1456
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op471 = load i32, i32* %op470
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op472 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op473 = add i32 %op471, %op472
	lu12i.w $t0, -1
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op473, i32* %op470
	lu12i.w $t1, -1
	ori $t1, $t1, 1456
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op474 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op475 = load i32, i32* %op470
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op476 = add i32 %op474, %op475
	lu12i.w $t0, -1
	ori $t0, $t0, 1436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op476, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op477 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2684
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op477
	lu12i.w $t1, -1
	ori $t1, $t1, 1416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op478 = load i32, i32* %op477
	lu12i.w $t0, -1
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op479 = add i32 %op478, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op479, i32* %op477
	lu12i.w $t1, -1
	ori $t1, $t1, 1416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op480 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op481 = load i32, i32* %op477
	lu12i.w $t0, -1
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op482 = add i32 %op480, %op481
	lu12i.w $t0, -1
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op482, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op483 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2716
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op483
	lu12i.w $t1, -1
	ori $t1, $t1, 1384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op484 = load i32, i32* %op483
	lu12i.w $t0, -1
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op485 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op486 = add i32 %op484, %op485
	lu12i.w $t0, -1
	ori $t0, $t0, 1376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op486, i32* %op483
	lu12i.w $t1, -1
	ori $t1, $t1, 1384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op487 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op488 = load i32, i32* %op483
	lu12i.w $t0, -1
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op489 = add i32 %op487, %op488
	lu12i.w $t0, -1
	ori $t0, $t0, 1364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op489, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op490 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2756
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op490
	lu12i.w $t1, -1
	ori $t1, $t1, 1344
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op491 = load i32, i32* %op490
	lu12i.w $t0, -1
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op492 = add i32 %op491, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op492, i32* %op490
	lu12i.w $t1, -1
	ori $t1, $t1, 1344
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op493 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op494 = load i32, i32* %op490
	lu12i.w $t0, -1
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op495 = add i32 %op493, %op494
	lu12i.w $t0, -1
	ori $t0, $t0, 1328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op495, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op496 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2788
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op496
	lu12i.w $t1, -1
	ori $t1, $t1, 1312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op497 = load i32, i32* %op496
	lu12i.w $t0, -1
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op498 = add i32 %op497, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op498, i32* %op496
	lu12i.w $t1, -1
	ori $t1, $t1, 1312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op499 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op500 = load i32, i32* %op496
	lu12i.w $t0, -1
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op501 = add i32 %op499, %op500
	lu12i.w $t0, -1
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op501, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op502 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2820
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op502
	lu12i.w $t1, -1
	ori $t1, $t1, 1280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op503 = load i32, i32* %op502
	lu12i.w $t0, -1
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op504 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op505 = add i32 %op503, %op504
	lu12i.w $t0, -1
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op505, i32* %op502
	lu12i.w $t1, -1
	ori $t1, $t1, 1280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op506 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op507 = load i32, i32* %op502
	lu12i.w $t0, -1
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op508 = add i32 %op506, %op507
	lu12i.w $t0, -1
	ori $t0, $t0, 1260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1256
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op508, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op509 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2860
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op509
	lu12i.w $t1, -1
	ori $t1, $t1, 1240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op510 = load i32, i32* %op509
	lu12i.w $t0, -1
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op511 = add i32 %op510, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op511, i32* %op509
	lu12i.w $t1, -1
	ori $t1, $t1, 1240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op512 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op513 = load i32, i32* %op509
	lu12i.w $t0, -1
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op514 = add i32 %op512, %op513
	lu12i.w $t0, -1
	ori $t0, $t0, 1224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op514, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op515 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2892
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op515
	lu12i.w $t1, -1
	ori $t1, $t1, 1208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op516 = load i32, i32* %op515
	lu12i.w $t0, -1
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op517 = add i32 %op516, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op517, i32* %op515
	lu12i.w $t1, -1
	ori $t1, $t1, 1208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op518 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op519 = load i32, i32* %op515
	lu12i.w $t0, -1
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op520 = add i32 %op518, %op519
	lu12i.w $t0, -1
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op520, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op521 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2924
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op521
	lu12i.w $t1, -1
	ori $t1, $t1, 1176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op522 = load i32, i32* %op521
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op523 = add i32 %op522, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op523, i32* %op521
	lu12i.w $t1, -1
	ori $t1, $t1, 1176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op524 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op525 = load i32, i32* %op521
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op526 = add i32 %op524, %op525
	lu12i.w $t0, -1
	ori $t0, $t0, 1160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op526, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op527 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2956
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op527
	lu12i.w $t1, -1
	ori $t1, $t1, 1144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op528 = load i32, i32* %op527
	lu12i.w $t0, -1
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op529 = add i32 %op528, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op529, i32* %op527
	lu12i.w $t1, -1
	ori $t1, $t1, 1144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op530 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op531 = load i32, i32* %op527
	lu12i.w $t0, -1
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op532 = add i32 %op530, %op531
	lu12i.w $t0, -1
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op532, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op533 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 2988
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op533
	lu12i.w $t1, -1
	ori $t1, $t1, 1112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op534 = load i32, i32* %op533
	lu12i.w $t0, -1
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op535 = add i32 %op534, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op535, i32* %op533
	lu12i.w $t1, -1
	ori $t1, $t1, 1112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op536 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op537 = load i32, i32* %op533
	lu12i.w $t0, -1
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op538 = add i32 %op536, %op537
	lu12i.w $t0, -1
	ori $t0, $t0, 1096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op538, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op539 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3020
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op539
	lu12i.w $t1, -1
	ori $t1, $t1, 1080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op540 = load i32, i32* %op539
	lu12i.w $t0, -1
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op541 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op542 = add i32 %op540, %op541
	lu12i.w $t0, -1
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1068
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op542, i32* %op539
	lu12i.w $t1, -1
	ori $t1, $t1, 1080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op543 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op544 = load i32, i32* %op539
	lu12i.w $t0, -1
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op545 = add i32 %op543, %op544
	lu12i.w $t0, -1
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op545, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op546 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3060
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op546
	lu12i.w $t1, -1
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op547 = load i32, i32* %op546
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op548 = add i32 %op547, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op548, i32* %op546
	lu12i.w $t1, -1
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op549 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op550 = load i32, i32* %op546
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op551 = add i32 %op549, %op550
	lu12i.w $t0, -1
	ori $t0, $t0, 1024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op551, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op552 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3092
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op552
	lu12i.w $t1, -1
	ori $t1, $t1, 1008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op553 = load i32, i32* %op552
	lu12i.w $t0, -1
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op554 = add i32 %op553, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op554, i32* %op552
	lu12i.w $t1, -1
	ori $t1, $t1, 1008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op555 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op556 = load i32, i32* %op552
	lu12i.w $t0, -1
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op557 = add i32 %op555, %op556
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op557, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op558 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3124
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op558
	lu12i.w $t1, -1
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op559 = load i32, i32* %op558
	lu12i.w $t0, -1
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op560 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op561 = add i32 %op559, %op560
	lu12i.w $t0, -1
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op561, i32* %op558
	lu12i.w $t1, -1
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op562 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op563 = load i32, i32* %op558
	lu12i.w $t0, -1
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op564 = add i32 %op562, %op563
	lu12i.w $t0, -1
	ori $t0, $t0, 956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op564, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op565 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3164
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op565
	lu12i.w $t1, -1
	ori $t1, $t1, 936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op566 = load i32, i32* %op565
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op567 = add i32 %op566, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op567, i32* %op565
	lu12i.w $t1, -1
	ori $t1, $t1, 936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op568 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op569 = load i32, i32* %op565
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op570 = add i32 %op568, %op569
	lu12i.w $t0, -1
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op570, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op571 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3196
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op571
	lu12i.w $t1, -1
	ori $t1, $t1, 904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op572 = load i32, i32* %op571
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op573 = add i32 %op572, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op573, i32* %op571
	lu12i.w $t1, -1
	ori $t1, $t1, 904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op574 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op575 = load i32, i32* %op571
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op576 = add i32 %op574, %op575
	lu12i.w $t0, -1
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op576, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op577 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3228
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op577
	lu12i.w $t1, -1
	ori $t1, $t1, 872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op578 = load i32, i32* %op577
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op579 = add i32 %op578, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op579, i32* %op577
	lu12i.w $t1, -1
	ori $t1, $t1, 872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op580 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op581 = load i32, i32* %op577
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op582 = add i32 %op580, %op581
	lu12i.w $t0, -1
	ori $t0, $t0, 856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op582, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op583 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3260
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op583
	lu12i.w $t1, -1
	ori $t1, $t1, 840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op584 = load i32, i32* %op583
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op585 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op586 = add i32 %op584, %op585
	lu12i.w $t0, -1
	ori $t0, $t0, 832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op586, i32* %op583
	lu12i.w $t1, -1
	ori $t1, $t1, 840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op587 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op588 = load i32, i32* %op583
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op589 = add i32 %op587, %op588
	lu12i.w $t0, -1
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op589, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op590 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3300
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op590
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op591 = load i32, i32* %op590
	lu12i.w $t0, -1
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op592 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op593 = add i32 %op591, %op592
	lu12i.w $t0, -1
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op593, i32* %op590
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op594 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op595 = load i32, i32* %op590
	lu12i.w $t0, -1
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op596 = add i32 %op594, %op595
	lu12i.w $t0, -1
	ori $t0, $t0, 780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 776
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op596, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op597 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3340
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op597
	lu12i.w $t1, -1
	ori $t1, $t1, 760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op598 = load i32, i32* %op597
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op599 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op600 = add i32 %op598, %op599
	lu12i.w $t0, -1
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op600, i32* %op597
	lu12i.w $t1, -1
	ori $t1, $t1, 760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op601 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op602 = load i32, i32* %op597
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op603 = add i32 %op601, %op602
	lu12i.w $t0, -1
	ori $t0, $t0, 740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op603, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op604 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3380
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op604
	lu12i.w $t1, -1
	ori $t1, $t1, 720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op605 = load i32, i32* %op604
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op606 = add i32 %op605, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op606, i32* %op604
	lu12i.w $t1, -1
	ori $t1, $t1, 720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op607 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op608 = load i32, i32* %op604
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op609 = add i32 %op607, %op608
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op609, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op610 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3412
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op610
	lu12i.w $t1, -1
	ori $t1, $t1, 688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op611 = load i32, i32* %op610
	lu12i.w $t0, -1
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op612 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op613 = add i32 %op611, %op612
	lu12i.w $t0, -1
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op613, i32* %op610
	lu12i.w $t1, -1
	ori $t1, $t1, 688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op614 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op615 = load i32, i32* %op610
	lu12i.w $t0, -1
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op616 = add i32 %op614, %op615
	lu12i.w $t0, -1
	ori $t0, $t0, 668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op616, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op617 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3452
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op617
	lu12i.w $t1, -1
	ori $t1, $t1, 648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op618 = load i32, i32* %op617
	lu12i.w $t0, -1
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op619 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op620 = add i32 %op618, %op619
	lu12i.w $t0, -1
	ori $t0, $t0, 640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op620, i32* %op617
	lu12i.w $t1, -1
	ori $t1, $t1, 648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op621 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op622 = load i32, i32* %op617
	lu12i.w $t0, -1
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op623 = add i32 %op621, %op622
	lu12i.w $t0, -1
	ori $t0, $t0, 628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op623, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op624 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3492
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op624
	lu12i.w $t1, -1
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op625 = load i32, i32* %op624
	lu12i.w $t0, -1
	ori $t0, $t0, 608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op626 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op627 = add i32 %op625, %op626
	lu12i.w $t0, -1
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op627, i32* %op624
	lu12i.w $t1, -1
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op628 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op629 = load i32, i32* %op624
	lu12i.w $t0, -1
	ori $t0, $t0, 608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op630 = add i32 %op628, %op629
	lu12i.w $t0, -1
	ori $t0, $t0, 588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op630, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op631 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3532
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op631
	lu12i.w $t1, -1
	ori $t1, $t1, 568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op632 = load i32, i32* %op631
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op633 = add i32 %op632, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op633, i32* %op631
	lu12i.w $t1, -1
	ori $t1, $t1, 568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op634 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op635 = load i32, i32* %op631
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op636 = add i32 %op634, %op635
	lu12i.w $t0, -1
	ori $t0, $t0, 552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op636, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op637 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3564
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op637
	lu12i.w $t1, -1
	ori $t1, $t1, 536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op638 = load i32, i32* %op637
	lu12i.w $t0, -1
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op639 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op640 = add i32 %op638, %op639
	lu12i.w $t0, -1
	ori $t0, $t0, 528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op640, i32* %op637
	lu12i.w $t1, -1
	ori $t1, $t1, 536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op641 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op642 = load i32, i32* %op637
	lu12i.w $t0, -1
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op643 = add i32 %op641, %op642
	lu12i.w $t0, -1
	ori $t0, $t0, 516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op643, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op644 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3604
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op644
	lu12i.w $t1, -1
	ori $t1, $t1, 496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op645 = load i32, i32* %op644
	lu12i.w $t0, -1
	ori $t0, $t0, 496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op646 = add i32 %op645, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op646, i32* %op644
	lu12i.w $t1, -1
	ori $t1, $t1, 496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op647 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op648 = load i32, i32* %op644
	lu12i.w $t0, -1
	ori $t0, $t0, 496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op649 = add i32 %op647, %op648
	lu12i.w $t0, -1
	ori $t0, $t0, 480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op649, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op650 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3636
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op650
	lu12i.w $t1, -1
	ori $t1, $t1, 464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op651 = load i32, i32* %op650
	lu12i.w $t0, -1
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op652 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op653 = add i32 %op651, %op652
	lu12i.w $t0, -1
	ori $t0, $t0, 456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op653, i32* %op650
	lu12i.w $t1, -1
	ori $t1, $t1, 464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op654 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op655 = load i32, i32* %op650
	lu12i.w $t0, -1
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op656 = add i32 %op654, %op655
	lu12i.w $t0, -1
	ori $t0, $t0, 444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 440
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op656, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op657 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3676
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op657
	lu12i.w $t1, -1
	ori $t1, $t1, 424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op658 = load i32, i32* %op657
	lu12i.w $t0, -1
	ori $t0, $t0, 424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op659 = add i32 %op658, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op659, i32* %op657
	lu12i.w $t1, -1
	ori $t1, $t1, 424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op660 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op661 = load i32, i32* %op657
	lu12i.w $t0, -1
	ori $t0, $t0, 424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op662 = add i32 %op660, %op661
	lu12i.w $t0, -1
	ori $t0, $t0, 408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op662, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op663 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3708
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op663
	lu12i.w $t1, -1
	ori $t1, $t1, 392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op664 = load i32, i32* %op663
	lu12i.w $t0, -1
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op665 = add i32 %op664, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op665, i32* %op663
	lu12i.w $t1, -1
	ori $t1, $t1, 392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op666 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op667 = load i32, i32* %op663
	lu12i.w $t0, -1
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op668 = add i32 %op666, %op667
	lu12i.w $t0, -1
	ori $t0, $t0, 376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op668, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op669 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3740
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op669
	lu12i.w $t1, -1
	ori $t1, $t1, 360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op670 = load i32, i32* %op669
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op671 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op672 = add i32 %op670, %op671
	lu12i.w $t0, -1
	ori $t0, $t0, 352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op672, i32* %op669
	lu12i.w $t1, -1
	ori $t1, $t1, 360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op673 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op674 = load i32, i32* %op669
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op675 = add i32 %op673, %op674
	lu12i.w $t0, -1
	ori $t0, $t0, 340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op675, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op676 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3780
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op676
	lu12i.w $t1, -1
	ori $t1, $t1, 320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op677 = load i32, i32* %op676
	lu12i.w $t0, -1
	ori $t0, $t0, 320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op678 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op679 = add i32 %op677, %op678
	lu12i.w $t0, -1
	ori $t0, $t0, 312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 308
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op679, i32* %op676
	lu12i.w $t1, -1
	ori $t1, $t1, 320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op680 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op681 = load i32, i32* %op676
	lu12i.w $t0, -1
	ori $t0, $t0, 320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op682 = add i32 %op680, %op681
	lu12i.w $t0, -1
	ori $t0, $t0, 300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op682, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op683 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3820
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op683
	lu12i.w $t1, -1
	ori $t1, $t1, 280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op684 = load i32, i32* %op683
	lu12i.w $t0, -1
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op685 = add i32 %op684, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op685, i32* %op683
	lu12i.w $t1, -1
	ori $t1, $t1, 280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op686 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op687 = load i32, i32* %op683
	lu12i.w $t0, -1
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op688 = add i32 %op686, %op687
	lu12i.w $t0, -1
	ori $t0, $t0, 264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op688, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op689 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3852
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op689
	lu12i.w $t1, -1
	ori $t1, $t1, 248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op690 = load i32, i32* %op689
	lu12i.w $t0, -1
	ori $t0, $t0, 248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op691 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op692 = add i32 %op690, %op691
	lu12i.w $t0, -1
	ori $t0, $t0, 240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op692, i32* %op689
	lu12i.w $t1, -1
	ori $t1, $t1, 248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op693 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op694 = load i32, i32* %op689
	lu12i.w $t0, -1
	ori $t0, $t0, 248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op695 = add i32 %op693, %op694
	lu12i.w $t0, -1
	ori $t0, $t0, 228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 224
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op695, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op696 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3892
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op696
	lu12i.w $t1, -1
	ori $t1, $t1, 208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op697 = load i32, i32* %op696
	lu12i.w $t0, -1
	ori $t0, $t0, 208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op698 = add i32 %op697, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op698, i32* %op696
	lu12i.w $t1, -1
	ori $t1, $t1, 208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op699 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op700 = load i32, i32* %op696
	lu12i.w $t0, -1
	ori $t0, $t0, 208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op701 = add i32 %op699, %op700
	lu12i.w $t0, -1
	ori $t0, $t0, 192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op701, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op702 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3924
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op702
	lu12i.w $t1, -1
	ori $t1, $t1, 176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op703 = load i32, i32* %op702
	lu12i.w $t0, -1
	ori $t0, $t0, 176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op704 = add i32 %op703, 3
	lu12i.w $t0, -1
	ori $t0, $t0, 168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op704, i32* %op702
	lu12i.w $t1, -1
	ori $t1, $t1, 176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op705 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op706 = load i32, i32* %op702
	lu12i.w $t0, -1
	ori $t0, $t0, 176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op707 = add i32 %op705, %op706
	lu12i.w $t0, -1
	ori $t0, $t0, 160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op707, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op708 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3956
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op708
	lu12i.w $t1, -1
	ori $t1, $t1, 144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op709 = load i32, i32* %op708
	lu12i.w $t0, -1
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op710 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op711 = add i32 %op709, %op710
	lu12i.w $t0, -1
	ori $t0, $t0, 136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op711, i32* %op708
	lu12i.w $t1, -1
	ori $t1, $t1, 144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op712 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op713 = load i32, i32* %op708
	lu12i.w $t0, -1
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op714 = add i32 %op712, %op713
	lu12i.w $t0, -1
	ori $t0, $t0, 124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op714, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op715 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 3996
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op715
	lu12i.w $t1, -1
	ori $t1, $t1, 104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op716 = load i32, i32* %op715
	lu12i.w $t0, -1
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 96
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op717 = add i32 %op716, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 96
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 92
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op717, i32* %op715
	lu12i.w $t1, -1
	ori $t1, $t1, 104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 92
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op718 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 88
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op719 = load i32, i32* %op715
	lu12i.w $t0, -1
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 84
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op720 = add i32 %op718, %op719
	lu12i.w $t0, -1
	ori $t0, $t0, 88
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 84
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 80
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op720, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 80
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op721 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 4028
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 72
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op721
	lu12i.w $t1, -1
	ori $t1, $t1, 72
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op722 = load i32, i32* %op721
	lu12i.w $t0, -1
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 64
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op723 = add i32 %op722, 4
	lu12i.w $t0, -1
	ori $t0, $t0, 64
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op723, i32* %op721
	lu12i.w $t1, -1
	ori $t1, $t1, 72
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 60
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op724 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 56
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op725 = load i32, i32* %op721
	lu12i.w $t0, -1
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 52
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op726 = add i32 %op724, %op725
	lu12i.w $t0, -1
	ori $t0, $t0, 56
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 52
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 48
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op726, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 48
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op727 = alloca i32
	lu12i.w $t0, 0
	ori $t0, $t0, 4060
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op727
	lu12i.w $t1, -1
	ori $t1, $t1, 40
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op728 = load i32, i32* %op727
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op729 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 28
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op730 = add i32 %op728, %op729
	lu12i.w $t0, -1
	ori $t0, $t0, 32
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 28
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op730, i32* %op727
	lu12i.w $t1, -1
	ori $t1, $t1, 40
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 24
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op731 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 20
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op732 = load i32, i32* %op727
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 16
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op733 = add i32 %op731, %op732
	lu12i.w $t0, -1
	ori $t0, $t0, 20
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 16
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 12
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op733, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -1
	ori $t0, $t0, 12
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op734 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 4
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -1
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op734
	lu12i.w $t1, -1
	ori $t1, $t1, 0
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op735 = load i32, i32* %op734
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op736 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op737 = add i32 %op735, %op736
	lu12i.w $t0, -2
	ori $t0, $t0, 4088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op737, i32* %op734
	lu12i.w $t1, -1
	ori $t1, $t1, 0
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op738 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op739 = load i32, i32* %op734
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op740 = add i32 %op738, %op739
	lu12i.w $t0, -2
	ori $t0, $t0, 4076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op740, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op741 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 44
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op741
	lu12i.w $t1, -2
	ori $t1, $t1, 4056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op742 = load i32, i32* %op741
	lu12i.w $t0, -2
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op743 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op744 = add i32 %op742, %op743
	lu12i.w $t0, -2
	ori $t0, $t0, 4048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op744, i32* %op741
	lu12i.w $t1, -2
	ori $t1, $t1, 4056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op745 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op746 = load i32, i32* %op741
	lu12i.w $t0, -2
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op747 = add i32 %op745, %op746
	lu12i.w $t0, -2
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op747, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op748 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 84
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op748
	lu12i.w $t1, -2
	ori $t1, $t1, 4016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op749 = load i32, i32* %op748
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op750 = add i32 %op749, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op750, i32* %op748
	lu12i.w $t1, -2
	ori $t1, $t1, 4016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op751 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op752 = load i32, i32* %op748
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op753 = add i32 %op751, %op752
	lu12i.w $t0, -2
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op753, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op754 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 116
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op754
	lu12i.w $t1, -2
	ori $t1, $t1, 3984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op755 = load i32, i32* %op754
	lu12i.w $t0, -2
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op756 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op757 = add i32 %op755, %op756
	lu12i.w $t0, -2
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op757, i32* %op754
	lu12i.w $t1, -2
	ori $t1, $t1, 3984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op758 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op759 = load i32, i32* %op754
	lu12i.w $t0, -2
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op760 = add i32 %op758, %op759
	lu12i.w $t0, -2
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op760, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op761 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 156
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op761
	lu12i.w $t1, -2
	ori $t1, $t1, 3944
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op762 = load i32, i32* %op761
	lu12i.w $t0, -2
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op763 = add i32 %op762, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 3936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op763, i32* %op761
	lu12i.w $t1, -2
	ori $t1, $t1, 3944
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op764 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op765 = load i32, i32* %op761
	lu12i.w $t0, -2
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op766 = add i32 %op764, %op765
	lu12i.w $t0, -2
	ori $t0, $t0, 3928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op766, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op767 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 188
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op767
	lu12i.w $t1, -2
	ori $t1, $t1, 3912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op768 = load i32, i32* %op767
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op769 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op770 = add i32 %op768, %op769
	lu12i.w $t0, -2
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op770, i32* %op767
	lu12i.w $t1, -2
	ori $t1, $t1, 3912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op771 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op772 = load i32, i32* %op767
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op773 = add i32 %op771, %op772
	lu12i.w $t0, -2
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op773, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op774 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 228
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op774
	lu12i.w $t1, -2
	ori $t1, $t1, 3872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op775 = load i32, i32* %op774
	lu12i.w $t0, -2
	ori $t0, $t0, 3872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op776 = add i32 %op775, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op776, i32* %op774
	lu12i.w $t1, -2
	ori $t1, $t1, 3872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op777 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op778 = load i32, i32* %op774
	lu12i.w $t0, -2
	ori $t0, $t0, 3872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op779 = add i32 %op777, %op778
	lu12i.w $t0, -2
	ori $t0, $t0, 3856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op779, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op780 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 260
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op780
	lu12i.w $t1, -2
	ori $t1, $t1, 3840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op781 = load i32, i32* %op780
	lu12i.w $t0, -2
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op782 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op783 = add i32 %op781, %op782
	lu12i.w $t0, -2
	ori $t0, $t0, 3832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op783, i32* %op780
	lu12i.w $t1, -2
	ori $t1, $t1, 3840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op784 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op785 = load i32, i32* %op780
	lu12i.w $t0, -2
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op786 = add i32 %op784, %op785
	lu12i.w $t0, -2
	ori $t0, $t0, 3820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op786, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op787 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 300
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op787
	lu12i.w $t1, -2
	ori $t1, $t1, 3800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op788 = load i32, i32* %op787
	lu12i.w $t0, -2
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op789 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op790 = add i32 %op788, %op789
	lu12i.w $t0, -2
	ori $t0, $t0, 3792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op790, i32* %op787
	lu12i.w $t1, -2
	ori $t1, $t1, 3800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op791 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op792 = load i32, i32* %op787
	lu12i.w $t0, -2
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op793 = add i32 %op791, %op792
	lu12i.w $t0, -2
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3776
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op793, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op794 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 340
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op794
	lu12i.w $t1, -2
	ori $t1, $t1, 3760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op795 = load i32, i32* %op794
	lu12i.w $t0, -2
	ori $t0, $t0, 3760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op796 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op797 = add i32 %op795, %op796
	lu12i.w $t0, -2
	ori $t0, $t0, 3752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op797, i32* %op794
	lu12i.w $t1, -2
	ori $t1, $t1, 3760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op798 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op799 = load i32, i32* %op794
	lu12i.w $t0, -2
	ori $t0, $t0, 3760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op800 = add i32 %op798, %op799
	lu12i.w $t0, -2
	ori $t0, $t0, 3740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op800, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op801 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 380
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op801
	lu12i.w $t1, -2
	ori $t1, $t1, 3720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op802 = load i32, i32* %op801
	lu12i.w $t0, -2
	ori $t0, $t0, 3720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op803 = add i32 %op802, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op803, i32* %op801
	lu12i.w $t1, -2
	ori $t1, $t1, 3720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op804 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op805 = load i32, i32* %op801
	lu12i.w $t0, -2
	ori $t0, $t0, 3720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op806 = add i32 %op804, %op805
	lu12i.w $t0, -2
	ori $t0, $t0, 3704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op806, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op807 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 412
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op807
	lu12i.w $t1, -2
	ori $t1, $t1, 3688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op808 = load i32, i32* %op807
	lu12i.w $t0, -2
	ori $t0, $t0, 3688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op809 = add i32 %op808, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 3680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op809, i32* %op807
	lu12i.w $t1, -2
	ori $t1, $t1, 3688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op810 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op811 = load i32, i32* %op807
	lu12i.w $t0, -2
	ori $t0, $t0, 3688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op812 = add i32 %op810, %op811
	lu12i.w $t0, -2
	ori $t0, $t0, 3672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op812, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op813 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 444
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op813
	lu12i.w $t1, -2
	ori $t1, $t1, 3656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op814 = load i32, i32* %op813
	lu12i.w $t0, -2
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op815 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op816 = add i32 %op814, %op815
	lu12i.w $t0, -2
	ori $t0, $t0, 3648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op816, i32* %op813
	lu12i.w $t1, -2
	ori $t1, $t1, 3656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op817 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op818 = load i32, i32* %op813
	lu12i.w $t0, -2
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op819 = add i32 %op817, %op818
	lu12i.w $t0, -2
	ori $t0, $t0, 3636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3632
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op819, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op820 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 484
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op820
	lu12i.w $t1, -2
	ori $t1, $t1, 3616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op821 = load i32, i32* %op820
	lu12i.w $t0, -2
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op822 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op823 = add i32 %op821, %op822
	lu12i.w $t0, -2
	ori $t0, $t0, 3608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op823, i32* %op820
	lu12i.w $t1, -2
	ori $t1, $t1, 3616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op824 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op825 = load i32, i32* %op820
	lu12i.w $t0, -2
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op826 = add i32 %op824, %op825
	lu12i.w $t0, -2
	ori $t0, $t0, 3596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op826, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op827 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 524
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op827
	lu12i.w $t1, -2
	ori $t1, $t1, 3576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op828 = load i32, i32* %op827
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op829 = add i32 %op828, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op829, i32* %op827
	lu12i.w $t1, -2
	ori $t1, $t1, 3576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op830 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op831 = load i32, i32* %op827
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op832 = add i32 %op830, %op831
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3556
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op832, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op833 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 556
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op833
	lu12i.w $t1, -2
	ori $t1, $t1, 3544
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op834 = load i32, i32* %op833
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op835 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op836 = add i32 %op834, %op835
	lu12i.w $t0, -2
	ori $t0, $t0, 3536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op836, i32* %op833
	lu12i.w $t1, -2
	ori $t1, $t1, 3544
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op837 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op838 = load i32, i32* %op833
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op839 = add i32 %op837, %op838
	lu12i.w $t0, -2
	ori $t0, $t0, 3524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op839, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op840 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 596
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op840
	lu12i.w $t1, -2
	ori $t1, $t1, 3504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op841 = load i32, i32* %op840
	lu12i.w $t0, -2
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op842 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op843 = add i32 %op841, %op842
	lu12i.w $t0, -2
	ori $t0, $t0, 3496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op843, i32* %op840
	lu12i.w $t1, -2
	ori $t1, $t1, 3504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op844 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op845 = load i32, i32* %op840
	lu12i.w $t0, -2
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op846 = add i32 %op844, %op845
	lu12i.w $t0, -2
	ori $t0, $t0, 3484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op846, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op847 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 636
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op847
	lu12i.w $t1, -2
	ori $t1, $t1, 3464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op848 = load i32, i32* %op847
	lu12i.w $t0, -2
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op849 = add i32 %op848, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op849, i32* %op847
	lu12i.w $t1, -2
	ori $t1, $t1, 3464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3452
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op850 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op851 = load i32, i32* %op847
	lu12i.w $t0, -2
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op852 = add i32 %op850, %op851
	lu12i.w $t0, -2
	ori $t0, $t0, 3448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op852, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op853 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 668
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op853
	lu12i.w $t1, -2
	ori $t1, $t1, 3432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op854 = load i32, i32* %op853
	lu12i.w $t0, -2
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op855 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op856 = add i32 %op854, %op855
	lu12i.w $t0, -2
	ori $t0, $t0, 3424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op856, i32* %op853
	lu12i.w $t1, -2
	ori $t1, $t1, 3432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op857 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op858 = load i32, i32* %op853
	lu12i.w $t0, -2
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op859 = add i32 %op857, %op858
	lu12i.w $t0, -2
	ori $t0, $t0, 3412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op859, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op860 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 708
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op860
	lu12i.w $t1, -2
	ori $t1, $t1, 3392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op861 = load i32, i32* %op860
	lu12i.w $t0, -2
	ori $t0, $t0, 3392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op862 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op863 = add i32 %op861, %op862
	lu12i.w $t0, -2
	ori $t0, $t0, 3384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op863, i32* %op860
	lu12i.w $t1, -2
	ori $t1, $t1, 3392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op864 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op865 = load i32, i32* %op860
	lu12i.w $t0, -2
	ori $t0, $t0, 3392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op866 = add i32 %op864, %op865
	lu12i.w $t0, -2
	ori $t0, $t0, 3372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op866, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op867 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 748
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op867
	lu12i.w $t1, -2
	ori $t1, $t1, 3352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op868 = load i32, i32* %op867
	lu12i.w $t0, -2
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op869 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op870 = add i32 %op868, %op869
	lu12i.w $t0, -2
	ori $t0, $t0, 3344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op870, i32* %op867
	lu12i.w $t1, -2
	ori $t1, $t1, 3352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op871 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op872 = load i32, i32* %op867
	lu12i.w $t0, -2
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op873 = add i32 %op871, %op872
	lu12i.w $t0, -2
	ori $t0, $t0, 3332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3328
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op873, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op874 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 788
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op874
	lu12i.w $t1, -2
	ori $t1, $t1, 3312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op875 = load i32, i32* %op874
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op876 = add i32 %op875, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op876, i32* %op874
	lu12i.w $t1, -2
	ori $t1, $t1, 3312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op877 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op878 = load i32, i32* %op874
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op879 = add i32 %op877, %op878
	lu12i.w $t0, -2
	ori $t0, $t0, 3296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op879, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op880 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 820
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op880
	lu12i.w $t1, -2
	ori $t1, $t1, 3280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op881 = load i32, i32* %op880
	lu12i.w $t0, -2
	ori $t0, $t0, 3280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op882 = add i32 %op881, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op882, i32* %op880
	lu12i.w $t1, -2
	ori $t1, $t1, 3280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op883 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op884 = load i32, i32* %op880
	lu12i.w $t0, -2
	ori $t0, $t0, 3280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op885 = add i32 %op883, %op884
	lu12i.w $t0, -2
	ori $t0, $t0, 3264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op885, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op886 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 852
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op886
	lu12i.w $t1, -2
	ori $t1, $t1, 3248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op887 = load i32, i32* %op886
	lu12i.w $t0, -2
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op888 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op889 = add i32 %op887, %op888
	lu12i.w $t0, -2
	ori $t0, $t0, 3240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op889, i32* %op886
	lu12i.w $t1, -2
	ori $t1, $t1, 3248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op890 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op891 = load i32, i32* %op886
	lu12i.w $t0, -2
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op892 = add i32 %op890, %op891
	lu12i.w $t0, -2
	ori $t0, $t0, 3228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3224
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op892, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op893 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 892
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op893
	lu12i.w $t1, -2
	ori $t1, $t1, 3208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op894 = load i32, i32* %op893
	lu12i.w $t0, -2
	ori $t0, $t0, 3208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op895 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op896 = add i32 %op894, %op895
	lu12i.w $t0, -2
	ori $t0, $t0, 3200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op896, i32* %op893
	lu12i.w $t1, -2
	ori $t1, $t1, 3208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op897 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op898 = load i32, i32* %op893
	lu12i.w $t0, -2
	ori $t0, $t0, 3208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op899 = add i32 %op897, %op898
	lu12i.w $t0, -2
	ori $t0, $t0, 3188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3184
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op899, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op900 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 932
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op900
	lu12i.w $t1, -2
	ori $t1, $t1, 3168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op901 = load i32, i32* %op900
	lu12i.w $t0, -2
	ori $t0, $t0, 3168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op902 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op903 = add i32 %op901, %op902
	lu12i.w $t0, -2
	ori $t0, $t0, 3160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op903, i32* %op900
	lu12i.w $t1, -2
	ori $t1, $t1, 3168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op904 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op905 = load i32, i32* %op900
	lu12i.w $t0, -2
	ori $t0, $t0, 3168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op906 = add i32 %op904, %op905
	lu12i.w $t0, -2
	ori $t0, $t0, 3148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op906, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op907 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 972
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op907
	lu12i.w $t1, -2
	ori $t1, $t1, 3128
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op908 = load i32, i32* %op907
	lu12i.w $t0, -2
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op909 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op910 = add i32 %op908, %op909
	lu12i.w $t0, -2
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op910, i32* %op907
	lu12i.w $t1, -2
	ori $t1, $t1, 3128
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op911 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op912 = load i32, i32* %op907
	lu12i.w $t0, -2
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op913 = add i32 %op911, %op912
	lu12i.w $t0, -2
	ori $t0, $t0, 3108
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op913, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op914 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1012
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op914
	lu12i.w $t1, -2
	ori $t1, $t1, 3088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op915 = load i32, i32* %op914
	lu12i.w $t0, -2
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op916 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op917 = add i32 %op915, %op916
	lu12i.w $t0, -2
	ori $t0, $t0, 3080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op917, i32* %op914
	lu12i.w $t1, -2
	ori $t1, $t1, 3088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op918 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op919 = load i32, i32* %op914
	lu12i.w $t0, -2
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op920 = add i32 %op918, %op919
	lu12i.w $t0, -2
	ori $t0, $t0, 3068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3064
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op920, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op921 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1052
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op921
	lu12i.w $t1, -2
	ori $t1, $t1, 3048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op922 = load i32, i32* %op921
	lu12i.w $t0, -2
	ori $t0, $t0, 3048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op923 = add i32 %op922, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op923, i32* %op921
	lu12i.w $t1, -2
	ori $t1, $t1, 3048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op924 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op925 = load i32, i32* %op921
	lu12i.w $t0, -2
	ori $t0, $t0, 3048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op926 = add i32 %op924, %op925
	lu12i.w $t0, -2
	ori $t0, $t0, 3032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op926, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 3024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op927 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1084
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op927
	lu12i.w $t1, -2
	ori $t1, $t1, 3016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op928 = load i32, i32* %op927
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op929 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op930 = add i32 %op928, %op929
	lu12i.w $t0, -2
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op930, i32* %op927
	lu12i.w $t1, -2
	ori $t1, $t1, 3016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op931 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op932 = load i32, i32* %op927
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op933 = add i32 %op931, %op932
	lu12i.w $t0, -2
	ori $t0, $t0, 2996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op933, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op934 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1124
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op934
	lu12i.w $t1, -2
	ori $t1, $t1, 2976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op935 = load i32, i32* %op934
	lu12i.w $t0, -2
	ori $t0, $t0, 2976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op936 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op937 = add i32 %op935, %op936
	lu12i.w $t0, -2
	ori $t0, $t0, 2968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op937, i32* %op934
	lu12i.w $t1, -2
	ori $t1, $t1, 2976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op938 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op939 = load i32, i32* %op934
	lu12i.w $t0, -2
	ori $t0, $t0, 2976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op940 = add i32 %op938, %op939
	lu12i.w $t0, -2
	ori $t0, $t0, 2956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op940, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op941 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1164
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op941
	lu12i.w $t1, -2
	ori $t1, $t1, 2936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op942 = load i32, i32* %op941
	lu12i.w $t0, -2
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op943 = add i32 %op942, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op943, i32* %op941
	lu12i.w $t1, -2
	ori $t1, $t1, 2936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op944 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op945 = load i32, i32* %op941
	lu12i.w $t0, -2
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op946 = add i32 %op944, %op945
	lu12i.w $t0, -2
	ori $t0, $t0, 2920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op946, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op947 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1196
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op947
	lu12i.w $t1, -2
	ori $t1, $t1, 2904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op948 = load i32, i32* %op947
	lu12i.w $t0, -2
	ori $t0, $t0, 2904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op949 = add i32 %op948, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op949, i32* %op947
	lu12i.w $t1, -2
	ori $t1, $t1, 2904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op950 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op951 = load i32, i32* %op947
	lu12i.w $t0, -2
	ori $t0, $t0, 2904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op952 = add i32 %op950, %op951
	lu12i.w $t0, -2
	ori $t0, $t0, 2888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op952, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op953 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1228
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op953
	lu12i.w $t1, -2
	ori $t1, $t1, 2872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op954 = load i32, i32* %op953
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op955 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op956 = add i32 %op954, %op955
	lu12i.w $t0, -2
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op956, i32* %op953
	lu12i.w $t1, -2
	ori $t1, $t1, 2872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op957 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op958 = load i32, i32* %op953
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op959 = add i32 %op957, %op958
	lu12i.w $t0, -2
	ori $t0, $t0, 2852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op959, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op960 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1268
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op960
	lu12i.w $t1, -2
	ori $t1, $t1, 2832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op961 = load i32, i32* %op960
	lu12i.w $t0, -2
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op962 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op963 = add i32 %op961, %op962
	lu12i.w $t0, -2
	ori $t0, $t0, 2824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op963, i32* %op960
	lu12i.w $t1, -2
	ori $t1, $t1, 2832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op964 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op965 = load i32, i32* %op960
	lu12i.w $t0, -2
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op966 = add i32 %op964, %op965
	lu12i.w $t0, -2
	ori $t0, $t0, 2812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2808
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op966, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op967 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1308
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op967
	lu12i.w $t1, -2
	ori $t1, $t1, 2792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op968 = load i32, i32* %op967
	lu12i.w $t0, -2
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op969 = add i32 %op968, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op969, i32* %op967
	lu12i.w $t1, -2
	ori $t1, $t1, 2792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op970 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op971 = load i32, i32* %op967
	lu12i.w $t0, -2
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op972 = add i32 %op970, %op971
	lu12i.w $t0, -2
	ori $t0, $t0, 2776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op972, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op973 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1340
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op973
	lu12i.w $t1, -2
	ori $t1, $t1, 2760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op974 = load i32, i32* %op973
	lu12i.w $t0, -2
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op975 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op976 = add i32 %op974, %op975
	lu12i.w $t0, -2
	ori $t0, $t0, 2752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op976, i32* %op973
	lu12i.w $t1, -2
	ori $t1, $t1, 2760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op977 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op978 = load i32, i32* %op973
	lu12i.w $t0, -2
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op979 = add i32 %op977, %op978
	lu12i.w $t0, -2
	ori $t0, $t0, 2740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op979, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op980 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1380
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op980
	lu12i.w $t1, -2
	ori $t1, $t1, 2720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op981 = load i32, i32* %op980
	lu12i.w $t0, -2
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op982 = add i32 %op981, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op982, i32* %op980
	lu12i.w $t1, -2
	ori $t1, $t1, 2720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op983 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op984 = load i32, i32* %op980
	lu12i.w $t0, -2
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op985 = add i32 %op983, %op984
	lu12i.w $t0, -2
	ori $t0, $t0, 2704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op985, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op986 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1412
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op986
	lu12i.w $t1, -2
	ori $t1, $t1, 2688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op987 = load i32, i32* %op986
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op988 = add i32 %op987, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op988, i32* %op986
	lu12i.w $t1, -2
	ori $t1, $t1, 2688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op989 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op990 = load i32, i32* %op986
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op991 = add i32 %op989, %op990
	lu12i.w $t0, -2
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op991, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op992 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1444
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op992
	lu12i.w $t1, -2
	ori $t1, $t1, 2656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op993 = load i32, i32* %op992
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op994 = add i32 %op993, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 2648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op994, i32* %op992
	lu12i.w $t1, -2
	ori $t1, $t1, 2656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op995 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op996 = load i32, i32* %op992
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op997 = add i32 %op995, %op996
	lu12i.w $t0, -2
	ori $t0, $t0, 2640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op997, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op998 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1476
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op998
	lu12i.w $t1, -2
	ori $t1, $t1, 2624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op999 = load i32, i32* %op998
	lu12i.w $t0, -2
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1000 = add i32 %op999, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 2616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1000, i32* %op998
	lu12i.w $t1, -2
	ori $t1, $t1, 2624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1001 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1002 = load i32, i32* %op998
	lu12i.w $t0, -2
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1003 = add i32 %op1001, %op1002
	lu12i.w $t0, -2
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1003, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1004 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1508
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op1004
	lu12i.w $t1, -2
	ori $t1, $t1, 2592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op1005 = load i32, i32* %op1004
	lu12i.w $t0, -2
	ori $t0, $t0, 2592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1006 = add i32 %op1005, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 2584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1006, i32* %op1004
	lu12i.w $t1, -2
	ori $t1, $t1, 2592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1007 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1008 = load i32, i32* %op1004
	lu12i.w $t0, -2
	ori $t0, $t0, 2592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1009 = add i32 %op1007, %op1008
	lu12i.w $t0, -2
	ori $t0, $t0, 2576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1009, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1010 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1540
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1010
	lu12i.w $t1, -2
	ori $t1, $t1, 2560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1011 = load i32, i32* %op1010
	lu12i.w $t0, -2
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1012 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1013 = add i32 %op1011, %op1012
	lu12i.w $t0, -2
	ori $t0, $t0, 2552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1013, i32* %op1010
	lu12i.w $t1, -2
	ori $t1, $t1, 2560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1014 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1015 = load i32, i32* %op1010
	lu12i.w $t0, -2
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1016 = add i32 %op1014, %op1015
	lu12i.w $t0, -2
	ori $t0, $t0, 2540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1016, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1017 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1580
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1017
	lu12i.w $t1, -2
	ori $t1, $t1, 2520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1018 = load i32, i32* %op1017
	lu12i.w $t0, -2
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1019 = add i32 %op1018, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 2512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1019, i32* %op1017
	lu12i.w $t1, -2
	ori $t1, $t1, 2520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1020 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1021 = load i32, i32* %op1017
	lu12i.w $t0, -2
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1022 = add i32 %op1020, %op1021
	lu12i.w $t0, -2
	ori $t0, $t0, 2504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2500
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1022, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1023 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1612
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1023
	lu12i.w $t1, -2
	ori $t1, $t1, 2488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1024 = load i32, i32* %op1023
	lu12i.w $t0, -2
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1025 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1026 = add i32 %op1024, %op1025
	lu12i.w $t0, -2
	ori $t0, $t0, 2480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1026, i32* %op1023
	lu12i.w $t1, -2
	ori $t1, $t1, 2488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1027 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1028 = load i32, i32* %op1023
	lu12i.w $t0, -2
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1029 = add i32 %op1027, %op1028
	lu12i.w $t0, -2
	ori $t0, $t0, 2468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1029, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1030 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1652
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1030
	lu12i.w $t1, -2
	ori $t1, $t1, 2448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1031 = load i32, i32* %op1030
	lu12i.w $t0, -2
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1032 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1033 = add i32 %op1031, %op1032
	lu12i.w $t0, -2
	ori $t0, $t0, 2440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1033, i32* %op1030
	lu12i.w $t1, -2
	ori $t1, $t1, 2448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1034 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1035 = load i32, i32* %op1030
	lu12i.w $t0, -2
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1036 = add i32 %op1034, %op1035
	lu12i.w $t0, -2
	ori $t0, $t0, 2428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1036, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1037 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1692
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op1037
	lu12i.w $t1, -2
	ori $t1, $t1, 2408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op1038 = load i32, i32* %op1037
	lu12i.w $t0, -2
	ori $t0, $t0, 2408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1039 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1040 = add i32 %op1038, %op1039
	lu12i.w $t0, -2
	ori $t0, $t0, 2400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1040, i32* %op1037
	lu12i.w $t1, -2
	ori $t1, $t1, 2408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1041 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1042 = load i32, i32* %op1037
	lu12i.w $t0, -2
	ori $t0, $t0, 2408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1043 = add i32 %op1041, %op1042
	lu12i.w $t0, -2
	ori $t0, $t0, 2388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1043, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1044 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1732
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1044
	lu12i.w $t1, -2
	ori $t1, $t1, 2368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1045 = load i32, i32* %op1044
	lu12i.w $t0, -2
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1046 = add i32 %op1045, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 2360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1046, i32* %op1044
	lu12i.w $t1, -2
	ori $t1, $t1, 2368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1047 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1048 = load i32, i32* %op1044
	lu12i.w $t0, -2
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1049 = add i32 %op1047, %op1048
	lu12i.w $t0, -2
	ori $t0, $t0, 2352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1049, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1050 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1764
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1050
	lu12i.w $t1, -2
	ori $t1, $t1, 2336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1051 = load i32, i32* %op1050
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1052 = add i32 %op1051, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 2328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1052, i32* %op1050
	lu12i.w $t1, -2
	ori $t1, $t1, 2336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1053 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1054 = load i32, i32* %op1050
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1055 = add i32 %op1053, %op1054
	lu12i.w $t0, -2
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1055, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1056 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1796
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1056
	lu12i.w $t1, -2
	ori $t1, $t1, 2304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1057 = load i32, i32* %op1056
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1058 = add i32 %op1057, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1058, i32* %op1056
	lu12i.w $t1, -2
	ori $t1, $t1, 2304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1059 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1060 = load i32, i32* %op1056
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1061 = add i32 %op1059, %op1060
	lu12i.w $t0, -2
	ori $t0, $t0, 2288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1061, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1062 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1828
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1062
	lu12i.w $t1, -2
	ori $t1, $t1, 2272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1063 = load i32, i32* %op1062
	lu12i.w $t0, -2
	ori $t0, $t0, 2272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1064 = add i32 %op1063, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1064, i32* %op1062
	lu12i.w $t1, -2
	ori $t1, $t1, 2272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1065 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1066 = load i32, i32* %op1062
	lu12i.w $t0, -2
	ori $t0, $t0, 2272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1067 = add i32 %op1065, %op1066
	lu12i.w $t0, -2
	ori $t0, $t0, 2256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1067, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1068 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1860
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1068
	lu12i.w $t1, -2
	ori $t1, $t1, 2240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1069 = load i32, i32* %op1068
	lu12i.w $t0, -2
	ori $t0, $t0, 2240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1070 = add i32 %op1069, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1070, i32* %op1068
	lu12i.w $t1, -2
	ori $t1, $t1, 2240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1071 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1072 = load i32, i32* %op1068
	lu12i.w $t0, -2
	ori $t0, $t0, 2240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1073 = add i32 %op1071, %op1072
	lu12i.w $t0, -2
	ori $t0, $t0, 2224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1073, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1074 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1892
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1074
	lu12i.w $t1, -2
	ori $t1, $t1, 2208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1075 = load i32, i32* %op1074
	lu12i.w $t0, -2
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1076 = add i32 %op1075, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1076, i32* %op1074
	lu12i.w $t1, -2
	ori $t1, $t1, 2208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1077 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1078 = load i32, i32* %op1074
	lu12i.w $t0, -2
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1079 = add i32 %op1077, %op1078
	lu12i.w $t0, -2
	ori $t0, $t0, 2192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1079, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1080 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1924
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1080
	lu12i.w $t1, -2
	ori $t1, $t1, 2176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1081 = load i32, i32* %op1080
	lu12i.w $t0, -2
	ori $t0, $t0, 2176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1082 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1083 = add i32 %op1081, %op1082
	lu12i.w $t0, -2
	ori $t0, $t0, 2168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1083, i32* %op1080
	lu12i.w $t1, -2
	ori $t1, $t1, 2176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1084 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1085 = load i32, i32* %op1080
	lu12i.w $t0, -2
	ori $t0, $t0, 2176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1086 = add i32 %op1084, %op1085
	lu12i.w $t0, -2
	ori $t0, $t0, 2156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2152
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1086, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1087 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1964
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1087
	lu12i.w $t1, -2
	ori $t1, $t1, 2136
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1088 = load i32, i32* %op1087
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1089 = add i32 %op1088, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 2128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1089, i32* %op1087
	lu12i.w $t1, -2
	ori $t1, $t1, 2136
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1090 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1091 = load i32, i32* %op1087
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1092 = add i32 %op1090, %op1091
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1092, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1093 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 1996
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1093
	lu12i.w $t1, -2
	ori $t1, $t1, 2104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1094 = load i32, i32* %op1093
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1095 = add i32 %op1094, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 2096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1095, i32* %op1093
	lu12i.w $t1, -2
	ori $t1, $t1, 2104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1096 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1097 = load i32, i32* %op1093
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1098 = add i32 %op1096, %op1097
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1098, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1099 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2028
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1099
	lu12i.w $t1, -2
	ori $t1, $t1, 2072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1100 = load i32, i32* %op1099
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1101 = add i32 %op1100, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1101, i32* %op1099
	lu12i.w $t1, -2
	ori $t1, $t1, 2072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1102 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1103 = load i32, i32* %op1099
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1104 = add i32 %op1102, %op1103
	lu12i.w $t0, -2
	ori $t0, $t0, 2056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2052
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1104, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1105 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2060
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1105
	lu12i.w $t1, -2
	ori $t1, $t1, 2040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1106 = load i32, i32* %op1105
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1107 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1108 = add i32 %op1106, %op1107
	lu12i.w $t0, -2
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1108, i32* %op1105
	lu12i.w $t1, -2
	ori $t1, $t1, 2040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1109 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1110 = load i32, i32* %op1105
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1111 = add i32 %op1109, %op1110
	lu12i.w $t0, -2
	ori $t0, $t0, 2020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1111, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 2012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1112 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2100
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1112
	lu12i.w $t1, -2
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1113 = load i32, i32* %op1112
	lu12i.w $t0, -2
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1114 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1115 = add i32 %op1113, %op1114
	lu12i.w $t0, -2
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1115, i32* %op1112
	lu12i.w $t1, -2
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1116 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1117 = load i32, i32* %op1112
	lu12i.w $t0, -2
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1118 = add i32 %op1116, %op1117
	lu12i.w $t0, -2
	ori $t0, $t0, 1980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1118, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1119 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2140
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1119
	lu12i.w $t1, -2
	ori $t1, $t1, 1960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1120 = load i32, i32* %op1119
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1121 = add i32 %op1120, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1121, i32* %op1119
	lu12i.w $t1, -2
	ori $t1, $t1, 1960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1122 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1123 = load i32, i32* %op1119
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1124 = add i32 %op1122, %op1123
	lu12i.w $t0, -2
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1124, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1125 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2172
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1125
	lu12i.w $t1, -2
	ori $t1, $t1, 1928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1126 = load i32, i32* %op1125
	lu12i.w $t0, -2
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1127 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1128 = add i32 %op1126, %op1127
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1128, i32* %op1125
	lu12i.w $t1, -2
	ori $t1, $t1, 1928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1129 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1130 = load i32, i32* %op1125
	lu12i.w $t0, -2
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1131 = add i32 %op1129, %op1130
	lu12i.w $t0, -2
	ori $t0, $t0, 1908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1131, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1132 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2212
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1132
	lu12i.w $t1, -2
	ori $t1, $t1, 1888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1133 = load i32, i32* %op1132
	lu12i.w $t0, -2
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1134 = add i32 %op1133, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1134, i32* %op1132
	lu12i.w $t1, -2
	ori $t1, $t1, 1888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1135 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1136 = load i32, i32* %op1132
	lu12i.w $t0, -2
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1137 = add i32 %op1135, %op1136
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1137, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1138 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2244
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1138
	lu12i.w $t1, -2
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1139 = load i32, i32* %op1138
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1140 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1141 = add i32 %op1139, %op1140
	lu12i.w $t0, -2
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1141, i32* %op1138
	lu12i.w $t1, -2
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1142 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1143 = load i32, i32* %op1138
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1144 = add i32 %op1142, %op1143
	lu12i.w $t0, -2
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1144, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1145 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2284
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1145
	lu12i.w $t1, -2
	ori $t1, $t1, 1816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1146 = load i32, i32* %op1145
	lu12i.w $t0, -2
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1147 = add i32 %op1146, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1147, i32* %op1145
	lu12i.w $t1, -2
	ori $t1, $t1, 1816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1148 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1149 = load i32, i32* %op1145
	lu12i.w $t0, -2
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1150 = add i32 %op1148, %op1149
	lu12i.w $t0, -2
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1150, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1151 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2316
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1151
	lu12i.w $t1, -2
	ori $t1, $t1, 1784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1152 = load i32, i32* %op1151
	lu12i.w $t0, -2
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1153 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1154 = add i32 %op1152, %op1153
	lu12i.w $t0, -2
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1154, i32* %op1151
	lu12i.w $t1, -2
	ori $t1, $t1, 1784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1155 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1156 = load i32, i32* %op1151
	lu12i.w $t0, -2
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1157 = add i32 %op1155, %op1156
	lu12i.w $t0, -2
	ori $t0, $t0, 1764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1157, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1158 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2356
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1158
	lu12i.w $t1, -2
	ori $t1, $t1, 1744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1159 = load i32, i32* %op1158
	lu12i.w $t0, -2
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1160 = add i32 %op1159, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1160, i32* %op1158
	lu12i.w $t1, -2
	ori $t1, $t1, 1744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1161 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1162 = load i32, i32* %op1158
	lu12i.w $t0, -2
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1163 = add i32 %op1161, %op1162
	lu12i.w $t0, -2
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1163, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1164 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2388
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1164
	lu12i.w $t1, -2
	ori $t1, $t1, 1712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1165 = load i32, i32* %op1164
	lu12i.w $t0, -2
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1166 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1167 = add i32 %op1165, %op1166
	lu12i.w $t0, -2
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1167, i32* %op1164
	lu12i.w $t1, -2
	ori $t1, $t1, 1712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1168 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1169 = load i32, i32* %op1164
	lu12i.w $t0, -2
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1170 = add i32 %op1168, %op1169
	lu12i.w $t0, -2
	ori $t0, $t0, 1692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1170, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1171 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2428
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1171
	lu12i.w $t1, -2
	ori $t1, $t1, 1672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1172 = load i32, i32* %op1171
	lu12i.w $t0, -2
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1173 = add i32 %op1172, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1173, i32* %op1171
	lu12i.w $t1, -2
	ori $t1, $t1, 1672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1174 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1175 = load i32, i32* %op1171
	lu12i.w $t0, -2
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1176 = add i32 %op1174, %op1175
	lu12i.w $t0, -2
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1176, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1177 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2460
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1177
	lu12i.w $t1, -2
	ori $t1, $t1, 1640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1178 = load i32, i32* %op1177
	lu12i.w $t0, -2
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1179 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1180 = add i32 %op1178, %op1179
	lu12i.w $t0, -2
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1180, i32* %op1177
	lu12i.w $t1, -2
	ori $t1, $t1, 1640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1181 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1182 = load i32, i32* %op1177
	lu12i.w $t0, -2
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1183 = add i32 %op1181, %op1182
	lu12i.w $t0, -2
	ori $t0, $t0, 1620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1183, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1184 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2500
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op1184
	lu12i.w $t1, -2
	ori $t1, $t1, 1600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op1185 = load i32, i32* %op1184
	lu12i.w $t0, -2
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1186 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1187 = add i32 %op1185, %op1186
	lu12i.w $t0, -2
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1187, i32* %op1184
	lu12i.w $t1, -2
	ori $t1, $t1, 1600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1188 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1189 = load i32, i32* %op1184
	lu12i.w $t0, -2
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1190 = add i32 %op1188, %op1189
	lu12i.w $t0, -2
	ori $t0, $t0, 1580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1190, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1191 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2540
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1191
	lu12i.w $t1, -2
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1192 = load i32, i32* %op1191
	lu12i.w $t0, -2
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1193 = add i32 %op1192, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1193, i32* %op1191
	lu12i.w $t1, -2
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1194 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1195 = load i32, i32* %op1191
	lu12i.w $t0, -2
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1196 = add i32 %op1194, %op1195
	lu12i.w $t0, -2
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1196, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1197 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2572
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1197
	lu12i.w $t1, -2
	ori $t1, $t1, 1528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1198 = load i32, i32* %op1197
	lu12i.w $t0, -2
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1199 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1200 = add i32 %op1198, %op1199
	lu12i.w $t0, -2
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1200, i32* %op1197
	lu12i.w $t1, -2
	ori $t1, $t1, 1528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1201 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1202 = load i32, i32* %op1197
	lu12i.w $t0, -2
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1203 = add i32 %op1201, %op1202
	lu12i.w $t0, -2
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1203, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1204 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2612
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1204
	lu12i.w $t1, -2
	ori $t1, $t1, 1488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1205 = load i32, i32* %op1204
	lu12i.w $t0, -2
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1206 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1207 = add i32 %op1205, %op1206
	lu12i.w $t0, -2
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1207, i32* %op1204
	lu12i.w $t1, -2
	ori $t1, $t1, 1488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1208 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1209 = load i32, i32* %op1204
	lu12i.w $t0, -2
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1210 = add i32 %op1208, %op1209
	lu12i.w $t0, -2
	ori $t0, $t0, 1468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1210, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1211 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2652
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1211
	lu12i.w $t1, -2
	ori $t1, $t1, 1448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1212 = load i32, i32* %op1211
	lu12i.w $t0, -2
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1213 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1214 = add i32 %op1212, %op1213
	lu12i.w $t0, -2
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1214, i32* %op1211
	lu12i.w $t1, -2
	ori $t1, $t1, 1448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1215 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1216 = load i32, i32* %op1211
	lu12i.w $t0, -2
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1217 = add i32 %op1215, %op1216
	lu12i.w $t0, -2
	ori $t0, $t0, 1428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1217, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1218 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2692
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1218
	lu12i.w $t1, -2
	ori $t1, $t1, 1408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1219 = load i32, i32* %op1218
	lu12i.w $t0, -2
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1220 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1221 = add i32 %op1219, %op1220
	lu12i.w $t0, -2
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1221, i32* %op1218
	lu12i.w $t1, -2
	ori $t1, $t1, 1408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1222 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1223 = load i32, i32* %op1218
	lu12i.w $t0, -2
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1224 = add i32 %op1222, %op1223
	lu12i.w $t0, -2
	ori $t0, $t0, 1388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1224, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1225 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2732
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op1225
	lu12i.w $t1, -2
	ori $t1, $t1, 1368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op1226 = load i32, i32* %op1225
	lu12i.w $t0, -2
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1227 = add i32 %op1226, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 1360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1227, i32* %op1225
	lu12i.w $t1, -2
	ori $t1, $t1, 1368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1228 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1229 = load i32, i32* %op1225
	lu12i.w $t0, -2
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1230 = add i32 %op1228, %op1229
	lu12i.w $t0, -2
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1230, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1231 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2764
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 0, i32* %op1231
	lu12i.w $t1, -2
	ori $t1, $t1, 1336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 0
	st.w $t0, $t1, 0
# %op1232 = load i32, i32* %op1231
	lu12i.w $t0, -2
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1233 = add i32 %op1232, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 1328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1233, i32* %op1231
	lu12i.w $t1, -2
	ori $t1, $t1, 1336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1234 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1235 = load i32, i32* %op1231
	lu12i.w $t0, -2
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1236 = add i32 %op1234, %op1235
	lu12i.w $t0, -2
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1236, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1237 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2796
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1237
	lu12i.w $t1, -2
	ori $t1, $t1, 1304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1238 = load i32, i32* %op1237
	lu12i.w $t0, -2
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1239 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1240 = add i32 %op1238, %op1239
	lu12i.w $t0, -2
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1240, i32* %op1237
	lu12i.w $t1, -2
	ori $t1, $t1, 1304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1241 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1242 = load i32, i32* %op1237
	lu12i.w $t0, -2
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1243 = add i32 %op1241, %op1242
	lu12i.w $t0, -2
	ori $t0, $t0, 1284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1243, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1244 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2836
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1244
	lu12i.w $t1, -2
	ori $t1, $t1, 1264
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1245 = load i32, i32* %op1244
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1246 = add i32 %op1245, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1246, i32* %op1244
	lu12i.w $t1, -2
	ori $t1, $t1, 1264
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1247 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1248 = load i32, i32* %op1244
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1249 = add i32 %op1247, %op1248
	lu12i.w $t0, -2
	ori $t0, $t0, 1248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1249, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1250 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2868
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1250
	lu12i.w $t1, -2
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1251 = load i32, i32* %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1252 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1253 = add i32 %op1251, %op1252
	lu12i.w $t0, -2
	ori $t0, $t0, 1224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1253, i32* %op1250
	lu12i.w $t1, -2
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1254 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1255 = load i32, i32* %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1256 = add i32 %op1254, %op1255
	lu12i.w $t0, -2
	ori $t0, $t0, 1212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1256, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1257 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2908
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 4, i32* %op1257
	lu12i.w $t1, -2
	ori $t1, $t1, 1192
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 4
	st.w $t0, $t1, 0
# %op1258 = load i32, i32* %op1257
	lu12i.w $t0, -2
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1259 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1260 = add i32 %op1258, %op1259
	lu12i.w $t0, -2
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1260, i32* %op1257
	lu12i.w $t1, -2
	ori $t1, $t1, 1192
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1261 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1262 = load i32, i32* %op1257
	lu12i.w $t0, -2
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1263 = add i32 %op1261, %op1262
	lu12i.w $t0, -2
	ori $t0, $t0, 1172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1263, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1264 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2948
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1264
	lu12i.w $t1, -2
	ori $t1, $t1, 1152
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1265 = load i32, i32* %op1264
	lu12i.w $t0, -2
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1266 = add i32 %op1265, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1266, i32* %op1264
	lu12i.w $t1, -2
	ori $t1, $t1, 1152
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1267 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1268 = load i32, i32* %op1264
	lu12i.w $t0, -2
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1269 = add i32 %op1267, %op1268
	lu12i.w $t0, -2
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1269, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1270 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 2980
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1270
	lu12i.w $t1, -2
	ori $t1, $t1, 1120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1271 = load i32, i32* %op1270
	lu12i.w $t0, -2
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1272 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1273 = add i32 %op1271, %op1272
	lu12i.w $t0, -2
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1273, i32* %op1270
	lu12i.w $t1, -2
	ori $t1, $t1, 1120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1274 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1275 = load i32, i32* %op1270
	lu12i.w $t0, -2
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1276 = add i32 %op1274, %op1275
	lu12i.w $t0, -2
	ori $t0, $t0, 1100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1096
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1276, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1277 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 3020
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 3, i32* %op1277
	lu12i.w $t1, -2
	ori $t1, $t1, 1080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 3
	st.w $t0, $t1, 0
# %op1278 = load i32, i32* %op1277
	lu12i.w $t0, -2
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1279 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1280 = add i32 %op1278, %op1279
	lu12i.w $t0, -2
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1068
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1280, i32* %op1277
	lu12i.w $t1, -2
	ori $t1, $t1, 1080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1281 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1282 = load i32, i32* %op1277
	lu12i.w $t0, -2
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1283 = add i32 %op1281, %op1282
	lu12i.w $t0, -2
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1283, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1284 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 3060
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1284
	lu12i.w $t1, -2
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1285 = load i32, i32* %op1284
	lu12i.w $t0, -2
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1286 = add i32 %op1285, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1286, i32* %op1284
	lu12i.w $t1, -2
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1287 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1288 = load i32, i32* %op1284
	lu12i.w $t0, -2
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1289 = add i32 %op1287, %op1288
	lu12i.w $t0, -2
	ori $t0, $t0, 1024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1289, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1290 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 3092
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 1, i32* %op1290
	lu12i.w $t1, -2
	ori $t1, $t1, 1008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 1
	st.w $t0, $t1, 0
# %op1291 = load i32, i32* %op1290
	lu12i.w $t0, -2
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1292 = add i32 %op1291, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1292, i32* %op1290
	lu12i.w $t1, -2
	ori $t1, $t1, 1008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1293 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1294 = load i32, i32* %op1290
	lu12i.w $t0, -2
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1295 = add i32 %op1293, %op1294
	lu12i.w $t0, -2
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1295, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1296 = alloca i32
	lu12i.w $t0, 1
	ori $t0, $t0, 3124
	sub.d $t0,$fp,$t0
	lu12i.w $t8, -2
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# store i32 2, i32* %op1296
	lu12i.w $t1, -2
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	addi.w $t0, $zero, 2
	st.w $t0, $t1, 0
# %op1297 = load i32, i32* %op1296
	lu12i.w $t0, -2
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1298 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1299 = add i32 %op1297, %op1298
	lu12i.w $t0, -2
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1299, i32* %op1296
	lu12i.w $t1, -2
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1300 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1301 = load i32, i32* %op1296
	lu12i.w $t0, -2
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1302 = add i32 %op1300, %op1301
	lu12i.w $t0, -2
	ori $t0, $t0, 956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1302, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1303 = load i32, i32* %op1296
	lu12i.w $t0, -2
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1304 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1305 = add i32 %op1303, %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1305, i32* %op1296
	lu12i.w $t1, -2
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1306 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1307 = load i32, i32* %op1296
	lu12i.w $t0, -2
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1308 = add i32 %op1306, %op1307
	lu12i.w $t0, -2
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1308, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1309 = load i32, i32* %op1290
	lu12i.w $t0, -2
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1310 = add i32 %op1309, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1310, i32* %op1290
	lu12i.w $t1, -2
	ori $t1, $t1, 1008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1311 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1312 = load i32, i32* %op1290
	lu12i.w $t0, -2
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1313 = add i32 %op1311, %op1312
	lu12i.w $t0, -2
	ori $t0, $t0, 912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1313, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1314 = load i32, i32* %op1284
	lu12i.w $t0, -2
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1315 = add i32 %op1314, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1315, i32* %op1284
	lu12i.w $t1, -2
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1316 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1317 = load i32, i32* %op1284
	lu12i.w $t0, -2
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1318 = add i32 %op1316, %op1317
	lu12i.w $t0, -2
	ori $t0, $t0, 892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1318, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1319 = load i32, i32* %op1277
	lu12i.w $t0, -2
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1320 = add i32 %op1319, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1320, i32* %op1277
	lu12i.w $t1, -2
	ori $t1, $t1, 1080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1321 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1322 = load i32, i32* %op1277
	lu12i.w $t0, -2
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1323 = add i32 %op1321, %op1322
	lu12i.w $t0, -2
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1323, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1324 = load i32, i32* %op1270
	lu12i.w $t0, -2
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1325 = add i32 %op1324, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1325, i32* %op1270
	lu12i.w $t1, -2
	ori $t1, $t1, 1120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1326 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1327 = load i32, i32* %op1270
	lu12i.w $t0, -2
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1328 = add i32 %op1326, %op1327
	lu12i.w $t0, -2
	ori $t0, $t0, 852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1328, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1329 = load i32, i32* %op1264
	lu12i.w $t0, -2
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1330 = add i32 %op1329, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1330, i32* %op1264
	lu12i.w $t1, -2
	ori $t1, $t1, 1152
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1331 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1332 = load i32, i32* %op1264
	lu12i.w $t0, -2
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1333 = add i32 %op1331, %op1332
	lu12i.w $t0, -2
	ori $t0, $t0, 832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1333, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1334 = load i32, i32* %op1257
	lu12i.w $t0, -2
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1335 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1336 = add i32 %op1334, %op1335
	lu12i.w $t0, -2
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1336, i32* %op1257
	lu12i.w $t1, -2
	ori $t1, $t1, 1192
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1337 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1338 = load i32, i32* %op1257
	lu12i.w $t0, -2
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1339 = add i32 %op1337, %op1338
	lu12i.w $t0, -2
	ori $t0, $t0, 808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1339, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1340 = load i32, i32* %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1341 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1342 = add i32 %op1340, %op1341
	lu12i.w $t0, -2
	ori $t0, $t0, 796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1342, i32* %op1250
	lu12i.w $t1, -2
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1343 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1344 = load i32, i32* %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1345 = add i32 %op1343, %op1344
	lu12i.w $t0, -2
	ori $t0, $t0, 784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1345, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1346 = load i32, i32* %op1244
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1347 = add i32 %op1346, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1347, i32* %op1244
	lu12i.w $t1, -2
	ori $t1, $t1, 1264
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1348 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1349 = load i32, i32* %op1244
	lu12i.w $t0, -2
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1350 = add i32 %op1348, %op1349
	lu12i.w $t0, -2
	ori $t0, $t0, 764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1350, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1351 = load i32, i32* %op1237
	lu12i.w $t0, -2
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1352 = add i32 %op1351, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1352, i32* %op1237
	lu12i.w $t1, -2
	ori $t1, $t1, 1304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1353 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1354 = load i32, i32* %op1237
	lu12i.w $t0, -2
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1355 = add i32 %op1353, %op1354
	lu12i.w $t0, -2
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1355, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1356 = load i32, i32* %op1231
	lu12i.w $t0, -2
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1357 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1358 = add i32 %op1356, %op1357
	lu12i.w $t0, -2
	ori $t0, $t0, 732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1358, i32* %op1231
	lu12i.w $t1, -2
	ori $t1, $t1, 1336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1359 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1360 = load i32, i32* %op1231
	lu12i.w $t0, -2
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1361 = add i32 %op1359, %op1360
	lu12i.w $t0, -2
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1361, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1362 = load i32, i32* %op1225
	lu12i.w $t0, -2
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1363 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1364 = add i32 %op1362, %op1363
	lu12i.w $t0, -2
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 704
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1364, i32* %op1225
	lu12i.w $t1, -2
	ori $t1, $t1, 1368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1365 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1366 = load i32, i32* %op1225
	lu12i.w $t0, -2
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1367 = add i32 %op1365, %op1366
	lu12i.w $t0, -2
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1367, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1368 = load i32, i32* %op1218
	lu12i.w $t0, -2
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1369 = add i32 %op1368, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1369, i32* %op1218
	lu12i.w $t1, -2
	ori $t1, $t1, 1408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1370 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1371 = load i32, i32* %op1218
	lu12i.w $t0, -2
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1372 = add i32 %op1370, %op1371
	lu12i.w $t0, -2
	ori $t0, $t0, 676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1372, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1373 = load i32, i32* %op1211
	lu12i.w $t0, -2
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1374 = add i32 %op1373, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1374, i32* %op1211
	lu12i.w $t1, -2
	ori $t1, $t1, 1448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1375 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1376 = load i32, i32* %op1211
	lu12i.w $t0, -2
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1377 = add i32 %op1375, %op1376
	lu12i.w $t0, -2
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1377, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1378 = load i32, i32* %op1204
	lu12i.w $t0, -2
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1379 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1380 = add i32 %op1378, %op1379
	lu12i.w $t0, -2
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1380, i32* %op1204
	lu12i.w $t1, -2
	ori $t1, $t1, 1488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1381 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1382 = load i32, i32* %op1204
	lu12i.w $t0, -2
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1383 = add i32 %op1381, %op1382
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1383, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1384 = load i32, i32* %op1197
	lu12i.w $t0, -2
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1385 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1386 = add i32 %op1384, %op1385
	lu12i.w $t0, -2
	ori $t0, $t0, 620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1386, i32* %op1197
	lu12i.w $t1, -2
	ori $t1, $t1, 1528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1387 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1388 = load i32, i32* %op1197
	lu12i.w $t0, -2
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1389 = add i32 %op1387, %op1388
	lu12i.w $t0, -2
	ori $t0, $t0, 608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1389, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1390 = load i32, i32* %op1191
	lu12i.w $t0, -2
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1391 = add i32 %op1390, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1391, i32* %op1191
	lu12i.w $t1, -2
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1392 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1393 = load i32, i32* %op1191
	lu12i.w $t0, -2
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1394 = add i32 %op1392, %op1393
	lu12i.w $t0, -2
	ori $t0, $t0, 588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1394, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1395 = load i32, i32* %op1184
	lu12i.w $t0, -2
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1396 = add i32 %op1395, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1396, i32* %op1184
	lu12i.w $t1, -2
	ori $t1, $t1, 1600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1397 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1398 = load i32, i32* %op1184
	lu12i.w $t0, -2
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1399 = add i32 %op1397, %op1398
	lu12i.w $t0, -2
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 564
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1399, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1400 = load i32, i32* %op1177
	lu12i.w $t0, -2
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1401 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1402 = add i32 %op1400, %op1401
	lu12i.w $t0, -2
	ori $t0, $t0, 556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 552
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1402, i32* %op1177
	lu12i.w $t1, -2
	ori $t1, $t1, 1640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1403 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1404 = load i32, i32* %op1177
	lu12i.w $t0, -2
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1405 = add i32 %op1403, %op1404
	lu12i.w $t0, -2
	ori $t0, $t0, 544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1405, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1406 = load i32, i32* %op1171
	lu12i.w $t0, -2
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1407 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1408 = add i32 %op1406, %op1407
	lu12i.w $t0, -2
	ori $t0, $t0, 532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1408, i32* %op1171
	lu12i.w $t1, -2
	ori $t1, $t1, 1672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1409 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1410 = load i32, i32* %op1171
	lu12i.w $t0, -2
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1411 = add i32 %op1409, %op1410
	lu12i.w $t0, -2
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1411, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1412 = load i32, i32* %op1164
	lu12i.w $t0, -2
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1413 = add i32 %op1412, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1413, i32* %op1164
	lu12i.w $t1, -2
	ori $t1, $t1, 1712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1414 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1415 = load i32, i32* %op1164
	lu12i.w $t0, -2
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1416 = add i32 %op1414, %op1415
	lu12i.w $t0, -2
	ori $t0, $t0, 500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1416, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1417 = load i32, i32* %op1158
	lu12i.w $t0, -2
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1418 = add i32 %op1417, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1418, i32* %op1158
	lu12i.w $t1, -2
	ori $t1, $t1, 1744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1419 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1420 = load i32, i32* %op1158
	lu12i.w $t0, -2
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1421 = add i32 %op1419, %op1420
	lu12i.w $t0, -2
	ori $t0, $t0, 480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1421, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1422 = load i32, i32* %op1151
	lu12i.w $t0, -2
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1423 = add i32 %op1422, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1423, i32* %op1151
	lu12i.w $t1, -2
	ori $t1, $t1, 1784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1424 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1425 = load i32, i32* %op1151
	lu12i.w $t0, -2
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1426 = add i32 %op1424, %op1425
	lu12i.w $t0, -2
	ori $t0, $t0, 460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 456
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1426, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 452
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1427 = load i32, i32* %op1145
	lu12i.w $t0, -2
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1428 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1429 = add i32 %op1427, %op1428
	lu12i.w $t0, -2
	ori $t0, $t0, 448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1429, i32* %op1145
	lu12i.w $t1, -2
	ori $t1, $t1, 1816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1430 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1431 = load i32, i32* %op1145
	lu12i.w $t0, -2
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1432 = add i32 %op1430, %op1431
	lu12i.w $t0, -2
	ori $t0, $t0, 436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1432, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1433 = load i32, i32* %op1138
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1434 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1435 = add i32 %op1433, %op1434
	lu12i.w $t0, -2
	ori $t0, $t0, 424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1435, i32* %op1138
	lu12i.w $t1, -2
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1436 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1437 = load i32, i32* %op1138
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1438 = add i32 %op1436, %op1437
	lu12i.w $t0, -2
	ori $t0, $t0, 412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1438, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1439 = load i32, i32* %op1132
	lu12i.w $t0, -2
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1440 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1441 = add i32 %op1439, %op1440
	lu12i.w $t0, -2
	ori $t0, $t0, 400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1441, i32* %op1132
	lu12i.w $t1, -2
	ori $t1, $t1, 1888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1442 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1443 = load i32, i32* %op1132
	lu12i.w $t0, -2
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1444 = add i32 %op1442, %op1443
	lu12i.w $t0, -2
	ori $t0, $t0, 388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1444, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1445 = load i32, i32* %op1125
	lu12i.w $t0, -2
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1446 = add i32 %op1445, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1446, i32* %op1125
	lu12i.w $t1, -2
	ori $t1, $t1, 1928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1447 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1448 = load i32, i32* %op1125
	lu12i.w $t0, -2
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1449 = add i32 %op1447, %op1448
	lu12i.w $t0, -2
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1449, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1450 = load i32, i32* %op1119
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1451 = add i32 %op1450, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1451, i32* %op1119
	lu12i.w $t1, -2
	ori $t1, $t1, 1960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1452 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1453 = load i32, i32* %op1119
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1454 = add i32 %op1452, %op1453
	lu12i.w $t0, -2
	ori $t0, $t0, 348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 344
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1454, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1455 = load i32, i32* %op1112
	lu12i.w $t0, -2
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1456 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1457 = add i32 %op1455, %op1456
	lu12i.w $t0, -2
	ori $t0, $t0, 336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1457, i32* %op1112
	lu12i.w $t1, -2
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1458 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1459 = load i32, i32* %op1112
	lu12i.w $t0, -2
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1460 = add i32 %op1458, %op1459
	lu12i.w $t0, -2
	ori $t0, $t0, 324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1460, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1461 = load i32, i32* %op1105
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1462 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1463 = add i32 %op1461, %op1462
	lu12i.w $t0, -2
	ori $t0, $t0, 312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 308
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1463, i32* %op1105
	lu12i.w $t1, -2
	ori $t1, $t1, 2040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1464 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1465 = load i32, i32* %op1105
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1466 = add i32 %op1464, %op1465
	lu12i.w $t0, -2
	ori $t0, $t0, 300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1466, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1467 = load i32, i32* %op1099
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1468 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1469 = add i32 %op1467, %op1468
	lu12i.w $t0, -2
	ori $t0, $t0, 288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1469, i32* %op1099
	lu12i.w $t1, -2
	ori $t1, $t1, 2072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1470 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1471 = load i32, i32* %op1099
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1472 = add i32 %op1470, %op1471
	lu12i.w $t0, -2
	ori $t0, $t0, 276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1472, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1473 = load i32, i32* %op1093
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1474 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1475 = add i32 %op1473, %op1474
	lu12i.w $t0, -2
	ori $t0, $t0, 264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1475, i32* %op1093
	lu12i.w $t1, -2
	ori $t1, $t1, 2104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1476 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1477 = load i32, i32* %op1093
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1478 = add i32 %op1476, %op1477
	lu12i.w $t0, -2
	ori $t0, $t0, 252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1478, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1479 = load i32, i32* %op1087
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1480 = add i32 %op1479, 3
	lu12i.w $t0, -2
	ori $t0, $t0, 240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1480, i32* %op1087
	lu12i.w $t1, -2
	ori $t1, $t1, 2136
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1481 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1482 = load i32, i32* %op1087
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1483 = add i32 %op1481, %op1482
	lu12i.w $t0, -2
	ori $t0, $t0, 232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1483, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1484 = load i32, i32* %op1080
	lu12i.w $t0, -2
	ori $t0, $t0, 2176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1485 = add i32 %op1484, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1485, i32* %op1080
	lu12i.w $t1, -2
	ori $t1, $t1, 2176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1486 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1487 = load i32, i32* %op1080
	lu12i.w $t0, -2
	ori $t0, $t0, 2176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1488 = add i32 %op1486, %op1487
	lu12i.w $t0, -2
	ori $t0, $t0, 212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1488, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1489 = load i32, i32* %op1074
	lu12i.w $t0, -2
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1490 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1491 = add i32 %op1489, %op1490
	lu12i.w $t0, -2
	ori $t0, $t0, 200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1491, i32* %op1074
	lu12i.w $t1, -2
	ori $t1, $t1, 2208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1492 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1493 = load i32, i32* %op1074
	lu12i.w $t0, -2
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1494 = add i32 %op1492, %op1493
	lu12i.w $t0, -2
	ori $t0, $t0, 188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 184
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1494, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1495 = load i32, i32* %op1068
	lu12i.w $t0, -2
	ori $t0, $t0, 2240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1496 = add i32 %op1495, 4
	lu12i.w $t0, -2
	ori $t0, $t0, 176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1496, i32* %op1068
	lu12i.w $t1, -2
	ori $t1, $t1, 2240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1497 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1498 = load i32, i32* %op1068
	lu12i.w $t0, -2
	ori $t0, $t0, 2240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1499 = add i32 %op1497, %op1498
	lu12i.w $t0, -2
	ori $t0, $t0, 168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1499, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1500 = load i32, i32* %op1062
	lu12i.w $t0, -2
	ori $t0, $t0, 2272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1501 = add i32 %op1500, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1501, i32* %op1062
	lu12i.w $t1, -2
	ori $t1, $t1, 2272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1502 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1503 = load i32, i32* %op1062
	lu12i.w $t0, -2
	ori $t0, $t0, 2272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1504 = add i32 %op1502, %op1503
	lu12i.w $t0, -2
	ori $t0, $t0, 148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1504, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1505 = load i32, i32* %op1056
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1506 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1507 = add i32 %op1505, %op1506
	lu12i.w $t0, -2
	ori $t0, $t0, 136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1507, i32* %op1056
	lu12i.w $t1, -2
	ori $t1, $t1, 2304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1508 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1509 = load i32, i32* %op1056
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1510 = add i32 %op1508, %op1509
	lu12i.w $t0, -2
	ori $t0, $t0, 124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1510, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1511 = load i32, i32* %op1050
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1512 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1513 = add i32 %op1511, %op1512
	lu12i.w $t0, -2
	ori $t0, $t0, 112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1513, i32* %op1050
	lu12i.w $t1, -2
	ori $t1, $t1, 2336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1514 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1515 = load i32, i32* %op1050
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 96
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1516 = add i32 %op1514, %op1515
	lu12i.w $t0, -2
	ori $t0, $t0, 100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 96
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 92
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1516, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 92
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1517 = load i32, i32* %op1044
	lu12i.w $t0, -2
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 88
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1518 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 84
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1519 = add i32 %op1517, %op1518
	lu12i.w $t0, -2
	ori $t0, $t0, 88
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 84
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 80
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1519, i32* %op1044
	lu12i.w $t1, -2
	ori $t1, $t1, 2368
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 80
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1520 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 76
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1521 = load i32, i32* %op1044
	lu12i.w $t0, -2
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 72
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1522 = add i32 %op1520, %op1521
	lu12i.w $t0, -2
	ori $t0, $t0, 76
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 72
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 68
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1522, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 68
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1523 = load i32, i32* %op1037
	lu12i.w $t0, -2
	ori $t0, $t0, 2408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 64
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1524 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1525 = add i32 %op1523, %op1524
	lu12i.w $t0, -2
	ori $t0, $t0, 64
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 60
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 56
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1525, i32* %op1037
	lu12i.w $t1, -2
	ori $t1, $t1, 2408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 56
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1526 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 52
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1527 = load i32, i32* %op1037
	lu12i.w $t0, -2
	ori $t0, $t0, 2408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 48
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1528 = add i32 %op1526, %op1527
	lu12i.w $t0, -2
	ori $t0, $t0, 52
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 48
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 44
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1528, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 44
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1529 = load i32, i32* %op1030
	lu12i.w $t0, -2
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1530 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 36
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1531 = add i32 %op1529, %op1530
	lu12i.w $t0, -2
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 36
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1531, i32* %op1030
	lu12i.w $t1, -2
	ori $t1, $t1, 2448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 32
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1532 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 28
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1533 = load i32, i32* %op1030
	lu12i.w $t0, -2
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1534 = add i32 %op1532, %op1533
	lu12i.w $t0, -2
	ori $t0, $t0, 28
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 24
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 20
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1534, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 20
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1535 = load i32, i32* %op1023
	lu12i.w $t0, -2
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 16
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1536 = add i32 %op1535, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 16
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 12
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1536, i32* %op1023
	lu12i.w $t1, -2
	ori $t1, $t1, 2488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 12
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1537 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 8
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1538 = load i32, i32* %op1023
	lu12i.w $t0, -2
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1539 = add i32 %op1537, %op1538
	lu12i.w $t0, -2
	ori $t0, $t0, 8
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1539, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -2
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1540 = load i32, i32* %op1017
	lu12i.w $t0, -2
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1541 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1542 = add i32 %op1540, %op1541
	lu12i.w $t0, -3
	ori $t0, $t0, 4092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1542, i32* %op1017
	lu12i.w $t1, -2
	ori $t1, $t1, 2520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1543 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1544 = load i32, i32* %op1017
	lu12i.w $t0, -2
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1545 = add i32 %op1543, %op1544
	lu12i.w $t0, -3
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1545, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 4072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1546 = load i32, i32* %op1010
	lu12i.w $t0, -2
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1547 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1548 = add i32 %op1546, %op1547
	lu12i.w $t0, -3
	ori $t0, $t0, 4068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4064
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1548, i32* %op1010
	lu12i.w $t1, -2
	ori $t1, $t1, 2560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1549 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1550 = load i32, i32* %op1010
	lu12i.w $t0, -2
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1551 = add i32 %op1549, %op1550
	lu12i.w $t0, -3
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4052
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1551, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 4048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1552 = load i32, i32* %op1004
	lu12i.w $t0, -2
	ori $t0, $t0, 2592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1553 = add i32 %op1552, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1553, i32* %op1004
	lu12i.w $t1, -2
	ori $t1, $t1, 2592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1554 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1555 = load i32, i32* %op1004
	lu12i.w $t0, -2
	ori $t0, $t0, 2592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1556 = add i32 %op1554, %op1555
	lu12i.w $t0, -3
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1556, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1557 = load i32, i32* %op998
	lu12i.w $t0, -2
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1558 = add i32 %op1557, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1558, i32* %op998
	lu12i.w $t1, -2
	ori $t1, $t1, 2624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1559 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1560 = load i32, i32* %op998
	lu12i.w $t0, -2
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1561 = add i32 %op1559, %op1560
	lu12i.w $t0, -3
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1561, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 4008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1562 = load i32, i32* %op992
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1563 = add i32 %op1562, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 4004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1563, i32* %op992
	lu12i.w $t1, -2
	ori $t1, $t1, 2656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1564 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1565 = load i32, i32* %op992
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1566 = add i32 %op1564, %op1565
	lu12i.w $t0, -3
	ori $t0, $t0, 3996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1566, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1567 = load i32, i32* %op986
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1568 = add i32 %op1567, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1568, i32* %op986
	lu12i.w $t1, -2
	ori $t1, $t1, 2688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1569 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1570 = load i32, i32* %op986
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1571 = add i32 %op1569, %op1570
	lu12i.w $t0, -3
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1571, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1572 = load i32, i32* %op980
	lu12i.w $t0, -2
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1573 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1574 = add i32 %op1572, %op1573
	lu12i.w $t0, -3
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1574, i32* %op980
	lu12i.w $t1, -2
	ori $t1, $t1, 2720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1575 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1576 = load i32, i32* %op980
	lu12i.w $t0, -2
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1577 = add i32 %op1575, %op1576
	lu12i.w $t0, -3
	ori $t0, $t0, 3952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1577, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1578 = load i32, i32* %op973
	lu12i.w $t0, -2
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1579 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1580 = add i32 %op1578, %op1579
	lu12i.w $t0, -3
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1580, i32* %op973
	lu12i.w $t1, -2
	ori $t1, $t1, 2760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1581 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1582 = load i32, i32* %op973
	lu12i.w $t0, -2
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1583 = add i32 %op1581, %op1582
	lu12i.w $t0, -3
	ori $t0, $t0, 3928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1583, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1584 = load i32, i32* %op967
	lu12i.w $t0, -2
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1585 = add i32 %op1584, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1585, i32* %op967
	lu12i.w $t1, -2
	ori $t1, $t1, 2792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1586 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1587 = load i32, i32* %op967
	lu12i.w $t0, -2
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1588 = add i32 %op1586, %op1587
	lu12i.w $t0, -3
	ori $t0, $t0, 3908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1588, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1589 = load i32, i32* %op960
	lu12i.w $t0, -2
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1590 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1591 = add i32 %op1589, %op1590
	lu12i.w $t0, -3
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1591, i32* %op960
	lu12i.w $t1, -2
	ori $t1, $t1, 2832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1592 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1593 = load i32, i32* %op960
	lu12i.w $t0, -2
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1594 = add i32 %op1592, %op1593
	lu12i.w $t0, -3
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3880
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1594, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1595 = load i32, i32* %op953
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1596 = add i32 %op1595, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 3872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1596, i32* %op953
	lu12i.w $t1, -2
	ori $t1, $t1, 2872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1597 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1598 = load i32, i32* %op953
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1599 = add i32 %op1597, %op1598
	lu12i.w $t0, -3
	ori $t0, $t0, 3864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1599, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1600 = load i32, i32* %op947
	lu12i.w $t0, -2
	ori $t0, $t0, 2904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1601 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1602 = add i32 %op1600, %op1601
	lu12i.w $t0, -3
	ori $t0, $t0, 3852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1602, i32* %op947
	lu12i.w $t1, -2
	ori $t1, $t1, 2904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1603 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1604 = load i32, i32* %op947
	lu12i.w $t0, -2
	ori $t0, $t0, 2904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1605 = add i32 %op1603, %op1604
	lu12i.w $t0, -3
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1605, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1606 = load i32, i32* %op941
	lu12i.w $t0, -2
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1607 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1608 = add i32 %op1606, %op1607
	lu12i.w $t0, -3
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3824
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1608, i32* %op941
	lu12i.w $t1, -2
	ori $t1, $t1, 2936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1609 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1610 = load i32, i32* %op941
	lu12i.w $t0, -2
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1611 = add i32 %op1609, %op1610
	lu12i.w $t0, -3
	ori $t0, $t0, 3816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1611, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1612 = load i32, i32* %op934
	lu12i.w $t0, -2
	ori $t0, $t0, 2976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1613 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1614 = add i32 %op1612, %op1613
	lu12i.w $t0, -3
	ori $t0, $t0, 3804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1614, i32* %op934
	lu12i.w $t1, -2
	ori $t1, $t1, 2976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1615 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1616 = load i32, i32* %op934
	lu12i.w $t0, -2
	ori $t0, $t0, 2976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1617 = add i32 %op1615, %op1616
	lu12i.w $t0, -3
	ori $t0, $t0, 3792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1617, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1618 = load i32, i32* %op927
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1619 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1620 = add i32 %op1618, %op1619
	lu12i.w $t0, -3
	ori $t0, $t0, 3780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3776
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1620, i32* %op927
	lu12i.w $t1, -2
	ori $t1, $t1, 3016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1621 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1622 = load i32, i32* %op927
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1623 = add i32 %op1621, %op1622
	lu12i.w $t0, -3
	ori $t0, $t0, 3768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1623, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1624 = load i32, i32* %op921
	lu12i.w $t0, -2
	ori $t0, $t0, 3048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1625 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1626 = add i32 %op1624, %op1625
	lu12i.w $t0, -3
	ori $t0, $t0, 3756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3752
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1626, i32* %op921
	lu12i.w $t1, -2
	ori $t1, $t1, 3048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1627 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1628 = load i32, i32* %op921
	lu12i.w $t0, -2
	ori $t0, $t0, 3048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1629 = add i32 %op1627, %op1628
	lu12i.w $t0, -3
	ori $t0, $t0, 3744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1629, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1630 = load i32, i32* %op914
	lu12i.w $t0, -2
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1631 = add i32 %op1630, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1631, i32* %op914
	lu12i.w $t1, -2
	ori $t1, $t1, 3088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1632 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1633 = load i32, i32* %op914
	lu12i.w $t0, -2
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1634 = add i32 %op1632, %op1633
	lu12i.w $t0, -3
	ori $t0, $t0, 3724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1634, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1635 = load i32, i32* %op907
	lu12i.w $t0, -2
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1636 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1637 = add i32 %op1635, %op1636
	lu12i.w $t0, -3
	ori $t0, $t0, 3712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1637, i32* %op907
	lu12i.w $t1, -2
	ori $t1, $t1, 3128
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1638 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1639 = load i32, i32* %op907
	lu12i.w $t0, -2
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1640 = add i32 %op1638, %op1639
	lu12i.w $t0, -3
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3696
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1640, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1641 = load i32, i32* %op900
	lu12i.w $t0, -2
	ori $t0, $t0, 3168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1642 = add i32 %op1641, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1642, i32* %op900
	lu12i.w $t1, -2
	ori $t1, $t1, 3168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1643 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1644 = load i32, i32* %op900
	lu12i.w $t0, -2
	ori $t0, $t0, 3168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1645 = add i32 %op1643, %op1644
	lu12i.w $t0, -3
	ori $t0, $t0, 3680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1645, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1646 = load i32, i32* %op893
	lu12i.w $t0, -2
	ori $t0, $t0, 3208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1647 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1648 = add i32 %op1646, %op1647
	lu12i.w $t0, -3
	ori $t0, $t0, 3668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1648, i32* %op893
	lu12i.w $t1, -2
	ori $t1, $t1, 3208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1649 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1650 = load i32, i32* %op893
	lu12i.w $t0, -2
	ori $t0, $t0, 3208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1651 = add i32 %op1649, %op1650
	lu12i.w $t0, -3
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1651, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1652 = load i32, i32* %op886
	lu12i.w $t0, -2
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1653 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1654 = add i32 %op1652, %op1653
	lu12i.w $t0, -3
	ori $t0, $t0, 3644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1654, i32* %op886
	lu12i.w $t1, -2
	ori $t1, $t1, 3248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1655 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1656 = load i32, i32* %op886
	lu12i.w $t0, -2
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1657 = add i32 %op1655, %op1656
	lu12i.w $t0, -3
	ori $t0, $t0, 3632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1657, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1658 = load i32, i32* %op880
	lu12i.w $t0, -2
	ori $t0, $t0, 3280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1659 = add i32 %op1658, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1659, i32* %op880
	lu12i.w $t1, -2
	ori $t1, $t1, 3280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1660 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1661 = load i32, i32* %op880
	lu12i.w $t0, -2
	ori $t0, $t0, 3280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1662 = add i32 %op1660, %op1661
	lu12i.w $t0, -3
	ori $t0, $t0, 3612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1662, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1663 = load i32, i32* %op874
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1664 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1665 = add i32 %op1663, %op1664
	lu12i.w $t0, -3
	ori $t0, $t0, 3600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1665, i32* %op874
	lu12i.w $t1, -2
	ori $t1, $t1, 3312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1666 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1667 = load i32, i32* %op874
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1668 = add i32 %op1666, %op1667
	lu12i.w $t0, -3
	ori $t0, $t0, 3588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1668, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1669 = load i32, i32* %op867
	lu12i.w $t0, -2
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1670 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1671 = add i32 %op1669, %op1670
	lu12i.w $t0, -3
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1671, i32* %op867
	lu12i.w $t1, -2
	ori $t1, $t1, 3352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1672 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1673 = load i32, i32* %op867
	lu12i.w $t0, -2
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1674 = add i32 %op1672, %op1673
	lu12i.w $t0, -3
	ori $t0, $t0, 3564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1674, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1675 = load i32, i32* %op860
	lu12i.w $t0, -2
	ori $t0, $t0, 3392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1676 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1677 = add i32 %op1675, %op1676
	lu12i.w $t0, -3
	ori $t0, $t0, 3552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1677, i32* %op860
	lu12i.w $t1, -2
	ori $t1, $t1, 3392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1678 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1679 = load i32, i32* %op860
	lu12i.w $t0, -2
	ori $t0, $t0, 3392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1680 = add i32 %op1678, %op1679
	lu12i.w $t0, -3
	ori $t0, $t0, 3540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1680, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1681 = load i32, i32* %op853
	lu12i.w $t0, -2
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1682 = add i32 %op1681, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1682, i32* %op853
	lu12i.w $t1, -2
	ori $t1, $t1, 3432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1683 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1684 = load i32, i32* %op853
	lu12i.w $t0, -2
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1685 = add i32 %op1683, %op1684
	lu12i.w $t0, -3
	ori $t0, $t0, 3520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1685, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1686 = load i32, i32* %op847
	lu12i.w $t0, -2
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1687 = add i32 %op1686, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1687, i32* %op847
	lu12i.w $t1, -2
	ori $t1, $t1, 3464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1688 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1689 = load i32, i32* %op847
	lu12i.w $t0, -2
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1690 = add i32 %op1688, %op1689
	lu12i.w $t0, -3
	ori $t0, $t0, 3500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1690, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1691 = load i32, i32* %op840
	lu12i.w $t0, -2
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1692 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1693 = add i32 %op1691, %op1692
	lu12i.w $t0, -3
	ori $t0, $t0, 3488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1693, i32* %op840
	lu12i.w $t1, -2
	ori $t1, $t1, 3504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1694 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1695 = load i32, i32* %op840
	lu12i.w $t0, -2
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1696 = add i32 %op1694, %op1695
	lu12i.w $t0, -3
	ori $t0, $t0, 3476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1696, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1697 = load i32, i32* %op833
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1698 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1699 = add i32 %op1697, %op1698
	lu12i.w $t0, -3
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3460
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1699, i32* %op833
	lu12i.w $t1, -2
	ori $t1, $t1, 3544
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1700 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1701 = load i32, i32* %op833
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1702 = add i32 %op1700, %op1701
	lu12i.w $t0, -3
	ori $t0, $t0, 3452
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1702, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1703 = load i32, i32* %op827
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1704 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1705 = add i32 %op1703, %op1704
	lu12i.w $t0, -3
	ori $t0, $t0, 3440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1705, i32* %op827
	lu12i.w $t1, -2
	ori $t1, $t1, 3576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1706 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1707 = load i32, i32* %op827
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1708 = add i32 %op1706, %op1707
	lu12i.w $t0, -3
	ori $t0, $t0, 3428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1708, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1709 = load i32, i32* %op820
	lu12i.w $t0, -2
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1710 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1711 = add i32 %op1709, %op1710
	lu12i.w $t0, -3
	ori $t0, $t0, 3416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1711, i32* %op820
	lu12i.w $t1, -2
	ori $t1, $t1, 3616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1712 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1713 = load i32, i32* %op820
	lu12i.w $t0, -2
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1714 = add i32 %op1712, %op1713
	lu12i.w $t0, -3
	ori $t0, $t0, 3404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3400
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1714, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1715 = load i32, i32* %op813
	lu12i.w $t0, -2
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1716 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1717 = add i32 %op1715, %op1716
	lu12i.w $t0, -3
	ori $t0, $t0, 3392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1717, i32* %op813
	lu12i.w $t1, -2
	ori $t1, $t1, 3656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1718 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1719 = load i32, i32* %op813
	lu12i.w $t0, -2
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1720 = add i32 %op1718, %op1719
	lu12i.w $t0, -3
	ori $t0, $t0, 3380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1720, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1721 = load i32, i32* %op807
	lu12i.w $t0, -2
	ori $t0, $t0, 3688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1722 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1723 = add i32 %op1721, %op1722
	lu12i.w $t0, -3
	ori $t0, $t0, 3368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1723, i32* %op807
	lu12i.w $t1, -2
	ori $t1, $t1, 3688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1724 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1725 = load i32, i32* %op807
	lu12i.w $t0, -2
	ori $t0, $t0, 3688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1726 = add i32 %op1724, %op1725
	lu12i.w $t0, -3
	ori $t0, $t0, 3356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1726, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1727 = load i32, i32* %op801
	lu12i.w $t0, -2
	ori $t0, $t0, 3720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1728 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1729 = add i32 %op1727, %op1728
	lu12i.w $t0, -3
	ori $t0, $t0, 3344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1729, i32* %op801
	lu12i.w $t1, -2
	ori $t1, $t1, 3720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1730 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1731 = load i32, i32* %op801
	lu12i.w $t0, -2
	ori $t0, $t0, 3720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1732 = add i32 %op1730, %op1731
	lu12i.w $t0, -3
	ori $t0, $t0, 3332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3328
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1732, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1733 = load i32, i32* %op794
	lu12i.w $t0, -2
	ori $t0, $t0, 3760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1734 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1735 = add i32 %op1733, %op1734
	lu12i.w $t0, -3
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1735, i32* %op794
	lu12i.w $t1, -2
	ori $t1, $t1, 3760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1736 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1737 = load i32, i32* %op794
	lu12i.w $t0, -2
	ori $t0, $t0, 3760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1738 = add i32 %op1736, %op1737
	lu12i.w $t0, -3
	ori $t0, $t0, 3308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3304
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1738, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1739 = load i32, i32* %op787
	lu12i.w $t0, -2
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1740 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1741 = add i32 %op1739, %op1740
	lu12i.w $t0, -3
	ori $t0, $t0, 3296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1741, i32* %op787
	lu12i.w $t1, -2
	ori $t1, $t1, 3800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1742 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1743 = load i32, i32* %op787
	lu12i.w $t0, -2
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1744 = add i32 %op1742, %op1743
	lu12i.w $t0, -3
	ori $t0, $t0, 3284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1744, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1745 = load i32, i32* %op780
	lu12i.w $t0, -2
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1746 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1747 = add i32 %op1745, %op1746
	lu12i.w $t0, -3
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1747, i32* %op780
	lu12i.w $t1, -2
	ori $t1, $t1, 3840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1748 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1749 = load i32, i32* %op780
	lu12i.w $t0, -2
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1750 = add i32 %op1748, %op1749
	lu12i.w $t0, -3
	ori $t0, $t0, 3260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3256
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1750, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1751 = load i32, i32* %op774
	lu12i.w $t0, -2
	ori $t0, $t0, 3872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1752 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1753 = add i32 %op1751, %op1752
	lu12i.w $t0, -3
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1753, i32* %op774
	lu12i.w $t1, -2
	ori $t1, $t1, 3872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1754 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1755 = load i32, i32* %op774
	lu12i.w $t0, -2
	ori $t0, $t0, 3872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1756 = add i32 %op1754, %op1755
	lu12i.w $t0, -3
	ori $t0, $t0, 3236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1756, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1757 = load i32, i32* %op767
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1758 = add i32 %op1757, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1758, i32* %op767
	lu12i.w $t1, -2
	ori $t1, $t1, 3912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1759 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1760 = load i32, i32* %op767
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1761 = add i32 %op1759, %op1760
	lu12i.w $t0, -3
	ori $t0, $t0, 3216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1761, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1762 = load i32, i32* %op761
	lu12i.w $t0, -2
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1763 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1764 = add i32 %op1762, %op1763
	lu12i.w $t0, -3
	ori $t0, $t0, 3204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3200
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1764, i32* %op761
	lu12i.w $t1, -2
	ori $t1, $t1, 3944
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1765 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1766 = load i32, i32* %op761
	lu12i.w $t0, -2
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1767 = add i32 %op1765, %op1766
	lu12i.w $t0, -3
	ori $t0, $t0, 3192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1767, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1768 = load i32, i32* %op754
	lu12i.w $t0, -2
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1769 = add i32 %op1768, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1769, i32* %op754
	lu12i.w $t1, -2
	ori $t1, $t1, 3984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1770 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1771 = load i32, i32* %op754
	lu12i.w $t0, -2
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1772 = add i32 %op1770, %op1771
	lu12i.w $t0, -3
	ori $t0, $t0, 3172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1772, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1773 = load i32, i32* %op748
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1774 = add i32 %op1773, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1774, i32* %op748
	lu12i.w $t1, -2
	ori $t1, $t1, 4016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1775 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1776 = load i32, i32* %op748
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1777 = add i32 %op1775, %op1776
	lu12i.w $t0, -3
	ori $t0, $t0, 3152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1777, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1778 = load i32, i32* %op741
	lu12i.w $t0, -2
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1779 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1780 = add i32 %op1778, %op1779
	lu12i.w $t0, -3
	ori $t0, $t0, 3140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3136
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1780, i32* %op741
	lu12i.w $t1, -2
	ori $t1, $t1, 4056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1781 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1782 = load i32, i32* %op741
	lu12i.w $t0, -2
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1783 = add i32 %op1781, %op1782
	lu12i.w $t0, -3
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1783, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1784 = load i32, i32* %op734
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1785 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1786 = add i32 %op1784, %op1785
	lu12i.w $t0, -3
	ori $t0, $t0, 3116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1786, i32* %op734
	lu12i.w $t1, -1
	ori $t1, $t1, 0
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3108
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1787 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1788 = load i32, i32* %op734
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1789 = add i32 %op1787, %op1788
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1789, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1790 = load i32, i32* %op727
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1791 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1792 = add i32 %op1790, %op1791
	lu12i.w $t0, -3
	ori $t0, $t0, 3092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1792, i32* %op727
	lu12i.w $t1, -1
	ori $t1, $t1, 40
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1793 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1794 = load i32, i32* %op727
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1795 = add i32 %op1793, %op1794
	lu12i.w $t0, -3
	ori $t0, $t0, 3080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1795, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1796 = load i32, i32* %op721
	lu12i.w $t0, -1
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1797 = add i32 %op1796, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1797, i32* %op721
	lu12i.w $t1, -1
	ori $t1, $t1, 72
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1798 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1799 = load i32, i32* %op721
	lu12i.w $t0, -1
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1800 = add i32 %op1798, %op1799
	lu12i.w $t0, -3
	ori $t0, $t0, 3060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1800, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1801 = load i32, i32* %op715
	lu12i.w $t0, -1
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1802 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1803 = add i32 %op1801, %op1802
	lu12i.w $t0, -3
	ori $t0, $t0, 3048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1803, i32* %op715
	lu12i.w $t1, -1
	ori $t1, $t1, 104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1804 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1805 = load i32, i32* %op715
	lu12i.w $t0, -1
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1806 = add i32 %op1804, %op1805
	lu12i.w $t0, -3
	ori $t0, $t0, 3036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1806, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1807 = load i32, i32* %op708
	lu12i.w $t0, -1
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1808 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1809 = add i32 %op1807, %op1808
	lu12i.w $t0, -3
	ori $t0, $t0, 3024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1809, i32* %op708
	lu12i.w $t1, -1
	ori $t1, $t1, 144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1810 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1811 = load i32, i32* %op708
	lu12i.w $t0, -1
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1812 = add i32 %op1810, %op1811
	lu12i.w $t0, -3
	ori $t0, $t0, 3012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1812, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 3004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1813 = load i32, i32* %op702
	lu12i.w $t0, -1
	ori $t0, $t0, 176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1814 = add i32 %op1813, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1814, i32* %op702
	lu12i.w $t1, -1
	ori $t1, $t1, 176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1815 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1816 = load i32, i32* %op702
	lu12i.w $t0, -1
	ori $t0, $t0, 176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1817 = add i32 %op1815, %op1816
	lu12i.w $t0, -3
	ori $t0, $t0, 2992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1817, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1818 = load i32, i32* %op696
	lu12i.w $t0, -1
	ori $t0, $t0, 208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1819 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1820 = add i32 %op1818, %op1819
	lu12i.w $t0, -3
	ori $t0, $t0, 2980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1820, i32* %op696
	lu12i.w $t1, -1
	ori $t1, $t1, 208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1821 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1822 = load i32, i32* %op696
	lu12i.w $t0, -1
	ori $t0, $t0, 208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1823 = add i32 %op1821, %op1822
	lu12i.w $t0, -3
	ori $t0, $t0, 2968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1823, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1824 = load i32, i32* %op689
	lu12i.w $t0, -1
	ori $t0, $t0, 248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1825 = add i32 %op1824, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1825, i32* %op689
	lu12i.w $t1, -1
	ori $t1, $t1, 248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1826 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1827 = load i32, i32* %op689
	lu12i.w $t0, -1
	ori $t0, $t0, 248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1828 = add i32 %op1826, %op1827
	lu12i.w $t0, -3
	ori $t0, $t0, 2948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2944
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1828, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1829 = load i32, i32* %op683
	lu12i.w $t0, -1
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1830 = add i32 %op1829, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1830, i32* %op683
	lu12i.w $t1, -1
	ori $t1, $t1, 280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1831 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1832 = load i32, i32* %op683
	lu12i.w $t0, -1
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1833 = add i32 %op1831, %op1832
	lu12i.w $t0, -3
	ori $t0, $t0, 2928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1833, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1834 = load i32, i32* %op676
	lu12i.w $t0, -1
	ori $t0, $t0, 320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1835 = add i32 %op1834, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1835, i32* %op676
	lu12i.w $t1, -1
	ori $t1, $t1, 320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1836 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1837 = load i32, i32* %op676
	lu12i.w $t0, -1
	ori $t0, $t0, 320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1838 = add i32 %op1836, %op1837
	lu12i.w $t0, -3
	ori $t0, $t0, 2908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1838, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1839 = load i32, i32* %op669
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1840 = add i32 %op1839, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1840, i32* %op669
	lu12i.w $t1, -1
	ori $t1, $t1, 360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1841 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1842 = load i32, i32* %op669
	lu12i.w $t0, -1
	ori $t0, $t0, 360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1843 = add i32 %op1841, %op1842
	lu12i.w $t0, -3
	ori $t0, $t0, 2888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1843, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1844 = load i32, i32* %op663
	lu12i.w $t0, -1
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1845 = add i32 %op1844, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 2876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1845, i32* %op663
	lu12i.w $t1, -1
	ori $t1, $t1, 392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1846 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1847 = load i32, i32* %op663
	lu12i.w $t0, -1
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1848 = add i32 %op1846, %op1847
	lu12i.w $t0, -3
	ori $t0, $t0, 2868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1848, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1849 = load i32, i32* %op657
	lu12i.w $t0, -1
	ori $t0, $t0, 424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1850 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1851 = add i32 %op1849, %op1850
	lu12i.w $t0, -3
	ori $t0, $t0, 2856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1851, i32* %op657
	lu12i.w $t1, -1
	ori $t1, $t1, 424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1852 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1853 = load i32, i32* %op657
	lu12i.w $t0, -1
	ori $t0, $t0, 424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1854 = add i32 %op1852, %op1853
	lu12i.w $t0, -3
	ori $t0, $t0, 2844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1854, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1855 = load i32, i32* %op650
	lu12i.w $t0, -1
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1856 = add i32 %op1855, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1856, i32* %op650
	lu12i.w $t1, -1
	ori $t1, $t1, 464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1857 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1858 = load i32, i32* %op650
	lu12i.w $t0, -1
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1859 = add i32 %op1857, %op1858
	lu12i.w $t0, -3
	ori $t0, $t0, 2824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1859, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1860 = load i32, i32* %op644
	lu12i.w $t0, -1
	ori $t0, $t0, 496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1861 = add i32 %op1860, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1861, i32* %op644
	lu12i.w $t1, -1
	ori $t1, $t1, 496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1862 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1863 = load i32, i32* %op644
	lu12i.w $t0, -1
	ori $t0, $t0, 496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1864 = add i32 %op1862, %op1863
	lu12i.w $t0, -3
	ori $t0, $t0, 2804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1864, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1865 = load i32, i32* %op637
	lu12i.w $t0, -1
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1866 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1867 = add i32 %op1865, %op1866
	lu12i.w $t0, -3
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1867, i32* %op637
	lu12i.w $t1, -1
	ori $t1, $t1, 536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1868 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1869 = load i32, i32* %op637
	lu12i.w $t0, -1
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1870 = add i32 %op1868, %op1869
	lu12i.w $t0, -3
	ori $t0, $t0, 2780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2776
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1870, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1871 = load i32, i32* %op631
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1872 = add i32 %op1871, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1872, i32* %op631
	lu12i.w $t1, -1
	ori $t1, $t1, 568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1873 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1874 = load i32, i32* %op631
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1875 = add i32 %op1873, %op1874
	lu12i.w $t0, -3
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1875, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1876 = load i32, i32* %op624
	lu12i.w $t0, -1
	ori $t0, $t0, 608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1877 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1878 = add i32 %op1876, %op1877
	lu12i.w $t0, -3
	ori $t0, $t0, 2748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1878, i32* %op624
	lu12i.w $t1, -1
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1879 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1880 = load i32, i32* %op624
	lu12i.w $t0, -1
	ori $t0, $t0, 608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1881 = add i32 %op1879, %op1880
	lu12i.w $t0, -3
	ori $t0, $t0, 2736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1881, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1882 = load i32, i32* %op617
	lu12i.w $t0, -1
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1883 = add i32 %op1882, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1883, i32* %op617
	lu12i.w $t1, -1
	ori $t1, $t1, 648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1884 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1885 = load i32, i32* %op617
	lu12i.w $t0, -1
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1886 = add i32 %op1884, %op1885
	lu12i.w $t0, -3
	ori $t0, $t0, 2716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1886, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1887 = load i32, i32* %op610
	lu12i.w $t0, -1
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1888 = add i32 %op1887, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1888, i32* %op610
	lu12i.w $t1, -1
	ori $t1, $t1, 688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1889 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1890 = load i32, i32* %op610
	lu12i.w $t0, -1
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1891 = add i32 %op1889, %op1890
	lu12i.w $t0, -3
	ori $t0, $t0, 2696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1891, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1892 = load i32, i32* %op604
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1893 = add i32 %op1892, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1893, i32* %op604
	lu12i.w $t1, -1
	ori $t1, $t1, 720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1894 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1895 = load i32, i32* %op604
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1896 = add i32 %op1894, %op1895
	lu12i.w $t0, -3
	ori $t0, $t0, 2676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1896, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1897 = load i32, i32* %op597
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1898 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1899 = add i32 %op1897, %op1898
	lu12i.w $t0, -3
	ori $t0, $t0, 2664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1899, i32* %op597
	lu12i.w $t1, -1
	ori $t1, $t1, 760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1900 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1901 = load i32, i32* %op597
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1902 = add i32 %op1900, %op1901
	lu12i.w $t0, -3
	ori $t0, $t0, 2652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1902, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1903 = load i32, i32* %op590
	lu12i.w $t0, -1
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1904 = add i32 %op1903, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1904, i32* %op590
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1905 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1906 = load i32, i32* %op590
	lu12i.w $t0, -1
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1907 = add i32 %op1905, %op1906
	lu12i.w $t0, -3
	ori $t0, $t0, 2632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1907, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1908 = load i32, i32* %op583
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1909 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1910 = add i32 %op1908, %op1909
	lu12i.w $t0, -3
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1910, i32* %op583
	lu12i.w $t1, -1
	ori $t1, $t1, 840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1911 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1912 = load i32, i32* %op583
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1913 = add i32 %op1911, %op1912
	lu12i.w $t0, -3
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1913, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1914 = load i32, i32* %op577
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1915 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1916 = add i32 %op1914, %op1915
	lu12i.w $t0, -3
	ori $t0, $t0, 2596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1916, i32* %op577
	lu12i.w $t1, -1
	ori $t1, $t1, 872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1917 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1918 = load i32, i32* %op577
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1919 = add i32 %op1917, %op1918
	lu12i.w $t0, -3
	ori $t0, $t0, 2584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1919, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1920 = load i32, i32* %op571
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1921 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1922 = add i32 %op1920, %op1921
	lu12i.w $t0, -3
	ori $t0, $t0, 2572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1922, i32* %op571
	lu12i.w $t1, -1
	ori $t1, $t1, 904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1923 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1924 = load i32, i32* %op571
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1925 = add i32 %op1923, %op1924
	lu12i.w $t0, -3
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2556
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1925, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1926 = load i32, i32* %op565
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1927 = add i32 %op1926, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 2548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1927, i32* %op565
	lu12i.w $t1, -1
	ori $t1, $t1, 936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1928 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1929 = load i32, i32* %op565
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1930 = add i32 %op1928, %op1929
	lu12i.w $t0, -3
	ori $t0, $t0, 2540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1930, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1931 = load i32, i32* %op558
	lu12i.w $t0, -1
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1932 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1933 = add i32 %op1931, %op1932
	lu12i.w $t0, -3
	ori $t0, $t0, 2528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1933, i32* %op558
	lu12i.w $t1, -1
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1934 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1935 = load i32, i32* %op558
	lu12i.w $t0, -1
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1936 = add i32 %op1934, %op1935
	lu12i.w $t0, -3
	ori $t0, $t0, 2516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1936, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1937 = load i32, i32* %op552
	lu12i.w $t0, -1
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1938 = add i32 %op1937, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1938, i32* %op552
	lu12i.w $t1, -1
	ori $t1, $t1, 1008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1939 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1940 = load i32, i32* %op552
	lu12i.w $t0, -1
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1941 = add i32 %op1939, %op1940
	lu12i.w $t0, -3
	ori $t0, $t0, 2496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1941, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1942 = load i32, i32* %op546
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1943 = add i32 %op1942, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1943, i32* %op546
	lu12i.w $t1, -1
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1944 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1945 = load i32, i32* %op546
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1946 = add i32 %op1944, %op1945
	lu12i.w $t0, -3
	ori $t0, $t0, 2476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1946, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1947 = load i32, i32* %op539
	lu12i.w $t0, -1
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1948 = add i32 %op1947, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 2464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1948, i32* %op539
	lu12i.w $t1, -1
	ori $t1, $t1, 1080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1949 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1950 = load i32, i32* %op539
	lu12i.w $t0, -1
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1951 = add i32 %op1949, %op1950
	lu12i.w $t0, -3
	ori $t0, $t0, 2456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1951, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1952 = load i32, i32* %op533
	lu12i.w $t0, -1
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1953 = add i32 %op1952, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 2444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1953, i32* %op533
	lu12i.w $t1, -1
	ori $t1, $t1, 1112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1954 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1955 = load i32, i32* %op533
	lu12i.w $t0, -1
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1956 = add i32 %op1954, %op1955
	lu12i.w $t0, -3
	ori $t0, $t0, 2436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1956, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1957 = load i32, i32* %op527
	lu12i.w $t0, -1
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1958 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1959 = add i32 %op1957, %op1958
	lu12i.w $t0, -3
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1959, i32* %op527
	lu12i.w $t1, -1
	ori $t1, $t1, 1144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1960 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1961 = load i32, i32* %op527
	lu12i.w $t0, -1
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1962 = add i32 %op1960, %op1961
	lu12i.w $t0, -3
	ori $t0, $t0, 2412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1962, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1963 = load i32, i32* %op521
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1964 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1965 = add i32 %op1963, %op1964
	lu12i.w $t0, -3
	ori $t0, $t0, 2400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1965, i32* %op521
	lu12i.w $t1, -1
	ori $t1, $t1, 1176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1966 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1967 = load i32, i32* %op521
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1968 = add i32 %op1966, %op1967
	lu12i.w $t0, -3
	ori $t0, $t0, 2388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1968, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1969 = load i32, i32* %op515
	lu12i.w $t0, -1
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1970 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1971 = add i32 %op1969, %op1970
	lu12i.w $t0, -3
	ori $t0, $t0, 2376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1971, i32* %op515
	lu12i.w $t1, -1
	ori $t1, $t1, 1208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1972 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1973 = load i32, i32* %op515
	lu12i.w $t0, -1
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1974 = add i32 %op1972, %op1973
	lu12i.w $t0, -3
	ori $t0, $t0, 2364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1974, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1975 = load i32, i32* %op509
	lu12i.w $t0, -1
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1976 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1977 = add i32 %op1975, %op1976
	lu12i.w $t0, -3
	ori $t0, $t0, 2352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1977, i32* %op509
	lu12i.w $t1, -1
	ori $t1, $t1, 1240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1978 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1979 = load i32, i32* %op509
	lu12i.w $t0, -1
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1980 = add i32 %op1978, %op1979
	lu12i.w $t0, -3
	ori $t0, $t0, 2340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1980, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1981 = load i32, i32* %op502
	lu12i.w $t0, -1
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1982 = add i32 %op1981, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1982, i32* %op502
	lu12i.w $t1, -1
	ori $t1, $t1, 1280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1983 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1984 = load i32, i32* %op502
	lu12i.w $t0, -1
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1985 = add i32 %op1983, %op1984
	lu12i.w $t0, -3
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1985, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1986 = load i32, i32* %op496
	lu12i.w $t0, -1
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1987 = add i32 %op1986, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1987, i32* %op496
	lu12i.w $t1, -1
	ori $t1, $t1, 1312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1988 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1989 = load i32, i32* %op496
	lu12i.w $t0, -1
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1990 = add i32 %op1988, %op1989
	lu12i.w $t0, -3
	ori $t0, $t0, 2300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1990, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1991 = load i32, i32* %op490
	lu12i.w $t0, -1
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1992 = add i32 %op1991, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1992, i32* %op490
	lu12i.w $t1, -1
	ori $t1, $t1, 1344
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1993 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1994 = load i32, i32* %op490
	lu12i.w $t0, -1
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1995 = add i32 %op1993, %op1994
	lu12i.w $t0, -3
	ori $t0, $t0, 2280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1995, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1996 = load i32, i32* %op483
	lu12i.w $t0, -1
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1997 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1998 = add i32 %op1996, %op1997
	lu12i.w $t0, -3
	ori $t0, $t0, 2268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2264
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op1998, i32* %op483
	lu12i.w $t1, -1
	ori $t1, $t1, 1384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op1999 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2000 = load i32, i32* %op483
	lu12i.w $t0, -1
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2001 = add i32 %op1999, %op2000
	lu12i.w $t0, -3
	ori $t0, $t0, 2256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2001, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2002 = load i32, i32* %op477
	lu12i.w $t0, -1
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2003 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2004 = add i32 %op2002, %op2003
	lu12i.w $t0, -3
	ori $t0, $t0, 2244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2240
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2004, i32* %op477
	lu12i.w $t1, -1
	ori $t1, $t1, 1416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2005 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2006 = load i32, i32* %op477
	lu12i.w $t0, -1
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2007 = add i32 %op2005, %op2006
	lu12i.w $t0, -3
	ori $t0, $t0, 2232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2007, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2008 = load i32, i32* %op470
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2009 = add i32 %op2008, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 2220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2009, i32* %op470
	lu12i.w $t1, -1
	ori $t1, $t1, 1456
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2010 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2011 = load i32, i32* %op470
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2012 = add i32 %op2010, %op2011
	lu12i.w $t0, -3
	ori $t0, $t0, 2212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2012, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2013 = load i32, i32* %op464
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2014 = add i32 %op2013, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 2200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2014, i32* %op464
	lu12i.w $t1, -1
	ori $t1, $t1, 1488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2015 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2016 = load i32, i32* %op464
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2017 = add i32 %op2015, %op2016
	lu12i.w $t0, -3
	ori $t0, $t0, 2192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2017, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2018 = load i32, i32* %op458
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2019 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2020 = add i32 %op2018, %op2019
	lu12i.w $t0, -3
	ori $t0, $t0, 2180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2020, i32* %op458
	lu12i.w $t1, -1
	ori $t1, $t1, 1520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2021 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2022 = load i32, i32* %op458
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2023 = add i32 %op2021, %op2022
	lu12i.w $t0, -3
	ori $t0, $t0, 2168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2023, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2024 = load i32, i32* %op451
	lu12i.w $t0, -1
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2025 = add i32 %op2024, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2025, i32* %op451
	lu12i.w $t1, -1
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2026 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2027 = load i32, i32* %op451
	lu12i.w $t0, -1
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2028 = add i32 %op2026, %op2027
	lu12i.w $t0, -3
	ori $t0, $t0, 2148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2144
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2028, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2029 = load i32, i32* %op444
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2030 = add i32 %op2029, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2030, i32* %op444
	lu12i.w $t1, -1
	ori $t1, $t1, 1600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2031 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2032 = load i32, i32* %op444
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2033 = add i32 %op2031, %op2032
	lu12i.w $t0, -3
	ori $t0, $t0, 2128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2033, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2034 = load i32, i32* %op438
	lu12i.w $t0, -1
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2035 = add i32 %op2034, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 2116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2035, i32* %op438
	lu12i.w $t1, -1
	ori $t1, $t1, 1632
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2036 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2037 = load i32, i32* %op438
	lu12i.w $t0, -1
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2038 = add i32 %op2036, %op2037
	lu12i.w $t0, -3
	ori $t0, $t0, 2108
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2038, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2039 = load i32, i32* %op431
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2040 = add i32 %op2039, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2040, i32* %op431
	lu12i.w $t1, -1
	ori $t1, $t1, 1672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2041 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2042 = load i32, i32* %op431
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2043 = add i32 %op2041, %op2042
	lu12i.w $t0, -3
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2043, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2044 = load i32, i32* %op424
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2045 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2046 = add i32 %op2044, %op2045
	lu12i.w $t0, -3
	ori $t0, $t0, 2076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2046, i32* %op424
	lu12i.w $t1, -1
	ori $t1, $t1, 1712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2047 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2048 = load i32, i32* %op424
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2049 = add i32 %op2047, %op2048
	lu12i.w $t0, -3
	ori $t0, $t0, 2064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2060
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2049, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2050 = load i32, i32* %op418
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2051 = add i32 %op2050, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 2052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2051, i32* %op418
	lu12i.w $t1, -1
	ori $t1, $t1, 1744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2052 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2053 = load i32, i32* %op418
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2054 = add i32 %op2052, %op2053
	lu12i.w $t0, -3
	ori $t0, $t0, 2044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2054, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2055 = load i32, i32* %op411
	lu12i.w $t0, -1
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2056 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2057 = add i32 %op2055, %op2056
	lu12i.w $t0, -3
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2057, i32* %op411
	lu12i.w $t1, -1
	ori $t1, $t1, 1784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2058 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2059 = load i32, i32* %op411
	lu12i.w $t0, -1
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2060 = add i32 %op2058, %op2059
	lu12i.w $t0, -3
	ori $t0, $t0, 2020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2060, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 2012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2061 = load i32, i32* %op405
	lu12i.w $t0, -1
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2062 = add i32 %op2061, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2062, i32* %op405
	lu12i.w $t1, -1
	ori $t1, $t1, 1816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2063 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2064 = load i32, i32* %op405
	lu12i.w $t0, -1
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2065 = add i32 %op2063, %op2064
	lu12i.w $t0, -3
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2065, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2066 = load i32, i32* %op398
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2067 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2068 = add i32 %op2066, %op2067
	lu12i.w $t0, -3
	ori $t0, $t0, 1988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2068, i32* %op398
	lu12i.w $t1, -1
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2069 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2070 = load i32, i32* %op398
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2071 = add i32 %op2069, %op2070
	lu12i.w $t0, -3
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2071, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2072 = load i32, i32* %op392
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2073 = add i32 %op2072, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 1964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2073, i32* %op392
	lu12i.w $t1, -1
	ori $t1, $t1, 1888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2074 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2075 = load i32, i32* %op392
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2076 = add i32 %op2074, %op2075
	lu12i.w $t0, -3
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2076, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2077 = load i32, i32* %op385
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2078 = add i32 %op2077, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2078, i32* %op385
	lu12i.w $t1, -1
	ori $t1, $t1, 1928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2079 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2080 = load i32, i32* %op385
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2081 = add i32 %op2079, %op2080
	lu12i.w $t0, -3
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1932
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2081, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2082 = load i32, i32* %op378
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2083 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2084 = add i32 %op2082, %op2083
	lu12i.w $t0, -3
	ori $t0, $t0, 1924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2084, i32* %op378
	lu12i.w $t1, -1
	ori $t1, $t1, 1968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2085 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2086 = load i32, i32* %op378
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2087 = add i32 %op2085, %op2086
	lu12i.w $t0, -3
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2087, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2088 = load i32, i32* %op372
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2089 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2090 = add i32 %op2088, %op2089
	lu12i.w $t0, -3
	ori $t0, $t0, 1900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1896
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2090, i32* %op372
	lu12i.w $t1, -1
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2091 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2092 = load i32, i32* %op372
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2093 = add i32 %op2091, %op2092
	lu12i.w $t0, -3
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2093, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2094 = load i32, i32* %op365
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2095 = add i32 %op2094, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2095, i32* %op365
	lu12i.w $t1, -1
	ori $t1, $t1, 2040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.d $t1, $t1, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2096 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2097 = load i32, i32* %op365
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2098 = add i32 %op2096, %op2097
	lu12i.w $t0, -3
	ori $t0, $t0, 1868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2098, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2099 = load i32, i32* %op359
	ld.d $t0, $fp, -2024
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2100 = add i32 %op2099, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2100, i32* %op359
	ld.d $t1, $fp, -2024
	lu12i.w $t0, -3
	ori $t0, $t0, 1852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2101 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2102 = load i32, i32* %op359
	ld.d $t0, $fp, -2024
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2103 = add i32 %op2101, %op2102
	lu12i.w $t0, -3
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2103, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2104 = load i32, i32* %op353
	ld.d $t0, $fp, -1992
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2105 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2106 = add i32 %op2104, %op2105
	lu12i.w $t0, -3
	ori $t0, $t0, 1836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2106, i32* %op353
	ld.d $t1, $fp, -1992
	lu12i.w $t0, -3
	ori $t0, $t0, 1828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2107 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2108 = load i32, i32* %op353
	ld.d $t0, $fp, -1992
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2109 = add i32 %op2107, %op2108
	lu12i.w $t0, -3
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2109, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2110 = load i32, i32* %op346
	ld.d $t0, $fp, -1952
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2111 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2112 = add i32 %op2110, %op2111
	lu12i.w $t0, -3
	ori $t0, $t0, 1812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1808
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2112, i32* %op346
	ld.d $t1, $fp, -1952
	lu12i.w $t0, -3
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2113 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2114 = load i32, i32* %op346
	ld.d $t0, $fp, -1952
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2115 = add i32 %op2113, %op2114
	lu12i.w $t0, -3
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2115, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2116 = load i32, i32* %op339
	ld.d $t0, $fp, -1912
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2117 = add i32 %op2116, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 1788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2117, i32* %op339
	ld.d $t1, $fp, -1912
	lu12i.w $t0, -3
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2118 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2119 = load i32, i32* %op339
	ld.d $t0, $fp, -1912
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2120 = add i32 %op2118, %op2119
	lu12i.w $t0, -3
	ori $t0, $t0, 1780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1776
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2120, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2121 = load i32, i32* %op332
	ld.d $t0, $fp, -1872
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2122 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2123 = add i32 %op2121, %op2122
	lu12i.w $t0, -3
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2123, i32* %op332
	ld.d $t1, $fp, -1872
	lu12i.w $t0, -3
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2124 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2125 = load i32, i32* %op332
	ld.d $t0, $fp, -1872
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2126 = add i32 %op2124, %op2125
	lu12i.w $t0, -3
	ori $t0, $t0, 1756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1752
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2126, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2127 = load i32, i32* %op325
	ld.d $t0, $fp, -1832
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2128 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2129 = add i32 %op2127, %op2128
	lu12i.w $t0, -3
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2129, i32* %op325
	ld.d $t1, $fp, -1832
	lu12i.w $t0, -3
	ori $t0, $t0, 1736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2130 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2131 = load i32, i32* %op325
	ld.d $t0, $fp, -1832
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2132 = add i32 %op2130, %op2131
	lu12i.w $t0, -3
	ori $t0, $t0, 1732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2132, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2133 = load i32, i32* %op319
	ld.d $t0, $fp, -1800
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2134 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2135 = add i32 %op2133, %op2134
	lu12i.w $t0, -3
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2135, i32* %op319
	ld.d $t1, $fp, -1800
	lu12i.w $t0, -3
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2136 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2137 = load i32, i32* %op319
	ld.d $t0, $fp, -1800
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2138 = add i32 %op2136, %op2137
	lu12i.w $t0, -3
	ori $t0, $t0, 1708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1704
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2138, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2139 = load i32, i32* %op312
	ld.d $t0, $fp, -1760
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2140 = add i32 %op2139, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2140, i32* %op312
	ld.d $t1, $fp, -1760
	lu12i.w $t0, -3
	ori $t0, $t0, 1692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2141 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2142 = load i32, i32* %op312
	ld.d $t0, $fp, -1760
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2143 = add i32 %op2141, %op2142
	lu12i.w $t0, -3
	ori $t0, $t0, 1688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2143, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2144 = load i32, i32* %op306
	ld.d $t0, $fp, -1728
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2145 = add i32 %op2144, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 1676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2145, i32* %op306
	ld.d $t1, $fp, -1728
	lu12i.w $t0, -3
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2146 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2147 = load i32, i32* %op306
	ld.d $t0, $fp, -1728
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2148 = add i32 %op2146, %op2147
	lu12i.w $t0, -3
	ori $t0, $t0, 1668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2148, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2149 = load i32, i32* %op299
	ld.d $t0, $fp, -1688
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2150 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2151 = add i32 %op2149, %op2150
	lu12i.w $t0, -3
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2151, i32* %op299
	ld.d $t1, $fp, -1688
	lu12i.w $t0, -3
	ori $t0, $t0, 1648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2152 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2153 = load i32, i32* %op299
	ld.d $t0, $fp, -1688
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2154 = add i32 %op2152, %op2153
	lu12i.w $t0, -3
	ori $t0, $t0, 1644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2154, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2155 = load i32, i32* %op292
	ld.d $t0, $fp, -1648
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2156 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2157 = add i32 %op2155, %op2156
	lu12i.w $t0, -3
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2157, i32* %op292
	ld.d $t1, $fp, -1648
	lu12i.w $t0, -3
	ori $t0, $t0, 1624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2158 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2159 = load i32, i32* %op292
	ld.d $t0, $fp, -1648
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2160 = add i32 %op2158, %op2159
	lu12i.w $t0, -3
	ori $t0, $t0, 1620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2160, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2161 = load i32, i32* %op285
	ld.d $t0, $fp, -1608
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2162 = add i32 %op2161, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2162, i32* %op285
	ld.d $t1, $fp, -1608
	lu12i.w $t0, -3
	ori $t0, $t0, 1604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2163 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2164 = load i32, i32* %op285
	ld.d $t0, $fp, -1608
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2165 = add i32 %op2163, %op2164
	lu12i.w $t0, -3
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2165, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2166 = load i32, i32* %op278
	ld.d $t0, $fp, -1568
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2167 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2168 = add i32 %op2166, %op2167
	lu12i.w $t0, -3
	ori $t0, $t0, 1588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2168, i32* %op278
	ld.d $t1, $fp, -1568
	lu12i.w $t0, -3
	ori $t0, $t0, 1580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2169 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2170 = load i32, i32* %op278
	ld.d $t0, $fp, -1568
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2171 = add i32 %op2169, %op2170
	lu12i.w $t0, -3
	ori $t0, $t0, 1576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2171, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2172 = load i32, i32* %op272
	ld.d $t0, $fp, -1536
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2173 = add i32 %op2172, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2173, i32* %op272
	ld.d $t1, $fp, -1536
	lu12i.w $t0, -3
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2174 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2175 = load i32, i32* %op272
	ld.d $t0, $fp, -1536
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2176 = add i32 %op2174, %op2175
	lu12i.w $t0, -3
	ori $t0, $t0, 1556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1552
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2176, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2177 = load i32, i32* %op265
	ld.d $t0, $fp, -1496
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2178 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2179 = add i32 %op2177, %op2178
	lu12i.w $t0, -3
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2179, i32* %op265
	ld.d $t1, $fp, -1496
	lu12i.w $t0, -3
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2180 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2181 = load i32, i32* %op265
	ld.d $t0, $fp, -1496
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2182 = add i32 %op2180, %op2181
	lu12i.w $t0, -3
	ori $t0, $t0, 1532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2182, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2183 = load i32, i32* %op259
	ld.d $t0, $fp, -1464
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2184 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2185 = add i32 %op2183, %op2184
	lu12i.w $t0, -3
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2185, i32* %op259
	ld.d $t1, $fp, -1464
	lu12i.w $t0, -3
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2186 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2187 = load i32, i32* %op259
	ld.d $t0, $fp, -1464
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2188 = add i32 %op2186, %op2187
	lu12i.w $t0, -3
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2188, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2189 = load i32, i32* %op253
	ld.d $t0, $fp, -1432
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2190 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2191 = add i32 %op2189, %op2190
	lu12i.w $t0, -3
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2191, i32* %op253
	ld.d $t1, $fp, -1432
	lu12i.w $t0, -3
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2192 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2193 = load i32, i32* %op253
	ld.d $t0, $fp, -1432
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2194 = add i32 %op2192, %op2193
	lu12i.w $t0, -3
	ori $t0, $t0, 1484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2194, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2195 = load i32, i32* %op247
	ld.d $t0, $fp, -1400
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2196 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2197 = add i32 %op2195, %op2196
	lu12i.w $t0, -3
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2197, i32* %op247
	ld.d $t1, $fp, -1400
	lu12i.w $t0, -3
	ori $t0, $t0, 1464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2198 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2199 = load i32, i32* %op247
	ld.d $t0, $fp, -1400
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2200 = add i32 %op2198, %op2199
	lu12i.w $t0, -3
	ori $t0, $t0, 1460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1456
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2200, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1452
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2201 = load i32, i32* %op240
	ld.d $t0, $fp, -1360
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2202 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2203 = add i32 %op2201, %op2202
	lu12i.w $t0, -3
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2203, i32* %op240
	ld.d $t1, $fp, -1360
	lu12i.w $t0, -3
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2204 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2205 = load i32, i32* %op240
	ld.d $t0, $fp, -1360
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2206 = add i32 %op2204, %op2205
	lu12i.w $t0, -3
	ori $t0, $t0, 1436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2206, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2207 = load i32, i32* %op233
	ld.d $t0, $fp, -1320
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2208 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2209 = add i32 %op2207, %op2208
	lu12i.w $t0, -3
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2209, i32* %op233
	ld.d $t1, $fp, -1320
	lu12i.w $t0, -3
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2210 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2211 = load i32, i32* %op233
	ld.d $t0, $fp, -1320
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2212 = add i32 %op2210, %op2211
	lu12i.w $t0, -3
	ori $t0, $t0, 1412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2212, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2213 = load i32, i32* %op226
	ld.d $t0, $fp, -1280
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2214 = add i32 %op2213, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2214, i32* %op226
	ld.d $t1, $fp, -1280
	lu12i.w $t0, -3
	ori $t0, $t0, 1396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2215 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2216 = load i32, i32* %op226
	ld.d $t0, $fp, -1280
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2217 = add i32 %op2215, %op2216
	lu12i.w $t0, -3
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2217, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2218 = load i32, i32* %op219
	ld.d $t0, $fp, -1240
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2219 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2220 = add i32 %op2218, %op2219
	lu12i.w $t0, -3
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2220, i32* %op219
	ld.d $t1, $fp, -1240
	lu12i.w $t0, -3
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2221 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2222 = load i32, i32* %op219
	ld.d $t0, $fp, -1240
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2223 = add i32 %op2221, %op2222
	lu12i.w $t0, -3
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2223, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2224 = load i32, i32* %op213
	ld.d $t0, $fp, -1208
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2225 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2226 = add i32 %op2224, %op2225
	lu12i.w $t0, -3
	ori $t0, $t0, 1356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2226, i32* %op213
	ld.d $t1, $fp, -1208
	lu12i.w $t0, -3
	ori $t0, $t0, 1348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2227 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2228 = load i32, i32* %op213
	ld.d $t0, $fp, -1208
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2229 = add i32 %op2227, %op2228
	lu12i.w $t0, -3
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2229, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2230 = load i32, i32* %op207
	ld.d $t0, $fp, -1176
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2231 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2232 = add i32 %op2230, %op2231
	lu12i.w $t0, -3
	ori $t0, $t0, 1332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1328
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2232, i32* %op207
	ld.d $t1, $fp, -1176
	lu12i.w $t0, -3
	ori $t0, $t0, 1324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2233 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2234 = load i32, i32* %op207
	ld.d $t0, $fp, -1176
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2235 = add i32 %op2233, %op2234
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2235, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2236 = load i32, i32* %op200
	ld.d $t0, $fp, -1136
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2237 = add i32 %op2236, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 1308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2237, i32* %op200
	ld.d $t1, $fp, -1136
	lu12i.w $t0, -3
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2238 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2239 = load i32, i32* %op200
	ld.d $t0, $fp, -1136
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2240 = add i32 %op2238, %op2239
	lu12i.w $t0, -3
	ori $t0, $t0, 1300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2240, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2241 = load i32, i32* %op193
	ld.d $t0, $fp, -1096
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2242 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2243 = add i32 %op2241, %op2242
	lu12i.w $t0, -3
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2243, i32* %op193
	ld.d $t1, $fp, -1096
	lu12i.w $t0, -3
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2244 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2245 = load i32, i32* %op193
	ld.d $t0, $fp, -1096
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2246 = add i32 %op2244, %op2245
	lu12i.w $t0, -3
	ori $t0, $t0, 1276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2246, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2247 = load i32, i32* %op187
	ld.d $t0, $fp, -1064
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2248 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2249 = add i32 %op2247, %op2248
	lu12i.w $t0, -3
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2249, i32* %op187
	ld.d $t1, $fp, -1064
	lu12i.w $t0, -3
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2250 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2251 = load i32, i32* %op187
	ld.d $t0, $fp, -1064
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2252 = add i32 %op2250, %op2251
	lu12i.w $t0, -3
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2252, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2253 = load i32, i32* %op180
	ld.d $t0, $fp, -1024
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2254 = add i32 %op2253, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2254, i32* %op180
	ld.d $t1, $fp, -1024
	lu12i.w $t0, -3
	ori $t0, $t0, 1236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2255 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2256 = load i32, i32* %op180
	ld.d $t0, $fp, -1024
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2257 = add i32 %op2255, %op2256
	lu12i.w $t0, -3
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2257, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2258 = load i32, i32* %op174
	ld.d $t0, $fp, -992
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2259 = add i32 %op2258, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 1220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2259, i32* %op174
	ld.d $t1, $fp, -992
	lu12i.w $t0, -3
	ori $t0, $t0, 1216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2260 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2261 = load i32, i32* %op174
	ld.d $t0, $fp, -992
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2262 = add i32 %op2260, %op2261
	lu12i.w $t0, -3
	ori $t0, $t0, 1212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2262, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2263 = load i32, i32* %op167
	ld.d $t0, $fp, -952
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2264 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2265 = add i32 %op2263, %op2264
	lu12i.w $t0, -3
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2265, i32* %op167
	ld.d $t1, $fp, -952
	lu12i.w $t0, -3
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2266 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2267 = load i32, i32* %op167
	ld.d $t0, $fp, -952
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2268 = add i32 %op2266, %op2267
	lu12i.w $t0, -3
	ori $t0, $t0, 1188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1184
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2268, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2269 = load i32, i32* %op161
	ld.d $t0, $fp, -920
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2270 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2271 = add i32 %op2269, %op2270
	lu12i.w $t0, -3
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2271, i32* %op161
	ld.d $t1, $fp, -920
	lu12i.w $t0, -3
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2272 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2273 = load i32, i32* %op161
	ld.d $t0, $fp, -920
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2274 = add i32 %op2272, %op2273
	lu12i.w $t0, -3
	ori $t0, $t0, 1164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1160
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2274, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2275 = load i32, i32* %op155
	ld.d $t0, $fp, -888
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2276 = add i32 %op2275, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2276, i32* %op155
	ld.d $t1, $fp, -888
	lu12i.w $t0, -3
	ori $t0, $t0, 1148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2277 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2278 = load i32, i32* %op155
	ld.d $t0, $fp, -888
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2279 = add i32 %op2277, %op2278
	lu12i.w $t0, -3
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2279, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2280 = load i32, i32* %op148
	ld.d $t0, $fp, -848
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2281 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2282 = add i32 %op2280, %op2281
	lu12i.w $t0, -3
	ori $t0, $t0, 1132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1128
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2282, i32* %op148
	ld.d $t1, $fp, -848
	lu12i.w $t0, -3
	ori $t0, $t0, 1124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2283 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2284 = load i32, i32* %op148
	ld.d $t0, $fp, -848
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2285 = add i32 %op2283, %op2284
	lu12i.w $t0, -3
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2285, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2286 = load i32, i32* %op141
	ld.d $t0, $fp, -808
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2287 = add i32 %op2286, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1108
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2287, i32* %op141
	ld.d $t1, $fp, -808
	lu12i.w $t0, -3
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2288 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2289 = load i32, i32* %op141
	ld.d $t0, $fp, -808
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2290 = add i32 %op2288, %op2289
	lu12i.w $t0, -3
	ori $t0, $t0, 1100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1096
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2290, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2291 = load i32, i32* %op135
	ld.d $t0, $fp, -776
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2292 = add i32 %op2291, 3
	lu12i.w $t0, -3
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2292, i32* %op135
	ld.d $t1, $fp, -776
	lu12i.w $t0, -3
	ori $t0, $t0, 1084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2293 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2294 = load i32, i32* %op135
	ld.d $t0, $fp, -776
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2295 = add i32 %op2293, %op2294
	lu12i.w $t0, -3
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2295, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2296 = load i32, i32* %op129
	ld.d $t0, $fp, -744
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2297 = add i32 %op2296, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2297, i32* %op129
	ld.d $t1, $fp, -744
	lu12i.w $t0, -3
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2298 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2299 = load i32, i32* %op129
	ld.d $t0, $fp, -744
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2300 = add i32 %op2298, %op2299
	lu12i.w $t0, -3
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2300, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2301 = load i32, i32* %op122
	ld.d $t0, $fp, -704
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2302 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2303 = add i32 %op2301, %op2302
	lu12i.w $t0, -3
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2303, i32* %op122
	ld.d $t1, $fp, -704
	lu12i.w $t0, -3
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2304 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2305 = load i32, i32* %op122
	ld.d $t0, $fp, -704
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2306 = add i32 %op2304, %op2305
	lu12i.w $t0, -3
	ori $t0, $t0, 1036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2306, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2307 = load i32, i32* %op116
	ld.d $t0, $fp, -672
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2308 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2309 = add i32 %op2307, %op2308
	lu12i.w $t0, -3
	ori $t0, $t0, 1024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2309, i32* %op116
	ld.d $t1, $fp, -672
	lu12i.w $t0, -3
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2310 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2311 = load i32, i32* %op116
	ld.d $t0, $fp, -672
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2312 = add i32 %op2310, %op2311
	lu12i.w $t0, -3
	ori $t0, $t0, 1012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2312, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 1004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2313 = load i32, i32* %op109
	ld.d $t0, $fp, -632
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2314 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2315 = add i32 %op2313, %op2314
	lu12i.w $t0, -3
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2315, i32* %op109
	ld.d $t1, $fp, -632
	lu12i.w $t0, -3
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2316 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2317 = load i32, i32* %op109
	ld.d $t0, $fp, -632
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2318 = add i32 %op2316, %op2317
	lu12i.w $t0, -3
	ori $t0, $t0, 988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2318, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2319 = load i32, i32* %op103
	ld.d $t0, $fp, -600
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2320 = sub i32 0, 2
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2321 = add i32 %op2319, %op2320
	lu12i.w $t0, -3
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2321, i32* %op103
	ld.d $t1, $fp, -600
	lu12i.w $t0, -3
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2322 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2323 = load i32, i32* %op103
	ld.d $t0, $fp, -600
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2324 = add i32 %op2322, %op2323
	lu12i.w $t0, -3
	ori $t0, $t0, 964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2324, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2325 = load i32, i32* %op96
	ld.d $t0, $fp, -560
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2326 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2327 = add i32 %op2325, %op2326
	lu12i.w $t0, -3
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2327, i32* %op96
	ld.d $t1, $fp, -560
	lu12i.w $t0, -3
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2328 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2329 = load i32, i32* %op96
	ld.d $t0, $fp, -560
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2330 = add i32 %op2328, %op2329
	lu12i.w $t0, -3
	ori $t0, $t0, 940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2330, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2331 = load i32, i32* %op90
	ld.d $t0, $fp, -528
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2332 = add i32 %op2331, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2332, i32* %op90
	ld.d $t1, $fp, -528
	lu12i.w $t0, -3
	ori $t0, $t0, 924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2333 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2334 = load i32, i32* %op90
	ld.d $t0, $fp, -528
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2335 = add i32 %op2333, %op2334
	lu12i.w $t0, -3
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2335, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2336 = load i32, i32* %op83
	ld.d $t0, $fp, -488
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2337 = add i32 %op2336, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2337, i32* %op83
	ld.d $t1, $fp, -488
	lu12i.w $t0, -3
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2338 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2339 = load i32, i32* %op83
	ld.d $t0, $fp, -488
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2340 = add i32 %op2338, %op2339
	lu12i.w $t0, -3
	ori $t0, $t0, 900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 896
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2340, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2341 = load i32, i32* %op77
	ld.d $t0, $fp, -456
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2342 = add i32 %op2341, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2342, i32* %op77
	ld.d $t1, $fp, -456
	lu12i.w $t0, -3
	ori $t0, $t0, 884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2343 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2344 = load i32, i32* %op77
	ld.d $t0, $fp, -456
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2345 = add i32 %op2343, %op2344
	lu12i.w $t0, -3
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2345, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2346 = load i32, i32* %op71
	ld.d $t0, $fp, -424
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2347 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2348 = add i32 %op2346, %op2347
	lu12i.w $t0, -3
	ori $t0, $t0, 868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2348, i32* %op71
	ld.d $t1, $fp, -424
	lu12i.w $t0, -3
	ori $t0, $t0, 860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2349 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2350 = load i32, i32* %op71
	ld.d $t0, $fp, -424
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2351 = add i32 %op2349, %op2350
	lu12i.w $t0, -3
	ori $t0, $t0, 856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2351, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2352 = load i32, i32* %op65
	ld.d $t0, $fp, -392
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2353 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2354 = add i32 %op2352, %op2353
	lu12i.w $t0, -3
	ori $t0, $t0, 844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2354, i32* %op65
	ld.d $t1, $fp, -392
	lu12i.w $t0, -3
	ori $t0, $t0, 836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2355 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2356 = load i32, i32* %op65
	ld.d $t0, $fp, -392
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2357 = add i32 %op2355, %op2356
	lu12i.w $t0, -3
	ori $t0, $t0, 832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2357, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2358 = load i32, i32* %op58
	ld.d $t0, $fp, -352
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2359 = add i32 %op2358, 4
	lu12i.w $t0, -3
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2359, i32* %op58
	ld.d $t1, $fp, -352
	lu12i.w $t0, -3
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2360 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2361 = load i32, i32* %op58
	ld.d $t0, $fp, -352
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2362 = add i32 %op2360, %op2361
	lu12i.w $t0, -3
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 808
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2362, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2363 = load i32, i32* %op52
	ld.d $t0, $fp, -320
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2364 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2365 = add i32 %op2363, %op2364
	lu12i.w $t0, -3
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2365, i32* %op52
	ld.d $t1, $fp, -320
	lu12i.w $t0, -3
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2366 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2367 = load i32, i32* %op52
	ld.d $t0, $fp, -320
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2368 = add i32 %op2366, %op2367
	lu12i.w $t0, -3
	ori $t0, $t0, 788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2368, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2369 = load i32, i32* %op46
	ld.d $t0, $fp, -288
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2370 = add i32 %op2369, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2370, i32* %op46
	ld.d $t1, $fp, -288
	lu12i.w $t0, -3
	ori $t0, $t0, 772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2371 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2372 = load i32, i32* %op46
	ld.d $t0, $fp, -288
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2373 = add i32 %op2371, %op2372
	lu12i.w $t0, -3
	ori $t0, $t0, 768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2373, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2374 = load i32, i32* %op40
	ld.d $t0, $fp, -256
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2375 = sub i32 0, 4
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 4
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2376 = add i32 %op2374, %op2375
	lu12i.w $t0, -3
	ori $t0, $t0, 756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 752
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2376, i32* %op40
	ld.d $t1, $fp, -256
	lu12i.w $t0, -3
	ori $t0, $t0, 748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2377 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2378 = load i32, i32* %op40
	ld.d $t0, $fp, -256
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2379 = add i32 %op2377, %op2378
	lu12i.w $t0, -3
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2379, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2380 = load i32, i32* %op34
	ld.d $t0, $fp, -224
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2381 = sub i32 0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2382 = add i32 %op2380, %op2381
	lu12i.w $t0, -3
	ori $t0, $t0, 732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2382, i32* %op34
	ld.d $t1, $fp, -224
	lu12i.w $t0, -3
	ori $t0, $t0, 724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2383 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2384 = load i32, i32* %op34
	ld.d $t0, $fp, -224
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2385 = add i32 %op2383, %op2384
	lu12i.w $t0, -3
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2385, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2386 = load i32, i32* %op27
	ld.d $t0, $fp, -184
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2387 = add i32 %op2386, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2387, i32* %op27
	ld.d $t1, $fp, -184
	lu12i.w $t0, -3
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2388 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2389 = load i32, i32* %op27
	ld.d $t0, $fp, -184
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2390 = add i32 %op2388, %op2389
	lu12i.w $t0, -3
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 696
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2390, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2391 = load i32, i32* %op20
	ld.d $t0, $fp, -144
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2392 = sub i32 0, 3
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 3
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2393 = add i32 %op2391, %op2392
	lu12i.w $t0, -3
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2393, i32* %op20
	ld.d $t1, $fp, -144
	lu12i.w $t0, -3
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2394 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2395 = load i32, i32* %op20
	ld.d $t0, $fp, -144
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2396 = add i32 %op2394, %op2395
	lu12i.w $t0, -3
	ori $t0, $t0, 676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2396, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2397 = load i32, i32* %op14
	ld.d $t0, $fp, -112
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2398 = add i32 %op2397, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2398, i32* %op14
	ld.d $t1, $fp, -112
	lu12i.w $t0, -3
	ori $t0, $t0, 660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2399 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2400 = load i32, i32* %op14
	ld.d $t0, $fp, -112
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2401 = add i32 %op2399, %op2400
	lu12i.w $t0, -3
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2401, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2402 = load i32, i32* %op8
	ld.d $t0, $fp, -80
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2403 = add i32 %op2402, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2403, i32* %op8
	ld.d $t1, $fp, -80
	lu12i.w $t0, -3
	ori $t0, $t0, 640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2404 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2405 = load i32, i32* %op8
	ld.d $t0, $fp, -80
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2406 = add i32 %op2404, %op2405
	lu12i.w $t0, -3
	ori $t0, $t0, 636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 632
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2406, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2407 = load i32, i32* %op0
	ld.d $t0, $fp, -24
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2408 = sub i32 0, 5
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 5
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2409 = add i32 %op2407, %op2408
	lu12i.w $t0, -3
	ori $t0, $t0, 624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2409, i32* %op0
	ld.d $t1, $fp, -24
	lu12i.w $t0, -3
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2410 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2411 = load i32, i32* %op0
	ld.d $t0, $fp, -24
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2412 = add i32 %op2410, %op2411
	lu12i.w $t0, -3
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32 %op2412, i32* %op1
	ld.d $t1, $fp, -40
	lu12i.w $t0, -3
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	st.w $t0, $t1, 0
# %op2413 = load i32, i32* %op1
	ld.d $t0, $fp, -40
	ld.w $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# ret i32 %op2413
	lu12i.w $a0, -3
	ori $a0, $a0, 600
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b main_exit
main_exit:
	lu12i.w $t0, 2
	ori $t0, $t0, 3504
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
