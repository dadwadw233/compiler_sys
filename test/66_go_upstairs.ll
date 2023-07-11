; ModuleID = 'sysyc'
source_filename = "./66_go_upstairs.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @climbStairs(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp slt i64 %2, 4
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  %6 = load i64, i64* %1
  ret i64 %6

condition_cont:                                   ; preds = %entry
  %7 = alloca [10 x i64]
  %8 = getelementptr [10 x i64], [10 x i64]* %7, i64 0, i64 0
  store i64 0, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %7, i64 0, i64 1
  store i64 1, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %7, i64 0, i64 2
  store i64 2, i64* %10
  %11 = alloca i64
  store i64 3, i64* %11
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont
  %12 = load i64, i64* %11
  %13 = load i64, i64* %1
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %12, %14
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %18 = load i64, i64* %11
  %19 = getelementptr [10 x i64], [10 x i64]* %7, i64 0, i64 %18
  %20 = load i64, i64* %11
  %21 = sub i64 %20, 1
  %22 = getelementptr [10 x i64], [10 x i64]* %7, i64 0, i64 %21
  %23 = load i64, i64* %22
  %24 = load i64, i64* %11
  %25 = sub i64 %24, 2
  %26 = getelementptr [10 x i64], [10 x i64]* %7, i64 0, i64 %25
  %27 = load i64, i64* %26
  %28 = add i64 %23, %27
  store i64 %28, i64* %19
  %29 = load i64, i64* %11
  %30 = add i64 %29, 1
  store i64 %30, i64* %11
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %31 = load i64, i64* %1
  %32 = getelementptr [10 x i64], [10 x i64]* %7, i64 0, i64 %31
  %33 = load i64, i64* %32
  ret i64 %33
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  store i64 5, i64* %1
  %2 = load i64, i64* %1
  %3 = call i64 @climbStairs(i64 %2)
  store i64 %3, i64* %0
  %4 = load i64, i64* %0
  ret i64 %4
}
