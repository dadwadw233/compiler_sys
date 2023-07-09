; ModuleID = 'sysyc'
source_filename = "./72_enum.sy"
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
  store i64 0, i64* %0
  store i64 0, i64* %1
  store i64 0, i64* %2
  br label %4

4:                                                ; preds = %34, %entry
  %5 = load i64, i64* %0
  %6 = icmp slt i64 %5, 21
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  ret i64 0

11:                                               ; preds = %42, %9
  %12 = load i64, i64* %1
  %13 = load i64, i64* %0
  %14 = sub i64 101, %13
  %15 = icmp slt i64 %12, %14
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i64, i64* %0
  %20 = sub i64 100, %19
  %21 = load i64, i64* %1
  %22 = sub i64 %20, %21
  store i64 %22, i64* %2
  %23 = load i64, i64* %0
  %24 = mul i64 5, %23
  %25 = load i64, i64* %1
  %26 = mul i64 1, %25
  %27 = add i64 %24, %26
  %28 = load i64, i64* %2
  %29 = sdiv i64 %28, 2
  %30 = add i64 %27, %29
  %31 = icmp eq i64 %30, 100
  %32 = zext i1 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %42

34:                                               ; preds = %11
  %35 = load i64, i64* %0
  %36 = add i64 %35, 1
  store i64 %36, i64* %0
  br label %4

37:                                               ; preds = %18
  %38 = load i64, i64* %0
  call void @putint(i64 %38)
  %39 = load i64, i64* %1
  call void @putint(i64 %39)
  %40 = load i64, i64* %2
  call void @putint(i64 %40)
  store i64 10, i64* %3
  %41 = load i64, i64* %3
  call void @putch(i64 %41)
  br label %42

42:                                               ; preds = %37, %18
  %43 = load i64, i64* %1
  %44 = add i64 %43, 1
  store i64 %44, i64* %1
  br label %11
}
