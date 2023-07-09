; ModuleID = 'sysyc'
source_filename = "./57_sort_test5.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @swap(i32* %0, i32 %1, i32 %2) {
entry:
  %3 = alloca i32*
  store i32* %0, i32** %3
  %4 = alloca i32
  store i32 %1, i32* %4
  %5 = alloca i32
  store i32 %2, i32* %5
  %6 = alloca i32
  %7 = load i32*, i32** %3
  %8 = load i32, i32* %4
  %9 = getelementptr i32, i32* %7, i32 %8
  %10 = load i32, i32* %9
  store i32 %10, i32* %6
  %11 = load i32*, i32** %3
  %12 = load i32, i32* %4
  %13 = getelementptr i32, i32* %11, i32 %12
  %14 = load i32*, i32** %3
  %15 = load i32, i32* %5
  %16 = getelementptr i32, i32* %14, i32 %15
  %17 = load i32, i32* %16
  store i32 %17, i32* %13
  %18 = load i32*, i32** %3
  %19 = load i32, i32* %5
  %20 = getelementptr i32, i32* %18, i32 %19
  %21 = load i32, i32* %6
  store i32 %21, i32* %20
  ret i32 0
}

define i32 @heap_ajust(i32* %0, i32 %1, i32 %2) {
entry:
  %3 = alloca i32*
  store i32* %0, i32** %3
  %4 = alloca i32
  store i32 %1, i32* %4
  %5 = alloca i32
  store i32 %2, i32* %5
  %6 = alloca i32
  %7 = load i32, i32* %4
  store i32 %7, i32* %6
  %8 = alloca i32
  %9 = load i32, i32* %6
  %10 = mul i32 %9, 2
  %11 = add i32 %10, 1
  store i32 %11, i32* %8
  br label %12

12:                                               ; preds = %64, %entry
  %13 = load i32, i32* %8
  %14 = load i32, i32* %5
  %15 = add i32 %14, 1
  %16 = icmp slt i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %12
  %20 = load i32, i32* %8
  %21 = load i32, i32* %5
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = icmp ne i32 %23, 0
  %25 = load i32*, i32** %3
  %26 = load i32, i32* %8
  %27 = getelementptr i32, i32* %25, i32 %26
  %28 = load i32, i32* %27
  %29 = load i32*, i32** %3
  %30 = load i32, i32* %8
  %31 = add i32 %30, 1
  %32 = getelementptr i32, i32* %29, i32 %31
  %33 = load i32, i32* %32
  %34 = icmp slt i32 %28, %33
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %35, 0
  %37 = and i1 %24, %36
  br i1 %37, label %39, label %42

38:                                               ; preds = %12
  ret i32 0

39:                                               ; preds = %19
  %40 = load i32, i32* %8
  %41 = add i32 %40, 1
  store i32 %41, i32* %8
  br label %42

42:                                               ; preds = %39, %19
  %43 = load i32*, i32** %3
  %44 = load i32, i32* %6
  %45 = getelementptr i32, i32* %43, i32 %44
  %46 = load i32, i32* %45
  %47 = load i32*, i32** %3
  %48 = load i32, i32* %8
  %49 = getelementptr i32, i32* %47, i32 %48
  %50 = load i32, i32* %49
  %51 = icmp sgt i32 %46, %50
  %52 = zext i1 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  ret i32 0

55:                                               ; preds = %42
  %56 = load i32*, i32** %3
  %57 = load i32, i32* %6
  %58 = load i32, i32* %8
  %59 = call i32 @swap(i32* %56, i32 %57, i32 %58)
  store i32 %59, i32* %6
  %60 = load i32, i32* %8
  store i32 %60, i32* %6
  %61 = load i32, i32* %6
  %62 = mul i32 %61, 2
  %63 = add i32 %62, 1
  store i32 %63, i32* %8
  br label %64

64:                                               ; preds = %55
  br label %12
}

define i32 @heap_sort(i32* %0, i32 %1) {
entry:
  %2 = alloca i32*
  store i32* %0, i32** %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = alloca i32
  %6 = load i32, i32* %3
  %7 = sdiv i32 %6, 2
  %8 = sub i32 %7, 1
  store i32 %8, i32* %4
  br label %9

9:                                                ; preds = %14, %entry
  %10 = load i32, i32* %4
  %11 = icmp sgt i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load i32, i32* %3
  %16 = sub i32 %15, 1
  store i32 %16, i32* %5
  %17 = load i32*, i32** %2
  %18 = load i32, i32* %4
  %19 = load i32, i32* %5
  %20 = call i32 @heap_ajust(i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5
  %21 = load i32, i32* %4
  %22 = sub i32 %21, 1
  store i32 %22, i32* %4
  br label %9

23:                                               ; preds = %9
  %24 = load i32, i32* %3
  %25 = sub i32 %24, 1
  store i32 %25, i32* %4
  br label %26

26:                                               ; preds = %31, %23
  %27 = load i32, i32* %4
  %28 = icmp sgt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = alloca i32
  store i32 0, i32* %32
  %33 = load i32*, i32** %2
  %34 = load i32, i32* %32
  %35 = load i32, i32* %4
  %36 = call i32 @swap(i32* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5
  %37 = load i32, i32* %4
  %38 = sub i32 %37, 1
  store i32 %38, i32* %5
  %39 = load i32*, i32** %2
  %40 = load i32, i32* %32
  %41 = load i32, i32* %5
  %42 = call i32 @heap_ajust(i32* %39, i32 %40, i32 %41)
  store i32 %42, i32* %5
  %43 = load i32, i32* %4
  %44 = sub i32 %43, 1
  store i32 %44, i32* %4
  br label %26

45:                                               ; preds = %26
  ret i32 0
}

define i32 @main() {
entry:
  store i32 10, i32* @0
  %0 = alloca [10 x i32]
  %1 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 0
  store i32 4, i32* %1
  %2 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 1
  store i32 3, i32* %2
  %3 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 2
  store i32 9, i32* %3
  %4 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 3
  store i32 2, i32* %4
  %5 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 4
  store i32 0, i32* %5
  %6 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 5
  store i32 1, i32* %6
  %7 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 6
  store i32 6, i32* %7
  %8 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 7
  store i32 5, i32* %8
  %9 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 8
  store i32 7, i32* %9
  %10 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 9
  store i32 8, i32* %10
  %11 = alloca i32
  store i32 0, i32* %11
  %12 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 0
  %13 = load i32, i32* @0
  %14 = call i32 @heap_sort(i32* %12, i32 %13)
  store i32 %14, i32* %11
  br label %15

15:                                               ; preds = %21, %entry
  %16 = load i32, i32* %11
  %17 = load i32, i32* @0
  %18 = icmp slt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = alloca i32
  %23 = load i32, i32* %11
  %24 = getelementptr [10 x i32], [10 x i32]* %0, i32 0, i32 %23
  %25 = load i32, i32* %24
  store i32 %25, i32* %22
  %26 = load i32, i32* %22
  call void @putint(i32 %26)
  store i32 10, i32* %22
  %27 = load i32, i32* %22
  call void @putch(i32 %27)
  %28 = load i32, i32* %11
  %29 = add i32 %28, 1
  store i32 %29, i32* %11
  br label %15

30:                                               ; preds = %15
  ret i32 0
}
