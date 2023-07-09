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
  br i1 %5, label %6, label %9

6:                                                ; preds = %entry
  %7 = load i64, i64* %1
  %8 = add i64 %7, 60
  store i64 %8, i64* %1
  br label %12

9:                                                ; preds = %entry
  %10 = load i64, i64* %1
  %11 = sub i64 %10, 15
  store i64 %11, i64* %1
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* %1
  ret i64 %13
}

define i64 @dec(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp sgt i64 %2, 85
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %entry
  %7 = load i64, i64* %1
  %8 = sub i64 %7, 59
  store i64 %8, i64* %1
  br label %12

9:                                                ; preds = %entry
  %10 = load i64, i64* %1
  %11 = add i64 %10, 14
  store i64 %11, i64* %1
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i64, i64* %1
  ret i64 %13
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
