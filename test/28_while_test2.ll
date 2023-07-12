; ModuleID = 'sysyc'
source_filename = "./28_while_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @FourWhile() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = alloca i64
  %2 = alloca i64
  store i64 6, i64* %1
  store i64 7, i64* %2
  %3 = alloca i64
  store i64 10, i64* %3
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %4 = load i64, i64* %0
  %5 = icmp slt i64 %4, 20
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %8 = load i64, i64* %0
  %9 = add i64 %8, 3
  store i64 %9, i64* %0
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  %10 = load i64, i64* %0
  %11 = load i64, i64* %1
  %12 = load i64, i64* %3
  %13 = add i64 %11, %12
  %14 = add i64 %10, %13
  %15 = load i64, i64* %2
  %16 = add i64 %14, %15
  ret i64 %16

loop_expression1:                                 ; preds = %loop_cont6, %loop_true
  %17 = load i64, i64* %1
  %18 = icmp slt i64 %17, 10
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %21 = load i64, i64* %1
  %22 = add i64 %21, 1
  store i64 %22, i64* %1
  br label %loop_expression4

loop_cont3:                                       ; preds = %loop_expression1
  %23 = load i64, i64* %1
  %24 = sub i64 %23, 2
  store i64 %24, i64* %1
  br label %loop_expression

loop_expression4:                                 ; preds = %loop_cont9, %loop_true2
  %25 = load i64, i64* %2
  %26 = icmp eq i64 %25, 7
  %27 = zext i1 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %29 = load i64, i64* %2
  %30 = sub i64 %29, 1
  store i64 %30, i64* %2
  br label %loop_expression7

loop_cont6:                                       ; preds = %loop_expression4
  %31 = load i64, i64* %2
  %32 = add i64 %31, 1
  store i64 %32, i64* %2
  br label %loop_expression1

loop_expression7:                                 ; preds = %loop_true8, %loop_true5
  %33 = load i64, i64* %3
  %34 = icmp slt i64 %33, 20
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %37 = load i64, i64* %3
  %38 = add i64 %37, 3
  store i64 %38, i64* %3
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  %39 = load i64, i64* %3
  %40 = sub i64 %39, 1
  store i64 %40, i64* %3
  br label %loop_expression4
}

define i64 @main() {
entry:
  %0 = call i64 @FourWhile()
  ret i64 %0
}
