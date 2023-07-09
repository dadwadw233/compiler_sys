; ModuleID = 'sysyc'
source_filename = "./75_max_container.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @maxArea(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  store i64 0, i64* %4
  %6 = load i64, i64* %3
  %7 = sub i64 %6, 1
  store i64 %7, i64* %5
  %8 = alloca i64
  store i64 -1, i64* %8
  br label %9

9:                                                ; preds = %74, %entry
  %10 = load i64, i64* %4
  %11 = load i64, i64* %5
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = alloca i64
  %17 = load i64*, i64** %2
  %18 = load i64, i64* %4
  %19 = getelementptr i64, i64* %17, i64 %18
  %20 = load i64, i64* %19
  %21 = load i64*, i64** %2
  %22 = load i64, i64* %5
  %23 = getelementptr i64, i64* %21, i64 %22
  %24 = load i64, i64* %23
  %25 = icmp slt i64 %20, %24
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %39

28:                                               ; preds = %9
  %29 = load i64, i64* %8
  ret i64 %29

30:                                               ; preds = %15
  %31 = load i64, i64* %5
  %32 = load i64, i64* %4
  %33 = sub i64 %31, %32
  %34 = load i64*, i64** %2
  %35 = load i64, i64* %4
  %36 = getelementptr i64, i64* %34, i64 %35
  %37 = load i64, i64* %36
  %38 = mul i64 %33, %37
  store i64 %38, i64* %16
  br label %48

39:                                               ; preds = %15
  %40 = load i64, i64* %5
  %41 = load i64, i64* %4
  %42 = sub i64 %40, %41
  %43 = load i64*, i64** %2
  %44 = load i64, i64* %5
  %45 = getelementptr i64, i64* %43, i64 %44
  %46 = load i64, i64* %45
  %47 = mul i64 %42, %46
  store i64 %47, i64* %16
  br label %48

48:                                               ; preds = %39, %30
  %49 = load i64, i64* %16
  %50 = load i64, i64* %8
  %51 = icmp sgt i64 %49, %50
  %52 = zext i1 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* %16
  store i64 %55, i64* %8
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i64*, i64** %2
  %58 = load i64, i64* %4
  %59 = getelementptr i64, i64* %57, i64 %58
  %60 = load i64, i64* %59
  %61 = load i64*, i64** %2
  %62 = load i64, i64* %5
  %63 = getelementptr i64, i64* %61, i64 %62
  %64 = load i64, i64* %63
  %65 = icmp sgt i64 %60, %64
  %66 = zext i1 %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i64, i64* %5
  %70 = sub i64 %69, 1
  store i64 %70, i64* %5
  br label %74

71:                                               ; preds = %56
  %72 = load i64, i64* %4
  %73 = add i64 %72, 1
  store i64 %73, i64* %4
  br label %74

74:                                               ; preds = %71, %68
  br label %9
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
  %14 = call i64 @maxArea(i64* %12, i64 %13)
  store i64 %14, i64* %0
  %15 = load i64, i64* %0
  ret i64 %15
}
