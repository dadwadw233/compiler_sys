; ModuleID = 'sysyc'
source_filename = "./72_enum.sy"
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
  store i32 0, i32* %0
  store i32 0, i32* %1
  store i32 0, i32* %2
  br label %4

4:                                                ; preds = %34, %entry
  %5 = load i32, i32* %0
  %6 = icmp slt i32 %5, 21
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  ret i32 0

11:                                               ; preds = %42, %9
  %12 = load i32, i32* %1
  %13 = load i32, i32* %0
  %14 = sub i32 101, %13
  %15 = icmp slt i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i32, i32* %0
  %20 = sub i32 100, %19
  %21 = load i32, i32* %1
  %22 = sub i32 %20, %21
  store i32 %22, i32* %2
  %23 = load i32, i32* %0
  %24 = mul i32 5, %23
  %25 = load i32, i32* %1
  %26 = mul i32 1, %25
  %27 = add i32 %24, %26
  %28 = load i32, i32* %2
  %29 = sdiv i32 %28, 2
  %30 = add i32 %27, %29
  %31 = icmp eq i32 %30, 100
  %32 = zext i1 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %42

34:                                               ; preds = %11
  %35 = load i32, i32* %0
  %36 = add i32 %35, 1
  store i32 %36, i32* %0
  br label %4

37:                                               ; preds = %18
  %38 = load i32, i32* %0
  call void @putint(i32 %38)
  %39 = load i32, i32* %1
  call void @putint(i32 %39)
  %40 = load i32, i32* %2
  call void @putint(i32 %40)
  store i32 10, i32* %3
  %41 = load i32, i32* %3
  call void @putch(i32 %41)
  br label %42

42:                                               ; preds = %37, %18
  %43 = load i32, i32* %1
  %44 = add i32 %43, 1
  store i32 %44, i32* %1
  br label %11
}
