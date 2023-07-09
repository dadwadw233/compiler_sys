; ModuleID = 'sysyc'
source_filename = "./75_max_container.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @maxArea(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = alloca i32
  store i32 0, i32* %4
  %6 = load i32, i32* %3
  %7 = sub i32 %6, 1
  store i32 %7, i32* %5
  %8 = alloca i32
  store i32 -1, i32* %8
  br label %9

9:                                                ; preds = %74, %entry
  %10 = load i32, i32* %4
  %11 = load i32, i32* %5
  %12 = icmp slt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = alloca i32
  %17 = load i32*, i32** %2
  %18 = load i32, i32* %4
  %19 = getelementptr i32, i32* %17, i32 %18
  %20 = load i32, i32* %19
  %21 = load i32*, i32** %2
  %22 = load i32, i32* %5
  %23 = getelementptr i32, i32* %21, i32 %22
  %24 = load i32, i32* %23
  %25 = icmp slt i32 %20, %24
  %26 = zext i1 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %39

28:                                               ; preds = %9
  %29 = load i32, i32* %8
  ret i32 %29

30:                                               ; preds = %15
  %31 = load i32, i32* %5
  %32 = load i32, i32* %4
  %33 = sub i32 %31, %32
  %34 = load i32*, i32** %2
  %35 = load i32, i32* %4
  %36 = getelementptr i32, i32* %34, i32 %35
  %37 = load i32, i32* %36
  %38 = mul i32 %33, %37
  store i32 %38, i32* %16
  br label %48

39:                                               ; preds = %15
  %40 = load i32, i32* %5
  %41 = load i32, i32* %4
  %42 = sub i32 %40, %41
  %43 = load i32*, i32** %2
  %44 = load i32, i32* %5
  %45 = getelementptr i32, i32* %43, i32 %44
  %46 = load i32, i32* %45
  %47 = mul i32 %42, %46
  store i32 %47, i32* %16
  br label %48

48:                                               ; preds = %39, %30
  %49 = load i32, i32* %16
  %50 = load i32, i32* %8
  %51 = icmp sgt i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %16
  store i32 %55, i32* %8
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i32*, i32** %2
  %58 = load i32, i32* %4
  %59 = getelementptr i32, i32* %57, i32 %58
  %60 = load i32, i32* %59
  %61 = load i32*, i32** %2
  %62 = load i32, i32* %5
  %63 = getelementptr i32, i32* %61, i32 %62
  %64 = load i32, i32* %63
  %65 = icmp sgt i32 %60, %64
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %5
  %70 = sub i32 %69, 1
  store i32 %70, i32* %5
  br label %74

71:                                               ; preds = %56
  %72 = load i32, i32* %4
  %73 = add i32 %72, 1
  store i32 %73, i32* %4
  br label %74

74:                                               ; preds = %71, %68
  br label %9
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
  %12 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  %13 = load i32, i32* %0
  %14 = call i32 @maxArea(i32* %12, i32 %13)
  store i32 %14, i32* %0
  %15 = load i32, i32* %0
  ret i32 %15
}
