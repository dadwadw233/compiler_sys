; ModuleID = 'sysyc'
source_filename = "./52_recursion_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @fac(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp slt i64 %2, 2
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  ret i64 1

7:                                                ; preds = %entry
  %8 = load i64, i64* %1
  %9 = sub i64 %8, 1
  store i64 %9, i64* @0
  %10 = load i64, i64* @0
  %11 = call i64 @fac(i64 %10)
  store i64 %11, i64* @1
  %12 = load i64, i64* %1
  %13 = load i64, i64* @1
  %14 = mul i64 %12, %13
  store i64 %14, i64* @1
  %15 = load i64, i64* @1
  ret i64 %15
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = load i64, i64* %0
  %2 = call i64 @fac(i64 %1)
  ret i64 %2
}
