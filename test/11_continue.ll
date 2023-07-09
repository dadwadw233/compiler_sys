; ModuleID = 'sysyc'
source_filename = "./11_continue.sy"
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
  store i32 10, i32* %0
  br label %1

1:                                                ; preds = %13, %entry
  %2 = load i32, i32* %0
  %3 = icmp sgt i32 %2, 0
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %0
  %8 = icmp sgt i32 %7, 5
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %0
  ret i32 %12

13:                                               ; preds = %6
  %14 = load i32, i32* %0
  %15 = sub i32 %14, 1
  store i32 %15, i32* %0
  br label %1

16:                                               ; preds = %6
  %17 = load i32, i32* %0
  ret i32 %17
}
