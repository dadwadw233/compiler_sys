; ModuleID = 'sysyc'
source_filename = "./84_palindrome_number.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @palindrome(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca [4 x i64]
  %3 = alloca i64
  %4 = alloca i64
  store i64 0, i64* %3
  br label %5

5:                                                ; preds = %10, %entry
  %6 = load i64, i64* %3
  %7 = icmp slt i64 %6, 4
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i64, i64* %3
  %12 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 %11
  %13 = load i64, i64* %1
  %14 = srem i64 %13, 10
  store i64 %14, i64* %12
  %15 = load i64, i64* %1
  %16 = sdiv i64 %15, 10
  store i64 %16, i64* %1
  %17 = load i64, i64* %3
  %18 = add i64 %17, 1
  store i64 %18, i64* %3
  br label %5

19:                                               ; preds = %5
  %20 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %21 = load i64, i64* %20
  %22 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 3
  %23 = load i64, i64* %22
  %24 = icmp eq i64 %21, %23
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  %27 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 1
  %28 = load i64, i64* %27
  %29 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 2
  %30 = load i64, i64* %29
  %31 = icmp eq i64 %28, %30
  %32 = zext i1 %31 to i64
  %33 = icmp ne i64 %32, 0
  %34 = and i1 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i64 1, i64* %4
  br label %37

36:                                               ; preds = %19
  store i64 0, i64* %4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i64, i64* %4
  ret i64 %38
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 1221, i64* %0
  %1 = alloca i64
  %2 = load i64, i64* %0
  %3 = call i64 @palindrome(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  %5 = icmp eq i64 %4, 1
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %entry
  %9 = load i64, i64* %0
  call void @putint(i64 %9)
  br label %12

10:                                               ; preds = %entry
  store i64 0, i64* %1
  %11 = load i64, i64* %1
  call void @putint(i64 %11)
  br label %12

12:                                               ; preds = %10, %8
  store i64 10, i64* %1
  %13 = load i64, i64* %1
  call void @putch(i64 %13)
  ret i64 0
}
