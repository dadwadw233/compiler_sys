; ModuleID = 'sysyc'
source_filename = "./61_rec_fibonacci.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @f(i64 %0) {
entry:
  %1 = alloca i64
  store i64 %0, i64* %1
  %2 = load i64, i64* %1
  %3 = icmp eq i64 %2, 1
  %4 = zext i1 %3 to i64
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 1

condition_cont:                                   ; preds = %entry
  %6 = load i64, i64* %1
  %7 = icmp eq i64 %6, 2
  %8 = zext i1 %7 to i64
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %condition_true1, label %condition_cont2

condition_true1:                                  ; preds = %condition_cont
  ret i64 1

condition_cont2:                                  ; preds = %condition_cont
  %10 = alloca i64
  %11 = alloca i64
  %12 = load i64, i64* %1
  %13 = sub i64 %12, 1
  store i64 %13, i64* %10
  %14 = load i64, i64* %1
  %15 = sub i64 %14, 2
  store i64 %15, i64* %11
  %16 = alloca i64
  %17 = load i64, i64* %10
  %18 = call i64 @f(i64 %17)
  %19 = load i64, i64* %11
  %20 = call i64 @f(i64 %19)
  %21 = add i64 %18, %20
  store i64 %21, i64* %16
  %22 = load i64, i64* %16
  ret i64 %22
}

define i64 @main() {
entry:
  %0 = call i64 @getint()
  store i64 %0, i64* @0
  %1 = alloca i64
  %2 = alloca i64
  %3 = load i64, i64* @0
  %4 = call i64 @f(i64 %3)
  store i64 %4, i64* %1
  %5 = load i64, i64* %1
  call void @putint(i64 %5)
  %6 = alloca i64
  store i64 10, i64* %6
  %7 = load i64, i64* %6
  call void @putch(i64 %7)
  %8 = load i64, i64* %1
  ret i64 %8
}
