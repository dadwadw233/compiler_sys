; ModuleID = 'sysyc'
source_filename = "./58_sort_test6.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @counting_sort(i64* %0, i64* %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64*
  store i64* %1, i64** %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = alloca [10 x i64]
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  store i64 0, i64* %9
  store i64 0, i64* %7
  store i64 0, i64* %8
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %10 = load i64, i64* %9
  %11 = icmp slt i64 %10, 10
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %14 = load i64, i64* %9
  %15 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %14
  store i64 0, i64* %15
  %16 = load i64, i64* %9
  %17 = add i64 %16, 1
  store i64 %17, i64* %9
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %18 = load i64, i64* %7
  %19 = load i64, i64* %5
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %23 = load i64*, i64** %3
  %24 = load i64, i64* %7
  %25 = getelementptr i64, i64* %23, i64 %24
  %26 = load i64, i64* %25
  %27 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %26
  %28 = load i64*, i64** %3
  %29 = load i64, i64* %7
  %30 = getelementptr i64, i64* %28, i64 %29
  %31 = load i64, i64* %30
  %32 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %31
  %33 = load i64, i64* %32
  %34 = add i64 %33, 1
  store i64 %34, i64* %27
  %35 = load i64, i64* %7
  %36 = add i64 %35, 1
  store i64 %36, i64* %7
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  store i64 1, i64* %9
  br label %loop_expression4

loop_expression4:                                 ; preds = %loop_true5, %loop_cont3
  %37 = load i64, i64* %9
  %38 = icmp slt i64 %37, 10
  %39 = zext i1 %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %41 = load i64, i64* %9
  %42 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %41
  %43 = load i64, i64* %9
  %44 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %43
  %45 = load i64, i64* %44
  %46 = load i64, i64* %9
  %47 = sub i64 %46, 1
  %48 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %47
  %49 = load i64, i64* %48
  %50 = add i64 %45, %49
  store i64 %50, i64* %42
  %51 = load i64, i64* %9
  %52 = add i64 %51, 1
  store i64 %52, i64* %9
  br label %loop_expression4

loop_cont6:                                       ; preds = %loop_expression4
  %53 = load i64, i64* %5
  store i64 %53, i64* %8
  br label %loop_expression7

loop_expression7:                                 ; preds = %loop_true8, %loop_cont6
  %54 = load i64, i64* %8
  %55 = icmp sgt i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %58 = load i64*, i64** %3
  %59 = load i64, i64* %8
  %60 = sub i64 %59, 1
  %61 = getelementptr i64, i64* %58, i64 %60
  %62 = load i64, i64* %61
  %63 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %62
  %64 = load i64*, i64** %3
  %65 = load i64, i64* %8
  %66 = sub i64 %65, 1
  %67 = getelementptr i64, i64* %64, i64 %66
  %68 = load i64, i64* %67
  %69 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %68
  %70 = load i64, i64* %69
  %71 = sub i64 %70, 1
  store i64 %71, i64* %63
  %72 = load i64*, i64** %4
  %73 = load i64*, i64** %3
  %74 = load i64, i64* %8
  %75 = sub i64 %74, 1
  %76 = getelementptr i64, i64* %73, i64 %75
  %77 = load i64, i64* %76
  %78 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %77
  %79 = load i64, i64* %78
  %80 = getelementptr i64, i64* %72, i64 %79
  %81 = load i64*, i64** %3
  %82 = load i64, i64* %8
  %83 = sub i64 %82, 1
  %84 = getelementptr i64, i64* %81, i64 %83
  %85 = load i64, i64* %84
  store i64 %85, i64* %80
  %86 = load i64, i64* %8
  %87 = sub i64 %86, 1
  store i64 %87, i64* %8
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
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
  %12 = alloca [10 x i64]
  %13 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %14 = getelementptr [10 x i64], [10 x i64]* %12, i64 0, i64 0
  %15 = load i64, i64* @0
  %16 = call i64 @counting_sort(i64* %13, i64* %14, i64 %15)
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
  %24 = getelementptr [10 x i64], [10 x i64]* %12, i64 0, i64 %23
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
