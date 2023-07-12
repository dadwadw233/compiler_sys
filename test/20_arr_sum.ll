; ModuleID = 'sysyc'
source_filename = "./20_arr_sum.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [5 x i64] zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = call i64 @getint()
  store i64 %0, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @0, i64 0, i64 0)
  %1 = call i64 @getint()
  store i64 %1, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @0, i64 0, i64 1)
  %2 = call i64 @getint()
  store i64 %2, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @0, i64 0, i64 2)
  %3 = call i64 @getint()
  store i64 %3, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @0, i64 0, i64 3)
  %4 = call i64 @getint()
  store i64 %4, i64* getelementptr inbounds ([5 x i64], [5 x i64]* @0, i64 0, i64 4)
  %5 = alloca i64
  store i64 4, i64* %5
  %6 = alloca i64
  store i64 0, i64* %6
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %7 = load i64, i64* %5
  %8 = icmp sgt i64 %7, 1
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %11 = load i64, i64* %6
  %12 = load i64, i64* %5
  %13 = getelementptr [5 x i64], [5 x i64]* @0, i64 0, i64 %12
  %14 = load i64, i64* %13
  %15 = add i64 %11, %14
  store i64 %15, i64* %6
  %16 = load i64, i64* %5
  %17 = sub i64 %16, 1
  store i64 %17, i64* %5
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %18 = load i64, i64* %6
  ret i64 %18
}
