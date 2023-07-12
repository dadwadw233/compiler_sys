; ModuleID = 'sysyc'
source_filename = "./60_while_fibonacci.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @fib(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i64 0, i64* %2
  store i64 1, i64* %3
  %5 = load i64, i64* %1
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 0

condition_cont:                                   ; preds = %entry
  %9 = load i64, i64* %1
  %10 = icmp eq i64 %9, 1
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %condition_cont
  ret i64 1

condition_cont2:                                  ; preds = %condition_cont
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont2
  %13 = load i64, i64* %1
  %14 = icmp sgt i64 %13, 1
  %15 = zext i1 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %17 = load i64, i64* %2
  %18 = load i64, i64* %3
  %19 = add i64 %17, %18
  store i64 %19, i64* %4
  %20 = load i64, i64* %3
  store i64 %20, i64* %2
  %21 = load i64, i64* %4
  store i64 %21, i64* %3
  %22 = load i64, i64* %1
  %23 = sub i64 %22, 1
  store i64 %23, i64* %1
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %24 = load i64, i64* %4
  ret i64 %24
}

define i64 @main() {
entry:
  %0 = call i64 @getint()
  store i64 %0, i64* @0
  %1 = alloca i64
  %2 = load i64, i64* @0
  %3 = call i64 @fib(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  ret i64 %4
}
