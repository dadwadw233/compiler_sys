; ModuleID = 'sysyc'
source_filename = "./64_alpha_count.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca [500 x i64]
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  store i64 0, i64* %3
  store i64 0, i64* %2
  store i64 0, i64* %1
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %4 = load i64, i64* %1
  %5 = icmp ne i64 %4, 10
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %8 = call i64 @getch()
  store i64 %8, i64* %1
  %9 = load i64, i64* %1
  %10 = icmp sgt i64 %9, 40
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  %13 = load i64, i64* %1
  %14 = icmp slt i64 %13, 91
  %15 = zext i1 %14 to i64
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %12, %16
  %18 = load i64, i64* %1
  %19 = icmp sgt i64 %18, 96
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  %22 = load i64, i64* %1
  %23 = icmp slt i64 %22, 123
  %24 = zext i1 %23 to i64
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %21, %25
  %27 = or i1 %17, %26
  br i1 %27, label %condition_true, label %condition_cont

loop_cont:                                        ; preds = %loop_expression
  %28 = load i64, i64* %3
  call void @putint(i64 %28)
  ret i64 0

condition_true:                                   ; preds = %loop_true
  %29 = load i64, i64* %3
  %30 = add i64 %29, 1
  store i64 %30, i64* %3
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true
  %31 = load i64, i64* %2
  %32 = add i64 %31, 1
  store i64 %32, i64* %2
  br label %loop_expression
}
