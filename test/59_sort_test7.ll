; ModuleID = 'sysyc'
source_filename = "./59_sort_test7.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @Merge(i64* %0, i64 %1, i64 %2, i64 %3) {
entry:
  %4 = alloca i64*
  store i64* %0, i64** %4
  %5 = alloca i64
  store i64 %1, i64* %5
  %6 = alloca i64
  store i64 %2, i64* %6
  %7 = alloca i64
  store i64 %3, i64* %7
  %8 = alloca i64
  %9 = load i64, i64* %6
  %10 = load i64, i64* %5
  %11 = sub i64 %9, %10
  %12 = add i64 %11, 1
  store i64 %12, i64* %8
  %13 = alloca i64
  %14 = load i64, i64* %7
  %15 = load i64, i64* %6
  %16 = sub i64 %14, %15
  store i64 %16, i64* %13
  %17 = alloca [10 x i64]
  %18 = alloca [10 x i64]
  %19 = alloca i64
  store i64 0, i64* %19
  %20 = alloca i64
  store i64 0, i64* %20
  br label %21

21:                                               ; preds = %27, %entry
  %22 = load i64, i64* %19
  %23 = load i64, i64* %8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i64, i64* %19
  %29 = getelementptr [10 x i64], [10 x i64]* %17, i64 0, i64 %28
  %30 = load i64*, i64** %4
  %31 = load i64, i64* %19
  %32 = load i64, i64* %5
  %33 = add i64 %31, %32
  %34 = getelementptr i64, i64* %30, i64 %33
  %35 = load i64, i64* %34
  store i64 %35, i64* %29
  %36 = load i64, i64* %19
  %37 = add i64 %36, 1
  store i64 %37, i64* %19
  br label %21

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %45, %38
  %40 = load i64, i64* %20
  %41 = load i64, i64* %13
  %42 = icmp slt i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i64, i64* %20
  %47 = getelementptr [10 x i64], [10 x i64]* %18, i64 0, i64 %46
  %48 = load i64*, i64** %4
  %49 = load i64, i64* %20
  %50 = load i64, i64* %6
  %51 = add i64 %49, %50
  %52 = add i64 %51, 1
  %53 = getelementptr i64, i64* %48, i64 %52
  %54 = load i64, i64* %53
  store i64 %54, i64* %47
  %55 = load i64, i64* %20
  %56 = add i64 %55, 1
  store i64 %56, i64* %20
  br label %39

57:                                               ; preds = %39
  store i64 0, i64* %19
  store i64 0, i64* %20
  %58 = alloca i64
  %59 = load i64, i64* %5
  store i64 %59, i64* %58
  br label %60

60:                                               ; preds = %106, %57
  %61 = load i64, i64* %19
  %62 = load i64, i64* %8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = icmp ne i64 %64, 0
  %66 = load i64, i64* %20
  %67 = load i64, i64* %13
  %68 = icmp ne i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = icmp ne i64 %69, 0
  %71 = and i1 %65, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %60
  %73 = load i64, i64* %19
  %74 = getelementptr [10 x i64], [10 x i64]* %17, i64 0, i64 %73
  %75 = load i64, i64* %74
  %76 = load i64, i64* %20
  %77 = getelementptr [10 x i64], [10 x i64]* %18, i64 0, i64 %76
  %78 = load i64, i64* %77
  %79 = add i64 %78, 1
  %80 = icmp slt i64 %75, %79
  %81 = zext i1 %80 to i64
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %84, label %95

83:                                               ; preds = %60
  br label %107

84:                                               ; preds = %72
  %85 = load i64*, i64** %4
  %86 = load i64, i64* %58
  %87 = getelementptr i64, i64* %85, i64 %86
  %88 = load i64, i64* %19
  %89 = getelementptr [10 x i64], [10 x i64]* %17, i64 0, i64 %88
  %90 = load i64, i64* %89
  store i64 %90, i64* %87
  %91 = load i64, i64* %58
  %92 = add i64 %91, 1
  store i64 %92, i64* %58
  %93 = load i64, i64* %19
  %94 = add i64 %93, 1
  store i64 %94, i64* %19
  br label %106

95:                                               ; preds = %72
  %96 = load i64*, i64** %4
  %97 = load i64, i64* %58
  %98 = getelementptr i64, i64* %96, i64 %97
  %99 = load i64, i64* %20
  %100 = getelementptr [10 x i64], [10 x i64]* %18, i64 0, i64 %99
  %101 = load i64, i64* %100
  store i64 %101, i64* %98
  %102 = load i64, i64* %58
  %103 = add i64 %102, 1
  store i64 %103, i64* %58
  %104 = load i64, i64* %20
  %105 = add i64 %104, 1
  store i64 %105, i64* %20
  br label %106

106:                                              ; preds = %95, %84
  br label %60

107:                                              ; preds = %113, %83
  %108 = load i64, i64* %19
  %109 = load i64, i64* %8
  %110 = icmp slt i64 %108, %109
  %111 = zext i1 %110 to i64
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load i64*, i64** %4
  %115 = load i64, i64* %58
  %116 = getelementptr i64, i64* %114, i64 %115
  %117 = load i64, i64* %19
  %118 = getelementptr [10 x i64], [10 x i64]* %17, i64 0, i64 %117
  %119 = load i64, i64* %118
  store i64 %119, i64* %116
  %120 = load i64, i64* %58
  %121 = add i64 %120, 1
  store i64 %121, i64* %58
  %122 = load i64, i64* %19
  %123 = add i64 %122, 1
  store i64 %123, i64* %19
  br label %107

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %131, %124
  %126 = load i64, i64* %20
  %127 = load i64, i64* %13
  %128 = icmp slt i64 %126, %127
  %129 = zext i1 %128 to i64
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = load i64*, i64** %4
  %133 = load i64, i64* %58
  %134 = getelementptr i64, i64* %132, i64 %133
  %135 = load i64, i64* %20
  %136 = getelementptr [10 x i64], [10 x i64]* %18, i64 0, i64 %135
  %137 = load i64, i64* %136
  store i64 %137, i64* %134
  %138 = load i64, i64* %58
  %139 = add i64 %138, 1
  store i64 %139, i64* %58
  %140 = load i64, i64* %20
  %141 = add i64 %140, 1
  store i64 %141, i64* %20
  br label %125

142:                                              ; preds = %125
  ret i64 0
}

define i64 @MergeSort(i64* %0, i64 %1, i64 %2) {
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
  br i1 %10, label %11, label %33

11:                                               ; preds = %entry
  %12 = alloca i64
  %13 = load i64, i64* %4
  %14 = load i64, i64* %5
  %15 = add i64 %13, %14
  %16 = sdiv i64 %15, 2
  store i64 %16, i64* %12
  %17 = alloca i64
  %18 = load i64*, i64** %3
  %19 = load i64, i64* %4
  %20 = load i64, i64* %12
  %21 = call i64 @MergeSort(i64* %18, i64 %19, i64 %20)
  store i64 %21, i64* %17
  %22 = load i64, i64* %12
  %23 = add i64 %22, 1
  store i64 %23, i64* %17
  %24 = load i64*, i64** %3
  %25 = load i64, i64* %17
  %26 = load i64, i64* %5
  %27 = call i64 @MergeSort(i64* %24, i64 %25, i64 %26)
  store i64 %27, i64* %17
  %28 = load i64*, i64** %3
  %29 = load i64, i64* %4
  %30 = load i64, i64* %12
  %31 = load i64, i64* %5
  %32 = call i64 @Merge(i64* %28, i64 %29, i64 %30, i64 %31)
  store i64 %32, i64* %17
  br label %33

33:                                               ; preds = %11, %entry
  ret i64 0
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
  %13 = load i64, i64* @0
  %14 = sub i64 %13, 1
  store i64 %14, i64* %12
  %15 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %16 = load i64, i64* %11
  %17 = load i64, i64* %12
  %18 = call i64 @MergeSort(i64* %15, i64 %16, i64 %17)
  store i64 %18, i64* %11
  br label %19

19:                                               ; preds = %25, %entry
  %20 = load i64, i64* %11
  %21 = load i64, i64* @0
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i64, i64* %11
  %27 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %26
  %28 = load i64, i64* %27
  store i64 %28, i64* %12
  %29 = load i64, i64* %12
  call void @putint(i64 %29)
  store i64 10, i64* %12
  %30 = load i64, i64* %12
  call void @putch(i64 %30)
  %31 = load i64, i64* %11
  %32 = add i64 %31, 1
  store i64 %32, i64* %11
  br label %19

33:                                               ; preds = %19
  ret i64 0
}
