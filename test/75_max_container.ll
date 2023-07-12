; ModuleID = 'sysyc'
source_filename = "./75_max_container.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @maxArea(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  store i64 0, i64* %4
  %6 = load i64, i64* %3
  %7 = sub i64 %6, 1
  store i64 %7, i64* %5
  %8 = alloca i64
  store i64 -1, i64* %8
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont6, %entry
  %9 = load i64, i64* %4
  %10 = load i64, i64* %5
  %11 = icmp slt i64 %9, %10
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %14 = alloca i64
  %15 = load i64*, i64** %2
  %16 = load i64, i64* %4
  %17 = getelementptr i64, i64* %15, i64 %16
  %18 = load i64, i64* %17
  %19 = load i64*, i64** %2
  %20 = load i64, i64* %5
  %21 = getelementptr i64, i64* %19, i64 %20
  %22 = load i64, i64* %21
  %23 = icmp slt i64 %18, %22
  %24 = zext i1 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %condition_true, label %false

loop_cont:                                        ; preds = %loop_expression
  %26 = load i64, i64* %8
  ret i64 %26

condition_true:                                   ; preds = %loop_true
  %27 = load i64, i64* %5
  %28 = load i64, i64* %4
  %29 = sub i64 %27, %28
  %30 = load i64*, i64** %2
  %31 = load i64, i64* %4
  %32 = getelementptr i64, i64* %30, i64 %31
  %33 = load i64, i64* %32
  %34 = mul i64 %29, %33
  store i64 %34, i64* %14
  br label %condition_cont

false:                                            ; preds = %loop_true
  %35 = load i64, i64* %5
  %36 = load i64, i64* %4
  %37 = sub i64 %35, %36
  %38 = load i64*, i64** %2
  %39 = load i64, i64* %5
  %40 = getelementptr i64, i64* %38, i64 %39
  %41 = load i64, i64* %40
  %42 = mul i64 %37, %41
  store i64 %42, i64* %14
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  %43 = load i64, i64* %14
  %44 = load i64, i64* %8
  %45 = icmp sgt i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %condition_true1, label %condition_cont3

condition_true1:                                  ; preds = %condition_cont
  %48 = load i64, i64* %14
  store i64 %48, i64* %8
  br label %condition_cont3

condition_cont3:                                  ; preds = %condition_true1, %condition_cont
  %49 = load i64*, i64** %2
  %50 = load i64, i64* %4
  %51 = getelementptr i64, i64* %49, i64 %50
  %52 = load i64, i64* %51
  %53 = load i64*, i64** %2
  %54 = load i64, i64* %5
  %55 = getelementptr i64, i64* %53, i64 %54
  %56 = load i64, i64* %55
  %57 = icmp sgt i64 %52, %56
  %58 = zext i1 %57 to i64
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %condition_true4, label %false5

condition_true4:                                  ; preds = %condition_cont3
  %60 = load i64, i64* %5
  %61 = sub i64 %60, 1
  store i64 %61, i64* %5
  br label %condition_cont6

false5:                                           ; preds = %condition_cont3
  %62 = load i64, i64* %4
  %63 = add i64 %62, 1
  store i64 %63, i64* %4
  br label %condition_cont6

condition_cont6:                                  ; preds = %false5, %condition_true4
  br label %loop_expression
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca [10 x i64]
  %2 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  store i64 3, i64* %2
  %3 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 1
  store i64 3, i64* %3
  %4 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 2
  store i64 9, i64* %4
  %5 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 3
  store i64 0, i64* %5
  %6 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 4
  store i64 0, i64* %6
  %7 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 5
  store i64 1, i64* %7
  %8 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 6
  store i64 1, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 7
  store i64 5, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 8
  store i64 7, i64* %10
  %11 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 9
  store i64 8, i64* %11
  store i64 10, i64* %0
  %12 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %13 = load i64, i64* %0
  %14 = call i64 @maxArea(i64* %12, i64 %13)
  store i64 %14, i64* %0
  %15 = load i64, i64* %0
  ret i64 %15
}
