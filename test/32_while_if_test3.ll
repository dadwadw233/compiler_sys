; ModuleID = 'sysyc'
source_filename = "./32_while_if_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @deepWhileBr(i32 %0, i32 %1) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = load i32, i32* %2
  %6 = load i32, i32* %3
  %7 = add i32 %5, %6
  store i32 %7, i32* %4
  br label %8

8:                                                ; preds = %29, %entry
  %9 = load i32, i32* %4
  %10 = icmp slt i32 %9, 75
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = alloca i32
  store i32 42, i32* %14
  %15 = load i32, i32* %4
  %16 = icmp slt i32 %15, 100
  %17 = zext i1 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %29

19:                                               ; preds = %8
  %20 = load i32, i32* %4
  ret i32 %20

21:                                               ; preds = %13
  %22 = load i32, i32* %4
  %23 = load i32, i32* %14
  %24 = add i32 %22, %23
  store i32 %24, i32* %4
  %25 = load i32, i32* %4
  %26 = icmp sgt i32 %25, 99
  %27 = zext i1 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %34

29:                                               ; preds = %34, %13
  br label %8

30:                                               ; preds = %21
  %31 = alloca i32
  %32 = load i32, i32* %14
  %33 = mul i32 %32, 2
  store i32 %33, i32* %31
  br i1 true, label %35, label %38

34:                                               ; preds = %38, %21
  br label %29

35:                                               ; preds = %30
  %36 = load i32, i32* %31
  %37 = mul i32 %36, 2
  store i32 %37, i32* %4
  br label %38

38:                                               ; preds = %35, %30
  br label %34
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 2, i32* %0
  %1 = load i32, i32* %0
  %2 = load i32, i32* %0
  %3 = call i32 @deepWhileBr(i32 %1, i32 %2)
  ret i32 %3
}
