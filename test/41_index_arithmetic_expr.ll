; ModuleID = 'sysyc'
source_filename = "./41_index_arithmetic_expr.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca [3 x i64]
  store i64 56, i64* %0
  store i64 12, i64* %1
  %3 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 0
  store i64 1, i64* %3
  %4 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 1
  store i64 2, i64* %4
  %5 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 2
  store i64 3, i64* %5
  %6 = alloca i64
  %7 = load i64, i64* %0
  %8 = load i64, i64* %1
  %9 = srem i64 %7, %8
  %10 = load i64, i64* %1
  %11 = add i64 %9, %10
  %12 = sdiv i64 %11, 5
  %13 = sub i64 %12, 2
  %14 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 %13
  %15 = load i64, i64* %14
  store i64 %15, i64* %6
  %16 = load i64, i64* %6
  call void @putint(i64 %16)
  ret i64 0
}
