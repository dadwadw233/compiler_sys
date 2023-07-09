; ModuleID = 'sysyc'
source_filename = "./63_simple_atoi.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @atoi_(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca i32
  store i32 0, i32* %2
  %3 = alloca i32
  store i32 1, i32* %3
  %4 = alloca i32
  store i32 0, i32* %4
  br label %5

5:                                                ; preds = %13, %entry
  %6 = load i32*, i32** %1
  %7 = load i32, i32* %4
  %8 = getelementptr i32, i32* %6, i32 %7
  %9 = load i32, i32* %8
  %10 = icmp eq i32 %9, 32
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i32, i32* %4
  %15 = add i32 %14, 1
  store i32 %15, i32* %4
  br label %5

16:                                               ; preds = %5
  %17 = load i32*, i32** %1
  %18 = load i32, i32* %4
  %19 = getelementptr i32, i32* %17, i32 %18
  %20 = load i32, i32* %19
  %21 = icmp eq i32 %20, 43
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = load i32*, i32** %1
  %25 = load i32, i32* %4
  %26 = getelementptr i32, i32* %24, i32 %25
  %27 = load i32, i32* %26
  %28 = icmp eq i32 %27, 45
  %29 = zext i1 %28 to i32
  %30 = icmp ne i32 %29, 0
  %31 = or i1 %23, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %16
  %33 = load i32*, i32** %1
  %34 = load i32, i32* %4
  %35 = getelementptr i32, i32* %33, i32 %34
  %36 = load i32, i32* %35
  %37 = icmp eq i32 %36, 45
  %38 = zext i1 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %57, label %58

40:                                               ; preds = %16
  %41 = load i32*, i32** %1
  %42 = load i32, i32* %4
  %43 = getelementptr i32, i32* %41, i32 %42
  %44 = load i32, i32* %43
  %45 = icmp slt i32 %44, 48
  %46 = zext i1 %45 to i32
  %47 = icmp ne i32 %46, 0
  %48 = load i32*, i32** %1
  %49 = load i32, i32* %4
  %50 = getelementptr i32, i32* %48, i32 %49
  %51 = load i32, i32* %50
  %52 = icmp sgt i32 %51, 57
  %53 = zext i1 %52 to i32
  %54 = icmp ne i32 %53, 0
  %55 = or i1 %47, %54
  br i1 %55, label %61, label %63

56:                                               ; preds = %63, %58
  br label %64

57:                                               ; preds = %32
  store i32 -1, i32* %3
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4
  br label %56

61:                                               ; preds = %40
  store i32 2147483647, i32* %2
  %62 = load i32, i32* %2
  ret i32 %62

63:                                               ; preds = %40
  br label %56

64:                                               ; preds = %88, %56
  %65 = load i32*, i32** %1
  %66 = load i32, i32* %4
  %67 = getelementptr i32, i32* %65, i32 %66
  %68 = load i32, i32* %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = icmp ne i32 %70, 0
  %72 = load i32*, i32** %1
  %73 = load i32, i32* %4
  %74 = getelementptr i32, i32* %72, i32 %73
  %75 = load i32, i32* %74
  %76 = icmp sgt i32 %75, 47
  %77 = zext i1 %76 to i32
  %78 = icmp ne i32 %77, 0
  %79 = and i1 %71, %78
  %80 = load i32*, i32** %1
  %81 = load i32, i32* %4
  %82 = getelementptr i32, i32* %80, i32 %81
  %83 = load i32, i32* %82
  %84 = icmp slt i32 %83, 58
  %85 = zext i1 %84 to i32
  %86 = icmp ne i32 %85, 0
  %87 = and i1 %79, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %64
  %89 = load i32, i32* %2
  %90 = mul i32 %89, 10
  %91 = load i32*, i32** %1
  %92 = load i32, i32* %4
  %93 = getelementptr i32, i32* %91, i32 %92
  %94 = load i32, i32* %93
  %95 = add i32 %90, %94
  %96 = sub i32 %95, 48
  store i32 %96, i32* %2
  %97 = load i32, i32* %4
  %98 = add i32 %97, 1
  store i32 %98, i32* %4
  br label %64

99:                                               ; preds = %64
  %100 = load i32, i32* %2
  %101 = load i32, i32* %3
  %102 = mul i32 %100, %101
  ret i32 %102
}

define i32 @main() {
entry:
  %0 = alloca [500 x i32]
  %1 = alloca i32
  store i32 0, i32* %1
  %2 = alloca i32
  store i32 0, i32* %2
  br label %3

3:                                                ; preds = %8, %entry
  %4 = load i32, i32* %1
  %5 = icmp ne i32 %4, 10
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = call i32 @getch()
  store i32 %9, i32* %1
  %10 = load i32, i32* %2
  %11 = getelementptr [500 x i32], [500 x i32]* %0, i32 0, i32 %10
  %12 = load i32, i32* %1
  store i32 %12, i32* %11
  %13 = load i32, i32* %2
  %14 = add i32 %13, 1
  store i32 %14, i32* %2
  br label %3

15:                                               ; preds = %3
  %16 = load i32, i32* %2
  %17 = getelementptr [500 x i32], [500 x i32]* %0, i32 0, i32 %16
  store i32 0, i32* %17
  %18 = getelementptr [500 x i32], [500 x i32]* %0, i32 0, i32 0
  %19 = call i32 @atoi_(i32* %18)
  store i32 %19, i32* %2
  %20 = load i32, i32* %2
  call void @putint(i32 %20)
  ret i32 0
}
