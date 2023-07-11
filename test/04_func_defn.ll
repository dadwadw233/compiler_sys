; ModuleID = 'sysyc'
source_filename = "./04_func_defn.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @func(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = sub i64 %2, 1
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  ret i64 %4
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 10, i64* @0
  %1 = load i64, i64* @0
  %2 = call i64 @func(i64 %1)
  store i64 %2, i64* %0
  %3 = load i64, i64* %0
  ret i64 %3
}
