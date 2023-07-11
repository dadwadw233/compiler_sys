; ModuleID = 'sysyc'
source_filename = "./33_func_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @myFunc(i64 %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64
  store i64 %0, i64* %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  store i64 2, i64* %3
  %6 = alloca i64
  store i64 0, i64* %6
  %7 = load i64, i64* %6
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 0

condition_cont:                                   ; preds = %entry
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont
  %11 = load i64, i64* %4
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %15 = load i64, i64* %4
  %16 = sub i64 %15, 1
  store i64 %16, i64* %4
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %17 = load i64, i64* %3
  %18 = load i64, i64* %4
  %19 = add i64 %17, %18
  ret i64 %19
}

define i64 @main() {
entry:
  store i64 3, i64* @0
  %0 = alloca i64
  %1 = call i64 @myFunc(i64 1, i64 2, i64 1)
  store i64 %1, i64* %0
  %2 = load i64, i64* @0
  %3 = load i64, i64* %0
  %4 = add i64 %2, %3
  ret i64 %4
}
