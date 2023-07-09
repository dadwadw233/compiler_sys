; ModuleID = 'sysyc'
source_filename = "./54_sort_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @insertsort(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  store i64 1, i64* %2
  br label %3

3:                                                ; preds = %44, %entry
  %4 = load i64, i64* %2
  %5 = load i64, i64* @0
  %6 = icmp slt i64 %4, %5
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = alloca i64
  %11 = load i64*, i64** %1
  %12 = load i64, i64* %2
  %13 = getelementptr i64, i64* %11, i64 %12
  %14 = load i64, i64* %13
  store i64 %14, i64* %10
  %15 = alloca i64
  %16 = load i64, i64* %2
  %17 = sub i64 %16, 1
  store i64 %17, i64* %15
  br label %19

18:                                               ; preds = %3
  ret i64 0

19:                                               ; preds = %33, %9
  %20 = load i64, i64* %15
  %21 = icmp sgt i64 %20, -1
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  %24 = load i64, i64* %10
  %25 = load i64*, i64** %1
  %26 = load i64, i64* %15
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64, i64* %27
  %29 = icmp slt i64 %24, %28
  %30 = zext i1 %29 to i64
  %31 = icmp ne i64 %30, 0
  %32 = and i1 %23, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load i64*, i64** %1
  %35 = load i64, i64* %15
  %36 = add i64 %35, 1
  %37 = getelementptr i64, i64* %34, i64 %36
  %38 = load i64*, i64** %1
  %39 = load i64, i64* %15
  %40 = getelementptr i64, i64* %38, i64 %39
  %41 = load i64, i64* %40
  store i64 %41, i64* %37
  %42 = load i64, i64* %15
  %43 = sub i64 %42, 1
  store i64 %43, i64* %15
  br label %19

44:                                               ; preds = %19
  %45 = load i64*, i64** %1
  %46 = load i64, i64* %15
  %47 = add i64 %46, 1
  %48 = getelementptr i64, i64* %45, i64 %47
  %49 = load i64, i64* %10
  store i64 %49, i64* %48
  %50 = load i64, i64* %2
  %51 = add i64 %50, 1
  store i64 %51, i64* %2
  br label %3
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
  %13 = call i64 @insertsort(i64* %12)
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
