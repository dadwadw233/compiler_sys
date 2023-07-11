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
  br i1 %24, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  %25 = load i64, i64* %4
  call void @putint(i64 %25)
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %entry
  %26 = load i64, i64* %3
  %27 = srem i64 %26, 2
  %28 = add i64 %27, 67
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = icmp ne i64 %30, 0
  %32 = load i64, i64* %0
  %33 = load i64, i64* %1
  %34 = sub i64 %32, %33
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = icmp ne i64 %36, 0
  %38 = load i64, i64* %2
  %39 = add i64 %38, 2
  %40 = srem i64 %39, 2
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = icmp ne i64 %42, 0
  %44 = and i1 %37, %43
  %45 = or i1 %31, %44
  br i1 %45, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %condition_cont
  store i64 4, i64* %4
  %46 = load i64, i64* %4
  call void @putint(i64 %46)
  br label %condition_cont2

condition_cont2:                                  ; preds = %condition_true1, %condition_cont
  ret i64 0
}
