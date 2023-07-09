; ModuleID = 'sysyc'
source_filename = "./76_int_factor_sum.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @factor(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = alloca i64
  %3 = alloca i64
  store i64 0, i64* %3
  store i64 1, i64* %2
  br label %4

4:                                                ; preds = %24, %entry
  %5 = load i64, i64* %2
  %6 = load i64, i64* %1
  %7 = add i64 %6, 1
  %8 = icmp slt i64 %5, %7
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load i64, i64* %1
  %13 = load i64, i64* %2
  %14 = srem i64 %12, %13
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %20, label %24

18:                                               ; preds = %4
  %19 = load i64, i64* %3
  ret i64 %19

20:                                               ; preds = %11
  %21 = load i64, i64* %3
  %22 = load i64, i64* %2
  %23 = add i64 %21, %22
  store i64 %23, i64* %3
  br label %24

24:                                               ; preds = %20, %11
  %25 = load i64, i64* %2
  %26 = add i64 %25, 1
  store i64 %26, i64* %2
  br label %4
}

define i64 @main() {
entry:
  store i64 4, i64* @0
  store i64 10, i64* @1
  %0 = alloca i64
  %1 = alloca i64
  store i64 1478, i64* %1
  %2 = alloca i64
  %3 = load i64, i64* %1
  %4 = call i64 @factor(i64 %3)
  ret i64 %4
}
