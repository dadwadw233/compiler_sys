; ModuleID = 'sysyc'
source_filename = "./20_arr_sum.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global [5 x i32] zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = call i32 @getint()
  store i32 %0, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @0, i32 0, i32 0)
  %1 = call i32 @getint()
  store i32 %1, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @0, i32 0, i32 1)
  %2 = call i32 @getint()
  store i32 %2, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @0, i32 0, i32 2)
  %3 = call i32 @getint()
  store i32 %3, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @0, i32 0, i32 3)
  %4 = call i32 @getint()
  store i32 %4, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @0, i32 0, i32 4)
  %5 = alloca i32
  store i32 4, i32* %5
  %6 = alloca i32
  store i32 0, i32* %6
  br label %7

7:                                                ; preds = %12, %entry
  %8 = load i32, i32* %5
  %9 = icmp sgt i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i32, i32* %6
  %14 = load i32, i32* %5
  %15 = getelementptr [5 x i32], [5 x i32]* @0, i32 0, i32 %14
  %16 = load i32, i32* %15
  %17 = add i32 %13, %16
  store i32 %17, i32* %6
  %18 = load i32, i32* %5
  %19 = sub i32 %18, 1
  store i32 %19, i32* %5
  br label %7

20:                                               ; preds = %7
  %21 = load i32, i32* %6
  ret i32 %21
}
