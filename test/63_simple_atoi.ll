; ModuleID = 'sysyc'
source_filename = "./63_simple_atoi.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @atoi_(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = alloca i64
  store i64 1, i64* %3
  %4 = alloca i64
  store i64 0, i64* %4
  br label %5

5:                                                ; preds = %13, %entry
  %6 = load i64*, i64** %1
  %7 = load i64, i64* %4
  %8 = getelementptr i64, i64* %6, i64 %7
  %9 = load i64, i64* %8
  %10 = icmp eq i64 %9, 32
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i64, i64* %4
  %15 = add i64 %14, 1
  store i64 %15, i64* %4
  br label %5

16:                                               ; preds = %5
  %17 = load i64*, i64** %1
  %18 = load i64, i64* %4
  %19 = getelementptr i64, i64* %17, i64 %18
  %20 = load i64, i64* %19
  %21 = icmp eq i64 %20, 43
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  %24 = load i64*, i64** %1
  %25 = load i64, i64* %4
  %26 = getelementptr i64, i64* %24, i64 %25
  %27 = load i64, i64* %26
  %28 = icmp eq i64 %27, 45
  %29 = zext i1 %28 to i64
  %30 = icmp ne i64 %29, 0
  %31 = or i1 %23, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %16
  %33 = load i64*, i64** %1
  %34 = load i64, i64* %4
  %35 = getelementptr i64, i64* %33, i64 %34
  %36 = load i64, i64* %35
  %37 = icmp eq i64 %36, 45
  %38 = zext i1 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %57, label %58

40:                                               ; preds = %16
  %41 = load i64*, i64** %1
  %42 = load i64, i64* %4
  %43 = getelementptr i64, i64* %41, i64 %42
  %44 = load i64, i64* %43
  %45 = icmp slt i64 %44, 48
  %46 = zext i1 %45 to i64
  %47 = icmp ne i64 %46, 0
  %48 = load i64*, i64** %1
  %49 = load i64, i64* %4
  %50 = getelementptr i64, i64* %48, i64 %49
  %51 = load i64, i64* %50
  %52 = icmp sgt i64 %51, 57
  %53 = zext i1 %52 to i64
  %54 = icmp ne i64 %53, 0
  %55 = or i1 %47, %54
  br i1 %55, label %61, label %63

56:                                               ; preds = %63, %58
  br label %64

57:                                               ; preds = %32
  store i64 -1, i64* %3
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i64, i64* %4
  %60 = add i64 %59, 1
  store i64 %60, i64* %4
  br label %56

61:                                               ; preds = %40
  store i64 2147483647, i64* %2
  %62 = load i64, i64* %2
  ret i64 %62

63:                                               ; preds = %40
  br label %56

64:                                               ; preds = %88, %56
  %65 = load i64*, i64** %1
  %66 = load i64, i64* %4
  %67 = getelementptr i64, i64* %65, i64 %66
  %68 = load i64, i64* %67
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = icmp ne i64 %70, 0
  %72 = load i64*, i64** %1
  %73 = load i64, i64* %4
  %74 = getelementptr i64, i64* %72, i64 %73
  %75 = load i64, i64* %74
  %76 = icmp sgt i64 %75, 47
  %77 = zext i1 %76 to i64
  %78 = icmp ne i64 %77, 0
  %79 = and i1 %71, %78
  %80 = load i64*, i64** %1
  %81 = load i64, i64* %4
  %82 = getelementptr i64, i64* %80, i64 %81
  %83 = load i64, i64* %82
  %84 = icmp slt i64 %83, 58
  %85 = zext i1 %84 to i64
  %86 = icmp ne i64 %85, 0
  %87 = and i1 %79, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %64
  %89 = load i64, i64* %2
  %90 = mul i64 %89, 10
  %91 = load i64*, i64** %1
  %92 = load i64, i64* %4
  %93 = getelementptr i64, i64* %91, i64 %92
  %94 = load i64, i64* %93
  %95 = add i64 %90, %94
  %96 = sub i64 %95, 48
  store i64 %96, i64* %2
  %97 = load i64, i64* %4
  %98 = add i64 %97, 1
  store i64 %98, i64* %4
  br label %64

99:                                               ; preds = %64
  %100 = load i64, i64* %2
  %101 = load i64, i64* %3
  %102 = mul i64 %100, %101
  ret i64 %102
}

define i64 @main() {
entry:
  %0 = alloca [500 x i64]
  %1 = alloca i64
  store i64 0, i64* %1
  %2 = alloca i64
  store i64 0, i64* %2
  br label %3

3:                                                ; preds = %8, %entry
  %4 = load i64, i64* %1
  %5 = icmp ne i64 %4, 10
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = call i64 @getch()
  store i64 %9, i64* %1
  %10 = load i64, i64* %2
  %11 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 %10
  %12 = load i64, i64* %1
  store i64 %12, i64* %11
  %13 = load i64, i64* %2
  %14 = add i64 %13, 1
  store i64 %14, i64* %2
  br label %3

15:                                               ; preds = %3
  %16 = load i64, i64* %2
  %17 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 %16
  store i64 0, i64* %17
  %18 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 0
  %19 = call i64 @atoi_(i64* %18)
  store i64 %19, i64* %2
  %20 = load i64, i64* %2
  call void @putint(i64 %20)
  ret i64 0
}
