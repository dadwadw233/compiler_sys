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
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i64, i64* %5
  %9 = icmp sgt i64 %8, 1
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i64, i64* %6
  %14 = load i64, i64* %5
  %15 = getelementptr [5 x i64], [5 x i64]* @0, i64 0, i64 %14
  %16 = load i64, i64* %15
  %17 = add i64 %13, %16
  store i64 %17, i64* %6
  %18 = load i64, i64* %5
  %19 = sub i64 %18, 1
  store i64 %19, i64* %5
  br label %7

20:                                               ; preds = %7
  %21 = load i64, i64* %6
  ret i64 %21
}
