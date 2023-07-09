; ModuleID = 'sysyc'
source_filename = "./03_var_defn2.sy"
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
  store i32 5, i32* @1
  %0 = alloca i32
  %1 = load i32, i32* @0
  %2 = mul i32 %1, 2
  %3 = load i32, i32* @1
  %4 = add i32 %2, %3
  %5 = add i32 %4, 3
  store i32 %5, i32* %0
  %6 = load i32, i32* %0
  ret i32 %6
}
