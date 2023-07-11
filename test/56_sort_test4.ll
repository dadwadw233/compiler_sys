; ModuleID = 'sysyc'
source_filename = "./56_sort_test4.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @select_sort(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  store i64 0, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont5, %entry
  %7 = load i64, i64* %4
  %8 = load i64, i64* %3
  %9 = sub i64 %8, 1
  %10 = icmp slt i64 %7, %9
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %13 = load i64, i64* %4
  store i64 %13, i64* %6
  %14 = load i64, i64* %4
  %15 = add i64 %14, 1
  store i64 %15, i64* %5
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  ret i64 0

loop_expression1:                                 ; preds = %condition_cont, %loop_true
  %16 = load i64, i64* %5
  %17 = load i64, i64* %3
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %21 = load i64*, i64** %2
  %22 = load i64, i64* %6
  %23 = getelementptr i64, i64* %21, i64 %22
  %24 = load i64, i64* %23
  %25 = load i64*, i64** %2
  %26 = load i64, i64* %5
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64, i64* %27
  %29 = icmp sgt i64 %24, %28
  %30 = zext i1 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %condition_true, label %condition_cont

loop_cont3:                                       ; preds = %loop_expression1
  %32 = load i64, i64* %6
  %33 = load i64, i64* %4
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %condition_true4, label %condition_cont5

condition_true:                                   ; preds = %loop_true2
  %37 = load i64, i64* %5
  store i64 %37, i64* %6
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true2
  %38 = load i64, i64* %5
  %39 = add i64 %38, 1
  store i64 %39, i64* %5
  br label %loop_expression1

condition_true4:                                  ; preds = %loop_cont3
  %40 = alloca i64
  %41 = load i64*, i64** %2
  %42 = load i64, i64* %6
  %43 = getelementptr i64, i64* %41, i64 %42
  %44 = load i64, i64* %43
  store i64 %44, i64* %40
  %45 = load i64*, i64** %2
  %46 = load i64, i64* %6
  %47 = getelementptr i64, i64* %45, i64 %46
  %48 = load i64*, i64** %2
  %49 = load i64, i64* %4
  %50 = getelementptr i64, i64* %48, i64 %49
  %51 = load i64, i64* %50
  store i64 %51, i64* %47
  %52 = load i64*, i64** %2
  %53 = load i64, i64* %4
  %54 = getelementptr i64, i64* %52, i64 %53
  %55 = load i64, i64* %40
  store i64 %55, i64* %54
  br label %condition_cont5

condition_cont5:                                  ; preds = %condition_true4, %loop_cont3
  %56 = load i64, i64* %4
  %57 = add i64 %56, 1
  store i64 %57, i64* %4
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
  store i64 0, i64* %11
  %12 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %13 = load i64, i64* @0
  %14 = call i64 @select_sort(i64* %12, i64 %13)
  store i64 %14, i64* %11
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %15 = load i64, i64* %11
  %16 = load i64, i64* @0
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %20 = alloca i64
  %21 = load i64, i64* %11
  %22 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %21
  %23 = load i64, i64* %22
  store i64 %23, i64* %20
  %24 = load i64, i64* %20
  call void @putint(i64 %24)
  store i64 10, i64* %20
  %25 = load i64, i64* %20
  call void @putch(i64 %25)
  %26 = load i64, i64* %11
  %27 = add i64 %26, 1
  store i64 %27, i64* %11
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}
