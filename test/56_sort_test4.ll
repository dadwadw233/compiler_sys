; ModuleID = 'sysyc'
source_filename = "./56_sort_test4.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @select_sort(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  store i32 0, i32* %4
  br label %7

7:                                                ; preds = %65, %entry
  %8 = load i32, i32* %4
  %9 = load i32, i32* %3
  %10 = sub i32 %9, 1
  %11 = icmp slt i32 %8, %10
  %12 = zext i1 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load i32, i32* %4
  store i32 %15, i32* %6
  %16 = load i32, i32* %4
  %17 = add i32 %16, 1
  store i32 %17, i32* %5
  br label %19

18:                                               ; preds = %7
  ret i32 0

19:                                               ; preds = %45, %14
  %20 = load i32, i32* %5
  %21 = load i32, i32* %3
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32*, i32** %2
  %27 = load i32, i32* %6
  %28 = getelementptr i32, i32* %26, i32 %27
  %29 = load i32, i32* %28
  %30 = load i32*, i32** %2
  %31 = load i32, i32* %5
  %32 = getelementptr i32, i32* %30, i32 %31
  %33 = load i32, i32* %32
  %34 = icmp sgt i32 %29, %33
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %45

37:                                               ; preds = %19
  %38 = load i32, i32* %6
  %39 = load i32, i32* %4
  %40 = icmp ne i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %65

43:                                               ; preds = %25
  %44 = load i32, i32* %5
  store i32 %44, i32* %6
  br label %45

45:                                               ; preds = %43, %25
  %46 = load i32, i32* %5
  %47 = add i32 %46, 1
  store i32 %47, i32* %5
  br label %19

48:                                               ; preds = %37
  %49 = alloca i32
  %50 = load i32*, i32** %2
  %51 = load i32, i32* %6
  %52 = getelementptr i32, i32* %50, i32 %51
  %53 = load i32, i32* %52
  store i32 %53, i32* %49
  %54 = load i32*, i32** %2
  %55 = load i32, i32* %6
  %56 = getelementptr i32, i32* %54, i32 %55
  %57 = load i32*, i32** %2
  %58 = load i32, i32* %4
  %59 = getelementptr i32, i32* %57, i32 %58
  %60 = load i32, i32* %59
  store i32 %60, i32* %56
  %61 = load i32*, i32** %2
  %62 = load i32, i32* %4
  %63 = getelementptr i32, i32* %61, i32 %62
  %64 = load i32, i32* %49
  store i32 %64, i32* %63
  br label %65

65:                                               ; preds = %48, %37
  %66 = load i32, i32* %4
  %67 = add i32 %66, 1
  store i32 %67, i32* %4
  br label %7
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
  store i32 0, i32* %11
  %12 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 0
  %13 = load i32, i32* @0
  %14 = call i32 @select_sort(i32* %12, i32 %13)
  store i32 %14, i32* %11
  br label %15

15:                                               ; preds = %21, %entry
  %16 = load i32, i32* %11
  %17 = load i32, i32* @0
  %18 = icmp slt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = alloca i32
  %23 = load i32, i32* %11
  %24 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 %23
  %25 = load i32, i32* %24
  store i32 %25, i32* %22
  %26 = load i32, i32* %22
  call void @putint(i32 %26)
  store i32 10, i32* %22
  %27 = load i32, i32* %22
  call void @putch(i32 %27)
  %28 = load i32, i32* %11
  %29 = add i32 %28, 1
  store i32 %29, i32* %11
  br label %15

30:                                               ; preds = %15
  ret i32 0
}
