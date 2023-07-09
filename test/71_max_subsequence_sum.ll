; ModuleID = 'sysyc'
source_filename = "./71_max_subsequence_sum.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @maxSubArray(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = load i64, i64* %3
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %entry
  ret i64 0

9:                                                ; preds = %entry
  %10 = load i64, i64* %3
  %11 = icmp eq i64 %10, 1
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i64*, i64** %2
  %16 = getelementptr i64, i64* %15, i64 0
  %17 = load i64, i64* %16
  ret i64 %17

18:                                               ; preds = %9
  %19 = alloca i64
  %20 = load i64*, i64** %2
  %21 = getelementptr i64, i64* %20, i64 0
  %22 = load i64, i64* %21
  store i64 %22, i64* %19
  %23 = alloca i64
  %24 = load i64, i64* %19
  store i64 %24, i64* %23
  %25 = alloca i64
  store i64 1, i64* %25
  br label %26

26:                                               ; preds = %54, %18
  %27 = load i64, i64* %25
  %28 = load i64, i64* %3
  %29 = icmp slt i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i64, i64* %19
  %34 = icmp slt i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %40

37:                                               ; preds = %26
  %38 = load i64, i64* %23
  ret i64 %38

39:                                               ; preds = %32
  store i64 0, i64* %19
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i64, i64* %19
  %42 = load i64*, i64** %2
  %43 = load i64, i64* %25
  %44 = getelementptr i64, i64* %42, i64 %43
  %45 = load i64, i64* %44
  %46 = add i64 %41, %45
  store i64 %46, i64* %19
  %47 = load i64, i64* %23
  %48 = load i64, i64* %19
  %49 = icmp slt i64 %47, %48
  %50 = zext i1 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i64, i64* %19
  store i64 %53, i64* %23
  br label %54

54:                                               ; preds = %52, %40
  %55 = load i64, i64* %25
  %56 = add i64 %55, 1
  store i64 %56, i64* %25
  br label %26
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca [10 x i64]
  %2 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  store i64 -4, i64* %2
  %3 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 1
  store i64 3, i64* %3
  %4 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 2
  store i64 9, i64* %4
  %5 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 3
  store i64 -2, i64* %5
  %6 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 4
  store i64 0, i64* %6
  %7 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 5
  store i64 1, i64* %7
  %8 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 6
  store i64 -6, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 7
  store i64 5, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 8
  store i64 7, i64* %10
  %11 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 9
  store i64 8, i64* %11
  store i64 10, i64* %0
  %12 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %13 = load i64, i64* %0
  %14 = call i64 @maxSubArray(i64* %12, i64 %13)
  store i64 %14, i64* %0
  %15 = load i64, i64* %0
  ret i64 %15
}
