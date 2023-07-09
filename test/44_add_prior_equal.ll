; ModuleID = 'sysyc'
source_filename = "./44_add_prior_equal.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  store i32 1, i32* %0
  store i32 4, i32* %1
  store i32 28, i32* %2
  %3 = alloca i32
  %4 = load i32, i32* %2
  %5 = load i32, i32* %0
  %6 = add i32 %4, %5
  %7 = load i32, i32* %1
  %8 = icmp ne i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %entry
  %12 = load i32, i32* %2
  %13 = load i32, i32* %1
  %14 = sub i32 0, %13
  %15 = srem i32 %12, %14
  store i32 %15, i32* %3
  %16 = load i32, i32* %3
  call void @putint(i32 %16)
  br label %17

17:                                               ; preds = %11, %entry
  %18 = load i32, i32* %1
  %19 = load i32, i32* %2
  %20 = sub i32 %18, %19
  %21 = load i32, i32* %0
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32, i32* %2
  %27 = load i32, i32* %1
  %28 = srem i32 %26, %27
  %29 = load i32, i32* %1
  %30 = add i32 %28, %29
  store i32 %30, i32* %3
  %31 = load i32, i32* %3
  call void @putint(i32 %31)
  br label %32

32:                                               ; preds = %25, %17
  ret i32 0
}
