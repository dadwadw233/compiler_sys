; ModuleID = 'sysyc'
source_filename = "./93_matrix_sub.sy"
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

define i32 @sub(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) {
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

19:                                               ; preds = %24, %entry
  %20 = load i32, i32* %18
  %21 = icmp slt i32 %20, 3
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %19
  %25 = load i32*, i32** %15
  %26 = load i32, i32* %18
  %27 = getelementptr i32, i32* %25, i32 %26
  %28 = load i32*, i32** %9
  %29 = load i32, i32* %18
  %30 = getelementptr i32, i32* %28, i32 %29
  %31 = load i32, i32* %30
  %32 = load i32*, i32** %12
  %33 = load i32, i32* %18
  %34 = getelementptr i32, i32* %32, i32 %33
  %35 = load i32, i32* %34
  %36 = sub i32 %31, %35
  store i32 %36, i32* %27
  %37 = load i32*, i32** %16
  %38 = load i32, i32* %18
  %39 = getelementptr i32, i32* %37, i32 %38
  %40 = load i32*, i32** %10
  %41 = load i32, i32* %18
  %42 = getelementptr i32, i32* %40, i32 %41
  %43 = load i32, i32* %42
  %44 = load i32*, i32** %13
  %45 = load i32, i32* %18
  %46 = getelementptr i32, i32* %44, i32 %45
  %47 = load i32, i32* %46
  %48 = sub i32 %43, %47
  store i32 %48, i32* %39
  %49 = load i32*, i32** %17
  %50 = load i32, i32* %18
  %51 = getelementptr i32, i32* %49, i32 %50
  %52 = load i32*, i32** %11
  %53 = load i32, i32* %18
  %54 = getelementptr i32, i32* %52, i32 %53
  %55 = load i32, i32* %54
  %56 = load i32*, i32** %14
  %57 = load i32, i32* %18
  %58 = getelementptr i32, i32* %56, i32 %57
  %59 = load i32, i32* %58
  %60 = sub i32 %55, %59
  store i32 %60, i32* %51
  %61 = load i32, i32* %18
  %62 = add i32 %61, 1
  store i32 %62, i32* %18
  br label %19

63:                                               ; preds = %19
  ret i32 0
}

define i32 @main() {
entry:
  store i32 3, i32* @0
  store i32 3, i32* @1
  store i32 3, i32* @2
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

10:                                               ; preds = %15, %entry
  %11 = load i32, i32* %9
  %12 = icmp slt i32 %11, 3
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i32, i32* %9
  %17 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 %16
  %18 = load i32, i32* %9
  store i32 %18, i32* %17
  %19 = load i32, i32* %9
  %20 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 %19
  %21 = load i32, i32* %9
  store i32 %21, i32* %20
  %22 = load i32, i32* %9
  %23 = getelementptr [3 x i32], [3 x i32]* %2, i32 0, i32 %22
  %24 = load i32, i32* %9
  store i32 %24, i32* %23
  %25 = load i32, i32* %9
  %26 = getelementptr [3 x i32], [3 x i32]* %3, i32 0, i32 %25
  %27 = load i32, i32* %9
  store i32 %27, i32* %26
  %28 = load i32, i32* %9
  %29 = getelementptr [3 x i32], [3 x i32]* %4, i32 0, i32 %28
  %30 = load i32, i32* %9
  store i32 %30, i32* %29
  %31 = load i32, i32* %9
  %32 = getelementptr [3 x i32], [3 x i32]* %5, i32 0, i32 %31
  %33 = load i32, i32* %9
  store i32 %33, i32* %32
  %34 = load i32, i32* %9
  %35 = add i32 %34, 1
  store i32 %35, i32* %9
  br label %10

36:                                               ; preds = %10
  %37 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 0
  %38 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 0
  %39 = getelementptr [3 x i32], [3 x i32]* %2, i32 0, i32 0
  %40 = getelementptr [3 x i32], [3 x i32]* %3, i32 0, i32 0
  %41 = getelementptr [3 x i32], [3 x i32]* %4, i32 0, i32 0
  %42 = getelementptr [3 x i32], [3 x i32]* %5, i32 0, i32 0
  %43 = getelementptr [6 x i32], [6 x i32]* %6, i32 0, i32 0
  %44 = getelementptr [3 x i32], [3 x i32]* %7, i32 0, i32 0
  %45 = getelementptr [3 x i32], [3 x i32]* %8, i32 0, i32 0
  %46 = call i32 @sub(i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45)
  store i32 %46, i32* %9
  %47 = alloca i32
  br label %48

48:                                               ; preds = %53, %36
  %49 = load i32, i32* %9
  %50 = icmp slt i32 %49, 3
  %51 = zext i1 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %9
  %55 = getelementptr [6 x i32], [6 x i32]* %6, i32 0, i32 %54
  %56 = load i32, i32* %55
  store i32 %56, i32* %47
  %57 = load i32, i32* %47
  call void @putint(i32 %57)
  %58 = load i32, i32* %9
  %59 = add i32 %58, 1
  store i32 %59, i32* %9
  br label %48

60:                                               ; preds = %48
  store i32 10, i32* %47
  store i32 0, i32* %9
  %61 = load i32, i32* %47
  call void @putch(i32 %61)
  br label %62

62:                                               ; preds = %67, %60
  %63 = load i32, i32* %9
  %64 = icmp slt i32 %63, 3
  %65 = zext i1 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i32, i32* %9
  %69 = getelementptr [3 x i32], [3 x i32]* %7, i32 0, i32 %68
  %70 = load i32, i32* %69
  store i32 %70, i32* %47
  %71 = load i32, i32* %47
  call void @putint(i32 %71)
  %72 = load i32, i32* %9
  %73 = add i32 %72, 1
  store i32 %73, i32* %9
  br label %62

74:                                               ; preds = %62
  store i32 10, i32* %47
  store i32 0, i32* %9
  %75 = load i32, i32* %47
  call void @putch(i32 %75)
  br label %76

76:                                               ; preds = %81, %74
  %77 = load i32, i32* %9
  %78 = icmp slt i32 %77, 3
  %79 = zext i1 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32, i32* %9
  %83 = getelementptr [3 x i32], [3 x i32]* %8, i32 0, i32 %82
  %84 = load i32, i32* %83
  store i32 %84, i32* %47
  %85 = load i32, i32* %47
  call void @putint(i32 %85)
  %86 = load i32, i32* %9
  %87 = add i32 %86, 1
  store i32 %87, i32* %9
  br label %76

88:                                               ; preds = %76
  store i32 10, i32* %47
  %89 = load i32, i32* %47
  call void @putch(i32 %89)
  ret i32 0
}
