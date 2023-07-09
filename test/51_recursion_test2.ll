; ModuleID = 'sysyc'
source_filename = "./51_recursion_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @fib(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = load i32, i32* %1
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  ret i32 0

7:                                                ; preds = %entry
  %8 = load i32, i32* %1
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  ret i32 1

13:                                               ; preds = %7
  %14 = alloca i32
  %15 = load i32, i32* %1
  %16 = sub i32 %15, 1
  store i32 %16, i32* %14
  %17 = alloca i32
  %18 = load i32, i32* %1
  %19 = sub i32 %18, 2
  store i32 %19, i32* %17
  %20 = load i32, i32* %14
  %21 = call i32 @fib(i32 %20)
  %22 = load i32, i32* %17
  %23 = call i32 @fib(i32 %22)
  %24 = add i32 %21, %23
  ret i32 %24
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 10, i32* %0
  %1 = load i32, i32* %0
  %2 = call i32 @fib(i32 %1)
  ret i32 %2
}
