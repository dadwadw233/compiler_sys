; ModuleID = 'sysyc'
source_filename = "./62_long_code.sy"
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

define i64 @getMid(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  %3 = load i64, i64* @0
  %4 = srem i64 %3, 2
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %condition_true, label %false

condition_true:                                   ; preds = %entry
  %8 = load i64, i64* @0
  %9 = sdiv i64 %8, 2
  store i64 %9, i64* %2
  %10 = load i64*, i64** %1
  %11 = load i64, i64* %2
  %12 = getelementptr i64, i64* %10, i64 %11
  %13 = load i64, i64* %12
  %14 = load i64*, i64** %1
  %15 = load i64, i64* %2
  %16 = sub i64 %15, 1
  %17 = getelementptr i64, i64* %14, i64 %16
  %18 = load i64, i64* %17
  %19 = add i64 %13, %18
  %20 = sdiv i64 %19, 2
  ret i64 %20

false:                                            ; preds = %entry
  %21 = load i64, i64* @0
  %22 = sdiv i64 %21, 2
  store i64 %22, i64* %2
  %23 = load i64*, i64** %1
  %24 = load i64, i64* %2
  %25 = getelementptr i64, i64* %23, i64 %24
  %26 = load i64, i64* %25
  ret i64 %26
}

define i64 @getMost(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca [1000 x i64]
  %3 = alloca i64
  store i64 0, i64* %3
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %4 = load i64, i64* %3
  %5 = icmp slt i64 %4, 1000
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %8 = load i64, i64* %3
  %9 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %8
  store i64 0, i64* %9
  %10 = load i64, i64* %3
  %11 = add i64 %10, 1
  store i64 %11, i64* %3
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  store i64 0, i64* %3
  %12 = alloca i64
  %13 = alloca i64
  store i64 0, i64* %12
  br label %loop_expression1

loop_expression1:                                 ; preds = %condition_cont, %loop_cont
  %14 = load i64, i64* %3
  %15 = load i64, i64* @0
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %19 = alloca i64
  %20 = load i64*, i64** %1
  %21 = load i64, i64* %3
  %22 = getelementptr i64, i64* %20, i64 %21
  %23 = load i64, i64* %22
  store i64 %23, i64* %19
  %24 = load i64, i64* %19
  %25 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %24
  %26 = load i64, i64* %19
  %27 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %26
  %28 = load i64, i64* %27
  %29 = add i64 %28, 1
  store i64 %29, i64* %25
  %30 = load i64, i64* %19
  %31 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %30
  %32 = load i64, i64* %31
  %33 = load i64, i64* %12
  %34 = icmp sgt i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %condition_true, label %condition_cont

loop_cont3:                                       ; preds = %loop_expression1
  %37 = load i64, i64* %13
  ret i64 %37

condition_true:                                   ; preds = %loop_true2
  %38 = load i64, i64* %19
  %39 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %38
  %40 = load i64, i64* %39
  store i64 %40, i64* %12
  %41 = load i64, i64* %19
  store i64 %41, i64* %13
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true2
  %42 = load i64, i64* %3
  %43 = add i64 %42, 1
  store i64 %43, i64* %3
  br label %loop_expression1
}

define i64 @revert(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i64 0, i64* %3
  store i64 0, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %5 = load i64, i64* %3
  %6 = load i64, i64* %4
  %7 = icmp slt i64 %5, %6
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %10 = load i64*, i64** %1
  %11 = load i64, i64* %3
  %12 = getelementptr i64, i64* %10, i64 %11
  %13 = load i64, i64* %12
  store i64 %13, i64* %2
  %14 = load i64*, i64** %1
  %15 = load i64, i64* %3
  %16 = getelementptr i64, i64* %14, i64 %15
  %17 = load i64*, i64** %1
  %18 = load i64, i64* %4
  %19 = getelementptr i64, i64* %17, i64 %18
  %20 = load i64, i64* %19
  store i64 %20, i64* %16
  %21 = load i64*, i64** %1
  %22 = load i64, i64* %4
  %23 = getelementptr i64, i64* %21, i64 %22
  %24 = load i64, i64* %2
  store i64 %24, i64* %23
  %25 = load i64, i64* %3
  %26 = add i64 %25, 1
  store i64 %26, i64* %3
  %27 = load i64, i64* %4
  %28 = sub i64 %27, 1
  store i64 %28, i64* %4
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}

define i64 @arrCopy(i64* %0, i64* %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64*
  store i64* %1, i64** %3
  %4 = alloca i64
  store i64 0, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %5 = load i64, i64* %4
  %6 = load i64, i64* @0
  %7 = icmp slt i64 %5, %6
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %10 = load i64*, i64** %3
  %11 = load i64, i64* %4
  %12 = getelementptr i64, i64* %10, i64 %11
  %13 = load i64*, i64** %2
  %14 = load i64, i64* %4
  %15 = getelementptr i64, i64* %13, i64 %14
  %16 = load i64, i64* %15
  store i64 %16, i64* %12
  %17 = load i64, i64* %4
  %18 = add i64 %17, 1
  store i64 %18, i64* %4
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}

define i64 @calSum(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  store i64 0, i64* %4
  %5 = alloca i64
  store i64 0, i64* %5
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %6 = load i64, i64* %5
  %7 = load i64, i64* @0
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %11 = load i64, i64* %4
  %12 = load i64*, i64** %2
  %13 = load i64, i64* %5
  %14 = getelementptr i64, i64* %12, i64 %13
  %15 = load i64, i64* %14
  %16 = add i64 %11, %15
  store i64 %16, i64* %4
  %17 = load i64, i64* %5
  %18 = load i64, i64* %3
  %19 = srem i64 %17, %18
  %20 = load i64, i64* %3
  %21 = sub i64 %20, 1
  %22 = icmp ne i64 %19, %21
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %condition_true, label %false

loop_cont:                                        ; preds = %loop_expression
  ret i64 0

condition_true:                                   ; preds = %loop_true
  %25 = load i64*, i64** %2
  %26 = load i64, i64* %5
  %27 = getelementptr i64, i64* %25, i64 %26
  store i64 0, i64* %27
  br label %condition_cont

false:                                            ; preds = %loop_true
  %28 = load i64*, i64** %2
  %29 = load i64, i64* %5
  %30 = getelementptr i64, i64* %28, i64 %29
  %31 = load i64, i64* %4
  store i64 %31, i64* %30
  store i64 0, i64* %4
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  %32 = load i64, i64* %5
  %33 = add i64 %32, 1
  store i64 %33, i64* %5
  br label %loop_expression
}

define i64 @avgPooling(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  store i64 0, i64* %5
  store i64 0, i64* %4
  %6 = alloca i64
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %7 = load i64, i64* %5
  %8 = load i64, i64* @0
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %12 = load i64, i64* %5
  %13 = load i64, i64* %3
  %14 = sub i64 %13, 1
  %15 = icmp slt i64 %12, %14
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %condition_true, label %false

loop_cont:                                        ; preds = %loop_expression
  %18 = load i64, i64* @0
  %19 = load i64, i64* %3
  %20 = sub i64 %18, %19
  %21 = add i64 %20, 1
  store i64 %21, i64* %5
  br label %loop_expression4

condition_true:                                   ; preds = %loop_true
  %22 = load i64, i64* %4
  %23 = load i64*, i64** %2
  %24 = load i64, i64* %5
  %25 = getelementptr i64, i64* %23, i64 %24
  %26 = load i64, i64* %25
  %27 = add i64 %22, %26
  store i64 %27, i64* %4
  br label %condition_cont

false:                                            ; preds = %loop_true
  %28 = load i64, i64* %5
  %29 = load i64, i64* %3
  %30 = sub i64 %29, 1
  %31 = icmp eq i64 %28, %30
  %32 = zext i1 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %condition_true1, label %false2

condition_cont:                                   ; preds = %condition_cont3, %condition_true
  %34 = load i64, i64* %5
  %35 = add i64 %34, 1
  store i64 %35, i64* %5
  br label %loop_expression

condition_true1:                                  ; preds = %false
  %36 = load i64*, i64** %2
  %37 = getelementptr i64, i64* %36, i64 0
  %38 = load i64, i64* %37
  store i64 %38, i64* %6
  %39 = load i64*, i64** %2
  %40 = getelementptr i64, i64* %39, i64 0
  %41 = load i64, i64* %4
  %42 = load i64, i64* %3
  %43 = sdiv i64 %41, %42
  store i64 %43, i64* %40
  br label %condition_cont3

false2:                                           ; preds = %false
  %44 = load i64, i64* %4
  %45 = load i64*, i64** %2
  %46 = load i64, i64* %5
  %47 = getelementptr i64, i64* %45, i64 %46
  %48 = load i64, i64* %47
  %49 = add i64 %44, %48
  %50 = load i64, i64* %6
  %51 = sub i64 %49, %50
  store i64 %51, i64* %4
  %52 = load i64*, i64** %2
  %53 = load i64, i64* %5
  %54 = load i64, i64* %3
  %55 = sub i64 %53, %54
  %56 = add i64 %55, 1
  %57 = getelementptr i64, i64* %52, i64 %56
  %58 = load i64, i64* %57
  store i64 %58, i64* %6
  %59 = load i64*, i64** %2
  %60 = load i64, i64* %5
  %61 = load i64, i64* %3
  %62 = sub i64 %60, %61
  %63 = add i64 %62, 1
  %64 = getelementptr i64, i64* %59, i64 %63
  %65 = load i64, i64* %4
  %66 = load i64, i64* %3
  %67 = sdiv i64 %65, %66
  store i64 %67, i64* %64
  br label %condition_cont3

condition_cont3:                                  ; preds = %false2, %condition_true1
  br label %condition_cont

loop_expression4:                                 ; preds = %loop_true5, %loop_cont
  %68 = load i64, i64* %5
  %69 = load i64, i64* @0
  %70 = icmp slt i64 %68, %69
  %71 = zext i1 %70 to i64
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %73 = load i64*, i64** %2
  %74 = load i64, i64* %5
  %75 = getelementptr i64, i64* %73, i64 %74
  store i64 0, i64* %75
  %76 = load i64, i64* %5
  %77 = add i64 %76, 1
  store i64 %77, i64* %5
  br label %loop_expression4

loop_cont6:                                       ; preds = %loop_expression4
  ret i64 0
}

define i64 @main() {
entry:
  store i64 32, i64* @0
  %0 = alloca [32 x i64]
  %1 = alloca [32 x i64]
  %2 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  store i64 7, i64* %2
  %3 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 1
  store i64 23, i64* %3
  %4 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 2
  store i64 89, i64* %4
  %5 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 3
  store i64 26, i64* %5
  %6 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 4
  store i64 282, i64* %6
  %7 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 5
  store i64 254, i64* %7
  %8 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 6
  store i64 27, i64* %8
  %9 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 7
  store i64 5, i64* %9
  %10 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 8
  store i64 83, i64* %10
  %11 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 9
  store i64 273, i64* %11
  %12 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 10
  store i64 574, i64* %12
  %13 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 11
  store i64 905, i64* %13
  %14 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 12
  store i64 354, i64* %14
  %15 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 13
  store i64 657, i64* %15
  %16 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 14
  store i64 935, i64* %16
  %17 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 15
  store i64 264, i64* %17
  %18 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 16
  store i64 639, i64* %18
  %19 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 17
  store i64 459, i64* %19
  %20 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 18
  store i64 29, i64* %20
  %21 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 19
  store i64 68, i64* %21
  %22 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 20
  store i64 929, i64* %22
  %23 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 21
  store i64 756, i64* %23
  %24 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 22
  store i64 452, i64* %24
  %25 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 23
  store i64 279, i64* %25
  %26 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 24
  store i64 58, i64* %26
  %27 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 25
  store i64 87, i64* %27
  %28 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 26
  store i64 96, i64* %28
  %29 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 27
  store i64 36, i64* %29
  %30 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 28
  store i64 39, i64* %30
  %31 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 29
  store i64 28, i64* %31
  %32 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 30
  store i64 1, i64* %32
  %33 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 31
  store i64 290, i64* %33
  %34 = alloca i64
  %35 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %36 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %37 = call i64 @arrCopy(i64* %35, i64* %36)
  store i64 %37, i64* %34
  %38 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %39 = call i64 @revert(i64* %38)
  store i64 %39, i64* %34
  %40 = alloca i64
  store i64 0, i64* %40
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %41 = load i64, i64* %40
  %42 = icmp slt i64 %41, 32
  %43 = zext i1 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %45 = load i64, i64* %40
  %46 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %45
  %47 = load i64, i64* %46
  store i64 %47, i64* %34
  %48 = load i64, i64* %34
  call void @putint(i64 %48)
  %49 = load i64, i64* %40
  %50 = add i64 %49, 1
  store i64 %50, i64* %40
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %51 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %52 = call i64 @bubblesort(i64* %51)
  store i64 %52, i64* %34
  store i64 0, i64* %40
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %53 = load i64, i64* %40
  %54 = icmp slt i64 %53, 32
  %55 = zext i1 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %57 = load i64, i64* %40
  %58 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %57
  %59 = load i64, i64* %58
  store i64 %59, i64* %34
  %60 = load i64, i64* %34
  call void @putint(i64 %60)
  %61 = load i64, i64* %40
  %62 = add i64 %61, 1
  store i64 %62, i64* %40
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  %63 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %64 = call i64 @getMid(i64* %63)
  store i64 %64, i64* %34
  %65 = load i64, i64* %34
  call void @putint(i64 %65)
  %66 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %67 = call i64 @getMost(i64* %66)
  store i64 %67, i64* %34
  %68 = load i64, i64* %34
  call void @putint(i64 %68)
  %69 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %70 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %71 = call i64 @arrCopy(i64* %69, i64* %70)
  store i64 %71, i64* %34
  %72 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %73 = call i64 @bubblesort(i64* %72)
  store i64 %73, i64* %34
  store i64 0, i64* %40
  br label %loop_expression4

loop_expression4:                                 ; preds = %loop_true5, %loop_cont3
  %74 = load i64, i64* %40
  %75 = icmp slt i64 %74, 32
  %76 = zext i1 %75 to i64
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %78 = load i64, i64* %40
  %79 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %78
  %80 = load i64, i64* %79
  store i64 %80, i64* %34
  %81 = load i64, i64* %34
  call void @putint(i64 %81)
  %82 = load i64, i64* %40
  %83 = add i64 %82, 1
  store i64 %83, i64* %40
  br label %loop_expression4

loop_cont6:                                       ; preds = %loop_expression4
  %84 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %85 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %86 = call i64 @arrCopy(i64* %84, i64* %85)
  store i64 %86, i64* %34
  %87 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %88 = call i64 @insertsort(i64* %87)
  store i64 %88, i64* %34
  store i64 0, i64* %40
  br label %loop_expression7

loop_expression7:                                 ; preds = %loop_true8, %loop_cont6
  %89 = load i64, i64* %40
  %90 = icmp slt i64 %89, 32
  %91 = zext i1 %90 to i64
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %93 = load i64, i64* %40
  %94 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %93
  %95 = load i64, i64* %94
  store i64 %95, i64* %34
  %96 = load i64, i64* %34
  call void @putint(i64 %96)
  %97 = load i64, i64* %40
  %98 = add i64 %97, 1
  store i64 %98, i64* %40
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  %99 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %100 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %101 = call i64 @arrCopy(i64* %99, i64* %100)
  store i64 %101, i64* %34
  store i64 0, i64* %40
  store i64 31, i64* %34
  %102 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %103 = load i64, i64* %40
  %104 = load i64, i64* %34
  %105 = call i64 @QuickSort(i64* %102, i64 %103, i64 %104)
  store i64 %105, i64* %34
  br label %loop_expression10

loop_expression10:                                ; preds = %loop_true11, %loop_cont9
  %106 = load i64, i64* %40
  %107 = icmp slt i64 %106, 32
  %108 = zext i1 %107 to i64
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %loop_true11, label %loop_cont12

loop_true11:                                      ; preds = %loop_expression10
  %110 = load i64, i64* %40
  %111 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %110
  %112 = load i64, i64* %111
  store i64 %112, i64* %34
  %113 = load i64, i64* %34
  call void @putint(i64 %113)
  %114 = load i64, i64* %40
  %115 = add i64 %114, 1
  store i64 %115, i64* %40
  br label %loop_expression10

loop_cont12:                                      ; preds = %loop_expression10
  %116 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %117 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %118 = call i64 @arrCopy(i64* %116, i64* %117)
  store i64 %118, i64* %34
  %119 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %120 = call i64 @calSum(i64* %119, i64 4)
  store i64 %120, i64* %34
  store i64 0, i64* %40
  br label %loop_expression13

loop_expression13:                                ; preds = %loop_true14, %loop_cont12
  %121 = load i64, i64* %40
  %122 = icmp slt i64 %121, 32
  %123 = zext i1 %122 to i64
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %loop_true14, label %loop_cont15

loop_true14:                                      ; preds = %loop_expression13
  %125 = load i64, i64* %40
  %126 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %125
  %127 = load i64, i64* %126
  store i64 %127, i64* %34
  %128 = load i64, i64* %34
  call void @putint(i64 %128)
  %129 = load i64, i64* %40
  %130 = add i64 %129, 1
  store i64 %130, i64* %40
  br label %loop_expression13

loop_cont15:                                      ; preds = %loop_expression13
  %131 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %132 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %133 = call i64 @arrCopy(i64* %131, i64* %132)
  store i64 %133, i64* %34
  %134 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %135 = call i64 @avgPooling(i64* %134, i64 3)
  store i64 %135, i64* %34
  store i64 0, i64* %40
  br label %loop_expression16

loop_expression16:                                ; preds = %loop_true17, %loop_cont15
  %136 = load i64, i64* %40
  %137 = icmp slt i64 %136, 32
  %138 = zext i1 %137 to i64
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %loop_true17, label %loop_cont18

loop_true17:                                      ; preds = %loop_expression16
  %140 = load i64, i64* %40
  %141 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %140
  %142 = load i64, i64* %141
  store i64 %142, i64* %34
  %143 = load i64, i64* %34
  call void @putint(i64 %143)
  %144 = load i64, i64* %40
  %145 = add i64 %144, 1
  store i64 %145, i64* %40
  br label %loop_expression16

loop_cont18:                                      ; preds = %loop_expression16
  ret i64 0
}
