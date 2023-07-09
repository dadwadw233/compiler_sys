; ModuleID = 'sysyc'
source_filename = "./12_array_traverse.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [3 x [4 x i32]] zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 0, i32* %0
  %1 = alloca i32
  store i32 0, i32* %1
  br label %2

2:                                                ; preds = %28, %entry
  %3 = load i32, i32* %0
  %4 = icmp sle i32 %3, 5
  %5 = zext i1 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = alloca i32
  %9 = load i32, i32* %0
  store i32 %9, i32* %8
  br label %11

10:                                               ; preds = %2
  ret i32 0

11:                                               ; preds = %39, %7
  %12 = load i32, i32* %8
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load i32, i32* %8
  %18 = icmp slt i32 %17, 4
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %19, 0
  %21 = load i32, i32* %0
  %22 = load i32, i32* %8
  %23 = sub i32 %21, %22
  %24 = icmp slt i32 %23, 3
  %25 = zext i1 %24 to i32
  %26 = icmp ne i32 %25, 0
  %27 = and i1 %20, %26
  br i1 %27, label %31, label %39

28:                                               ; preds = %11
  %29 = load i32, i32* %0
  %30 = add i32 %29, 1
  store i32 %30, i32* %0
  br label %2

31:                                               ; preds = %16
  %32 = load i32, i32* %0
  %33 = load i32, i32* %8
  %34 = sub i32 %32, %33
  %35 = getelementptr [3 x [4 x i32]], [3 x [4 x i32]]* @0, i32 0, i32 %34
  %36 = load i32, i32* %8
  %37 = getelementptr [4 x i32], [4 x i32]* %35, i32 0, i32 %36
  %38 = load i32, i32* %1
  store i32 %38, i32* %37
  store i32 1, i32* %1
  br label %39

39:                                               ; preds = %31, %16
  %40 = load i32, i32* %8
  %41 = sub i32 %40, 1
  store i32 %41, i32* %8
  br label %11
}
