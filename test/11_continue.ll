; ModuleID = 'sysyc'
source_filename = "./11_continue.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 10, i64* %0
  br label %1

1:                                                ; preds = %13, %entry
  %2 = load i64, i64* %0
  %3 = icmp sgt i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, i64* %0
  %8 = icmp sgt i64 %7, 5
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %16

11:                                               ; preds = %1
  %12 = load i64, i64* %0
  ret i64 %12

13:                                               ; preds = %6
  %14 = load i64, i64* %0
  %15 = sub i64 %14, 1
  store i64 %15, i64* %0
  br label %1

16:                                               ; preds = %6
  %17 = load i64, i64* %0
  ret i64 %17
}
