; ModuleID = 'sysyc'
source_filename = "./21_suminput.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global [10 x i64] zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = call i64 @getint()
  store i64 %0, i64* @0
  %1 = load i64, i64* @0
  %2 = icmp sgt i64 %1, 10
  %3 = zext i1 %2 to i64
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 1

condition_cont:                                   ; preds = %entry
  %5 = alloca i64
  %6 = alloca i64
  store i64 0, i64* %6
  %7 = load i64, i64* %6
  store i64 %7, i64* %5
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont
  %8 = load i64, i64* %6
  %9 = load i64, i64* @0
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %13 = load i64, i64* %6
  %14 = getelementptr [10 x i64], [10 x i64]* @1, i64 0, i64 %13
  %15 = call i64 @getint()
  store i64 %15, i64* %14
  %16 = load i64, i64* %5
  %17 = load i64, i64* %6
  %18 = getelementptr [10 x i64], [10 x i64]* @1, i64 0, i64 %17
  %19 = load i64, i64* %18
  %20 = add i64 %16, %19
  store i64 %20, i64* %5
  %21 = load i64, i64* %6
  %22 = add i64 %21, 1
  store i64 %22, i64* %6
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %23 = load i64, i64* %5
  call void @putint(i64 %23)
  %24 = alloca i64
  store i64 10, i64* %24
  %25 = load i64, i64* %24
  call void @putch(i64 %25)
  %26 = load i64, i64* %5
  ret i64 %26
}
