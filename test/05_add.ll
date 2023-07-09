; ModuleID = 'sysyc'
source_filename = "./05_add.sy"
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
  store i32 10, i32* @0
  store i32 20, i32* @1
  %0 = alloca i32
  %1 = load i32, i32* @0
  %2 = load i32, i32* @1
  %3 = add i32 %1, %2
  store i32 %3, i32* %0
  %4 = load i32, i32* %0
  ret i32 %4
}
