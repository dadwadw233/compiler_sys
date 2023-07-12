; ModuleID = 'sysyc'
source_filename = "./67_remove_duplicate_element.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @removeElement(i64* %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = alloca i64
  store i64 0, i64* %6
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %7 = load i64, i64* %6
  %8 = load i64, i64* %4
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %12 = load i64*, i64** %3
  %13 = load i64, i64* %6
  %14 = getelementptr i64, i64* %12, i64 %13
  %15 = load i64, i64* %14
  %16 = load i64, i64* %5
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %condition_true, label %false

loop_cont:                                        ; preds = %loop_expression
  %20 = load i64, i64* %4
  ret i64 %20

condition_true:                                   ; preds = %loop_true
  %21 = load i64*, i64** %3
  %22 = load i64, i64* %6
  %23 = getelementptr i64, i64* %21, i64 %22
  %24 = load i64*, i64** %3
  %25 = load i64, i64* %4
  %26 = sub i64 %25, 1
  %27 = getelementptr i64, i64* %24, i64 %26
  %28 = load i64, i64* %27
  store i64 %28, i64* %23
  %29 = load i64, i64* %4
  %30 = sub i64 %29, 1
  store i64 %30, i64* %4
  br label %condition_cont

false:                                            ; preds = %loop_true
  %31 = load i64, i64* %6
  %32 = add i64 %31, 1
  store i64 %32, i64* %6
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
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
  %12 = alloca i64
  store i64 3, i64* %12
  %13 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %14 = load i64, i64* %0
  %15 = load i64, i64* %12
  %16 = call i64 @removeElement(i64* %13, i64 %14, i64 %15)
  store i64 %16, i64* %0
  %17 = load i64, i64* %0
  ret i64 %17
}
