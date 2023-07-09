; ModuleID = 'sysyc'
source_filename = "./10_break.sy"
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

1:                                                ; preds = %16, %entry
  %2 = load i64, i64* %0
  %3 = icmp sgt i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i64, i64* %0
  %8 = sub i64 %7, 1
  store i64 %8, i64* %0
  %9 = load i64, i64* %0
  %10 = icmp eq i64 %9, 5
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %16

13:                                               ; preds = %15, %1
  %14 = load i64, i64* %0
  ret i64 %14

15:                                               ; preds = %6
  br label %13

16:                                               ; preds = %6
  br label %1
}
