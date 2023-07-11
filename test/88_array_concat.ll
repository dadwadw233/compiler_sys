; ModuleID = 'sysyc'
source_filename = "./88_array_concat.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @concat(i64* %0, i64* %1, i64* %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64*
  store i64* %1, i64** %4
  %5 = alloca i64*
  store i64* %2, i64** %5
  %6 = alloca i64
  store i64 0, i64* %6
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %7 = load i64, i64* %6
  %8 = icmp slt i64 %7, 3
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %11 = load i64*, i64** %5
  %12 = load i64, i64* %6
  %13 = getelementptr i64, i64* %11, i64 %12
  %14 = load i64*, i64** %3
  %15 = load i64, i64* %6
  %16 = getelementptr i64, i64* %14, i64 %15
  %17 = load i64, i64* %16
  store i64 %17, i64* %13
  %18 = load i64, i64* %6
  %19 = add i64 %18, 1
  store i64 %19, i64* %6
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %20 = alloca i64
  store i64 0, i64* %20
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %21 = load i64, i64* %20
  %22 = icmp slt i64 %21, 3
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %25 = load i64*, i64** %5
  %26 = load i64, i64* %6
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64*, i64** %4
  %29 = load i64, i64* %20
  %30 = getelementptr i64, i64* %28, i64 %29
  %31 = load i64, i64* %30
  store i64 %31, i64* %27
  %32 = load i64, i64* %6
  %33 = add i64 %32, 1
  store i64 %33, i64* %6
  %34 = load i64, i64* %20
  %35 = add i64 %34, 1
  store i64 %35, i64* %20
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  ret i64 0
}

define i64 @main() {
entry:
  %0 = alloca [3 x i64]
  %1 = alloca [3 x i64]
  %2 = alloca [3 x i64]
  %3 = alloca [3 x i64]
  %4 = alloca [3 x i64]
  %5 = alloca [3 x i64]
  %6 = alloca [6 x i64]
  %7 = alloca [3 x i64]
  %8 = alloca [3 x i64]
  %9 = alloca i64
  store i64 0, i64* %9
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %10 = load i64, i64* %9
  %11 = icmp slt i64 %10, 3
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %14 = load i64, i64* %9
  %15 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 %14
  %16 = load i64, i64* %9
  store i64 %16, i64* %15
  %17 = load i64, i64* %9
  %18 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 %17
  %19 = load i64, i64* %9
  store i64 %19, i64* %18
  %20 = load i64, i64* %9
  %21 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 %20
  %22 = load i64, i64* %9
  store i64 %22, i64* %21
  %23 = load i64, i64* %9
  %24 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 %23
  %25 = load i64, i64* %9
  store i64 %25, i64* %24
  %26 = load i64, i64* %9
  %27 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 %26
  %28 = load i64, i64* %9
  store i64 %28, i64* %27
  %29 = load i64, i64* %9
  %30 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 %29
  %31 = load i64, i64* %9
  store i64 %31, i64* %30
  %32 = load i64, i64* %9
  %33 = add i64 %32, 1
  store i64 %33, i64* %9
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %34 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  %35 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %36 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %37 = call i64 @concat(i64* %34, i64* %35, i64* %36)
  store i64 %37, i64* %9
  %38 = alloca i64
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %39 = load i64, i64* %9
  %40 = icmp slt i64 %39, 6
  %41 = zext i1 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %43 = load i64, i64* %9
  %44 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 %43
  %45 = load i64, i64* %44
  store i64 %45, i64* %38
  %46 = load i64, i64* %38
  call void @putint(i64 %46)
  %47 = load i64, i64* %9
  %48 = add i64 %47, 1
  store i64 %48, i64* %9
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  store i64 10, i64* %38
  %49 = load i64, i64* %38
  call void @putch(i64 %49)
  ret i64 0
}
