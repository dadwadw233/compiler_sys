; ModuleID = 'sysyc'
source_filename = "./80_lcm.sy"
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
  store i32 %6, i32* %4
  %7 = load i32, i32* %3
  store i32 %7, i32* %5
  %8 = alloca i32
  %9 = alloca i32
  %10 = load i32, i32* %2
  %11 = load i32, i32* %3
  %12 = icmp slt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %entry
  %16 = load i32, i32* %2
  store i32 %16, i32* %8
  %17 = load i32, i32* %3
  store i32 %17, i32* %2
  %18 = load i32, i32* %8
  store i32 %18, i32* %3
  br label %19

19:                                               ; preds = %15, %entry
  %20 = load i32, i32* %2
  %21 = load i32, i32* %3
  %22 = srem i32 %20, %21
  store i32 %22, i32* %9
  br label %23

23:                                               ; preds = %28, %19
  %24 = load i32, i32* %9
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %3
  store i32 %29, i32* %2
  %30 = load i32, i32* %9
  store i32 %30, i32* %3
  %31 = load i32, i32* %2
  %32 = load i32, i32* %3
  %33 = srem i32 %31, %32
  store i32 %33, i32* %9
  br label %23

34:                                               ; preds = %23
  %35 = load i32, i32* %4
  %36 = load i32, i32* %5
  %37 = mul i32 %35, %36
  %38 = load i32, i32* %3
  %39 = sdiv i32 %37, %38
  ret i32 %39
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
