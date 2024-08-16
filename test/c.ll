--- a.ll	2024-08-13 14:19:03.671783500 +0800
+++ b.ll	2024-08-13 14:19:36.999920853 +0800
@@ -220,8 +220,8 @@
   %op110 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
   %op111 = load i32, i32* %op110
   %op112 = icmp ne i32 %op111, 0
-  br i1 %op112, label %label166, label %label169
-label113:                                                ; preds = %label103, %label161
+  br i1 %op112, label %label159, label %label162
+label113:                                                ; preds = %label103, %label154
   %op114 = load i32, i32* %op1
   %op115 = sub i32 0, 1
   %op116 = icmp sgt i32 %op114, %op115
@@ -239,7 +239,7 @@
   store i32 %op126, i32* %op4
   %op127 = load i32, i32* %op4
   %op128 = icmp sge i32 %op127, 10
-  br i1 %op128, label %label136, label %label157
+  br i1 %op128, label %label136, label %label150
 label129:                                                ; preds = %label113
   %op130 = load i32, i32* %op3
   %op131 = load i32, i32* %op49
@@ -260,59 +260,52 @@
   %op142 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op141
   %op143 = load i32, i32* %op142
   %op144 = load i32, i32* %op4
-  %op145 = zext i32 %op144 to i64
-  %op146 = mul i64 %op145, -858993459
-  %op147 = ashr i64 %op146, 32
-  %op148 = trunc i64 %op147 to i32
-  %op149 = add i32 %op144, %op148
-  %op150 = ashr i32 %op149, 3
-  %op151 = shl i32 %op144, 31
-  %op152 = add i32 %op150, %op151
-  %op153 = add i32 %op143, %op152
-  %op154 = load i32, i32* %op3
-  %op155 = sub i32 %op154, 1
-  %op156 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op155
-  store i32 %op153, i32* %op156
-  br label %label161
-label157:                                                ; preds = %label117
-  %op158 = load i32, i32* %op4
-  %op159 = load i32, i32* %op3
-  %op160 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op159
-  store i32 %op158, i32* %op160
-  br label %label161
-label161:                                                ; preds = %label136, %label157
-  %op162 = load i32, i32* %op1
-  %op163 = sub i32 %op162, 1
-  store i32 %op163, i32* %op1
-  %op164 = load i32, i32* %op3
-  %op165 = sub i32 %op164, 1
-  store i32 %op165, i32* %op3
+  %op145 = sdiv i32 %op144, 10
+  %op146 = add i32 %op143, %op145
+  %op147 = load i32, i32* %op3
+  %op148 = sub i32 %op147, 1
+  %op149 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op148
+  store i32 %op146, i32* %op149
+  br label %label154
+label150:                                                ; preds = %label117
+  %op151 = load i32, i32* %op4
+  %op152 = load i32, i32* %op3
+  %op153 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op152
+  store i32 %op151, i32* %op153
+  br label %label154
+label154:                                                ; preds = %label136, %label150
+  %op155 = load i32, i32* %op1
+  %op156 = sub i32 %op155, 1
+  store i32 %op156, i32* %op1
+  %op157 = load i32, i32* %op3
+  %op158 = sub i32 %op157, 1
+  store i32 %op158, i32* %op3
   br label %label113
-label166:                                                ; preds = %label109
-  %op167 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
-  %op168 = load i32, i32* %op167
-  call void @putint(i32 %op168)
-  br label %label169
-label169:                                                ; preds = %label109, %label166
+label159:                                                ; preds = %label109
+  %op160 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
+  %op161 = load i32, i32* %op160
+  call void @putint(i32 %op161)
+  br label %label162
+label162:                                                ; preds = %label109, %label159
   store i32 1, i32* %op0
-  br label %label170
-label170:                                                ; preds = %label169, %label177
+  br label %label163
+label163:                                                ; preds = %label162, %label170
+  %op164 = load i32, i32* %op0
+  %op165 = load i32, i32* %op49
+  %op166 = load i32, i32* %op51
+  %op167 = add i32 %op165, %op166
+  %op168 = sub i32 %op167, 1
+  %op169 = icmp sle i32 %op164, %op168
+  br i1 %op169, label %label170, label %label176
+label170:                                                ; preds = %label163
   %op171 = load i32, i32* %op0
-  %op172 = load i32, i32* %op49
-  %op173 = load i32, i32* %op51
-  %op174 = add i32 %op172, %op173
-  %op175 = sub i32 %op174, 1
-  %op176 = icmp sle i32 %op171, %op175
-  br i1 %op176, label %label177, label %label183
-label177:                                                ; preds = %label170
-  %op178 = load i32, i32* %op0
-  %op179 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op178
-  %op180 = load i32, i32* %op179
-  call void @putint(i32 %op180)
-  %op181 = load i32, i32* %op0
-  %op182 = add i32 %op181, 1
-  store i32 %op182, i32* %op0
-  br label %label170
-label183:                                                ; preds = %label170
+  %op172 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op171
+  %op173 = load i32, i32* %op172
+  call void @putint(i32 %op173)
+  %op174 = load i32, i32* %op0
+  %op175 = add i32 %op174, 1
+  store i32 %op175, i32* %op0
+  br label %label163
+label176:                                                ; preds = %label163
   ret i32 0
 }
--- a.ll	2024-08-13 14:19:03.671783500 +0800
+++ b.ll	2024-08-13 14:19:36.999920853 +0800
@@ -220,8 +220,8 @@
   %op110 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
   %op111 = load i32, i32* %op110
   %op112 = icmp ne i32 %op111, 0
-  br i1 %op112, label %label166, label %label169
-label113:                                                ; preds = %label103, %label161
+  br i1 %op112, label %label159, label %label162
+label113:                                                ; preds = %label103, %label154
   %op114 = load i32, i32* %op1
   %op115 = sub i32 0, 1
   %op116 = icmp sgt i32 %op114, %op115
@@ -239,7 +239,7 @@
   store i32 %op126, i32* %op4
   %op127 = load i32, i32* %op4
   %op128 = icmp sge i32 %op127, 10
-  br i1 %op128, label %label136, label %label157
+  br i1 %op128, label %label136, label %label150
 label129:                                                ; preds = %label113
   %op130 = load i32, i32* %op3
   %op131 = load i32, i32* %op49
@@ -260,59 +260,52 @@
   %op142 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op141
   %op143 = load i32, i32* %op142
   %op144 = load i32, i32* %op4
-  %op145 = zext i32 %op144 to i64
-  %op146 = mul i64 %op145, -858993459
-  %op147 = ashr i64 %op146, 32
-  %op148 = trunc i64 %op147 to i32
-  %op149 = add i32 %op144, %op148
-  %op150 = ashr i32 %op149, 3
-  %op151 = shl i32 %op144, 31
-  %op152 = add i32 %op150, %op151
-  %op153 = add i32 %op143, %op152
-  %op154 = load i32, i32* %op3
-  %op155 = sub i32 %op154, 1
-  %op156 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op155
-  store i32 %op153, i32* %op156
-  br label %label161
-label157:                                                ; preds = %label117
-  %op158 = load i32, i32* %op4
-  %op159 = load i32, i32* %op3
-  %op160 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op159
-  store i32 %op158, i32* %op160
-  br label %label161
-label161:                                                ; preds = %label136, %label157
-  %op162 = load i32, i32* %op1
-  %op163 = sub i32 %op162, 1
-  store i32 %op163, i32* %op1
-  %op164 = load i32, i32* %op3
-  %op165 = sub i32 %op164, 1
-  store i32 %op165, i32* %op3
+  %op145 = sdiv i32 %op144, 10
+  %op146 = add i32 %op143, %op145
+  %op147 = load i32, i32* %op3
+  %op148 = sub i32 %op147, 1
+  %op149 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op148
+  store i32 %op146, i32* %op149
+  br label %label154
+label150:                                                ; preds = %label117
+  %op151 = load i32, i32* %op4
+  %op152 = load i32, i32* %op3
+  %op153 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op152
+  store i32 %op151, i32* %op153
+  br label %label154
+label154:                                                ; preds = %label136, %label150
+  %op155 = load i32, i32* %op1
+  %op156 = sub i32 %op155, 1
+  store i32 %op156, i32* %op1
+  %op157 = load i32, i32* %op3
+  %op158 = sub i32 %op157, 1
+  store i32 %op158, i32* %op3
   br label %label113
-label166:                                                ; preds = %label109
-  %op167 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
-  %op168 = load i32, i32* %op167
-  call void @putint(i32 %op168)
-  br label %label169
-label169:                                                ; preds = %label109, %label166
+label159:                                                ; preds = %label109
+  %op160 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 0
+  %op161 = load i32, i32* %op160
+  call void @putint(i32 %op161)
+  br label %label162
+label162:                                                ; preds = %label109, %label159
   store i32 1, i32* %op0
-  br label %label170
-label170:                                                ; preds = %label169, %label177
+  br label %label163
+label163:                                                ; preds = %label162, %label170
+  %op164 = load i32, i32* %op0
+  %op165 = load i32, i32* %op49
+  %op166 = load i32, i32* %op51
+  %op167 = add i32 %op165, %op166
+  %op168 = sub i32 %op167, 1
+  %op169 = icmp sle i32 %op164, %op168
+  br i1 %op169, label %label170, label %label176
+label170:                                                ; preds = %label163
   %op171 = load i32, i32* %op0
-  %op172 = load i32, i32* %op49
-  %op173 = load i32, i32* %op51
-  %op174 = add i32 %op172, %op173
-  %op175 = sub i32 %op174, 1
-  %op176 = icmp sle i32 %op171, %op175
-  br i1 %op176, label %label177, label %label183
-label177:                                                ; preds = %label170
-  %op178 = load i32, i32* %op0
-  %op179 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op178
-  %op180 = load i32, i32* %op179
-  call void @putint(i32 %op180)
-  %op181 = load i32, i32* %op0
-  %op182 = add i32 %op181, 1
-  store i32 %op182, i32* %op0
-  br label %label170
-label183:                                                ; preds = %label170
+  %op172 = getelementptr [40 x i32], [40 x i32]* %op55, i32 0, i32 %op171
+  %op173 = load i32, i32* %op172
+  call void @putint(i32 %op173)
+  %op174 = load i32, i32* %op0
+  %op175 = add i32 %op174, 1
+  store i32 %op175, i32* %op0
+  br label %label163
+label176:                                                ; preds = %label163
   ret i32 0
 }
