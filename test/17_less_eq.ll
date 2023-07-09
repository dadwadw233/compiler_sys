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
  br label %1

1:                                                ; preds = %9, %entry
  %2 = load i64, i64* %0
  %3 = getelementptr [10 x i64], [10 x i64]* @1, i64 0, i64 %2
  %4 = load i64, i64* %3
  %5 = load i64, i64* @0
  %6 = icmp sle i64 %4, %5
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* %0
  %11 = add i64 %10, 1
  store i64 %11, i64* %0
  br label %1

12:                                               ; preds = %1
  %13 = load i64, i64* %0
  ret i64 %13
}
