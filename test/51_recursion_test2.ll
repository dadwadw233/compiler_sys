; ModuleID = 'sysyc'
source_filename = "./51_recursion_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @fib(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  ret i64 0

7:                                                ; preds = %entry
  %8 = load i64, i64* %1
  %9 = icmp eq i64 %8, 1
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  ret i64 1

13:                                               ; preds = %7
  %14 = alloca i64
  %15 = load i64, i64* %1
  %16 = sub i64 %15, 1
  store i64 %16, i64* %14
  %17 = alloca i64
  %18 = load i64, i64* %1
  %19 = sub i64 %18, 2
  store i64 %19, i64* %17
  %20 = load i64, i64* %14
  %21 = call i64 @fib(i64 %20)
  %22 = load i64, i64* %17
  %23 = call i64 @fib(i64 %22)
  %24 = add i64 %21, %23
  ret i64 %24
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 10, i64* %0
  %1 = load i64, i64* %0
  %2 = call i64 @fib(i64 %1)
  ret i64 %2
}
