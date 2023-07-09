; ModuleID = 'sysyc'
source_filename = "./97_many_global_var.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer
@2 = global i64 zeroinitializer
@3 = global i64 zeroinitializer
@4 = global i64 zeroinitializer
@5 = global i64 zeroinitializer
@6 = global i64 zeroinitializer
@7 = global i64 zeroinitializer
@8 = global i64 zeroinitializer
@9 = global i64 zeroinitializer
@10 = global i64 zeroinitializer
@11 = global i64 zeroinitializer
@12 = global i64 zeroinitializer
@13 = global i64 zeroinitializer
@14 = global i64 zeroinitializer
@15 = global i64 zeroinitializer
@16 = global i64 zeroinitializer
@17 = global i64 zeroinitializer
@18 = global i64 zeroinitializer
@19 = global i64 zeroinitializer
@20 = global i64 zeroinitializer
@21 = global i64 zeroinitializer
@22 = global i64 zeroinitializer
@23 = global i64 zeroinitializer
@24 = global i64 zeroinitializer
@25 = global i64 zeroinitializer
@26 = global i64 zeroinitializer
@27 = global i64 zeroinitializer
@28 = global i64 zeroinitializer
@29 = global i64 zeroinitializer
@30 = global i64 zeroinitializer
@31 = global i64 zeroinitializer
@32 = global i64 zeroinitializer
@33 = global i64 zeroinitializer
@34 = global i64 zeroinitializer
@35 = global i64 zeroinitializer
@36 = global i64 zeroinitializer
@37 = global i64 zeroinitializer
@38 = global i64 zeroinitializer
@39 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @testParam8(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) {
entry:
  %8 = alloca i64
  store i64 %0, i64* %8
  %9 = alloca i64
  store i64 %1, i64* %9
  %10 = alloca i64
  store i64 %2, i64* %10
  %11 = alloca i64
  store i64 %3, i64* %11
  %12 = alloca i64
  store i64 %4, i64* %12
  %13 = alloca i64
  store i64 %5, i64* %13
  %14 = alloca i64
  store i64 %6, i64* %14
  %15 = alloca i64
  store i64 %7, i64* %15
  %16 = load i64, i64* %8
  %17 = load i64, i64* %9
  %18 = add i64 %16, %17
  %19 = load i64, i64* %10
  %20 = add i64 %18, %19
  %21 = load i64, i64* %11
  %22 = add i64 %20, %21
  %23 = load i64, i64* %12
  %24 = add i64 %22, %23
  %25 = load i64, i64* %13
  %26 = add i64 %24, %25
  %27 = load i64, i64* %14
  %28 = add i64 %26, %27
  %29 = load i64, i64* %15
  %30 = add i64 %28, %29
  ret i64 %30
}

define i64 @testParam16(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15) {
entry:
  %16 = alloca i64
  store i64 %0, i64* %16
  %17 = alloca i64
  store i64 %1, i64* %17
  %18 = alloca i64
  store i64 %2, i64* %18
  %19 = alloca i64
  store i64 %3, i64* %19
  %20 = alloca i64
  store i64 %4, i64* %20
  %21 = alloca i64
  store i64 %5, i64* %21
  %22 = alloca i64
  store i64 %6, i64* %22
  %23 = alloca i64
  store i64 %7, i64* %23
  %24 = alloca i64
  store i64 %8, i64* %24
  %25 = alloca i64
  store i64 %9, i64* %25
  %26 = alloca i64
  store i64 %10, i64* %26
  %27 = alloca i64
  store i64 %11, i64* %27
  %28 = alloca i64
  store i64 %12, i64* %28
  %29 = alloca i64
  store i64 %13, i64* %29
  %30 = alloca i64
  store i64 %14, i64* %30
  %31 = alloca i64
  store i64 %15, i64* %31
  %32 = load i64, i64* %16
  %33 = load i64, i64* %17
  %34 = add i64 %32, %33
  %35 = load i64, i64* %18
  %36 = add i64 %34, %35
  %37 = load i64, i64* %19
  %38 = sub i64 %36, %37
  %39 = load i64, i64* %20
  %40 = sub i64 %38, %39
  %41 = load i64, i64* %21
  %42 = sub i64 %40, %41
  %43 = load i64, i64* %22
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %23
  %46 = sub i64 %44, %45
  %47 = load i64, i64* %24
  %48 = add i64 %46, %47
  %49 = load i64, i64* %25
  %50 = add i64 %48, %49
  %51 = load i64, i64* %26
  %52 = add i64 %50, %51
  %53 = load i64, i64* %27
  %54 = add i64 %52, %53
  %55 = load i64, i64* %28
  %56 = add i64 %54, %55
  %57 = load i64, i64* %29
  %58 = add i64 %56, %57
  %59 = load i64, i64* %30
  %60 = add i64 %58, %59
  %61 = load i64, i64* %31
  %62 = add i64 %60, %61
  ret i64 %62
}

define i64 @testParam32(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31) {
entry:
  %32 = alloca i64
  store i64 %0, i64* %32
  %33 = alloca i64
  store i64 %1, i64* %33
  %34 = alloca i64
  store i64 %2, i64* %34
  %35 = alloca i64
  store i64 %3, i64* %35
  %36 = alloca i64
  store i64 %4, i64* %36
  %37 = alloca i64
  store i64 %5, i64* %37
  %38 = alloca i64
  store i64 %6, i64* %38
  %39 = alloca i64
  store i64 %7, i64* %39
  %40 = alloca i64
  store i64 %8, i64* %40
  %41 = alloca i64
  store i64 %9, i64* %41
  %42 = alloca i64
  store i64 %10, i64* %42
  %43 = alloca i64
  store i64 %11, i64* %43
  %44 = alloca i64
  store i64 %12, i64* %44
  %45 = alloca i64
  store i64 %13, i64* %45
  %46 = alloca i64
  store i64 %14, i64* %46
  %47 = alloca i64
  store i64 %15, i64* %47
  %48 = alloca i64
  store i64 %16, i64* %48
  %49 = alloca i64
  store i64 %17, i64* %49
  %50 = alloca i64
  store i64 %18, i64* %50
  %51 = alloca i64
  store i64 %19, i64* %51
  %52 = alloca i64
  store i64 %20, i64* %52
  %53 = alloca i64
  store i64 %21, i64* %53
  %54 = alloca i64
  store i64 %22, i64* %54
  %55 = alloca i64
  store i64 %23, i64* %55
  %56 = alloca i64
  store i64 %24, i64* %56
  %57 = alloca i64
  store i64 %25, i64* %57
  %58 = alloca i64
  store i64 %26, i64* %58
  %59 = alloca i64
  store i64 %27, i64* %59
  %60 = alloca i64
  store i64 %28, i64* %60
  %61 = alloca i64
  store i64 %29, i64* %61
  %62 = alloca i64
  store i64 %30, i64* %62
  %63 = alloca i64
  store i64 %31, i64* %63
  %64 = load i64, i64* %32
  %65 = load i64, i64* %33
  %66 = add i64 %64, %65
  %67 = load i64, i64* %34
  %68 = add i64 %66, %67
  %69 = load i64, i64* %35
  %70 = add i64 %68, %69
  %71 = load i64, i64* %36
  %72 = add i64 %70, %71
  %73 = load i64, i64* %37
  %74 = add i64 %72, %73
  %75 = load i64, i64* %38
  %76 = add i64 %74, %75
  %77 = load i64, i64* %39
  %78 = add i64 %76, %77
  %79 = load i64, i64* %40
  %80 = add i64 %78, %79
  %81 = load i64, i64* %41
  %82 = add i64 %80, %81
  %83 = load i64, i64* %42
  %84 = add i64 %82, %83
  %85 = load i64, i64* %43
  %86 = add i64 %84, %85
  %87 = load i64, i64* %44
  %88 = add i64 %86, %87
  %89 = load i64, i64* %45
  %90 = add i64 %88, %89
  %91 = load i64, i64* %46
  %92 = add i64 %90, %91
  %93 = load i64, i64* %47
  %94 = add i64 %92, %93
  %95 = load i64, i64* %48
  %96 = add i64 %94, %95
  %97 = load i64, i64* %49
  %98 = add i64 %96, %97
  %99 = load i64, i64* %50
  %100 = sub i64 %98, %99
  %101 = load i64, i64* %51
  %102 = sub i64 %100, %101
  %103 = load i64, i64* %52
  %104 = sub i64 %102, %103
  %105 = load i64, i64* %53
  %106 = sub i64 %104, %105
  %107 = load i64, i64* %54
  %108 = sub i64 %106, %107
  %109 = load i64, i64* %55
  %110 = add i64 %108, %109
  %111 = load i64, i64* %56
  %112 = add i64 %110, %111
  %113 = load i64, i64* %57
  %114 = add i64 %112, %113
  %115 = load i64, i64* %58
  %116 = add i64 %114, %115
  %117 = load i64, i64* %59
  %118 = add i64 %116, %117
  %119 = load i64, i64* %60
  %120 = add i64 %118, %119
  %121 = load i64, i64* %61
  %122 = add i64 %120, %121
  %123 = load i64, i64* %62
  %124 = add i64 %122, %123
  %125 = load i64, i64* %63
  %126 = add i64 %124, %125
  ret i64 %126
}

define i64 @main() {
entry:
  store i64 0, i64* @0
  store i64 1, i64* @1
  store i64 2, i64* @2
  store i64 3, i64* @3
  store i64 4, i64* @4
  store i64 5, i64* @5
  store i64 6, i64* @6
  store i64 7, i64* @7
  store i64 8, i64* @8
  store i64 9, i64* @9
  store i64 0, i64* @10
  store i64 1, i64* @11
  store i64 2, i64* @12
  store i64 3, i64* @13
  store i64 4, i64* @14
  store i64 5, i64* @15
  store i64 6, i64* @16
  store i64 7, i64* @17
  store i64 8, i64* @18
  store i64 9, i64* @19
  store i64 0, i64* @20
  store i64 1, i64* @21
  store i64 2, i64* @22
  store i64 3, i64* @23
  store i64 4, i64* @24
  store i64 5, i64* @25
  store i64 6, i64* @26
  store i64 7, i64* @27
  store i64 8, i64* @28
  store i64 9, i64* @29
  store i64 0, i64* @30
  store i64 1, i64* @31
  store i64 4, i64* @32
  store i64 5, i64* @33
  store i64 6, i64* @34
  store i64 7, i64* @35
  store i64 8, i64* @36
  store i64 9, i64* @37
  store i64 0, i64* @38
  store i64 1, i64* @39
  %0 = load i64, i64* @0
  %1 = load i64, i64* @1
  %2 = load i64, i64* @2
  %3 = load i64, i64* @3
  %4 = load i64, i64* @4
  %5 = load i64, i64* @5
  %6 = load i64, i64* @6
  %7 = load i64, i64* @7
  %8 = call i64 @testParam8(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7)
  store i64 %8, i64* @0
  %9 = load i64, i64* @0
  call void @putint(i64 %9)
  %10 = load i64, i64* @32
  %11 = load i64, i64* @33
  %12 = load i64, i64* @34
  %13 = load i64, i64* @35
  %14 = load i64, i64* @36
  %15 = load i64, i64* @37
  %16 = load i64, i64* @38
  %17 = load i64, i64* @39
  %18 = load i64, i64* @8
  %19 = load i64, i64* @9
  %20 = load i64, i64* @10
  %21 = load i64, i64* @11
  %22 = load i64, i64* @12
  %23 = load i64, i64* @13
  %24 = load i64, i64* @14
  %25 = load i64, i64* @15
  %26 = call i64 @testParam16(i64 %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25)
  store i64 %26, i64* @0
  %27 = load i64, i64* @0
  call void @putint(i64 %27)
  %28 = load i64, i64* @0
  %29 = load i64, i64* @1
  %30 = load i64, i64* @2
  %31 = load i64, i64* @3
  %32 = load i64, i64* @4
  %33 = load i64, i64* @5
  %34 = load i64, i64* @6
  %35 = load i64, i64* @7
  %36 = load i64, i64* @8
  %37 = load i64, i64* @9
  %38 = load i64, i64* @10
  %39 = load i64, i64* @11
  %40 = load i64, i64* @12
  %41 = load i64, i64* @13
  %42 = load i64, i64* @14
  %43 = load i64, i64* @15
  %44 = load i64, i64* @16
  %45 = load i64, i64* @17
  %46 = load i64, i64* @18
  %47 = load i64, i64* @19
  %48 = load i64, i64* @20
  %49 = load i64, i64* @21
  %50 = load i64, i64* @22
  %51 = load i64, i64* @23
  %52 = load i64, i64* @24
  %53 = load i64, i64* @25
  %54 = load i64, i64* @26
  %55 = load i64, i64* @27
  %56 = load i64, i64* @28
  %57 = load i64, i64* @29
  %58 = load i64, i64* @30
  %59 = load i64, i64* @31
  %60 = call i64 @testParam32(i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, i64 %59)
  store i64 %60, i64* @0
  %61 = load i64, i64* @0
  call void @putint(i64 %61)
  ret i64 0
}
