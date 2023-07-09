; ModuleID = 'sysyc'
source_filename = "./36_domain_test.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [2 x i32] zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @func(i32* %0) {
entry:
  %1 = alloca i32*
  store i32* %0, i32** %1
  store i32 1, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @0, i32 0, i32 0)
  %2 = load i32*, i32** %1
  %3 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @0, i32 0, i32 0)
  %4 = sub i32 3, %3
  %5 = getelementptr i32, i32* %2, i32 %4
  %6 = load i32, i32* %5
  ret i32 %6
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca [3 x i32]
  %2 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 0
  store i32 -1, i32* %2
  %3 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 1
  store i32 4, i32* %3
  %4 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 2
  store i32 8, i32* %4
  %5 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 0
  %6 = call i32 @func(i32* %5)
  store i32 %6, i32* %0
  %7 = load i32, i32* %0
  %8 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 1
  %9 = load i32, i32* %8
  %10 = add i32 %7, %9
  ret i32 %10
}
