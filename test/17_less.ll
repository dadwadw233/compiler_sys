; ModuleID = 'sysyc'
source_filename = "./17_less.sy"
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
  %0 = call i32 @getint()
  store i32 %0, i32* @0
  %1 = call i32 @getint()
  store i32 %1, i32* @1
  %2 = load i32, i32* @0
  %3 = load i32, i32* @1
  %4 = icmp slt i32 %2, %3
  %5 = zext i1 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %entry
  ret i32 1

8:                                                ; preds = %entry
  ret i32 0
}
