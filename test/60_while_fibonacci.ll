; ModuleID = 'sysyc'
source_filename = "./60_while_fibonacci.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

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
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i64 0, i64* %2
  store i64 1, i64* %3
  %5 = load i64, i64* %1
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %entry
  ret i64 0

10:                                               ; preds = %entry
  %11 = load i64, i64* %1
  %12 = icmp eq i64 %11, 1
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  ret i64 1

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i64, i64* %1
  %19 = icmp sgt i64 %18, 1
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i64, i64* %2
  %24 = load i64, i64* %3
  %25 = add i64 %23, %24
  store i64 %25, i64* %4
  %26 = load i64, i64* %3
  store i64 %26, i64* %2
  %27 = load i64, i64* %4
  store i64 %27, i64* %3
  %28 = load i64, i64* %1
  %29 = sub i64 %28, 1
  store i64 %29, i64* %1
  br label %17

30:                                               ; preds = %17
  %31 = load i64, i64* %4
  ret i64 %31
}

define i64 @main() {
entry:
  %0 = call i64 @getint()
  store i64 %0, i64* @0
  %1 = alloca i64
  %2 = load i64, i64* @0
  %3 = call i64 @fib(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  ret i64 %4
}
