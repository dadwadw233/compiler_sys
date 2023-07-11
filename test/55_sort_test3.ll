; ModuleID = 'sysyc'
source_filename = "./55_sort_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @QuickSort(i64* %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = load i64, i64* %4
  %7 = load i64, i64* %5
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  %11 = alloca i64
  %12 = load i64, i64* %4
  store i64 %12, i64* %11
  %13 = alloca i64
  %14 = load i64, i64* %5
  store i64 %14, i64* %13
  %15 = alloca i64
  %16 = load i64*, i64** %3
  %17 = load i64, i64* %4
  %18 = getelementptr i64, i64* %16, i64 %17
  %19 = load i64, i64* %18
  store i64 %19, i64* %15
  br label %loop_expression

condition_cont:                                   ; preds = %loop_cont, %entry
  ret i64 0

loop_expression:                                  ; preds = %condition_cont12, %condition_true
  %20 = load i64, i64* %11
  %21 = load i64, i64* %13
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  %25 = load i64*, i64** %3
  %26 = load i64, i64* %11
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64, i64* %15
  store i64 %28, i64* %27
  %29 = alloca i64
  %30 = load i64, i64* %11
  %31 = sub i64 %30, 1
  store i64 %31, i64* %29
  %32 = load i64*, i64** %3
  %33 = load i64, i64* %4
  %34 = load i64, i64* %29
  %35 = call i64 @QuickSort(i64* %32, i64 %33, i64 %34)
  store i64 %35, i64* %29
  %36 = load i64, i64* %11
  %37 = add i64 %36, 1
  store i64 %37, i64* %29
  %38 = load i64*, i64** %3
  %39 = load i64, i64* %29
  %40 = load i64, i64* %5
  %41 = call i64 @QuickSort(i64* %38, i64 %39, i64 %40)
  store i64 %41, i64* %29
  br label %condition_cont

loop_expression1:                                 ; preds = %loop_true2, %loop_true
  %42 = load i64, i64* %11
  %43 = load i64, i64* %13
  %44 = icmp slt i64 %42, %43
  %45 = zext i1 %44 to i64
  %46 = icmp ne i64 %45, 0
  %47 = load i64*, i64** %3
  %48 = load i64, i64* %13
  %49 = getelementptr i64, i64* %47, i64 %48
  %50 = load i64, i64* %49
  %51 = load i64, i64* %15
  %52 = sub i64 %51, 1
  %53 = icmp sgt i64 %50, %52
  %54 = zext i1 %53 to i64
  %55 = icmp ne i64 %54, 0
  %56 = and i1 %46, %55
  br i1 %56, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %57 = load i64, i64* %13
  %58 = sub i64 %57, 1
  store i64 %58, i64* %13
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  %59 = load i64, i64* %11
  %60 = load i64, i64* %13
  %61 = icmp slt i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %condition_true4, label %condition_cont6

condition_true4:                                  ; preds = %loop_cont3
  %64 = load i64*, i64** %3
  %65 = load i64, i64* %11
  %66 = getelementptr i64, i64* %64, i64 %65
  %67 = load i64*, i64** %3
  %68 = load i64, i64* %13
  %69 = getelementptr i64, i64* %67, i64 %68
  %70 = load i64, i64* %69
  store i64 %70, i64* %66
  %71 = load i64, i64* %11
  %72 = add i64 %71, 1
  store i64 %72, i64* %11
  br label %condition_cont6

condition_cont6:                                  ; preds = %condition_true4, %loop_cont3
  br label %loop_expression7

loop_expression7:                                 ; preds = %loop_true8, %condition_cont6
  %73 = load i64, i64* %11
  %74 = load i64, i64* %13
  %75 = icmp slt i64 %73, %74
  %76 = zext i1 %75 to i64
  %77 = icmp ne i64 %76, 0
  %78 = load i64*, i64** %3
  %79 = load i64, i64* %11
  %80 = getelementptr i64, i64* %78, i64 %79
  %81 = load i64, i64* %80
  %82 = load i64, i64* %15
  %83 = icmp slt i64 %81, %82
  %84 = zext i1 %83 to i64
  %85 = icmp ne i64 %84, 0
  %86 = and i1 %77, %85
  br i1 %86, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %87 = load i64, i64* %11
  %88 = add i64 %87, 1
  store i64 %88, i64* %11
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  %89 = load i64, i64* %11
  %90 = load i64, i64* %13
  %91 = icmp slt i64 %89, %90
  %92 = zext i1 %91 to i64
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %condition_true10, label %condition_cont12

condition_true10:                                 ; preds = %loop_cont9
  %94 = load i64*, i64** %3
  %95 = load i64, i64* %13
  %96 = getelementptr i64, i64* %94, i64 %95
  %97 = load i64*, i64** %3
  %98 = load i64, i64* %11
  %99 = getelementptr i64, i64* %97, i64 %98
  %100 = load i64, i64* %99
  store i64 %100, i64* %96
  %101 = load i64, i64* %13
  %102 = sub i64 %101, 1
  store i64 %102, i64* %13
  br label %condition_cont12

condition_cont12:                                 ; preds = %condition_true10, %loop_cont9
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
  %12 = alloca i64
  store i64 9, i64* %12
  %13 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %14 = load i64, i64* %11
  %15 = load i64, i64* %12
  %16 = call i64 @QuickSort(i64* %13, i64 %14, i64 %15)
  store i64 %16, i64* %11
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %17 = load i64, i64* %11
  %18 = load i64, i64* @0
  %19 = icmp slt i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %22 = alloca i64
  %23 = load i64, i64* %11
  %24 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %23
  %25 = load i64, i64* %24
  store i64 %25, i64* %22
  %26 = load i64, i64* %22
  call void @putint(i64 %26)
  store i64 10, i64* %22
  %27 = load i64, i64* %22
  call void @putch(i64 %27)
  %28 = load i64, i64* %11
  %29 = add i64 %28, 1
  store i64 %29, i64* %11
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}
