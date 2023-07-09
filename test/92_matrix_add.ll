; ModuleID = 'sysyc'
source_filename = "./92_matrix_add.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer
@2 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @add(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) {
entry:
  %9 = alloca i32*
  store i32* %0, i32** %9
  %10 = alloca i32*
  store i32* %1, i32** %10
  %11 = alloca i32*
  store i32* %2, i32** %11
  %12 = alloca i32*
  store i32* %3, i32** %12
  %13 = alloca i32*
  store i32* %4, i32** %13
  %14 = alloca i32*
  store i32* %5, i32** %14
  %15 = alloca i32*
  store i32* %6, i32** %15
  %16 = alloca i32*
  store i32* %7, i32** %16
  %17 = alloca i32*
  store i32* %8, i32** %17
  %18 = alloca i32
  store i32 0, i32* %18
  br label %19

19:                                               ; preds = %25, %entry
  %20 = load i32, i32* %18
  %21 = load i32, i32* @0
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %19
  %26 = load i32*, i32** %15
  %27 = load i32, i32* %18
  %28 = getelementptr i32, i32* %26, i32 %27
  %29 = load i32*, i32** %9
  %30 = load i32, i32* %18
  %31 = getelementptr i32, i32* %29, i32 %30
  %32 = load i32, i32* %31
  %33 = load i32*, i32** %12
  %34 = load i32, i32* %18
  %35 = getelementptr i32, i32* %33, i32 %34
  %36 = load i32, i32* %35
  %37 = add i32 %32, %36
  store i32 %37, i32* %28
  %38 = load i32*, i32** %16
  %39 = load i32, i32* %18
  %40 = getelementptr i32, i32* %38, i32 %39
  %41 = load i32*, i32** %10
  %42 = load i32, i32* %18
  %43 = getelementptr i32, i32* %41, i32 %42
  %44 = load i32, i32* %43
  %45 = load i32*, i32** %13
  %46 = load i32, i32* %18
  %47 = getelementptr i32, i32* %45, i32 %46
  %48 = load i32, i32* %47
  %49 = add i32 %44, %48
  store i32 %49, i32* %40
  %50 = load i32*, i32** %17
  %51 = load i32, i32* %18
  %52 = getelementptr i32, i32* %50, i32 %51
  %53 = load i32*, i32** %11
  %54 = load i32, i32* %18
  %55 = getelementptr i32, i32* %53, i32 %54
  %56 = load i32, i32* %55
  %57 = load i32*, i32** %14
  %58 = load i32, i32* %18
  %59 = getelementptr i32, i32* %57, i32 %58
  %60 = load i32, i32* %59
  %61 = add i32 %56, %60
  store i32 %61, i32* %52
  %62 = load i32, i32* %18
  %63 = add i32 %62, 1
  store i32 %63, i32* %18
  br label %19

64:                                               ; preds = %19
  ret i32 0
}

define i32 @main() {
entry:
  store i32 3, i32* @2
  store i32 3, i32* @0
  store i32 3, i32* @1
  %0 = alloca [3 x i32]
  %1 = alloca [3 x i32]
  %2 = alloca [3 x i32]
  %3 = alloca [3 x i32]
  %4 = alloca [3 x i32]
  %5 = alloca [3 x i32]
  %6 = alloca [6 x i32]
  %7 = alloca [3 x i32]
  %8 = alloca [3 x i32]
  %9 = alloca i32
  store i32 0, i32* %9
  br label %10

10:                                               ; preds = %16, %entry
  %11 = load i32, i32* %9
  %12 = load i32, i32* @0
  %13 = icmp slt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load i32, i32* %9
  %18 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 %17
  %19 = load i32, i32* %9
  store i32 %19, i32* %18
  %20 = load i32, i32* %9
  %21 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 %20
  %22 = load i32, i32* %9
  store i32 %22, i32* %21
  %23 = load i32, i32* %9
  %24 = getelementptr [3 x i32], [3 x i32]* %2, i32 0, i32 %23
  %25 = load i32, i32* %9
  store i32 %25, i32* %24
  %26 = load i32, i32* %9
  %27 = getelementptr [3 x i32], [3 x i32]* %3, i32 0, i32 %26
  %28 = load i32, i32* %9
  store i32 %28, i32* %27
  %29 = load i32, i32* %9
  %30 = getelementptr [3 x i32], [3 x i32]* %4, i32 0, i32 %29
  %31 = load i32, i32* %9
  store i32 %31, i32* %30
  %32 = load i32, i32* %9
  %33 = getelementptr [3 x i32], [3 x i32]* %5, i32 0, i32 %32
  %34 = load i32, i32* %9
  store i32 %34, i32* %33
  %35 = load i32, i32* %9
  %36 = add i32 %35, 1
  store i32 %36, i32* %9
  br label %10

37:                                               ; preds = %10
  %38 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 0
  %39 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 0
  %40 = getelementptr [3 x i32], [3 x i32]* %2, i32 0, i32 0
  %41 = getelementptr [3 x i32], [3 x i32]* %3, i32 0, i32 0
  %42 = getelementptr [3 x i32], [3 x i32]* %4, i32 0, i32 0
  %43 = getelementptr [3 x i32], [3 x i32]* %5, i32 0, i32 0
  %44 = getelementptr [6 x i32], [6 x i32]* %6, i32 0, i32 0
  %45 = getelementptr [3 x i32], [3 x i32]* %7, i32 0, i32 0
  %46 = getelementptr [3 x i32], [3 x i32]* %8, i32 0, i32 0
  %47 = call i32 @add(i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46)
  store i32 %47, i32* %9
  %48 = alloca i32
  br label %49

49:                                               ; preds = %55, %37
  %50 = load i32, i32* %9
  %51 = load i32, i32* @2
  %52 = icmp slt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %9
  %57 = getelementptr [6 x i32], [6 x i32]* %6, i32 0, i32 %56
  %58 = load i32, i32* %57
  store i32 %58, i32* %48
  %59 = load i32, i32* %48
  call void @putint(i32 %59)
  %60 = load i32, i32* %9
  %61 = add i32 %60, 1
  store i32 %61, i32* %9
  br label %49

62:                                               ; preds = %49
  store i32 10, i32* %48
  %63 = load i32, i32* %48
  call void @putch(i32 %63)
  store i32 0, i32* %9
  br label %64

64:                                               ; preds = %70, %62
  %65 = load i32, i32* %9
  %66 = load i32, i32* @2
  %67 = icmp slt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32, i32* %9
  %72 = getelementptr [3 x i32], [3 x i32]* %7, i32 0, i32 %71
  %73 = load i32, i32* %72
  store i32 %73, i32* %48
  %74 = load i32, i32* %48
  call void @putint(i32 %74)
  %75 = load i32, i32* %9
  %76 = add i32 %75, 1
  store i32 %76, i32* %9
  br label %64

77:                                               ; preds = %64
  store i32 10, i32* %48
  %78 = load i32, i32* %48
  call void @putch(i32 %78)
  store i32 0, i32* %9
  br label %79

79:                                               ; preds = %85, %77
  %80 = load i32, i32* %9
  %81 = load i32, i32* @2
  %82 = icmp slt i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32, i32* %9
  %87 = getelementptr [3 x i32], [3 x i32]* %8, i32 0, i32 %86
  %88 = load i32, i32* %87
  store i32 %88, i32* %48
  %89 = load i32, i32* %48
  call void @putint(i32 %89)
  %90 = load i32, i32* %9
  %91 = add i32 %90, 1
  store i32 %91, i32* %9
  br label %79

92:                                               ; preds = %79
  store i32 10, i32* %48
  %93 = load i32, i32* %48
  call void @putch(i32 %93)
  ret i32 0
}
