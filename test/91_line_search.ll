; ModuleID = 'sysyc'
source_filename = "./91_line_search.sy"
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
  %2 = alloca [10 x i32]
  store i32 0, i32* %1
  store i32 0, i32* %0
  br label %3

3:                                                ; preds = %8, %entry
  %4 = load i32, i32* %0
  %5 = icmp slt i32 %4, 10
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = load i32, i32* %0
  %10 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %9
  %11 = load i32, i32* %0
  %12 = add i32 %11, 1
  store i32 %12, i32* %10
  %13 = load i32, i32* %0
  %14 = add i32 %13, 1
  store i32 %14, i32* %0
  br label %3

15:                                               ; preds = %3
  %16 = alloca i32
  %17 = alloca i32
  %18 = alloca i32
  %19 = alloca i32
  %20 = alloca i32
  store i32 10, i32* %20
  %21 = call i32 @getint()
  store i32 %21, i32* %16
  %22 = load i32, i32* %20
  %23 = sub i32 %22, 1
  store i32 %23, i32* %17
  store i32 0, i32* %18
  %24 = load i32, i32* %17
  %25 = load i32, i32* %18
  %26 = add i32 %24, %25
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %19
  %28 = alloca i32
  store i32 0, i32* %28
  store i32 0, i32* %0
  %29 = alloca i32
  store i32 0, i32* %29
  br label %30

30:                                               ; preds = %55, %15
  %31 = load i32, i32* %0
  %32 = icmp slt i32 %31, 10
  %33 = zext i1 %32 to i32
  %34 = icmp ne i32 %33, 0
  %35 = load i32, i32* %28
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = icmp ne i32 %37, 0
  %39 = and i1 %34, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i32, i32* %0
  %42 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %41
  %43 = load i32, i32* %42
  %44 = load i32, i32* %16
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %55

48:                                               ; preds = %30
  %49 = load i32, i32* %28
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %60

53:                                               ; preds = %40
  store i32 1, i32* %28
  %54 = load i32, i32* %0
  store i32 %54, i32* %29
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i32, i32* %0
  %57 = add i32 %56, 1
  store i32 %57, i32* %0
  br label %30

58:                                               ; preds = %48
  %59 = load i32, i32* %29
  call void @putint(i32 %59)
  br label %62

60:                                               ; preds = %48
  store i32 0, i32* %16
  %61 = load i32, i32* %16
  call void @putint(i32 %61)
  br label %62

62:                                               ; preds = %60, %58
  store i32 10, i32* %16
  %63 = load i32, i32* %16
  call void @putch(i32 %63)
  ret i32 0
}
