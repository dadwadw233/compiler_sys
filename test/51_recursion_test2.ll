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
  br i1 %5, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 0

condition_cont:                                   ; preds = %entry
  %6 = load i64, i64* %1
  %7 = icmp eq i64 %6, 1
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %condition_cont
  ret i64 1

condition_cont2:                                  ; preds = %condition_cont
  %10 = alloca i64
  %11 = load i64, i64* %1
  %12 = sub i64 %11, 1
  store i64 %12, i64* %10
  %13 = alloca i64
  %14 = load i64, i64* %1
  %15 = sub i64 %14, 2
  store i64 %15, i64* %13
  %16 = load i64, i64* %10
  %17 = call i64 @fib(i64 %16)
  %18 = load i64, i64* %13
  %19 = call i64 @fib(i64 %18)
  %20 = add i64 %17, %19
  ret i64 %20
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 10, i64* %0
  %1 = load i64, i64* %0
  %2 = call i64 @fib(i64 %1)
  ret i64 %2
}
