; ModuleID = 'sysyc'
source_filename = "./15_equal.sy"
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
  %2 = load i64, i64* @0
  %3 = load i64, i64* @1
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %entry
  ret i64 1

8:                                                ; preds = %entry
  ret i64 0
}
