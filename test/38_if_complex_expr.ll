; ModuleID = 'sysyc'
source_filename = "./38_if_complex_expr.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  store i64 5, i64* %0
  store i64 5, i64* %1
  store i64 1, i64* %2
  store i64 -2, i64* %3
  store i64 2, i64* %4
  %5 = load i64, i64* %3
  %6 = mul i64 %5, 1
  %7 = sdiv i64 %6, 2
  %8 = icmp slt i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %early_stop_or, label %not_early_stop_or

early_stop_or:                                    ; preds = %entry
  br label %merge

not_early_stop_or:                                ; preds = %entry
  %11 = load i64, i64* %0
  %12 = load i64, i64* %1
  %13 = sub i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = icmp ne i64 %15, 0
  %17 = load i64, i64* %2
  %18 = add i64 %17, 3
  %19 = srem i64 %18, 2
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = icmp ne i64 %21, 0
  %23 = and i1 %16, %22
  %24 = or i1 %10, %23
  br label %merge

merge:                                            ; preds = %early_stop_or, %not_early_stop_or
  %25 = phi i1 [ %10, %early_stop_or ], [ %24, %not_early_stop_or ]
  br i1 %25, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %merge
  %26 = load i64, i64* %4
  call void @putint(i64 %26)
  br label %condition_cont

condition_cont:                                   ; preds = %condition_true, %merge
  %27 = load i64, i64* %3
  %28 = srem i64 %27, 2
  %29 = add i64 %28, 67
  %30 = icmp slt i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %early_stop_or1, label %not_early_stop_or2

early_stop_or1:                                   ; preds = %condition_cont
  br label %merge3

not_early_stop_or2:                               ; preds = %condition_cont
  %33 = load i64, i64* %0
  %34 = load i64, i64* %1
  %35 = sub i64 %33, %34
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = icmp ne i64 %37, 0
  %39 = load i64, i64* %2
  %40 = add i64 %39, 2
  %41 = srem i64 %40, 2
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = icmp ne i64 %43, 0
  %45 = and i1 %38, %44
  %46 = or i1 %32, %45
  br label %merge3

merge3:                                           ; preds = %early_stop_or1, %not_early_stop_or2
  %47 = phi i1 [ %32, %early_stop_or1 ], [ %46, %not_early_stop_or2 ]
  br i1 %47, label %condition_true4, label %condition_cont5

condition_true4:                                  ; preds = %merge3
  store i64 4, i64* %4
  %48 = load i64, i64* %4
  call void @putint(i64 %48)
  br label %condition_cont5

condition_cont5:                                  ; preds = %condition_true4, %merge3
  ret i64 0
}
