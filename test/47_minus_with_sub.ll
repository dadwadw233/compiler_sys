; ModuleID = 'sysyc'
source_filename = "./47_minus_with_sub.sy"
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
  store i64 -2, i64* %0
  store i64 1, i64* %1
  %2 = load i64, i64* %0
  %3 = load i64, i64* %1
  %4 = sub i64 0, %3
  %5 = sub i64 %2, %4
  %6 = load i64, i64* %0
  %7 = load i64, i64* %1
  %8 = add i64 %6, %7
  %9 = sub i64 0, %8
  %10 = load i64, i64* %0
  %11 = load i64, i64* %1
  %12 = sub i64 %10, %11
  %13 = sub i64 0, %12
  %14 = srem i64 %9, %13
  %15 = add i64 %5, %14
  store i64 %15, i64* %0
  %16 = load i64, i64* %0
  call void @putint(i64 %16)
  ret i64 0
}
