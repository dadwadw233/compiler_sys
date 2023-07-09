; ModuleID = 'sysyc'
source_filename = "./17_less_eq.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 5
@1 = global [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9]

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 0, i32* %0
  br label %1

1:                                                ; preds = %9, %entry
  %2 = load i32, i32* %0
  %3 = getelementptr [10 x i32], [10 x i32]* @1, i32 0, i32 %2
  %4 = load i32, i32* %3
  %5 = load i32, i32* @0
  %6 = icmp sle i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %0
  %11 = add i32 %10, 1
  store i32 %11, i32* %0
  br label %1

12:                                               ; preds = %1
  %13 = load i32, i32* %0
  ret i32 %13
}
