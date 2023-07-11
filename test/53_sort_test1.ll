; ModuleID = 'sysyc'
source_filename = "./53_sort_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @bubblesort(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  %3 = alloca i64
  store i64 0, i64* %2
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %4 = load i64, i64* %2
  %5 = load i64, i64* @0
  %6 = sub i64 %5, 1
  %7 = icmp slt i64 %4, %6
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  store i64 0, i64* %3
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  ret i64 0

loop_expression1:                                 ; preds = %condition_cont, %loop_true
  %10 = load i64, i64* %3
  %11 = load i64, i64* @0
  %12 = load i64, i64* %2
  %13 = sub i64 %11, %12
  %14 = sub i64 %13, 1
  %15 = icmp slt i64 %10, %14
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %18 = load i64*, i64** %1
  %19 = load i64, i64* %3
  %20 = getelementptr i64, i64* %18, i64 %19
  %21 = load i64, i64* %20
  %22 = load i64*, i64** %1
  %23 = load i64, i64* %3
  %24 = add i64 %23, 1
  %25 = getelementptr i64, i64* %22, i64 %24
  %26 = load i64, i64* %25
  %27 = icmp sgt i64 %21, %26
  %28 = zext i1 %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %condition_true, label %condition_cont

loop_cont3:                                       ; preds = %loop_expression1
  %30 = load i64, i64* %2
  %31 = add i64 %30, 1
  store i64 %31, i64* %2
  br label %loop_expression

condition_true:                                   ; preds = %loop_true2
  %32 = alloca i64
  %33 = load i64*, i64** %1
  %34 = load i64, i64* %3
  %35 = add i64 %34, 1
  %36 = getelementptr i64, i64* %33, i64 %35
  %37 = load i64, i64* %36
  store i64 %37, i64* %32
  %38 = load i64*, i64** %1
  %39 = load i64, i64* %3
  %40 = add i64 %39, 1
  %41 = getelementptr i64, i64* %38, i64 %40
  %42 = load i64*, i64** %1
  %43 = load i64, i64* %3
  %44 = getelementptr i64, i64* %42, i64 %43
  %45 = load i64, i64* %44
  store i64 %45, i64* %41
  %46 = load i64*, i64** %1
  %47 = load i64, i64* %3
  %48 = getelementptr i64, i64* %46, i64 %47
  %49 = load i64, i64* %32
  store i64 %49, i64* %48
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true2
  %50 = load i64, i64* %3
  %51 = add i64 %50, 1
  store i64 %51, i64* %3
  br label %loop_expression1
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
  %13 = call i64 @bubblesort(i64* %12)
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
