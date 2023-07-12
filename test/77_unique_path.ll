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
  br i1 %7, label %early_stop_or, label %not_early_stop_or

early_stop_or:                                    ; preds = %entry
  br label %merge

not_early_stop_or:                                ; preds = %entry
  %8 = load i64, i64* %3
  %9 = icmp eq i64 %8, 1
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  %12 = or i1 %7, %11
  br label %merge

merge:                                            ; preds = %early_stop_or, %not_early_stop_or
  %13 = phi i1 [ %7, %early_stop_or ], [ %12, %not_early_stop_or ]
  br i1 %13, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %merge
  ret i64 1

condition_cont:                                   ; preds = %merge
  %14 = alloca [9 x i64]
  %15 = alloca i64
  %16 = alloca i64
  store i64 0, i64* %15
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont
  %17 = load i64, i64* %15
  %18 = load i64, i64* %2
  %19 = icmp slt i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %22 = load i64, i64* %15
  %23 = mul i64 %22, 3
  %24 = load i64, i64* %3
  %25 = add i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = getelementptr [9 x i64], [9 x i64]* %14, i64 0, i64 %26
  store i64 1, i64* %27
  %28 = load i64, i64* %15
  %29 = add i64 %28, 1
  store i64 %29, i64* %15
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  store i64 0, i64* %15
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %30 = load i64, i64* %15
  %31 = load i64, i64* %3
  %32 = icmp slt i64 %30, %31
  %33 = zext i1 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %35 = load i64, i64* %2
  %36 = sub i64 %35, 1
  %37 = mul i64 %36, 3
  %38 = load i64, i64* %15
  %39 = add i64 %37, %38
  %40 = getelementptr [9 x i64], [9 x i64]* %14, i64 0, i64 %39
  store i64 1, i64* %40
  %41 = load i64, i64* %15
  %42 = add i64 %41, 1
  store i64 %42, i64* %15
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  %43 = load i64, i64* %2
  %44 = sub i64 %43, 2
  store i64 %44, i64* %15
  br label %loop_expression4

loop_expression4:                                 ; preds = %loop_cont9, %loop_cont3
  %45 = load i64, i64* %15
  %46 = icmp sgt i64 %45, -1
  %47 = zext i1 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %49 = load i64, i64* %3
  %50 = sub i64 %49, 2
  store i64 %50, i64* %16
  br label %loop_expression7

loop_cont6:                                       ; preds = %loop_expression4
  %51 = getelementptr [9 x i64], [9 x i64]* %14, i64 0, i64 0
  %52 = load i64, i64* %51
  ret i64 %52

loop_expression7:                                 ; preds = %loop_true8, %loop_true5
  %53 = load i64, i64* %16
  %54 = icmp sgt i64 %53, -1
  %55 = zext i1 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %57 = load i64, i64* %15
  %58 = mul i64 %57, 3
  %59 = load i64, i64* %16
  %60 = add i64 %58, %59
  %61 = getelementptr [9 x i64], [9 x i64]* %14, i64 0, i64 %60
  %62 = load i64, i64* %15
  %63 = add i64 %62, 1
  %64 = mul i64 %63, 3
  %65 = load i64, i64* %16
  %66 = add i64 %64, %65
  %67 = getelementptr [9 x i64], [9 x i64]* %14, i64 0, i64 %66
  %68 = load i64, i64* %67
  %69 = load i64, i64* %15
  %70 = mul i64 %69, 3
  %71 = load i64, i64* %16
  %72 = add i64 %70, %71
  %73 = add i64 %72, 1
  %74 = getelementptr [9 x i64], [9 x i64]* %14, i64 0, i64 %73
  %75 = load i64, i64* %74
  %76 = add i64 %68, %75
  store i64 %76, i64* %61
  %77 = load i64, i64* %16
  %78 = sub i64 %77, 1
  store i64 %78, i64* %16
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  %79 = load i64, i64* %15
  %80 = sub i64 %79, 1
  store i64 %80, i64* %15
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
