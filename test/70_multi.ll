; ModuleID = 'sysyc'
source_filename = "./70_multi.sy"
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
  %1 = alloca i64
  store i64 0, i64* %1
  store i64 0, i64* %0
  br label %2

2:                                                ; preds = %7, %entry
  %3 = load i64, i64* %0
  %4 = icmp slt i64 %3, 21
  %5 = zext i1 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i64, i64* %1
  %9 = load i64, i64* %0
  %10 = mul i64 %8, %9
  store i64 %10, i64* %1
  %11 = load i64, i64* %0
  %12 = add i64 %11, 1
  store i64 %12, i64* %0
  br label %2

13:                                               ; preds = %2
  %14 = load i64, i64* %1
  call void @putint(i64 %14)
  ret i64 0
}
