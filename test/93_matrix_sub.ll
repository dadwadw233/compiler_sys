; ModuleID = 'sysyc'
source_filename = "./93_matrix_sub.sy"
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

define i64 @sub(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8) {
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
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %19 = load i64, i64* %18
  %20 = icmp slt i64 %19, 3
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %23 = load i64*, i64** %15
  %24 = load i64, i64* %18
  %25 = getelementptr i64, i64* %23, i64 %24
  %26 = load i64*, i64** %9
  %27 = load i64, i64* %18
  %28 = getelementptr i64, i64* %26, i64 %27
  %29 = load i64, i64* %28
  %30 = load i64*, i64** %12
  %31 = load i64, i64* %18
  %32 = getelementptr i64, i64* %30, i64 %31
  %33 = load i64, i64* %32
  %34 = sub i64 %29, %33
  store i64 %34, i64* %25
  %35 = load i64*, i64** %16
  %36 = load i64, i64* %18
  %37 = getelementptr i64, i64* %35, i64 %36
  %38 = load i64*, i64** %10
  %39 = load i64, i64* %18
  %40 = getelementptr i64, i64* %38, i64 %39
  %41 = load i64, i64* %40
  %42 = load i64*, i64** %13
  %43 = load i64, i64* %18
  %44 = getelementptr i64, i64* %42, i64 %43
  %45 = load i64, i64* %44
  %46 = sub i64 %41, %45
  store i64 %46, i64* %37
  %47 = load i64*, i64** %17
  %48 = load i64, i64* %18
  %49 = getelementptr i64, i64* %47, i64 %48
  %50 = load i64*, i64** %11
  %51 = load i64, i64* %18
  %52 = getelementptr i64, i64* %50, i64 %51
  %53 = load i64, i64* %52
  %54 = load i64*, i64** %14
  %55 = load i64, i64* %18
  %56 = getelementptr i64, i64* %54, i64 %55
  %57 = load i64, i64* %56
  %58 = sub i64 %53, %57
  store i64 %58, i64* %49
  %59 = load i64, i64* %18
  %60 = add i64 %59, 1
  store i64 %60, i64* %18
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}

define i64 @main() {
entry:
  store i64 3, i64* @0
  store i64 3, i64* @1
  store i64 3, i64* @2
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
  %35 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %36 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 0
  %37 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %38 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %39 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %40 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %41 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %42 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %43 = call i64 @sub(i64* %34, i64* %35, i64* %36, i64* %37, i64* %38, i64* %39, i64* %40, i64* %41, i64* %42)
  store i64 %43, i64* %9
  %44 = alloca i64
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %45 = load i64, i64* %9
  %46 = icmp slt i64 %45, 3
  %47 = zext i1 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %49 = load i64, i64* %9
  %50 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 %49
  %51 = load i64, i64* %50
  store i64 %51, i64* %44
  %52 = load i64, i64* %44
  call void @putint(i64 %52)
  %53 = load i64, i64* %9
  %54 = add i64 %53, 1
  store i64 %54, i64* %9
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  store i64 10, i64* %44
  store i64 0, i64* %9
  %55 = load i64, i64* %44
  call void @putch(i64 %55)
  br label %loop_expression4

loop_expression4:                                 ; preds = %loop_true5, %loop_cont3
  %56 = load i64, i64* %9
  %57 = icmp slt i64 %56, 3
  %58 = zext i1 %57 to i64
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %60 = load i64, i64* %9
  %61 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 %60
  %62 = load i64, i64* %61
  store i64 %62, i64* %44
  %63 = load i64, i64* %44
  call void @putint(i64 %63)
  %64 = load i64, i64* %9
  %65 = add i64 %64, 1
  store i64 %65, i64* %9
  br label %loop_expression4

loop_cont6:                                       ; preds = %loop_expression4
  store i64 10, i64* %44
  store i64 0, i64* %9
  %66 = load i64, i64* %44
  call void @putch(i64 %66)
  br label %loop_expression7

loop_expression7:                                 ; preds = %loop_true8, %loop_cont6
  %67 = load i64, i64* %9
  %68 = icmp slt i64 %67, 3
  %69 = zext i1 %68 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %71 = load i64, i64* %9
  %72 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 %71
  %73 = load i64, i64* %72
  store i64 %73, i64* %44
  %74 = load i64, i64* %44
  call void @putint(i64 %74)
  %75 = load i64, i64* %9
  %76 = add i64 %75, 1
  store i64 %76, i64* %9
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  store i64 10, i64* %44
  %77 = load i64, i64* %44
  call void @putch(i64 %77)
  ret i64 0
}
