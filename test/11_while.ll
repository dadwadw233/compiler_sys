; ModuleID = 'sysyc'
source_filename = "./11_while.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  store i32 0, i32* @1
  store i32 3, i32* @0
  br label %0

0:                                                ; preds = %5, %entry
  %1 = load i32, i32* @0
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i32
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @1
  %7 = load i32, i32* @0
  %8 = add i32 %6, %7
  store i32 %8, i32* @1
  %9 = load i32, i32* @0
  %10 = sub i32 %9, 1
  store i32 %10, i32* @0
  br label %0

11:                                               ; preds = %0
  %12 = load i32, i32* @1
  ret i32 %12
}
