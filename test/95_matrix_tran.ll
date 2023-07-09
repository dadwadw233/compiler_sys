; ModuleID = 'sysyc'
source_filename = "./95_matrix_tran.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer
@2 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @tran(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8) {
entry:
  %9 = alloca i64*
  store i64* %0, i64** %9
  %10 = alloca i64*
  store i64* %1, i64** %10
  %11 = alloca i64*
  store i64* %2, i64** %11
  %12 = alloca i64*
  store i64* %3, i64** %12
  %13 = alloca i64*
  store i64* %4, i64** %13
  %14 = alloca i64*
  store i64* %5, i64** %14
  %15 = alloca i64*
  store i64* %6, i64** %15
  %16 = alloca i64*
  store i64* %7, i64** %16
  %17 = alloca i64*
  store i64* %8, i64** %17
  %18 = alloca i64
  store i64 0, i64* %18
  %19 = load i64*, i64** %16
  %20 = getelementptr i64, i64* %19, i64 2
  %21 = load i64*, i64** %11
  %22 = getelementptr i64, i64* %21, i64 1
  %23 = load i64, i64* %22
  store i64 %23, i64* %20
  %24 = load i64*, i64** %17
  %25 = getelementptr i64, i64* %24, i64 1
  %26 = load i64*, i64** %10
  %27 = getelementptr i64, i64* %26, i64 2
  %28 = load i64, i64* %27
  store i64 %28, i64* %25
  %29 = load i64*, i64** %15
  %30 = getelementptr i64, i64* %29, i64 1
  %31 = load i64*, i64** %10
  %32 = getelementptr i64, i64* %31, i64 0
  %33 = load i64, i64* %32
  store i64 %33, i64* %30
  %34 = load i64*, i64** %15
  %35 = getelementptr i64, i64* %34, i64 2
  %36 = load i64*, i64** %11
  %37 = getelementptr i64, i64* %36, i64 0
  %38 = load i64, i64* %37
  store i64 %38, i64* %35
  %39 = load i64*, i64** %16
  %40 = getelementptr i64, i64* %39, i64 0
  %41 = load i64*, i64** %9
  %42 = getelementptr i64, i64* %41, i64 1
  %43 = load i64, i64* %42
  store i64 %43, i64* %40
  %44 = load i64*, i64** %17
  %45 = getelementptr i64, i64* %44, i64 0
  %46 = load i64*, i64** %9
  %47 = getelementptr i64, i64* %46, i64 2
  %48 = load i64, i64* %47
  store i64 %48, i64* %45
  %49 = load i64*, i64** %16
  %50 = getelementptr i64, i64* %49, i64 1
  %51 = load i64*, i64** %10
  %52 = getelementptr i64, i64* %51, i64 1
  %53 = load i64, i64* %52
  store i64 %53, i64* %50
  %54 = load i64*, i64** %17
  %55 = getelementptr i64, i64* %54, i64 2
  %56 = load i64*, i64** %11
  %57 = getelementptr i64, i64* %56, i64 2
  %58 = load i64, i64* %57
  store i64 %58, i64* %55
  %59 = load i64*, i64** %15
  %60 = getelementptr i64, i64* %59, i64 0
  %61 = load i64*, i64** %9
  %62 = getelementptr i64, i64* %61, i64 0
  %63 = load i64, i64* %62
  store i64 %63, i64* %60
  ret i64 0
}

define i64 @main() {
entry:
  store i64 3, i64* @2
  store i64 3, i64* @0
  store i64 3, i64* @1
  %0 = alloca [3 x i64]
  %1 = alloca [3 x i64]
  %2 = alloca [3 x i64]
  %3 = alloca [3 x i64]
  %4 = alloca [3 x i64]
  %5 = alloca [3 x i64]
  %6 = alloca [6 x i64]
  %7 = alloca [3 x i64]
  %8 = alloca [3 x i64]
  %9 = alloca i64
  store i64 0, i64* %9
  br label %10

10:                                               ; preds = %16, %entry
  %11 = load i64, i64* %9
  %12 = load i64, i64* @0
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load i64, i64* %9
  %18 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 %17
  %19 = load i64, i64* %9
  store i64 %19, i64* %18
  %20 = load i64, i64* %9
  %21 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 %20
  %22 = load i64, i64* %9
  store i64 %22, i64* %21
  %23 = load i64, i64* %9
  %24 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 %23
  %25 = load i64, i64* %9
  store i64 %25, i64* %24
  %26 = load i64, i64* %9
  %27 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 %26
  %28 = load i64, i64* %9
  store i64 %28, i64* %27
  %29 = load i64, i64* %9
  %30 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 %29
  %31 = load i64, i64* %9
  store i64 %31, i64* %30
  %32 = load i64, i64* %9
  %33 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 %32
  %34 = load i64, i64* %9
  store i64 %34, i64* %33
  %35 = load i64, i64* %9
  %36 = add i64 %35, 1
  store i64 %36, i64* %9
  br label %10

37:                                               ; preds = %10
  %38 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  %39 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %40 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 0
  %41 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %42 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %43 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %44 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %45 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %46 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %47 = call i64 @tran(i64* %38, i64* %39, i64* %40, i64* %41, i64* %42, i64* %43, i64* %44, i64* %45, i64* %46)
  store i64 %47, i64* %9
  %48 = alloca i64
  br label %49

49:                                               ; preds = %55, %37
  %50 = load i64, i64* %9
  %51 = load i64, i64* @2
  %52 = icmp slt i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i64, i64* %9
  %57 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 %56
  %58 = load i64, i64* %57
  store i64 %58, i64* %48
  %59 = load i64, i64* %48
  call void @putint(i64 %59)
  %60 = load i64, i64* %9
  %61 = add i64 %60, 1
  store i64 %61, i64* %9
  br label %49

62:                                               ; preds = %49
  store i64 10, i64* %48
  %63 = load i64, i64* %48
  call void @putch(i64 %63)
  store i64 0, i64* %9
  br label %64

64:                                               ; preds = %70, %62
  %65 = load i64, i64* %9
  %66 = load i64, i64* @2
  %67 = icmp slt i64 %65, %66
  %68 = zext i1 %67 to i64
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i64, i64* %9
  %72 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 %71
  %73 = load i64, i64* %72
  store i64 %73, i64* %48
  %74 = load i64, i64* %48
  call void @putint(i64 %74)
  %75 = load i64, i64* %9
  %76 = add i64 %75, 1
  store i64 %76, i64* %9
  br label %64

77:                                               ; preds = %64
  store i64 10, i64* %48
  store i64 0, i64* %9
  %78 = load i64, i64* %48
  call void @putch(i64 %78)
  br label %79

79:                                               ; preds = %85, %77
  %80 = load i64, i64* %9
  %81 = load i64, i64* @2
  %82 = icmp slt i64 %80, %81
  %83 = zext i1 %82 to i64
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i64, i64* %9
  %87 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 %86
  %88 = load i64, i64* %87
  store i64 %88, i64* %48
  %89 = load i64, i64* %48
  call void @putint(i64 %89)
  %90 = load i64, i64* %9
  %91 = add i64 %90, 1
  store i64 %91, i64* %9
  br label %79

92:                                               ; preds = %79
  store i64 10, i64* %48
  %93 = load i64, i64* %48
  call void @putch(i64 %93)
  ret i64 0
}
