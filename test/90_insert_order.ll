; ModuleID = 'sysyc'
source_filename = "./90_insert_order.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @insert(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = alloca i32
  store i32 0, i32* %4
  br label %6

6:                                                ; preds = %21, %entry
  %7 = load i32, i32* %3
  %8 = load i32*, i32** %2
  %9 = load i32, i32* %4
  %10 = getelementptr i32, i32* %8, i32 %9
  %11 = load i32, i32* %10
  %12 = icmp sgt i32 %7, %11
  %13 = zext i1 %12 to i32
  %14 = icmp ne i32 %13, 0
  %15 = load i32, i32* %4
  %16 = load i32, i32* @0
  %17 = icmp slt i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = icmp ne i32 %18, 0
  %20 = and i1 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* %4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4
  br label %6

24:                                               ; preds = %6
  %25 = load i32, i32* @0
  store i32 %25, i32* %5
  br label %26

26:                                               ; preds = %32, %24
  %27 = load i32, i32* %5
  %28 = load i32, i32* %4
  %29 = icmp sgt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i32*, i32** %2
  %34 = load i32, i32* %5
  %35 = getelementptr i32, i32* %33, i32 %34
  %36 = load i32*, i32** %2
  %37 = load i32, i32* %5
  %38 = sub i32 %37, 1
  %39 = getelementptr i32, i32* %36, i32 %38
  %40 = load i32, i32* %39
  store i32 %40, i32* %35
  %41 = load i32*, i32** %2
  %42 = load i32, i32* %4
  %43 = getelementptr i32, i32* %41, i32 %42
  %44 = load i32, i32* %3
  store i32 %44, i32* %43
  %45 = load i32, i32* %5
  %46 = sub i32 %45, 1
  store i32 %46, i32* %5
  br label %26

47:                                               ; preds = %26
  ret i32 0
}

define i32 @main() {
entry:
  store i32 10, i32* @0
  %0 = alloca [11 x i32]
  %1 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 0
  store i32 1, i32* %1
  %2 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 1
  store i32 3, i32* %2
  %3 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 2
  store i32 4, i32* %3
  %4 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 3
  store i32 7, i32* %4
  %5 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 4
  store i32 8, i32* %5
  %6 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 5
  store i32 11, i32* %6
  %7 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 6
  store i32 13, i32* %7
  %8 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 7
  store i32 18, i32* %8
  %9 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 8
  store i32 56, i32* %9
  %10 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 9
  store i32 78, i32* %10
  %11 = alloca i32
  %12 = alloca i32
  store i32 0, i32* %12
  %13 = call i32 @getint()
  store i32 %13, i32* %11
  %14 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 0
  %15 = load i32, i32* %11
  %16 = call i32 @insert(i32* %14, i32 %15)
  store i32 %16, i32* %11
  br label %17

17:                                               ; preds = %23, %entry
  %18 = load i32, i32* %12
  %19 = load i32, i32* @0
  %20 = icmp slt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %12
  %25 = getelementptr [11 x i32], [11 x i32]* %0, i32 0, i32 %24
  %26 = load i32, i32* %25
  store i32 %26, i32* %11
  %27 = load i32, i32* %11
  call void @putint(i32 %27)
  store i32 10, i32* %11
  %28 = load i32, i32* %11
  call void @putch(i32 %28)
  %29 = load i32, i32* %12
  %30 = add i32 %29, 1
  store i32 %30, i32* %12
  br label %17

31:                                               ; preds = %17
  ret i32 0
}
