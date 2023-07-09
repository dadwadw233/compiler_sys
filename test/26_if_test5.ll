; ModuleID = 'sysyc'
source_filename = "./26_if_test5.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @if_if_Else() {
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
  br i1 %10, label %16, label %17

11:                                               ; preds = %entry
  %12 = load i64, i64* %0
  %13 = add i64 %12, 15
  store i64 %13, i64* %0
  br label %14

14:                                               ; preds = %11, %17
  %15 = load i64, i64* %0
  ret i64 %15

16:                                               ; preds = %6
  store i64 25, i64* %0
  br label %17

17:                                               ; preds = %16, %6
  br label %14
}

define i64 @main() {
entry:
  %0 = call i64 @if_if_Else()
  ret i64 %0
}
