; ModuleID = 'sysyc'
source_filename = "./21_suminput.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global [10 x i32] zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = call i32 @getint()
  store i32 %0, i32* @0
  %1 = load i32, i32* @0
  %2 = icmp sgt i32 %1, 10
  %3 = zext i1 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %entry
  ret i32 1

6:                                                ; preds = %entry
  %7 = alloca i32
  %8 = alloca i32
  store i32 0, i32* %8
  %9 = load i32, i32* %8
  store i32 %9, i32* %7
  br label %10

10:                                               ; preds = %16, %6
  %11 = load i32, i32* %8
  %12 = load i32, i32* @0
  %13 = icmp slt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load i32, i32* %8
  %18 = getelementptr [10 x i32], [10 x i32]* @1, i32 0, i32 %17
  %19 = call i32 @getint()
  store i32 %19, i32* %18
  %20 = load i32, i32* %7
  %21 = load i32, i32* %8
  %22 = getelementptr [10 x i32], [10 x i32]* @1, i32 0, i32 %21
  %23 = load i32, i32* %22
  %24 = add i32 %20, %23
  store i32 %24, i32* %7
  %25 = load i32, i32* %8
  %26 = add i32 %25, 1
  store i32 %26, i32* %8
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* %7
  call void @putint(i32 %28)
  %29 = alloca i32
  store i32 10, i32* %29
  %30 = load i32, i32* %29
  call void @putch(i32 %30)
  %31 = load i32, i32* %7
  ret i32 %31
}
