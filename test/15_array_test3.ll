; ModuleID = 'sysyc'
source_filename = "./15_array_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [5 x [5 x i64]] [[5 x i64] [i64 1, i64 2, i64 3, i64 4, i64 5], [5 x i64] zeroinitializer, [5 x i64] zeroinitializer, [5 x i64] zeroinitializer, [5 x i64] zeroinitializer]

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @func(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = alloca i64
  store i64 0, i64* %3
  %4 = alloca i64
  store i64 0, i64* %4
  br label %5

5:                                                ; preds = %29, %entry
  %6 = load i64, i64* %2
  %7 = icmp slt i64 %6, 5
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %13

11:                                               ; preds = %5
  %12 = load i64, i64* %4
  ret i64 %12

13:                                               ; preds = %18, %10
  %14 = load i64, i64* %3
  %15 = icmp slt i64 %14, 5
  %16 = zext i1 %15 to i64
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i64, i64* %4
  %20 = load i64*, i64** %1
  %21 = load i64, i64* %2
  %22 = getelementptr i64, i64* %20, i64 %21
  %23 = load i64, i64* %3
  %24 = getelementptr i64, i64* %20, i64 %23
  %25 = load i64, i64* %24
  %26 = add i64 %19, %25
  store i64 %26, i64* %4
  %27 = load i64, i64* %3
  %28 = add i64 %27, 1
  store i64 %28, i64* %3
  br label %13

29:                                               ; preds = %13
  %30 = load i64, i64* %2
  %31 = add i64 %30, 1
  store i64 %31, i64* %2
  br label %5
}

define i64 @main() {
entry:
  %0 = call i64 @func(i64* getelementptr inbounds ([5 x [5 x i64]], [5 x [5 x i64]]* @0, i64 0, i64 0, i64 0))
  call void @putint(i64 %0)
  ret i64 0
}
