; ModuleID = 'sysyc'
source_filename = "./54_sort_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @insertsort(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  store i64 1, i64* %2
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %3 = load i64, i64* %2
  %4 = load i64, i64* @0
  %5 = icmp slt i64 %3, %4
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %8 = alloca i64
  %9 = load i64*, i64** %1
  %10 = load i64, i64* %2
  %11 = getelementptr i64, i64* %9, i64 %10
  %12 = load i64, i64* %11
  store i64 %12, i64* %8
  %13 = alloca i64
  %14 = load i64, i64* %2
  %15 = sub i64 %14, 1
  store i64 %15, i64* %13
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  ret i64 0

loop_expression1:                                 ; preds = %loop_true2, %loop_true
  %16 = load i64, i64* %13
  %17 = icmp sgt i64 %16, -1
  %18 = zext i1 %17 to i64
  %19 = icmp ne i64 %18, 0
  %20 = load i64, i64* %8
  %21 = load i64*, i64** %1
  %22 = load i64, i64* %13
  %23 = getelementptr i64, i64* %21, i64 %22
  %24 = load i64, i64* %23
  %25 = icmp slt i64 %20, %24
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  %28 = and i1 %19, %27
  br i1 %28, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %29 = load i64*, i64** %1
  %30 = load i64, i64* %13
  %31 = add i64 %30, 1
  %32 = getelementptr i64, i64* %29, i64 %31
  %33 = load i64*, i64** %1
  %34 = load i64, i64* %13
  %35 = getelementptr i64, i64* %33, i64 %34
  %36 = load i64, i64* %35
  store i64 %36, i64* %32
  %37 = load i64, i64* %13
  %38 = sub i64 %37, 1
  store i64 %38, i64* %13
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  %39 = load i64*, i64** %1
  %40 = load i64, i64* %13
  %41 = add i64 %40, 1
  %42 = getelementptr i64, i64* %39, i64 %41
  %43 = load i64, i64* %8
  store i64 %43, i64* %42
  %44 = load i64, i64* %2
  %45 = add i64 %44, 1
  store i64 %45, i64* %2
  br label %loop_expression
}

define i64 @main() {
entry:
  store i64 10, i64* @0
  %0 = alloca [10 x i64]
  %1 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  store i64 4, i64* %1
  %2 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 1
  store i64 3, i64* %2
  %3 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 2
  store i64 9, i64* %3
  %4 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 3
  store i64 2, i64* %4
  %5 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 4
  store i64 0, i64* %5
  %6 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 5
  store i64 1, i64* %6
  %7 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 6
  store i64 6, i64* %7
  %8 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 7
  store i64 5, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 8
  store i64 7, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 9
  store i64 8, i64* %10
  %11 = alloca i64
  %12 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %13 = call i64 @insertsort(i64* %12)
  store i64 %13, i64* %11
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %14 = load i64, i64* %11
  %15 = load i64, i64* @0
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %19 = alloca i64
  %20 = load i64, i64* %11
  %21 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %20
  %22 = load i64, i64* %21
  store i64 %22, i64* %19
  %23 = load i64, i64* %19
  call void @putint(i64 %23)
  store i64 10, i64* %19
  %24 = load i64, i64* %19
  call void @putch(i64 %24)
  %25 = load i64, i64* %11
  %26 = add i64 %25, 1
  store i64 %26, i64* %11
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}
