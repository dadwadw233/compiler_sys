; ModuleID = 'sysyc'
source_filename = "./35_array_test.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [2 x i64] zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @func(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = load i64*, i64** %1
  %3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @0, i64 0, i64 0)
  %4 = sub i64 3, %3
  %5 = getelementptr i64, i64* %2, i64 %4
  %6 = load i64, i64* %5
  ret i64 %6
}

define i64 @main() {
entry:
  %0 = alloca [1 x i64]
  %1 = alloca [3 x i64]
  %2 = alloca i64
  store i64 1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @0, i64 0, i64 0)
  store i64 2, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @0, i64 0, i64 1)
  %3 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  store i64 -1, i64* %3
  %4 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 1
  %5 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %6 = load i64, i64* %5
  %7 = sub i64 %6, 2
  store i64 %7, i64* %4
  %8 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 1
  %9 = load i64, i64* %8
  store i64 %9, i64* %2
  %10 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 2
  store i64 16, i64* %10
  %11 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %12 = call i64 @func(i64* %11)
  %13 = add i64 %12, 2
  %14 = load i64, i64* %2
  %15 = add i64 %13, %14
  ret i64 %15
}
