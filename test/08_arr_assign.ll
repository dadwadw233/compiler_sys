; ModuleID = 'sysyc'
source_filename = "./08_arr_assign.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [10 x i64] zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  store i64 1, i64* getelementptr inbounds ([10 x i64], [10 x i64]* @0, i64 0, i64 0)
  ret i64 0
}
