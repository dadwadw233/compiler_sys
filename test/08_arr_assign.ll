; ModuleID = 'sysyc'
source_filename = "./08_arr_assign.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [10 x i32] zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  store i32 1, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @0, i32 0, i32 0)
  ret i32 0
}
