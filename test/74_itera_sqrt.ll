; ModuleID = 'sysyc'
source_filename = "./74_itera_sqrt.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @fsqrt(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = alloca i64
  %4 = load i64, i64* %1
  %5 = sdiv i64 %4, 2
  store i64 %5, i64* %3
  br label %6

6:                                                ; preds = %13, %entry
  %7 = load i64, i64* %2
  %8 = load i64, i64* %3
  %9 = sub i64 %7, %8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  %14 = load i64, i64* %3
  store i64 %14, i64* %2
  %15 = load i64, i64* %2
  %16 = load i64, i64* %1
  %17 = load i64, i64* %2
  %18 = sdiv i64 %16, %17
  %19 = add i64 %15, %18
  store i64 %19, i64* %3
  %20 = load i64, i64* %3
  %21 = sdiv i64 %20, 2
  store i64 %21, i64* %3
  br label %6

22:                                               ; preds = %6
  %23 = load i64, i64* %3
  ret i64 %23
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 400, i64* %0
  %1 = alloca i64
  %2 = load i64, i64* %0
  %3 = call i64 @fsqrt(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  call void @putint(i64 %4)
  store i64 10, i64* %1
  %5 = load i64, i64* %1
  call void @putch(i64 %5)
  ret i64 0
}
