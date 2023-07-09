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
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  ret i64 1

7:                                                ; preds = %entry
  %8 = load i64, i64* %1
  %9 = icmp eq i64 %8, 2
  %10 = zext i1 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  ret i64 1

13:                                               ; preds = %7
  %14 = alloca i64
  %15 = alloca i64
  %16 = load i64, i64* %1
  %17 = sub i64 %16, 1
  store i64 %17, i64* %14
  %18 = load i64, i64* %1
  %19 = sub i64 %18, 2
  store i64 %19, i64* %15
  %20 = alloca i64
  %21 = load i64, i64* %14
  %22 = call i64 @f(i64 %21)
  %23 = load i64, i64* %15
  %24 = call i64 @f(i64 %23)
  %25 = add i64 %22, %24
  store i64 %25, i64* %20
  %26 = load i64, i64* %20
  ret i64 %26
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
