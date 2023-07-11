; ModuleID = 'sysyc'
source_filename = "./10_break.sy"
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
  store i64 10, i64* %0
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %1 = load i64, i64* %0
  %2 = icmp sgt i64 %1, 0
  %3 = zext i1 %2 to i64
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %5 = load i64, i64* %0
  %6 = sub i64 %5, 1
  store i64 %6, i64* %0
  %7 = load i64, i64* %0
  %8 = icmp eq i64 %7, 5
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %condition_true, label %condition_cont

loop_cont:                                        ; preds = %condition_true, %loop_expression
  %11 = load i64, i64* %0
  ret i64 %11

condition_true:                                   ; preds = %loop_true
  br label %loop_cont

condition_cont:                                   ; preds = %loop_true
  br label %loop_expression
}
