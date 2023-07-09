; ModuleID = 'sysyc'
source_filename = "./71_max_subsequence_sum.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @maxSubArray(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = load i32, i32* %3
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %entry
  ret i32 0

9:                                                ; preds = %entry
  %10 = load i32, i32* %3
  %11 = icmp eq i32 %10, 1
  %12 = zext i1 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32*, i32** %2
  %16 = getelementptr i32, i32* %15, i32 0
  %17 = load i32, i32* %16
  ret i32 %17

18:                                               ; preds = %9
  %19 = alloca i32
  %20 = load i32*, i32** %2
  %21 = getelementptr i32, i32* %20, i32 0
  %22 = load i32, i32* %21
  store i32 %22, i32* %19
  %23 = alloca i32
  %24 = load i32, i32* %19
  store i32 %24, i32* %23
  %25 = alloca i32
  store i32 1, i32* %25
  br label %26

26:                                               ; preds = %54, %18
  %27 = load i32, i32* %25
  %28 = load i32, i32* %3
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %19
  %34 = icmp slt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %23
  ret i32 %38

39:                                               ; preds = %32
  store i32 0, i32* %19
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %19
  %42 = load i32*, i32** %2
  %43 = load i32, i32* %25
  %44 = getelementptr i32, i32* %42, i32 %43
  %45 = load i32, i32* %44
  %46 = add i32 %41, %45
  store i32 %46, i32* %19
  %47 = load i32, i32* %23
  %48 = load i32, i32* %19
  %49 = icmp slt i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %19
  store i32 %53, i32* %23
  br label %54

54:                                               ; preds = %52, %40
  %55 = load i32, i32* %25
  %56 = add i32 %55, 1
  store i32 %56, i32* %25
  br label %26
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca [10 x i32]
  %2 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  store i32 -4, i32* %2
  %3 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 1
  store i32 3, i32* %3
  %4 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 2
  store i32 9, i32* %4
  %5 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 3
  store i32 -2, i32* %5
  %6 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 4
  store i32 0, i32* %6
  %7 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 5
  store i32 1, i32* %7
  %8 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 6
  store i32 -6, i32* %8
  %9 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 7
  store i32 5, i32* %9
  %10 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 8
  store i32 7, i32* %10
  %11 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 9
  store i32 8, i32* %11
  store i32 10, i32* %0
  %12 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  %13 = load i32, i32* %0
  %14 = call i32 @maxSubArray(i32* %12, i32 %13)
  store i32 %14, i32* %0
  %15 = load i32, i32* %0
  ret i32 %15
}
