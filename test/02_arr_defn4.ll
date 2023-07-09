; ModuleID = 'sysyc'
source_filename = "./02_arr_defn4.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca [4 x [2 x i64]]
  %1 = getelementptr [4 x [2 x i64]], [4 x [2 x i64]]* %0, i64 0, i64 0
  %2 = getelementptr [2 x i64], [2 x i64]* %1, i64 0, i64 0
  store i64 1, i64* %2
  %3 = getelementptr i64, i64* %2, i64 1
  store i64 2, i64* %3
  %4 = getelementptr i64, i64* %3, i64 1
  store i64 3, i64* %4
  %5 = getelementptr i64, i64* %4, i64 1
  store i64 4, i64* %5
  %6 = getelementptr i64, i64* %5, i64 1
  store i64 5, i64* %6
  %7 = getelementptr i64, i64* %6, i64 1
  store i64 6, i64* %7
  %8 = getelementptr i64, i64* %7, i64 1
  store i64 7, i64* %8
  %9 = getelementptr i64, i64* %8, i64 1
  store i64 8, i64* %9
  %10 = getelementptr i64, i64* %9, i64 1
  %11 = alloca [4 x [2 x i64]]
  %12 = getelementptr [4 x [2 x i64]], [4 x [2 x i64]]* %0, i64 0, i64 0
  %13 = getelementptr [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %14 = load i64, i64* %13
  %15 = getelementptr [4 x [2 x i64]], [4 x [2 x i64]]* %0, i64 0, i64 0
  %16 = getelementptr [2 x i64], [2 x i64]* %15, i64 0, i64 1
  %17 = load i64, i64* %16
  %18 = getelementptr [4 x [2 x i64]], [4 x [2 x i64]]* %11, i64 0, i64 0
  %19 = getelementptr [2 x i64], [2 x i64]* %18, i64 0, i64 0
  store i64 %14, i64* %19
  %20 = getelementptr i64, i64* %19, i64 1
  store i64 %17, i64* %20
  %21 = getelementptr i64, i64* %20, i64 1
  store i64 3, i64* %21
  %22 = getelementptr i64, i64* %21, i64 1
  store i64 4, i64* %22
  %23 = getelementptr i64, i64* %22, i64 1
  store i64 5, i64* %23
  %24 = getelementptr i64, i64* %23, i64 1
  store i64 6, i64* %24
  %25 = getelementptr i64, i64* %24, i64 1
  store i64 7, i64* %25
  %26 = getelementptr i64, i64* %25, i64 1
  store i64 8, i64* %26
  %27 = getelementptr i64, i64* %26, i64 1
  ret i64 0
}
