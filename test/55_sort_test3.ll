; ModuleID = 'sysyc'
source_filename = "./55_sort_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @QuickSort(i32* %0, i32 %1, i32 %2) {
entry:
  %3 = alloca i32*
  store i32* %0, i32** %3
  %4 = alloca i32
  store i32 %1, i32* %4
  %5 = alloca i32
  store i32 %2, i32* %5
  %6 = load i32, i32* %4
  %7 = load i32, i32* %5
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %entry
  %12 = alloca i32
  %13 = load i32, i32* %4
  store i32 %13, i32* %12
  %14 = alloca i32
  %15 = load i32, i32* %5
  store i32 %15, i32* %14
  %16 = alloca i32
  %17 = load i32*, i32** %3
  %18 = load i32, i32* %4
  %19 = getelementptr i32, i32* %17, i32 %18
  %20 = load i32, i32* %19
  store i32 %20, i32* %16
  br label %22

21:                                               ; preds = %29, %entry
  ret i32 0

22:                                               ; preds = %117, %11
  %23 = load i32, i32* %12
  %24 = load i32, i32* %14
  %25 = icmp slt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %47

29:                                               ; preds = %22
  %30 = load i32*, i32** %3
  %31 = load i32, i32* %12
  %32 = getelementptr i32, i32* %30, i32 %31
  %33 = load i32, i32* %16
  store i32 %33, i32* %32
  %34 = alloca i32
  %35 = load i32, i32* %12
  %36 = sub i32 %35, 1
  store i32 %36, i32* %34
  %37 = load i32*, i32** %3
  %38 = load i32, i32* %4
  %39 = load i32, i32* %34
  %40 = call i32 @QuickSort(i32* %37, i32 %38, i32 %39)
  store i32 %40, i32* %34
  %41 = load i32, i32* %12
  %42 = add i32 %41, 1
  store i32 %42, i32* %34
  %43 = load i32*, i32** %3
  %44 = load i32, i32* %34
  %45 = load i32, i32* %5
  %46 = call i32 @QuickSort(i32* %43, i32 %44, i32 %45)
  store i32 %46, i32* %34
  br label %21

47:                                               ; preds = %63, %28
  %48 = load i32, i32* %12
  %49 = load i32, i32* %14
  %50 = icmp slt i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = icmp ne i32 %51, 0
  %53 = load i32*, i32** %3
  %54 = load i32, i32* %14
  %55 = getelementptr i32, i32* %53, i32 %54
  %56 = load i32, i32* %55
  %57 = load i32, i32* %16
  %58 = sub i32 %57, 1
  %59 = icmp sgt i32 %56, %58
  %60 = zext i1 %59 to i32
  %61 = icmp ne i32 %60, 0
  %62 = and i1 %52, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load i32, i32* %14
  %65 = sub i32 %64, 1
  store i32 %65, i32* %14
  br label %47

66:                                               ; preds = %47
  %67 = load i32, i32* %12
  %68 = load i32, i32* %14
  %69 = icmp slt i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32*, i32** %3
  %74 = load i32, i32* %12
  %75 = getelementptr i32, i32* %73, i32 %74
  %76 = load i32*, i32** %3
  %77 = load i32, i32* %14
  %78 = getelementptr i32, i32* %76, i32 %77
  %79 = load i32, i32* %78
  store i32 %79, i32* %75
  %80 = load i32, i32* %12
  %81 = add i32 %80, 1
  store i32 %81, i32* %12
  br label %82

82:                                               ; preds = %72, %66
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i32, i32* %12
  %85 = load i32, i32* %14
  %86 = icmp slt i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = icmp ne i32 %87, 0
  %89 = load i32*, i32** %3
  %90 = load i32, i32* %12
  %91 = getelementptr i32, i32* %89, i32 %90
  %92 = load i32, i32* %91
  %93 = load i32, i32* %16
  %94 = icmp slt i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = icmp ne i32 %95, 0
  %97 = and i1 %88, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i32, i32* %12
  %100 = add i32 %99, 1
  store i32 %100, i32* %12
  br label %83

101:                                              ; preds = %83
  %102 = load i32, i32* %12
  %103 = load i32, i32* %14
  %104 = icmp slt i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i32*, i32** %3
  %109 = load i32, i32* %14
  %110 = getelementptr i32, i32* %108, i32 %109
  %111 = load i32*, i32** %3
  %112 = load i32, i32* %12
  %113 = getelementptr i32, i32* %111, i32 %112
  %114 = load i32, i32* %113
  store i32 %114, i32* %110
  %115 = load i32, i32* %14
  %116 = sub i32 %115, 1
  store i32 %116, i32* %14
  br label %117

117:                                              ; preds = %107, %101
  br label %22
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
  %12 = alloca i32
  store i32 9, i32* %12
  %13 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 0
  %14 = load i32, i32* %11
  %15 = load i32, i32* %12
  %16 = call i32 @QuickSort(i32* %13, i32 %14, i32 %15)
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
  %26 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 %25
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
