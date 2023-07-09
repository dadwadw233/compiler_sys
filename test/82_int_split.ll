; ModuleID = 'sysyc'
source_filename = "./82_int_split.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @split(i64 %0, i64* %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64*
  store i64* %1, i64** %3
  %4 = alloca i64
  %5 = load i64, i64* @0
  %6 = sub i64 %5, 1
  store i64 %6, i64* %4
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i64, i64* %4
  %9 = icmp ne i64 %8, -1
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i64*, i64** %3
  %14 = load i64, i64* %4
  %15 = getelementptr i64, i64* %13, i64 %14
  %16 = load i64, i64* %2
  %17 = srem i64 %16, 10
  store i64 %17, i64* %15
  %18 = load i64, i64* %2
  %19 = sdiv i64 %18, 10
  store i64 %19, i64* %2
  %20 = load i64, i64* %4
  %21 = sub i64 %20, 1
  store i64 %21, i64* %4
  br label %7

22:                                               ; preds = %7
  ret i64 0
}

define i64 @main() {
entry:
  store i64 4, i64* @0
  store i64 10, i64* @1
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca [4 x i64]
  store i64 1478, i64* %1
  %3 = load i64, i64* %1
  %4 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 0
  %5 = call i64 @split(i64 %3, i64* %4)
  store i64 %5, i64* %1
  %6 = alloca i64
  store i64 0, i64* %0
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i64, i64* %0
  %9 = icmp slt i64 %8, 4
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i64, i64* %0
  %14 = getelementptr [4 x i64], [4 x i64]* %2, i64 0, i64 %13
  %15 = load i64, i64* %14
  store i64 %15, i64* %6
  %16 = load i64, i64* %6
  call void @putint(i64 %16)
  %17 = load i64, i64* @1
  call void @putch(i64 %17)
  %18 = load i64, i64* %0
  %19 = add i64 %18, 1
  store i64 %19, i64* %0
  br label %7

20:                                               ; preds = %7
  ret i64 0
}
