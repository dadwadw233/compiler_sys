; ModuleID = 'sysyc'
source_filename = "./70_multi.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  store i64 0, i64* %1
  store i64 0, i64* %0
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %2 = load i64, i64* %0
  %3 = icmp slt i64 %2, 21
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %6 = load i64, i64* %1
  %7 = load i64, i64* %0
  %8 = mul i64 %6, %7
  store i64 %8, i64* %1
  %9 = load i64, i64* %0
  %10 = add i64 %9, 1
  store i64 %10, i64* %0
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %11 = load i64, i64* %1
  call void @putint(i64 %11)
  ret i64 0
}
