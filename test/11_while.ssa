; ModuleID = 'sysyc'
source_filename = "./11_while.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  store i64 0, i64* @1
  store i64 3, i64* @0
  br label %0

0:                                                ; preds = %5, %entry
  %1 = load i64, i64* @0
  %2 = icmp sgt i64 %1, 0
  %3 = zext i1 %2 to i64
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @1
  %7 = load i64, i64* @0
  %8 = add i64 %6, %7
  store i64 %8, i64* @1
  %9 = load i64, i64* @0
  %10 = sub i64 %9, 1
  store i64 %10, i64* @0
  br label %0

11:                                               ; preds = %0
  %12 = load i64, i64* @1
  ret i64 %12
}
