; ModuleID = 'sysyc'
source_filename = "./50_recursion_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @fact(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, 0
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 1

condition_cont:                                   ; preds = %entry
  %6 = alloca i64
  %7 = load i64, i64* %1
  %8 = sub i64 %7, 1
  store i64 %8, i64* %6
  %9 = load i64, i64* %1
  %10 = load i64, i64* %6
  %11 = call i64 @fact(i64 %10)
  %12 = mul i64 %9, %11
  ret i64 %12
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 4, i64* %0
  %1 = load i64, i64* %0
  %2 = call i64 @fact(i64 %1)
  ret i64 %2
}
