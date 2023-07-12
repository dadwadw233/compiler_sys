; ModuleID = 'sysyc'
source_filename = "./59_sort_test7.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @Merge(i64* %0, i64 %1, i64 %2, i64 %3) {
entry:
  %4 = alloca i64*
  store i64* %0, i64** %4
  %5 = alloca i64
  store i64 %1, i64* %5
  %6 = alloca i64
  store i64 %2, i64* %6
  %7 = alloca i64
  store i64 %3, i64* %7
  %8 = alloca i64
  %9 = load i64, i64* %6
  %10 = load i64, i64* %5
  %11 = sub i64 %9, %10
  %12 = add i64 %11, 1
  store i64 %12, i64* %8
  %13 = alloca i64
  %14 = load i64, i64* %7
  %15 = load i64, i64* %6
  %16 = sub i64 %14, %15
  store i64 %16, i64* %13
  %17 = alloca [10 x i64]
  %18 = alloca [10 x i64]
  %19 = alloca i64
  store i64 0, i64* %19
  %20 = alloca i64
  store i64 0, i64* %20
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %21 = load i64, i64* %19
  %22 = load i64, i64* %8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %26 = load i64, i64* %19
  %27 = getelementptr [10 x i64], [10 x i64]* %17, i64 0, i64 %26
  %28 = load i64*, i64** %4
  %29 = load i64, i64* %19
  %30 = load i64, i64* %5
  %31 = add i64 %29, %30
  %32 = getelementptr i64, i64* %28, i64 %31
  %33 = load i64, i64* %32
  store i64 %33, i64* %27
  %34 = load i64, i64* %19
  %35 = add i64 %34, 1
  store i64 %35, i64* %19
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %36 = load i64, i64* %20
  %37 = load i64, i64* %13
  %38 = icmp slt i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %41 = load i64, i64* %20
  %42 = getelementptr [10 x i64], [10 x i64]* %18, i64 0, i64 %41
  %43 = load i64*, i64** %4
  %44 = load i64, i64* %20
  %45 = load i64, i64* %6
  %46 = add i64 %44, %45
  %47 = add i64 %46, 1
  %48 = getelementptr i64, i64* %43, i64 %47
  %49 = load i64, i64* %48
  store i64 %49, i64* %42
  %50 = load i64, i64* %20
  %51 = add i64 %50, 1
  store i64 %51, i64* %20
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  store i64 0, i64* %19
  store i64 0, i64* %20
  %52 = alloca i64
  %53 = load i64, i64* %5
  store i64 %53, i64* %52
  br label %loop_expression4

loop_expression4:                                 ; preds = %condition_cont, %loop_cont3
  %54 = load i64, i64* %19
  %55 = load i64, i64* %8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = icmp ne i64 %57, 0
  %59 = load i64, i64* %20
  %60 = load i64, i64* %13
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i64
  %63 = icmp ne i64 %62, 0
  %64 = and i1 %58, %63
  br i1 %64, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %65 = load i64, i64* %19
  %66 = getelementptr [10 x i64], [10 x i64]* %17, i64 0, i64 %65
  %67 = load i64, i64* %66
  %68 = load i64, i64* %20
  %69 = getelementptr [10 x i64], [10 x i64]* %18, i64 0, i64 %68
  %70 = load i64, i64* %69
  %71 = add i64 %70, 1
  %72 = icmp slt i64 %67, %71
  %73 = zext i1 %72 to i64
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %condition_true, label %false

loop_cont6:                                       ; preds = %loop_expression4
  br label %loop_expression7

condition_true:                                   ; preds = %loop_true5
  %75 = load i64*, i64** %4
  %76 = load i64, i64* %52
  %77 = getelementptr i64, i64* %75, i64 %76
  %78 = load i64, i64* %19
  %79 = getelementptr [10 x i64], [10 x i64]* %17, i64 0, i64 %78
  %80 = load i64, i64* %79
  store i64 %80, i64* %77
  %81 = load i64, i64* %52
  %82 = add i64 %81, 1
  store i64 %82, i64* %52
  %83 = load i64, i64* %19
  %84 = add i64 %83, 1
  store i64 %84, i64* %19
  br label %condition_cont

false:                                            ; preds = %loop_true5
  %85 = load i64*, i64** %4
  %86 = load i64, i64* %52
  %87 = getelementptr i64, i64* %85, i64 %86
  %88 = load i64, i64* %20
  %89 = getelementptr [10 x i64], [10 x i64]* %18, i64 0, i64 %88
  %90 = load i64, i64* %89
  store i64 %90, i64* %87
  %91 = load i64, i64* %52
  %92 = add i64 %91, 1
  store i64 %92, i64* %52
  %93 = load i64, i64* %20
  %94 = add i64 %93, 1
  store i64 %94, i64* %20
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  br label %loop_expression4

loop_expression7:                                 ; preds = %loop_true8, %loop_cont6
  %95 = load i64, i64* %19
  %96 = load i64, i64* %8
  %97 = icmp slt i64 %95, %96
  %98 = zext i1 %97 to i64
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %100 = load i64*, i64** %4
  %101 = load i64, i64* %52
  %102 = getelementptr i64, i64* %100, i64 %101
  %103 = load i64, i64* %19
  %104 = getelementptr [10 x i64], [10 x i64]* %17, i64 0, i64 %103
  %105 = load i64, i64* %104
  store i64 %105, i64* %102
  %106 = load i64, i64* %52
  %107 = add i64 %106, 1
  store i64 %107, i64* %52
  %108 = load i64, i64* %19
  %109 = add i64 %108, 1
  store i64 %109, i64* %19
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  br label %loop_expression10

loop_expression10:                                ; preds = %loop_true11, %loop_cont9
  %110 = load i64, i64* %20
  %111 = load i64, i64* %13
  %112 = icmp slt i64 %110, %111
  %113 = zext i1 %112 to i64
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %loop_true11, label %loop_cont12

loop_true11:                                      ; preds = %loop_expression10
  %115 = load i64*, i64** %4
  %116 = load i64, i64* %52
  %117 = getelementptr i64, i64* %115, i64 %116
  %118 = load i64, i64* %20
  %119 = getelementptr [10 x i64], [10 x i64]* %18, i64 0, i64 %118
  %120 = load i64, i64* %119
  store i64 %120, i64* %117
  %121 = load i64, i64* %52
  %122 = add i64 %121, 1
  store i64 %122, i64* %52
  %123 = load i64, i64* %20
  %124 = add i64 %123, 1
  store i64 %124, i64* %20
  br label %loop_expression10

loop_cont12:                                      ; preds = %loop_expression10
  ret i64 0
}

define i64 @MergeSort(i64* %0, i64 %1, i64 %2) {
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
  %13 = load i64, i64* %5
  %14 = add i64 %12, %13
  %15 = sdiv i64 %14, 2
  store i64 %15, i64* %11
  %16 = alloca i64
  %17 = load i64*, i64** %3
  %18 = load i64, i64* %4
  %19 = load i64, i64* %11
  %20 = call i64 @MergeSort(i64* %17, i64 %18, i64 %19)
  store i64 %20, i64* %16
  %21 = load i64, i64* %11
  %22 = add i64 %21, 1
  store i64 %22, i64* %16
  %23 = load i64*, i64** %3
  %24 = load i64, i64* %16
  %25 = load i64, i64* %5
  %26 = call i64 @MergeSort(i64* %23, i64 %24, i64 %25)
  store i64 %26, i64* %16
  %27 = load i64*, i64** %3
  %28 = load i64, i64* %4
  %29 = load i64, i64* %11
  %30 = load i64, i64* %5
  %31 = call i64 @Merge(i64* %27, i64 %28, i64 %29, i64 %30)
  store i64 %31, i64* %16
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %entry
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
  %12 = alloca i64
  %13 = load i64, i64* @0
  %14 = sub i64 %13, 1
  store i64 %14, i64* %12
  %15 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %16 = load i64, i64* %11
  %17 = load i64, i64* %12
  %18 = call i64 @MergeSort(i64* %15, i64 %16, i64 %17)
  store i64 %18, i64* %11
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %19 = load i64, i64* %11
  %20 = load i64, i64* @0
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %24 = load i64, i64* %11
  %25 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %24
  %26 = load i64, i64* %25
  store i64 %26, i64* %12
  %27 = load i64, i64* %12
  call void @putint(i64 %27)
  store i64 10, i64* %12
  %28 = load i64, i64* %12
  call void @putch(i64 %28)
  %29 = load i64, i64* %11
  %30 = add i64 %29, 1
  store i64 %30, i64* %11
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}
