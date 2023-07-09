; ModuleID = 'sysyc'
source_filename = "./91_line_search.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca [10 x i64]
  store i64 0, i64* %1
  store i64 0, i64* %0
  br label %3

3:                                                ; preds = %8, %entry
  %4 = load i64, i64* %0
  %5 = icmp slt i64 %4, 10
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = load i64, i64* %0
  %10 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %9
  %11 = load i64, i64* %0
  %12 = add i64 %11, 1
  store i64 %12, i64* %10
  %13 = load i64, i64* %0
  %14 = add i64 %13, 1
  store i64 %14, i64* %0
  br label %3

15:                                               ; preds = %3
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i64
  store i64 10, i64* %20
  %21 = call i64 @getint()
  store i64 %21, i64* %16
  %22 = load i64, i64* %20
  %23 = sub i64 %22, 1
  store i64 %23, i64* %17
  store i64 0, i64* %18
  %24 = load i64, i64* %17
  %25 = load i64, i64* %18
  %26 = add i64 %24, %25
  %27 = sdiv i64 %26, 2
  store i64 %27, i64* %19
  %28 = alloca i64
  store i64 0, i64* %28
  store i64 0, i64* %0
  %29 = alloca i64
  store i64 0, i64* %29
  br label %30

30:                                               ; preds = %55, %15
  %31 = load i64, i64* %0
  %32 = icmp slt i64 %31, 10
  %33 = zext i1 %32 to i64
  %34 = icmp ne i64 %33, 0
  %35 = load i64, i64* %28
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = icmp ne i64 %37, 0
  %39 = and i1 %34, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load i64, i64* %0
  %42 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %41
  %43 = load i64, i64* %42
  %44 = load i64, i64* %16
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %55

48:                                               ; preds = %30
  %49 = load i64, i64* %28
  %50 = icmp eq i64 %49, 1
  %51 = zext i1 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %60

53:                                               ; preds = %40
  store i64 1, i64* %28
  %54 = load i64, i64* %0
  store i64 %54, i64* %29
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i64, i64* %0
  %57 = add i64 %56, 1
  store i64 %57, i64* %0
  br label %30

58:                                               ; preds = %48
  %59 = load i64, i64* %29
  call void @putint(i64 %59)
  br label %62

60:                                               ; preds = %48
  store i64 0, i64* %16
  %61 = load i64, i64* %16
  call void @putint(i64 %61)
  br label %62

62:                                               ; preds = %60, %58
  store i64 10, i64* %16
  %63 = load i64, i64* %16
  call void @putch(i64 %63)
  ret i64 0
}
