; ModuleID = 'sysyc'
source_filename = "./19_neg_expr.sy"
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
  %0 = call i64 @getint()
  store i64 %0, i64* @0
  %1 = call i64 @getint()
  store i64 %1, i64* @1
  %2 = alloca i64
  %3 = load i64, i64* @0
  %4 = load i64, i64* @1
  %5 = add i64 %3, %4
  %6 = sub i64 0, %5
  store i64 %6, i64* %2
  %7 = load i64, i64* %2
  call void @putint(i64 %7)
  ret i64 0
}
