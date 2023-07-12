; ModuleID = 'sysyc'
source_filename = "./82_int_split.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @split(i64 %0, i64* %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64*
  store i64* %1, i64** %3
  %4 = alloca i64
  %5 = load i64, i64* @0
  %6 = sub i64 %5, 1
  store i64 %6, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %7 = load i64, i64* %4
  %8 = icmp ne i64 %7, -1
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %11 = load i64*, i64** %3
  %12 = load i64, i64* %4
  %13 = getelementptr i64, i64* %11, i64 %12
  %14 = load i64, i64* %2
  %15 = srem i64 %14, 10
  store i64 %15, i64* %13
  %16 = load i64, i64* %2
  %17 = sdiv i64 %16, 10
  store i64 %17, i64* %2
  %18 = load i64, i64* %4
  %19 = sub i64 %18, 1
  store i64 %19, i64* %4
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}

define i64 @main() {
entry:
  store i64 4, i64* @0
  store i64 10, i64* @1
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca [4 x i64]
  store i64 1478, i64* %1
  %3 = load i64, i64* %1
  %4 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %5 = call i64 @split(i64 %3, i64* %4)
  store i64 %5, i64* %1
  %6 = alloca i64
  store i64 0, i64* %0
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %7 = load i64, i64* %0
  %8 = icmp slt i64 %7, 4
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %11 = load i64, i64* %0
  %12 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 %11
  %13 = load i64, i64* %12
  store i64 %13, i64* %6
  %14 = load i64, i64* %6
  call void @putint(i64 %14)
  %15 = load i64, i64* @1
  call void @putch(i64 %15)
  %16 = load i64, i64* %0
  %17 = add i64 %16, 1
  store i64 %17, i64* %0
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}
