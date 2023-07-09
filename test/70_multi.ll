; ModuleID = 'sysyc'
source_filename = "./70_multi.sy"
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
  store i32 0, i32* %1
  store i32 0, i32* %0
  br label %2

2:                                                ; preds = %7, %entry
  %3 = load i32, i32* %0
  %4 = icmp slt i32 %3, 21
  %5 = zext i1 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %1
  %9 = load i32, i32* %0
  %10 = mul i32 %8, %9
  store i32 %10, i32* %1
  %11 = load i32, i32* %0
  %12 = add i32 %11, 1
  store i32 %12, i32* %0
  br label %2

13:                                               ; preds = %2
  %14 = load i32, i32* %1
  call void @putint(i32 %14)
  ret i32 0
}
