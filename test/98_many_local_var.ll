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
  br label %32

32:                                               ; preds = %37, %entry
  %33 = load i64, i64* %30
  %34 = icmp eq i64 %33, 5
  %35 = zext i1 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i64, i64* %30
  %39 = add i64 %38, 1
  store i64 %39, i64* %30
  br label %32

40:                                               ; preds = %32
  store i64 0, i64* %0
  %41 = load i64, i64* %0
  %42 = add i64 %41, 1
  store i64 %42, i64* %1
  %43 = load i64, i64* %1
  %44 = add i64 %43, 1
  store i64 %44, i64* %2
  %45 = load i64, i64* %2
  %46 = add i64 %45, 1
  store i64 %46, i64* %3
  %47 = load i64, i64* %3
  %48 = add i64 %47, 1
  store i64 %48, i64* %4
  %49 = load i64, i64* %4
  %50 = add i64 %49, 1
  store i64 %50, i64* %5
  %51 = load i64, i64* %5
  %52 = add i64 %51, 1
  store i64 %52, i64* %6
  %53 = load i64, i64* %6
  %54 = add i64 %53, 1
  store i64 %54, i64* %7
  %55 = load i64, i64* %7
  %56 = add i64 %55, 1
  store i64 %56, i64* %8
  %57 = load i64, i64* %8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9
  %59 = load i64, i64* %9
  %60 = add i64 %59, 1
  store i64 %60, i64* %10
  %61 = load i64, i64* %10
  %62 = add i64 %61, 1
  store i64 %62, i64* %11
  %63 = load i64, i64* %11
  %64 = add i64 %63, 1
  store i64 %64, i64* %12
  %65 = load i64, i64* %12
  %66 = add i64 %65, 1
  store i64 %66, i64* %13
  %67 = load i64, i64* %13
  %68 = add i64 %67, 1
  store i64 %68, i64* %14
  %69 = load i64, i64* %14
  %70 = add i64 %69, 1
  store i64 %70, i64* %15
  %71 = load i64, i64* %15
  %72 = add i64 %71, 1
  store i64 %72, i64* %16
  %73 = load i64, i64* %16
  %74 = add i64 %73, 1
  store i64 %74, i64* %17
  %75 = load i64, i64* %17
  %76 = add i64 %75, 1
  store i64 %76, i64* %18
  %77 = load i64, i64* %18
  %78 = add i64 %77, 1
  store i64 %78, i64* %19
  %79 = load i64, i64* %19
  %80 = add i64 %79, 1
  store i64 %80, i64* %20
  %81 = load i64, i64* %20
  %82 = add i64 %81, 1
  store i64 %82, i64* %21
  %83 = load i64, i64* %21
  %84 = add i64 %83, 1
  store i64 %84, i64* %22
  %85 = load i64, i64* %22
  %86 = add i64 %85, 1
  store i64 %86, i64* %23
  %87 = load i64, i64* %23
  %88 = add i64 %87, 1
  store i64 %88, i64* %24
  %89 = load i64, i64* %24
  %90 = add i64 %89, 1
  store i64 %90, i64* %25
  %91 = load i64, i64* %25
  %92 = add i64 %91, 1
  store i64 %92, i64* %26
  %93 = load i64, i64* %26
  %94 = add i64 %93, 1
  store i64 %94, i64* %27
  %95 = load i64, i64* %27
  %96 = add i64 %95, 1
  store i64 %96, i64* %28
  %97 = load i64, i64* %28
  %98 = add i64 %97, 1
  store i64 %98, i64* %29
  %99 = alloca i64
  %100 = load i64, i64* %0
  call void @putint(i64 %100)
  %101 = load i64, i64* %1
  call void @putint(i64 %101)
  %102 = load i64, i64* %2
  call void @putint(i64 %102)
  %103 = load i64, i64* %3
  call void @putint(i64 %103)
  %104 = load i64, i64* %4
  call void @putint(i64 %104)
  %105 = load i64, i64* %5
  call void @putint(i64 %105)
  %106 = load i64, i64* %6
  call void @putint(i64 %106)
  %107 = load i64, i64* %7
  call void @putint(i64 %107)
  %108 = load i64, i64* %8
  call void @putint(i64 %108)
  %109 = load i64, i64* %9
  call void @putint(i64 %109)
  %110 = load i64, i64* %10
  call void @putint(i64 %110)
  %111 = load i64, i64* %11
  call void @putint(i64 %111)
  %112 = load i64, i64* %12
  call void @putint(i64 %112)
  %113 = load i64, i64* %13
  call void @putint(i64 %113)
  %114 = load i64, i64* %14
  call void @putint(i64 %114)
  %115 = load i64, i64* %15
  call void @putint(i64 %115)
  %116 = load i64, i64* %16
  call void @putint(i64 %116)
  %117 = load i64, i64* %17
  call void @putint(i64 %117)
  %118 = load i64, i64* %18
  call void @putint(i64 %118)
  %119 = load i64, i64* %19
  call void @putint(i64 %119)
  %120 = load i64, i64* %20
  call void @putint(i64 %120)
  %121 = load i64, i64* %21
  call void @putint(i64 %121)
  %122 = load i64, i64* %22
  call void @putint(i64 %122)
  %123 = load i64, i64* %23
  call void @putint(i64 %123)
  %124 = load i64, i64* %24
  call void @putint(i64 %124)
  %125 = load i64, i64* %25
  call void @putint(i64 %125)
  %126 = load i64, i64* %26
  call void @putint(i64 %126)
  %127 = load i64, i64* %27
  call void @putint(i64 %127)
  %128 = load i64, i64* %28
  call void @putint(i64 %128)
  %129 = load i64, i64* %29
  call void @putint(i64 %129)
  %130 = alloca i64
  store i64 10, i64* %130
  %131 = load i64, i64* %130
  call void @putch(i64 %131)
  %132 = load i64, i64* %30
  call void @putint(i64 %132)
  %133 = load i64, i64* %130
  call void @putch(i64 %133)
  %134 = load i64, i64* %25
  ret i64 %134
}
