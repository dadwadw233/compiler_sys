; ModuleID = 'sysyc'
source_filename = "./17_less_eq.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 5
@1 = global [10 x i64] [i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 0, i64* %0
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %1 = load i64, i64* %0
  %2 = getelementptr [10 x i64], [10 x i64]* @1, i64 0, i64 %1
  %3 = load i64, i64* %2
  %4 = load i64, i64* @0
  %5 = icmp sle i64 %3, %4
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %8 = load i64, i64* %0
  %9 = add i64 %8, 1
  store i64 %9, i64* %0
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %10 = load i64, i64* %0
  ret i64 %10
}
