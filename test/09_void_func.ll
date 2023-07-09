; ModuleID = 'sysyc'
source_filename = "./09_void_func.sy"
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

define void @add(i32 %0, i32 %1) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = load i32, i32* %2
  %5 = load i32, i32* %3
  %6 = add i32 %4, %5
  store i32 %6, i32* @2
  ret void
}

define i32 @main() {
entry:
  store i32 3, i32* @0
  store i32 2, i32* @1
  %0 = load i32, i32* @0
  %1 = load i32, i32* @1
  call void @add(i32 %0, i32 %1)
  %2 = load i32, i32* @2
  ret i32 %2
}
