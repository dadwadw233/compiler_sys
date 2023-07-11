; ModuleID = 'sysyc'
source_filename = "./65_word_count.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @wc(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  store i64 0, i64* %5
  store i64 0, i64* %4
  store i64 0, i64* %6
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %7 = load i64, i64* %5
  %8 = load i64, i64* %3
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %12 = load i64*, i64** %2
  %13 = load i64, i64* %5
  %14 = getelementptr i64, i64* %12, i64 %13
  %15 = load i64, i64* %14
  %16 = icmp ne i64 %15, 32
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %condition_true, label %false

loop_cont:                                        ; preds = %loop_expression
  %19 = load i64, i64* %6
  ret i64 %19

condition_true:                                   ; preds = %loop_true
  %20 = load i64, i64* %4
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %condition_true1, label %condition_cont3

false:                                            ; preds = %loop_true
  store i64 0, i64* %4
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_cont3
  %24 = load i64, i64* %5
  %25 = add i64 %24, 1
  store i64 %25, i64* %5
  br label %loop_expression

condition_true1:                                  ; preds = %condition_true
  %26 = load i64, i64* %6
  %27 = add i64 %26, 1
  store i64 %27, i64* %6
  store i64 1, i64* %4
  br label %condition_cont3

condition_cont3:                                  ; preds = %condition_true1, %condition_true
  br label %condition_cont
}

define i64 @main() {
entry:
  %0 = alloca [500 x i64]
  %1 = alloca i64
  %2 = alloca i64
  store i64 0, i64* %2
  store i64 0, i64* %1
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %3 = load i64, i64* %1
  %4 = icmp ne i64 %3, 10
  %5 = zext i1 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %7 = call i64 @getch()
  store i64 %7, i64* %1
  %8 = load i64, i64* %2
  %9 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 %8
  %10 = load i64, i64* %1
  store i64 %10, i64* %9
  %11 = load i64, i64* %2
  %12 = add i64 %11, 1
  store i64 %12, i64* %2
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %13 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 0
  %14 = load i64, i64* %2
  %15 = call i64 @wc(i64* %13, i64 %14)
  store i64 %15, i64* %1
  %16 = load i64, i64* %1
  call void @putint(i64 %16)
  ret i64 0
}
