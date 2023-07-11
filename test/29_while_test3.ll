; ModuleID = 'sysyc'
source_filename = "./29_while_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer
@2 = global i64 zeroinitializer
@3 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @EightWhile() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = alloca i64
  %2 = alloca i64
  store i64 6, i64* %1
  store i64 7, i64* %2
  %3 = alloca i64
  store i64 10, i64* %3
  br label %loop_expression

loop_expression:                                  ; preds = %loop_cont3, %entry
  %4 = load i64, i64* %0
  %5 = icmp slt i64 %4, 20
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %8 = load i64, i64* %0
  %9 = add i64 %8, 3
  store i64 %9, i64* %0
  br label %loop_expression1

loop_cont:                                        ; preds = %loop_expression
  %10 = load i64, i64* %0
  %11 = load i64, i64* %1
  %12 = load i64, i64* %3
  %13 = add i64 %11, %12
  %14 = add i64 %10, %13
  %15 = load i64, i64* %2
  %16 = add i64 %14, %15
  %17 = load i64, i64* @3
  %18 = load i64, i64* %3
  %19 = add i64 %17, %18
  %20 = load i64, i64* @0
  %21 = sub i64 %19, %20
  %22 = load i64, i64* @1
  %23 = add i64 %21, %22
  %24 = sub i64 %16, %23
  ret i64 %24

loop_expression1:                                 ; preds = %loop_cont6, %loop_true
  %25 = load i64, i64* %1
  %26 = icmp slt i64 %25, 10
  %27 = zext i1 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %29 = load i64, i64* %1
  %30 = add i64 %29, 1
  store i64 %30, i64* %1
  br label %loop_expression4

loop_cont3:                                       ; preds = %loop_expression1
  %31 = load i64, i64* %1
  %32 = sub i64 %31, 2
  store i64 %32, i64* %1
  br label %loop_expression

loop_expression4:                                 ; preds = %loop_cont9, %loop_true2
  %33 = load i64, i64* %2
  %34 = icmp eq i64 %33, 7
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %37 = load i64, i64* %2
  %38 = sub i64 %37, 1
  store i64 %38, i64* %2
  br label %loop_expression7

loop_cont6:                                       ; preds = %loop_expression4
  %39 = load i64, i64* %2
  %40 = add i64 %39, 1
  store i64 %40, i64* %2
  br label %loop_expression1

loop_expression7:                                 ; preds = %loop_cont12, %loop_true5
  %41 = load i64, i64* %3
  %42 = icmp slt i64 %41, 20
  %43 = zext i1 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %45 = load i64, i64* %3
  %46 = add i64 %45, 3
  store i64 %46, i64* %3
  br label %loop_expression10

loop_cont9:                                       ; preds = %loop_expression7
  %47 = load i64, i64* %3
  %48 = sub i64 %47, 1
  store i64 %48, i64* %3
  br label %loop_expression4

loop_expression10:                                ; preds = %loop_cont15, %loop_true8
  %49 = load i64, i64* @3
  %50 = icmp sgt i64 %49, 1
  %51 = zext i1 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %loop_true11, label %loop_cont12

loop_true11:                                      ; preds = %loop_expression10
  %53 = load i64, i64* @3
  %54 = sub i64 %53, 1
  store i64 %54, i64* @3
  br label %loop_expression13

loop_cont12:                                      ; preds = %loop_expression10
  %55 = load i64, i64* @3
  %56 = add i64 %55, 1
  store i64 %56, i64* @3
  br label %loop_expression7

loop_expression13:                                ; preds = %loop_cont18, %loop_true11
  %57 = load i64, i64* @2
  %58 = icmp sgt i64 %57, 2
  %59 = zext i1 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %loop_true14, label %loop_cont15

loop_true14:                                      ; preds = %loop_expression13
  %61 = load i64, i64* @2
  %62 = sub i64 %61, 2
  store i64 %62, i64* @2
  br label %loop_expression16

loop_cont15:                                      ; preds = %loop_expression13
  %63 = load i64, i64* @2
  %64 = add i64 %63, 1
  store i64 %64, i64* @2
  br label %loop_expression10

loop_expression16:                                ; preds = %loop_cont21, %loop_true14
  %65 = load i64, i64* @0
  %66 = icmp slt i64 %65, 3
  %67 = zext i1 %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %loop_true17, label %loop_cont18

loop_true17:                                      ; preds = %loop_expression16
  %69 = load i64, i64* @0
  %70 = add i64 %69, 10
  store i64 %70, i64* @0
  br label %loop_expression19

loop_cont18:                                      ; preds = %loop_expression16
  %71 = load i64, i64* @0
  %72 = sub i64 %71, 8
  store i64 %72, i64* @0
  br label %loop_expression13

loop_expression19:                                ; preds = %loop_true20, %loop_true17
  %73 = load i64, i64* @1
  %74 = icmp slt i64 %73, 10
  %75 = zext i1 %74 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %loop_true20, label %loop_cont21

loop_true20:                                      ; preds = %loop_expression19
  %77 = load i64, i64* @1
  %78 = add i64 %77, 8
  store i64 %78, i64* @1
  br label %loop_expression19

loop_cont21:                                      ; preds = %loop_expression19
  %79 = load i64, i64* @1
  %80 = sub i64 %79, 1
  store i64 %80, i64* @1
  br label %loop_expression16
}

define i64 @main() {
entry:
  store i64 1, i64* @0
  store i64 2, i64* @1
  store i64 4, i64* @3
  store i64 6, i64* @2
  %0 = call i64 @EightWhile()
  ret i64 %0
}
