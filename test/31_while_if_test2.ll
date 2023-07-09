; ModuleID = 'sysyc'
source_filename = "./31_while_if_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @ifWhile() {
entry:
  %0 = alloca i64
  store i64 0, i64* %0
  %1 = alloca i64
  store i64 3, i64* %1
  %2 = load i64, i64* %0
  %3 = icmp eq i64 %2, 5
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  br label %10

7:                                                ; preds = %entry
  br label %21

8:                                                ; preds = %31, %18
  %9 = load i64, i64* %1
  ret i64 %9

10:                                               ; preds = %15, %6
  %11 = load i64, i64* %1
  %12 = icmp eq i64 %11, 2
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i64, i64* %1
  %17 = add i64 %16, 2
  store i64 %17, i64* %1
  br label %10

18:                                               ; preds = %10
  %19 = load i64, i64* %1
  %20 = add i64 %19, 25
  store i64 %20, i64* %1
  br label %8

21:                                               ; preds = %26, %7
  %22 = load i64, i64* %0
  %23 = icmp slt i64 %22, 5
  %24 = zext i1 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i64, i64* %1
  %28 = mul i64 %27, 2
  store i64 %28, i64* %1
  %29 = load i64, i64* %0
  %30 = add i64 %29, 1
  store i64 %30, i64* %0
  br label %21

31:                                               ; preds = %21
  br label %8
}

define i64 @main() {
entry:
  %0 = call i64 @ifWhile()
  ret i64 %0
}
