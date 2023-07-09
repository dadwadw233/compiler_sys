; ModuleID = 'sysyc'
source_filename = "./27_while_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @doubleWhile() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = alloca i64
  store i64 7, i64* %1
  br label %2

2:                                                ; preds = %20, %entry
  %3 = load i64, i64* %0
  %4 = icmp slt i64 %3, 100
  %5 = zext i1 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i64, i64* %0
  %9 = add i64 %8, 30
  store i64 %9, i64* %0
  br label %12

10:                                               ; preds = %2
  %11 = load i64, i64* %1
  ret i64 %11

12:                                               ; preds = %17, %7
  %13 = load i64, i64* %1
  %14 = icmp slt i64 %13, 100
  %15 = zext i1 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i64, i64* %1
  %19 = add i64 %18, 6
  store i64 %19, i64* %1
  br label %12

20:                                               ; preds = %12
  %21 = load i64, i64* %1
  %22 = sub i64 %21, 100
  store i64 %22, i64* %1
  br label %2
}

define i64 @main() {
entry:
  %0 = call i64 @doubleWhile()
  ret i64 %0
}
