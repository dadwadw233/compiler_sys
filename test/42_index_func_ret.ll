; ModuleID = 'sysyc'
source_filename = "./42_index_func_ret.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @_getMaxOfAll(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  store i32 -999999, i32* %4
  %5 = load i32, i32* %3
  %6 = sub i32 %5, 1
  store i32 %6, i32* %3
  br label %7

7:                                                ; preds = %28, %entry
  %8 = load i32, i32* %3
  %9 = icmp sgt i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load i32*, i32** %2
  %14 = load i32, i32* %3
  %15 = getelementptr i32, i32* %13, i32 %14
  %16 = load i32, i32* %15
  %17 = load i32, i32* %4
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %28

21:                                               ; preds = %7
  %22 = load i32, i32* %4
  ret i32 %22

23:                                               ; preds = %12
  %24 = load i32*, i32** %2
  %25 = load i32, i32* %3
  %26 = getelementptr i32, i32* %24, i32 %25
  %27 = load i32, i32* %26
  store i32 %27, i32* %4
  br label %28

28:                                               ; preds = %23, %12
  %29 = load i32, i32* %3
  %30 = sub i32 %29, 1
  store i32 %30, i32* %3
  br label %7
}

define i32 @main() {
entry:
  %0 = alloca [3 x i32]
  %1 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 0
  store i32 -2, i32* %1
  %2 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 1
  store i32 2, i32* %2
  %3 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 2
  store i32 -7, i32* %3
  %4 = alloca i32
  %5 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 0
  %6 = call i32 @_getMaxOfAll(i32* %5, i32 3)
  %7 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 %6
  %8 = load i32, i32* %7
  store i32 %8, i32* %4
  %9 = load i32, i32* %4
  call void @putint(i32 %9)
  ret i32 0
}
