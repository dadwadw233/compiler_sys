; ModuleID = 'sysyc'
source_filename = "./13_array_traverse2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [3 x [3 x [3 x i32]]] zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  store i32 0, i32* %0
  store i32 0, i32* %1
  store i32 0, i32* %2
  %3 = alloca i32
  store i32 0, i32* %3
  br label %4

4:                                                ; preds = %17, %entry
  %5 = load i32, i32* %0
  %6 = icmp slt i32 %5, 3
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  ret i32 0

11:                                               ; preds = %37, %9
  %12 = load i32, i32* %1
  %13 = icmp slt i32 %12, 3
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* %0
  %19 = add i32 %18, 1
  store i32 %19, i32* %0
  br label %4

20:                                               ; preds = %25, %16
  %21 = load i32, i32* %2
  %22 = icmp slt i32 %21, 3
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32, i32* %0
  %27 = getelementptr [3 x [3 x [3 x i32]]], [3 x [3 x [3 x i32]]]* @0, i32 0, i32 %26
  %28 = load i32, i32* %1
  %29 = getelementptr [3 x [3 x i32]], [3 x [3 x i32]]* %27, i32 0, i32 %28
  %30 = load i32, i32* %2
  %31 = getelementptr [3 x i32], [3 x i32]* %29, i32 0, i32 %30
  %32 = load i32, i32* %3
  store i32 %32, i32* %31
  %33 = load i32, i32* %3
  %34 = add i32 %33, 1
  store i32 %34, i32* %3
  %35 = load i32, i32* %2
  %36 = add i32 %35, 1
  store i32 %36, i32* %2
  br label %20

37:                                               ; preds = %20
  %38 = load i32, i32* %1
  %39 = add i32 %38, 1
  store i32 %39, i32* %1
  br label %11
}
