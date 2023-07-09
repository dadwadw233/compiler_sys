; ModuleID = 'sysyc'
source_filename = "./05_const_array_defn.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4]

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @0, i32 0, i32 4)
  ret i32 %0
}
