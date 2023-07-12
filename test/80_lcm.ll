; ModuleID = 'sysyc'
source_filename = "./80_lcm.sy"
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
  store i64 %6, i64* %4
  %7 = load i64, i64* %3
  store i64 %7, i64* %5
  %8 = alloca i64
  %9 = alloca i64
  %10 = load i64, i64* %2
  %11 = load i64, i64* %3
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  %15 = load i64, i64* %2
  store i64 %15, i64* %8
  %16 = load i64, i64* %3
  store i64 %16, i64* %2
  %17 = load i64, i64* %8
  store i64 %17, i64* %3
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %entry
  %18 = load i64, i64* %2
  %19 = load i64, i64* %3
  %20 = srem i64 %18, %19
  store i64 %20, i64* %9
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont
  %21 = load i64, i64* %9
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %25 = load i64, i64* %3
  store i64 %25, i64* %2
  %26 = load i64, i64* %9
  store i64 %26, i64* %3
  %27 = load i64, i64* %2
  %28 = load i64, i64* %3
  %29 = srem i64 %27, %28
  store i64 %29, i64* %9
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %30 = load i64, i64* %4
  %31 = load i64, i64* %5
  %32 = mul i64 %30, %31
  %33 = load i64, i64* %3
  %34 = sdiv i64 %32, %33
  ret i64 %34
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
