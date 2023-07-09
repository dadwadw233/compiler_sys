; ModuleID = 'sysyc'
source_filename = "./52_recursion_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @fac(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = load i32, i32* %1
  %3 = icmp slt i32 %2, 2
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  ret i32 1

7:                                                ; preds = %entry
  %8 = load i32, i32* %1
  %9 = sub i32 %8, 1
  store i32 %9, i32* @0
  %10 = load i32, i32* @0
  %11 = call i32 @fac(i32 %10)
  store i32 %11, i32* @1
  %12 = load i32, i32* %1
  %13 = load i32, i32* @1
  %14 = mul i32 %12, %13
  store i32 %14, i32* @1
  %15 = load i32, i32* @1
  ret i32 %15
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 5, i32* %0
  %1 = load i32, i32* %0
  %2 = call i32 @fac(i32 %1)
  ret i32 %2
}
