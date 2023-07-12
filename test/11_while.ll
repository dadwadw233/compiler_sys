; ModuleID = 'sysyc'
source_filename = "./11_while.sy"
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
  store i64 0, i64* @1
  store i64 3, i64* @0
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %0 = load i64, i64* @0
  %1 = icmp sgt i64 %0, 0
  %2 = zext i1 %1 to i64
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %4 = load i64, i64* @1
  %5 = load i64, i64* @0
  %6 = add i64 %4, %5
  store i64 %6, i64* @1
  %7 = load i64, i64* @0
  %8 = sub i64 %7, 1
  store i64 %8, i64* @0
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %9 = load i64, i64* @1
  ret i64 %9
}
