; ModuleID = 'sysyc'
source_filename = "./83_enc_dec.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @enc(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp sgt i64 %2, 25
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %condition_true, label %false

condition_true:                                   ; preds = %entry
  %6 = load i64, i64* %1
  %7 = add i64 %6, 60
  store i64 %7, i64* %1
  br label %condition_cont

false:                                            ; preds = %entry
  %8 = load i64, i64* %1
  %9 = sub i64 %8, 15
  store i64 %9, i64* %1
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  %10 = load i64, i64* %1
  ret i64 %10
}

define i64 @dec(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp sgt i64 %2, 85
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %condition_true, label %false

condition_true:                                   ; preds = %entry
  %6 = load i64, i64* %1
  %7 = sub i64 %6, 59
  store i64 %7, i64* %1
  br label %condition_cont

false:                                            ; preds = %entry
  %8 = load i64, i64* %1
  %9 = add i64 %8, 14
  store i64 %9, i64* %1
  br label %condition_cont

condition_cont:                                   ; preds = %false, %condition_true
  %10 = load i64, i64* %1
  ret i64 %10
}

define i64 @main() {
entry:
  %0 = alloca i64
  store i64 400, i64* %0
  %1 = alloca i64
  %2 = load i64, i64* %0
  %3 = call i64 @enc(i64 %2)
  store i64 %3, i64* %1
  %4 = load i64, i64* %1
  %5 = call i64 @dec(i64 %4)
  store i64 %5, i64* %1
  %6 = load i64, i64* %1
  call void @putint(i64 %6)
  store i64 10, i64* %1
  %7 = load i64, i64* %1
  call void @putch(i64 %7)
  ret i64 0
}
