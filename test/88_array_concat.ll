; ModuleID = 'sysyc'
source_filename = "./88_array_concat.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @concat(i32* %0, i32* %1, i32* %2) {
entry:
  %3 = alloca i32*
  store i32* %0, i32** %3
  %4 = alloca i32*
  store i32* %1, i32** %4
  %5 = alloca i32*
  store i32* %2, i32** %5
  %6 = alloca i32
  store i32 0, i32* %6
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i32, i32* %6
  %9 = icmp slt i32 %8, 3
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32*, i32** %5
  %14 = load i32, i32* %6
  %15 = getelementptr i32, i32* %13, i32 %14
  %16 = load i32*, i32** %3
  %17 = load i32, i32* %6
  %18 = getelementptr i32, i32* %16, i32 %17
  %19 = load i32, i32* %18
  store i32 %19, i32* %15
  %20 = load i32, i32* %6
  %21 = add i32 %20, 1
  store i32 %21, i32* %6
  br label %7

22:                                               ; preds = %7
  %23 = alloca i32
  store i32 0, i32* %23
  br label %24

24:                                               ; preds = %29, %22
  %25 = load i32, i32* %23
  %26 = icmp slt i32 %25, 3
  %27 = zext i1 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i32*, i32** %5
  %31 = load i32, i32* %6
  %32 = getelementptr i32, i32* %30, i32 %31
  %33 = load i32*, i32** %4
  %34 = load i32, i32* %23
  %35 = getelementptr i32, i32* %33, i32 %34
  %36 = load i32, i32* %35
  store i32 %36, i32* %32
  %37 = load i32, i32* %6
  %38 = add i32 %37, 1
  store i32 %38, i32* %6
  %39 = load i32, i32* %23
  %40 = add i32 %39, 1
  store i32 %40, i32* %23
  br label %24

41:                                               ; preds = %24
  ret i32 0
}

define i32 @main() {
entry:
  %0 = alloca [3 x i32]
  %1 = alloca [3 x i32]
  %2 = alloca [3 x i32]
  %3 = alloca [3 x i32]
  %4 = alloca [3 x i32]
  %5 = alloca [3 x i32]
  %6 = alloca [6 x i32]
  %7 = alloca [3 x i32]
  %8 = alloca [3 x i32]
  %9 = alloca i32
  store i32 0, i32* %9
  br label %10

10:                                               ; preds = %15, %entry
  %11 = load i32, i32* %9
  %12 = icmp slt i32 %11, 3
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i32, i32* %9
  %17 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 %16
  %18 = load i32, i32* %9
  store i32 %18, i32* %17
  %19 = load i32, i32* %9
  %20 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 %19
  %21 = load i32, i32* %9
  store i32 %21, i32* %20
  %22 = load i32, i32* %9
  %23 = getelementptr [3 x i32], [3 x i32]* %2, i32 0, i32 %22
  %24 = load i32, i32* %9
  store i32 %24, i32* %23
  %25 = load i32, i32* %9
  %26 = getelementptr [3 x i32], [3 x i32]* %3, i32 0, i32 %25
  %27 = load i32, i32* %9
  store i32 %27, i32* %26
  %28 = load i32, i32* %9
  %29 = getelementptr [3 x i32], [3 x i32]* %4, i32 0, i32 %28
  %30 = load i32, i32* %9
  store i32 %30, i32* %29
  %31 = load i32, i32* %9
  %32 = getelementptr [3 x i32], [3 x i32]* %5, i32 0, i32 %31
  %33 = load i32, i32* %9
  store i32 %33, i32* %32
  %34 = load i32, i32* %9
  %35 = add i32 %34, 1
  store i32 %35, i32* %9
  br label %10

36:                                               ; preds = %10
  %37 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 0
  %38 = getelementptr [3 x i32], [3 x i32]* %3, i32 0, i32 0
  %39 = getelementptr [6 x i32], [6 x i32]* %6, i32 0, i32 0
  %40 = call i32 @concat(i32* %37, i32* %38, i32* %39)
  store i32 %40, i32* %9
  %41 = alloca i32
  br label %42

42:                                               ; preds = %47, %36
  %43 = load i32, i32* %9
  %44 = icmp slt i32 %43, 6
  %45 = zext i1 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %9
  %49 = getelementptr [6 x i32], [6 x i32]* %6, i32 0, i32 %48
  %50 = load i32, i32* %49
  store i32 %50, i32* %41
  %51 = load i32, i32* %41
  call void @putint(i32 %51)
  %52 = load i32, i32* %9
  %53 = add i32 %52, 1
  store i32 %53, i32* %9
  br label %42

54:                                               ; preds = %42
  store i32 10, i32* %41
  %55 = load i32, i32* %41
  call void @putch(i32 %55)
  ret i32 0
}
