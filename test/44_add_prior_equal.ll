; ModuleID = 'sysyc'
source_filename = "./44_add_prior_equal.sy"
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
  store i64 1, i64* %0
  store i64 4, i64* %1
  store i64 28, i64* %2
  %3 = alloca i64
  %4 = load i64, i64* %2
  %5 = load i64, i64* %0
  %6 = add i64 %4, %5
  %7 = load i64, i64* %1
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %entry
  %12 = load i64, i64* %2
  %13 = load i64, i64* %1
  %14 = sub i64 0, %13
  %15 = srem i64 %12, %14
  store i64 %15, i64* %3
  %16 = load i64, i64* %3
  call void @putint(i64 %16)
  br label %17

17:                                               ; preds = %11, %entry
  %18 = load i64, i64* %1
  %19 = load i64, i64* %2
  %20 = sub i64 %18, %19
  %21 = load i64, i64* %0
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i64, i64* %2
  %27 = load i64, i64* %1
  %28 = srem i64 %26, %27
  %29 = load i64, i64* %1
  %30 = add i64 %28, %29
  store i64 %30, i64* %3
  %31 = load i64, i64* %3
  call void @putint(i64 %31)
  br label %32

32:                                               ; preds = %25, %17
  ret i64 0
}
