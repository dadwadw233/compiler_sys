; ModuleID = 'sysyc'
source_filename = "./78_decbinoct.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @dec2bin(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  store i64 0, i64* %2
  store i64 1, i64* %3
  %6 = load i64, i64* %1
  store i64 %6, i64* %5
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i64, i64* %5
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i64, i64* %5
  %14 = srem i64 %13, 2
  store i64 %14, i64* %4
  %15 = load i64, i64* %3
  %16 = load i64, i64* %4
  %17 = mul i64 %15, %16
  %18 = load i64, i64* %2
  %19 = add i64 %17, %18
  store i64 %19, i64* %2
  %20 = load i64, i64* %3
  %21 = mul i64 %20, 10
  store i64 %21, i64* %3
  %22 = load i64, i64* %5
  %23 = sdiv i64 %22, 2
  store i64 %23, i64* %5
  br label %7

24:                                               ; preds = %7
  %25 = load i64, i64* %2
  ret i64 %25
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 400, i64* %0
  %1 = alloca i64
  %2 = load i64, i64* %0
  %3 = call i64 @dec2bin(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  call void @putint(i64 %4)
  store i64 10, i64* %1
  %5 = load i64, i64* %1
  call void @putch(i64 %5)
  ret i64 0
}
