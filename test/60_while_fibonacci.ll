; ModuleID = 'sysyc'
source_filename = "./60_while_fibonacci.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

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
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  store i32 0, i32* %2
  store i32 1, i32* %3
  %5 = load i32, i32* %1
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %entry
  ret i32 0

10:                                               ; preds = %entry
  %11 = load i32, i32* %1
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  ret i32 1

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %22, %16
  %18 = load i32, i32* %1
  %19 = icmp sgt i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32, i32* %2
  %24 = load i32, i32* %3
  %25 = add i32 %23, %24
  store i32 %25, i32* %4
  %26 = load i32, i32* %3
  store i32 %26, i32* %2
  %27 = load i32, i32* %4
  store i32 %27, i32* %3
  %28 = load i32, i32* %1
  %29 = sub i32 %28, 1
  store i32 %29, i32* %1
  br label %17

30:                                               ; preds = %17
  %31 = load i32, i32* %4
  ret i32 %31
}

define i32 @main() {
entry:
  %0 = call i32 @getint()
  store i32 %0, i32* @0
  %1 = alloca i32
  %2 = load i32, i32* @0
  %3 = call i32 @fib(i32 %2)
  store i32 %3, i32* %1
  %4 = load i32, i32* %1
  ret i32 %4
}
