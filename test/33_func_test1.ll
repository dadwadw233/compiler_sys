; ModuleID = 'sysyc'
source_filename = "./33_func_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @myFunc(i64 %0, i64 %1, i64 %2) {
entry:
  %3 = alloca i64
  store i64 %0, i64* %3
  %4 = alloca i64
  store i64 %1, i64* %4
  %5 = alloca i64
  store i64 %2, i64* %5
  store i64 2, i64* %3
  %6 = alloca i64
  store i64 0, i64* %6
  %7 = load i64, i64* %6
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %entry
  ret i64 0

12:                                               ; preds = %entry
  br label %13

13:                                               ; preds = %18, %12
  %14 = load i64, i64* %4
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %4
  %20 = sub i64 %19, 1
  store i64 %20, i64* %4
  br label %13

21:                                               ; preds = %13
  %22 = load i64, i64* %3
  %23 = load i64, i64* %4
  %24 = add i64 %22, %23
  ret i64 %24
}

define i64 @main() {
entry:
  store i64 3, i64* @0
  %0 = alloca i64
  %1 = call i64 @myFunc(i64 1, i64 2, i64 1)
  store i64 %1, i64* %0
  %2 = load i64, i64* @0
  %3 = load i64, i64* %0
  %4 = add i64 %2, %3
  ret i64 %4
}
