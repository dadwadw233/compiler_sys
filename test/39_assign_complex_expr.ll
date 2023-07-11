; ModuleID = 'sysyc'
source_filename = "./39_assign_complex_expr.sy"
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
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i64 5, i64* %0
  store i64 5, i64* %1
  store i64 1, i64* %2
  store i64 -2, i64* %3
  %5 = load i64, i64* %3
  %6 = mul i64 %5, 1
  %7 = sdiv i64 %6, 2
  %8 = load i64, i64* %0
  %9 = load i64, i64* %1
  %10 = sub i64 %8, %9
  %11 = add i64 %7, %10
  %12 = load i64, i64* %2
  %13 = add i64 %12, 3
  %14 = sub i64 0, %13
  %15 = srem i64 %14, 2
  %16 = sub i64 %11, %15
  store i64 %16, i64* %4
  %17 = load i64, i64* %4
  call void @putint(i64 %17)
  %18 = load i64, i64* %3
  %19 = srem i64 %18, 2
  %20 = add i64 %19, 67
  %21 = load i64, i64* %0
  %22 = load i64, i64* %1
  %23 = sub i64 %21, %22
  %24 = sub i64 0, %23
  %25 = add i64 %20, %24
  %26 = load i64, i64* %2
  %27 = add i64 %26, 2
  %28 = srem i64 %27, 2
  %29 = sub i64 0, %28
  %30 = sub i64 %25, %29
  store i64 %30, i64* %4
  %31 = load i64, i64* %4
  %32 = add i64 %31, 3
  store i64 %32, i64* %4
  %33 = load i64, i64* %4
  call void @putint(i64 %33)
  ret i64 0
}
