; ModuleID = 'sysyc'
source_filename = "./66_go_upstairs.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @climbStairs(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = load i32, i32* %1
  %3 = icmp slt i32 %2, 4
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %entry
  %7 = load i32, i32* %1
  ret i32 %7

8:                                                ; preds = %entry
  %9 = alloca [10 x i32]
  %10 = getelementptr [10 x i32], [10 x i32]* %9, i32 0, i32 0
  store i32 0, i32* %10
  %11 = getelementptr [10 x i32], [10 x i32]* %9, i32 0, i32 1
  store i32 1, i32* %11
  %12 = getelementptr [10 x i32], [10 x i32]* %9, i32 0, i32 2
  store i32 2, i32* %12
  %13 = alloca i32
  store i32 3, i32* %13
  br label %14

14:                                               ; preds = %21, %8
  %15 = load i32, i32* %13
  %16 = load i32, i32* %1
  %17 = add i32 %16, 1
  %18 = icmp slt i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load i32, i32* %13
  %23 = getelementptr [10 x i32], [10 x i32]* %9, i32 0, i32 %22
  %24 = load i32, i32* %13
  %25 = sub i32 %24, 1
  %26 = getelementptr [10 x i32], [10 x i32]* %9, i32 0, i32 %25
  %27 = load i32, i32* %26
  %28 = load i32, i32* %13
  %29 = sub i32 %28, 2
  %30 = getelementptr [10 x i32], [10 x i32]* %9, i32 0, i32 %29
  %31 = load i32, i32* %30
  %32 = add i32 %27, %31
  store i32 %32, i32* %23
  %33 = load i32, i32* %13
  %34 = add i32 %33, 1
  store i32 %34, i32* %13
  br label %14

35:                                               ; preds = %14
  %36 = load i32, i32* %1
  %37 = getelementptr [10 x i32], [10 x i32]* %9, i32 0, i32 %36
  %38 = load i32, i32* %37
  ret i32 %38
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  store i32 5, i32* %1
  %2 = load i32, i32* %1
  %3 = call i32 @climbStairs(i32 %2)
  store i32 %3, i32* %0
  %4 = load i32, i32* %0
  ret i32 %4
}
