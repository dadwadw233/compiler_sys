; ModuleID = 'sysyc'
source_filename = "./30_while_if_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @whileIf() {
entry:
  %0 = alloca i64
  store i64 0, i64* %0
  %1 = alloca i64
  store i64 0, i64* %1
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %2 = load i64, i64* %0
  %3 = icmp slt i64 %2, 100
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %6 = load i64, i64* %0
  %7 = icmp eq i64 %6, 5
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %condition_true, label %false

loop_cont:                                        ; preds = %loop_expression
  %10 = load i64, i64* %1
  ret i64 %10

condition_true:                                   ; preds = %loop_true
  store i64 25, i64* %1
  br label %condition_cont

false:                                            ; preds = %loop_true
  %11 = load i64, i64* %0
  %12 = icmp eq i64 %11, 10
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %condition_true1, label %false2

condition_cont:                                   ; preds = %condition_cont3, %condition_true
  %15 = load i64, i64* %0
  %16 = add i64 %15, 1
  store i64 %16, i64* %0
  br label %loop_expression

condition_true1:                                  ; preds = %false
  store i64 42, i64* %1
  br label %condition_cont3

false2:                                           ; preds = %false
  %17 = load i64, i64* %0
  %18 = mul i64 %17, 2
  store i64 %18, i64* %1
  br label %condition_cont3

condition_cont3:                                  ; preds = %false2, %condition_true1
  br label %condition_cont
}

define i64 @main() {
entry:
  %0 = call i64 @whileIf()
  ret i64 %0
}
