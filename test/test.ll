; ModuleID = 'sysyc'
source_filename = "./test.sy"
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
  store i64 0, i64* %0
  %1 = alloca i64
  %2 = load i64, i64* %0
  %3 = add i64 %2, 1
  store i64 %3, i64* %1
  %4 = alloca i64
  %5 = load i64, i64* %0
  %6 = add i64 %5, 1
  %7 = load i64, i64* %0
  %8 = add i64 %7, 1
  %9 = add i64 %6, %8
  store i64 %9, i64* %4
  ret i64 0
}
