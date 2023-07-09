; ModuleID = 'sysyc'
source_filename = "./10_break.sy"
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

1:                                                ; preds = %16, %entry
  %2 = load i32, i32* %0
  %3 = icmp sgt i32 %2, 0
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i32, i32* %0
  %8 = sub i32 %7, 1
  store i32 %8, i32* %0
  %9 = load i32, i32* %0
  %10 = icmp eq i32 %9, 5
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %16

13:                                               ; preds = %15, %1
  %14 = load i32, i32* %0
  ret i32 %14

15:                                               ; preds = %6
  br label %13

16:                                               ; preds = %6
  br label %1
}
