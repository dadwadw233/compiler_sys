; ModuleID = 'sysyc'
source_filename = "./38_if_complex_expr.sy"
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
  store i64 2, i64* %4
  %5 = load i64, i64* %3
  %6 = mul i64 %5, 1
  %7 = sdiv i64 %6, 2
  %8 = icmp slt i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  %11 = load i64, i64* %0
  %12 = load i64, i64* %1
  %13 = sub i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = icmp ne i64 %15, 0
  %17 = load i64, i64* %2
  %18 = add i64 %17, 3
  %19 = srem i64 %18, 2
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  %23 = and i1 %16, %22
  %24 = or i1 %10, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %entry
  %26 = load i64, i64* %4
  call void @putint(i64 %26)
  br label %27

27:                                               ; preds = %25, %entry
  %28 = load i64, i64* %3
  %29 = srem i64 %28, 2
  %30 = add i64 %29, 67
  %31 = icmp slt i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = icmp ne i64 %32, 0
  %34 = load i64, i64* %0
  %35 = load i64, i64* %1
  %36 = sub i64 %34, %35
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = icmp ne i64 %38, 0
  %40 = load i64, i64* %2
  %41 = add i64 %40, 2
  %42 = srem i64 %41, 2
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = icmp ne i64 %44, 0
  %46 = and i1 %39, %45
  %47 = or i1 %33, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  store i64 4, i64* %4
  %49 = load i64, i64* %4
  call void @putint(i64 %49)
  br label %50

50:                                               ; preds = %48, %27
  ret i64 0
}
