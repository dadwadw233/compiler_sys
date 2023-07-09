; ModuleID = 'sysyc'
source_filename = "./78_decbinoct.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @dec2bin(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  %5 = alloca i32
  store i32 0, i32* %2
  store i32 1, i32* %3
  %6 = load i32, i32* %1
  store i32 %6, i32* %5
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i32, i32* %5
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %7
  %13 = load i32, i32* %5
  %14 = srem i32 %13, 2
  store i32 %14, i32* %4
  %15 = load i32, i32* %3
  %16 = load i32, i32* %4
  %17 = mul i32 %15, %16
  %18 = load i32, i32* %2
  %19 = add i32 %17, %18
  store i32 %19, i32* %2
  %20 = load i32, i32* %3
  %21 = mul i32 %20, 10
  store i32 %21, i32* %3
  %22 = load i32, i32* %5
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %5
  br label %7

24:                                               ; preds = %7
  %25 = load i32, i32* %2
  ret i32 %25
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 400, i32* %0
  %1 = alloca i32
  %2 = load i32, i32* %0
  %3 = call i32 @dec2bin(i32 %2)
  store i32 %3, i32* %1
  %4 = load i32, i32* %1
  call void @putint(i32 %4)
  store i32 10, i32* %1
  %5 = load i32, i32* %1
  call void @putch(i32 %5)
  ret i32 0
}
