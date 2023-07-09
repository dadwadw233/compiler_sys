; ModuleID = 'sysyc'
source_filename = "./57_sort_test5.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @swap(i64* %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = alloca i64
  %7 = load i64*, i64** %3
  %8 = load i64, i64* %4
  %9 = getelementptr i64, i64* %7, i64 %8
  %10 = load i64, i64* %9
  store i64 %10, i64* %6
  %11 = load i64*, i64** %3
  %12 = load i64, i64* %4
  %13 = getelementptr i64, i64* %11, i64 %12
  %14 = load i64*, i64** %3
  %15 = load i64, i64* %5
  %16 = getelementptr i64, i64* %14, i64 %15
  %17 = load i64, i64* %16
  store i64 %17, i64* %13
  %18 = load i64*, i64** %3
  %19 = load i64, i64* %5
  %20 = getelementptr i64, i64* %18, i64 %19
  %21 = load i64, i64* %6
  store i64 %21, i64* %20
  ret i64 0
}

define i64 @heap_ajust(i64* %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = alloca i64
  %7 = load i64, i64* %4
  store i64 %7, i64* %6
  %8 = alloca i64
  %9 = load i64, i64* %6
  %10 = mul i64 %9, 2
  %11 = add i64 %10, 1
  store i64 %11, i64* %8
  br label %12

12:                                               ; preds = %64, %entry
  %13 = load i64, i64* %8
  %14 = load i64, i64* %5
  %15 = add i64 %14, 1
  %16 = icmp slt i64 %13, %15
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = load i64, i64* %8
  %21 = load i64, i64* %5
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  %25 = load i64*, i64** %3
  %26 = load i64, i64* %8
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64, i64* %27
  %29 = load i64*, i64** %3
  %30 = load i64, i64* %8
  %31 = add i64 %30, 1
  %32 = getelementptr i64, i64* %29, i64 %31
  %33 = load i64, i64* %32
  %34 = icmp slt i64 %28, %33
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  %37 = and i1 %24, %36
  br i1 %37, label %39, label %42

38:                                               ; preds = %12
  ret i64 0

39:                                               ; preds = %19
  %40 = load i64, i64* %8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8
  br label %42

42:                                               ; preds = %39, %19
  %43 = load i64*, i64** %3
  %44 = load i64, i64* %6
  %45 = getelementptr i64, i64* %43, i64 %44
  %46 = load i64, i64* %45
  %47 = load i64*, i64** %3
  %48 = load i64, i64* %8
  %49 = getelementptr i64, i64* %47, i64 %48
  %50 = load i64, i64* %49
  %51 = icmp sgt i64 %46, %50
  %52 = zext i1 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  ret i64 0

55:                                               ; preds = %42
  %56 = load i64*, i64** %3
  %57 = load i64, i64* %6
  %58 = load i64, i64* %8
  %59 = call i64 @swap(i64* %56, i64 %57, i64 %58)
  store i64 %59, i64* %6
  %60 = load i64, i64* %8
  store i64 %60, i64* %6
  %61 = load i64, i64* %6
  %62 = mul i64 %61, 2
  %63 = add i64 %62, 1
  store i64 %63, i64* %8
  br label %64

64:                                               ; preds = %55
  br label %12
}

define i64 @heap_sort(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = load i64, i64* %3
  %7 = sdiv i64 %6, 2
  %8 = sub i64 %7, 1
  store i64 %8, i64* %4
  br label %9

9:                                                ; preds = %14, %entry
  %10 = load i64, i64* %4
  %11 = icmp sgt i64 %10, -1
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i64, i64* %3
  %16 = sub i64 %15, 1
  store i64 %16, i64* %5
  %17 = load i64*, i64** %2
  %18 = load i64, i64* %4
  %19 = load i64, i64* %5
  %20 = call i64 @heap_ajust(i64* %17, i64 %18, i64 %19)
  store i64 %20, i64* %5
  %21 = load i64, i64* %4
  %22 = sub i64 %21, 1
  store i64 %22, i64* %4
  br label %9

23:                                               ; preds = %9
  %24 = load i64, i64* %3
  %25 = sub i64 %24, 1
  store i64 %25, i64* %4
  br label %26

26:                                               ; preds = %31, %23
  %27 = load i64, i64* %4
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = alloca i64
  store i64 0, i64* %32
  %33 = load i64*, i64** %2
  %34 = load i64, i64* %32
  %35 = load i64, i64* %4
  %36 = call i64 @swap(i64* %33, i64 %34, i64 %35)
  store i64 %36, i64* %5
  %37 = load i64, i64* %4
  %38 = sub i64 %37, 1
  store i64 %38, i64* %5
  %39 = load i64*, i64** %2
  %40 = load i64, i64* %32
  %41 = load i64, i64* %5
  %42 = call i64 @heap_ajust(i64* %39, i64 %40, i64 %41)
  store i64 %42, i64* %5
  %43 = load i64, i64* %4
  %44 = sub i64 %43, 1
  store i64 %44, i64* %4
  br label %26

45:                                               ; preds = %26
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
  %12 = getelementptr [10 x i64], [10 x i64]* %0, i64 0, i64 0
  %13 = load i64, i64* @0
  %14 = call i64 @heap_sort(i64* %12, i64 %13)
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
