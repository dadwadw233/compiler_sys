; ModuleID = 'sysyc'
source_filename = "./11_continue.sy"
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

loop_expression:                                  ; preds = %condition_true, %entry
  %1 = load i64, i64* %0
  %2 = icmp sgt i64 %1, 0
  %3 = zext i1 %2 to i64
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %5 = load i64, i64* %0
  %6 = icmp sgt i64 %5, 5
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %condition_true, label %condition_cont

loop_cont:                                        ; preds = %loop_expression
  %9 = load i64, i64* %0
  ret i64 %9

condition_true:                                   ; preds = %loop_true
  %10 = load i64, i64* %0
  %11 = sub i64 %10, 1
  store i64 %11, i64* %0
  br label %loop_expression

condition_cont:                                   ; preds = %loop_true
  %12 = load i64, i64* %0
  ret i64 %12
}
