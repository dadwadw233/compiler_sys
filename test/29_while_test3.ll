; ModuleID = 'sysyc'
source_filename = "./29_while_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer
@2 = global i64 zeroinitializer
@3 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @EightWhile() {
entry:
  %0 = alloca i64
  store i64 5, i64* %0
  %1 = alloca i64
  %2 = alloca i64
  store i64 6, i64* %1
  store i64 7, i64* %2
  %3 = alloca i64
  store i64 10, i64* %3
  br label %4

4:                                                ; preds = %36, %entry
  %5 = load i64, i64* %0
  %6 = icmp slt i64 %5, 20
  %7 = zext i1 %6 to i64
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i64, i64* %0
  %11 = add i64 %10, 3
  store i64 %11, i64* %0
  br label %28

12:                                               ; preds = %4
  %13 = load i64, i64* %0
  %14 = load i64, i64* %1
  %15 = load i64, i64* %3
  %16 = add i64 %14, %15
  %17 = add i64 %13, %16
  %18 = load i64, i64* %2
  %19 = add i64 %17, %18
  %20 = load i64, i64* @3
  %21 = load i64, i64* %3
  %22 = add i64 %20, %21
  %23 = load i64, i64* @0
  %24 = sub i64 %22, %23
  %25 = load i64, i64* @1
  %26 = add i64 %24, %25
  %27 = sub i64 %19, %26
  ret i64 %27

28:                                               ; preds = %47, %9
  %29 = load i64, i64* %1
  %30 = icmp slt i64 %29, 10
  %31 = zext i1 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i64, i64* %1
  %35 = add i64 %34, 1
  store i64 %35, i64* %1
  br label %39

36:                                               ; preds = %28
  %37 = load i64, i64* %1
  %38 = sub i64 %37, 2
  store i64 %38, i64* %1
  br label %4

39:                                               ; preds = %58, %33
  %40 = load i64, i64* %2
  %41 = icmp eq i64 %40, 7
  %42 = zext i1 %41 to i64
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %2
  %46 = sub i64 %45, 1
  store i64 %46, i64* %2
  br label %50

47:                                               ; preds = %39
  %48 = load i64, i64* %2
  %49 = add i64 %48, 1
  store i64 %49, i64* %2
  br label %28

50:                                               ; preds = %69, %44
  %51 = load i64, i64* %3
  %52 = icmp slt i64 %51, 20
  %53 = zext i1 %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, i64* %3
  %57 = add i64 %56, 3
  store i64 %57, i64* %3
  br label %61

58:                                               ; preds = %50
  %59 = load i64, i64* %3
  %60 = sub i64 %59, 1
  store i64 %60, i64* %3
  br label %39

61:                                               ; preds = %80, %55
  %62 = load i64, i64* @3
  %63 = icmp sgt i64 %62, 1
  %64 = zext i1 %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i64, i64* @3
  %68 = sub i64 %67, 1
  store i64 %68, i64* @3
  br label %72

69:                                               ; preds = %61
  %70 = load i64, i64* @3
  %71 = add i64 %70, 1
  store i64 %71, i64* @3
  br label %50

72:                                               ; preds = %91, %66
  %73 = load i64, i64* @2
  %74 = icmp sgt i64 %73, 2
  %75 = zext i1 %74 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, i64* @2
  %79 = sub i64 %78, 2
  store i64 %79, i64* @2
  br label %83

80:                                               ; preds = %72
  %81 = load i64, i64* @2
  %82 = add i64 %81, 1
  store i64 %82, i64* @2
  br label %61

83:                                               ; preds = %102, %77
  %84 = load i64, i64* @0
  %85 = icmp slt i64 %84, 3
  %86 = zext i1 %85 to i64
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i64, i64* @0
  %90 = add i64 %89, 10
  store i64 %90, i64* @0
  br label %94

91:                                               ; preds = %83
  %92 = load i64, i64* @0
  %93 = sub i64 %92, 8
  store i64 %93, i64* @0
  br label %72

94:                                               ; preds = %99, %88
  %95 = load i64, i64* @1
  %96 = icmp slt i64 %95, 10
  %97 = zext i1 %96 to i64
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i64, i64* @1
  %101 = add i64 %100, 8
  store i64 %101, i64* @1
  br label %94

102:                                              ; preds = %94
  %103 = load i64, i64* @1
  %104 = sub i64 %103, 1
  store i64 %104, i64* @1
  br label %83
}

define i64 @main() {
entry:
  store i64 1, i64* @0
  store i64 2, i64* @1
  store i64 4, i64* @3
  store i64 6, i64* @2
  %0 = call i64 @EightWhile()
  ret i64 %0
}
