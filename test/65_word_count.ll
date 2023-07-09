; ModuleID = 'sysyc'
source_filename = "./65_word_count.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @wc(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  store i32 0, i32* %5
  store i32 0, i32* %4
  store i32 0, i32* %6
  br label %7

7:                                                ; preds = %29, %entry
  %8 = load i32, i32* %5
  %9 = load i32, i32* %3
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = load i32*, i32** %2
  %15 = load i32, i32* %5
  %16 = getelementptr i32, i32* %14, i32 %15
  %17 = load i32, i32* %16
  %18 = icmp ne i32 %17, 32
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %28

21:                                               ; preds = %7
  %22 = load i32, i32* %6
  ret i32 %22

23:                                               ; preds = %13
  %24 = load i32, i32* %4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %35

28:                                               ; preds = %13
  store i32 0, i32* %4
  br label %29

29:                                               ; preds = %28, %35
  %30 = load i32, i32* %5
  %31 = add i32 %30, 1
  store i32 %31, i32* %5
  br label %7

32:                                               ; preds = %23
  %33 = load i32, i32* %6
  %34 = add i32 %33, 1
  store i32 %34, i32* %6
  store i32 1, i32* %4
  br label %35

35:                                               ; preds = %32, %23
  br label %29
}

define i32 @main() {
entry:
  %0 = alloca [500 x i32]
  %1 = alloca i32
  %2 = alloca i32
  store i32 0, i32* %2
  store i32 0, i32* %1
  br label %3

3:                                                ; preds = %8, %entry
  %4 = load i32, i32* %1
  %5 = icmp ne i32 %4, 10
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = call i32 @getch()
  store i32 %9, i32* %1
  %10 = load i32, i32* %2
  %11 = getelementptr [500 x i32], [500 x i32]* %0, i32 0, i32 %10
  %12 = load i32, i32* %1
  store i32 %12, i32* %11
  %13 = load i32, i32* %2
  %14 = add i32 %13, 1
  store i32 %14, i32* %2
  br label %3

15:                                               ; preds = %3
  %16 = getelementptr [500 x i32], [500 x i32]* %0, i32 0, i32 0
  %17 = load i32, i32* %2
  %18 = call i32 @wc(i32* %16, i32 %17)
  store i32 %18, i32* %1
  %19 = load i32, i32* %1
  call void @putint(i32 %19)
  ret i32 0
}
