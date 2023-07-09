; ModuleID = 'sysyc'
source_filename = "./23_if_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @ifElseElseIf() {
entry:
  %0 = alloca i64
  store i64 66, i64* %0
  %1 = alloca i64
  store i64 8923, i64* %1
  %2 = load i64, i64* %0
  %3 = icmp eq i64 %2, 5
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  store i64 25, i64* %1
  br label %12

7:                                                ; preds = %entry
  %8 = load i64, i64* %0
  %9 = icmp eq i64 %8, 10
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %15

12:                                               ; preds = %18, %6
  %13 = load i64, i64* %1
  ret i64 %13

14:                                               ; preds = %7
  store i64 42, i64* %1
  br label %18

15:                                               ; preds = %7
  %16 = load i64, i64* %0
  %17 = mul i64 %16, 2
  store i64 %17, i64* %1
  br label %18

18:                                               ; preds = %15, %14
  br label %12
}

define i64 @main() {
entry:
  %0 = call i64 @ifElseElseIf()
  ret i64 %0
}
