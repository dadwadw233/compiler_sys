; ModuleID = 'sysyc'
source_filename = "./45_equal_prior_logic.sy"
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
  store i64 10, i64* %0
  store i64 6, i64* %1
  store i64 4, i64* %2
  store i64 5, i64* %3
  %4 = alloca i64
  %5 = load i64, i64* %1
  %6 = load i64, i64* %2
  %7 = add i64 %5, %6
  %8 = load i64, i64* %0
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  %12 = load i64, i64* %3
  %13 = load i64, i64* %0
  %14 = sdiv i64 %13, 2
  %15 = icmp ne i64 %12, %14
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  %18 = and i1 %11, %17
  br i1 %18, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  %19 = load i64, i64* %1
  %20 = load i64, i64* %2
  %21 = load i64, i64* %3
  %22 = sdiv i64 %20, %21
  %23 = mul i64 %22, 2
  %24 = add i64 %19, %23
  store i64 %24, i64* %4
  %25 = load i64, i64* %4
  call void @putint(i64 %25)
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %entry
  %26 = load i64, i64* %2
  %27 = icmp slt i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = icmp ne i64 %28, 0
  %30 = load i64, i64* %0
  %31 = load i64, i64* %2
  %32 = sub i64 %30, %31
  %33 = load i64, i64* %1
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  %37 = load i64, i64* %0
  %38 = load i64, i64* %3
  %39 = mul i64 %38, 2
  %40 = icmp ne i64 %37, %39
  %41 = zext i1 %40 to i64
  %42 = icmp ne i64 %41, 0
  %43 = and i1 %36, %42
  %44 = or i1 %29, %43
  br i1 %44, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %condition_cont
  store i64 1, i64* %4
  %45 = load i64, i64* %4
  call void @putint(i64 %45)
  br label %condition_cont2

condition_cont2:                                  ; preds = %condition_true1, %condition_cont
  ret i64 0
}
