; ModuleID = 'sysyc'
source_filename = "./50_recursion_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @fact(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  ret i64 1

7:                                                ; preds = %entry
  %8 = alloca i64
  %9 = load i64, i64* %1
  %10 = sub i64 %9, 1
  store i64 %10, i64* %8
  %11 = load i64, i64* %1
  %12 = load i64, i64* %8
  %13 = call i64 @fact(i64 %12)
  %14 = mul i64 %11, %13
  ret i64 %14
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 4, i64* %0
  %1 = load i64, i64* %0
  %2 = call i64 @fact(i64 %1)
  ret i64 %2
}
