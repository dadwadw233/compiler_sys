; ModuleID = 'sysyc'
source_filename = "./84_palindrome_number.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @palindrome(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = alloca [4 x i32]
  %3 = alloca i32
  %4 = alloca i32
  store i32 0, i32* %3
  br label %5

5:                                                ; preds = %10, %entry
  %6 = load i32, i32* %3
  %7 = icmp slt i32 %6, 4
  %8 = zext i1 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i32, i32* %3
  %12 = getelementptr [4 x i32], [4 x i32]* %2, i32 0, i32 %11
  %13 = load i32, i32* %1
  %14 = srem i32 %13, 10
  store i32 %14, i32* %12
  %15 = load i32, i32* %1
  %16 = sdiv i32 %15, 10
  store i32 %16, i32* %1
  %17 = load i32, i32* %3
  %18 = add i32 %17, 1
  store i32 %18, i32* %3
  br label %5

19:                                               ; preds = %5
  %20 = getelementptr [4 x i32], [4 x i32]* %2, i32 0, i32 0
  %21 = load i32, i32* %20
  %22 = getelementptr [4 x i32], [4 x i32]* %2, i32 0, i32 3
  %23 = load i32, i32* %22
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = icmp ne i32 %25, 0
  %27 = getelementptr [4 x i32], [4 x i32]* %2, i32 0, i32 1
  %28 = load i32, i32* %27
  %29 = getelementptr [4 x i32], [4 x i32]* %2, i32 0, i32 2
  %30 = load i32, i32* %29
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = icmp ne i32 %32, 0
  %34 = and i1 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  store i32 1, i32* %4
  br label %37

36:                                               ; preds = %19
  store i32 0, i32* %4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %4
  ret i32 %38
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 1221, i32* %0
  %1 = alloca i32
  %2 = load i32, i32* %0
  %3 = call i32 @palindrome(i32 %2)
  store i32 %3, i32* %1
  %4 = load i32, i32* %1
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %entry
  %9 = load i32, i32* %0
  call void @putint(i32 %9)
  br label %12

10:                                               ; preds = %entry
  store i32 0, i32* %1
  %11 = load i32, i32* %1
  call void @putint(i32 %11)
  br label %12

12:                                               ; preds = %10, %8
  store i32 10, i32* %1
  %13 = load i32, i32* %1
  call void @putch(i32 %13)
  ret i32 0
}
