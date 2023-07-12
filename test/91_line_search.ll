; ModuleID = 'sysyc'
source_filename = "./91_line_search.sy"
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
  %2 = alloca [10 x i64]
  store i64 0, i64* %1
  store i64 0, i64* %0
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %3 = load i64, i64* %0
  %4 = icmp slt i64 %3, 10
  %5 = zext i1 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %7 = load i64, i64* %0
  %8 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %7
  %9 = load i64, i64* %0
  %10 = add i64 %9, 1
  store i64 %10, i64* %8
  %11 = load i64, i64* %0
  %12 = add i64 %11, 1
  store i64 %12, i64* %0
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  store i64 10, i64* %17
  %18 = call i64 @getint()
  store i64 %18, i64* %13
  %19 = load i64, i64* %17
  %20 = sub i64 %19, 1
  store i64 %20, i64* %14
  store i64 0, i64* %15
  %21 = load i64, i64* %14
  %22 = load i64, i64* %15
  %23 = add i64 %21, %22
  %24 = sdiv i64 %23, 2
  store i64 %24, i64* %16
  %25 = alloca i64
  store i64 0, i64* %25
  store i64 0, i64* %0
  %26 = alloca i64
  store i64 0, i64* %26
  br label %loop_expression1

loop_expression1:                                 ; preds = %condition_cont, %loop_cont
  %27 = load i64, i64* %0
  %28 = icmp slt i64 %27, 10
  %29 = zext i1 %28 to i64
  %30 = icmp ne i64 %29, 0
  %31 = load i64, i64* %25
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = icmp ne i64 %33, 0
  %35 = and i1 %30, %34
  br i1 %35, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %36 = load i64, i64* %0
  %37 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %36
  %38 = load i64, i64* %37
  %39 = load i64, i64* %13
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %condition_true, label %condition_cont

loop_cont3:                                       ; preds = %loop_expression1
  %43 = load i64, i64* %25
  %44 = icmp eq i64 %43, 1
  %45 = zext i1 %44 to i64
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %condition_true4, label %false

condition_true:                                   ; preds = %loop_true2
  store i64 1, i64* %25
  %47 = load i64, i64* %0
  store i64 %47, i64* %26
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %loop_true2
  %48 = load i64, i64* %0
  %49 = add i64 %48, 1
  store i64 %49, i64* %0
  br label %loop_expression1

condition_true4:                                  ; preds = %loop_cont3
  %50 = load i64, i64* %26
  call void @putint(i64 %50)
  br label %condition_cont5

false:                                            ; preds = %loop_cont3
  store i64 0, i64* %13
  %51 = load i64, i64* %13
  call void @putint(i64 %51)
  br label %condition_cont5

condition_cont5:                                  ; preds = %false, %condition_true4
  store i64 10, i64* %13
  %52 = load i64, i64* %13
  call void @putch(i64 %52)
  ret i64 0
}
