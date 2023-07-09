; ModuleID = 'sysyc'
source_filename = "./23_if_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @ifElseElseIf() {
entry:
  %0 = alloca i32
  store i32 66, i32* %0
  %1 = alloca i32
  store i32 8923, i32* %1
  %2 = load i32, i32* %0
  %3 = icmp eq i32 %2, 5
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  store i32 25, i32* %1
  br label %12

7:                                                ; preds = %entry
  %8 = load i32, i32* %0
  %9 = icmp eq i32 %8, 10
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %15

12:                                               ; preds = %18, %6
  %13 = load i32, i32* %1
  ret i32 %13

14:                                               ; preds = %7
  store i32 42, i32* %1
  br label %18

15:                                               ; preds = %7
  %16 = load i32, i32* %0
  %17 = mul i32 %16, 2
  store i32 %17, i32* %1
  br label %18

18:                                               ; preds = %15, %14
  br label %12
}

define i32 @main() {
entry:
  %0 = call i32 @ifElseElseIf()
  ret i32 %0
}
