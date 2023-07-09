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
  br i1 %5, label %6, label %8

6:                                                ; preds = %entry
  %7 = load i64, i64* %1
  ret i64 %7

8:                                                ; preds = %entry
  %9 = alloca [10 x i64]
  %10 = getelementptr [10 x i64], [10 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %10
  %11 = getelementptr [10 x i64], [10 x i64]* %9, i64 0, i64 1
  store i64 1, i64* %11
  %12 = getelementptr [10 x i64], [10 x i64]* %9, i64 0, i64 2
  store i64 2, i64* %12
  %13 = alloca i64
  store i64 3, i64* %13
  br label %14

14:                                               ; preds = %21, %8
  %15 = load i64, i64* %13
  %16 = load i64, i64* %1
  %17 = add i64 %16, 1
  %18 = icmp slt i64 %15, %17
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i64, i64* %13
  %23 = getelementptr [10 x i64], [10 x i64]* %9, i64 0, i64 %22
  %24 = load i64, i64* %13
  %25 = sub i64 %24, 1
  %26 = getelementptr [10 x i64], [10 x i64]* %9, i64 0, i64 %25
  %27 = load i64, i64* %26
  %28 = load i64, i64* %13
  %29 = sub i64 %28, 2
  %30 = getelementptr [10 x i64], [10 x i64]* %9, i64 0, i64 %29
  %31 = load i64, i64* %30
  %32 = add i64 %27, %31
  store i64 %32, i64* %23
  %33 = load i64, i64* %13
  %34 = add i64 %33, 1
  store i64 %34, i64* %13
  br label %14

35:                                               ; preds = %14
  %36 = load i64, i64* %1
  %37 = getelementptr [10 x i64], [10 x i64]* %9, i64 0, i64 %36
  %38 = load i64, i64* %37
  ret i64 %38
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
