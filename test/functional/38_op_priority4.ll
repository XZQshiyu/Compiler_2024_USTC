; ModuleID = 'cminus'
source_filename = "/home/innerpeace/Compiler_2024_USTC/test/functional/38_op_priority4.sy"

@a = global i32 0
@b = global i32 0
@c = global i32 0
@d = global i32 0
@e = global i32 0
declare i32 @getint()

declare i32 @getch()

declare float @getfloat()

declare i32 @getarray(i32*)

declare i32 @getfarray(float*)

declare void @putint(i32)

declare void @putch(i32)

declare void @putarray(i32, i32*)

declare void @putfloat(float)

declare void @putfarray(i32, float*)

declare void @before_main()

declare void @after_main()

declare void @_sysy_starttime(i32)

declare void @_sysy_stoptime(i32)

declare void @memset_int(i32*, i32)

declare void @memset_float(float*, i32)

define i32 @main() {
label_entry:
  %op0 = call i32 @getint()
  store i32 %op0, i32* @a
  %op1 = call i32 @getint()
  store i32 %op1, i32* @b
  %op2 = call i32 @getint()
  store i32 %op2, i32* @c
  %op3 = call i32 @getint()
  store i32 %op3, i32* @d
  %op4 = call i32 @getint()
  store i32 %op4, i32* @e
  %op6 = load i32, i32* @a
  %op7 = load i32, i32* @b
  %op8 = load i32, i32* @c
  %op9 = mul i32 %op7, %op8
  %op10 = sub i32 %op6, %op9
  %op11 = load i32, i32* @d
  %op12 = load i32, i32* @a
  %op13 = load i32, i32* @c
  %op14 = sdiv i32 %op12, %op13
  %op15 = sub i32 %op11, %op14
  %op16 = icmp ne i32 %op10, %op15
  br i1 %op16, label %label17, label %label30
label17:                                                ; preds = %label_entry, %label30, %label20
  br label %label18
label18:                                                ; preds = %label20, %label17
  %op40 = phi i32 [ 1, %label17 ], [ 0, %label20 ]
  ret i32 %op40
label20:                                                ; preds = %label30
  %op21 = load i32, i32* @a
  %op22 = load i32, i32* @b
  %op23 = add i32 %op21, %op22
  %op24 = load i32, i32* @c
  %op25 = add i32 %op23, %op24
  %op26 = load i32, i32* @d
  %op27 = load i32, i32* @e
  %op28 = add i32 %op26, %op27
  %op29 = icmp eq i32 %op25, %op28
  br i1 %op29, label %label17, label %label18
label30:                                                ; preds = %label_entry
  %op31 = load i32, i32* @a
  %op32 = load i32, i32* @b
  %op33 = mul i32 %op31, %op32
  %op34 = load i32, i32* @c
  %op35 = sdiv i32 %op33, %op34
  %op36 = load i32, i32* @e
  %op37 = load i32, i32* @d
  %op38 = add i32 %op36, %op37
  %op39 = icmp eq i32 %op35, %op38
  br i1 %op39, label %label17, label %label20
}
