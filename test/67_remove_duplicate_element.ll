; ModuleID = 'sysyc'
source_filename = "./67_remove_duplicate_element.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @removeElement(i32* %0, i32 %1, i32 %2) {
entry:
  %3 = alloca i32*
  store i32* %0, i32** %3
  %4 = alloca i32
  store i32 %1, i32* %4
  %5 = alloca i32
  store i32 %2, i32* %5
  %6 = alloca i32
  store i32 0, i32* %6
  br label %7

7:                                                ; preds = %38, %entry
  %8 = load i32, i32* %6
  %9 = load i32, i32* %4
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = load i32*, i32** %3
  %15 = load i32, i32* %6
  %16 = getelementptr i32, i32* %14, i32 %15
  %17 = load i32, i32* %16
  %18 = load i32, i32* %5
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %35

22:                                               ; preds = %7
  %23 = load i32, i32* %4
  ret i32 %23

24:                                               ; preds = %13
  %25 = load i32*, i32** %3
  %26 = load i32, i32* %6
  %27 = getelementptr i32, i32* %25, i32 %26
  %28 = load i32*, i32** %3
  %29 = load i32, i32* %4
  %30 = sub i32 %29, 1
  %31 = getelementptr i32, i32* %28, i32 %30
  %32 = load i32, i32* %31
  store i32 %32, i32* %27
  %33 = load i32, i32* %4
  %34 = sub i32 %33, 1
  store i32 %34, i32* %4
  br label %38

35:                                               ; preds = %13
  %36 = load i32, i32* %6
  %37 = add i32 %36, 1
  store i32 %37, i32* %6
  br label %38

38:                                               ; preds = %35, %24
  br label %7
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca [10 x i32]
  %2 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 1
  store i32 3, i32* %3
  %4 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 2
  store i32 9, i32* %4
  %5 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 3
  store i32 0, i32* %5
  %6 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 4
  store i32 0, i32* %6
  %7 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 5
  store i32 1, i32* %7
  %8 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 6
  store i32 1, i32* %8
  %9 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 7
  store i32 5, i32* %9
  %10 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 8
  store i32 7, i32* %10
  %11 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 9
  store i32 8, i32* %11
  store i32 10, i32* %0
  %12 = alloca i32
  store i32 3, i32* %12
  %13 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  %14 = load i32, i32* %0
  %15 = load i32, i32* %12
  %16 = call i32 @removeElement(i32* %13, i32 %14, i32 %15)
  store i32 %16, i32* %0
  %17 = load i32, i32* %0
  ret i32 %17
}
