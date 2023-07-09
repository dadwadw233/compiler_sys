; ModuleID = 'sysyc'
source_filename = "./32_while_if_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @deepWhileBr(i64 %0, i64 %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = load i64, i64* %2
  %6 = load i64, i64* %3
  %7 = add i64 %5, %6
  store i64 %7, i64* %4
  br label %8

8:                                                ; preds = %29, %entry
  %9 = load i64, i64* %4
  %10 = icmp slt i64 %9, 75
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = alloca i64
  store i64 42, i64* %14
  %15 = load i64, i64* %4
  %16 = icmp slt i64 %15, 100
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %29

19:                                               ; preds = %8
  %20 = load i64, i64* %4
  ret i64 %20

21:                                               ; preds = %13
  %22 = load i64, i64* %4
  %23 = load i64, i64* %14
  %24 = add i64 %22, %23
  store i64 %24, i64* %4
  %25 = load i64, i64* %4
  %26 = icmp sgt i64 %25, 99
  %27 = zext i1 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %34

29:                                               ; preds = %34, %13
  br label %8

30:                                               ; preds = %21
  %31 = alloca i64
  %32 = load i64, i64* %14
  %33 = mul i64 %32, 2
  store i64 %33, i64* %31
  br i1 true, label %35, label %38

34:                                               ; preds = %38, %21
  br label %29

35:                                               ; preds = %30
  %36 = load i64, i64* %31
  %37 = mul i64 %36, 2
  store i64 %37, i64* %4
  br label %38

38:                                               ; preds = %35, %30
  br label %34
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 2, i64* %0
  %1 = load i64, i64* %0
  %2 = load i64, i64* %0
  %3 = call i64 @deepWhileBr(i64 %1, i64 %2)
  ret i64 %3
}
