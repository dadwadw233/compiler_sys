; ModuleID = 'sysyc'
source_filename = "./33_func_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @myFunc(i32 %0, i32 %1, i32 %2) {
entry:
  %3 = alloca i32
  store i32 %0, i32* %3
  %4 = alloca i32
  store i32 %1, i32* %4
  %5 = alloca i32
  store i32 %2, i32* %5
  store i32 2, i32* %3
  %6 = alloca i32
  store i32 0, i32* %6
  %7 = load i32, i32* %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %entry
  ret i32 0

12:                                               ; preds = %entry
  br label %13

13:                                               ; preds = %18, %12
  %14 = load i32, i32* %4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %4
  %20 = sub i32 %19, 1
  store i32 %20, i32* %4
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* %3
  %23 = load i32, i32* %4
  %24 = add i32 %22, %23
  ret i32 %24
}

define i32 @main() {
entry:
  store i32 3, i32* @0
  %0 = alloca i32
  %1 = call i32 @myFunc(i32 1, i32 2, i32 1)
  store i32 %1, i32* %0
  %2 = load i32, i32* @0
  %3 = load i32, i32* %0
  %4 = add i32 %2, %3
  ret i32 %4
}
