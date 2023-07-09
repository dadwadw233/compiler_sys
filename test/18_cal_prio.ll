; ModuleID = 'sysyc'
source_filename = "./18_cal_prio.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer
@2 = global i32 zeroinitializer

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
  %2 = call i32 @getint()
  store i32 %2, i32* @2
  %3 = alloca i32
  %4 = load i32, i32* @0
  %5 = load i32, i32* @1
  %6 = load i32, i32* @2
  %7 = mul i32 %5, %6
  %8 = add i32 %4, %7
  store i32 %8, i32* %3
  %9 = load i32, i32* %3
  ret i32 %9
}
