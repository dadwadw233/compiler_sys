; ModuleID = 'sysyc'
source_filename = "./76_int_factor_sum.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @factor(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca i64
  %3 = alloca i64
  store i64 0, i64* %3
  store i64 1, i64* %2
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %4 = load i64, i64* %2
  %5 = load i64, i64* %1
  %6 = add i64 %5, 1
  %7 = icmp slt i64 %4, %6
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %10 = load i64, i64* %1
  %11 = load i64, i64* %2
  %12 = srem i64 %10, %11
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %condition_true, label %condition_cont

loop_cont:                                        ; preds = %loop_expression
  %16 = load i64, i64* %3
  ret i64 %16

condition_true:                                   ; preds = %loop_true
  %17 = load i64, i64* %3
  %18 = load i64, i64* %2
  %19 = add i64 %17, %18
  store i64 %19, i64* %3
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true
  %20 = load i64, i64* %2
  %21 = add i64 %20, 1
  store i64 %21, i64* %2
  br label %loop_expression
}

define i64 @main() {
entry:
  store i64 4, i64* @0
  store i64 10, i64* @1
  %0 = alloca i64
  %1 = alloca i64
  store i64 1478, i64* %1
  %2 = alloca i64
  %3 = load i64, i64* %1
  %4 = call i64 @factor(i64 %3)
  ret i64 %4
}
