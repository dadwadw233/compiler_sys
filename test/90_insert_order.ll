; ModuleID = 'sysyc'
source_filename = "./90_insert_order.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @insert(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  store i64 0, i64* %4
  br label %6

6:                                                ; preds = %21, %entry
  %7 = load i64, i64* %3
  %8 = load i64*, i64** %2
  %9 = load i64, i64* %4
  %10 = getelementptr i64, i64* %8, i64 %9
  %11 = load i64, i64* %10
  %12 = icmp sgt i64 %7, %11
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  %15 = load i64, i64* %4
  %16 = load i64, i64* @0
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i64, i64* %4
  %23 = add i64 %22, 1
  store i64 %23, i64* %4
  br label %6

24:                                               ; preds = %6
  %25 = load i64, i64* @0
  store i64 %25, i64* %5
  br label %26

26:                                               ; preds = %32, %24
  %27 = load i64, i64* %5
  %28 = load i64, i64* %4
  %29 = icmp sgt i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i64*, i64** %2
  %34 = load i64, i64* %5
  %35 = getelementptr i64, i64* %33, i64 %34
  %36 = load i64*, i64** %2
  %37 = load i64, i64* %5
  %38 = sub i64 %37, 1
  %39 = getelementptr i64, i64* %36, i64 %38
  %40 = load i64, i64* %39
  store i64 %40, i64* %35
  %41 = load i64*, i64** %2
  %42 = load i64, i64* %4
  %43 = getelementptr i64, i64* %41, i64 %42
  %44 = load i64, i64* %3
  store i64 %44, i64* %43
  %45 = load i64, i64* %5
  %46 = sub i64 %45, 1
  store i64 %46, i64* %5
  br label %26

47:                                               ; preds = %26
  ret i64 0
}

define i64 @main() {
entry:
  store i64 10, i64* @0
  %0 = alloca [11 x i64]
  %1 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 0
  store i64 1, i64* %1
  %2 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 1
  store i64 3, i64* %2
  %3 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 2
  store i64 4, i64* %3
  %4 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 3
  store i64 7, i64* %4
  %5 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 4
  store i64 8, i64* %5
  %6 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 5
  store i64 11, i64* %6
  %7 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 6
  store i64 13, i64* %7
  %8 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 7
  store i64 18, i64* %8
  %9 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 8
  store i64 56, i64* %9
  %10 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 9
  store i64 78, i64* %10
  %11 = alloca i64
  %12 = alloca i64
  store i64 0, i64* %12
  %13 = call i64 @getint()
  store i64 %13, i64* %11
  %14 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 0
  %15 = load i64, i64* %11
  %16 = call i64 @insert(i64* %14, i64 %15)
  store i64 %16, i64* %11
  br label %17

17:                                               ; preds = %23, %entry
  %18 = load i64, i64* %12
  %19 = load i64, i64* @0
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64, i64* %12
  %25 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 %24
  %26 = load i64, i64* %25
  store i64 %26, i64* %11
  %27 = load i64, i64* %11
  call void @putint(i64 %27)
  store i64 10, i64* %11
  %28 = load i64, i64* %11
  call void @putch(i64 %28)
  %29 = load i64, i64* %12
  %30 = add i64 %29, 1
  store i64 %30, i64* %12
  br label %17

31:                                               ; preds = %17
  ret i64 0
}
