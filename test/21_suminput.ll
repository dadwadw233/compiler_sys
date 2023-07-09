; ModuleID = 'sysyc'
source_filename = "./21_suminput.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global [10 x i64] zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = call i64 @getint()
  store i64 %0, i64* @0
  %1 = load i64, i64* @0
  %2 = icmp sgt i64 %1, 10
  %3 = zext i1 %2 to i64
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %entry
  ret i64 1

6:                                                ; preds = %entry
  %7 = alloca i64
  %8 = alloca i64
  store i64 0, i64* %8
  %9 = load i64, i64* %8
  store i64 %9, i64* %7
  br label %10

10:                                               ; preds = %16, %6
  %11 = load i64, i64* %8
  %12 = load i64, i64* @0
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load i64, i64* %8
  %18 = getelementptr [10 x i64], [10 x i64]* @1, i64 0, i64 %17
  %19 = call i64 @getint()
  store i64 %19, i64* %18
  %20 = load i64, i64* %7
  %21 = load i64, i64* %8
  %22 = getelementptr [10 x i64], [10 x i64]* @1, i64 0, i64 %21
  %23 = load i64, i64* %22
  %24 = add i64 %20, %23
  store i64 %24, i64* %7
  %25 = load i64, i64* %8
  %26 = add i64 %25, 1
  store i64 %26, i64* %8
  br label %10

27:                                               ; preds = %10
  %28 = load i64, i64* %7
  call void @putint(i64 %28)
  %29 = alloca i64
  store i64 10, i64* %29
  %30 = load i64, i64* %29
  call void @putch(i64 %30)
  %31 = load i64, i64* %7
  ret i64 %31
}
