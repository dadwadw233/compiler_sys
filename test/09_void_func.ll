; ModuleID = 'sysyc'
source_filename = "./09_void_func.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer
@2 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define void @add(i64 %0, i64 %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = load i64, i64* %2
  %5 = load i64, i64* %3
  %6 = add i64 %4, %5
  store i64 %6, i64* @2
  ret void
}

define i64 @main() {
entry:
  store i64 3, i64* @0
  store i64 2, i64* @1
  %0 = load i64, i64* @0
  %1 = load i64, i64* @1
  call void @add(i64 %0, i64 %1)
  %2 = load i64, i64* @2
  ret i64 %2
}
