; ModuleID = 'sysyc'
source_filename = "./62_long_code.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @bubblesort(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca i32
  %3 = alloca i32
  store i32 0, i32* %2
  br label %4

4:                                                ; preds = %35, %entry
  %5 = load i32, i32* %2
  %6 = load i32, i32* @0
  %7 = sub i32 %6, 1
  %8 = icmp slt i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i32 0, i32* %3
  br label %13

12:                                               ; preds = %4
  ret i32 0

13:                                               ; preds = %57, %11
  %14 = load i32, i32* %3
  %15 = load i32, i32* @0
  %16 = load i32, i32* %2
  %17 = sub i32 %15, %16
  %18 = sub i32 %17, 1
  %19 = icmp slt i32 %14, %18
  %20 = zext i1 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load i32*, i32** %1
  %24 = load i32, i32* %3
  %25 = getelementptr i32, i32* %23, i32 %24
  %26 = load i32, i32* %25
  %27 = load i32*, i32** %1
  %28 = load i32, i32* %3
  %29 = add i32 %28, 1
  %30 = getelementptr i32, i32* %27, i32 %29
  %31 = load i32, i32* %30
  %32 = icmp sgt i32 %26, %31
  %33 = zext i1 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %57

35:                                               ; preds = %13
  %36 = load i32, i32* %2
  %37 = add i32 %36, 1
  store i32 %37, i32* %2
  br label %4

38:                                               ; preds = %22
  %39 = alloca i32
  %40 = load i32*, i32** %1
  %41 = load i32, i32* %3
  %42 = add i32 %41, 1
  %43 = getelementptr i32, i32* %40, i32 %42
  %44 = load i32, i32* %43
  store i32 %44, i32* %39
  %45 = load i32*, i32** %1
  %46 = load i32, i32* %3
  %47 = add i32 %46, 1
  %48 = getelementptr i32, i32* %45, i32 %47
  %49 = load i32*, i32** %1
  %50 = load i32, i32* %3
  %51 = getelementptr i32, i32* %49, i32 %50
  %52 = load i32, i32* %51
  store i32 %52, i32* %48
  %53 = load i32*, i32** %1
  %54 = load i32, i32* %3
  %55 = getelementptr i32, i32* %53, i32 %54
  %56 = load i32, i32* %39
  store i32 %56, i32* %55
  br label %57

57:                                               ; preds = %38, %22
  %58 = load i32, i32* %3
  %59 = add i32 %58, 1
  store i32 %59, i32* %3
  br label %13
}

define i32 @insertsort(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca i32
  store i32 1, i32* %2
  br label %3

3:                                                ; preds = %44, %entry
  %4 = load i32, i32* %2
  %5 = load i32, i32* @0
  %6 = icmp slt i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = alloca i32
  %11 = load i32*, i32** %1
  %12 = load i32, i32* %2
  %13 = getelementptr i32, i32* %11, i32 %12
  %14 = load i32, i32* %13
  store i32 %14, i32* %10
  %15 = alloca i32
  %16 = load i32, i32* %2
  %17 = sub i32 %16, 1
  store i32 %17, i32* %15
  br label %19

18:                                               ; preds = %3
  ret i32 0

19:                                               ; preds = %33, %9
  %20 = load i32, i32* %15
  %21 = icmp sgt i32 %20, -1
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = load i32, i32* %10
  %25 = load i32*, i32** %1
  %26 = load i32, i32* %15
  %27 = getelementptr i32, i32* %25, i32 %26
  %28 = load i32, i32* %27
  %29 = icmp slt i32 %24, %28
  %30 = zext i1 %29 to i32
  %31 = icmp ne i32 %30, 0
  %32 = and i1 %23, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load i32*, i32** %1
  %35 = load i32, i32* %15
  %36 = add i32 %35, 1
  %37 = getelementptr i32, i32* %34, i32 %36
  %38 = load i32*, i32** %1
  %39 = load i32, i32* %15
  %40 = getelementptr i32, i32* %38, i32 %39
  %41 = load i32, i32* %40
  store i32 %41, i32* %37
  %42 = load i32, i32* %15
  %43 = sub i32 %42, 1
  store i32 %43, i32* %15
  br label %19

44:                                               ; preds = %19
  %45 = load i32*, i32** %1
  %46 = load i32, i32* %15
  %47 = add i32 %46, 1
  %48 = getelementptr i32, i32* %45, i32 %47
  %49 = load i32, i32* %10
  store i32 %49, i32* %48
  %50 = load i32, i32* %2
  %51 = add i32 %50, 1
  store i32 %51, i32* %2
  br label %3
}

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

define i32 @getMid(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca i32
  %3 = load i32, i32* @0
  %4 = srem i32 %3, 2
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %entry
  %9 = load i32, i32* @0
  %10 = sdiv i32 %9, 2
  store i32 %10, i32* %2
  %11 = load i32*, i32** %1
  %12 = load i32, i32* %2
  %13 = getelementptr i32, i32* %11, i32 %12
  %14 = load i32, i32* %13
  %15 = load i32*, i32** %1
  %16 = load i32, i32* %2
  %17 = sub i32 %16, 1
  %18 = getelementptr i32, i32* %15, i32 %17
  %19 = load i32, i32* %18
  %20 = add i32 %14, %19
  %21 = sdiv i32 %20, 2
  ret i32 %21

22:                                               ; preds = %entry
  %23 = load i32, i32* @0
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %2
  %25 = load i32*, i32** %1
  %26 = load i32, i32* %2
  %27 = getelementptr i32, i32* %25, i32 %26
  %28 = load i32, i32* %27
  ret i32 %28
}

define i32 @getMost(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca [1000 x i32]
  %3 = alloca i32
  store i32 0, i32* %3
  br label %4

4:                                                ; preds = %9, %entry
  %5 = load i32, i32* %3
  %6 = icmp slt i32 %5, 1000
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = load i32, i32* %3
  %11 = getelementptr [1000 x i32], [1000 x i32]* %2, i32 0, i32 %10
  store i32 0, i32* %11
  %12 = load i32, i32* %3
  %13 = add i32 %12, 1
  store i32 %13, i32* %3
  br label %4

14:                                               ; preds = %4
  store i32 0, i32* %3
  %15 = alloca i32
  %16 = alloca i32
  store i32 0, i32* %15
  br label %17

17:                                               ; preds = %49, %14
  %18 = load i32, i32* %3
  %19 = load i32, i32* @0
  %20 = icmp slt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = alloca i32
  %25 = load i32*, i32** %1
  %26 = load i32, i32* %3
  %27 = getelementptr i32, i32* %25, i32 %26
  %28 = load i32, i32* %27
  store i32 %28, i32* %24
  %29 = load i32, i32* %24
  %30 = getelementptr [1000 x i32], [1000 x i32]* %2, i32 0, i32 %29
  %31 = load i32, i32* %24
  %32 = getelementptr [1000 x i32], [1000 x i32]* %2, i32 0, i32 %31
  %33 = load i32, i32* %32
  %34 = add i32 %33, 1
  store i32 %34, i32* %30
  %35 = load i32, i32* %24
  %36 = getelementptr [1000 x i32], [1000 x i32]* %2, i32 0, i32 %35
  %37 = load i32, i32* %36
  %38 = load i32, i32* %15
  %39 = icmp sgt i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %49

42:                                               ; preds = %17
  %43 = load i32, i32* %16
  ret i32 %43

44:                                               ; preds = %23
  %45 = load i32, i32* %24
  %46 = getelementptr [1000 x i32], [1000 x i32]* %2, i32 0, i32 %45
  %47 = load i32, i32* %46
  store i32 %47, i32* %15
  %48 = load i32, i32* %24
  store i32 %48, i32* %16
  br label %49

49:                                               ; preds = %44, %23
  %50 = load i32, i32* %3
  %51 = add i32 %50, 1
  store i32 %51, i32* %3
  br label %17
}

define i32 @revert(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  store i32 0, i32* %3
  store i32 0, i32* %4
  br label %5

5:                                                ; preds = %11, %entry
  %6 = load i32, i32* %3
  %7 = load i32, i32* %4
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %5
  %12 = load i32*, i32** %1
  %13 = load i32, i32* %3
  %14 = getelementptr i32, i32* %12, i32 %13
  %15 = load i32, i32* %14
  store i32 %15, i32* %2
  %16 = load i32*, i32** %1
  %17 = load i32, i32* %3
  %18 = getelementptr i32, i32* %16, i32 %17
  %19 = load i32*, i32** %1
  %20 = load i32, i32* %4
  %21 = getelementptr i32, i32* %19, i32 %20
  %22 = load i32, i32* %21
  store i32 %22, i32* %18
  %23 = load i32*, i32** %1
  %24 = load i32, i32* %4
  %25 = getelementptr i32, i32* %23, i32 %24
  %26 = load i32, i32* %2
  store i32 %26, i32* %25
  %27 = load i32, i32* %3
  %28 = add i32 %27, 1
  store i32 %28, i32* %3
  %29 = load i32, i32* %4
  %30 = sub i32 %29, 1
  store i32 %30, i32* %4
  br label %5

31:                                               ; preds = %5
  ret i32 0
}

define i32 @arrCopy(i32* %0, i32* %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32*
  store i32* %1, i32** %3
  %4 = alloca i32
  store i32 0, i32* %4
  br label %5

5:                                                ; preds = %11, %entry
  %6 = load i32, i32* %4
  %7 = load i32, i32* @0
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = load i32*, i32** %3
  %13 = load i32, i32* %4
  %14 = getelementptr i32, i32* %12, i32 %13
  %15 = load i32*, i32** %2
  %16 = load i32, i32* %4
  %17 = getelementptr i32, i32* %15, i32 %16
  %18 = load i32, i32* %17
  store i32 %18, i32* %14
  %19 = load i32, i32* %4
  %20 = add i32 %19, 1
  store i32 %20, i32* %4
  br label %5

21:                                               ; preds = %5
  ret i32 0
}

define i32 @calSum(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  store i32 0, i32* %4
  %5 = alloca i32
  store i32 0, i32* %5
  br label %6

6:                                                ; preds = %37, %entry
  %7 = load i32, i32* %5
  %8 = load i32, i32* @0
  %9 = icmp slt i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %6
  %13 = load i32, i32* %4
  %14 = load i32*, i32** %2
  %15 = load i32, i32* %5
  %16 = getelementptr i32, i32* %14, i32 %15
  %17 = load i32, i32* %16
  %18 = add i32 %13, %17
  store i32 %18, i32* %4
  %19 = load i32, i32* %5
  %20 = load i32, i32* %3
  %21 = srem i32 %19, %20
  %22 = load i32, i32* %3
  %23 = sub i32 %22, 1
  %24 = icmp ne i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %32

27:                                               ; preds = %6
  ret i32 0

28:                                               ; preds = %12
  %29 = load i32*, i32** %2
  %30 = load i32, i32* %5
  %31 = getelementptr i32, i32* %29, i32 %30
  store i32 0, i32* %31
  br label %37

32:                                               ; preds = %12
  %33 = load i32*, i32** %2
  %34 = load i32, i32* %5
  %35 = getelementptr i32, i32* %33, i32 %34
  %36 = load i32, i32* %4
  store i32 %36, i32* %35
  store i32 0, i32* %4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load i32, i32* %5
  %39 = add i32 %38, 1
  store i32 %39, i32* %5
  br label %6
}

define i32 @avgPooling(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = alloca i32
  store i32 0, i32* %5
  store i32 0, i32* %4
  %6 = alloca i32
  br label %7

7:                                                ; preds = %39, %entry
  %8 = load i32, i32* %5
  %9 = load i32, i32* @0
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i32, i32* %5
  %15 = load i32, i32* %3
  %16 = sub i32 %15, 1
  %17 = icmp slt i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %32

20:                                               ; preds = %7
  %21 = load i32, i32* @0
  %22 = load i32, i32* %3
  %23 = sub i32 %21, %22
  %24 = add i32 %23, 1
  store i32 %24, i32* %5
  br label %77

25:                                               ; preds = %13
  %26 = load i32, i32* %4
  %27 = load i32*, i32** %2
  %28 = load i32, i32* %5
  %29 = getelementptr i32, i32* %27, i32 %28
  %30 = load i32, i32* %29
  %31 = add i32 %26, %30
  store i32 %31, i32* %4
  br label %39

32:                                               ; preds = %13
  %33 = load i32, i32* %5
  %34 = load i32, i32* %3
  %35 = sub i32 %34, 1
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %51

39:                                               ; preds = %76, %25
  %40 = load i32, i32* %5
  %41 = add i32 %40, 1
  store i32 %41, i32* %5
  br label %7

42:                                               ; preds = %32
  %43 = load i32*, i32** %2
  %44 = getelementptr i32, i32* %43, i32 0
  %45 = load i32, i32* %44
  store i32 %45, i32* %6
  %46 = load i32*, i32** %2
  %47 = getelementptr i32, i32* %46, i32 0
  %48 = load i32, i32* %4
  %49 = load i32, i32* %3
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %47
  br label %76

51:                                               ; preds = %32
  %52 = load i32, i32* %4
  %53 = load i32*, i32** %2
  %54 = load i32, i32* %5
  %55 = getelementptr i32, i32* %53, i32 %54
  %56 = load i32, i32* %55
  %57 = add i32 %52, %56
  %58 = load i32, i32* %6
  %59 = sub i32 %57, %58
  store i32 %59, i32* %4
  %60 = load i32*, i32** %2
  %61 = load i32, i32* %5
  %62 = load i32, i32* %3
  %63 = sub i32 %61, %62
  %64 = add i32 %63, 1
  %65 = getelementptr i32, i32* %60, i32 %64
  %66 = load i32, i32* %65
  store i32 %66, i32* %6
  %67 = load i32*, i32** %2
  %68 = load i32, i32* %5
  %69 = load i32, i32* %3
  %70 = sub i32 %68, %69
  %71 = add i32 %70, 1
  %72 = getelementptr i32, i32* %67, i32 %71
  %73 = load i32, i32* %4
  %74 = load i32, i32* %3
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %72
  br label %76

76:                                               ; preds = %51, %42
  br label %39

77:                                               ; preds = %83, %20
  %78 = load i32, i32* %5
  %79 = load i32, i32* @0
  %80 = icmp slt i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32*, i32** %2
  %85 = load i32, i32* %5
  %86 = getelementptr i32, i32* %84, i32 %85
  store i32 0, i32* %86
  %87 = load i32, i32* %5
  %88 = add i32 %87, 1
  store i32 %88, i32* %5
  br label %77

89:                                               ; preds = %77
  ret i32 0
}

define i32 @main() {
entry:
  store i32 32, i32* @0
  %0 = alloca [32 x i32]
  %1 = alloca [32 x i32]
  %2 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 0
  store i32 7, i32* %2
  %3 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 1
  store i32 23, i32* %3
  %4 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 2
  store i32 89, i32* %4
  %5 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 3
  store i32 26, i32* %5
  %6 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 4
  store i32 282, i32* %6
  %7 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 5
  store i32 254, i32* %7
  %8 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 6
  store i32 27, i32* %8
  %9 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 7
  store i32 5, i32* %9
  %10 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 8
  store i32 83, i32* %10
  %11 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 9
  store i32 273, i32* %11
  %12 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 10
  store i32 574, i32* %12
  %13 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 11
  store i32 905, i32* %13
  %14 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 12
  store i32 354, i32* %14
  %15 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 13
  store i32 657, i32* %15
  %16 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 14
  store i32 935, i32* %16
  %17 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 15
  store i32 264, i32* %17
  %18 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 16
  store i32 639, i32* %18
  %19 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 17
  store i32 459, i32* %19
  %20 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 18
  store i32 29, i32* %20
  %21 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 19
  store i32 68, i32* %21
  %22 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 20
  store i32 929, i32* %22
  %23 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 21
  store i32 756, i32* %23
  %24 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 22
  store i32 452, i32* %24
  %25 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 23
  store i32 279, i32* %25
  %26 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 24
  store i32 58, i32* %26
  %27 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 25
  store i32 87, i32* %27
  %28 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 26
  store i32 96, i32* %28
  %29 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 27
  store i32 36, i32* %29
  %30 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 28
  store i32 39, i32* %30
  %31 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 29
  store i32 28, i32* %31
  %32 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 30
  store i32 1, i32* %32
  %33 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 31
  store i32 290, i32* %33
  %34 = alloca i32
  %35 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 0
  %36 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %37 = call i32 @arrCopy(i32* %35, i32* %36)
  store i32 %37, i32* %34
  %38 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %39 = call i32 @revert(i32* %38)
  store i32 %39, i32* %34
  %40 = alloca i32
  store i32 0, i32* %40
  br label %41

41:                                               ; preds = %46, %entry
  %42 = load i32, i32* %40
  %43 = icmp slt i32 %42, 32
  %44 = zext i1 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %40
  %48 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 %47
  %49 = load i32, i32* %48
  store i32 %49, i32* %34
  %50 = load i32, i32* %34
  call void @putint(i32 %50)
  %51 = load i32, i32* %40
  %52 = add i32 %51, 1
  store i32 %52, i32* %40
  br label %41

53:                                               ; preds = %41
  %54 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %55 = call i32 @bubblesort(i32* %54)
  store i32 %55, i32* %34
  store i32 0, i32* %40
  br label %56

56:                                               ; preds = %61, %53
  %57 = load i32, i32* %40
  %58 = icmp slt i32 %57, 32
  %59 = zext i1 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %40
  %63 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 %62
  %64 = load i32, i32* %63
  store i32 %64, i32* %34
  %65 = load i32, i32* %34
  call void @putint(i32 %65)
  %66 = load i32, i32* %40
  %67 = add i32 %66, 1
  store i32 %67, i32* %40
  br label %56

68:                                               ; preds = %56
  %69 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %70 = call i32 @getMid(i32* %69)
  store i32 %70, i32* %34
  %71 = load i32, i32* %34
  call void @putint(i32 %71)
  %72 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %73 = call i32 @getMost(i32* %72)
  store i32 %73, i32* %34
  %74 = load i32, i32* %34
  call void @putint(i32 %74)
  %75 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 0
  %76 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %77 = call i32 @arrCopy(i32* %75, i32* %76)
  store i32 %77, i32* %34
  %78 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %79 = call i32 @bubblesort(i32* %78)
  store i32 %79, i32* %34
  store i32 0, i32* %40
  br label %80

80:                                               ; preds = %85, %68
  %81 = load i32, i32* %40
  %82 = icmp slt i32 %81, 32
  %83 = zext i1 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* %40
  %87 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 %86
  %88 = load i32, i32* %87
  store i32 %88, i32* %34
  %89 = load i32, i32* %34
  call void @putint(i32 %89)
  %90 = load i32, i32* %40
  %91 = add i32 %90, 1
  store i32 %91, i32* %40
  br label %80

92:                                               ; preds = %80
  %93 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 0
  %94 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %95 = call i32 @arrCopy(i32* %93, i32* %94)
  store i32 %95, i32* %34
  %96 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %97 = call i32 @insertsort(i32* %96)
  store i32 %97, i32* %34
  store i32 0, i32* %40
  br label %98

98:                                               ; preds = %103, %92
  %99 = load i32, i32* %40
  %100 = icmp slt i32 %99, 32
  %101 = zext i1 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i32, i32* %40
  %105 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 %104
  %106 = load i32, i32* %105
  store i32 %106, i32* %34
  %107 = load i32, i32* %34
  call void @putint(i32 %107)
  %108 = load i32, i32* %40
  %109 = add i32 %108, 1
  store i32 %109, i32* %40
  br label %98

110:                                              ; preds = %98
  %111 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 0
  %112 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %113 = call i32 @arrCopy(i32* %111, i32* %112)
  store i32 %113, i32* %34
  store i32 0, i32* %40
  store i32 31, i32* %34
  %114 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %115 = load i32, i32* %40
  %116 = load i32, i32* %34
  %117 = call i32 @QuickSort(i32* %114, i32 %115, i32 %116)
  store i32 %117, i32* %34
  br label %118

118:                                              ; preds = %123, %110
  %119 = load i32, i32* %40
  %120 = icmp slt i32 %119, 32
  %121 = zext i1 %120 to i32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* %40
  %125 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 %124
  %126 = load i32, i32* %125
  store i32 %126, i32* %34
  %127 = load i32, i32* %34
  call void @putint(i32 %127)
  %128 = load i32, i32* %40
  %129 = add i32 %128, 1
  store i32 %129, i32* %40
  br label %118

130:                                              ; preds = %118
  %131 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 0
  %132 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %133 = call i32 @arrCopy(i32* %131, i32* %132)
  store i32 %133, i32* %34
  %134 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %135 = call i32 @calSum(i32* %134, i32 4)
  store i32 %135, i32* %34
  store i32 0, i32* %40
  br label %136

136:                                              ; preds = %141, %130
  %137 = load i32, i32* %40
  %138 = icmp slt i32 %137, 32
  %139 = zext i1 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %136
  %142 = load i32, i32* %40
  %143 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 %142
  %144 = load i32, i32* %143
  store i32 %144, i32* %34
  %145 = load i32, i32* %34
  call void @putint(i32 %145)
  %146 = load i32, i32* %40
  %147 = add i32 %146, 1
  store i32 %147, i32* %40
  br label %136

148:                                              ; preds = %136
  %149 = getelementptr [32 x i32], [32 x i32]* %0, i32 0, i32 0
  %150 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %151 = call i32 @arrCopy(i32* %149, i32* %150)
  store i32 %151, i32* %34
  %152 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 0
  %153 = call i32 @avgPooling(i32* %152, i32 3)
  store i32 %153, i32* %34
  store i32 0, i32* %40
  br label %154

154:                                              ; preds = %159, %148
  %155 = load i32, i32* %40
  %156 = icmp slt i32 %155, 32
  %157 = zext i1 %156 to i32
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i32, i32* %40
  %161 = getelementptr [32 x i32], [32 x i32]* %1, i32 0, i32 %160
  %162 = load i32, i32* %161
  store i32 %162, i32* %34
  %163 = load i32, i32* %34
  call void @putint(i32 %163)
  %164 = load i32, i32* %40
  %165 = add i32 %164, 1
  store i32 %165, i32* %40
  br label %154

166:                                              ; preds = %154
  ret i32 0
}
