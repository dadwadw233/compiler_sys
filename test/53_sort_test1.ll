; ModuleID = 'sysyc'
source_filename = "./53_sort_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @bubblesort(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca i32
  %3 = alloca i32
  store i32 0, i32* %2
  br label %4

4:                                                ; preds = %35, %entry
  %5 = load i32, i32* %2
  %6 = load i32, i32* @0
  %7 = sub i32 %6, 1
  %8 = icmp slt i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 0, i32* %3
  br label %13

12:                                               ; preds = %4
  ret i32 0

13:                                               ; preds = %57, %11
  %14 = load i32, i32* %3
  %15 = load i32, i32* @0
  %16 = load i32, i32* %2
  %17 = sub i32 %15, %16
  %18 = sub i32 %17, 1
  %19 = icmp slt i32 %14, %18
  %20 = zext i1 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load i32*, i32** %1
  %24 = load i32, i32* %3
  %25 = getelementptr i32, i32* %23, i32 %24
  %26 = load i32, i32* %25
  %27 = load i32*, i32** %1
  %28 = load i32, i32* %3
  %29 = add i32 %28, 1
  %30 = getelementptr i32, i32* %27, i32 %29
  %31 = load i32, i32* %30
  %32 = icmp sgt i32 %26, %31
  %33 = zext i1 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %57

35:                                               ; preds = %13
  %36 = load i32, i32* %2
  %37 = add i32 %36, 1
  store i32 %37, i32* %2
  br label %4

38:                                               ; preds = %22
  %39 = alloca i32
  %40 = load i32*, i32** %1
  %41 = load i32, i32* %3
  %42 = add i32 %41, 1
  %43 = getelementptr i32, i32* %40, i32 %42
  %44 = load i32, i32* %43
  store i32 %44, i32* %39
  %45 = load i32*, i32** %1
  %46 = load i32, i32* %3
  %47 = add i32 %46, 1
  %48 = getelementptr i32, i32* %45, i32 %47
  %49 = load i32*, i32** %1
  %50 = load i32, i32* %3
  %51 = getelementptr i32, i32* %49, i32 %50
  %52 = load i32, i32* %51
  store i32 %52, i32* %48
  %53 = load i32*, i32** %1
  %54 = load i32, i32* %3
  %55 = getelementptr i32, i32* %53, i32 %54
  %56 = load i32, i32* %39
  store i32 %56, i32* %55
  br label %57

57:                                               ; preds = %38, %22
  %58 = load i32, i32* %3
  %59 = add i32 %58, 1
  store i32 %59, i32* %3
  br label %13
}

define i32 @main() {
entry:
  store i32 10, i32* @0
  %0 = alloca [10 x i32]
  %1 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 0
  store i32 4, i32* %1
  %2 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 1
  store i32 3, i32* %2
  %3 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 2
  store i32 9, i32* %3
  %4 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 3
  store i32 2, i32* %4
  %5 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 4
  store i32 0, i32* %5
  %6 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 5
  store i32 1, i32* %6
  %7 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 6
  store i32 6, i32* %7
  %8 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 7
  store i32 5, i32* %8
  %9 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 8
  store i32 7, i32* %9
  %10 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 9
  store i32 8, i32* %10
  %11 = alloca i32
  %12 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 0
  %13 = call i32 @bubblesort(i32* %12)
  store i32 %13, i32* %11
  br label %14

14:                                               ; preds = %20, %entry
  %15 = load i32, i32* %11
  %16 = load i32, i32* @0
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = alloca i32
  %22 = load i32, i32* %11
  %23 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 %22
  %24 = load i32, i32* %23
  store i32 %24, i32* %21
  %25 = load i32, i32* %21
  call void @putint(i32 %25)
  store i32 10, i32* %21
  %26 = load i32, i32* %21
  call void @putch(i32 %26)
  %27 = load i32, i32* %11
  %28 = add i32 %27, 1
  store i32 %28, i32* %11
  br label %14

29:                                               ; preds = %14
  ret i32 0
}
