; ModuleID = 'sysyc'
source_filename = "./05_add.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  store i64 10, i64* @0
  store i64 20, i64* @1
  %0 = alloca i64
  %1 = load i64, i64* @0
  %2 = load i64, i64* @1
  %3 = add i64 %1, %2
  store i64 %3, i64* %0
  %4 = load i64, i64* %0
  ret i64 %4
}
