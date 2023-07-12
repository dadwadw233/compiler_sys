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
  br i1 %12, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 1

condition_cont:                                   ; preds = %entry
  %13 = alloca [9 x i64]
  %14 = alloca i64
  %15 = alloca i64
  store i64 0, i64* %14
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont
  %16 = load i64, i64* %14
  %17 = load i64, i64* %2
  %18 = icmp slt i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %21 = load i64, i64* %14
  %22 = mul i64 %21, 3
  %23 = load i64, i64* %3
  %24 = add i64 %22, %23
  %25 = sub i64 %24, 1
  %26 = getelementptr [9 x i64], [9 x i64]* %13, i64 0, i64 %25
  store i64 1, i64* %26
  %27 = load i64, i64* %14
  %28 = add i64 %27, 1
  store i64 %28, i64* %14
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  store i64 0, i64* %14
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %29 = load i64, i64* %14
  %30 = load i64, i64* %3
  %31 = icmp slt i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %34 = load i64, i64* %2
  %35 = sub i64 %34, 1
  %36 = mul i64 %35, 3
  %37 = load i64, i64* %14
  %38 = add i64 %36, %37
  %39 = getelementptr [9 x i64], [9 x i64]* %13, i64 0, i64 %38
  store i64 1, i64* %39
  %40 = load i64, i64* %14
  %41 = add i64 %40, 1
  store i64 %41, i64* %14
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  %42 = load i64, i64* %2
  %43 = sub i64 %42, 2
  store i64 %43, i64* %14
  br label %loop_expression4

loop_expression4:                                 ; preds = %loop_cont9, %loop_cont3
  %44 = load i64, i64* %14
  %45 = icmp sgt i64 %44, -1
  %46 = zext i1 %45 to i64
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %48 = load i64, i64* %3
  %49 = sub i64 %48, 2
  store i64 %49, i64* %15
  br label %loop_expression7

loop_cont6:                                       ; preds = %loop_expression4
  %50 = getelementptr [9 x i64], [9 x i64]* %13, i64 0, i64 0
  %51 = load i64, i64* %50
  ret i64 %51

loop_expression7:                                 ; preds = %loop_true8, %loop_true5
  %52 = load i64, i64* %15
  %53 = icmp sgt i64 %52, -1
  %54 = zext i1 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %56 = load i64, i64* %14
  %57 = mul i64 %56, 3
  %58 = load i64, i64* %15
  %59 = add i64 %57, %58
  %60 = getelementptr [9 x i64], [9 x i64]* %13, i64 0, i64 %59
  %61 = load i64, i64* %14
  %62 = add i64 %61, 1
  %63 = mul i64 %62, 3
  %64 = load i64, i64* %15
  %65 = add i64 %63, %64
  %66 = getelementptr [9 x i64], [9 x i64]* %13, i64 0, i64 %65
  %67 = load i64, i64* %66
  %68 = load i64, i64* %14
  %69 = mul i64 %68, 3
  %70 = load i64, i64* %15
  %71 = add i64 %69, %70
  %72 = add i64 %71, 1
  %73 = getelementptr [9 x i64], [9 x i64]* %13, i64 0, i64 %72
  %74 = load i64, i64* %73
  %75 = add i64 %67, %74
  store i64 %75, i64* %60
  %76 = load i64, i64* %15
  %77 = sub i64 %76, 1
  store i64 %77, i64* %15
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  %78 = load i64, i64* %14
  %79 = sub i64 %78, 1
  store i64 %79, i64* %14
  br label %loop_expression4
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
