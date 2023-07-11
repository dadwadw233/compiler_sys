; ModuleID = 'sysyc'
source_filename = "./03_var_defn2.sy"
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
  store i64 5, i64* @1
  %0 = alloca i64
  %1 = load i64, i64* @0
  %2 = mul i64 %1, 2
  %3 = load i64, i64* @1
  %4 = add i64 %2, %3
  %5 = add i64 %4, 3
  store i64 %5, i64* %0
  %6 = load i64, i64* %0
  ret i64 %6
}
