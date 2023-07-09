; ModuleID = 'sysyc'
source_filename = "./62_long_code.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @bubblesort(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  %3 = alloca i64
  store i64 0, i64* %2
  br label %4

4:                                                ; preds = %35, %entry
  %5 = load i64, i64* %2
  %6 = load i64, i64* @0
  %7 = sub i64 %6, 1
  %8 = icmp slt i64 %5, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i64 0, i64* %3
  br label %13

12:                                               ; preds = %4
  ret i64 0

13:                                               ; preds = %57, %11
  %14 = load i64, i64* %3
  %15 = load i64, i64* @0
  %16 = load i64, i64* %2
  %17 = sub i64 %15, %16
  %18 = sub i64 %17, 1
  %19 = icmp slt i64 %14, %18
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load i64*, i64** %1
  %24 = load i64, i64* %3
  %25 = getelementptr i64, i64* %23, i64 %24
  %26 = load i64, i64* %25
  %27 = load i64*, i64** %1
  %28 = load i64, i64* %3
  %29 = add i64 %28, 1
  %30 = getelementptr i64, i64* %27, i64 %29
  %31 = load i64, i64* %30
  %32 = icmp sgt i64 %26, %31
  %33 = zext i1 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %57

35:                                               ; preds = %13
  %36 = load i64, i64* %2
  %37 = add i64 %36, 1
  store i64 %37, i64* %2
  br label %4

38:                                               ; preds = %22
  %39 = alloca i64
  %40 = load i64*, i64** %1
  %41 = load i64, i64* %3
  %42 = add i64 %41, 1
  %43 = getelementptr i64, i64* %40, i64 %42
  %44 = load i64, i64* %43
  store i64 %44, i64* %39
  %45 = load i64*, i64** %1
  %46 = load i64, i64* %3
  %47 = add i64 %46, 1
  %48 = getelementptr i64, i64* %45, i64 %47
  %49 = load i64*, i64** %1
  %50 = load i64, i64* %3
  %51 = getelementptr i64, i64* %49, i64 %50
  %52 = load i64, i64* %51
  store i64 %52, i64* %48
  %53 = load i64*, i64** %1
  %54 = load i64, i64* %3
  %55 = getelementptr i64, i64* %53, i64 %54
  %56 = load i64, i64* %39
  store i64 %56, i64* %55
  br label %57

57:                                               ; preds = %38, %22
  %58 = load i64, i64* %3
  %59 = add i64 %58, 1
  store i64 %59, i64* %3
  br label %13
}

define i64 @insertsort(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  store i64 1, i64* %2
  br label %3

3:                                                ; preds = %44, %entry
  %4 = load i64, i64* %2
  %5 = load i64, i64* @0
  %6 = icmp slt i64 %4, %5
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = alloca i64
  %11 = load i64*, i64** %1
  %12 = load i64, i64* %2
  %13 = getelementptr i64, i64* %11, i64 %12
  %14 = load i64, i64* %13
  store i64 %14, i64* %10
  %15 = alloca i64
  %16 = load i64, i64* %2
  %17 = sub i64 %16, 1
  store i64 %17, i64* %15
  br label %19

18:                                               ; preds = %3
  ret i64 0

19:                                               ; preds = %33, %9
  %20 = load i64, i64* %15
  %21 = icmp sgt i64 %20, -1
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  %24 = load i64, i64* %10
  %25 = load i64*, i64** %1
  %26 = load i64, i64* %15
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64, i64* %27
  %29 = icmp slt i64 %24, %28
  %30 = zext i1 %29 to i64
  %31 = icmp ne i64 %30, 0
  %32 = and i1 %23, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load i64*, i64** %1
  %35 = load i64, i64* %15
  %36 = add i64 %35, 1
  %37 = getelementptr i64, i64* %34, i64 %36
  %38 = load i64*, i64** %1
  %39 = load i64, i64* %15
  %40 = getelementptr i64, i64* %38, i64 %39
  %41 = load i64, i64* %40
  store i64 %41, i64* %37
  %42 = load i64, i64* %15
  %43 = sub i64 %42, 1
  store i64 %43, i64* %15
  br label %19

44:                                               ; preds = %19
  %45 = load i64*, i64** %1
  %46 = load i64, i64* %15
  %47 = add i64 %46, 1
  %48 = getelementptr i64, i64* %45, i64 %47
  %49 = load i64, i64* %10
  store i64 %49, i64* %48
  %50 = load i64, i64* %2
  %51 = add i64 %50, 1
  store i64 %51, i64* %2
  br label %3
}

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

define i64 @getMid(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  %3 = load i64, i64* @0
  %4 = srem i64 %3, 2
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %entry
  %9 = load i64, i64* @0
  %10 = sdiv i64 %9, 2
  store i64 %10, i64* %2
  %11 = load i64*, i64** %1
  %12 = load i64, i64* %2
  %13 = getelementptr i64, i64* %11, i64 %12
  %14 = load i64, i64* %13
  %15 = load i64*, i64** %1
  %16 = load i64, i64* %2
  %17 = sub i64 %16, 1
  %18 = getelementptr i64, i64* %15, i64 %17
  %19 = load i64, i64* %18
  %20 = add i64 %14, %19
  %21 = sdiv i64 %20, 2
  ret i64 %21

22:                                               ; preds = %entry
  %23 = load i64, i64* @0
  %24 = sdiv i64 %23, 2
  store i64 %24, i64* %2
  %25 = load i64*, i64** %1
  %26 = load i64, i64* %2
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64, i64* %27
  ret i64 %28
}

define i64 @getMost(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca [1000 x i64]
  %3 = alloca i64
  store i64 0, i64* %3
  br label %4

4:                                                ; preds = %9, %entry
  %5 = load i64, i64* %3
  %6 = icmp slt i64 %5, 1000
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load i64, i64* %3
  %11 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %10
  store i64 0, i64* %11
  %12 = load i64, i64* %3
  %13 = add i64 %12, 1
  store i64 %13, i64* %3
  br label %4

14:                                               ; preds = %4
  store i64 0, i64* %3
  %15 = alloca i64
  %16 = alloca i64
  store i64 0, i64* %15
  br label %17

17:                                               ; preds = %49, %14
  %18 = load i64, i64* %3
  %19 = load i64, i64* @0
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = alloca i64
  %25 = load i64*, i64** %1
  %26 = load i64, i64* %3
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64, i64* %27
  store i64 %28, i64* %24
  %29 = load i64, i64* %24
  %30 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %29
  %31 = load i64, i64* %24
  %32 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %31
  %33 = load i64, i64* %32
  %34 = add i64 %33, 1
  store i64 %34, i64* %30
  %35 = load i64, i64* %24
  %36 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %35
  %37 = load i64, i64* %36
  %38 = load i64, i64* %15
  %39 = icmp sgt i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %49

42:                                               ; preds = %17
  %43 = load i64, i64* %16
  ret i64 %43

44:                                               ; preds = %23
  %45 = load i64, i64* %24
  %46 = getelementptr [1000 x i64], [1000 x i64]* %2, i64 0, i64 %45
  %47 = load i64, i64* %46
  store i64 %47, i64* %15
  %48 = load i64, i64* %24
  store i64 %48, i64* %16
  br label %49

49:                                               ; preds = %44, %23
  %50 = load i64, i64* %3
  %51 = add i64 %50, 1
  store i64 %51, i64* %3
  br label %17
}

define i64 @revert(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i64 0, i64* %3
  store i64 0, i64* %4
  br label %5

5:                                                ; preds = %11, %entry
  %6 = load i64, i64* %3
  %7 = load i64, i64* %4
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load i64*, i64** %1
  %13 = load i64, i64* %3
  %14 = getelementptr i64, i64* %12, i64 %13
  %15 = load i64, i64* %14
  store i64 %15, i64* %2
  %16 = load i64*, i64** %1
  %17 = load i64, i64* %3
  %18 = getelementptr i64, i64* %16, i64 %17
  %19 = load i64*, i64** %1
  %20 = load i64, i64* %4
  %21 = getelementptr i64, i64* %19, i64 %20
  %22 = load i64, i64* %21
  store i64 %22, i64* %18
  %23 = load i64*, i64** %1
  %24 = load i64, i64* %4
  %25 = getelementptr i64, i64* %23, i64 %24
  %26 = load i64, i64* %2
  store i64 %26, i64* %25
  %27 = load i64, i64* %3
  %28 = add i64 %27, 1
  store i64 %28, i64* %3
  %29 = load i64, i64* %4
  %30 = sub i64 %29, 1
  store i64 %30, i64* %4
  br label %5

31:                                               ; preds = %5
  ret i64 0
}

define i64 @arrCopy(i64* %0, i64* %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64*
  store i64* %1, i64** %3
  %4 = alloca i64
  store i64 0, i64* %4
  br label %5

5:                                                ; preds = %11, %entry
  %6 = load i64, i64* %4
  %7 = load i64, i64* @0
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load i64*, i64** %3
  %13 = load i64, i64* %4
  %14 = getelementptr i64, i64* %12, i64 %13
  %15 = load i64*, i64** %2
  %16 = load i64, i64* %4
  %17 = getelementptr i64, i64* %15, i64 %16
  %18 = load i64, i64* %17
  store i64 %18, i64* %14
  %19 = load i64, i64* %4
  %20 = add i64 %19, 1
  store i64 %20, i64* %4
  br label %5

21:                                               ; preds = %5
  ret i64 0
}

define i64 @calSum(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  store i64 0, i64* %4
  %5 = alloca i64
  store i64 0, i64* %5
  br label %6

6:                                                ; preds = %37, %entry
  %7 = load i64, i64* %5
  %8 = load i64, i64* @0
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = load i64, i64* %4
  %14 = load i64*, i64** %2
  %15 = load i64, i64* %5
  %16 = getelementptr i64, i64* %14, i64 %15
  %17 = load i64, i64* %16
  %18 = add i64 %13, %17
  store i64 %18, i64* %4
  %19 = load i64, i64* %5
  %20 = load i64, i64* %3
  %21 = srem i64 %19, %20
  %22 = load i64, i64* %3
  %23 = sub i64 %22, 1
  %24 = icmp ne i64 %21, %23
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %32

27:                                               ; preds = %6
  ret i64 0

28:                                               ; preds = %12
  %29 = load i64*, i64** %2
  %30 = load i64, i64* %5
  %31 = getelementptr i64, i64* %29, i64 %30
  store i64 0, i64* %31
  br label %37

32:                                               ; preds = %12
  %33 = load i64*, i64** %2
  %34 = load i64, i64* %5
  %35 = getelementptr i64, i64* %33, i64 %34
  %36 = load i64, i64* %4
  store i64 %36, i64* %35
  store i64 0, i64* %4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i64, i64* %5
  %39 = add i64 %38, 1
  store i64 %39, i64* %5
  br label %6
}

define i64 @avgPooling(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  store i64 0, i64* %5
  store i64 0, i64* %4
  %6 = alloca i64
  br label %7

7:                                                ; preds = %39, %entry
  %8 = load i64, i64* %5
  %9 = load i64, i64* @0
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i64, i64* %5
  %15 = load i64, i64* %3
  %16 = sub i64 %15, 1
  %17 = icmp slt i64 %14, %16
  %18 = zext i1 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %32

20:                                               ; preds = %7
  %21 = load i64, i64* @0
  %22 = load i64, i64* %3
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 1
  store i64 %24, i64* %5
  br label %77

25:                                               ; preds = %13
  %26 = load i64, i64* %4
  %27 = load i64*, i64** %2
  %28 = load i64, i64* %5
  %29 = getelementptr i64, i64* %27, i64 %28
  %30 = load i64, i64* %29
  %31 = add i64 %26, %30
  store i64 %31, i64* %4
  br label %39

32:                                               ; preds = %13
  %33 = load i64, i64* %5
  %34 = load i64, i64* %3
  %35 = sub i64 %34, 1
  %36 = icmp eq i64 %33, %35
  %37 = zext i1 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %51

39:                                               ; preds = %76, %25
  %40 = load i64, i64* %5
  %41 = add i64 %40, 1
  store i64 %41, i64* %5
  br label %7

42:                                               ; preds = %32
  %43 = load i64*, i64** %2
  %44 = getelementptr i64, i64* %43, i64 0
  %45 = load i64, i64* %44
  store i64 %45, i64* %6
  %46 = load i64*, i64** %2
  %47 = getelementptr i64, i64* %46, i64 0
  %48 = load i64, i64* %4
  %49 = load i64, i64* %3
  %50 = sdiv i64 %48, %49
  store i64 %50, i64* %47
  br label %76

51:                                               ; preds = %32
  %52 = load i64, i64* %4
  %53 = load i64*, i64** %2
  %54 = load i64, i64* %5
  %55 = getelementptr i64, i64* %53, i64 %54
  %56 = load i64, i64* %55
  %57 = add i64 %52, %56
  %58 = load i64, i64* %6
  %59 = sub i64 %57, %58
  store i64 %59, i64* %4
  %60 = load i64*, i64** %2
  %61 = load i64, i64* %5
  %62 = load i64, i64* %3
  %63 = sub i64 %61, %62
  %64 = add i64 %63, 1
  %65 = getelementptr i64, i64* %60, i64 %64
  %66 = load i64, i64* %65
  store i64 %66, i64* %6
  %67 = load i64*, i64** %2
  %68 = load i64, i64* %5
  %69 = load i64, i64* %3
  %70 = sub i64 %68, %69
  %71 = add i64 %70, 1
  %72 = getelementptr i64, i64* %67, i64 %71
  %73 = load i64, i64* %4
  %74 = load i64, i64* %3
  %75 = sdiv i64 %73, %74
  store i64 %75, i64* %72
  br label %76

76:                                               ; preds = %51, %42
  br label %39

77:                                               ; preds = %83, %20
  %78 = load i64, i64* %5
  %79 = load i64, i64* @0
  %80 = icmp slt i64 %78, %79
  %81 = zext i1 %80 to i64
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i64*, i64** %2
  %85 = load i64, i64* %5
  %86 = getelementptr i64, i64* %84, i64 %85
  store i64 0, i64* %86
  %87 = load i64, i64* %5
  %88 = add i64 %87, 1
  store i64 %88, i64* %5
  br label %77

89:                                               ; preds = %77
  ret i64 0
}

define i64 @main() {
entry:
  store i64 32, i64* @0
  %0 = alloca [32 x i64]
  %1 = alloca [32 x i64]
  %2 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  store i64 7, i64* %2
  %3 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 1
  store i64 23, i64* %3
  %4 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 2
  store i64 89, i64* %4
  %5 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 3
  store i64 26, i64* %5
  %6 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 4
  store i64 282, i64* %6
  %7 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 5
  store i64 254, i64* %7
  %8 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 6
  store i64 27, i64* %8
  %9 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 7
  store i64 5, i64* %9
  %10 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 8
  store i64 83, i64* %10
  %11 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 9
  store i64 273, i64* %11
  %12 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 10
  store i64 574, i64* %12
  %13 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 11
  store i64 905, i64* %13
  %14 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 12
  store i64 354, i64* %14
  %15 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 13
  store i64 657, i64* %15
  %16 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 14
  store i64 935, i64* %16
  %17 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 15
  store i64 264, i64* %17
  %18 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 16
  store i64 639, i64* %18
  %19 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 17
  store i64 459, i64* %19
  %20 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 18
  store i64 29, i64* %20
  %21 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 19
  store i64 68, i64* %21
  %22 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 20
  store i64 929, i64* %22
  %23 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 21
  store i64 756, i64* %23
  %24 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 22
  store i64 452, i64* %24
  %25 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 23
  store i64 279, i64* %25
  %26 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 24
  store i64 58, i64* %26
  %27 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 25
  store i64 87, i64* %27
  %28 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 26
  store i64 96, i64* %28
  %29 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 27
  store i64 36, i64* %29
  %30 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 28
  store i64 39, i64* %30
  %31 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 29
  store i64 28, i64* %31
  %32 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 30
  store i64 1, i64* %32
  %33 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 31
  store i64 290, i64* %33
  %34 = alloca i64
  %35 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %36 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %37 = call i64 @arrCopy(i64* %35, i64* %36)
  store i64 %37, i64* %34
  %38 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %39 = call i64 @revert(i64* %38)
  store i64 %39, i64* %34
  %40 = alloca i64
  store i64 0, i64* %40
  br label %41

41:                                               ; preds = %46, %entry
  %42 = load i64, i64* %40
  %43 = icmp slt i64 %42, 32
  %44 = zext i1 %43 to i64
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i64, i64* %40
  %48 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %47
  %49 = load i64, i64* %48
  store i64 %49, i64* %34
  %50 = load i64, i64* %34
  call void @putint(i64 %50)
  %51 = load i64, i64* %40
  %52 = add i64 %51, 1
  store i64 %52, i64* %40
  br label %41

53:                                               ; preds = %41
  %54 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %55 = call i64 @bubblesort(i64* %54)
  store i64 %55, i64* %34
  store i64 0, i64* %40
  br label %56

56:                                               ; preds = %61, %53
  %57 = load i64, i64* %40
  %58 = icmp slt i64 %57, 32
  %59 = zext i1 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i64, i64* %40
  %63 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %62
  %64 = load i64, i64* %63
  store i64 %64, i64* %34
  %65 = load i64, i64* %34
  call void @putint(i64 %65)
  %66 = load i64, i64* %40
  %67 = add i64 %66, 1
  store i64 %67, i64* %40
  br label %56

68:                                               ; preds = %56
  %69 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %70 = call i64 @getMid(i64* %69)
  store i64 %70, i64* %34
  %71 = load i64, i64* %34
  call void @putint(i64 %71)
  %72 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %73 = call i64 @getMost(i64* %72)
  store i64 %73, i64* %34
  %74 = load i64, i64* %34
  call void @putint(i64 %74)
  %75 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %76 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %77 = call i64 @arrCopy(i64* %75, i64* %76)
  store i64 %77, i64* %34
  %78 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %79 = call i64 @bubblesort(i64* %78)
  store i64 %79, i64* %34
  store i64 0, i64* %40
  br label %80

80:                                               ; preds = %85, %68
  %81 = load i64, i64* %40
  %82 = icmp slt i64 %81, 32
  %83 = zext i1 %82 to i64
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i64, i64* %40
  %87 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %86
  %88 = load i64, i64* %87
  store i64 %88, i64* %34
  %89 = load i64, i64* %34
  call void @putint(i64 %89)
  %90 = load i64, i64* %40
  %91 = add i64 %90, 1
  store i64 %91, i64* %40
  br label %80

92:                                               ; preds = %80
  %93 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %94 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %95 = call i64 @arrCopy(i64* %93, i64* %94)
  store i64 %95, i64* %34
  %96 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %97 = call i64 @insertsort(i64* %96)
  store i64 %97, i64* %34
  store i64 0, i64* %40
  br label %98

98:                                               ; preds = %103, %92
  %99 = load i64, i64* %40
  %100 = icmp slt i64 %99, 32
  %101 = zext i1 %100 to i64
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i64, i64* %40
  %105 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %104
  %106 = load i64, i64* %105
  store i64 %106, i64* %34
  %107 = load i64, i64* %34
  call void @putint(i64 %107)
  %108 = load i64, i64* %40
  %109 = add i64 %108, 1
  store i64 %109, i64* %40
  br label %98

110:                                              ; preds = %98
  %111 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %112 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %113 = call i64 @arrCopy(i64* %111, i64* %112)
  store i64 %113, i64* %34
  store i64 0, i64* %40
  store i64 31, i64* %34
  %114 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %115 = load i64, i64* %40
  %116 = load i64, i64* %34
  %117 = call i64 @QuickSort(i64* %114, i64 %115, i64 %116)
  store i64 %117, i64* %34
  br label %118

118:                                              ; preds = %123, %110
  %119 = load i64, i64* %40
  %120 = icmp slt i64 %119, 32
  %121 = zext i1 %120 to i64
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i64, i64* %40
  %125 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %124
  %126 = load i64, i64* %125
  store i64 %126, i64* %34
  %127 = load i64, i64* %34
  call void @putint(i64 %127)
  %128 = load i64, i64* %40
  %129 = add i64 %128, 1
  store i64 %129, i64* %40
  br label %118

130:                                              ; preds = %118
  %131 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %132 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %133 = call i64 @arrCopy(i64* %131, i64* %132)
  store i64 %133, i64* %34
  %134 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %135 = call i64 @calSum(i64* %134, i64 4)
  store i64 %135, i64* %34
  store i64 0, i64* %40
  br label %136

136:                                              ; preds = %141, %130
  %137 = load i64, i64* %40
  %138 = icmp slt i64 %137, 32
  %139 = zext i1 %138 to i64
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i64, i64* %40
  %143 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %142
  %144 = load i64, i64* %143
  store i64 %144, i64* %34
  %145 = load i64, i64* %34
  call void @putint(i64 %145)
  %146 = load i64, i64* %40
  %147 = add i64 %146, 1
  store i64 %147, i64* %40
  br label %136

148:                                              ; preds = %136
  %149 = getelementptr [32 x i64], [32 x i64]* %0, i64 0, i64 0
  %150 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %151 = call i64 @arrCopy(i64* %149, i64* %150)
  store i64 %151, i64* %34
  %152 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 0
  %153 = call i64 @avgPooling(i64* %152, i64 3)
  store i64 %153, i64* %34
  store i64 0, i64* %40
  br label %154

154:                                              ; preds = %159, %148
  %155 = load i64, i64* %40
  %156 = icmp slt i64 %155, 32
  %157 = zext i1 %156 to i64
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i64, i64* %40
  %161 = getelementptr [32 x i64], [32 x i64]* %1, i64 0, i64 %160
  %162 = load i64, i64* %161
  store i64 %162, i64* %34
  %163 = load i64, i64* %34
  call void @putint(i64 %163)
  %164 = load i64, i64* %40
  %165 = add i64 %164, 1
  store i64 %165, i64* %40
  br label %154

166:                                              ; preds = %154
  ret i64 0
}
