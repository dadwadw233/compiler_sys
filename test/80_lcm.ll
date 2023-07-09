; ModuleID = 'sysyc'
source_filename = "./80_lcm.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @gcd(i64 %0, i64 %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  %6 = load i64, i64* %2
  store i64 %6, i64* %4
  %7 = load i64, i64* %3
  store i64 %7, i64* %5
  %8 = alloca i64
  %9 = alloca i64
  %10 = load i64, i64* %2
  %11 = load i64, i64* %3
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %entry
  %16 = load i64, i64* %2
  store i64 %16, i64* %8
  %17 = load i64, i64* %3
  store i64 %17, i64* %2
  %18 = load i64, i64* %8
  store i64 %18, i64* %3
  br label %19

19:                                               ; preds = %15, %entry
  %20 = load i64, i64* %2
  %21 = load i64, i64* %3
  %22 = srem i64 %20, %21
  store i64 %22, i64* %9
  br label %23

23:                                               ; preds = %28, %19
  %24 = load i64, i64* %9
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i64, i64* %3
  store i64 %29, i64* %2
  %30 = load i64, i64* %9
  store i64 %30, i64* %3
  %31 = load i64, i64* %2
  %32 = load i64, i64* %3
  %33 = srem i64 %31, %32
  store i64 %33, i64* %9
  br label %23

34:                                               ; preds = %23
  %35 = load i64, i64* %4
  %36 = load i64, i64* %5
  %37 = mul i64 %35, %36
  %38 = load i64, i64* %3
  %39 = sdiv i64 %37, %38
  ret i64 %39
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = call i64 @getint()
  store i64 %2, i64* %0
  %3 = call i64 @getint()
  store i64 %3, i64* %1
  %4 = load i64, i64* %0
  %5 = load i64, i64* %1
  %6 = call i64 @gcd(i64 %4, i64 %5)
  ret i64 %6
}
