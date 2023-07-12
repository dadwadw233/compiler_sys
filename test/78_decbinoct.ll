; ModuleID = 'sysyc'
source_filename = "./78_decbinoct.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @dec2bin(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  store i64 0, i64* %2
  store i64 1, i64* %3
  %6 = load i64, i64* %1
  store i64 %6, i64* %5
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %7 = load i64, i64* %5
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %11 = load i64, i64* %5
  %12 = srem i64 %11, 2
  store i64 %12, i64* %4
  %13 = load i64, i64* %3
  %14 = load i64, i64* %4
  %15 = mul i64 %13, %14
  %16 = load i64, i64* %2
  %17 = add i64 %15, %16
  store i64 %17, i64* %2
  %18 = load i64, i64* %3
  %19 = mul i64 %18, 10
  store i64 %19, i64* %3
  %20 = load i64, i64* %5
  %21 = sdiv i64 %20, 2
  store i64 %21, i64* %5
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %22 = load i64, i64* %2
  ret i64 %22
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 400, i64* %0
  %1 = alloca i64
  %2 = load i64, i64* %0
  %3 = call i64 @dec2bin(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  call void @putint(i64 %4)
  store i64 10, i64* %1
  %5 = load i64, i64* %1
  call void @putch(i64 %5)
  ret i64 0
}
