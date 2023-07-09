; ModuleID = 'sysyc'
source_filename = "./58_sort_test6.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @counting_sort(i32* %0, i32* %1, i32 %2) {
entry:
  %3 = alloca i32*
  store i32* %0, i32** %3
  %4 = alloca i32*
  store i32* %1, i32** %4
  %5 = alloca i32
  store i32 %2, i32* %5
  %6 = alloca [10 x i32]
  %7 = alloca i32
  %8 = alloca i32
  %9 = alloca i32
  store i32 0, i32* %9
  store i32 0, i32* %7
  store i32 0, i32* %8
  br label %10

10:                                               ; preds = %15, %entry
  %11 = load i32, i32* %9
  %12 = icmp slt i32 %11, 10
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i32, i32* %9
  %17 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %16
  store i32 0, i32* %17
  %18 = load i32, i32* %9
  %19 = add i32 %18, 1
  store i32 %19, i32* %9
  br label %10

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i32, i32* %7
  %23 = load i32, i32* %5
  %24 = icmp slt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load i32*, i32** %3
  %29 = load i32, i32* %7
  %30 = getelementptr i32, i32* %28, i32 %29
  %31 = load i32, i32* %30
  %32 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %31
  %33 = load i32*, i32** %3
  %34 = load i32, i32* %7
  %35 = getelementptr i32, i32* %33, i32 %34
  %36 = load i32, i32* %35
  %37 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %36
  %38 = load i32, i32* %37
  %39 = add i32 %38, 1
  store i32 %39, i32* %32
  %40 = load i32, i32* %7
  %41 = add i32 %40, 1
  store i32 %41, i32* %7
  br label %21

42:                                               ; preds = %21
  store i32 1, i32* %9
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i32, i32* %9
  %45 = icmp slt i32 %44, 10
  %46 = zext i1 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i32, i32* %9
  %50 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %49
  %51 = load i32, i32* %9
  %52 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %51
  %53 = load i32, i32* %52
  %54 = load i32, i32* %9
  %55 = sub i32 %54, 1
  %56 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %55
  %57 = load i32, i32* %56
  %58 = add i32 %53, %57
  store i32 %58, i32* %50
  %59 = load i32, i32* %9
  %60 = add i32 %59, 1
  store i32 %60, i32* %9
  br label %43

61:                                               ; preds = %43
  %62 = load i32, i32* %5
  store i32 %62, i32* %8
  br label %63

63:                                               ; preds = %68, %61
  %64 = load i32, i32* %8
  %65 = icmp sgt i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %63
  %69 = load i32*, i32** %3
  %70 = load i32, i32* %8
  %71 = sub i32 %70, 1
  %72 = getelementptr i32, i32* %69, i32 %71
  %73 = load i32, i32* %72
  %74 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %73
  %75 = load i32*, i32** %3
  %76 = load i32, i32* %8
  %77 = sub i32 %76, 1
  %78 = getelementptr i32, i32* %75, i32 %77
  %79 = load i32, i32* %78
  %80 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %79
  %81 = load i32, i32* %80
  %82 = sub i32 %81, 1
  store i32 %82, i32* %74
  %83 = load i32*, i32** %4
  %84 = load i32*, i32** %3
  %85 = load i32, i32* %8
  %86 = sub i32 %85, 1
  %87 = getelementptr i32, i32* %84, i32 %86
  %88 = load i32, i32* %87
  %89 = getelementptr [10 x i32], [10 x i32]* %6, i32 0, i32 %88
  %90 = load i32, i32* %89
  %91 = getelementptr i32, i32* %83, i32 %90
  %92 = load i32*, i32** %3
  %93 = load i32, i32* %8
  %94 = sub i32 %93, 1
  %95 = getelementptr i32, i32* %92, i32 %94
  %96 = load i32, i32* %95
  store i32 %96, i32* %91
  %97 = load i32, i32* %8
  %98 = sub i32 %97, 1
  store i32 %98, i32* %8
  br label %63

99:                                               ; preds = %63
  ret i32 0
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
  %12 = alloca [10 x i32]
  %13 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 0
  %14 = getelementptr [10 x i32], [10 x i32]* %12, i32 0, i32 0
  %15 = load i32, i32* @0
  %16 = call i32 @counting_sort(i32* %13, i32* %14, i32 %15)
  store i32 %16, i32* %11
  br label %17

17:                                               ; preds = %23, %entry
  %18 = load i32, i32* %11
  %19 = load i32, i32* @0
  %20 = icmp slt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = alloca i32
  %25 = load i32, i32* %11
  %26 = getelementptr [10 x i32], [10 x i32]* %12, i32 0, i32 %25
  %27 = load i32, i32* %26
  store i32 %27, i32* %24
  %28 = load i32, i32* %24
  call void @putint(i32 %28)
  store i32 10, i32* %24
  %29 = load i32, i32* %24
  call void @putch(i32 %29)
  %30 = load i32, i32* %11
  %31 = add i32 %30, 1
  store i32 %31, i32* %11
  br label %17

32:                                               ; preds = %17
  ret i32 0
}
