; ModuleID = 'sysyc'
source_filename = "./63_simple_atoi.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @atoi_(i64* %0) {
entry:
  %1 = alloca i64*
  store i64* %0, i64** %1
  %2 = alloca i64
  store i64 0, i64* %2
  %3 = alloca i64
  store i64 1, i64* %3
  %4 = alloca i64
  store i64 0, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %5 = load i64*, i64** %1
  %6 = load i64, i64* %4
  %7 = getelementptr i64, i64* %5, i64 %6
  %8 = load i64, i64* %7
  %9 = icmp eq i64 %8, 32
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %12 = load i64, i64* %4
  %13 = add i64 %12, 1
  store i64 %13, i64* %4
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %14 = load i64*, i64** %1
  %15 = load i64, i64* %4
  %16 = getelementptr i64, i64* %14, i64 %15
  %17 = load i64, i64* %16
  %18 = icmp eq i64 %17, 43
  %19 = zext i1 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %early_stop_or, label %not_early_stop_or

early_stop_or:                                    ; preds = %loop_cont
  br label %merge

not_early_stop_or:                                ; preds = %loop_cont
  %21 = load i64*, i64** %1
  %22 = load i64, i64* %4
  %23 = getelementptr i64, i64* %21, i64 %22
  %24 = load i64, i64* %23
  %25 = icmp eq i64 %24, 45
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  %28 = or i1 %20, %27
  br label %merge

merge:                                            ; preds = %early_stop_or, %not_early_stop_or
  %29 = phi i1 [ %20, %early_stop_or ], [ %28, %not_early_stop_or ]
  br i1 %29, label %condition_true, label %false

condition_true:                                   ; preds = %merge
  %30 = load i64*, i64** %1
  %31 = load i64, i64* %4
  %32 = getelementptr i64, i64* %30, i64 %31
  %33 = load i64, i64* %32
  %34 = icmp eq i64 %33, 45
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %condition_true1, label %condition_cont3

false:                                            ; preds = %merge
  %37 = load i64*, i64** %1
  %38 = load i64, i64* %4
  %39 = getelementptr i64, i64* %37, i64 %38
  %40 = load i64, i64* %39
  %41 = icmp slt i64 %40, 48
  %42 = zext i1 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %early_stop_or4, label %not_early_stop_or5

condition_cont:                                   ; preds = %condition_cont9, %condition_cont3
  br label %loop_expression10

condition_true1:                                  ; preds = %condition_true
  store i64 -1, i64* %3
  br label %condition_cont3

condition_cont3:                                  ; preds = %condition_true1, %condition_true
  %44 = load i64, i64* %4
  %45 = add i64 %44, 1
  store i64 %45, i64* %4
  br label %condition_cont

early_stop_or4:                                   ; preds = %false
  br label %merge6

not_early_stop_or5:                               ; preds = %false
  %46 = load i64*, i64** %1
  %47 = load i64, i64* %4
  %48 = getelementptr i64, i64* %46, i64 %47
  %49 = load i64, i64* %48
  %50 = icmp sgt i64 %49, 57
  %51 = zext i1 %50 to i64
  %52 = icmp ne i64 %51, 0
  %53 = or i1 %43, %52
  br label %merge6

merge6:                                           ; preds = %early_stop_or4, %not_early_stop_or5
  %54 = phi i1 [ %43, %early_stop_or4 ], [ %53, %not_early_stop_or5 ]
  br i1 %54, label %condition_true7, label %condition_cont9

condition_true7:                                  ; preds = %merge6
  store i64 2147483647, i64* %2
  %55 = load i64, i64* %2
  ret i64 %55

condition_cont9:                                  ; preds = %merge6
  br label %condition_cont

loop_expression10:                                ; preds = %loop_true11, %condition_cont
  %56 = load i64*, i64** %1
  %57 = load i64, i64* %4
  %58 = getelementptr i64, i64* %56, i64 %57
  %59 = load i64, i64* %58
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = icmp ne i64 %61, 0
  %63 = load i64*, i64** %1
  %64 = load i64, i64* %4
  %65 = getelementptr i64, i64* %63, i64 %64
  %66 = load i64, i64* %65
  %67 = icmp sgt i64 %66, 47
  %68 = zext i1 %67 to i64
  %69 = icmp ne i64 %68, 0
  %70 = and i1 %62, %69
  %71 = load i64*, i64** %1
  %72 = load i64, i64* %4
  %73 = getelementptr i64, i64* %71, i64 %72
  %74 = load i64, i64* %73
  %75 = icmp slt i64 %74, 58
  %76 = zext i1 %75 to i64
  %77 = icmp ne i64 %76, 0
  %78 = and i1 %70, %77
  br i1 %78, label %loop_true11, label %loop_cont12

loop_true11:                                      ; preds = %loop_expression10
  %79 = load i64, i64* %2
  %80 = mul i64 %79, 10
  %81 = load i64*, i64** %1
  %82 = load i64, i64* %4
  %83 = getelementptr i64, i64* %81, i64 %82
  %84 = load i64, i64* %83
  %85 = add i64 %80, %84
  %86 = sub i64 %85, 48
  store i64 %86, i64* %2
  %87 = load i64, i64* %4
  %88 = add i64 %87, 1
  store i64 %88, i64* %4
  br label %loop_expression10

loop_cont12:                                      ; preds = %loop_expression10
  %89 = load i64, i64* %2
  %90 = load i64, i64* %3
  %91 = mul i64 %89, %90
  ret i64 %91
}

define i64 @main() {
entry:
  %0 = alloca [500 x i64]
  %1 = alloca i64
  store i64 0, i64* %1
  %2 = alloca i64
  store i64 0, i64* %2
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %3 = load i64, i64* %1
  %4 = icmp ne i64 %3, 10
  %5 = zext i1 %4 to i64
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %7 = call i64 @getch()
  store i64 %7, i64* %1
  %8 = load i64, i64* %2
  %9 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 %8
  %10 = load i64, i64* %1
  store i64 %10, i64* %9
  %11 = load i64, i64* %2
  %12 = add i64 %11, 1
  store i64 %12, i64* %2
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %13 = load i64, i64* %2
  %14 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 %13
  store i64 0, i64* %14
  %15 = getelementptr [500 x i64], [500 x i64]* %0, i64 0, i64 0
  %16 = call i64 @atoi_(i64* %15)
  store i64 %16, i64* %2
  %17 = load i64, i64* %2
  call void @putint(i64 %17)
  ret i64 0
}
