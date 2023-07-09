; ModuleID = 'sysyc'
source_filename = "./81_jump_game.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @canJump(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = load i64, i64* %3
  %5 = icmp eq i64 %4, 1
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %entry
  ret i64 1

9:                                                ; preds = %entry
  %10 = load i64*, i64** %2
  %11 = getelementptr i64, i64* %10, i64 0
  %12 = load i64, i64* %11
  %13 = load i64, i64* %3
  %14 = sub i64 %13, 2
  %15 = icmp sgt i64 %12, %14
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  ret i64 1

19:                                               ; preds = %9
  %20 = alloca [10 x i64]
  %21 = alloca i64
  store i64 0, i64* %21
  br label %22

22:                                               ; preds = %29, %19
  %23 = load i64, i64* %21
  %24 = load i64, i64* %3
  %25 = sub i64 %24, 1
  %26 = icmp slt i64 %23, %25
  %27 = zext i1 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i64, i64* %21
  %31 = getelementptr [10 x i64], [10 x i64]* %20, i64 0, i64 %30
  store i64 0, i64* %31
  %32 = load i64, i64* %21
  %33 = add i64 %32, 1
  store i64 %33, i64* %21
  br label %22

34:                                               ; preds = %22
  %35 = load i64, i64* %3
  %36 = sub i64 %35, 1
  %37 = getelementptr [10 x i64], [10 x i64]* %20, i64 0, i64 %36
  store i64 1, i64* %37
  %38 = load i64, i64* %3
  %39 = sub i64 %38, 2
  store i64 %39, i64* %21
  br label %40

40:                                               ; preds = %86, %34
  %41 = load i64, i64* %21
  %42 = icmp sgt i64 %41, -1
  %43 = zext i1 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = alloca i64
  %47 = load i64*, i64** %2
  %48 = load i64, i64* %21
  %49 = getelementptr i64, i64* %47, i64 %48
  %50 = load i64, i64* %49
  %51 = load i64, i64* %3
  %52 = sub i64 %51, 1
  %53 = load i64, i64* %21
  %54 = sub i64 %52, %53
  %55 = icmp slt i64 %50, %54
  %56 = zext i1 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %66

58:                                               ; preds = %40
  %59 = getelementptr [10 x i64], [10 x i64]* %20, i64 0, i64 0
  %60 = load i64, i64* %59
  ret i64 %60

61:                                               ; preds = %45
  %62 = load i64*, i64** %2
  %63 = load i64, i64* %21
  %64 = getelementptr i64, i64* %62, i64 %63
  %65 = load i64, i64* %64
  store i64 %65, i64* %46
  br label %71

66:                                               ; preds = %45
  %67 = load i64, i64* %3
  %68 = sub i64 %67, 1
  %69 = load i64, i64* %21
  %70 = sub i64 %68, %69
  store i64 %70, i64* %46
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %92, %71
  %73 = load i64, i64* %46
  %74 = icmp sgt i64 %73, -1
  %75 = zext i1 %74 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i64, i64* %21
  %79 = load i64, i64* %46
  %80 = add i64 %78, %79
  %81 = getelementptr [10 x i64], [10 x i64]* %20, i64 0, i64 %80
  %82 = load i64, i64* %81
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %92

86:                                               ; preds = %72
  %87 = load i64, i64* %21
  %88 = sub i64 %87, 1
  store i64 %88, i64* %21
  br label %40

89:                                               ; preds = %77
  %90 = load i64, i64* %21
  %91 = getelementptr [10 x i64], [10 x i64]* %20, i64 0, i64 %90
  store i64 1, i64* %91
  br label %92

92:                                               ; preds = %89, %77
  %93 = load i64, i64* %46
  %94 = sub i64 %93, 1
  store i64 %94, i64* %46
  br label %72
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca [10 x i64]
  %2 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  store i64 3, i64* %2
  %3 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 1
  store i64 3, i64* %3
  %4 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 2
  store i64 9, i64* %4
  %5 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 3
  store i64 0, i64* %5
  %6 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 4
  store i64 0, i64* %6
  %7 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 5
  store i64 1, i64* %7
  %8 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 6
  store i64 1, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 7
  store i64 5, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 8
  store i64 7, i64* %10
  %11 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 9
  store i64 8, i64* %11
  store i64 10, i64* %0
  %12 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %13 = load i64, i64* %0
  %14 = call i64 @canJump(i64* %12, i64 %13)
  store i64 %14, i64* %0
  %15 = load i64, i64* %0
  ret i64 %15
}
