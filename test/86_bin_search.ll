; ModuleID = 'sysyc'
source_filename = "./86_bin_search.sy"
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
  br label %28

28:                                               ; preds = %68, %15
  %29 = load i64, i64* %19
  %30 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %29
  %31 = load i64, i64* %30
  %32 = load i64, i64* %16
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = icmp ne i64 %34, 0
  %36 = load i64, i64* %18
  %37 = load i64, i64* %17
  %38 = icmp slt i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = icmp ne i64 %39, 0
  %41 = and i1 %35, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %28
  %43 = load i64, i64* %17
  %44 = load i64, i64* %18
  %45 = add i64 %43, %44
  %46 = sdiv i64 %45, 2
  store i64 %46, i64* %19
  %47 = load i64, i64* %16
  %48 = load i64, i64* %19
  %49 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %48
  %50 = load i64, i64* %49
  %51 = icmp slt i64 %47, %50
  %52 = zext i1 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %65

54:                                               ; preds = %28
  %55 = load i64, i64* %16
  %56 = load i64, i64* %19
  %57 = getelementptr [10 x i64], [10 x i64]* %2, i64 0, i64 %56
  %58 = load i64, i64* %57
  %59 = icmp eq i64 %55, %58
  %60 = zext i1 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %69, label %71

62:                                               ; preds = %42
  %63 = load i64, i64* %19
  %64 = sub i64 %63, 1
  store i64 %64, i64* %17
  br label %68

65:                                               ; preds = %42
  %66 = load i64, i64* %19
  %67 = add i64 %66, 1
  store i64 %67, i64* %18
  br label %68

68:                                               ; preds = %65, %62
  br label %28

69:                                               ; preds = %54
  %70 = load i64, i64* %16
  call void @putint(i64 %70)
  br label %73

71:                                               ; preds = %54
  store i64 0, i64* %16
  %72 = load i64, i64* %16
  call void @putint(i64 %72)
  br label %73

73:                                               ; preds = %71, %69
  store i64 10, i64* %16
  %74 = load i64, i64* %16
  call void @putch(i64 %74)
  ret i64 0
}
