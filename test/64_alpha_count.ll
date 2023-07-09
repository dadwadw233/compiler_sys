; ModuleID = 'sysyc'
source_filename = "./64_alpha_count.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca [500 x i32]
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  store i32 0, i32* %3
  store i32 0, i32* %2
  store i32 0, i32* %1
  br label %4

4:                                                ; preds = %35, %entry
  %5 = load i32, i32* %1
  %6 = icmp ne i32 %5, 10
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = call i32 @getch()
  store i32 %10, i32* %1
  %11 = load i32, i32* %1
  %12 = icmp sgt i32 %11, 40
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  %15 = load i32, i32* %1
  %16 = icmp slt i32 %15, 91
  %17 = zext i1 %16 to i32
  %18 = icmp ne i32 %17, 0
  %19 = and i1 %14, %18
  %20 = load i32, i32* %1
  %21 = icmp sgt i32 %20, 96
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = load i32, i32* %1
  %25 = icmp slt i32 %24, 123
  %26 = zext i1 %25 to i32
  %27 = icmp ne i32 %26, 0
  %28 = and i1 %23, %27
  %29 = or i1 %19, %28
  br i1 %29, label %32, label %35

30:                                               ; preds = %4
  %31 = load i32, i32* %3
  call void @putint(i32 %31)
  ret i32 0

32:                                               ; preds = %9
  %33 = load i32, i32* %3
  %34 = add i32 %33, 1
  store i32 %34, i32* %3
  br label %35

35:                                               ; preds = %32, %9
  %36 = load i32, i32* %2
  %37 = add i32 %36, 1
  store i32 %37, i32* %2
  br label %4
}
