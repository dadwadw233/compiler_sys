; ModuleID = 'sysyc'
source_filename = "./13_array_traverse2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [3 x [3 x [3 x i64]]] zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  store i64 0, i64* %0
  store i64 0, i64* %1
  store i64 0, i64* %2
  %3 = alloca i64
  store i64 0, i64* %3
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %4 = load i64, i64* %0
  %5 = icmp slt i64 %4, 3
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  ret i64 0

loop_expression1:                                 ; preds = %loop_cont6, %loop_true
  %8 = load i64, i64* %1
  %9 = icmp slt i64 %8, 3
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  br label %loop_expression4

loop_cont3:                                       ; preds = %loop_expression1
  %12 = load i64, i64* %0
  %13 = add i64 %12, 1
  store i64 %13, i64* %0
  br label %loop_expression

loop_expression4:                                 ; preds = %loop_true5, %loop_true2
  %14 = load i64, i64* %2
  %15 = icmp slt i64 %14, 3
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %18 = load i64, i64* %0
  %19 = load i64, i64* %1
  %20 = load i64, i64* %2
  %21 = getelementptr [3 x [3 x [3 x i64]]], [3 x [3 x [3 x i64]]]* @0, i64 0, i64 %20
  %22 = load i64, i64* %3
  store i64 %22, [3 x [3 x i64]]* %21
  %23 = load i64, i64* %3
  %24 = add i64 %23, 1
  store i64 %24, i64* %3
  %25 = load i64, i64* %2
  %26 = add i64 %25, 1
  store i64 %26, i64* %2
  br label %loop_expression4

loop_cont6:                                       ; preds = %loop_expression4
  %27 = load i64, i64* %1
  %28 = add i64 %27, 1
  store i64 %28, i64* %1
  br label %loop_expression1
}
