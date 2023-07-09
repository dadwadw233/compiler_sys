; ModuleID = 'sysyc'
source_filename = "./88_array_concat.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @concat(i64* %0, i64* %1, i64* %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64*
  store i64* %1, i64** %4
  %5 = alloca i64*
  store i64* %2, i64** %5
  %6 = alloca i64
  store i64 0, i64* %6
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i64, i64* %6
  %9 = icmp slt i64 %8, 3
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i64*, i64** %5
  %14 = load i64, i64* %6
  %15 = getelementptr i64, i64* %13, i64 %14
  %16 = load i64*, i64** %3
  %17 = load i64, i64* %6
  %18 = getelementptr i64, i64* %16, i64 %17
  %19 = load i64, i64* %18
  store i64 %19, i64* %15
  %20 = load i64, i64* %6
  %21 = add i64 %20, 1
  store i64 %21, i64* %6
  br label %7

22:                                               ; preds = %7
  %23 = alloca i64
  store i64 0, i64* %23
  br label %24

24:                                               ; preds = %29, %22
  %25 = load i64, i64* %23
  %26 = icmp slt i64 %25, 3
  %27 = zext i1 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load i64*, i64** %5
  %31 = load i64, i64* %6
  %32 = getelementptr i64, i64* %30, i64 %31
  %33 = load i64*, i64** %4
  %34 = load i64, i64* %23
  %35 = getelementptr i64, i64* %33, i64 %34
  %36 = load i64, i64* %35
  store i64 %36, i64* %32
  %37 = load i64, i64* %6
  %38 = add i64 %37, 1
  store i64 %38, i64* %6
  %39 = load i64, i64* %23
  %40 = add i64 %39, 1
  store i64 %40, i64* %23
  br label %24

41:                                               ; preds = %24
  ret i64 0
}

define i64 @main() {
entry:
  %0 = alloca [3 x i64]
  %1 = alloca [3 x i64]
  %2 = alloca [3 x i64]
  %3 = alloca [3 x i64]
  %4 = alloca [3 x i64]
  %5 = alloca [3 x i64]
  %6 = alloca [6 x i64]
  %7 = alloca [3 x i64]
  %8 = alloca [3 x i64]
  %9 = alloca i64
  store i64 0, i64* %9
  br label %10

10:                                               ; preds = %15, %entry
  %11 = load i64, i64* %9
  %12 = icmp slt i64 %11, 3
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i64, i64* %9
  %17 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 %16
  %18 = load i64, i64* %9
  store i64 %18, i64* %17
  %19 = load i64, i64* %9
  %20 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 %19
  %21 = load i64, i64* %9
  store i64 %21, i64* %20
  %22 = load i64, i64* %9
  %23 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 %22
  %24 = load i64, i64* %9
  store i64 %24, i64* %23
  %25 = load i64, i64* %9
  %26 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 %25
  %27 = load i64, i64* %9
  store i64 %27, i64* %26
  %28 = load i64, i64* %9
  %29 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 %28
  %30 = load i64, i64* %9
  store i64 %30, i64* %29
  %31 = load i64, i64* %9
  %32 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 %31
  %33 = load i64, i64* %9
  store i64 %33, i64* %32
  %34 = load i64, i64* %9
  %35 = add i64 %34, 1
  store i64 %35, i64* %9
  br label %10

36:                                               ; preds = %10
  %37 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  %38 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %39 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %40 = call i64 @concat(i64* %37, i64* %38, i64* %39)
  store i64 %40, i64* %9
  %41 = alloca i64
  br label %42

42:                                               ; preds = %47, %36
  %43 = load i64, i64* %9
  %44 = icmp slt i64 %43, 6
  %45 = zext i1 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i64, i64* %9
  %49 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 %48
  %50 = load i64, i64* %49
  store i64 %50, i64* %41
  %51 = load i64, i64* %41
  call void @putint(i64 %51)
  %52 = load i64, i64* %9
  %53 = add i64 %52, 1
  store i64 %53, i64* %9
  br label %42

54:                                               ; preds = %42
  store i64 10, i64* %41
  %55 = load i64, i64* %41
  call void @putch(i64 %55)
  ret i64 0
}
