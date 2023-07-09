; ModuleID = 'sysyc'
source_filename = "./96_many_param_call.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @testParam8(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) {
entry:
  %8 = alloca i32
  store i32 %0, i32* %8
  %9 = alloca i32
  store i32 %1, i32* %9
  %10 = alloca i32
  store i32 %2, i32* %10
  %11 = alloca i32
  store i32 %3, i32* %11
  %12 = alloca i32
  store i32 %4, i32* %12
  %13 = alloca i32
  store i32 %5, i32* %13
  %14 = alloca i32
  store i32 %6, i32* %14
  %15 = alloca i32
  store i32 %7, i32* %15
  %16 = load i32, i32* %8
  %17 = load i32, i32* %9
  %18 = add i32 %16, %17
  %19 = load i32, i32* %10
  %20 = sub i32 %18, %19
  %21 = load i32, i32* %11
  %22 = sub i32 %20, %21
  %23 = load i32, i32* %12
  %24 = sub i32 %22, %23
  %25 = load i32, i32* %13
  %26 = add i32 %24, %25
  %27 = load i32, i32* %14
  %28 = add i32 %26, %27
  %29 = load i32, i32* %15
  %30 = add i32 %28, %29
  ret i32 %30
}

define i32 @testParam16(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15) {
entry:
  %16 = alloca i32
  store i32 %0, i32* %16
  %17 = alloca i32
  store i32 %1, i32* %17
  %18 = alloca i32
  store i32 %2, i32* %18
  %19 = alloca i32
  store i32 %3, i32* %19
  %20 = alloca i32
  store i32 %4, i32* %20
  %21 = alloca i32
  store i32 %5, i32* %21
  %22 = alloca i32
  store i32 %6, i32* %22
  %23 = alloca i32
  store i32 %7, i32* %23
  %24 = alloca i32
  store i32 %8, i32* %24
  %25 = alloca i32
  store i32 %9, i32* %25
  %26 = alloca i32
  store i32 %10, i32* %26
  %27 = alloca i32
  store i32 %11, i32* %27
  %28 = alloca i32
  store i32 %12, i32* %28
  %29 = alloca i32
  store i32 %13, i32* %29
  %30 = alloca i32
  store i32 %14, i32* %30
  %31 = alloca i32
  store i32 %15, i32* %31
  %32 = load i32, i32* %16
  %33 = load i32, i32* %17
  %34 = add i32 %32, %33
  %35 = load i32, i32* %18
  %36 = add i32 %34, %35
  %37 = load i32, i32* %19
  %38 = add i32 %36, %37
  %39 = load i32, i32* %20
  %40 = add i32 %38, %39
  %41 = load i32, i32* %21
  %42 = add i32 %40, %41
  %43 = load i32, i32* %22
  %44 = add i32 %42, %43
  %45 = load i32, i32* %23
  %46 = add i32 %44, %45
  %47 = load i32, i32* %24
  %48 = sub i32 %46, %47
  %49 = load i32, i32* %25
  %50 = add i32 %48, %49
  %51 = load i32, i32* %26
  %52 = add i32 %50, %51
  %53 = load i32, i32* %27
  %54 = add i32 %52, %53
  %55 = load i32, i32* %28
  %56 = add i32 %54, %55
  %57 = load i32, i32* %29
  %58 = add i32 %56, %57
  %59 = load i32, i32* %30
  %60 = add i32 %58, %59
  %61 = load i32, i32* %31
  %62 = add i32 %60, %61
  ret i32 %62
}

define i32 @testParam32(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31) {
entry:
  %32 = alloca i32
  store i32 %0, i32* %32
  %33 = alloca i32
  store i32 %1, i32* %33
  %34 = alloca i32
  store i32 %2, i32* %34
  %35 = alloca i32
  store i32 %3, i32* %35
  %36 = alloca i32
  store i32 %4, i32* %36
  %37 = alloca i32
  store i32 %5, i32* %37
  %38 = alloca i32
  store i32 %6, i32* %38
  %39 = alloca i32
  store i32 %7, i32* %39
  %40 = alloca i32
  store i32 %8, i32* %40
  %41 = alloca i32
  store i32 %9, i32* %41
  %42 = alloca i32
  store i32 %10, i32* %42
  %43 = alloca i32
  store i32 %11, i32* %43
  %44 = alloca i32
  store i32 %12, i32* %44
  %45 = alloca i32
  store i32 %13, i32* %45
  %46 = alloca i32
  store i32 %14, i32* %46
  %47 = alloca i32
  store i32 %15, i32* %47
  %48 = alloca i32
  store i32 %16, i32* %48
  %49 = alloca i32
  store i32 %17, i32* %49
  %50 = alloca i32
  store i32 %18, i32* %50
  %51 = alloca i32
  store i32 %19, i32* %51
  %52 = alloca i32
  store i32 %20, i32* %52
  %53 = alloca i32
  store i32 %21, i32* %53
  %54 = alloca i32
  store i32 %22, i32* %54
  %55 = alloca i32
  store i32 %23, i32* %55
  %56 = alloca i32
  store i32 %24, i32* %56
  %57 = alloca i32
  store i32 %25, i32* %57
  %58 = alloca i32
  store i32 %26, i32* %58
  %59 = alloca i32
  store i32 %27, i32* %59
  %60 = alloca i32
  store i32 %28, i32* %60
  %61 = alloca i32
  store i32 %29, i32* %61
  %62 = alloca i32
  store i32 %30, i32* %62
  %63 = alloca i32
  store i32 %31, i32* %63
  %64 = load i32, i32* %32
  %65 = load i32, i32* %33
  %66 = add i32 %64, %65
  %67 = load i32, i32* %34
  %68 = add i32 %66, %67
  %69 = load i32, i32* %35
  %70 = add i32 %68, %69
  %71 = load i32, i32* %36
  %72 = add i32 %70, %71
  %73 = load i32, i32* %37
  %74 = add i32 %72, %73
  %75 = load i32, i32* %38
  %76 = add i32 %74, %75
  %77 = load i32, i32* %39
  %78 = add i32 %76, %77
  %79 = load i32, i32* %40
  %80 = add i32 %78, %79
  %81 = load i32, i32* %41
  %82 = add i32 %80, %81
  %83 = load i32, i32* %42
  %84 = add i32 %82, %83
  %85 = load i32, i32* %43
  %86 = add i32 %84, %85
  %87 = load i32, i32* %44
  %88 = sub i32 %86, %87
  %89 = load i32, i32* %45
  %90 = sub i32 %88, %89
  %91 = load i32, i32* %46
  %92 = sub i32 %90, %91
  %93 = load i32, i32* %47
  %94 = sub i32 %92, %93
  %95 = load i32, i32* %48
  %96 = sub i32 %94, %95
  %97 = load i32, i32* %49
  %98 = sub i32 %96, %97
  %99 = load i32, i32* %50
  %100 = sub i32 %98, %99
  %101 = load i32, i32* %51
  %102 = sub i32 %100, %101
  %103 = load i32, i32* %52
  %104 = sub i32 %102, %103
  %105 = load i32, i32* %53
  %106 = sub i32 %104, %105
  %107 = load i32, i32* %54
  %108 = add i32 %106, %107
  %109 = load i32, i32* %55
  %110 = add i32 %108, %109
  %111 = load i32, i32* %56
  %112 = add i32 %110, %111
  %113 = load i32, i32* %57
  %114 = add i32 %112, %113
  %115 = load i32, i32* %58
  %116 = add i32 %114, %115
  %117 = load i32, i32* %59
  %118 = add i32 %116, %117
  %119 = load i32, i32* %60
  %120 = add i32 %118, %119
  %121 = load i32, i32* %61
  %122 = add i32 %120, %121
  %123 = load i32, i32* %62
  %124 = add i32 %122, %123
  %125 = load i32, i32* %63
  %126 = add i32 %124, %125
  ret i32 %126
}

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
  %31 = alloca i32
  store i32 0, i32* %0
  store i32 1, i32* %1
  store i32 2, i32* %2
  store i32 3, i32* %3
  store i32 4, i32* %4
  store i32 5, i32* %5
  store i32 6, i32* %6
  store i32 7, i32* %7
  store i32 8, i32* %8
  store i32 9, i32* %9
  store i32 0, i32* %10
  store i32 1, i32* %11
  store i32 2, i32* %12
  store i32 3, i32* %13
  store i32 4, i32* %14
  store i32 5, i32* %15
  store i32 6, i32* %16
  store i32 7, i32* %17
  store i32 8, i32* %18
  store i32 9, i32* %19
  store i32 0, i32* %20
  store i32 1, i32* %21
  store i32 2, i32* %22
  store i32 3, i32* %23
  store i32 4, i32* %24
  store i32 5, i32* %25
  store i32 6, i32* %26
  store i32 7, i32* %27
  store i32 8, i32* %28
  store i32 9, i32* %29
  store i32 0, i32* %30
  store i32 1, i32* %31
  %32 = load i32, i32* %0
  %33 = load i32, i32* %1
  %34 = load i32, i32* %2
  %35 = load i32, i32* %3
  %36 = load i32, i32* %4
  %37 = load i32, i32* %5
  %38 = load i32, i32* %6
  %39 = load i32, i32* %7
  %40 = call i32 @testParam8(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %0
  %41 = load i32, i32* %0
  call void @putint(i32 %41)
  %42 = load i32, i32* %0
  %43 = load i32, i32* %1
  %44 = load i32, i32* %2
  %45 = load i32, i32* %3
  %46 = load i32, i32* %4
  %47 = load i32, i32* %5
  %48 = load i32, i32* %6
  %49 = load i32, i32* %7
  %50 = load i32, i32* %8
  %51 = load i32, i32* %9
  %52 = load i32, i32* %10
  %53 = load i32, i32* %11
  %54 = load i32, i32* %12
  %55 = load i32, i32* %13
  %56 = load i32, i32* %14
  %57 = load i32, i32* %15
  %58 = call i32 @testParam16(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %0
  %59 = load i32, i32* %0
  call void @putint(i32 %59)
  %60 = load i32, i32* %0
  %61 = load i32, i32* %1
  %62 = load i32, i32* %2
  %63 = load i32, i32* %3
  %64 = load i32, i32* %4
  %65 = load i32, i32* %5
  %66 = load i32, i32* %6
  %67 = load i32, i32* %7
  %68 = load i32, i32* %8
  %69 = load i32, i32* %9
  %70 = load i32, i32* %10
  %71 = load i32, i32* %11
  %72 = load i32, i32* %12
  %73 = load i32, i32* %13
  %74 = load i32, i32* %14
  %75 = load i32, i32* %15
  %76 = load i32, i32* %16
  %77 = load i32, i32* %17
  %78 = load i32, i32* %18
  %79 = load i32, i32* %19
  %80 = load i32, i32* %20
  %81 = load i32, i32* %21
  %82 = load i32, i32* %22
  %83 = load i32, i32* %23
  %84 = load i32, i32* %24
  %85 = load i32, i32* %25
  %86 = load i32, i32* %26
  %87 = load i32, i32* %27
  %88 = load i32, i32* %28
  %89 = load i32, i32* %29
  %90 = load i32, i32* %30
  %91 = load i32, i32* %31
  %92 = call i32 @testParam32(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %0
  %93 = load i32, i32* %0
  call void @putint(i32 %93)
  ret i32 0
}
