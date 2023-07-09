; ModuleID = 'sysyc'
source_filename = "./56_sort_test4.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @select_sort(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  store i64 0, i64* %4
  br label %7

7:                                                ; preds = %65, %entry
  %8 = load i64, i64* %4
  %9 = load i64, i64* %3
  %10 = sub i64 %9, 1
  %11 = icmp slt i64 %8, %10
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load i64, i64* %4
  store i64 %15, i64* %6
  %16 = load i64, i64* %4
  %17 = add i64 %16, 1
  store i64 %17, i64* %5
  br label %19

18:                                               ; preds = %7
  ret i64 0

19:                                               ; preds = %45, %14
  %20 = load i64, i64* %5
  %21 = load i64, i64* %3
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i64*, i64** %2
  %27 = load i64, i64* %6
  %28 = getelementptr i64, i64* %26, i64 %27
  %29 = load i64, i64* %28
  %30 = load i64*, i64** %2
  %31 = load i64, i64* %5
  %32 = getelementptr i64, i64* %30, i64 %31
  %33 = load i64, i64* %32
  %34 = icmp sgt i64 %29, %33
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %45

37:                                               ; preds = %19
  %38 = load i64, i64* %6
  %39 = load i64, i64* %4
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %65

43:                                               ; preds = %25
  %44 = load i64, i64* %5
  store i64 %44, i64* %6
  br label %45

45:                                               ; preds = %43, %25
  %46 = load i64, i64* %5
  %47 = add i64 %46, 1
  store i64 %47, i64* %5
  br label %19

48:                                               ; preds = %37
  %49 = alloca i64
  %50 = load i64*, i64** %2
  %51 = load i64, i64* %6
  %52 = getelementptr i64, i64* %50, i64 %51
  %53 = load i64, i64* %52
  store i64 %53, i64* %49
  %54 = load i64*, i64** %2
  %55 = load i64, i64* %6
  %56 = getelementptr i64, i64* %54, i64 %55
  %57 = load i64*, i64** %2
  %58 = load i64, i64* %4
  %59 = getelementptr i64, i64* %57, i64 %58
  %60 = load i64, i64* %59
  store i64 %60, i64* %56
  %61 = load i64*, i64** %2
  %62 = load i64, i64* %4
  %63 = getelementptr i64, i64* %61, i64 %62
  %64 = load i64, i64* %49
  store i64 %64, i64* %63
  br label %65

65:                                               ; preds = %48, %37
  %66 = load i64, i64* %4
  %67 = add i64 %66, 1
  store i64 %67, i64* %4
  br label %7
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
  %12 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %13 = load i64, i64* @0
  %14 = call i64 @select_sort(i64* %12, i64 %13)
  store i64 %14, i64* %11
  br label %15

15:                                               ; preds = %21, %entry
  %16 = load i64, i64* %11
  %17 = load i64, i64* @0
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = alloca i64
  %23 = load i64, i64* %11
  %24 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %23
  %25 = load i64, i64* %24
  store i64 %25, i64* %22
  %26 = load i64, i64* %22
  call void @putint(i64 %26)
  store i64 10, i64* %22
  %27 = load i64, i64* %22
  call void @putch(i64 %27)
  %28 = load i64, i64* %11
  %29 = add i64 %28, 1
  store i64 %29, i64* %11
  br label %15

30:                                               ; preds = %15
  ret i64 0
}
