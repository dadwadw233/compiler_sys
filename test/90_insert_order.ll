; ModuleID = 'sysyc'
source_filename = "./90_insert_order.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @insert(i64* %0, i64 %1) {
entry:
  %2 = alloca i64*
  store i64* %0, i64** %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = alloca i64
  store i64 0, i64* %4
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %6 = load i64, i64* %3
  %7 = load i64*, i64** %2
  %8 = load i64, i64* %4
  %9 = getelementptr i64, i64* %7, i64 %8
  %10 = load i64, i64* %9
  %11 = icmp sgt i64 %6, %10
  %12 = zext i1 %11 to i64
  %13 = icmp ne i64 %12, 0
  %14 = load i64, i64* %4
  %15 = load i64, i64* @0
  %16 = icmp slt i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %13, %18
  br i1 %19, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %20 = load i64, i64* %4
  %21 = add i64 %20, 1
  store i64 %21, i64* %4
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %22 = load i64, i64* @0
  store i64 %22, i64* %5
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %23 = load i64, i64* %5
  %24 = load i64, i64* %4
  %25 = icmp sgt i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %28 = load i64*, i64** %2
  %29 = load i64, i64* %5
  %30 = getelementptr i64, i64* %28, i64 %29
  %31 = load i64*, i64** %2
  %32 = load i64, i64* %5
  %33 = sub i64 %32, 1
  %34 = getelementptr i64, i64* %31, i64 %33
  %35 = load i64, i64* %34
  store i64 %35, i64* %30
  %36 = load i64*, i64** %2
  %37 = load i64, i64* %4
  %38 = getelementptr i64, i64* %36, i64 %37
  %39 = load i64, i64* %3
  store i64 %39, i64* %38
  %40 = load i64, i64* %5
  %41 = sub i64 %40, 1
  store i64 %41, i64* %5
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  ret i64 0
}

define i64 @main() {
entry:
  store i64 10, i64* @0
  %0 = alloca [11 x i64]
  %1 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 0
  store i64 1, i64* %1
  %2 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 1
  store i64 3, i64* %2
  %3 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 2
  store i64 4, i64* %3
  %4 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 3
  store i64 7, i64* %4
  %5 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 4
  store i64 8, i64* %5
  %6 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 5
  store i64 11, i64* %6
  %7 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 6
  store i64 13, i64* %7
  %8 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 7
  store i64 18, i64* %8
  %9 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 8
  store i64 56, i64* %9
  %10 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 9
  store i64 78, i64* %10
  %11 = alloca i64
  %12 = alloca i64
  store i64 0, i64* %12
  %13 = call i64 @getint()
  store i64 %13, i64* %11
  %14 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 0
  %15 = load i64, i64* %11
  %16 = call i64 @insert(i64* %14, i64 %15)
  store i64 %16, i64* %11
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %17 = load i64, i64* %12
  %18 = load i64, i64* @0
  %19 = icmp slt i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %22 = load i64, i64* %12
  %23 = getelementptr [11 x i64], [11 x i64]* %0, i64 0, i64 %22
  %24 = load i64, i64* %23
  store i64 %24, i64* %11
  %25 = load i64, i64* %11
  call void @putint(i64 %25)
  store i64 10, i64* %11
  %26 = load i64, i64* %11
  call void @putch(i64 %26)
  %27 = load i64, i64* %12
  %28 = add i64 %27, 1
  store i64 %28, i64* %12
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  ret i64 0
}
