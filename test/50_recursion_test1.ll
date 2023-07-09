; ModuleID = 'sysyc'
source_filename = "./50_recursion_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @fact(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = load i32, i32* %1
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  ret i32 1

7:                                                ; preds = %entry
  %8 = alloca i32
  %9 = load i32, i32* %1
  %10 = sub i32 %9, 1
  store i32 %10, i32* %8
  %11 = load i32, i32* %1
  %12 = load i32, i32* %8
  %13 = call i32 @fact(i32 %12)
  %14 = mul i32 %11, %13
  ret i32 %14
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 4, i32* %0
  %1 = load i32, i32* %0
  %2 = call i32 @fact(i32 %1)
  ret i32 %2
}
