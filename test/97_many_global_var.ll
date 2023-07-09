; ModuleID = 'sysyc'
source_filename = "./97_many_global_var.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer
@2 = global i32 zeroinitializer
@3 = global i32 zeroinitializer
@4 = global i32 zeroinitializer
@5 = global i32 zeroinitializer
@6 = global i32 zeroinitializer
@7 = global i32 zeroinitializer
@8 = global i32 zeroinitializer
@9 = global i32 zeroinitializer
@10 = global i32 zeroinitializer
@11 = global i32 zeroinitializer
@12 = global i32 zeroinitializer
@13 = global i32 zeroinitializer
@14 = global i32 zeroinitializer
@15 = global i32 zeroinitializer
@16 = global i32 zeroinitializer
@17 = global i32 zeroinitializer
@18 = global i32 zeroinitializer
@19 = global i32 zeroinitializer
@20 = global i32 zeroinitializer
@21 = global i32 zeroinitializer
@22 = global i32 zeroinitializer
@23 = global i32 zeroinitializer
@24 = global i32 zeroinitializer
@25 = global i32 zeroinitializer
@26 = global i32 zeroinitializer
@27 = global i32 zeroinitializer
@28 = global i32 zeroinitializer
@29 = global i32 zeroinitializer
@30 = global i32 zeroinitializer
@31 = global i32 zeroinitializer
@32 = global i32 zeroinitializer
@33 = global i32 zeroinitializer
@34 = global i32 zeroinitializer
@35 = global i32 zeroinitializer
@36 = global i32 zeroinitializer
@37 = global i32 zeroinitializer
@38 = global i32 zeroinitializer
@39 = global i32 zeroinitializer

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
  %20 = add i32 %18, %19
  %21 = load i32, i32* %11
  %22 = add i32 %20, %21
  %23 = load i32, i32* %12
  %24 = add i32 %22, %23
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
  %38 = sub i32 %36, %37
  %39 = load i32, i32* %20
  %40 = sub i32 %38, %39
  %41 = load i32, i32* %21
  %42 = sub i32 %40, %41
  %43 = load i32, i32* %22
  %44 = sub i32 %42, %43
  %45 = load i32, i32* %23
  %46 = sub i32 %44, %45
  %47 = load i32, i32* %24
  %48 = add i32 %46, %47
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
  %88 = add i32 %86, %87
  %89 = load i32, i32* %45
  %90 = add i32 %88, %89
  %91 = load i32, i32* %46
  %92 = add i32 %90, %91
  %93 = load i32, i32* %47
  %94 = add i32 %92, %93
  %95 = load i32, i32* %48
  %96 = add i32 %94, %95
  %97 = load i32, i32* %49
  %98 = add i32 %96, %97
  %99 = load i32, i32* %50
  %100 = sub i32 %98, %99
  %101 = load i32, i32* %51
  %102 = sub i32 %100, %101
  %103 = load i32, i32* %52
  %104 = sub i32 %102, %103
  %105 = load i32, i32* %53
  %106 = sub i32 %104, %105
  %107 = load i32, i32* %54
  %108 = sub i32 %106, %107
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
  store i32 0, i32* @0
  store i32 1, i32* @1
  store i32 2, i32* @2
  store i32 3, i32* @3
  store i32 4, i32* @4
  store i32 5, i32* @5
  store i32 6, i32* @6
  store i32 7, i32* @7
  store i32 8, i32* @8
  store i32 9, i32* @9
  store i32 0, i32* @10
  store i32 1, i32* @11
  store i32 2, i32* @12
  store i32 3, i32* @13
  store i32 4, i32* @14
  store i32 5, i32* @15
  store i32 6, i32* @16
  store i32 7, i32* @17
  store i32 8, i32* @18
  store i32 9, i32* @19
  store i32 0, i32* @20
  store i32 1, i32* @21
  store i32 2, i32* @22
  store i32 3, i32* @23
  store i32 4, i32* @24
  store i32 5, i32* @25
  store i32 6, i32* @26
  store i32 7, i32* @27
  store i32 8, i32* @28
  store i32 9, i32* @29
  store i32 0, i32* @30
  store i32 1, i32* @31
  store i32 4, i32* @32
  store i32 5, i32* @33
  store i32 6, i32* @34
  store i32 7, i32* @35
  store i32 8, i32* @36
  store i32 9, i32* @37
  store i32 0, i32* @38
  store i32 1, i32* @39
  %0 = load i32, i32* @0
  %1 = load i32, i32* @1
  %2 = load i32, i32* @2
  %3 = load i32, i32* @3
  %4 = load i32, i32* @4
  %5 = load i32, i32* @5
  %6 = load i32, i32* @6
  %7 = load i32, i32* @7
  %8 = call i32 @testParam8(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* @0
  %9 = load i32, i32* @0
  call void @putint(i32 %9)
  %10 = load i32, i32* @32
  %11 = load i32, i32* @33
  %12 = load i32, i32* @34
  %13 = load i32, i32* @35
  %14 = load i32, i32* @36
  %15 = load i32, i32* @37
  %16 = load i32, i32* @38
  %17 = load i32, i32* @39
  %18 = load i32, i32* @8
  %19 = load i32, i32* @9
  %20 = load i32, i32* @10
  %21 = load i32, i32* @11
  %22 = load i32, i32* @12
  %23 = load i32, i32* @13
  %24 = load i32, i32* @14
  %25 = load i32, i32* @15
  %26 = call i32 @testParam16(i32 %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* @0
  %27 = load i32, i32* @0
  call void @putint(i32 %27)
  %28 = load i32, i32* @0
  %29 = load i32, i32* @1
  %30 = load i32, i32* @2
  %31 = load i32, i32* @3
  %32 = load i32, i32* @4
  %33 = load i32, i32* @5
  %34 = load i32, i32* @6
  %35 = load i32, i32* @7
  %36 = load i32, i32* @8
  %37 = load i32, i32* @9
  %38 = load i32, i32* @10
  %39 = load i32, i32* @11
  %40 = load i32, i32* @12
  %41 = load i32, i32* @13
  %42 = load i32, i32* @14
  %43 = load i32, i32* @15
  %44 = load i32, i32* @16
  %45 = load i32, i32* @17
  %46 = load i32, i32* @18
  %47 = load i32, i32* @19
  %48 = load i32, i32* @20
  %49 = load i32, i32* @21
  %50 = load i32, i32* @22
  %51 = load i32, i32* @23
  %52 = load i32, i32* @24
  %53 = load i32, i32* @25
  %54 = load i32, i32* @26
  %55 = load i32, i32* @27
  %56 = load i32, i32* @28
  %57 = load i32, i32* @29
  %58 = load i32, i32* @30
  %59 = load i32, i32* @31
  %60 = call i32 @testParam32(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* @0
  %61 = load i32, i32* @0
  call void @putint(i32 %61)
  ret i32 0
}
