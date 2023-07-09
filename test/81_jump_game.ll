; ModuleID = 'sysyc'
source_filename = "./81_jump_game.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @canJump(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = load i32, i32* %3
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %entry
  ret i32 1

9:                                                ; preds = %entry
  %10 = load i32*, i32** %2
  %11 = getelementptr i32, i32* %10, i32 0
  %12 = load i32, i32* %11
  %13 = load i32, i32* %3
  %14 = sub i32 %13, 2
  %15 = icmp sgt i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  ret i32 1

19:                                               ; preds = %9
  %20 = alloca [10 x i32]
  %21 = alloca i32
  store i32 0, i32* %21
  br label %22

22:                                               ; preds = %29, %19
  %23 = load i32, i32* %21
  %24 = load i32, i32* %3
  %25 = sub i32 %24, 1
  %26 = icmp slt i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* %21
  %31 = getelementptr [10 x i32], [10 x i32]* %20, i32 0, i32 %30
  store i32 0, i32* %31
  %32 = load i32, i32* %21
  %33 = add i32 %32, 1
  store i32 %33, i32* %21
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* %3
  %36 = sub i32 %35, 1
  %37 = getelementptr [10 x i32], [10 x i32]* %20, i32 0, i32 %36
  store i32 1, i32* %37
  %38 = load i32, i32* %3
  %39 = sub i32 %38, 2
  store i32 %39, i32* %21
  br label %40

40:                                               ; preds = %86, %34
  %41 = load i32, i32* %21
  %42 = icmp sgt i32 %41, -1
  %43 = zext i1 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = alloca i32
  %47 = load i32*, i32** %2
  %48 = load i32, i32* %21
  %49 = getelementptr i32, i32* %47, i32 %48
  %50 = load i32, i32* %49
  %51 = load i32, i32* %3
  %52 = sub i32 %51, 1
  %53 = load i32, i32* %21
  %54 = sub i32 %52, %53
  %55 = icmp slt i32 %50, %54
  %56 = zext i1 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %66

58:                                               ; preds = %40
  %59 = getelementptr [10 x i32], [10 x i32]* %20, i32 0, i32 0
  %60 = load i32, i32* %59
  ret i32 %60

61:                                               ; preds = %45
  %62 = load i32*, i32** %2
  %63 = load i32, i32* %21
  %64 = getelementptr i32, i32* %62, i32 %63
  %65 = load i32, i32* %64
  store i32 %65, i32* %46
  br label %71

66:                                               ; preds = %45
  %67 = load i32, i32* %3
  %68 = sub i32 %67, 1
  %69 = load i32, i32* %21
  %70 = sub i32 %68, %69
  store i32 %70, i32* %46
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %92, %71
  %73 = load i32, i32* %46
  %74 = icmp sgt i32 %73, -1
  %75 = zext i1 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %21
  %79 = load i32, i32* %46
  %80 = add i32 %78, %79
  %81 = getelementptr [10 x i32], [10 x i32]* %20, i32 0, i32 %80
  %82 = load i32, i32* %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %92

86:                                               ; preds = %72
  %87 = load i32, i32* %21
  %88 = sub i32 %87, 1
  store i32 %88, i32* %21
  br label %40

89:                                               ; preds = %77
  %90 = load i32, i32* %21
  %91 = getelementptr [10 x i32], [10 x i32]* %20, i32 0, i32 %90
  store i32 1, i32* %91
  br label %92

92:                                               ; preds = %89, %77
  %93 = load i32, i32* %46
  %94 = sub i32 %93, 1
  store i32 %94, i32* %46
  br label %72
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca [10 x i32]
  %2 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  store i32 3, i32* %2
  %3 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 1
  store i32 3, i32* %3
  %4 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 2
  store i32 9, i32* %4
  %5 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 3
  store i32 0, i32* %5
  %6 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 4
  store i32 0, i32* %6
  %7 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 5
  store i32 1, i32* %7
  %8 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 6
  store i32 1, i32* %8
  %9 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 7
  store i32 5, i32* %9
  %10 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 8
  store i32 7, i32* %10
  %11 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 9
  store i32 8, i32* %11
  store i32 10, i32* %0
  %12 = getelementptr [10 x i32], [10 x i32]* %1, i32 0, i32 0
  %13 = load i32, i32* %0
  %14 = call i32 @canJump(i32* %12, i32 %13)
  store i32 %14, i32* %0
  %15 = load i32, i32* %0
  ret i32 %15
}
