; ModuleID = 'sysyc'
source_filename = "./30_while_if_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @whileIf() {
entry:
  %0 = alloca i32
  store i32 0, i32* %0
  %1 = alloca i32
  store i32 0, i32* %1
  br label %2

2:                                                ; preds = %20, %entry
  %3 = load i32, i32* %0
  %4 = icmp slt i32 %3, 100
  %5 = zext i1 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load i32, i32* %0
  %9 = icmp eq i32 %8, 5
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %1
  ret i32 %13

14:                                               ; preds = %7
  store i32 25, i32* %1
  br label %20

15:                                               ; preds = %7
  %16 = load i32, i32* %0
  %17 = icmp eq i32 %16, 10
  %18 = zext i1 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %24

20:                                               ; preds = %27, %14
  %21 = load i32, i32* %0
  %22 = add i32 %21, 1
  store i32 %22, i32* %0
  br label %2

23:                                               ; preds = %15
  store i32 42, i32* %1
  br label %27

24:                                               ; preds = %15
  %25 = load i32, i32* %0
  %26 = mul i32 %25, 2
  store i32 %26, i32* %1
  br label %27

27:                                               ; preds = %24, %23
  br label %20
}

define i32 @main() {
entry:
  %0 = call i32 @whileIf()
  ret i32 %0
}
