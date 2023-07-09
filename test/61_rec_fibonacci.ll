; ModuleID = 'sysyc'
source_filename = "./61_rec_fibonacci.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @f(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = load i32, i32* %1
  %3 = icmp eq i32 %2, 1
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %entry
  ret i32 1

7:                                                ; preds = %entry
  %8 = load i32, i32* %1
  %9 = icmp eq i32 %8, 2
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  ret i32 1

13:                                               ; preds = %7
  %14 = alloca i32
  %15 = alloca i32
  %16 = load i32, i32* %1
  %17 = sub i32 %16, 1
  store i32 %17, i32* %14
  %18 = load i32, i32* %1
  %19 = sub i32 %18, 2
  store i32 %19, i32* %15
  %20 = alloca i32
  %21 = load i32, i32* %14
  %22 = call i32 @f(i32 %21)
  %23 = load i32, i32* %15
  %24 = call i32 @f(i32 %23)
  %25 = add i32 %22, %24
  store i32 %25, i32* %20
  %26 = load i32, i32* %20
  ret i32 %26
}

define i32 @main() {
entry:
  %0 = call i32 @getint()
  store i32 %0, i32* @0
  %1 = alloca i32
  %2 = alloca i32
  %3 = load i32, i32* @0
  %4 = call i32 @f(i32 %3)
  store i32 %4, i32* %1
  %5 = load i32, i32* %1
  call void @putint(i32 %5)
  %6 = alloca i32
  store i32 10, i32* %6
  %7 = load i32, i32* %6
  call void @putch(i32 %7)
  %8 = load i32, i32* %1
  ret i32 %8
}
