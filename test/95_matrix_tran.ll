; ModuleID = 'sysyc'
source_filename = "./95_matrix_tran.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer
@2 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @tran(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8) {
entry:
  %9 = alloca i64*
  store i64* %0, i64** %9
  %10 = alloca i64*
  store i64* %1, i64** %10
  %11 = alloca i64*
  store i64* %2, i64** %11
  %12 = alloca i64*
  store i64* %3, i64** %12
  %13 = alloca i64*
  store i64* %4, i64** %13
  %14 = alloca i64*
  store i64* %5, i64** %14
  %15 = alloca i64*
  store i64* %6, i64** %15
  %16 = alloca i64*
  store i64* %7, i64** %16
  %17 = alloca i64*
  store i64* %8, i64** %17
  %18 = alloca i64
  store i64 0, i64* %18
  %19 = load i64*, i64** %16
  %20 = getelementptr i64, i64* %19, i64 2
  %21 = load i64*, i64** %11
  %22 = getelementptr i64, i64* %21, i64 1
  %23 = load i64, i64* %22
  store i64 %23, i64* %20
  %24 = load i64*, i64** %17
  %25 = getelementptr i64, i64* %24, i64 1
  %26 = load i64*, i64** %10
  %27 = getelementptr i64, i64* %26, i64 2
  %28 = load i64, i64* %27
  store i64 %28, i64* %25
  %29 = load i64*, i64** %15
  %30 = getelementptr i64, i64* %29, i64 1
  %31 = load i64*, i64** %10
  %32 = getelementptr i64, i64* %31, i64 0
  %33 = load i64, i64* %32
  store i64 %33, i64* %30
  %34 = load i64*, i64** %15
  %35 = getelementptr i64, i64* %34, i64 2
  %36 = load i64*, i64** %11
  %37 = getelementptr i64, i64* %36, i64 0
  %38 = load i64, i64* %37
  store i64 %38, i64* %35
  %39 = load i64*, i64** %16
  %40 = getelementptr i64, i64* %39, i64 0
  %41 = load i64*, i64** %9
  %42 = getelementptr i64, i64* %41, i64 1
  %43 = load i64, i64* %42
  store i64 %43, i64* %40
  %44 = load i64*, i64** %17
  %45 = getelementptr i64, i64* %44, i64 0
  %46 = load i64*, i64** %9
  %47 = getelementptr i64, i64* %46, i64 2
  %48 = load i64, i64* %47
  store i64 %48, i64* %45
  %49 = load i64*, i64** %16
  %50 = getelementptr i64, i64* %49, i64 1
  %51 = load i64*, i64** %10
  %52 = getelementptr i64, i64* %51, i64 1
  %53 = load i64, i64* %52
  store i64 %53, i64* %50
  %54 = load i64*, i64** %17
  %55 = getelementptr i64, i64* %54, i64 2
  %56 = load i64*, i64** %11
  %57 = getelementptr i64, i64* %56, i64 2
  %58 = load i64, i64* %57
  store i64 %58, i64* %55
  %59 = load i64*, i64** %15
  %60 = getelementptr i64, i64* %59, i64 0
  %61 = load i64*, i64** %9
  %62 = getelementptr i64, i64* %61, i64 0
  %63 = load i64, i64* %62
  store i64 %63, i64* %60
  ret i64 0
}

define i64 @main() {
entry:
  store i64 3, i64* @2
  store i64 3, i64* @0
  store i64 3, i64* @1
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
  %11 = load i64, i64* @0
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %15 = load i64, i64* %9
  %16 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 %15
  %17 = load i64, i64* %9
  store i64 %17, i64* %16
  %18 = load i64, i64* %9
  %19 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 %18
  %20 = load i64, i64* %9
  store i64 %20, i64* %19
  %21 = load i64, i64* %9
  %22 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 %21
  %23 = load i64, i64* %9
  store i64 %23, i64* %22
  %24 = load i64, i64* %9
  %25 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 %24
  %26 = load i64, i64* %9
  store i64 %26, i64* %25
  %27 = load i64, i64* %9
  %28 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 %27
  %29 = load i64, i64* %9
  store i64 %29, i64* %28
  %30 = load i64, i64* %9
  %31 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 %30
  %32 = load i64, i64* %9
  store i64 %32, i64* %31
  %33 = load i64, i64* %9
  %34 = add i64 %33, 1
  store i64 %34, i64* %9
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %35 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  %36 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %37 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 0
  %38 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %39 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %40 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %41 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %42 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %43 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %44 = call i64 @tran(i64* %35, i64* %36, i64* %37, i64* %38, i64* %39, i64* %40, i64* %41, i64* %42, i64* %43)
  store i64 %44, i64* %9
  %45 = alloca i64
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %46 = load i64, i64* %9
  %47 = load i64, i64* @2
  %48 = icmp slt i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %51 = load i64, i64* %9
  %52 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 %51
  %53 = load i64, i64* %52
  store i64 %53, i64* %45
  %54 = load i64, i64* %45
  call void @putint(i64 %54)
  %55 = load i64, i64* %9
  %56 = add i64 %55, 1
  store i64 %56, i64* %9
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  store i64 10, i64* %45
  %57 = load i64, i64* %45
  call void @putch(i64 %57)
  store i64 0, i64* %9
  br label %loop_expression4

loop_expression4:                                 ; preds = %loop_true5, %loop_cont3
  %58 = load i64, i64* %9
  %59 = load i64, i64* @2
  %60 = icmp slt i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %63 = load i64, i64* %9
  %64 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 %63
  %65 = load i64, i64* %64
  store i64 %65, i64* %45
  %66 = load i64, i64* %45
  call void @putint(i64 %66)
  %67 = load i64, i64* %9
  %68 = add i64 %67, 1
  store i64 %68, i64* %9
  br label %loop_expression4

loop_cont6:                                       ; preds = %loop_expression4
  store i64 10, i64* %45
  store i64 0, i64* %9
  %69 = load i64, i64* %45
  call void @putch(i64 %69)
  br label %loop_expression7

loop_expression7:                                 ; preds = %loop_true8, %loop_cont6
  %70 = load i64, i64* %9
  %71 = load i64, i64* @2
  %72 = icmp slt i64 %70, %71
  %73 = zext i1 %72 to i64
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %75 = load i64, i64* %9
  %76 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 %75
  %77 = load i64, i64* %76
  store i64 %77, i64* %45
  %78 = load i64, i64* %45
  call void @putint(i64 %78)
  %79 = load i64, i64* %9
  %80 = add i64 %79, 1
  store i64 %80, i64* %9
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  store i64 10, i64* %45
  %81 = load i64, i64* %45
  call void @putch(i64 %81)
  ret i64 0
}
