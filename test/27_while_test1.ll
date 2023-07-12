; ModuleID = 'sysyc'
source_filename = "./27_while_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @doubleWhile() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = alloca i64
  store i64 7, i64* %1
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %2 = load i64, i64* %0
  %3 = icmp slt i64 %2, 100
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %6 = load i64, i64* %0
  %7 = add i64 %6, 30
  store i64 %7, i64* %0
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  %8 = load i64, i64* %1
  ret i64 %8

loop_expression1:                                 ; preds = %loop_true2, %loop_true
  %9 = load i64, i64* %1
  %10 = icmp slt i64 %9, 100
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %13 = load i64, i64* %1
  %14 = add i64 %13, 6
  store i64 %14, i64* %1
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  %15 = load i64, i64* %1
  %16 = sub i64 %15, 100
  store i64 %16, i64* %1
  br label %loop_expression
}

define i64 @main() {
entry:
  %0 = call i64 @doubleWhile()
  ret i64 %0
}
