; ModuleID = 'sysyc'
source_filename = "./98_many_local_var.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  %2 = alloca i64
  %3 = alloca i64
  %4 = alloca i64
  %5 = alloca i64
  %6 = alloca i64
  %7 = alloca i64
  %8 = alloca i64
  %9 = alloca i64
  %10 = alloca i64
  %11 = alloca i64
  %12 = alloca i64
  %13 = alloca i64
  %14 = alloca i64
  %15 = alloca i64
  %16 = alloca i64
  %17 = alloca i64
  %18 = alloca i64
  %19 = alloca i64
  %20 = alloca i64
  %21 = alloca i64
  %22 = alloca i64
  %23 = alloca i64
  %24 = alloca i64
  %25 = alloca i64
  %26 = alloca i64
  %27 = alloca i64
  %28 = alloca i64
  %29 = alloca i64
  %30 = alloca i64
  %31 = call i64 @getint()
  store i64 %31, i64* %30
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %32 = load i64, i64* %30
  %33 = icmp eq i64 %32, 5
  %34 = zext i1 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %36 = load i64, i64* %30
  %37 = add i64 %36, 1
  store i64 %37, i64* %30
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  store i64 0, i64* %0
  %38 = load i64, i64* %0
  %39 = add i64 %38, 1
  store i64 %39, i64* %1
  %40 = load i64, i64* %1
  %41 = add i64 %40, 1
  store i64 %41, i64* %2
  %42 = load i64, i64* %2
  %43 = add i64 %42, 1
  store i64 %43, i64* %3
  %44 = load i64, i64* %3
  %45 = add i64 %44, 1
  store i64 %45, i64* %4
  %46 = load i64, i64* %4
  %47 = add i64 %46, 1
  store i64 %47, i64* %5
  %48 = load i64, i64* %5
  %49 = add i64 %48, 1
  store i64 %49, i64* %6
  %50 = load i64, i64* %6
  %51 = add i64 %50, 1
  store i64 %51, i64* %7
  %52 = load i64, i64* %7
  %53 = add i64 %52, 1
  store i64 %53, i64* %8
  %54 = load i64, i64* %8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9
  %56 = load i64, i64* %9
  %57 = add i64 %56, 1
  store i64 %57, i64* %10
  %58 = load i64, i64* %10
  %59 = add i64 %58, 1
  store i64 %59, i64* %11
  %60 = load i64, i64* %11
  %61 = add i64 %60, 1
  store i64 %61, i64* %12
  %62 = load i64, i64* %12
  %63 = add i64 %62, 1
  store i64 %63, i64* %13
  %64 = load i64, i64* %13
  %65 = add i64 %64, 1
  store i64 %65, i64* %14
  %66 = load i64, i64* %14
  %67 = add i64 %66, 1
  store i64 %67, i64* %15
  %68 = load i64, i64* %15
  %69 = add i64 %68, 1
  store i64 %69, i64* %16
  %70 = load i64, i64* %16
  %71 = add i64 %70, 1
  store i64 %71, i64* %17
  %72 = load i64, i64* %17
  %73 = add i64 %72, 1
  store i64 %73, i64* %18
  %74 = load i64, i64* %18
  %75 = add i64 %74, 1
  store i64 %75, i64* %19
  %76 = load i64, i64* %19
  %77 = add i64 %76, 1
  store i64 %77, i64* %20
  %78 = load i64, i64* %20
  %79 = add i64 %78, 1
  store i64 %79, i64* %21
  %80 = load i64, i64* %21
  %81 = add i64 %80, 1
  store i64 %81, i64* %22
  %82 = load i64, i64* %22
  %83 = add i64 %82, 1
  store i64 %83, i64* %23
  %84 = load i64, i64* %23
  %85 = add i64 %84, 1
  store i64 %85, i64* %24
  %86 = load i64, i64* %24
  %87 = add i64 %86, 1
  store i64 %87, i64* %25
  %88 = load i64, i64* %25
  %89 = add i64 %88, 1
  store i64 %89, i64* %26
  %90 = load i64, i64* %26
  %91 = add i64 %90, 1
  store i64 %91, i64* %27
  %92 = load i64, i64* %27
  %93 = add i64 %92, 1
  store i64 %93, i64* %28
  %94 = load i64, i64* %28
  %95 = add i64 %94, 1
  store i64 %95, i64* %29
  %96 = alloca i64
  %97 = load i64, i64* %0
  call void @putint(i64 %97)
  %98 = load i64, i64* %1
  call void @putint(i64 %98)
  %99 = load i64, i64* %2
  call void @putint(i64 %99)
  %100 = load i64, i64* %3
  call void @putint(i64 %100)
  %101 = load i64, i64* %4
  call void @putint(i64 %101)
  %102 = load i64, i64* %5
  call void @putint(i64 %102)
  %103 = load i64, i64* %6
  call void @putint(i64 %103)
  %104 = load i64, i64* %7
  call void @putint(i64 %104)
  %105 = load i64, i64* %8
  call void @putint(i64 %105)
  %106 = load i64, i64* %9
  call void @putint(i64 %106)
  %107 = load i64, i64* %10
  call void @putint(i64 %107)
  %108 = load i64, i64* %11
  call void @putint(i64 %108)
  %109 = load i64, i64* %12
  call void @putint(i64 %109)
  %110 = load i64, i64* %13
  call void @putint(i64 %110)
  %111 = load i64, i64* %14
  call void @putint(i64 %111)
  %112 = load i64, i64* %15
  call void @putint(i64 %112)
  %113 = load i64, i64* %16
  call void @putint(i64 %113)
  %114 = load i64, i64* %17
  call void @putint(i64 %114)
  %115 = load i64, i64* %18
  call void @putint(i64 %115)
  %116 = load i64, i64* %19
  call void @putint(i64 %116)
  %117 = load i64, i64* %20
  call void @putint(i64 %117)
  %118 = load i64, i64* %21
  call void @putint(i64 %118)
  %119 = load i64, i64* %22
  call void @putint(i64 %119)
  %120 = load i64, i64* %23
  call void @putint(i64 %120)
  %121 = load i64, i64* %24
  call void @putint(i64 %121)
  %122 = load i64, i64* %25
  call void @putint(i64 %122)
  %123 = load i64, i64* %26
  call void @putint(i64 %123)
  %124 = load i64, i64* %27
  call void @putint(i64 %124)
  %125 = load i64, i64* %28
  call void @putint(i64 %125)
  %126 = load i64, i64* %29
  call void @putint(i64 %126)
  %127 = alloca i64
  store i64 10, i64* %127
  %128 = load i64, i64* %127
  call void @putch(i64 %128)
  %129 = load i64, i64* %30
  call void @putint(i64 %129)
  %130 = load i64, i64* %127
  call void @putch(i64 %130)
  %131 = load i64, i64* %25
  ret i64 %131
}
