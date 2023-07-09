; ModuleID = 'sysyc'
source_filename = "./86_bin_search.sy"
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
  br label %28

28:                                               ; preds = %68, %15
  %29 = load i32, i32* %19
  %30 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %29
  %31 = load i32, i32* %30
  %32 = load i32, i32* %16
  %33 = icmp ne i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = icmp ne i32 %34, 0
  %36 = load i32, i32* %18
  %37 = load i32, i32* %17
  %38 = icmp slt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = icmp ne i32 %39, 0
  %41 = and i1 %35, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %28
  %43 = load i32, i32* %17
  %44 = load i32, i32* %18
  %45 = add i32 %43, %44
  %46 = sdiv i32 %45, 2
  store i32 %46, i32* %19
  %47 = load i32, i32* %16
  %48 = load i32, i32* %19
  %49 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %48
  %50 = load i32, i32* %49
  %51 = icmp slt i32 %47, %50
  %52 = zext i1 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %65

54:                                               ; preds = %28
  %55 = load i32, i32* %16
  %56 = load i32, i32* %19
  %57 = getelementptr [10 x i32], [10 x i32]* %2, i32 0, i32 %56
  %58 = load i32, i32* %57
  %59 = icmp eq i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %71

62:                                               ; preds = %42
  %63 = load i32, i32* %19
  %64 = sub i32 %63, 1
  store i32 %64, i32* %17
  br label %68

65:                                               ; preds = %42
  %66 = load i32, i32* %19
  %67 = add i32 %66, 1
  store i32 %67, i32* %18
  br label %68

68:                                               ; preds = %65, %62
  br label %28

69:                                               ; preds = %54
  %70 = load i32, i32* %16
  call void @putint(i32 %70)
  br label %73

71:                                               ; preds = %54
  store i32 0, i32* %16
  %72 = load i32, i32* %16
  call void @putint(i32 %72)
  br label %73

73:                                               ; preds = %71, %69
  store i32 10, i32* %16
  %74 = load i32, i32* %16
  call void @putch(i32 %74)
  ret i32 0
}
