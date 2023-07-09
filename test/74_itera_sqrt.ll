; ModuleID = 'sysyc'
source_filename = "./74_itera_sqrt.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @fsqrt(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = alloca i32
  store i32 0, i32* %2
  %3 = alloca i32
  %4 = load i32, i32* %1
  %5 = sdiv i32 %4, 2
  store i32 %5, i32* %3
  br label %6

6:                                                ; preds = %13, %entry
  %7 = load i32, i32* %2
  %8 = load i32, i32* %3
  %9 = sub i32 %7, %8
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %6
  %14 = load i32, i32* %3
  store i32 %14, i32* %2
  %15 = load i32, i32* %2
  %16 = load i32, i32* %1
  %17 = load i32, i32* %2
  %18 = sdiv i32 %16, %17
  %19 = add i32 %15, %18
  store i32 %19, i32* %3
  %20 = load i32, i32* %3
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %3
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* %3
  ret i32 %23
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 400, i32* %0
  %1 = alloca i32
  %2 = load i32, i32* %0
  %3 = call i32 @fsqrt(i32 %2)
  store i32 %3, i32* %1
  %4 = load i32, i32* %1
  call void @putint(i32 %4)
  store i32 10, i32* %1
  %5 = load i32, i32* %1
  call void @putch(i32 %5)
  ret i32 0
}
