; ModuleID = 'sysy'
source_filename = "/home/innerpeace/Compiler_2024_USTC/test/functional/26_while_test1.sy"

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

define i32 @doubleWhile() {
label_entry:
  br label %label2
label2:                                                ; preds = %label_entry, %label16
  %op19 = phi i32 [ 7, %label_entry ], [ %op18, %label16 ]
  %op20 = phi i32 [ 5, %label_entry ], [ %op7, %label16 ]
  %op4 = icmp slt i32 %op20, 100
  br i1 %op4, label %label5, label %label8
label5:                                                ; preds = %label2
  %op7 = add i32 %op20, 30
  br label %label10
label8:                                                ; preds = %label2
  ret i32 %op19
label10:                                                ; preds = %label5, %label13
  %op21 = phi i32 [ %op19, %label5 ], [ %op15, %label13 ]
  %op12 = icmp slt i32 %op21, 100
  br i1 %op12, label %label13, label %label16
label13:                                                ; preds = %label10
  %op15 = add i32 %op21, 6
  br label %label10
label16:                                                ; preds = %label10
  %op18 = sub i32 %op21, 100
  br label %label2
}
define i32 @main() {
label_entry:
  %op0 = call i32 @doubleWhile()
  ret i32 %op0
}
