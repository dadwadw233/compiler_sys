; ModuleID = 'sysyc'
source_filename = "./42_index_func_ret.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @_getMaxOfAll(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  store i64 -999999, i64* %4
  %5 = load i64, i64* %3
  %6 = sub i64 %5, 1
  store i64 %6, i64* %3
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %7 = load i64, i64* %3
  %8 = icmp sgt i64 %7, -1
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %11 = load i64*, i64** %2
  %12 = load i64, i64* %3
  %13 = getelementptr i64, i64* %11, i64 %12
  %14 = load i64, i64* %13
  %15 = load i64, i64* %4
  %16 = icmp sgt i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %condition_true, label %condition_cont

loop_cont:                                        ; preds = %loop_expression
  %19 = load i64, i64* %4
  ret i64 %19

condition_true:                                   ; preds = %loop_true
  %20 = load i64*, i64** %2
  %21 = load i64, i64* %3
  %22 = getelementptr i64, i64* %20, i64 %21
  %23 = load i64, i64* %22
  store i64 %23, i64* %4
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true
  %24 = load i64, i64* %3
  %25 = sub i64 %24, 1
  store i64 %25, i64* %3
  br label %loop_expression
}

define i64 @main() {
entry:
  %0 = alloca [3 x i64]
  %1 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  store i64 -2, i64* %1
  %2 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 1
  store i64 2, i64* %2
  %3 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 2
  store i64 -7, i64* %3
  %4 = alloca i64
  %5 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  %6 = call i64 @_getMaxOfAll(i64* %5, i64 3)
  %7 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 %6
  %8 = load i64, i64* %7
  store i64 %8, i64* %4
  %9 = load i64, i64* %4
  call void @putint(i64 %9)
  ret i64 0
}
