; ModuleID = 'sysyc'
source_filename = "./32_while_if_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @deepWhileBr(i64 %0, i64 %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = load i64, i64* %2
  %6 = load i64, i64* %3
  %7 = add i64 %5, %6
  store i64 %7, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %8 = load i64, i64* %4
  %9 = icmp slt i64 %8, 75
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %12 = alloca i64
  store i64 42, i64* %12
  %13 = load i64, i64* %4
  %14 = icmp slt i64 %13, 100
  %15 = zext i1 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %condition_true, label %condition_cont

loop_cont:                                        ; preds = %loop_expression
  %17 = load i64, i64* %4
  ret i64 %17

condition_true:                                   ; preds = %loop_true
  %18 = load i64, i64* %4
  %19 = load i64, i64* %12
  %20 = add i64 %18, %19
  store i64 %20, i64* %4
  %21 = load i64, i64* %4
  %22 = icmp sgt i64 %21, 99
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %condition_true1, label %condition_cont3

condition_cont:                                   ; preds = %condition_cont3, %loop_true
  br label %loop_expression

condition_true1:                                  ; preds = %condition_true
  %25 = alloca i64
  %26 = load i64, i64* %12
  %27 = mul i64 %26, 2
  store i64 %27, i64* %25
  br i1 true, label %condition_true4, label %condition_cont6

condition_cont3:                                  ; preds = %condition_cont6, %condition_true
  br label %condition_cont

condition_true4:                                  ; preds = %condition_true1
  %28 = load i64, i64* %25
  %29 = mul i64 %28, 2
  store i64 %29, i64* %4
  br label %condition_cont6

condition_cont6:                                  ; preds = %condition_true4, %condition_true1
  br label %condition_cont3
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 2, i64* %0
  %1 = load i64, i64* %0
  %2 = load i64, i64* %0
  %3 = call i64 @deepWhileBr(i64 %1, i64 %2)
  ret i64 %3
}
