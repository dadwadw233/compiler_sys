; ModuleID = 'sysyc'
source_filename = "./26_if_test5.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @if_if_Else() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = alloca i64
  store i64 10, i64* %1
  %2 = load i64, i64* %0
  %3 = icmp eq i64 %2, 5
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %condition_true, label %false

condition_true:                                   ; preds = %entry
  %6 = load i64, i64* %1
  %7 = icmp eq i64 %6, 10
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %condition_true1, label %condition_cont3

false:                                            ; preds = %entry
  %10 = load i64, i64* %0
  %11 = add i64 %10, 15
  store i64 %11, i64* %0
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_cont3
  %12 = load i64, i64* %0
  ret i64 %12

condition_true1:                                  ; preds = %condition_true
  store i64 25, i64* %0
  br label %condition_cont3

condition_cont3:                                  ; preds = %condition_true1, %condition_true
  br label %condition_cont
}

define i64 @main() {
entry:
  %0 = call i64 @if_if_Else()
  ret i64 %0
}
