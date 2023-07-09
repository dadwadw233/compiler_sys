; ModuleID = 'sysyc'
source_filename = "./24_if_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @ififElse() {
entry:
  %0 = alloca i32
  store i32 5, i32* %0
  %1 = alloca i32
  store i32 10, i32* %1
  %2 = load i32, i32* %0
  %3 = icmp eq i32 %2, 5
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %entry
  %7 = load i32, i32* %1
  %8 = icmp eq i32 %7, 10
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %14

11:                                               ; preds = %17, %entry
  %12 = load i32, i32* %0
  ret i32 %12

13:                                               ; preds = %6
  store i32 25, i32* %0
  br label %17

14:                                               ; preds = %6
  %15 = load i32, i32* %0
  %16 = add i32 %15, 15
  store i32 %16, i32* %0
  br label %17

17:                                               ; preds = %14, %13
  br label %11
}

define i32 @main() {
entry:
  %0 = call i32 @ififElse()
  ret i32 %0
}
