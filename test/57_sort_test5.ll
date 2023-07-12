; ModuleID = 'sysyc'
source_filename = "./57_sort_test5.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @swap(i64* %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = alloca i64
  %7 = load i64*, i64** %3
  %8 = load i64, i64* %4
  %9 = getelementptr i64, i64* %7, i64 %8
  %10 = load i64, i64* %9
  store i64 %10, i64* %6
  %11 = load i64*, i64** %3
  %12 = load i64, i64* %4
  %13 = getelementptr i64, i64* %11, i64 %12
  %14 = load i64*, i64** %3
  %15 = load i64, i64* %5
  %16 = getelementptr i64, i64* %14, i64 %15
  %17 = load i64, i64* %16
  store i64 %17, i64* %13
  %18 = load i64*, i64** %3
  %19 = load i64, i64* %5
  %20 = getelementptr i64, i64* %18, i64 %19
  %21 = load i64, i64* %6
  store i64 %21, i64* %20
  ret i64 0
}

define i64 @heap_ajust(i64* %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = alloca i64
  %7 = load i64, i64* %4
  store i64 %7, i64* %6
  %8 = alloca i64
  %9 = load i64, i64* %6
  %10 = mul i64 %9, 2
  %11 = add i64 %10, 1
  store i64 %11, i64* %8
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont2, %entry
  %12 = load i64, i64* %8
  %13 = load i64, i64* %5
  %14 = add i64 %13, 1
  %15 = icmp slt i64 %12, %14
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %18 = load i64, i64* %8
  %19 = load i64, i64* %5
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  %23 = load i64*, i64** %3
  %24 = load i64, i64* %8
  %25 = getelementptr i64, i64* %23, i64 %24
  %26 = load i64, i64* %25
  %27 = load i64*, i64** %3
  %28 = load i64, i64* %8
  %29 = add i64 %28, 1
  %30 = getelementptr i64, i64* %27, i64 %29
  %31 = load i64, i64* %30
  %32 = icmp slt i64 %26, %31
  %33 = zext i1 %32 to i64
  %34 = icmp ne i64 %33, 0
  %35 = and i1 %22, %34
  br i1 %35, label %condition_true, label %condition_cont

loop_cont:                                        ; preds = %loop_expression
  ret i64 0

condition_true:                                   ; preds = %loop_true
  %36 = load i64, i64* %8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true
  %38 = load i64*, i64** %3
  %39 = load i64, i64* %6
  %40 = getelementptr i64, i64* %38, i64 %39
  %41 = load i64, i64* %40
  %42 = load i64*, i64** %3
  %43 = load i64, i64* %8
  %44 = getelementptr i64, i64* %42, i64 %43
  %45 = load i64, i64* %44
  %46 = icmp sgt i64 %41, %45
  %47 = zext i1 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %condition_true1, label %false

condition_true1:                                  ; preds = %condition_cont
  ret i64 0

false:                                            ; preds = %condition_cont
  %49 = load i64*, i64** %3
  %50 = load i64, i64* %6
  %51 = load i64, i64* %8
  %52 = call i64 @swap(i64* %49, i64 %50, i64 %51)
  store i64 %52, i64* %6
  %53 = load i64, i64* %8
  store i64 %53, i64* %6
  %54 = load i64, i64* %6
  %55 = mul i64 %54, 2
  %56 = add i64 %55, 1
  store i64 %56, i64* %8
  br label %condition_cont2

condition_cont2:                                  ; preds = %false
  br label %loop_expression
}

define i64 @heap_sort(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = load i64, i64* %3
  %7 = sdiv i64 %6, 2
  %8 = sub i64 %7, 1
  store i64 %8, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %9 = load i64, i64* %4
  %10 = icmp sgt i64 %9, -1
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %13 = load i64, i64* %3
  %14 = sub i64 %13, 1
  store i64 %14, i64* %5
  %15 = load i64*, i64** %2
  %16 = load i64, i64* %4
  %17 = load i64, i64* %5
  %18 = call i64 @heap_ajust(i64* %15, i64 %16, i64 %17)
  store i64 %18, i64* %5
  %19 = load i64, i64* %4
  %20 = sub i64 %19, 1
  store i64 %20, i64* %4
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %21 = load i64, i64* %3
  %22 = sub i64 %21, 1
  store i64 %22, i64* %4
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %23 = load i64, i64* %4
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %27 = alloca i64
  store i64 0, i64* %27
  %28 = load i64*, i64** %2
  %29 = load i64, i64* %27
  %30 = load i64, i64* %4
  %31 = call i64 @swap(i64* %28, i64 %29, i64 %30)
  store i64 %31, i64* %5
  %32 = load i64, i64* %4
  %33 = sub i64 %32, 1
  store i64 %33, i64* %5
  %34 = load i64*, i64** %2
  %35 = load i64, i64* %27
  %36 = load i64, i64* %5
  %37 = call i64 @heap_ajust(i64* %34, i64 %35, i64 %36)
  store i64 %37, i64* %5
  %38 = load i64, i64* %4
  %39 = sub i64 %38, 1
  store i64 %39, i64* %4
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  ret i64 0
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
  %14 = call i64 @heap_sort(i64* %12, i64 %13)
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
