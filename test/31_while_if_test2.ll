; ModuleID = 'sysyc'
source_filename = "./31_while_if_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @ifWhile() {
entry:
  %0 = alloca i64
  store i64 0, i64* %0
  %1 = alloca i64
  store i64 3, i64* %1
  %2 = load i64, i64* %0
  %3 = icmp eq i64 %2, 5
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %condition_true, label %false

condition_true:                                   ; preds = %entry
  br label %loop_expression

false:                                            ; preds = %entry
  br label %loop_expression1

condition_cont:                                   ; preds = %loop_cont3, %loop_cont
  %6 = load i64, i64* %1
  ret i64 %6

loop_expression:                                  ; preds = %loop_true, %condition_true
  %7 = load i64, i64* %1
  %8 = icmp eq i64 %7, 2
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %11 = load i64, i64* %1
  %12 = add i64 %11, 2
  store i64 %12, i64* %1
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %13 = load i64, i64* %1
  %14 = add i64 %13, 25
  store i64 %14, i64* %1
  br label %condition_cont

loop_expression1:                                 ; preds = %loop_true2, %false
  %15 = load i64, i64* %0
  %16 = icmp slt i64 %15, 5
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %19 = load i64, i64* %1
  %20 = mul i64 %19, 2
  store i64 %20, i64* %1
  %21 = load i64, i64* %0
  %22 = add i64 %21, 1
  store i64 %22, i64* %0
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  br label %condition_cont
}

define i64 @main() {
entry:
  %0 = call i64 @ifWhile()
  ret i64 %0
}
