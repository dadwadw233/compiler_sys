; ModuleID = 'sysyc'
source_filename = "./43_time_prior_plus.sy"
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
  store i64 20, i64* %0
  %1 = alloca i64
  store i64 5, i64* %1
  %2 = alloca i64
  store i64 6, i64* %2
  %3 = alloca i64
  store i64 -4, i64* %3
  %4 = load i64, i64* %0
  %5 = load i64, i64* %2
  %6 = load i64, i64* %3
  %7 = mul i64 %5, %6
  %8 = add i64 %4, %7
  %9 = load i64, i64* %1
  %10 = load i64, i64* %0
  %11 = load i64, i64* %3
  %12 = add i64 %10, %11
  %13 = srem i64 %9, %12
  %14 = load i64, i64* %0
  %15 = sdiv i64 %13, %14
  %16 = sub i64 %8, %15
  store i64 %16, i64* %0
  %17 = load i64, i64* %0
  call void @putint(i64 %17)
  ret i64 0
}
