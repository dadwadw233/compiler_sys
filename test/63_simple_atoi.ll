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
  %21 = load i64*, i64** %1
  %22 = load i64, i64* %4
  %23 = getelementptr i64, i64* %21, i64 %22
  %24 = load i64, i64* %23
  %25 = icmp eq i64 %24, 45
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  %28 = or i1 %20, %27
  br i1 %28, label %condition_true, label %false

condition_true:                                   ; preds = %loop_cont
  %29 = load i64*, i64** %1
  %30 = load i64, i64* %4
  %31 = getelementptr i64, i64* %29, i64 %30
  %32 = load i64, i64* %31
  %33 = icmp eq i64 %32, 45
  %34 = zext i1 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %condition_true1, label %condition_cont3

false:                                            ; preds = %loop_cont
  %36 = load i64*, i64** %1
  %37 = load i64, i64* %4
  %38 = getelementptr i64, i64* %36, i64 %37
  %39 = load i64, i64* %38
  %40 = icmp slt i64 %39, 48
  %41 = zext i1 %40 to i64
  %42 = icmp ne i64 %41, 0
  %43 = load i64*, i64** %1
  %44 = load i64, i64* %4
  %45 = getelementptr i64, i64* %43, i64 %44
  %46 = load i64, i64* %45
  %47 = icmp sgt i64 %46, 57
  %48 = zext i1 %47 to i64
  %49 = icmp ne i64 %48, 0
  %50 = or i1 %42, %49
  br i1 %50, label %condition_true4, label %condition_cont6

condition_cont:                                   ; preds = %condition_cont6, %condition_cont3
  br label %loop_expression7

condition_true1:                                  ; preds = %condition_true
  store i64 -1, i64* %3
  br label %condition_cont3

condition_cont3:                                  ; preds = %condition_true1, %condition_true
  %51 = load i64, i64* %4
  %52 = add i64 %51, 1
  store i64 %52, i64* %4
  br label %condition_cont

condition_true4:                                  ; preds = %false
  store i64 2147483647, i64* %2
  %53 = load i64, i64* %2
  ret i64 %53

condition_cont6:                                  ; preds = %false
  br label %condition_cont

loop_expression7:                                 ; preds = %loop_true8, %condition_cont
  %54 = load i64*, i64** %1
  %55 = load i64, i64* %4
  %56 = getelementptr i64, i64* %54, i64 %55
  %57 = load i64, i64* %56
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = icmp ne i64 %59, 0
  %61 = load i64*, i64** %1
  %62 = load i64, i64* %4
  %63 = getelementptr i64, i64* %61, i64 %62
  %64 = load i64, i64* %63
  %65 = icmp sgt i64 %64, 47
  %66 = zext i1 %65 to i64
  %67 = icmp ne i64 %66, 0
  %68 = and i1 %60, %67
  %69 = load i64*, i64** %1
  %70 = load i64, i64* %4
  %71 = getelementptr i64, i64* %69, i64 %70
  %72 = load i64, i64* %71
  %73 = icmp slt i64 %72, 58
  %74 = zext i1 %73 to i64
  %75 = icmp ne i64 %74, 0
  %76 = and i1 %68, %75
  br i1 %76, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %77 = load i64, i64* %2
  %78 = mul i64 %77, 10
  %79 = load i64*, i64** %1
  %80 = load i64, i64* %4
  %81 = getelementptr i64, i64* %79, i64 %80
  %82 = load i64, i64* %81
  %83 = add i64 %78, %82
  %84 = sub i64 %83, 48
  store i64 %84, i64* %2
  %85 = load i64, i64* %4
  %86 = add i64 %85, 1
  store i64 %86, i64* %4
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  %87 = load i64, i64* %2
  %88 = load i64, i64* %3
  %89 = mul i64 %87, %88
  ret i64 %89
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
