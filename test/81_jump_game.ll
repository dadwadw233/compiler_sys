; ModuleID = 'sysyc'
source_filename = "./81_jump_game.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @canJump(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = load i64, i64* %3
  %5 = icmp eq i64 %4, 1
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 1

condition_cont:                                   ; preds = %entry
  %8 = load i64*, i64** %2
  %9 = getelementptr i64, i64* %8, i64 0
  %10 = load i64, i64* %9
  %11 = load i64, i64* %3
  %12 = sub i64 %11, 2
  %13 = icmp sgt i64 %10, %12
  %14 = zext i1 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %condition_cont
  ret i64 1

condition_cont2:                                  ; preds = %condition_cont
  %16 = alloca [10 x i64]
  %17 = alloca i64
  store i64 0, i64* %17
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %condition_cont2
  %18 = load i64, i64* %17
  %19 = load i64, i64* %3
  %20 = sub i64 %19, 1
  %21 = icmp slt i64 %18, %20
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %24 = load i64, i64* %17
  %25 = getelementptr [10 x i64], [10 x i64]* %16, i64 0, i64 %24
  store i64 0, i64* %25
  %26 = load i64, i64* %17
  %27 = add i64 %26, 1
  store i64 %27, i64* %17
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %28 = load i64, i64* %3
  %29 = sub i64 %28, 1
  %30 = getelementptr [10 x i64], [10 x i64]* %16, i64 0, i64 %29
  store i64 1, i64* %30
  %31 = load i64, i64* %3
  %32 = sub i64 %31, 2
  store i64 %32, i64* %17
  br label %loop_expression3

loop_expression3:                                 ; preds = %loop_cont10, %loop_cont
  %33 = load i64, i64* %17
  %34 = icmp sgt i64 %33, -1
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %loop_true4, label %loop_cont5

loop_true4:                                       ; preds = %loop_expression3
  %37 = alloca i64
  %38 = load i64*, i64** %2
  %39 = load i64, i64* %17
  %40 = getelementptr i64, i64* %38, i64 %39
  %41 = load i64, i64* %40
  %42 = load i64, i64* %3
  %43 = sub i64 %42, 1
  %44 = load i64, i64* %17
  %45 = sub i64 %43, %44
  %46 = icmp slt i64 %41, %45
  %47 = zext i1 %46 to i64
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %condition_true6, label %false

loop_cont5:                                       ; preds = %loop_expression3
  %49 = getelementptr [10 x i64], [10 x i64]* %16, i64 0, i64 0
  %50 = load i64, i64* %49
  ret i64 %50

condition_true6:                                  ; preds = %loop_true4
  %51 = load i64*, i64** %2
  %52 = load i64, i64* %17
  %53 = getelementptr i64, i64* %51, i64 %52
  %54 = load i64, i64* %53
  store i64 %54, i64* %37
  br label %condition_cont7

false:                                            ; preds = %loop_true4
  %55 = load i64, i64* %3
  %56 = sub i64 %55, 1
  %57 = load i64, i64* %17
  %58 = sub i64 %56, %57
  store i64 %58, i64* %37
  br label %condition_cont7

condition_cont7:                                  ; preds = %false, %condition_true6
  br label %loop_expression8

loop_expression8:                                 ; preds = %condition_cont13, %condition_cont7
  %59 = load i64, i64* %37
  %60 = icmp sgt i64 %59, -1
  %61 = zext i1 %60 to i64
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %loop_true9, label %loop_cont10

loop_true9:                                       ; preds = %loop_expression8
  %63 = load i64, i64* %17
  %64 = load i64, i64* %37
  %65 = add i64 %63, %64
  %66 = getelementptr [10 x i64], [10 x i64]* %16, i64 0, i64 %65
  %67 = load i64, i64* %66
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %condition_true11, label %condition_cont13

loop_cont10:                                      ; preds = %loop_expression8
  %71 = load i64, i64* %17
  %72 = sub i64 %71, 1
  store i64 %72, i64* %17
  br label %loop_expression3

condition_true11:                                 ; preds = %loop_true9
  %73 = load i64, i64* %17
  %74 = getelementptr [10 x i64], [10 x i64]* %16, i64 0, i64 %73
  store i64 1, i64* %74
  br label %condition_cont13

condition_cont13:                                 ; preds = %condition_true11, %loop_true9
  %75 = load i64, i64* %37
  %76 = sub i64 %75, 1
  store i64 %76, i64* %37
  br label %loop_expression8
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca [10 x i64]
  %2 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  store i64 3, i64* %2
  %3 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 1
  store i64 3, i64* %3
  %4 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 2
  store i64 9, i64* %4
  %5 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 3
  store i64 0, i64* %5
  %6 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 4
  store i64 0, i64* %6
  %7 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 5
  store i64 1, i64* %7
  %8 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 6
  store i64 1, i64* %8
  %9 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 7
  store i64 5, i64* %9
  %10 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 8
  store i64 7, i64* %10
  %11 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 9
  store i64 8, i64* %11
  store i64 10, i64* %0
  %12 = getelementptr [10 x i64], [10 x i64]* %1, i64 0, i64 0
  %13 = load i64, i64* %0
  %14 = call i64 @canJump(i64* %12, i64 %13)
  store i64 %14, i64* %0
  %15 = load i64, i64* %0
  ret i64 %15
}
