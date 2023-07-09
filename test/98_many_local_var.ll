; ModuleID = 'sysyc'
source_filename = "./98_many_local_var.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  %2 = alloca i32
  %3 = alloca i32
  %4 = alloca i32
  %5 = alloca i32
  %6 = alloca i32
  %7 = alloca i32
  %8 = alloca i32
  %9 = alloca i32
  %10 = alloca i32
  %11 = alloca i32
  %12 = alloca i32
  %13 = alloca i32
  %14 = alloca i32
  %15 = alloca i32
  %16 = alloca i32
  %17 = alloca i32
  %18 = alloca i32
  %19 = alloca i32
  %20 = alloca i32
  %21 = alloca i32
  %22 = alloca i32
  %23 = alloca i32
  %24 = alloca i32
  %25 = alloca i32
  %26 = alloca i32
  %27 = alloca i32
  %28 = alloca i32
  %29 = alloca i32
  %30 = alloca i32
  %31 = call i32 @getint()
  store i32 %31, i32* %30
  br label %32

32:                                               ; preds = %37, %entry
  %33 = load i32, i32* %30
  %34 = icmp eq i32 %33, 5
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %30
  %39 = add i32 %38, 1
  store i32 %39, i32* %30
  br label %32

40:                                               ; preds = %32
  store i32 0, i32* %0
  %41 = load i32, i32* %0
  %42 = add i32 %41, 1
  store i32 %42, i32* %1
  %43 = load i32, i32* %1
  %44 = add i32 %43, 1
  store i32 %44, i32* %2
  %45 = load i32, i32* %2
  %46 = add i32 %45, 1
  store i32 %46, i32* %3
  %47 = load i32, i32* %3
  %48 = add i32 %47, 1
  store i32 %48, i32* %4
  %49 = load i32, i32* %4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5
  %51 = load i32, i32* %5
  %52 = add i32 %51, 1
  store i32 %52, i32* %6
  %53 = load i32, i32* %6
  %54 = add i32 %53, 1
  store i32 %54, i32* %7
  %55 = load i32, i32* %7
  %56 = add i32 %55, 1
  store i32 %56, i32* %8
  %57 = load i32, i32* %8
  %58 = add i32 %57, 1
  store i32 %58, i32* %9
  %59 = load i32, i32* %9
  %60 = add i32 %59, 1
  store i32 %60, i32* %10
  %61 = load i32, i32* %10
  %62 = add i32 %61, 1
  store i32 %62, i32* %11
  %63 = load i32, i32* %11
  %64 = add i32 %63, 1
  store i32 %64, i32* %12
  %65 = load i32, i32* %12
  %66 = add i32 %65, 1
  store i32 %66, i32* %13
  %67 = load i32, i32* %13
  %68 = add i32 %67, 1
  store i32 %68, i32* %14
  %69 = load i32, i32* %14
  %70 = add i32 %69, 1
  store i32 %70, i32* %15
  %71 = load i32, i32* %15
  %72 = add i32 %71, 1
  store i32 %72, i32* %16
  %73 = load i32, i32* %16
  %74 = add i32 %73, 1
  store i32 %74, i32* %17
  %75 = load i32, i32* %17
  %76 = add i32 %75, 1
  store i32 %76, i32* %18
  %77 = load i32, i32* %18
  %78 = add i32 %77, 1
  store i32 %78, i32* %19
  %79 = load i32, i32* %19
  %80 = add i32 %79, 1
  store i32 %80, i32* %20
  %81 = load i32, i32* %20
  %82 = add i32 %81, 1
  store i32 %82, i32* %21
  %83 = load i32, i32* %21
  %84 = add i32 %83, 1
  store i32 %84, i32* %22
  %85 = load i32, i32* %22
  %86 = add i32 %85, 1
  store i32 %86, i32* %23
  %87 = load i32, i32* %23
  %88 = add i32 %87, 1
  store i32 %88, i32* %24
  %89 = load i32, i32* %24
  %90 = add i32 %89, 1
  store i32 %90, i32* %25
  %91 = load i32, i32* %25
  %92 = add i32 %91, 1
  store i32 %92, i32* %26
  %93 = load i32, i32* %26
  %94 = add i32 %93, 1
  store i32 %94, i32* %27
  %95 = load i32, i32* %27
  %96 = add i32 %95, 1
  store i32 %96, i32* %28
  %97 = load i32, i32* %28
  %98 = add i32 %97, 1
  store i32 %98, i32* %29
  %99 = alloca i32
  %100 = load i32, i32* %0
  call void @putint(i32 %100)
  %101 = load i32, i32* %1
  call void @putint(i32 %101)
  %102 = load i32, i32* %2
  call void @putint(i32 %102)
  %103 = load i32, i32* %3
  call void @putint(i32 %103)
  %104 = load i32, i32* %4
  call void @putint(i32 %104)
  %105 = load i32, i32* %5
  call void @putint(i32 %105)
  %106 = load i32, i32* %6
  call void @putint(i32 %106)
  %107 = load i32, i32* %7
  call void @putint(i32 %107)
  %108 = load i32, i32* %8
  call void @putint(i32 %108)
  %109 = load i32, i32* %9
  call void @putint(i32 %109)
  %110 = load i32, i32* %10
  call void @putint(i32 %110)
  %111 = load i32, i32* %11
  call void @putint(i32 %111)
  %112 = load i32, i32* %12
  call void @putint(i32 %112)
  %113 = load i32, i32* %13
  call void @putint(i32 %113)
  %114 = load i32, i32* %14
  call void @putint(i32 %114)
  %115 = load i32, i32* %15
  call void @putint(i32 %115)
  %116 = load i32, i32* %16
  call void @putint(i32 %116)
  %117 = load i32, i32* %17
  call void @putint(i32 %117)
  %118 = load i32, i32* %18
  call void @putint(i32 %118)
  %119 = load i32, i32* %19
  call void @putint(i32 %119)
  %120 = load i32, i32* %20
  call void @putint(i32 %120)
  %121 = load i32, i32* %21
  call void @putint(i32 %121)
  %122 = load i32, i32* %22
  call void @putint(i32 %122)
  %123 = load i32, i32* %23
  call void @putint(i32 %123)
  %124 = load i32, i32* %24
  call void @putint(i32 %124)
  %125 = load i32, i32* %25
  call void @putint(i32 %125)
  %126 = load i32, i32* %26
  call void @putint(i32 %126)
  %127 = load i32, i32* %27
  call void @putint(i32 %127)
  %128 = load i32, i32* %28
  call void @putint(i32 %128)
  %129 = load i32, i32* %29
  call void @putint(i32 %129)
  %130 = alloca i32
  store i32 10, i32* %130
  %131 = load i32, i32* %130
  call void @putch(i32 %131)
  %132 = load i32, i32* %30
  call void @putint(i32 %132)
  %133 = load i32, i32* %130
  call void @putch(i32 %133)
  %134 = load i32, i32* %25
  ret i32 %134
}
