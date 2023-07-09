; ModuleID = 'sysyc'
source_filename = "./77_unique_path.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @uniquePaths(i32 %0, i32 %1) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = load i32, i32* %2
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i32
  %7 = icmp ne i32 %6, 0
  %8 = load i32, i32* %3
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  %12 = or i1 %7, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %entry
  ret i32 1

14:                                               ; preds = %entry
  %15 = alloca [9 x i32]
  %16 = alloca i32
  %17 = alloca i32
  store i32 0, i32* %16
  br label %18

18:                                               ; preds = %24, %14
  %19 = load i32, i32* %16
  %20 = load i32, i32* %2
  %21 = icmp slt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32, i32* %16
  %26 = mul i32 %25, 3
  %27 = load i32, i32* %3
  %28 = add i32 %26, %27
  %29 = sub i32 %28, 1
  %30 = getelementptr [9 x i32], [9 x i32]* %15, i32 0, i32 %29
  store i32 1, i32* %30
  %31 = load i32, i32* %16
  %32 = add i32 %31, 1
  store i32 %32, i32* %16
  br label %18

33:                                               ; preds = %18
  store i32 0, i32* %16
  br label %34

34:                                               ; preds = %40, %33
  %35 = load i32, i32* %16
  %36 = load i32, i32* %3
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* %2
  %42 = sub i32 %41, 1
  %43 = mul i32 %42, 3
  %44 = load i32, i32* %16
  %45 = add i32 %43, %44
  %46 = getelementptr [9 x i32], [9 x i32]* %15, i32 0, i32 %45
  store i32 1, i32* %46
  %47 = load i32, i32* %16
  %48 = add i32 %47, 1
  store i32 %48, i32* %16
  br label %34

49:                                               ; preds = %34
  %50 = load i32, i32* %2
  %51 = sub i32 %50, 2
  store i32 %51, i32* %16
  br label %52

52:                                               ; preds = %91, %49
  %53 = load i32, i32* %16
  %54 = icmp sgt i32 %53, -1
  %55 = zext i1 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %3
  %59 = sub i32 %58, 2
  store i32 %59, i32* %17
  br label %63

60:                                               ; preds = %52
  %61 = getelementptr [9 x i32], [9 x i32]* %15, i32 0, i32 0
  %62 = load i32, i32* %61
  ret i32 %62

63:                                               ; preds = %68, %57
  %64 = load i32, i32* %17
  %65 = icmp sgt i32 %64, -1
  %66 = zext i1 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %63
  %69 = load i32, i32* %16
  %70 = mul i32 %69, 3
  %71 = load i32, i32* %17
  %72 = add i32 %70, %71
  %73 = getelementptr [9 x i32], [9 x i32]* %15, i32 0, i32 %72
  %74 = load i32, i32* %16
  %75 = add i32 %74, 1
  %76 = mul i32 %75, 3
  %77 = load i32, i32* %17
  %78 = add i32 %76, %77
  %79 = getelementptr [9 x i32], [9 x i32]* %15, i32 0, i32 %78
  %80 = load i32, i32* %79
  %81 = load i32, i32* %16
  %82 = mul i32 %81, 3
  %83 = load i32, i32* %17
  %84 = add i32 %82, %83
  %85 = add i32 %84, 1
  %86 = getelementptr [9 x i32], [9 x i32]* %15, i32 0, i32 %85
  %87 = load i32, i32* %86
  %88 = add i32 %80, %87
  store i32 %88, i32* %73
  %89 = load i32, i32* %17
  %90 = sub i32 %89, 1
  store i32 %90, i32* %17
  br label %63

91:                                               ; preds = %63
  %92 = load i32, i32* %16
  %93 = sub i32 %92, 1
  store i32 %93, i32* %16
  br label %52
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  store i32 3, i32* %1
  %2 = load i32, i32* %1
  %3 = load i32, i32* %1
  %4 = call i32 @uniquePaths(i32 %2, i32 %3)
  store i32 %4, i32* %0
  %5 = load i32, i32* %0
  ret i32 %5
}
