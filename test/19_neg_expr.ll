; ModuleID = 'sysyc'
source_filename = "./19_neg_expr.sy"
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
  %2 = alloca i32
  %3 = load i32, i32* @0
  %4 = load i32, i32* @1
  %5 = add i32 %3, %4
  %6 = sub i32 0, %5
  store i32 %6, i32* %2
  %7 = load i32, i32* %2
  call void @putint(i32 %7)
  ret i32 0
}
