; ModuleID = 'sysyc'
source_filename = "./40_index_complex_expr.sy"
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
  %4 = alloca [5 x i64]
  store i64 5, i64* %0
  store i64 5, i64* %1
  store i64 1, i64* %2
  store i64 -2, i64* %3
  %5 = getelementptr [5 x i64], [5 x i64]* %4, i64 0, i64 0
  store i64 1, i64* %5
  %6 = getelementptr [5 x i64], [5 x i64]* %4, i64 0, i64 1
  store i64 2, i64* %6
  %7 = getelementptr [5 x i64], [5 x i64]* %4, i64 0, i64 2
  store i64 3, i64* %7
  %8 = getelementptr [5 x i64], [5 x i64]* %4, i64 0, i64 3
  store i64 4, i64* %8
  %9 = getelementptr [5 x i64], [5 x i64]* %4, i64 0, i64 4
  store i64 5, i64* %9
  %10 = alloca i64
  %11 = load i64, i64* %3
  %12 = mul i64 %11, 1
  %13 = sdiv i64 %12, 2
  %14 = add i64 %13, 4
  %15 = load i64, i64* %0
  %16 = load i64, i64* %1
  %17 = sub i64 %15, %16
  %18 = add i64 %14, %17
  %19 = load i64, i64* %2
  %20 = add i64 %19, 3
  %21 = sub i64 0, %20
  %22 = srem i64 %21, 2
  %23 = sub i64 %18, %22
  %24 = srem i64 %23, 5
  %25 = getelementptr [5 x i64], [5 x i64]* %4, i64 0, i64 %24
  %26 = load i64, i64* %25
  store i64 %26, i64* %10
  %27 = load i64, i64* %10
  call void @putint(i64 %27)
  %28 = load i64, i64* %2
  %29 = srem i64 %28, 2
  %30 = add i64 %29, 67
  %31 = load i64, i64* %0
  %32 = add i64 %30, %31
  %33 = load i64, i64* %1
  %34 = sub i64 %32, %33
  %35 = load i64, i64* %2
  %36 = add i64 %35, 2
  %37 = srem i64 %36, 2
  %38 = sub i64 0, %37
  %39 = sub i64 %34, %38
  %40 = srem i64 %39, 5
  %41 = getelementptr [5 x i64], [5 x i64]* %4, i64 0, i64 %40
  %42 = load i64, i64* %41
  store i64 %42, i64* %10
  %43 = load i64, i64* %10
  call void @putint(i64 %43)
  ret i64 0
}
