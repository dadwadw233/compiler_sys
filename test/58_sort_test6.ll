; ModuleID = 'sysyc'
source_filename = "./58_sort_test6.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @counting_sort(i64* %0, i64* %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64*
  store i64* %1, i64** %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = alloca [10 x i64]
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  store i64 0, i64* %9
  store i64 0, i64* %7
  store i64 0, i64* %8
  br label %10

10:                                               ; preds = %15, %entry
  %11 = load i64, i64* %9
  %12 = icmp slt i64 %11, 10
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* %9
  %17 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %16
  store i64 0, i64* %17
  %18 = load i64, i64* %9
  %19 = add i64 %18, 1
  store i64 %19, i64* %9
  br label %10

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i64, i64* %7
  %23 = load i64, i64* %5
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load i64*, i64** %3
  %29 = load i64, i64* %7
  %30 = getelementptr i64, i64* %28, i64 %29
  %31 = load i64, i64* %30
  %32 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %31
  %33 = load i64*, i64** %3
  %34 = load i64, i64* %7
  %35 = getelementptr i64, i64* %33, i64 %34
  %36 = load i64, i64* %35
  %37 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %36
  %38 = load i64, i64* %37
  %39 = add i64 %38, 1
  store i64 %39, i64* %32
  %40 = load i64, i64* %7
  %41 = add i64 %40, 1
  store i64 %41, i64* %7
  br label %21

42:                                               ; preds = %21
  store i64 1, i64* %9
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i64, i64* %9
  %45 = icmp slt i64 %44, 10
  %46 = zext i1 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i64, i64* %9
  %50 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %49
  %51 = load i64, i64* %9
  %52 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %51
  %53 = load i64, i64* %52
  %54 = load i64, i64* %9
  %55 = sub i64 %54, 1
  %56 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %55
  %57 = load i64, i64* %56
  %58 = add i64 %53, %57
  store i64 %58, i64* %50
  %59 = load i64, i64* %9
  %60 = add i64 %59, 1
  store i64 %60, i64* %9
  br label %43

61:                                               ; preds = %43
  %62 = load i64, i64* %5
  store i64 %62, i64* %8
  br label %63

63:                                               ; preds = %68, %61
  %64 = load i64, i64* %8
  %65 = icmp sgt i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %63
  %69 = load i64*, i64** %3
  %70 = load i64, i64* %8
  %71 = sub i64 %70, 1
  %72 = getelementptr i64, i64* %69, i64 %71
  %73 = load i64, i64* %72
  %74 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %73
  %75 = load i64*, i64** %3
  %76 = load i64, i64* %8
  %77 = sub i64 %76, 1
  %78 = getelementptr i64, i64* %75, i64 %77
  %79 = load i64, i64* %78
  %80 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %79
  %81 = load i64, i64* %80
  %82 = sub i64 %81, 1
  store i64 %82, i64* %74
  %83 = load i64*, i64** %4
  %84 = load i64*, i64** %3
  %85 = load i64, i64* %8
  %86 = sub i64 %85, 1
  %87 = getelementptr i64, i64* %84, i64 %86
  %88 = load i64, i64* %87
  %89 = getelementptr [10 x i64], [10 x i64]* %6, i64 0, i64 %88
  %90 = load i64, i64* %89
  %91 = getelementptr i64, i64* %83, i64 %90
  %92 = load i64*, i64** %3
  %93 = load i64, i64* %8
  %94 = sub i64 %93, 1
  %95 = getelementptr i64, i64* %92, i64 %94
  %96 = load i64, i64* %95
  store i64 %96, i64* %91
  %97 = load i64, i64* %8
  %98 = sub i64 %97, 1
  store i64 %98, i64* %8
  br label %63

99:                                               ; preds = %63
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
  %12 = alloca [10 x i64]
  %13 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %14 = getelementptr [10 x i64], [10 x i64]* %12, i64 0, i64 0
  %15 = load i64, i64* @0
  %16 = call i64 @counting_sort(i64* %13, i64* %14, i64 %15)
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
  %26 = getelementptr [10 x i64], [10 x i64]* %12, i64 0, i64 %25
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
