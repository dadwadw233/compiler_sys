; ModuleID = 'sysyc'
source_filename = "./22_if_test1.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @ifElse() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = load i64, i64* %0
  %2 = icmp eq i64 %1, 5
  %3 = zext i1 %2 to i64
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %condition_true, label %false

condition_true:                                   ; preds = %entry
  store i64 25, i64* %0
  br label %condition_cont

false:                                            ; preds = %entry
  %5 = load i64, i64* %0
  %6 = mul i64 %5, 2
  store i64 %6, i64* %0
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  %7 = load i64, i64* %0
  ret i64 %7
}

define i64 @main() {
entry:
  %0 = call i64 @ifElse()
  ret i64 %0
}
