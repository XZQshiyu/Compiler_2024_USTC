; ModuleID = 'sysy'
source_filename = "/home/innerpeace/Compiler_2024_USTC/test/functional/25_while_if.sy"

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

define i32 @get_one(i32 %arg0) {
label_entry:
  ret i32 1
}
define i32 @deepWhileBr(i32 %arg0, i32 %arg1) {
label_entry:
  %op7 = add i32 %arg0, %arg1
  %op27 = mul i32 42, 2
  %op33 = mul i32 %op27, 2
  br label %label8
label8:                                                ; preds = %label_entry, %label23
  %op37 = phi i32 [ %op7, %label_entry ], [ %op39, %label23 ]
  %op10 = icmp slt i32 %op37, 75
  br i1 %op10, label %label11, label %label15
label11:                                                ; preds = %label8
  %op14 = icmp slt i32 %op37, 100
  br i1 %op14, label %label17, label %label23
label15:                                                ; preds = %label8
  ret i32 %op37
label17:                                                ; preds = %label11
  %op20 = add i32 %op37, 42
  %op22 = icmp sgt i32 %op20, 99
  br i1 %op22, label %label24, label %label30
label23:                                                ; preds = %label11, %label30
  %op39 = phi i32 [ %op37, %label11 ], [ %op41, %label30 ]
  br label %label8
label24:                                                ; preds = %label17
  %op28 = call i32 @get_one(i32 0)
  %op29 = icmp eq i32 %op28, 1
  br i1 %op29, label %label31, label %label34
label30:                                                ; preds = %label17, %label34
  %op41 = phi i32 [ %op20, %label17 ], [ %op42, %label34 ]
  br label %label23
label31:                                                ; preds = %label24
  br label %label34
label34:                                                ; preds = %label24, %label31
  %op42 = phi i32 [ %op20, %label24 ], [ %op33, %label31 ]
  br label %label30
}
define i32 @main() {
label_entry:
  %op3 = call i32 @deepWhileBr(i32 2, i32 2)
  call void @putint(i32 %op3)
  ret i32 0
}
