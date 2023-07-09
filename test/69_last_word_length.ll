; ModuleID = 'sysyc'
source_filename = "./69_last_word_length.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @lengthOfLastWord(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = load i32, i32* %3
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %entry
  ret i32 0

9:                                                ; preds = %entry
  %10 = alloca i32
  %11 = load i32, i32* %3
  %12 = sub i32 %11, 1
  store i32 %12, i32* %10
  br label %13

13:                                               ; preds = %26, %9
  %14 = load i32, i32* %10
  %15 = icmp sgt i32 %14, -1
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %16, 0
  %18 = load i32*, i32** %2
  %19 = load i32, i32* %10
  %20 = getelementptr i32, i32* %18, i32 %19
  %21 = load i32, i32* %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = and i1 %17, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i32, i32* %10
  %28 = sub i32 %27, 1
  store i32 %28, i32* %10
  br label %13

29:                                               ; preds = %13
  %30 = load i32, i32* %10
  %31 = icmp eq i32 %30, -1
  %32 = zext i1 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  ret i32 0

35:                                               ; preds = %29
  %36 = alloca i32
  %37 = load i32, i32* %10
  store i32 %37, i32* %36
  br label %38

38:                                               ; preds = %65, %35
  %39 = load i32, i32* %36
  %40 = icmp sgt i32 %39, -1
  %41 = zext i1 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32*, i32** %2
  %45 = load i32, i32* %36
  %46 = getelementptr i32, i32* %44, i32 %45
  %47 = load i32, i32* %46
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %65

51:                                               ; preds = %38
  %52 = load i32, i32* %10
  %53 = load i32, i32* %36
  %54 = sub i32 %52, %53
  ret i32 %54

55:                                               ; preds = %43
  %56 = load i32, i32* %3
  %57 = load i32, i32* %36
  %58 = sub i32 %56, %57
  %59 = sub i32 %58, 1
  %60 = load i32, i32* %3
  %61 = sub i32 %60, 1
  %62 = load i32, i32* %10
  %63 = sub i32 %61, %62
  %64 = sub i32 %59, %63
  ret i32 %64

65:                                               ; preds = %43
  %66 = load i32, i32* %36
  %67 = sub i32 %66, 1
  store i32 %67, i32* %36
  br label %38
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca [10 x i32]
  %2 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  store i32 -4, i32* %2
  %3 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 1
  store i32 3, i32* %3
  %4 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 2
  store i32 9, i32* %4
  %5 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 3
  store i32 -2, i32* %5
  %6 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 4
  store i32 0, i32* %6
  %7 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 5
  store i32 1, i32* %7
  %8 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 6
  store i32 -6, i32* %8
  %9 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 7
  store i32 5, i32* %9
  %10 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 8
  store i32 7, i32* %10
  %11 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 9
  store i32 8, i32* %11
  store i32 10, i32* %0
  %12 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  %13 = load i32, i32* %0
  %14 = call i32 @lengthOfLastWord(i32* %12, i32 %13)
  store i32 %14, i32* %0
  %15 = load i32, i32* %0
  ret i32 %15
}
