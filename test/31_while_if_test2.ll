; ModuleID = 'sysyc'
source_filename = "./31_while_if_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @ifWhile() {
entry:
  %0 = alloca i32
  store i32 0, i32* %0
  %1 = alloca i32
  store i32 3, i32* %1
  %2 = load i32, i32* %0
  %3 = icmp eq i32 %2, 5
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  br label %10

7:                                                ; preds = %entry
  br label %21

8:                                                ; preds = %31, %18
  %9 = load i32, i32* %1
  ret i32 %9

10:                                               ; preds = %15, %6
  %11 = load i32, i32* %1
  %12 = icmp eq i32 %11, 2
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %1
  %17 = add i32 %16, 2
  store i32 %17, i32* %1
  br label %10

18:                                               ; preds = %10
  %19 = load i32, i32* %1
  %20 = add i32 %19, 25
  store i32 %20, i32* %1
  br label %8

21:                                               ; preds = %26, %7
  %22 = load i32, i32* %0
  %23 = icmp slt i32 %22, 5
  %24 = zext i1 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* %1
  %28 = mul i32 %27, 2
  store i32 %28, i32* %1
  %29 = load i32, i32* %0
  %30 = add i32 %29, 1
  store i32 %30, i32* %0
  br label %21

31:                                               ; preds = %21
  br label %8
}

define i32 @main() {
entry:
  %0 = call i32 @ifWhile()
  ret i32 %0
}
