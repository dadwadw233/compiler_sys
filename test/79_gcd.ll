; ModuleID = 'sysyc'
source_filename = "./79_gcd.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @gcd(i64 %0, i64 %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = load i64, i64* %2
  %7 = load i64, i64* %3
  %8 = icmp slt i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  %11 = load i64, i64* %2
  store i64 %11, i64* %4
  %12 = load i64, i64* %3
  store i64 %12, i64* %2
  %13 = load i64, i64* %4
  store i64 %13, i64* %3
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %entry
  %14 = load i64, i64* %2
  %15 = load i64, i64* %3
  %16 = srem i64 %14, %15
  store i64 %16, i64* %5
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont
  %17 = load i64, i64* %5
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %21 = load i64, i64* %3
  store i64 %21, i64* %2
  %22 = load i64, i64* %5
  store i64 %22, i64* %3
  %23 = load i64, i64* %2
  %24 = load i64, i64* %3
  %25 = srem i64 %23, %24
  store i64 %25, i64* %5
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %26 = load i64, i64* %3
  ret i64 %26
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = call i64 @getint()
  store i64 %2, i64* %0
  %3 = call i64 @getint()
  store i64 %3, i64* %1
  %4 = load i64, i64* %0
  %5 = load i64, i64* %1
  %6 = call i64 @gcd(i64 %4, i64 %5)
  ret i64 %6
}
