; ModuleID = 'sysyc'
source_filename = "./86_bin_search.sy"
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
  br label %loop_expression1

loop_expression1:                                 ; preds = %condition_cont, %loop_cont
  %25 = load i64, i64* %16
  %26 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %25
  %27 = load i64, i64* %26
  %28 = load i64, i64* %13
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = icmp ne i64 %30, 0
  %32 = load i64, i64* %15
  %33 = load i64, i64* %14
  %34 = icmp slt i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  %37 = and i1 %31, %36
  br i1 %37, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %38 = load i64, i64* %14
  %39 = load i64, i64* %15
  %40 = add i64 %38, %39
  %41 = sdiv i64 %40, 2
  store i64 %41, i64* %16
  %42 = load i64, i64* %13
  %43 = load i64, i64* %16
  %44 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %43
  %45 = load i64, i64* %44
  %46 = icmp slt i64 %42, %45
  %47 = zext i1 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %condition_true, label %false

loop_cont3:                                       ; preds = %loop_expression1
  %49 = load i64, i64* %13
  %50 = load i64, i64* %16
  %51 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %50
  %52 = load i64, i64* %51
  %53 = icmp eq i64 %49, %52
  %54 = zext i1 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %condition_true4, label %false5

condition_true:                                   ; preds = %loop_true2
  %56 = load i64, i64* %16
  %57 = sub i64 %56, 1
  store i64 %57, i64* %14
  br label %condition_cont

false:                                            ; preds = %loop_true2
  %58 = load i64, i64* %16
  %59 = add i64 %58, 1
  store i64 %59, i64* %15
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  br label %loop_expression1

condition_true4:                                  ; preds = %loop_cont3
  %60 = load i64, i64* %13
  call void @putint(i64 %60)
  br label %condition_cont6

false5:                                           ; preds = %loop_cont3
  store i64 0, i64* %13
  %61 = load i64, i64* %13
  call void @putint(i64 %61)
  br label %condition_cont6

condition_cont6:                                  ; preds = %false5, %condition_true4
  store i64 10, i64* %13
  %62 = load i64, i64* %13
  call void @putch(i64 %62)
  ret i64 0
}
