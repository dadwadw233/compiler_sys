; ModuleID = 'sysyc'
source_filename = "./13_array_traverse2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [3 x [3 x [3 x i64]]] zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  store i64 0, i64* %0
  store i64 0, i64* %1
  store i64 0, i64* %2
  %3 = alloca i64
  store i64 0, i64* %3
  br label %4

4:                                                ; preds = %17, %entry
  %5 = load i64, i64* %0
  %6 = icmp slt i64 %5, 3
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  ret i64 0

11:                                               ; preds = %37, %9
  %12 = load i64, i64* %1
  %13 = icmp slt i64 %12, 3
  %14 = zext i1 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %20

17:                                               ; preds = %11
  %18 = load i64, i64* %0
  %19 = add i64 %18, 1
  store i64 %19, i64* %0
  br label %4

20:                                               ; preds = %25, %16
  %21 = load i64, i64* %2
  %22 = icmp slt i64 %21, 3
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i64, i64* %0
  %27 = getelementptr [3 x [3 x [3 x i64]]], [3 x [3 x [3 x i64]]]* @0, i64 0, i64 %26
  %28 = load i64, i64* %1
  %29 = getelementptr [3 x [3 x i64]], [3 x [3 x i64]]* %27, i64 0, i64 %28
  %30 = load i64, i64* %2
  %31 = getelementptr [3 x i64], [3 x i64]* %29, i64 0, i64 %30
  %32 = load i64, i64* %3
  store i64 %32, i64* %31
  %33 = load i64, i64* %3
  %34 = add i64 %33, 1
  store i64 %34, i64* %3
  %35 = load i64, i64* %2
  %36 = add i64 %35, 1
  store i64 %36, i64* %2
  br label %20

37:                                               ; preds = %20
  %38 = load i64, i64* %1
  %39 = add i64 %38, 1
  store i64 %39, i64* %1
  br label %11
}
