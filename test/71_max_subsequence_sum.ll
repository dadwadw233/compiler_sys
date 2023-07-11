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
  br i1 %7, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 0

condition_cont:                                   ; preds = %entry
  %8 = load i64, i64* %3
  %9 = icmp eq i64 %8, 1
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %condition_cont
  %12 = load i64*, i64** %2
  %13 = getelementptr i64, i64* %12, i64 0
  %14 = load i64, i64* %13
  ret i64 %14

condition_cont2:                                  ; preds = %condition_cont
  %15 = alloca i64
  %16 = load i64*, i64** %2
  %17 = getelementptr i64, i64* %16, i64 0
  %18 = load i64, i64* %17
  store i64 %18, i64* %15
  %19 = alloca i64
  %20 = load i64, i64* %15
  store i64 %20, i64* %19
  %21 = alloca i64
  store i64 1, i64* %21
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont6, %condition_cont2
  %22 = load i64, i64* %21
  %23 = load i64, i64* %3
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %27 = load i64, i64* %15
  %28 = icmp slt i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %condition_true3, label %condition_cont4

loop_cont:                                        ; preds = %loop_expression
  %31 = load i64, i64* %19
  ret i64 %31

condition_true3:                                  ; preds = %loop_true
  store i64 0, i64* %15
  br label %condition_cont4

condition_cont4:                                  ; preds = %condition_true3, %loop_true
  %32 = load i64, i64* %15
  %33 = load i64*, i64** %2
  %34 = load i64, i64* %21
  %35 = getelementptr i64, i64* %33, i64 %34
  %36 = load i64, i64* %35
  %37 = add i64 %32, %36
  store i64 %37, i64* %15
  %38 = load i64, i64* %19
  %39 = load i64, i64* %15
  %40 = icmp slt i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %condition_true5, label %condition_cont6

condition_true5:                                  ; preds = %condition_cont4
  %43 = load i64, i64* %15
  store i64 %43, i64* %19
  br label %condition_cont6

condition_cont6:                                  ; preds = %condition_true5, %condition_cont4
  %44 = load i64, i64* %21
  %45 = add i64 %44, 1
  store i64 %45, i64* %21
  br label %loop_expression
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
