; ModuleID = 'sysyc'
source_filename = "./69_last_word_length.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @lengthOfLastWord(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = load i64, i64* %3
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %entry
  ret i64 0

9:                                                ; preds = %entry
  %10 = alloca i64
  %11 = load i64, i64* %3
  %12 = sub i64 %11, 1
  store i64 %12, i64* %10
  br label %13

13:                                               ; preds = %26, %9
  %14 = load i64, i64* %10
  %15 = icmp sgt i64 %14, -1
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  %18 = load i64*, i64** %2
  %19 = load i64, i64* %10
  %20 = getelementptr i64, i64* %18, i64 %19
  %21 = load i64, i64* %20
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  %25 = and i1 %17, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i64, i64* %10
  %28 = sub i64 %27, 1
  store i64 %28, i64* %10
  br label %13

29:                                               ; preds = %13
  %30 = load i64, i64* %10
  %31 = icmp eq i64 %30, -1
  %32 = zext i1 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  ret i64 0

35:                                               ; preds = %29
  %36 = alloca i64
  %37 = load i64, i64* %10
  store i64 %37, i64* %36
  br label %38

38:                                               ; preds = %65, %35
  %39 = load i64, i64* %36
  %40 = icmp sgt i64 %39, -1
  %41 = zext i1 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i64*, i64** %2
  %45 = load i64, i64* %36
  %46 = getelementptr i64, i64* %44, i64 %45
  %47 = load i64, i64* %46
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %65

51:                                               ; preds = %38
  %52 = load i64, i64* %10
  %53 = load i64, i64* %36
  %54 = sub i64 %52, %53
  ret i64 %54

55:                                               ; preds = %43
  %56 = load i64, i64* %3
  %57 = load i64, i64* %36
  %58 = sub i64 %56, %57
  %59 = sub i64 %58, 1
  %60 = load i64, i64* %3
  %61 = sub i64 %60, 1
  %62 = load i64, i64* %10
  %63 = sub i64 %61, %62
  %64 = sub i64 %59, %63
  ret i64 %64

65:                                               ; preds = %43
  %66 = load i64, i64* %36
  %67 = sub i64 %66, 1
  store i64 %67, i64* %36
  br label %38
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca [10 x i64]
  %2 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  store i64 -4, i64* %2
  %3 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 1
  store i64 3, i64* %3
  %4 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 2
  store i64 9, i64* %4
  %5 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 3
  store i64 -2, i64* %5
  %6 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 4
  store i64 0, i64* %6
  %7 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 5
  store i64 1, i64* %7
  %8 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 6
  store i64 -6, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 7
  store i64 5, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 8
  store i64 7, i64* %10
  %11 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 9
  store i64 8, i64* %11
  store i64 10, i64* %0
  %12 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %13 = load i64, i64* %0
  %14 = call i64 @lengthOfLastWord(i64* %12, i64 %13)
  store i64 %14, i64* %0
  %15 = load i64, i64* %0
  ret i64 %15
}
