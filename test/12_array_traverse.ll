; ModuleID = 'sysyc'
source_filename = "./12_array_traverse.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [3 x [4 x i64]] zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 0, i64* %0
  %1 = alloca i64
  store i64 0, i64* %1
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %2 = load i64, i64* %0
  %3 = icmp sle i64 %2, 5
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %6 = alloca i64
  %7 = load i64, i64* %0
  store i64 %7, i64* %6
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  ret i64 0

loop_expression1:                                 ; preds = %condition_cont, %loop_true
  %8 = load i64, i64* %6
  %9 = icmp sge i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %12 = load i64, i64* %6
  %13 = icmp slt i64 %12, 4
  %14 = zext i1 %13 to i64
  %15 = icmp ne i64 %14, 0
  %16 = load i64, i64* %0
  %17 = load i64, i64* %6
  %18 = sub i64 %16, %17
  %19 = icmp slt i64 %18, 3
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  %22 = and i1 %15, %21
  br i1 %22, label %condition_true, label %condition_cont

loop_cont3:                                       ; preds = %loop_expression1
  %23 = load i64, i64* %0
  %24 = add i64 %23, 1
  store i64 %24, i64* %0
  br label %loop_expression

condition_true:                                   ; preds = %loop_true2
  %25 = load i64, i64* %0
  %26 = load i64, i64* %6
  %27 = sub i64 %25, %26
  %28 = load i64, i64* %6
  %29 = getelementptr [3 x [4 x i64]], [3 x [4 x i64]]* @0, i64 0, i64 %28
  %30 = load i64, i64* %1
  store i64 %30, [4 x i64]* %29
  store i64 1, i64* %1
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true2
  %31 = load i64, i64* %6
  %32 = sub i64 %31, 1
  store i64 %32, i64* %6
  br label %loop_expression1
}
