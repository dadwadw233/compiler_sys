; ModuleID = 'sysyc'
source_filename = "./12_array_traverse.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [3 x [4 x i64]] zeroinitializer

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
  store i64 0, i64* %1
  br label %2

2:                                                ; preds = %28, %entry
  %3 = load i64, i64* %0
  %4 = icmp sle i64 %3, 5
  %5 = zext i1 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = alloca i64
  %9 = load i64, i64* %0
  store i64 %9, i64* %8
  br label %11

10:                                               ; preds = %2
  ret i64 0

11:                                               ; preds = %39, %7
  %12 = load i64, i64* %8
  %13 = icmp sge i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load i64, i64* %8
  %18 = icmp slt i64 %17, 4
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  %21 = load i64, i64* %0
  %22 = load i64, i64* %8
  %23 = sub i64 %21, %22
  %24 = icmp slt i64 %23, 3
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  %27 = and i1 %20, %26
  br i1 %27, label %31, label %39

28:                                               ; preds = %11
  %29 = load i64, i64* %0
  %30 = add i64 %29, 1
  store i64 %30, i64* %0
  br label %2

31:                                               ; preds = %16
  %32 = load i64, i64* %0
  %33 = load i64, i64* %8
  %34 = sub i64 %32, %33
  %35 = getelementptr [3 x [4 x i64]], [3 x [4 x i64]]* @0, i64 0, i64 %34
  %36 = load i64, i64* %8
  %37 = getelementptr [4 x i64], [4 x i64]* %35, i64 0, i64 %36
  %38 = load i64, i64* %1
  store i64 %38, i64* %37
  store i64 1, i64* %1
  br label %39

39:                                               ; preds = %31, %16
  %40 = load i64, i64* %8
  %41 = sub i64 %40, 1
  store i64 %41, i64* %8
  br label %11
}
