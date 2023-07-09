; ModuleID = 'sysyc'
source_filename = "./22_if_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @ifElse() {
entry:
  %0 = alloca i32
  store i32 5, i32* %0
  %1 = load i32, i32* %0
  %2 = icmp eq i32 %1, 5
  %3 = zext i1 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %entry
  store i32 25, i32* %0
  br label %9

6:                                                ; preds = %entry
  %7 = load i32, i32* %0
  %8 = mul i32 %7, 2
  store i32 %8, i32* %0
  br label %9

9:                                                ; preds = %6, %5
  %10 = load i32, i32* %0
  ret i32 %10
}

define i32 @main() {
entry:
  %0 = call i32 @ifElse()
  ret i32 %0
}
