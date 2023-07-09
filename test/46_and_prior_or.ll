; ModuleID = 'sysyc'
source_filename = "./46_and_prior_or.sy"
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
  %3 = alloca i32
  store i32 3, i32* %0
  store i32 8, i32* %1
  store i32 -4, i32* %2
  store i32 15, i32* %3
  %4 = alloca i32
  %5 = load i32, i32* %3
  %6 = load i32, i32* %1
  %7 = load i32, i32* %0
  %8 = sub i32 %6, %7
  %9 = srem i32 %5, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %11, 0
  %13 = load i32, i32* %0
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = icmp ne i32 %15, 0
  %17 = and i1 %12, %16
  %18 = load i32, i32* %3
  %19 = srem i32 %18, 3
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %21, 0
  %23 = load i32, i32* %2
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = icmp ne i32 %25, 0
  %27 = and i1 %22, %26
  %28 = or i1 %17, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %entry
  %30 = load i32, i32* %3
  %31 = load i32, i32* %2
  %32 = add i32 %30, %31
  %33 = load i32, i32* %1
  %34 = sub i32 0, %33
  %35 = sub i32 %32, %34
  store i32 %35, i32* %4
  %36 = load i32, i32* %4
  call void @putint(i32 %36)
  br label %37

37:                                               ; preds = %29, %entry
  ret i32 0
}
