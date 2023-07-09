; ModuleID = 'sysyc'
source_filename = "./79_gcd.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @gcd(i64 %0, i64 %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = load i64, i64* %2
  %7 = load i64, i64* %3
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %entry
  %12 = load i64, i64* %2
  store i64 %12, i64* %4
  %13 = load i64, i64* %3
  store i64 %13, i64* %2
  %14 = load i64, i64* %4
  store i64 %14, i64* %3
  br label %15

15:                                               ; preds = %11, %entry
  %16 = load i64, i64* %2
  %17 = load i64, i64* %3
  %18 = srem i64 %16, %17
  store i64 %18, i64* %5
  br label %19

19:                                               ; preds = %24, %15
  %20 = load i64, i64* %5
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i64, i64* %3
  store i64 %25, i64* %2
  %26 = load i64, i64* %5
  store i64 %26, i64* %3
  %27 = load i64, i64* %2
  %28 = load i64, i64* %3
  %29 = srem i64 %27, %28
  store i64 %29, i64* %5
  br label %19

30:                                               ; preds = %19
  %31 = load i64, i64* %3
  ret i64 %31
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = call i64 @getint()
  store i64 %2, i64* %0
  %3 = call i64 @getint()
  store i64 %3, i64* %1
  %4 = load i64, i64* %0
  %5 = load i64, i64* %1
  %6 = call i64 @gcd(i64 %4, i64 %5)
  ret i64 %6
}
