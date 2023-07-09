; ModuleID = 'sysyc'
source_filename = "./45_equal_prior_logic.sy"
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
  store i32 10, i32* %0
  store i32 6, i32* %1
  store i32 4, i32* %2
  store i32 5, i32* %3
  %4 = alloca i32
  %5 = load i32, i32* %1
  %6 = load i32, i32* %2
  %7 = add i32 %5, %6
  %8 = load i32, i32* %0
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  %12 = load i32, i32* %3
  %13 = load i32, i32* %0
  %14 = sdiv i32 %13, 2
  %15 = icmp ne i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %11, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %entry
  %20 = load i32, i32* %1
  %21 = load i32, i32* %2
  %22 = load i32, i32* %3
  %23 = sdiv i32 %21, %22
  %24 = mul i32 %23, 2
  %25 = add i32 %20, %24
  store i32 %25, i32* %4
  %26 = load i32, i32* %4
  call void @putint(i32 %26)
  br label %27

27:                                               ; preds = %19, %entry
  %28 = load i32, i32* %2
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = icmp ne i32 %30, 0
  %32 = load i32, i32* %0
  %33 = load i32, i32* %2
  %34 = sub i32 %32, %33
  %35 = load i32, i32* %1
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = icmp ne i32 %37, 0
  %39 = load i32, i32* %0
  %40 = load i32, i32* %3
  %41 = mul i32 %40, 2
  %42 = icmp ne i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = icmp ne i32 %43, 0
  %45 = and i1 %38, %44
  %46 = or i1 %31, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  store i32 1, i32* %4
  %48 = load i32, i32* %4
  call void @putint(i32 %48)
  br label %49

49:                                               ; preds = %47, %27
  ret i32 0
}
