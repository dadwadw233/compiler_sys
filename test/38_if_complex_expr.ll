; ModuleID = 'sysyc'
source_filename = "./38_if_complex_expr.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  store i32 5, i32* %0
  store i32 5, i32* %1
  store i32 1, i32* %2
  store i32 -2, i32* %3
  store i32 2, i32* %4
  %5 = load i32, i32* %3
  %6 = mul i32 %5, 1
  %7 = sdiv i32 %6, 2
  %8 = icmp slt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = icmp ne i32 %9, 0
  %11 = load i32, i32* %0
  %12 = load i32, i32* %1
  %13 = sub i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = icmp ne i32 %15, 0
  %17 = load i32, i32* %2
  %18 = add i32 %17, 3
  %19 = srem i32 %18, 2
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %16, %22
  %24 = or i1 %10, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %entry
  %26 = load i32, i32* %4
  call void @putint(i32 %26)
  br label %27

27:                                               ; preds = %25, %entry
  %28 = load i32, i32* %3
  %29 = srem i32 %28, 2
  %30 = add i32 %29, 67
  %31 = icmp slt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = icmp ne i32 %32, 0
  %34 = load i32, i32* %0
  %35 = load i32, i32* %1
  %36 = sub i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = icmp ne i32 %38, 0
  %40 = load i32, i32* %2
  %41 = add i32 %40, 2
  %42 = srem i32 %41, 2
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = icmp ne i32 %44, 0
  %46 = and i1 %39, %45
  %47 = or i1 %33, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  store i32 4, i32* %4
  %49 = load i32, i32* %4
  call void @putint(i32 %49)
  br label %50

50:                                               ; preds = %48, %27
  ret i32 0
}
