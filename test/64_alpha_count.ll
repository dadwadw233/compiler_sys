; ModuleID = 'sysyc'
source_filename = "./64_alpha_count.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca [500 x i64]
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  store i64 0, i64* %3
  store i64 0, i64* %2
  store i64 0, i64* %1
  br label %loop_expression

loop_expression:                                  ; preds = %condition_cont, %entry
  %4 = load i64, i64* %1
  %5 = icmp ne i64 %4, 10
  %6 = zext i1 %5 to i64
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %8 = call i64 @getch()
  store i64 %8, i64* %1
  %9 = load i64, i64* %1
  %10 = icmp sgt i64 %9, 40
  %11 = zext i1 %10 to i64
  %12 = icmp ne i64 %11, 0
  %13 = load i64, i64* %1
  %14 = icmp slt i64 %13, 91
  %15 = zext i1 %14 to i64
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %12, %16
  br i1 %17, label %early_stop_or, label %not_early_stop_or

loop_cont:                                        ; preds = %loop_expression
  %18 = load i64, i64* %3
  call void @putint(i64 %18)
  ret i64 0

early_stop_or:                                    ; preds = %loop_true
  br label %merge

not_early_stop_or:                                ; preds = %loop_true
  %19 = load i64, i64* %1
  %20 = icmp sgt i64 %19, 96
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  %23 = load i64, i64* %1
  %24 = icmp slt i64 %23, 123
  %25 = zext i1 %24 to i64
  %26 = icmp ne i64 %25, 0
  %27 = and i1 %22, %26
  %28 = or i1 %17, %27
  br label %merge

merge:                                            ; preds = %early_stop_or, %not_early_stop_or
  %29 = phi i1 [ %17, %early_stop_or ], [ %28, %not_early_stop_or ]
  br i1 %29, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %merge
  %30 = load i64, i64* %3
  %31 = add i64 %30, 1
  store i64 %31, i64* %3
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %merge
  %32 = load i64, i64* %2
  %33 = add i64 %32, 1
  store i64 %33, i64* %2
  br label %loop_expression
}
