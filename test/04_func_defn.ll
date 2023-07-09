; ModuleID = 'sysyc'
source_filename = "./04_func_defn.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @func(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = load i32, i32* %1
  %3 = sub i32 %2, 1
  store i32 %3, i32* %1
  %4 = load i32, i32* %1
  ret i32 %4
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 10, i32* @0
  %1 = load i32, i32* @0
  %2 = call i32 @func(i32 %1)
  store i32 %2, i32* %0
  %3 = load i32, i32* %0
  ret i32 %3
}
