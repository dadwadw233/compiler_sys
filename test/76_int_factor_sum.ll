; ModuleID = 'sysyc'
source_filename = "./76_int_factor_sum.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @factor(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = alloca i32
  %3 = alloca i32
  store i32 0, i32* %3
  store i32 1, i32* %2
  br label %4

4:                                                ; preds = %24, %entry
  %5 = load i32, i32* %2
  %6 = load i32, i32* %1
  %7 = add i32 %6, 1
  %8 = icmp slt i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %4
  %12 = load i32, i32* %1
  %13 = load i32, i32* %2
  %14 = srem i32 %12, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* %3
  ret i32 %19

20:                                               ; preds = %11
  %21 = load i32, i32* %3
  %22 = load i32, i32* %2
  %23 = add i32 %21, %22
  store i32 %23, i32* %3
  br label %24

24:                                               ; preds = %20, %11
  %25 = load i32, i32* %2
  %26 = add i32 %25, 1
  store i32 %26, i32* %2
  br label %4
}

define i32 @main() {
entry:
  store i32 4, i32* @0
  store i32 10, i32* @1
  %0 = alloca i32
  %1 = alloca i32
  store i32 1478, i32* %1
  %2 = alloca i32
  %3 = load i32, i32* %1
  %4 = call i32 @factor(i32 %3)
  ret i32 %4
}
