; ModuleID = 'sysyc'
source_filename = "./82_int_split.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @split(i32 %0, i32* %1) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32*
  store i32* %1, i32** %3
  %4 = alloca i32
  %5 = load i32, i32* @0
  %6 = sub i32 %5, 1
  store i32 %6, i32* %4
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i32, i32* %4
  %9 = icmp ne i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32*, i32** %3
  %14 = load i32, i32* %4
  %15 = getelementptr i32, i32* %13, i32 %14
  %16 = load i32, i32* %2
  %17 = srem i32 %16, 10
  store i32 %17, i32* %15
  %18 = load i32, i32* %2
  %19 = sdiv i32 %18, 10
  store i32 %19, i32* %2
  %20 = load i32, i32* %4
  %21 = sub i32 %20, 1
  store i32 %21, i32* %4
  br label %7

22:                                               ; preds = %7
  ret i32 0
}

define i32 @main() {
entry:
  store i32 4, i32* @0
  store i32 10, i32* @1
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca [4 x i32]
  store i32 1478, i32* %1
  %3 = load i32, i32* %1
  %4 = getelementptr [4 x i32], [4 x i32]* %2, i32 0, i32 0
  %5 = call i32 @split(i32 %3, i32* %4)
  store i32 %5, i32* %1
  %6 = alloca i32
  store i32 0, i32* %0
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i32, i32* %0
  %9 = icmp slt i32 %8, 4
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i32, i32* %0
  %14 = getelementptr [4 x i32], [4 x i32]* %2, i32 0, i32 %13
  %15 = load i32, i32* %14
  store i32 %15, i32* %6
  %16 = load i32, i32* %6
  call void @putint(i32 %16)
  %17 = load i32, i32* @1
  call void @putch(i32 %17)
  %18 = load i32, i32* %0
  %19 = add i32 %18, 1
  store i32 %19, i32* %0
  br label %7

20:                                               ; preds = %7
  ret i32 0
}
