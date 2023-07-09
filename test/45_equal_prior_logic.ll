; ModuleID = 'sysyc'
source_filename = "./45_equal_prior_logic.sy"
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
  store i64 10, i64* %0
  store i64 6, i64* %1
  store i64 4, i64* %2
  store i64 5, i64* %3
  %4 = alloca i64
  %5 = load i64, i64* %1
  %6 = load i64, i64* %2
  %7 = add i64 %5, %6
  %8 = load i64, i64* %0
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  %12 = load i64, i64* %3
  %13 = load i64, i64* %0
  %14 = sdiv i64 %13, 2
  %15 = icmp ne i64 %12, %14
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  %18 = and i1 %11, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %entry
  %20 = load i64, i64* %1
  %21 = load i64, i64* %2
  %22 = load i64, i64* %3
  %23 = sdiv i64 %21, %22
  %24 = mul i64 %23, 2
  %25 = add i64 %20, %24
  store i64 %25, i64* %4
  %26 = load i64, i64* %4
  call void @putint(i64 %26)
  br label %27

27:                                               ; preds = %19, %entry
  %28 = load i64, i64* %2
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = icmp ne i64 %30, 0
  %32 = load i64, i64* %0
  %33 = load i64, i64* %2
  %34 = sub i64 %32, %33
  %35 = load i64, i64* %1
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = icmp ne i64 %37, 0
  %39 = load i64, i64* %0
  %40 = load i64, i64* %3
  %41 = mul i64 %40, 2
  %42 = icmp ne i64 %39, %41
  %43 = zext i1 %42 to i64
  %44 = icmp ne i64 %43, 0
  %45 = and i1 %38, %44
  %46 = or i1 %31, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  store i64 1, i64* %4
  %48 = load i64, i64* %4
  call void @putint(i64 %48)
  br label %49

49:                                               ; preds = %47, %27
  ret i64 0
}
