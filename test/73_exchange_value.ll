; ModuleID = 'sysyc'
source_filename = "./73_exchange_value.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = call i64 @getint()
  store i64 %2, i64* %0
  %3 = call i64 @getint()
  store i64 %3, i64* %1
  %4 = alloca i64
  %5 = load i64, i64* %0
  store i64 %5, i64* %4
  %6 = load i64, i64* %1
  store i64 %6, i64* %0
  %7 = load i64, i64* %4
  store i64 %7, i64* %1
  %8 = load i64, i64* %0
  call void @putint(i64 %8)
  store i64 10, i64* %4
  %9 = load i64, i64* %4
  call void @putch(i64 %9)
  %10 = load i64, i64* %1
  call void @putint(i64 %10)
  store i64 10, i64* %4
  %11 = load i64, i64* %4
  call void @putch(i64 %11)
  ret i64 0
}
