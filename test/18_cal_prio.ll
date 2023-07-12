; ModuleID = 'sysyc'
source_filename = "./18_cal_prio.sy"
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

define i64 @main() {
entry:
  %0 = call i64 @getint()
  store i64 %0, i64* @0
  %1 = call i64 @getint()
  store i64 %1, i64* @1
  %2 = call i64 @getint()
  store i64 %2, i64* @2
  %3 = alloca i64
  %4 = load i64, i64* @0
  %5 = load i64, i64* @1
  %6 = load i64, i64* @2
  %7 = mul i64 %5, %6
  %8 = add i64 %4, %7
  store i64 %8, i64* %3
  %9 = load i64, i64* %3
  ret i64 %9
}
