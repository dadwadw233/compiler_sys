; ModuleID = 'sysyc'
source_filename = "./29_while_test3.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer
@2 = global i32 zeroinitializer
@3 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @EightWhile() {
entry:
  %0 = alloca i32
  store i32 5, i32* %0
  %1 = alloca i32
  %2 = alloca i32
  store i32 6, i32* %1
  store i32 7, i32* %2
  %3 = alloca i32
  store i32 10, i32* %3
  br label %4

4:                                                ; preds = %36, %entry
  %5 = load i32, i32* %0
  %6 = icmp slt i32 %5, 20
  %7 = zext i1 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = load i32, i32* %0
  %11 = add i32 %10, 3
  store i32 %11, i32* %0
  br label %28

12:                                               ; preds = %4
  %13 = load i32, i32* %0
  %14 = load i32, i32* %1
  %15 = load i32, i32* %3
  %16 = add i32 %14, %15
  %17 = add i32 %13, %16
  %18 = load i32, i32* %2
  %19 = add i32 %17, %18
  %20 = load i32, i32* @3
  %21 = load i32, i32* %3
  %22 = add i32 %20, %21
  %23 = load i32, i32* @0
  %24 = sub i32 %22, %23
  %25 = load i32, i32* @1
  %26 = add i32 %24, %25
  %27 = sub i32 %19, %26
  ret i32 %27

28:                                               ; preds = %47, %9
  %29 = load i32, i32* %1
  %30 = icmp slt i32 %29, 10
  %31 = zext i1 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %1
  %35 = add i32 %34, 1
  store i32 %35, i32* %1
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %1
  %38 = sub i32 %37, 2
  store i32 %38, i32* %1
  br label %4

39:                                               ; preds = %58, %33
  %40 = load i32, i32* %2
  %41 = icmp eq i32 %40, 7
  %42 = zext i1 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %2
  %46 = sub i32 %45, 1
  store i32 %46, i32* %2
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %2
  %49 = add i32 %48, 1
  store i32 %49, i32* %2
  br label %28

50:                                               ; preds = %69, %44
  %51 = load i32, i32* %3
  %52 = icmp slt i32 %51, 20
  %53 = zext i1 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* %3
  %57 = add i32 %56, 3
  store i32 %57, i32* %3
  br label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %3
  %60 = sub i32 %59, 1
  store i32 %60, i32* %3
  br label %39

61:                                               ; preds = %80, %55
  %62 = load i32, i32* @3
  %63 = icmp sgt i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* @3
  %68 = sub i32 %67, 1
  store i32 %68, i32* @3
  br label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @3
  %71 = add i32 %70, 1
  store i32 %71, i32* @3
  br label %50

72:                                               ; preds = %91, %66
  %73 = load i32, i32* @2
  %74 = icmp sgt i32 %73, 2
  %75 = zext i1 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @2
  %79 = sub i32 %78, 2
  store i32 %79, i32* @2
  br label %83

80:                                               ; preds = %72
  %81 = load i32, i32* @2
  %82 = add i32 %81, 1
  store i32 %82, i32* @2
  br label %61

83:                                               ; preds = %102, %77
  %84 = load i32, i32* @0
  %85 = icmp slt i32 %84, 3
  %86 = zext i1 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* @0
  %90 = add i32 %89, 10
  store i32 %90, i32* @0
  br label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @0
  %93 = sub i32 %92, 8
  store i32 %93, i32* @0
  br label %72

94:                                               ; preds = %99, %88
  %95 = load i32, i32* @1
  %96 = icmp slt i32 %95, 10
  %97 = zext i1 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @1
  %101 = add i32 %100, 8
  store i32 %101, i32* @1
  br label %94

102:                                              ; preds = %94
  %103 = load i32, i32* @1
  %104 = sub i32 %103, 1
  store i32 %104, i32* @1
  br label %83
}

define i32 @main() {
entry:
  store i32 1, i32* @0
  store i32 2, i32* @1
  store i32 4, i32* @3
  store i32 6, i32* @2
  %0 = call i32 @EightWhile()
  ret i32 %0
}
