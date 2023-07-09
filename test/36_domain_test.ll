; ModuleID = 'sysyc'
source_filename = "./36_domain_test.sy"
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
  store i64 1, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @0, i64 0, i64 0)
  %2 = load i64*, i64** %1
  %3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @0, i64 0, i64 0)
  %4 = sub i64 3, %3
  %5 = getelementptr i64, i64* %2, i64 %4
  %6 = load i64, i64* %5
  ret i64 %6
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca [3 x i64]
  %2 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  store i64 -1, i64* %2
  %3 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 1
  store i64 4, i64* %3
  %4 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 2
  store i64 8, i64* %4
  %5 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %6 = call i64 @func(i64* %5)
  store i64 %6, i64* %0
  %7 = load i64, i64* %0
  %8 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 1
  %9 = load i64, i64* %8
  %10 = add i64 %7, %9
  ret i64 %10
}
