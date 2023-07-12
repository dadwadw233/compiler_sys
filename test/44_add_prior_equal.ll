; ModuleID = 'sysyc'
source_filename = "./44_add_prior_equal.sy"
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
  store i64 1, i64* %0
  store i64 4, i64* %1
  store i64 28, i64* %2
  %3 = alloca i64
  %4 = load i64, i64* %2
  %5 = load i64, i64* %0
  %6 = add i64 %4, %5
  %7 = load i64, i64* %1
  %8 = icmp ne i64 %6, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  %11 = load i64, i64* %2
  %12 = load i64, i64* %1
  %13 = sub i64 0, %12
  %14 = srem i64 %11, %13
  store i64 %14, i64* %3
  %15 = load i64, i64* %3
  call void @putint(i64 %15)
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %entry
  %16 = load i64, i64* %1
  %17 = load i64, i64* %2
  %18 = sub i64 %16, %17
  %19 = load i64, i64* %0
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %condition_cont
  %23 = load i64, i64* %2
  %24 = load i64, i64* %1
  %25 = srem i64 %23, %24
  %26 = load i64, i64* %1
  %27 = add i64 %25, %26
  store i64 %27, i64* %3
  %28 = load i64, i64* %3
  call void @putint(i64 %28)
  br label %condition_cont2

condition_cont2:                                  ; preds = %condition_true1, %condition_cont
  ret i64 0
}
