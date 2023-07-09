; ModuleID = 'sysyc'
source_filename = "./94_matrix_mul.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i32 zeroinitializer
@1 = global i32 zeroinitializer
@2 = global i32 zeroinitializer

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @mul(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) {
entry:
  %9 = alloca i32*
  store i32* %0, i32** %9
  %10 = alloca i32*
  store i32* %1, i32** %10
  %11 = alloca i32*
  store i32* %2, i32** %11
  %12 = alloca i32*
  store i32* %3, i32** %12
  %13 = alloca i32*
  store i32* %4, i32** %13
  %14 = alloca i32*
  store i32* %5, i32** %14
  %15 = alloca i32*
  store i32* %6, i32** %15
  %16 = alloca i32*
  store i32* %7, i32** %16
  %17 = alloca i32*
  store i32* %8, i32** %17
  %18 = alloca i32
  store i32 0, i32* %18
  %19 = load i32*, i32** %15
  %20 = getelementptr i32, i32* %19, i32 0
  %21 = load i32*, i32** %9
  %22 = getelementptr i32, i32* %21, i32 0
  %23 = load i32, i32* %22
  %24 = load i32*, i32** %12
  %25 = getelementptr i32, i32* %24, i32 0
  %26 = load i32, i32* %25
  %27 = mul i32 %23, %26
  %28 = load i32*, i32** %9
  %29 = getelementptr i32, i32* %28, i32 1
  %30 = load i32, i32* %29
  %31 = load i32*, i32** %13
  %32 = getelementptr i32, i32* %31, i32 0
  %33 = load i32, i32* %32
  %34 = mul i32 %30, %33
  %35 = add i32 %27, %34
  %36 = load i32*, i32** %9
  %37 = getelementptr i32, i32* %36, i32 2
  %38 = load i32, i32* %37
  %39 = load i32*, i32** %14
  %40 = getelementptr i32, i32* %39, i32 0
  %41 = load i32, i32* %40
  %42 = mul i32 %38, %41
  %43 = add i32 %35, %42
  store i32 %43, i32* %20
  %44 = load i32*, i32** %15
  %45 = getelementptr i32, i32* %44, i32 1
  %46 = load i32*, i32** %9
  %47 = getelementptr i32, i32* %46, i32 0
  %48 = load i32, i32* %47
  %49 = load i32*, i32** %12
  %50 = getelementptr i32, i32* %49, i32 1
  %51 = load i32, i32* %50
  %52 = mul i32 %48, %51
  %53 = load i32*, i32** %9
  %54 = getelementptr i32, i32* %53, i32 1
  %55 = load i32, i32* %54
  %56 = load i32*, i32** %13
  %57 = getelementptr i32, i32* %56, i32 1
  %58 = load i32, i32* %57
  %59 = mul i32 %55, %58
  %60 = add i32 %52, %59
  %61 = load i32*, i32** %9
  %62 = getelementptr i32, i32* %61, i32 2
  %63 = load i32, i32* %62
  %64 = load i32*, i32** %14
  %65 = getelementptr i32, i32* %64, i32 1
  %66 = load i32, i32* %65
  %67 = mul i32 %63, %66
  %68 = add i32 %60, %67
  store i32 %68, i32* %45
  %69 = load i32*, i32** %15
  %70 = getelementptr i32, i32* %69, i32 2
  %71 = load i32*, i32** %9
  %72 = getelementptr i32, i32* %71, i32 0
  %73 = load i32, i32* %72
  %74 = load i32*, i32** %12
  %75 = getelementptr i32, i32* %74, i32 2
  %76 = load i32, i32* %75
  %77 = mul i32 %73, %76
  %78 = load i32*, i32** %9
  %79 = getelementptr i32, i32* %78, i32 1
  %80 = load i32, i32* %79
  %81 = load i32*, i32** %13
  %82 = getelementptr i32, i32* %81, i32 2
  %83 = load i32, i32* %82
  %84 = mul i32 %80, %83
  %85 = add i32 %77, %84
  %86 = load i32*, i32** %9
  %87 = getelementptr i32, i32* %86, i32 2
  %88 = load i32, i32* %87
  %89 = load i32*, i32** %14
  %90 = getelementptr i32, i32* %89, i32 2
  %91 = load i32, i32* %90
  %92 = mul i32 %88, %91
  %93 = add i32 %85, %92
  store i32 %93, i32* %70
  %94 = load i32*, i32** %16
  %95 = getelementptr i32, i32* %94, i32 0
  %96 = load i32*, i32** %10
  %97 = getelementptr i32, i32* %96, i32 0
  %98 = load i32, i32* %97
  %99 = load i32*, i32** %12
  %100 = getelementptr i32, i32* %99, i32 0
  %101 = load i32, i32* %100
  %102 = mul i32 %98, %101
  %103 = load i32*, i32** %10
  %104 = getelementptr i32, i32* %103, i32 1
  %105 = load i32, i32* %104
  %106 = load i32*, i32** %13
  %107 = getelementptr i32, i32* %106, i32 0
  %108 = load i32, i32* %107
  %109 = mul i32 %105, %108
  %110 = add i32 %102, %109
  %111 = load i32*, i32** %10
  %112 = getelementptr i32, i32* %111, i32 2
  %113 = load i32, i32* %112
  %114 = load i32*, i32** %14
  %115 = getelementptr i32, i32* %114, i32 0
  %116 = load i32, i32* %115
  %117 = mul i32 %113, %116
  %118 = add i32 %110, %117
  store i32 %118, i32* %95
  %119 = load i32*, i32** %16
  %120 = getelementptr i32, i32* %119, i32 1
  %121 = load i32*, i32** %10
  %122 = getelementptr i32, i32* %121, i32 0
  %123 = load i32, i32* %122
  %124 = load i32*, i32** %12
  %125 = getelementptr i32, i32* %124, i32 1
  %126 = load i32, i32* %125
  %127 = mul i32 %123, %126
  %128 = load i32*, i32** %10
  %129 = getelementptr i32, i32* %128, i32 1
  %130 = load i32, i32* %129
  %131 = load i32*, i32** %13
  %132 = getelementptr i32, i32* %131, i32 1
  %133 = load i32, i32* %132
  %134 = mul i32 %130, %133
  %135 = add i32 %127, %134
  %136 = load i32*, i32** %10
  %137 = getelementptr i32, i32* %136, i32 2
  %138 = load i32, i32* %137
  %139 = load i32*, i32** %14
  %140 = getelementptr i32, i32* %139, i32 1
  %141 = load i32, i32* %140
  %142 = mul i32 %138, %141
  %143 = add i32 %135, %142
  store i32 %143, i32* %120
  %144 = load i32*, i32** %16
  %145 = getelementptr i32, i32* %144, i32 2
  %146 = load i32*, i32** %10
  %147 = getelementptr i32, i32* %146, i32 0
  %148 = load i32, i32* %147
  %149 = load i32*, i32** %12
  %150 = getelementptr i32, i32* %149, i32 2
  %151 = load i32, i32* %150
  %152 = mul i32 %148, %151
  %153 = load i32*, i32** %10
  %154 = getelementptr i32, i32* %153, i32 1
  %155 = load i32, i32* %154
  %156 = load i32*, i32** %13
  %157 = getelementptr i32, i32* %156, i32 2
  %158 = load i32, i32* %157
  %159 = mul i32 %155, %158
  %160 = add i32 %152, %159
  %161 = load i32*, i32** %10
  %162 = getelementptr i32, i32* %161, i32 2
  %163 = load i32, i32* %162
  %164 = load i32*, i32** %14
  %165 = getelementptr i32, i32* %164, i32 2
  %166 = load i32, i32* %165
  %167 = mul i32 %163, %166
  %168 = add i32 %160, %167
  store i32 %168, i32* %145
  %169 = load i32*, i32** %17
  %170 = getelementptr i32, i32* %169, i32 0
  %171 = load i32*, i32** %11
  %172 = getelementptr i32, i32* %171, i32 0
  %173 = load i32, i32* %172
  %174 = load i32*, i32** %12
  %175 = getelementptr i32, i32* %174, i32 0
  %176 = load i32, i32* %175
  %177 = mul i32 %173, %176
  %178 = load i32*, i32** %11
  %179 = getelementptr i32, i32* %178, i32 1
  %180 = load i32, i32* %179
  %181 = load i32*, i32** %13
  %182 = getelementptr i32, i32* %181, i32 0
  %183 = load i32, i32* %182
  %184 = mul i32 %180, %183
  %185 = add i32 %177, %184
  %186 = load i32*, i32** %11
  %187 = getelementptr i32, i32* %186, i32 2
  %188 = load i32, i32* %187
  %189 = load i32*, i32** %14
  %190 = getelementptr i32, i32* %189, i32 0
  %191 = load i32, i32* %190
  %192 = mul i32 %188, %191
  %193 = add i32 %185, %192
  store i32 %193, i32* %170
  %194 = load i32*, i32** %17
  %195 = getelementptr i32, i32* %194, i32 1
  %196 = load i32*, i32** %11
  %197 = getelementptr i32, i32* %196, i32 0
  %198 = load i32, i32* %197
  %199 = load i32*, i32** %12
  %200 = getelementptr i32, i32* %199, i32 1
  %201 = load i32, i32* %200
  %202 = mul i32 %198, %201
  %203 = load i32*, i32** %11
  %204 = getelementptr i32, i32* %203, i32 1
  %205 = load i32, i32* %204
  %206 = load i32*, i32** %13
  %207 = getelementptr i32, i32* %206, i32 1
  %208 = load i32, i32* %207
  %209 = mul i32 %205, %208
  %210 = add i32 %202, %209
  %211 = load i32*, i32** %11
  %212 = getelementptr i32, i32* %211, i32 2
  %213 = load i32, i32* %212
  %214 = load i32*, i32** %14
  %215 = getelementptr i32, i32* %214, i32 1
  %216 = load i32, i32* %215
  %217 = mul i32 %213, %216
  %218 = add i32 %210, %217
  store i32 %218, i32* %195
  %219 = load i32*, i32** %17
  %220 = getelementptr i32, i32* %219, i32 2
  %221 = load i32*, i32** %11
  %222 = getelementptr i32, i32* %221, i32 0
  %223 = load i32, i32* %222
  %224 = load i32*, i32** %12
  %225 = getelementptr i32, i32* %224, i32 2
  %226 = load i32, i32* %225
  %227 = mul i32 %223, %226
  %228 = load i32*, i32** %11
  %229 = getelementptr i32, i32* %228, i32 1
  %230 = load i32, i32* %229
  %231 = load i32*, i32** %13
  %232 = getelementptr i32, i32* %231, i32 2
  %233 = load i32, i32* %232
  %234 = mul i32 %230, %233
  %235 = add i32 %227, %234
  %236 = load i32*, i32** %11
  %237 = getelementptr i32, i32* %236, i32 2
  %238 = load i32, i32* %237
  %239 = load i32*, i32** %14
  %240 = getelementptr i32, i32* %239, i32 2
  %241 = load i32, i32* %240
  %242 = mul i32 %238, %241
  %243 = add i32 %235, %242
  store i32 %243, i32* %220
  ret i32 0
}

define i32 @main() {
entry:
  store i32 3, i32* @2
  store i32 3, i32* @0
  store i32 3, i32* @1
  %0 = alloca [3 x i32]
  %1 = alloca [3 x i32]
  %2 = alloca [3 x i32]
  %3 = alloca [3 x i32]
  %4 = alloca [3 x i32]
  %5 = alloca [3 x i32]
  %6 = alloca [6 x i32]
  %7 = alloca [3 x i32]
  %8 = alloca [3 x i32]
  %9 = alloca i32
  store i32 0, i32* %9
  br label %10

10:                                               ; preds = %16, %entry
  %11 = load i32, i32* %9
  %12 = load i32, i32* @0
  %13 = icmp slt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = load i32, i32* %9
  %18 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 %17
  %19 = load i32, i32* %9
  store i32 %19, i32* %18
  %20 = load i32, i32* %9
  %21 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 %20
  %22 = load i32, i32* %9
  store i32 %22, i32* %21
  %23 = load i32, i32* %9
  %24 = getelementptr [3 x i32], [3 x i32]* %2, i32 0, i32 %23
  %25 = load i32, i32* %9
  store i32 %25, i32* %24
  %26 = load i32, i32* %9
  %27 = getelementptr [3 x i32], [3 x i32]* %3, i32 0, i32 %26
  %28 = load i32, i32* %9
  store i32 %28, i32* %27
  %29 = load i32, i32* %9
  %30 = getelementptr [3 x i32], [3 x i32]* %4, i32 0, i32 %29
  %31 = load i32, i32* %9
  store i32 %31, i32* %30
  %32 = load i32, i32* %9
  %33 = getelementptr [3 x i32], [3 x i32]* %5, i32 0, i32 %32
  %34 = load i32, i32* %9
  store i32 %34, i32* %33
  %35 = load i32, i32* %9
  %36 = add i32 %35, 1
  store i32 %36, i32* %9
  br label %10

37:                                               ; preds = %10
  %38 = getelementptr [3 x i32], [3 x i32]* %0, i32 0, i32 0
  %39 = getelementptr [3 x i32], [3 x i32]* %1, i32 0, i32 0
  %40 = getelementptr [3 x i32], [3 x i32]* %2, i32 0, i32 0
  %41 = getelementptr [3 x i32], [3 x i32]* %3, i32 0, i32 0
  %42 = getelementptr [3 x i32], [3 x i32]* %4, i32 0, i32 0
  %43 = getelementptr [3 x i32], [3 x i32]* %5, i32 0, i32 0
  %44 = getelementptr [6 x i32], [6 x i32]* %6, i32 0, i32 0
  %45 = getelementptr [3 x i32], [3 x i32]* %7, i32 0, i32 0
  %46 = getelementptr [3 x i32], [3 x i32]* %8, i32 0, i32 0
  %47 = call i32 @mul(i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46)
  store i32 %47, i32* %9
  %48 = alloca i32
  br label %49

49:                                               ; preds = %55, %37
  %50 = load i32, i32* %9
  %51 = load i32, i32* @2
  %52 = icmp slt i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %9
  %57 = getelementptr [6 x i32], [6 x i32]* %6, i32 0, i32 %56
  %58 = load i32, i32* %57
  store i32 %58, i32* %48
  %59 = load i32, i32* %48
  call void @putint(i32 %59)
  %60 = load i32, i32* %9
  %61 = add i32 %60, 1
  store i32 %61, i32* %9
  br label %49

62:                                               ; preds = %49
  store i32 10, i32* %48
  store i32 0, i32* %9
  %63 = load i32, i32* %48
  call void @putch(i32 %63)
  br label %64

64:                                               ; preds = %70, %62
  %65 = load i32, i32* %9
  %66 = load i32, i32* @2
  %67 = icmp slt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32, i32* %9
  %72 = getelementptr [3 x i32], [3 x i32]* %7, i32 0, i32 %71
  %73 = load i32, i32* %72
  store i32 %73, i32* %48
  %74 = load i32, i32* %48
  call void @putint(i32 %74)
  %75 = load i32, i32* %9
  %76 = add i32 %75, 1
  store i32 %76, i32* %9
  br label %64

77:                                               ; preds = %64
  store i32 10, i32* %48
  store i32 0, i32* %9
  %78 = load i32, i32* %48
  call void @putch(i32 %78)
  br label %79

79:                                               ; preds = %85, %77
  %80 = load i32, i32* %9
  %81 = load i32, i32* @2
  %82 = icmp slt i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i32, i32* %9
  %87 = getelementptr [3 x i32], [3 x i32]* %8, i32 0, i32 %86
  %88 = load i32, i32* %87
  store i32 %88, i32* %48
  %89 = load i32, i32* %48
  call void @putint(i32 %89)
  %90 = load i32, i32* %9
  %91 = add i32 %90, 1
  store i32 %91, i32* %9
  br label %79

92:                                               ; preds = %79
  store i32 10, i32* %48
  %93 = load i32, i32* %48
  call void @putch(i32 %93)
  ret i32 0
}
