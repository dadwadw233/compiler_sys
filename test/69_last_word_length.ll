; ModuleID = 'sysyc'
source_filename = "./69_last_word_length.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @lengthOfLastWord(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = load i64, i64* %3
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 0

condition_cont:                                   ; preds = %entry
  %8 = alloca i64
  %9 = load i64, i64* %3
  %10 = sub i64 %9, 1
  store i64 %10, i64* %8
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont
  %11 = load i64, i64* %8
  %12 = icmp sgt i64 %11, -1
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  %15 = load i64*, i64** %2
  %16 = load i64, i64* %8
  %17 = getelementptr i64, i64* %15, i64 %16
  %18 = load i64, i64* %17
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  %22 = and i1 %14, %21
  br i1 %22, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %23 = load i64, i64* %8
  %24 = sub i64 %23, 1
  store i64 %24, i64* %8
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %25 = load i64, i64* %8
  %26 = icmp eq i64 %25, -1
  %27 = zext i1 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %loop_cont
  ret i64 0

condition_cont2:                                  ; preds = %loop_cont
  %29 = alloca i64
  %30 = load i64, i64* %8
  store i64 %30, i64* %29
  br label %loop_expression3

loop_expression3:                                 ; preds = %condition_cont7, %condition_cont2
  %31 = load i64, i64* %29
  %32 = icmp sgt i64 %31, -1
  %33 = zext i1 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %loop_true4, label %loop_cont5

loop_true4:                                       ; preds = %loop_expression3
  %35 = load i64*, i64** %2
  %36 = load i64, i64* %29
  %37 = getelementptr i64, i64* %35, i64 %36
  %38 = load i64, i64* %37
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %condition_true6, label %condition_cont7

loop_cont5:                                       ; preds = %loop_expression3
  %42 = load i64, i64* %8
  %43 = load i64, i64* %29
  %44 = sub i64 %42, %43
  ret i64 %44

condition_true6:                                  ; preds = %loop_true4
  %45 = load i64, i64* %3
  %46 = load i64, i64* %29
  %47 = sub i64 %45, %46
  %48 = sub i64 %47, 1
  %49 = load i64, i64* %3
  %50 = sub i64 %49, 1
  %51 = load i64, i64* %8
  %52 = sub i64 %50, %51
  %53 = sub i64 %48, %52
  ret i64 %53

condition_cont7:                                  ; preds = %loop_true4
  %54 = load i64, i64* %29
  %55 = sub i64 %54, 1
  store i64 %55, i64* %29
  br label %loop_expression3
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca [10 x i64]
  %2 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  store i64 -4, i64* %2
  %3 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 1
  store i64 3, i64* %3
  %4 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 2
  store i64 9, i64* %4
  %5 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 3
  store i64 -2, i64* %5
  %6 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 4
  store i64 0, i64* %6
  %7 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 5
  store i64 1, i64* %7
  %8 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 6
  store i64 -6, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 7
  store i64 5, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 8
  store i64 7, i64* %10
  %11 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 9
  store i64 8, i64* %11
  store i64 10, i64* %0
  %12 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %13 = load i64, i64* %0
  %14 = call i64 @lengthOfLastWord(i64* %12, i64 %13)
  store i64 %14, i64* %0
  %15 = load i64, i64* %0
  ret i64 %15
}
