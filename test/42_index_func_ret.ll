; ModuleID = 'sysyc'
source_filename = "./42_index_func_ret.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @_getMaxOfAll(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  store i64 -999999, i64* %4
  %5 = load i64, i64* %3
  %6 = sub i64 %5, 1
  store i64 %6, i64* %3
  br label %7

7:                                                ; preds = %28, %entry
  %8 = load i64, i64* %3
  %9 = icmp sgt i64 %8, -1
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i64*, i64** %2
  %14 = load i64, i64* %3
  %15 = getelementptr i64, i64* %13, i64 %14
  %16 = load i64, i64* %15
  %17 = load i64, i64* %4
  %18 = icmp sgt i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %28

21:                                               ; preds = %7
  %22 = load i64, i64* %4
  ret i64 %22

23:                                               ; preds = %12
  %24 = load i64*, i64** %2
  %25 = load i64, i64* %3
  %26 = getelementptr i64, i64* %24, i64 %25
  %27 = load i64, i64* %26
  store i64 %27, i64* %4
  br label %28

28:                                               ; preds = %23, %12
  %29 = load i64, i64* %3
  %30 = sub i64 %29, 1
  store i64 %30, i64* %3
  br label %7
}

define i64 @main() {
entry:
  %0 = alloca [3 x i64]
  %1 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  store i64 -2, i64* %1
  %2 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 1
  store i64 2, i64* %2
  %3 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 2
  store i64 -7, i64* %3
  %4 = alloca i64
  %5 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  %6 = call i64 @_getMaxOfAll(i64* %5, i64 3)
  %7 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 %6
  %8 = load i64, i64* %7
  store i64 %8, i64* %4
  %9 = load i64, i64* %4
  call void @putint(i64 %9)
  ret i64 0
}
