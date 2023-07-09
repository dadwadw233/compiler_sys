; ModuleID = 'sysyc'
source_filename = "./25_if_test4.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @if_ifElse_() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = alloca i64
  store i64 10, i64* %1
  %2 = load i64, i64* %0
  %3 = icmp eq i64 %2, 5
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %entry
  %7 = load i64, i64* %1
  %8 = icmp eq i64 %7, 10
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %14

11:                                               ; preds = %17, %entry
  %12 = load i64, i64* %0
  ret i64 %12

13:                                               ; preds = %6
  store i64 25, i64* %0
  br label %17

14:                                               ; preds = %6
  %15 = load i64, i64* %0
  %16 = add i64 %15, 15
  store i64 %16, i64* %0
  br label %17

17:                                               ; preds = %14, %13
  br label %11
}

define i64 @main() {
entry:
  %0 = call i64 @if_ifElse_()
  ret i64 %0
}
