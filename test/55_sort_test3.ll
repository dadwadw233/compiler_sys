; ModuleID = 'sysyc'
source_filename = "./55_sort_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @QuickSort(i64* %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = load i64, i64* %4
  %7 = load i64, i64* %5
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %entry
  %12 = alloca i64
  %13 = load i64, i64* %4
  store i64 %13, i64* %12
  %14 = alloca i64
  %15 = load i64, i64* %5
  store i64 %15, i64* %14
  %16 = alloca i64
  %17 = load i64*, i64** %3
  %18 = load i64, i64* %4
  %19 = getelementptr i64, i64* %17, i64 %18
  %20 = load i64, i64* %19
  store i64 %20, i64* %16
  br label %22

21:                                               ; preds = %29, %entry
  ret i64 0

22:                                               ; preds = %117, %11
  %23 = load i64, i64* %12
  %24 = load i64, i64* %14
  %25 = icmp slt i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %47

29:                                               ; preds = %22
  %30 = load i64*, i64** %3
  %31 = load i64, i64* %12
  %32 = getelementptr i64, i64* %30, i64 %31
  %33 = load i64, i64* %16
  store i64 %33, i64* %32
  %34 = alloca i64
  %35 = load i64, i64* %12
  %36 = sub i64 %35, 1
  store i64 %36, i64* %34
  %37 = load i64*, i64** %3
  %38 = load i64, i64* %4
  %39 = load i64, i64* %34
  %40 = call i64 @QuickSort(i64* %37, i64 %38, i64 %39)
  store i64 %40, i64* %34
  %41 = load i64, i64* %12
  %42 = add i64 %41, 1
  store i64 %42, i64* %34
  %43 = load i64*, i64** %3
  %44 = load i64, i64* %34
  %45 = load i64, i64* %5
  %46 = call i64 @QuickSort(i64* %43, i64 %44, i64 %45)
  store i64 %46, i64* %34
  br label %21

47:                                               ; preds = %63, %28
  %48 = load i64, i64* %12
  %49 = load i64, i64* %14
  %50 = icmp slt i64 %48, %49
  %51 = zext i1 %50 to i64
  %52 = icmp ne i64 %51, 0
  %53 = load i64*, i64** %3
  %54 = load i64, i64* %14
  %55 = getelementptr i64, i64* %53, i64 %54
  %56 = load i64, i64* %55
  %57 = load i64, i64* %16
  %58 = sub i64 %57, 1
  %59 = icmp sgt i64 %56, %58
  %60 = zext i1 %59 to i64
  %61 = icmp ne i64 %60, 0
  %62 = and i1 %52, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load i64, i64* %14
  %65 = sub i64 %64, 1
  store i64 %65, i64* %14
  br label %47

66:                                               ; preds = %47
  %67 = load i64, i64* %12
  %68 = load i64, i64* %14
  %69 = icmp slt i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i64*, i64** %3
  %74 = load i64, i64* %12
  %75 = getelementptr i64, i64* %73, i64 %74
  %76 = load i64*, i64** %3
  %77 = load i64, i64* %14
  %78 = getelementptr i64, i64* %76, i64 %77
  %79 = load i64, i64* %78
  store i64 %79, i64* %75
  %80 = load i64, i64* %12
  %81 = add i64 %80, 1
  store i64 %81, i64* %12
  br label %82

82:                                               ; preds = %72, %66
  br label %83

83:                                               ; preds = %98, %82
  %84 = load i64, i64* %12
  %85 = load i64, i64* %14
  %86 = icmp slt i64 %84, %85
  %87 = zext i1 %86 to i64
  %88 = icmp ne i64 %87, 0
  %89 = load i64*, i64** %3
  %90 = load i64, i64* %12
  %91 = getelementptr i64, i64* %89, i64 %90
  %92 = load i64, i64* %91
  %93 = load i64, i64* %16
  %94 = icmp slt i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = icmp ne i64 %95, 0
  %97 = and i1 %88, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load i64, i64* %12
  %100 = add i64 %99, 1
  store i64 %100, i64* %12
  br label %83

101:                                              ; preds = %83
  %102 = load i64, i64* %12
  %103 = load i64, i64* %14
  %104 = icmp slt i64 %102, %103
  %105 = zext i1 %104 to i64
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load i64*, i64** %3
  %109 = load i64, i64* %14
  %110 = getelementptr i64, i64* %108, i64 %109
  %111 = load i64*, i64** %3
  %112 = load i64, i64* %12
  %113 = getelementptr i64, i64* %111, i64 %112
  %114 = load i64, i64* %113
  store i64 %114, i64* %110
  %115 = load i64, i64* %14
  %116 = sub i64 %115, 1
  store i64 %116, i64* %14
  br label %117

117:                                              ; preds = %107, %101
  br label %22
}

define i64 @main() {
entry:
  store i64 10, i64* @0
  %0 = alloca [10 x i64]
  %1 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  store i64 4, i64* %1
  %2 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 1
  store i64 3, i64* %2
  %3 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 2
  store i64 9, i64* %3
  %4 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 3
  store i64 2, i64* %4
  %5 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 4
  store i64 0, i64* %5
  %6 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 5
  store i64 1, i64* %6
  %7 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 6
  store i64 6, i64* %7
  %8 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 7
  store i64 5, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 8
  store i64 7, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 9
  store i64 8, i64* %10
  %11 = alloca i64
  store i64 0, i64* %11
  %12 = alloca i64
  store i64 9, i64* %12
  %13 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %14 = load i64, i64* %11
  %15 = load i64, i64* %12
  %16 = call i64 @QuickSort(i64* %13, i64 %14, i64 %15)
  store i64 %16, i64* %11
  br label %17

17:                                               ; preds = %23, %entry
  %18 = load i64, i64* %11
  %19 = load i64, i64* @0
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = alloca i64
  %25 = load i64, i64* %11
  %26 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %25
  %27 = load i64, i64* %26
  store i64 %27, i64* %24
  %28 = load i64, i64* %24
  call void @putint(i64 %28)
  store i64 10, i64* %24
  %29 = load i64, i64* %24
  call void @putch(i64 %29)
  %30 = load i64, i64* %11
  %31 = add i64 %30, 1
  store i64 %31, i64* %11
  br label %17

32:                                               ; preds = %17
  ret i64 0
}
