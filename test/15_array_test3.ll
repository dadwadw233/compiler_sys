; ModuleID = 'sysyc'
source_filename = "./15_array_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [5 x [5 x i64]] [[5 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5], [5 x i64] zeroinitializer, [5 x i64] zeroinitializer, [5 x i64] zeroinitializer, [5 x i64] zeroinitializer]

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @func(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = alloca i64
  store i64 0, i64* %3
  %4 = alloca i64
  store i64 0, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %5 = load i64, i64* %2
  %6 = icmp slt i64 %5, 5
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  %9 = load i64, i64* %4
  ret i64 %9

loop_expression1:                                 ; preds = %loop_true2, %loop_true
  %10 = load i64, i64* %3
  %11 = icmp slt i64 %10, 5
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %14 = load i64, i64* %4
  %15 = load i64*, i64** %1
  %16 = load i64, i64* %2
  %17 = load i64, i64* %3
  %18 = getelementptr i64, i64* %15, i64 %17
  %19 = load i64, i64* %18
  %20 = add i64 %14, %19
  store i64 %20, i64* %4
  %21 = load i64, i64* %3
  %22 = add i64 %21, 1
  store i64 %22, i64* %3
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  %23 = load i64, i64* %2
  %24 = add i64 %23, 1
  store i64 %24, i64* %2
  br label %loop_expression
}

define i64 @main() {
entry:
  %0 = call i64 @func(i64* getelementptr inbounds ([5 x [5 x i64]], [5 x [5 x i64]]* @0, i64 0, i64 0, i64 0))
  call void @putint(i64 %0)
  ret i64 0
}
