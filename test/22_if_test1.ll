; ModuleID = 'sysyc'
source_filename = "./22_if_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @ifElse() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = load i64, i64* %0
  %2 = icmp eq i64 %1, 5
  %3 = zext i1 %2 to i64
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %entry
  store i64 25, i64* %0
  br label %9

6:                                                ; preds = %entry
  %7 = load i64, i64* %0
  %8 = mul i64 %7, 2
  store i64 %8, i64* %0
  br label %9

9:                                                ; preds = %6, %5
  %10 = load i64, i64* %0
  ret i64 %10
}

define i64 @main() {
entry:
  %0 = call i64 @ifElse()
  ret i64 %0
}
