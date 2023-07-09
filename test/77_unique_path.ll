; ModuleID = 'sysyc'
source_filename = "./77_unique_path.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @uniquePaths(i64 %0, i64 %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = load i64, i64* %2
  %5 = icmp eq i64 %4, 1
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  %8 = load i64, i64* %3
  %9 = icmp eq i64 %8, 1
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  %12 = or i1 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %entry
  ret i64 1

14:                                               ; preds = %entry
  %15 = alloca [9 x i64]
  %16 = alloca i64
  %17 = alloca i64
  store i64 0, i64* %16
  br label %18

18:                                               ; preds = %24, %14
  %19 = load i64, i64* %16
  %20 = load i64, i64* %2
  %21 = icmp slt i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i64, i64* %16
  %26 = mul i64 %25, 3
  %27 = load i64, i64* %3
  %28 = add i64 %26, %27
  %29 = sub i64 %28, 1
  %30 = getelementptr [9 x i64], [9 x i64]* %15, i64 0, i64 %29
  store i64 1, i64* %30
  %31 = load i64, i64* %16
  %32 = add i64 %31, 1
  store i64 %32, i64* %16
  br label %18

33:                                               ; preds = %18
  store i64 0, i64* %16
  br label %34

34:                                               ; preds = %40, %33
  %35 = load i64, i64* %16
  %36 = load i64, i64* %3
  %37 = icmp slt i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i64, i64* %2
  %42 = sub i64 %41, 1
  %43 = mul i64 %42, 3
  %44 = load i64, i64* %16
  %45 = add i64 %43, %44
  %46 = getelementptr [9 x i64], [9 x i64]* %15, i64 0, i64 %45
  store i64 1, i64* %46
  %47 = load i64, i64* %16
  %48 = add i64 %47, 1
  store i64 %48, i64* %16
  br label %34

49:                                               ; preds = %34
  %50 = load i64, i64* %2
  %51 = sub i64 %50, 2
  store i64 %51, i64* %16
  br label %52

52:                                               ; preds = %91, %49
  %53 = load i64, i64* %16
  %54 = icmp sgt i64 %53, -1
  %55 = zext i1 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i64, i64* %3
  %59 = sub i64 %58, 2
  store i64 %59, i64* %17
  br label %63

60:                                               ; preds = %52
  %61 = getelementptr [9 x i64], [9 x i64]* %15, i64 0, i64 0
  %62 = load i64, i64* %61
  ret i64 %62

63:                                               ; preds = %68, %57
  %64 = load i64, i64* %17
  %65 = icmp sgt i64 %64, -1
  %66 = zext i1 %65 to i64
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load i64, i64* %16
  %70 = mul i64 %69, 3
  %71 = load i64, i64* %17
  %72 = add i64 %70, %71
  %73 = getelementptr [9 x i64], [9 x i64]* %15, i64 0, i64 %72
  %74 = load i64, i64* %16
  %75 = add i64 %74, 1
  %76 = mul i64 %75, 3
  %77 = load i64, i64* %17
  %78 = add i64 %76, %77
  %79 = getelementptr [9 x i64], [9 x i64]* %15, i64 0, i64 %78
  %80 = load i64, i64* %79
  %81 = load i64, i64* %16
  %82 = mul i64 %81, 3
  %83 = load i64, i64* %17
  %84 = add i64 %82, %83
  %85 = add i64 %84, 1
  %86 = getelementptr [9 x i64], [9 x i64]* %15, i64 0, i64 %85
  %87 = load i64, i64* %86
  %88 = add i64 %80, %87
  store i64 %88, i64* %73
  %89 = load i64, i64* %17
  %90 = sub i64 %89, 1
  store i64 %90, i64* %17
  br label %63

91:                                               ; preds = %63
  %92 = load i64, i64* %16
  %93 = sub i64 %92, 1
  store i64 %93, i64* %16
  br label %52
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  store i64 3, i64* %1
  %2 = load i64, i64* %1
  %3 = load i64, i64* %1
  %4 = call i64 @uniquePaths(i64 %2, i64 %3)
  store i64 %4, i64* %0
  %5 = load i64, i64* %0
  ret i64 %5
}
