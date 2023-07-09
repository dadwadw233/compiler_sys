; ModuleID = 'sysyc'
source_filename = "./79_gcd.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @gcd(i32 %0, i32 %1) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = alloca i32
  %6 = load i32, i32* %2
  %7 = load i32, i32* %3
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %entry
  %12 = load i32, i32* %2
  store i32 %12, i32* %4
  %13 = load i32, i32* %3
  store i32 %13, i32* %2
  %14 = load i32, i32* %4
  store i32 %14, i32* %3
  br label %15

15:                                               ; preds = %11, %entry
  %16 = load i32, i32* %2
  %17 = load i32, i32* %3
  %18 = srem i32 %16, %17
  store i32 %18, i32* %5
  br label %19

19:                                               ; preds = %24, %15
  %20 = load i32, i32* %5
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %3
  store i32 %25, i32* %2
  %26 = load i32, i32* %5
  store i32 %26, i32* %3
  %27 = load i32, i32* %2
  %28 = load i32, i32* %3
  %29 = srem i32 %27, %28
  store i32 %29, i32* %5
  br label %19

30:                                               ; preds = %19
  %31 = load i32, i32* %3
  ret i32 %31
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = call i32 @getint()
  store i32 %2, i32* %0
  %3 = call i32 @getint()
  store i32 %3, i32* %1
  %4 = load i32, i32* %0
  %5 = load i32, i32* %1
  %6 = call i32 @gcd(i32 %4, i32 %5)
  ret i32 %6
}
