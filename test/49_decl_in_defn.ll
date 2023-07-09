; ModuleID = 'sysyc'
source_filename = "./49_decl_in_defn.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 12, i32* %0
  %1 = alloca i32
  %2 = load i32, i32* %0
  call void @putint(i32 %2)
  ret i32 0
}
