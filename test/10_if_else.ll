; ModuleID = 'sysyc'
source_filename = "./10_if_else.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  store i32 10, i32* @0
  %0 = load i32, i32* @0
  %1 = icmp sgt i32 %0, 0
  %2 = zext i1 %1 to i32
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %entry
  ret i32 1

5:                                                ; preds = %entry
  ret i32 0
}
