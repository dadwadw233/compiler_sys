; ModuleID = 'sysyc'
source_filename = "./54_sort_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @insertsort(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca i32
  store i32 1, i32* %2
  br label %3

3:                                                ; preds = %44, %entry
  %4 = load i32, i32* %2
  %5 = load i32, i32* @0
  %6 = icmp slt i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = alloca i32
  %11 = load i32*, i32** %1
  %12 = load i32, i32* %2
  %13 = getelementptr i32, i32* %11, i32 %12
  %14 = load i32, i32* %13
  store i32 %14, i32* %10
  %15 = alloca i32
  %16 = load i32, i32* %2
  %17 = sub i32 %16, 1
  store i32 %17, i32* %15
  br label %19

18:                                               ; preds = %3
  ret i32 0

19:                                               ; preds = %33, %9
  %20 = load i32, i32* %15
  %21 = icmp sgt i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = load i32, i32* %10
  %25 = load i32*, i32** %1
  %26 = load i32, i32* %15
  %27 = getelementptr i32, i32* %25, i32 %26
  %28 = load i32, i32* %27
  %29 = icmp slt i32 %24, %28
  %30 = zext i1 %29 to i32
  %31 = icmp ne i32 %30, 0
  %32 = and i1 %23, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load i32*, i32** %1
  %35 = load i32, i32* %15
  %36 = add i32 %35, 1
  %37 = getelementptr i32, i32* %34, i32 %36
  %38 = load i32*, i32** %1
  %39 = load i32, i32* %15
  %40 = getelementptr i32, i32* %38, i32 %39
  %41 = load i32, i32* %40
  store i32 %41, i32* %37
  %42 = load i32, i32* %15
  %43 = sub i32 %42, 1
  store i32 %43, i32* %15
  br label %19

44:                                               ; preds = %19
  %45 = load i32*, i32** %1
  %46 = load i32, i32* %15
  %47 = add i32 %46, 1
  %48 = getelementptr i32, i32* %45, i32 %47
  %49 = load i32, i32* %10
  store i32 %49, i32* %48
  %50 = load i32, i32* %2
  %51 = add i32 %50, 1
  store i32 %51, i32* %2
  br label %3
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
  %13 = call i32 @insertsort(i32* %12)
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
