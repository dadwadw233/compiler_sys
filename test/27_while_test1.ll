; ModuleID = 'sysyc'
source_filename = "./27_while_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @doubleWhile() {
entry:
  %0 = alloca i32
  store i32 5, i32* %0
  %1 = alloca i32
  store i32 7, i32* %1
  br label %2

2:                                                ; preds = %20, %entry
  %3 = load i32, i32* %0
  %4 = icmp slt i32 %3, 100
  %5 = zext i1 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i32, i32* %0
  %9 = add i32 %8, 30
  store i32 %9, i32* %0
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %1
  ret i32 %11

12:                                               ; preds = %17, %7
  %13 = load i32, i32* %1
  %14 = icmp slt i32 %13, 100
  %15 = zext i1 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %1
  %19 = add i32 %18, 6
  store i32 %19, i32* %1
  br label %12

20:                                               ; preds = %12
  %21 = load i32, i32* %1
  %22 = sub i32 %21, 100
  store i32 %22, i32* %1
  br label %2
}

define i32 @main() {
entry:
  %0 = call i32 @doubleWhile()
  ret i32 %0
}
