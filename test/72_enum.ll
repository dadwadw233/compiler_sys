; ModuleID = 'sysyc'
source_filename = "./72_enum.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

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
  %3 = alloca i64
  store i64 0, i64* %0
  store i64 0, i64* %1
  store i64 0, i64* %2
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %4 = load i64, i64* %0
  %5 = icmp slt i64 %4, 21
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  ret i64 0

loop_expression1:                                 ; preds = %condition_cont, %loop_true
  %8 = load i64, i64* %1
  %9 = load i64, i64* %0
  %10 = sub i64 101, %9
  %11 = icmp slt i64 %8, %10
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %14 = load i64, i64* %0
  %15 = sub i64 100, %14
  %16 = load i64, i64* %1
  %17 = sub i64 %15, %16
  store i64 %17, i64* %2
  %18 = load i64, i64* %0
  %19 = mul i64 5, %18
  %20 = load i64, i64* %1
  %21 = mul i64 1, %20
  %22 = add i64 %19, %21
  %23 = load i64, i64* %2
  %24 = sdiv i64 %23, 2
  %25 = add i64 %22, %24
  %26 = icmp eq i64 %25, 100
  %27 = zext i1 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %condition_true, label %condition_cont

loop_cont3:                                       ; preds = %loop_expression1
  %29 = load i64, i64* %0
  %30 = add i64 %29, 1
  store i64 %30, i64* %0
  br label %loop_expression

condition_true:                                   ; preds = %loop_true2
  %31 = load i64, i64* %0
  call void @putint(i64 %31)
  %32 = load i64, i64* %1
  call void @putint(i64 %32)
  %33 = load i64, i64* %2
  call void @putint(i64 %33)
  store i64 10, i64* %3
  %34 = load i64, i64* %3
  call void @putch(i64 %34)
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true2
  %35 = load i64, i64* %1
  %36 = add i64 %35, 1
  store i64 %36, i64* %1
  br label %loop_expression1
}
