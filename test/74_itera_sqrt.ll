; ModuleID = 'sysyc'
source_filename = "./74_itera_sqrt.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @fsqrt(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = alloca i64
  %4 = load i64, i64* %1
  %5 = sdiv i64 %4, 2
  store i64 %5, i64* %3
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %6 = load i64, i64* %2
  %7 = load i64, i64* %3
  %8 = sub i64 %6, %7
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %12 = load i64, i64* %3
  store i64 %12, i64* %2
  %13 = load i64, i64* %2
  %14 = load i64, i64* %1
  %15 = load i64, i64* %2
  %16 = sdiv i64 %14, %15
  %17 = add i64 %13, %16
  store i64 %17, i64* %3
  %18 = load i64, i64* %3
  %19 = sdiv i64 %18, 2
  store i64 %19, i64* %3
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %20 = load i64, i64* %3
  ret i64 %20
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 400, i64* %0
  %1 = alloca i64
  %2 = load i64, i64* %0
  %3 = call i64 @fsqrt(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  call void @putint(i64 %4)
  store i64 10, i64* %1
  %5 = load i64, i64* %1
  call void @putch(i64 %5)
  ret i64 0
}
