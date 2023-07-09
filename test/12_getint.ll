; ModuleID = 'sysyc'
source_filename = "./12_getint.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = call i64 @getint()
  store i64 %1, i64* %0
  %2 = load i64, i64* %0
  ret i64 %2
}
