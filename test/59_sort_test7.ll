; ModuleID = 'sysyc'
source_filename = "./59_sort_test7.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @Merge(i32* %0, i32 %1, i32 %2, i32 %3) {
entry:
  %4 = alloca i32*
  store i32* %0, i32** %4
  %5 = alloca i32
  store i32 %1, i32* %5
  %6 = alloca i32
  store i32 %2, i32* %6
  %7 = alloca i32
  store i32 %3, i32* %7
  %8 = alloca i32
  %9 = load i32, i32* %6
  %10 = load i32, i32* %5
  %11 = sub i32 %9, %10
  %12 = add i32 %11, 1
  store i32 %12, i32* %8
  %13 = alloca i32
  %14 = load i32, i32* %7
  %15 = load i32, i32* %6
  %16 = sub i32 %14, %15
  store i32 %16, i32* %13
  %17 = alloca [10 x i32]
  %18 = alloca [10 x i32]
  %19 = alloca i32
  store i32 0, i32* %19
  %20 = alloca i32
  store i32 0, i32* %20
  br label %21

21:                                               ; preds = %27, %entry
  %22 = load i32, i32* %19
  %23 = load i32, i32* %8
  %24 = icmp slt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i32, i32* %19
  %29 = getelementptr [10 x i32], [10 x i32]* %17, i32 0, i32 %28
  %30 = load i32*, i32** %4
  %31 = load i32, i32* %19
  %32 = load i32, i32* %5
  %33 = add i32 %31, %32
  %34 = getelementptr i32, i32* %30, i32 %33
  %35 = load i32, i32* %34
  store i32 %35, i32* %29
  %36 = load i32, i32* %19
  %37 = add i32 %36, 1
  store i32 %37, i32* %19
  br label %21

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %45, %38
  %40 = load i32, i32* %20
  %41 = load i32, i32* %13
  %42 = icmp slt i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i32, i32* %20
  %47 = getelementptr [10 x i32], [10 x i32]* %18, i32 0, i32 %46
  %48 = load i32*, i32** %4
  %49 = load i32, i32* %20
  %50 = load i32, i32* %6
  %51 = add i32 %49, %50
  %52 = add i32 %51, 1
  %53 = getelementptr i32, i32* %48, i32 %52
  %54 = load i32, i32* %53
  store i32 %54, i32* %47
  %55 = load i32, i32* %20
  %56 = add i32 %55, 1
  store i32 %56, i32* %20
  br label %39

57:                                               ; preds = %39
  store i32 0, i32* %19
  store i32 0, i32* %20
  %58 = alloca i32
  %59 = load i32, i32* %5
  store i32 %59, i32* %58
  br label %60

60:                                               ; preds = %106, %57
  %61 = load i32, i32* %19
  %62 = load i32, i32* %8
  %63 = icmp ne i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = icmp ne i32 %64, 0
  %66 = load i32, i32* %20
  %67 = load i32, i32* %13
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = icmp ne i32 %69, 0
  %71 = and i1 %65, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %60
  %73 = load i32, i32* %19
  %74 = getelementptr [10 x i32], [10 x i32]* %17, i32 0, i32 %73
  %75 = load i32, i32* %74
  %76 = load i32, i32* %20
  %77 = getelementptr [10 x i32], [10 x i32]* %18, i32 0, i32 %76
  %78 = load i32, i32* %77
  %79 = add i32 %78, 1
  %80 = icmp slt i32 %75, %79
  %81 = zext i1 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %95

83:                                               ; preds = %60
  br label %107

84:                                               ; preds = %72
  %85 = load i32*, i32** %4
  %86 = load i32, i32* %58
  %87 = getelementptr i32, i32* %85, i32 %86
  %88 = load i32, i32* %19
  %89 = getelementptr [10 x i32], [10 x i32]* %17, i32 0, i32 %88
  %90 = load i32, i32* %89
  store i32 %90, i32* %87
  %91 = load i32, i32* %58
  %92 = add i32 %91, 1
  store i32 %92, i32* %58
  %93 = load i32, i32* %19
  %94 = add i32 %93, 1
  store i32 %94, i32* %19
  br label %106

95:                                               ; preds = %72
  %96 = load i32*, i32** %4
  %97 = load i32, i32* %58
  %98 = getelementptr i32, i32* %96, i32 %97
  %99 = load i32, i32* %20
  %100 = getelementptr [10 x i32], [10 x i32]* %18, i32 0, i32 %99
  %101 = load i32, i32* %100
  store i32 %101, i32* %98
  %102 = load i32, i32* %58
  %103 = add i32 %102, 1
  store i32 %103, i32* %58
  %104 = load i32, i32* %20
  %105 = add i32 %104, 1
  store i32 %105, i32* %20
  br label %106

106:                                              ; preds = %95, %84
  br label %60

107:                                              ; preds = %113, %83
  %108 = load i32, i32* %19
  %109 = load i32, i32* %8
  %110 = icmp slt i32 %108, %109
  %111 = zext i1 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  %114 = load i32*, i32** %4
  %115 = load i32, i32* %58
  %116 = getelementptr i32, i32* %114, i32 %115
  %117 = load i32, i32* %19
  %118 = getelementptr [10 x i32], [10 x i32]* %17, i32 0, i32 %117
  %119 = load i32, i32* %118
  store i32 %119, i32* %116
  %120 = load i32, i32* %58
  %121 = add i32 %120, 1
  store i32 %121, i32* %58
  %122 = load i32, i32* %19
  %123 = add i32 %122, 1
  store i32 %123, i32* %19
  br label %107

124:                                              ; preds = %107
  br label %125

125:                                              ; preds = %131, %124
  %126 = load i32, i32* %20
  %127 = load i32, i32* %13
  %128 = icmp slt i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = load i32*, i32** %4
  %133 = load i32, i32* %58
  %134 = getelementptr i32, i32* %132, i32 %133
  %135 = load i32, i32* %20
  %136 = getelementptr [10 x i32], [10 x i32]* %18, i32 0, i32 %135
  %137 = load i32, i32* %136
  store i32 %137, i32* %134
  %138 = load i32, i32* %58
  %139 = add i32 %138, 1
  store i32 %139, i32* %58
  %140 = load i32, i32* %20
  %141 = add i32 %140, 1
  store i32 %141, i32* %20
  br label %125

142:                                              ; preds = %125
  ret i32 0
}

define i32 @MergeSort(i32* %0, i32 %1, i32 %2) {
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
  br i1 %10, label %11, label %33

11:                                               ; preds = %entry
  %12 = alloca i32
  %13 = load i32, i32* %4
  %14 = load i32, i32* %5
  %15 = add i32 %13, %14
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %12
  %17 = alloca i32
  %18 = load i32*, i32** %3
  %19 = load i32, i32* %4
  %20 = load i32, i32* %12
  %21 = call i32 @MergeSort(i32* %18, i32 %19, i32 %20)
  store i32 %21, i32* %17
  %22 = load i32, i32* %12
  %23 = add i32 %22, 1
  store i32 %23, i32* %17
  %24 = load i32*, i32** %3
  %25 = load i32, i32* %17
  %26 = load i32, i32* %5
  %27 = call i32 @MergeSort(i32* %24, i32 %25, i32 %26)
  store i32 %27, i32* %17
  %28 = load i32*, i32** %3
  %29 = load i32, i32* %4
  %30 = load i32, i32* %12
  %31 = load i32, i32* %5
  %32 = call i32 @Merge(i32* %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %17
  br label %33

33:                                               ; preds = %11, %entry
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
  %12 = alloca i32
  %13 = load i32, i32* @0
  %14 = sub i32 %13, 1
  store i32 %14, i32* %12
  %15 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 0
  %16 = load i32, i32* %11
  %17 = load i32, i32* %12
  %18 = call i32 @MergeSort(i32* %15, i32 %16, i32 %17)
  store i32 %18, i32* %11
  br label %19

19:                                               ; preds = %25, %entry
  %20 = load i32, i32* %11
  %21 = load i32, i32* @0
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* %11
  %27 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 %26
  %28 = load i32, i32* %27
  store i32 %28, i32* %12
  %29 = load i32, i32* %12
  call void @putint(i32 %29)
  store i32 10, i32* %12
  %30 = load i32, i32* %12
  call void @putch(i32 %30)
  %31 = load i32, i32* %11
  %32 = add i32 %31, 1
  store i32 %32, i32* %11
  br label %19

33:                                               ; preds = %19
  ret i32 0
}
