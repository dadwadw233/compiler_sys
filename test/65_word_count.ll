; ModuleID = 'sysyc'
source_filename = "./65_word_count.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @wc(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  store i64 0, i64* %5
  store i64 0, i64* %4
  store i64 0, i64* %6
  br label %7

7:                                                ; preds = %29, %entry
  %8 = load i64, i64* %5
  %9 = load i64, i64* %3
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load i64*, i64** %2
  %15 = load i64, i64* %5
  %16 = getelementptr i64, i64* %14, i64 %15
  %17 = load i64, i64* %16
  %18 = icmp ne i64 %17, 32
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %28

21:                                               ; preds = %7
  %22 = load i64, i64* %6
  ret i64 %22

23:                                               ; preds = %13
  %24 = load i64, i64* %4
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %35

28:                                               ; preds = %13
  store i64 0, i64* %4
  br label %29

29:                                               ; preds = %28, %35
  %30 = load i64, i64* %5
  %31 = add i64 %30, 1
  store i64 %31, i64* %5
  br label %7

32:                                               ; preds = %23
  %33 = load i64, i64* %6
  %34 = add i64 %33, 1
  store i64 %34, i64* %6
  store i64 1, i64* %4
  br label %35

35:                                               ; preds = %32, %23
  br label %29
}

define i64 @main() {
entry:
  %0 = alloca [500 x i64]
  %1 = alloca i64
  %2 = alloca i64
  store i64 0, i64* %2
  store i64 0, i64* %1
  br label %3

3:                                                ; preds = %8, %entry
  %4 = load i64, i64* %1
  %5 = icmp ne i64 %4, 10
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = call i64 @getch()
  store i64 %9, i64* %1
  %10 = load i64, i64* %2
  %11 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 %10
  %12 = load i64, i64* %1
  store i64 %12, i64* %11
  %13 = load i64, i64* %2
  %14 = add i64 %13, 1
  store i64 %14, i64* %2
  br label %3

15:                                               ; preds = %3
  %16 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 0
  %17 = load i64, i64* %2
  %18 = call i64 @wc(i64* %16, i64 %17)
  store i64 %18, i64* %1
  %19 = load i64, i64* %1
  call void @putint(i64 %19)
  ret i64 0
}
