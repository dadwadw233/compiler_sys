; ModuleID = 'sysyc'
source_filename = "./28_while_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @FourWhile() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = alloca i64
  %2 = alloca i64
  store i64 6, i64* %1
  store i64 7, i64* %2
  %3 = alloca i64
  store i64 10, i64* %3
  br label %4

4:                                                ; preds = %28, %entry
  %5 = load i64, i64* %0
  %6 = icmp slt i64 %5, 20
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i64, i64* %0
  %11 = add i64 %10, 3
  store i64 %11, i64* %0
  br label %20

12:                                               ; preds = %4
  %13 = load i64, i64* %0
  %14 = load i64, i64* %1
  %15 = load i64, i64* %3
  %16 = add i64 %14, %15
  %17 = add i64 %13, %16
  %18 = load i64, i64* %2
  %19 = add i64 %17, %18
  ret i64 %19

20:                                               ; preds = %39, %9
  %21 = load i64, i64* %1
  %22 = icmp slt i64 %21, 10
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i64, i64* %1
  %27 = add i64 %26, 1
  store i64 %27, i64* %1
  br label %31

28:                                               ; preds = %20
  %29 = load i64, i64* %1
  %30 = sub i64 %29, 2
  store i64 %30, i64* %1
  br label %4

31:                                               ; preds = %50, %25
  %32 = load i64, i64* %2
  %33 = icmp eq i64 %32, 7
  %34 = zext i1 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* %2
  %38 = sub i64 %37, 1
  store i64 %38, i64* %2
  br label %42

39:                                               ; preds = %31
  %40 = load i64, i64* %2
  %41 = add i64 %40, 1
  store i64 %41, i64* %2
  br label %20

42:                                               ; preds = %47, %36
  %43 = load i64, i64* %3
  %44 = icmp slt i64 %43, 20
  %45 = zext i1 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i64, i64* %3
  %49 = add i64 %48, 3
  store i64 %49, i64* %3
  br label %42

50:                                               ; preds = %42
  %51 = load i64, i64* %3
  %52 = sub i64 %51, 1
  store i64 %52, i64* %3
  br label %31
}

define i64 @main() {
entry:
  %0 = call i64 @FourWhile()
  ret i64 %0
}
