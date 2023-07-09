; ModuleID = 'sysyc'
source_filename = "./64_alpha_count.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca [500 x i64]
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  store i64 0, i64* %3
  store i64 0, i64* %2
  store i64 0, i64* %1
  br label %4

4:                                                ; preds = %35, %entry
  %5 = load i64, i64* %1
  %6 = icmp ne i64 %5, 10
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = call i64 @getch()
  store i64 %10, i64* %1
  %11 = load i64, i64* %1
  %12 = icmp sgt i64 %11, 40
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  %15 = load i64, i64* %1
  %16 = icmp slt i64 %15, 91
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %14, %18
  %20 = load i64, i64* %1
  %21 = icmp sgt i64 %20, 96
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  %24 = load i64, i64* %1
  %25 = icmp slt i64 %24, 123
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  %28 = and i1 %23, %27
  %29 = or i1 %19, %28
  br i1 %29, label %32, label %35

30:                                               ; preds = %4
  %31 = load i64, i64* %3
  call void @putint(i64 %31)
  ret i64 0

32:                                               ; preds = %9
  %33 = load i64, i64* %3
  %34 = add i64 %33, 1
  store i64 %34, i64* %3
  br label %35

35:                                               ; preds = %32, %9
  %36 = load i64, i64* %2
  %37 = add i64 %36, 1
  store i64 %37, i64* %2
  br label %4
}
