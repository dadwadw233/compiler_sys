; ModuleID = 'sysyc'
source_filename = "./84_palindrome_number.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @palindrome(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca [4 x i64]
  %3 = alloca i64
  %4 = alloca i64
  store i64 0, i64* %3
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %5 = load i64, i64* %3
  %6 = icmp slt i64 %5, 4
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %9 = load i64, i64* %3
  %10 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 %9
  %11 = load i64, i64* %1
  %12 = srem i64 %11, 10
  store i64 %12, i64* %10
  %13 = load i64, i64* %1
  %14 = sdiv i64 %13, 10
  store i64 %14, i64* %1
  %15 = load i64, i64* %3
  %16 = add i64 %15, 1
  store i64 %16, i64* %3
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %17 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %18 = load i64, i64* %17
  %19 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 3
  %20 = load i64, i64* %19
  %21 = icmp eq i64 %18, %20
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  %24 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 1
  %25 = load i64, i64* %24
  %26 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 2
  %27 = load i64, i64* %26
  %28 = icmp eq i64 %25, %27
  %29 = zext i1 %28 to i64
  %30 = icmp ne i64 %29, 0
  %31 = and i1 %23, %30
  br i1 %31, label %condition_true, label %false

condition_true:                                   ; preds = %loop_cont
  store i64 1, i64* %4
  br label %condition_cont

false:                                            ; preds = %loop_cont
  store i64 0, i64* %4
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  %32 = load i64, i64* %4
  ret i64 %32
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 1221, i64* %0
  %1 = alloca i64
  %2 = load i64, i64* %0
  %3 = call i64 @palindrome(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  %5 = icmp eq i64 %4, 1
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %condition_true, label %false

condition_true:                                   ; preds = %entry
  %8 = load i64, i64* %0
  call void @putint(i64 %8)
  br label %condition_cont

false:                                            ; preds = %entry
  store i64 0, i64* %1
  %9 = load i64, i64* %1
  call void @putint(i64 %9)
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  store i64 10, i64* %1
  %10 = load i64, i64* %1
  call void @putch(i64 %10)
  ret i64 0
}
