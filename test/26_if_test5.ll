; ModuleID = 'sysyc'
source_filename = "./26_if_test5.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @if_if_Else() {
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
  br i1 %10, label %16, label %17

11:                                               ; preds = %entry
  %12 = load i32, i32* %0
  %13 = add i32 %12, 15
  store i32 %13, i32* %0
  br label %14

14:                                               ; preds = %11, %17
  %15 = load i32, i32* %0
  ret i32 %15

16:                                               ; preds = %6
  store i32 25, i32* %0
  br label %17

17:                                               ; preds = %16, %6
  br label %14
}

define i32 @main() {
entry:
  %0 = call i32 @if_if_Else()
  ret i32 %0
}
