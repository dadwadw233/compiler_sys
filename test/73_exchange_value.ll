; ModuleID = 'sysyc'
source_filename = "./73_exchange_value.sy"
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
  %0 = alloca i32
  %1 = alloca i32
  %2 = call i32 @getint()
  store i32 %2, i32* %0
  %3 = call i32 @getint()
  store i32 %3, i32* %1
  %4 = alloca i32
  %5 = load i32, i32* %0
  store i32 %5, i32* %4
  %6 = load i32, i32* %1
  store i32 %6, i32* %0
  %7 = load i32, i32* %4
  store i32 %7, i32* %1
  %8 = load i32, i32* %0
  call void @putint(i32 %8)
  store i32 10, i32* %4
  %9 = load i32, i32* %4
  call void @putch(i32 %9)
  %10 = load i32, i32* %1
  call void @putint(i32 %10)
  store i32 10, i32* %4
  %11 = load i32, i32* %4
  call void @putch(i32 %11)
  ret i32 0
}
