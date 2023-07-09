; ModuleID = 'sysyc'
source_filename = "./15_array_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [5 x [5 x i32]] [[5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer]

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @func(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca i32
  store i32 0, i32* %2
  %3 = alloca i32
  store i32 0, i32* %3
  %4 = alloca i32
  store i32 0, i32* %4
  br label %5

5:                                                ; preds = %30, %entry
  %6 = load i32, i32* %2
  %7 = icmp slt i32 %6, 5
  %8 = zext i1 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %13

11:                                               ; preds = %5
  %12 = load i32, i32* %4
  ret i32 %12

13:                                               ; preds = %18, %10
  %14 = load i32, i32* %3
  %15 = icmp slt i32 %14, 5
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i32, i32* %4
  %20 = load i32*, i32** %1
  %21 = load i32, i32* %2
  %22 = mul i32 %21, 5
  %23 = getelementptr i32, i32* %20, i32 %22
  %24 = load i32, i32* %3
  %25 = getelementptr i32, i32* %20, i32 %24
  %26 = load i32, i32* %25
  %27 = add i32 %19, %26
  store i32 %27, i32* %4
  %28 = load i32, i32* %3
  %29 = add i32 %28, 1
  store i32 %29, i32* %3
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* %2
  %32 = add i32 %31, 1
  store i32 %32, i32* %2
  br label %5
}

define i32 @main() {
entry:
  %0 = call i32 @func(i32* getelementptr inbounds ([5 x [5 x i32]], [5 x [5 x i32]]* @0, i32 0, i32 0, i32 0))
  call void @putint(i32 %0)
  ret i32 0
}
