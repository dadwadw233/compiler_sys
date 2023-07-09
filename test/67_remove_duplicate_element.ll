; ModuleID = 'sysyc'
source_filename = "./67_remove_duplicate_element.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @removeElement(i64* %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64*
  store i64* %0, i64** %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  %6 = alloca i64
  store i64 0, i64* %6
  br label %7

7:                                                ; preds = %38, %entry
  %8 = load i64, i64* %6
  %9 = load i64, i64* %4
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = load i64*, i64** %3
  %15 = load i64, i64* %6
  %16 = getelementptr i64, i64* %14, i64 %15
  %17 = load i64, i64* %16
  %18 = load i64, i64* %5
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %35

22:                                               ; preds = %7
  %23 = load i64, i64* %4
  ret i64 %23

24:                                               ; preds = %13
  %25 = load i64*, i64** %3
  %26 = load i64, i64* %6
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64*, i64** %3
  %29 = load i64, i64* %4
  %30 = sub i64 %29, 1
  %31 = getelementptr i64, i64* %28, i64 %30
  %32 = load i64, i64* %31
  store i64 %32, i64* %27
  %33 = load i64, i64* %4
  %34 = sub i64 %33, 1
  store i64 %34, i64* %4
  br label %38

35:                                               ; preds = %13
  %36 = load i64, i64* %6
  %37 = add i64 %36, 1
  store i64 %37, i64* %6
  br label %38

38:                                               ; preds = %35, %24
  br label %7
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
  %12 = alloca i64
  store i64 3, i64* %12
  %13 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %14 = load i64, i64* %0
  %15 = load i64, i64* %12
  %16 = call i64 @removeElement(i64* %13, i64 %14, i64 %15)
  store i64 %16, i64* %0
  %17 = load i64, i64* %0
  ret i64 %17
}
