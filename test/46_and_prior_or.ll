; ModuleID = 'sysyc'
source_filename = "./46_and_prior_or.sy"
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
  store i64 3, i64* %0
  store i64 8, i64* %1
  store i64 -4, i64* %2
  store i64 15, i64* %3
  %4 = alloca i64
  %5 = load i64, i64* %3
  %6 = load i64, i64* %1
  %7 = load i64, i64* %0
  %8 = sub i64 %6, %7
  %9 = srem i64 %5, %8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  %13 = load i64, i64* %0
  %14 = icmp sgt i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %12, %16
  %18 = load i64, i64* %3
  %19 = srem i64 %18, 3
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  %23 = load i64, i64* %2
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  %27 = and i1 %22, %26
  %28 = or i1 %17, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %entry
  %30 = load i64, i64* %3
  %31 = load i64, i64* %2
  %32 = add i64 %30, %31
  %33 = load i64, i64* %1
  %34 = sub i64 0, %33
  %35 = sub i64 %32, %34
  store i64 %35, i64* %4
  %36 = load i64, i64* %4
  call void @putint(i64 %36)
  br label %37

37:                                               ; preds = %29, %entry
  ret i64 0
}
