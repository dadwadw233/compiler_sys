; ModuleID = 'sysyc'
source_filename = "./28_while_test2.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @FourWhile() {
entry:
  %0 = alloca i32
  store i32 5, i32* %0
  %1 = alloca i32
  %2 = alloca i32
  store i32 6, i32* %1
  store i32 7, i32* %2
  %3 = alloca i32
  store i32 10, i32* %3
  br label %4

4:                                                ; preds = %28, %entry
  %5 = load i32, i32* %0
  %6 = icmp slt i32 %5, 20
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* %0
  %11 = add i32 %10, 3
  store i32 %11, i32* %0
  br label %20

12:                                               ; preds = %4
  %13 = load i32, i32* %0
  %14 = load i32, i32* %1
  %15 = load i32, i32* %3
  %16 = add i32 %14, %15
  %17 = add i32 %13, %16
  %18 = load i32, i32* %2
  %19 = add i32 %17, %18
  ret i32 %19

20:                                               ; preds = %39, %9
  %21 = load i32, i32* %1
  %22 = icmp slt i32 %21, 10
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* %1
  %27 = add i32 %26, 1
  store i32 %27, i32* %1
  br label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %1
  %30 = sub i32 %29, 2
  store i32 %30, i32* %1
  br label %4

31:                                               ; preds = %50, %25
  %32 = load i32, i32* %2
  %33 = icmp eq i32 %32, 7
  %34 = zext i1 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %2
  %38 = sub i32 %37, 1
  store i32 %38, i32* %2
  br label %42

39:                                               ; preds = %31
  %40 = load i32, i32* %2
  %41 = add i32 %40, 1
  store i32 %41, i32* %2
  br label %20

42:                                               ; preds = %47, %36
  %43 = load i32, i32* %3
  %44 = icmp slt i32 %43, 20
  %45 = zext i1 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %3
  %49 = add i32 %48, 3
  store i32 %49, i32* %3
  br label %42

50:                                               ; preds = %42
  %51 = load i32, i32* %3
  %52 = sub i32 %51, 1
  store i32 %52, i32* %3
  br label %31
}

define i32 @main() {
entry:
  %0 = call i32 @FourWhile()
  ret i32 %0
}
