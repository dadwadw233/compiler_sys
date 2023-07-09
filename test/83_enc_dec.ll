; ModuleID = 'sysyc'
source_filename = "./83_enc_dec.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @enc(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = load i32, i32* %1
  %3 = icmp sgt i32 %2, 25
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %entry
  %7 = load i32, i32* %1
  %8 = add i32 %7, 60
  store i32 %8, i32* %1
  br label %12

9:                                                ; preds = %entry
  %10 = load i32, i32* %1
  %11 = sub i32 %10, 15
  store i32 %11, i32* %1
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %1
  ret i32 %13
}

define i32 @dec(i32 %0) {
entry:
  %1 = alloca i32
  store i32 %0, i32* %1
  %2 = load i32, i32* %1
  %3 = icmp sgt i32 %2, 85
  %4 = zext i1 %3 to i32
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %entry
  %7 = load i32, i32* %1
  %8 = sub i32 %7, 59
  store i32 %8, i32* %1
  br label %12

9:                                                ; preds = %entry
  %10 = load i32, i32* %1
  %11 = add i32 %10, 14
  store i32 %11, i32* %1
  br label %12

12:                                               ; preds = %9, %6
  %13 = load i32, i32* %1
  ret i32 %13
}

define i32 @main() {
entry:
  %0 = alloca i32
  store i32 400, i32* %0
  %1 = alloca i32
  %2 = load i32, i32* %0
  %3 = call i32 @enc(i32 %2)
  store i32 %3, i32* %1
  %4 = load i32, i32* %1
  %5 = call i32 @dec(i32 %4)
  store i32 %5, i32* %1
  %6 = load i32, i32* %1
  call void @putint(i32 %6)
  store i32 10, i32* %1
  %7 = load i32, i32* %1
  call void @putch(i32 %7)
  ret i32 0
}
