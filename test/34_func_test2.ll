; ModuleID = 'sysyc'
source_filename = "./34_func_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @func1() {
entry:
  %0 = alloca i64
  store i64 1, i64* %0
  %1 = load i64, i64* %0
  ret i64 %1
}

define i64 @func2() {
entry:
  %0 = alloca i64
  store i64 2, i64* %0
  %1 = load i64, i64* %0
  ret i64 %1
}

define i64 @func3() {
entry:
  %0 = alloca i64
  store i64 4, i64* %0
  %1 = load i64, i64* %0
  ret i64 %1
}

define i64 @func4() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  store i64 8, i64* %1
  %2 = load i64, i64* %1
  store i64 %2, i64* %0
  %3 = alloca i64
  store i64 16, i64* %3
  %4 = load i64, i64* %0
  %5 = load i64, i64* %3
  %6 = add i64 %4, %5
  store i64 %6, i64* %0
  %7 = load i64, i64* %0
  ret i64 %7
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  store i64 32, i64* %0
  store i64 32, i64* %1
  store i64 32, i64* %2
  %3 = call i64 @func1()
  %4 = call i64 @func2()
  %5 = add i64 %3, %4
  %6 = call i64 @func3()
  %7 = add i64 %5, %6
  %8 = call i64 @func4()
  %9 = add i64 %7, %8
  %10 = load i64, i64* %0
  %11 = add i64 %9, %10
  %12 = load i64, i64* %1
  %13 = add i64 %11, %12
  %14 = load i64, i64* %2
  %15 = add i64 %13, %14
  ret i64 %15
}
