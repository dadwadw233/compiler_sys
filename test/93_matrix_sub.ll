; ModuleID = 'sysyc'
source_filename = "./93_matrix_sub.sy"
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

define i64 @sub(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8) {
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
  br label %19

19:                                               ; preds = %24, %entry
  %20 = load i64, i64* %18
  %21 = icmp slt i64 %20, 3
  %22 = zext i1 %21 to i64
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %19
  %25 = load i64*, i64** %15
  %26 = load i64, i64* %18
  %27 = getelementptr i64, i64* %25, i64 %26
  %28 = load i64*, i64** %9
  %29 = load i64, i64* %18
  %30 = getelementptr i64, i64* %28, i64 %29
  %31 = load i64, i64* %30
  %32 = load i64*, i64** %12
  %33 = load i64, i64* %18
  %34 = getelementptr i64, i64* %32, i64 %33
  %35 = load i64, i64* %34
  %36 = sub i64 %31, %35
  store i64 %36, i64* %27
  %37 = load i64*, i64** %16
  %38 = load i64, i64* %18
  %39 = getelementptr i64, i64* %37, i64 %38
  %40 = load i64*, i64** %10
  %41 = load i64, i64* %18
  %42 = getelementptr i64, i64* %40, i64 %41
  %43 = load i64, i64* %42
  %44 = load i64*, i64** %13
  %45 = load i64, i64* %18
  %46 = getelementptr i64, i64* %44, i64 %45
  %47 = load i64, i64* %46
  %48 = sub i64 %43, %47
  store i64 %48, i64* %39
  %49 = load i64*, i64** %17
  %50 = load i64, i64* %18
  %51 = getelementptr i64, i64* %49, i64 %50
  %52 = load i64*, i64** %11
  %53 = load i64, i64* %18
  %54 = getelementptr i64, i64* %52, i64 %53
  %55 = load i64, i64* %54
  %56 = load i64*, i64** %14
  %57 = load i64, i64* %18
  %58 = getelementptr i64, i64* %56, i64 %57
  %59 = load i64, i64* %58
  %60 = sub i64 %55, %59
  store i64 %60, i64* %51
  %61 = load i64, i64* %18
  %62 = add i64 %61, 1
  store i64 %62, i64* %18
  br label %19

63:                                               ; preds = %19
  ret i64 0
}

define i64 @main() {
entry:
  store i64 3, i64* @0
  store i64 3, i64* @1
  store i64 3, i64* @2
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

10:                                               ; preds = %15, %entry
  %11 = load i64, i64* %9
  %12 = icmp slt i64 %11, 3
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load i64, i64* %9
  %17 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 %16
  %18 = load i64, i64* %9
  store i64 %18, i64* %17
  %19 = load i64, i64* %9
  %20 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 %19
  %21 = load i64, i64* %9
  store i64 %21, i64* %20
  %22 = load i64, i64* %9
  %23 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 %22
  %24 = load i64, i64* %9
  store i64 %24, i64* %23
  %25 = load i64, i64* %9
  %26 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 %25
  %27 = load i64, i64* %9
  store i64 %27, i64* %26
  %28 = load i64, i64* %9
  %29 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 %28
  %30 = load i64, i64* %9
  store i64 %30, i64* %29
  %31 = load i64, i64* %9
  %32 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 %31
  %33 = load i64, i64* %9
  store i64 %33, i64* %32
  %34 = load i64, i64* %9
  %35 = add i64 %34, 1
  store i64 %35, i64* %9
  br label %10

36:                                               ; preds = %10
  %37 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  %38 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %39 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 0
  %40 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %41 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %42 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %43 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %44 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %45 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %46 = call i64 @sub(i64* %37, i64* %38, i64* %39, i64* %40, i64* %41, i64* %42, i64* %43, i64* %44, i64* %45)
  store i64 %46, i64* %9
  %47 = alloca i64
  br label %48

48:                                               ; preds = %53, %36
  %49 = load i64, i64* %9
  %50 = icmp slt i64 %49, 3
  %51 = zext i1 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i64, i64* %9
  %55 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 %54
  %56 = load i64, i64* %55
  store i64 %56, i64* %47
  %57 = load i64, i64* %47
  call void @putint(i64 %57)
  %58 = load i64, i64* %9
  %59 = add i64 %58, 1
  store i64 %59, i64* %9
  br label %48

60:                                               ; preds = %48
  store i64 10, i64* %47
  store i64 0, i64* %9
  %61 = load i64, i64* %47
  call void @putch(i64 %61)
  br label %62

62:                                               ; preds = %67, %60
  %63 = load i64, i64* %9
  %64 = icmp slt i64 %63, 3
  %65 = zext i1 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i64, i64* %9
  %69 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 %68
  %70 = load i64, i64* %69
  store i64 %70, i64* %47
  %71 = load i64, i64* %47
  call void @putint(i64 %71)
  %72 = load i64, i64* %9
  %73 = add i64 %72, 1
  store i64 %73, i64* %9
  br label %62

74:                                               ; preds = %62
  store i64 10, i64* %47
  store i64 0, i64* %9
  %75 = load i64, i64* %47
  call void @putch(i64 %75)
  br label %76

76:                                               ; preds = %81, %74
  %77 = load i64, i64* %9
  %78 = icmp slt i64 %77, 3
  %79 = zext i1 %78 to i64
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i64, i64* %9
  %83 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 %82
  %84 = load i64, i64* %83
  store i64 %84, i64* %47
  %85 = load i64, i64* %47
  call void @putint(i64 %85)
  %86 = load i64, i64* %9
  %87 = add i64 %86, 1
  store i64 %87, i64* %9
  br label %76

88:                                               ; preds = %76
  store i64 10, i64* %47
  %89 = load i64, i64* %47
  call void @putch(i64 %89)
  ret i64 0
}
