; ModuleID = 'sysyc'
source_filename = "./30_while_if_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @whileIf() {
entry:
  %0 = alloca i64
  store i64 0, i64* %0
  %1 = alloca i64
  store i64 0, i64* %1
  br label %2

2:                                                ; preds = %20, %entry
  %3 = load i64, i64* %0
  %4 = icmp slt i64 %3, 100
  %5 = zext i1 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i64, i64* %0
  %9 = icmp eq i64 %8, 5
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %15

12:                                               ; preds = %2
  %13 = load i64, i64* %1
  ret i64 %13

14:                                               ; preds = %7
  store i64 25, i64* %1
  br label %20

15:                                               ; preds = %7
  %16 = load i64, i64* %0
  %17 = icmp eq i64 %16, 10
  %18 = zext i1 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %24

20:                                               ; preds = %27, %14
  %21 = load i64, i64* %0
  %22 = add i64 %21, 1
  store i64 %22, i64* %0
  br label %2

23:                                               ; preds = %15
  store i64 42, i64* %1
  br label %27

24:                                               ; preds = %15
  %25 = load i64, i64* %0
  %26 = mul i64 %25, 2
  store i64 %26, i64* %1
  br label %27

27:                                               ; preds = %24, %23
  br label %20
}

define i64 @main() {
entry:
  %0 = call i64 @whileIf()
  ret i64 %0
}
