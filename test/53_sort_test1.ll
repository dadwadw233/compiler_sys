; ModuleID = 'sysyc'
source_filename = "./53_sort_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @bubblesort(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  %3 = alloca i64
  store i64 0, i64* %2
  br label %4

4:                                                ; preds = %35, %entry
  %5 = load i64, i64* %2
  %6 = load i64, i64* @0
  %7 = sub i64 %6, 1
  %8 = icmp slt i64 %5, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  store i64 0, i64* %3
  br label %13

12:                                               ; preds = %4
  ret i64 0

13:                                               ; preds = %57, %11
  %14 = load i64, i64* %3
  %15 = load i64, i64* @0
  %16 = load i64, i64* %2
  %17 = sub i64 %15, %16
  %18 = sub i64 %17, 1
  %19 = icmp slt i64 %14, %18
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %13
  %23 = load i64*, i64** %1
  %24 = load i64, i64* %3
  %25 = getelementptr i64, i64* %23, i64 %24
  %26 = load i64, i64* %25
  %27 = load i64*, i64** %1
  %28 = load i64, i64* %3
  %29 = add i64 %28, 1
  %30 = getelementptr i64, i64* %27, i64 %29
  %31 = load i64, i64* %30
  %32 = icmp sgt i64 %26, %31
  %33 = zext i1 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %57

35:                                               ; preds = %13
  %36 = load i64, i64* %2
  %37 = add i64 %36, 1
  store i64 %37, i64* %2
  br label %4

38:                                               ; preds = %22
  %39 = alloca i64
  %40 = load i64*, i64** %1
  %41 = load i64, i64* %3
  %42 = add i64 %41, 1
  %43 = getelementptr i64, i64* %40, i64 %42
  %44 = load i64, i64* %43
  store i64 %44, i64* %39
  %45 = load i64*, i64** %1
  %46 = load i64, i64* %3
  %47 = add i64 %46, 1
  %48 = getelementptr i64, i64* %45, i64 %47
  %49 = load i64*, i64** %1
  %50 = load i64, i64* %3
  %51 = getelementptr i64, i64* %49, i64 %50
  %52 = load i64, i64* %51
  store i64 %52, i64* %48
  %53 = load i64*, i64** %1
  %54 = load i64, i64* %3
  %55 = getelementptr i64, i64* %53, i64 %54
  %56 = load i64, i64* %39
  store i64 %56, i64* %55
  br label %57

57:                                               ; preds = %38, %22
  %58 = load i64, i64* %3
  %59 = add i64 %58, 1
  store i64 %59, i64* %3
  br label %13
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
  %12 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %13 = call i64 @bubblesort(i64* %12)
  store i64 %13, i64* %11
  br label %14

14:                                               ; preds = %20, %entry
  %15 = load i64, i64* %11
  %16 = load i64, i64* @0
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = alloca i64
  %22 = load i64, i64* %11
  %23 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 %22
  %24 = load i64, i64* %23
  store i64 %24, i64* %21
  %25 = load i64, i64* %21
  call void @putint(i64 %25)
  store i64 10, i64* %21
  %26 = load i64, i64* %21
  call void @putch(i64 %26)
  %27 = load i64, i64* %11
  %28 = add i64 %27, 1
  store i64 %28, i64* %11
  br label %14

29:                                               ; preds = %14
  ret i64 0
}
