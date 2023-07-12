; ModuleID = 'sysyc'
source_filename = "./94_matrix_mul.sy"
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

define i64 @mul(i64* %0, i64* %1, i64* %2, i64* %3, i64* %4, i64* %5, i64* %6, i64* %7, i64* %8) {
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
  %19 = load i64*, i64** %15
  %20 = getelementptr i64, i64* %19, i64 0
  %21 = load i64*, i64** %9
  %22 = getelementptr i64, i64* %21, i64 0
  %23 = load i64, i64* %22
  %24 = load i64*, i64** %12
  %25 = getelementptr i64, i64* %24, i64 0
  %26 = load i64, i64* %25
  %27 = mul i64 %23, %26
  %28 = load i64*, i64** %9
  %29 = getelementptr i64, i64* %28, i64 1
  %30 = load i64, i64* %29
  %31 = load i64*, i64** %13
  %32 = getelementptr i64, i64* %31, i64 0
  %33 = load i64, i64* %32
  %34 = mul i64 %30, %33
  %35 = add i64 %27, %34
  %36 = load i64*, i64** %9
  %37 = getelementptr i64, i64* %36, i64 2
  %38 = load i64, i64* %37
  %39 = load i64*, i64** %14
  %40 = getelementptr i64, i64* %39, i64 0
  %41 = load i64, i64* %40
  %42 = mul i64 %38, %41
  %43 = add i64 %35, %42
  store i64 %43, i64* %20
  %44 = load i64*, i64** %15
  %45 = getelementptr i64, i64* %44, i64 1
  %46 = load i64*, i64** %9
  %47 = getelementptr i64, i64* %46, i64 0
  %48 = load i64, i64* %47
  %49 = load i64*, i64** %12
  %50 = getelementptr i64, i64* %49, i64 1
  %51 = load i64, i64* %50
  %52 = mul i64 %48, %51
  %53 = load i64*, i64** %9
  %54 = getelementptr i64, i64* %53, i64 1
  %55 = load i64, i64* %54
  %56 = load i64*, i64** %13
  %57 = getelementptr i64, i64* %56, i64 1
  %58 = load i64, i64* %57
  %59 = mul i64 %55, %58
  %60 = add i64 %52, %59
  %61 = load i64*, i64** %9
  %62 = getelementptr i64, i64* %61, i64 2
  %63 = load i64, i64* %62
  %64 = load i64*, i64** %14
  %65 = getelementptr i64, i64* %64, i64 1
  %66 = load i64, i64* %65
  %67 = mul i64 %63, %66
  %68 = add i64 %60, %67
  store i64 %68, i64* %45
  %69 = load i64*, i64** %15
  %70 = getelementptr i64, i64* %69, i64 2
  %71 = load i64*, i64** %9
  %72 = getelementptr i64, i64* %71, i64 0
  %73 = load i64, i64* %72
  %74 = load i64*, i64** %12
  %75 = getelementptr i64, i64* %74, i64 2
  %76 = load i64, i64* %75
  %77 = mul i64 %73, %76
  %78 = load i64*, i64** %9
  %79 = getelementptr i64, i64* %78, i64 1
  %80 = load i64, i64* %79
  %81 = load i64*, i64** %13
  %82 = getelementptr i64, i64* %81, i64 2
  %83 = load i64, i64* %82
  %84 = mul i64 %80, %83
  %85 = add i64 %77, %84
  %86 = load i64*, i64** %9
  %87 = getelementptr i64, i64* %86, i64 2
  %88 = load i64, i64* %87
  %89 = load i64*, i64** %14
  %90 = getelementptr i64, i64* %89, i64 2
  %91 = load i64, i64* %90
  %92 = mul i64 %88, %91
  %93 = add i64 %85, %92
  store i64 %93, i64* %70
  %94 = load i64*, i64** %16
  %95 = getelementptr i64, i64* %94, i64 0
  %96 = load i64*, i64** %10
  %97 = getelementptr i64, i64* %96, i64 0
  %98 = load i64, i64* %97
  %99 = load i64*, i64** %12
  %100 = getelementptr i64, i64* %99, i64 0
  %101 = load i64, i64* %100
  %102 = mul i64 %98, %101
  %103 = load i64*, i64** %10
  %104 = getelementptr i64, i64* %103, i64 1
  %105 = load i64, i64* %104
  %106 = load i64*, i64** %13
  %107 = getelementptr i64, i64* %106, i64 0
  %108 = load i64, i64* %107
  %109 = mul i64 %105, %108
  %110 = add i64 %102, %109
  %111 = load i64*, i64** %10
  %112 = getelementptr i64, i64* %111, i64 2
  %113 = load i64, i64* %112
  %114 = load i64*, i64** %14
  %115 = getelementptr i64, i64* %114, i64 0
  %116 = load i64, i64* %115
  %117 = mul i64 %113, %116
  %118 = add i64 %110, %117
  store i64 %118, i64* %95
  %119 = load i64*, i64** %16
  %120 = getelementptr i64, i64* %119, i64 1
  %121 = load i64*, i64** %10
  %122 = getelementptr i64, i64* %121, i64 0
  %123 = load i64, i64* %122
  %124 = load i64*, i64** %12
  %125 = getelementptr i64, i64* %124, i64 1
  %126 = load i64, i64* %125
  %127 = mul i64 %123, %126
  %128 = load i64*, i64** %10
  %129 = getelementptr i64, i64* %128, i64 1
  %130 = load i64, i64* %129
  %131 = load i64*, i64** %13
  %132 = getelementptr i64, i64* %131, i64 1
  %133 = load i64, i64* %132
  %134 = mul i64 %130, %133
  %135 = add i64 %127, %134
  %136 = load i64*, i64** %10
  %137 = getelementptr i64, i64* %136, i64 2
  %138 = load i64, i64* %137
  %139 = load i64*, i64** %14
  %140 = getelementptr i64, i64* %139, i64 1
  %141 = load i64, i64* %140
  %142 = mul i64 %138, %141
  %143 = add i64 %135, %142
  store i64 %143, i64* %120
  %144 = load i64*, i64** %16
  %145 = getelementptr i64, i64* %144, i64 2
  %146 = load i64*, i64** %10
  %147 = getelementptr i64, i64* %146, i64 0
  %148 = load i64, i64* %147
  %149 = load i64*, i64** %12
  %150 = getelementptr i64, i64* %149, i64 2
  %151 = load i64, i64* %150
  %152 = mul i64 %148, %151
  %153 = load i64*, i64** %10
  %154 = getelementptr i64, i64* %153, i64 1
  %155 = load i64, i64* %154
  %156 = load i64*, i64** %13
  %157 = getelementptr i64, i64* %156, i64 2
  %158 = load i64, i64* %157
  %159 = mul i64 %155, %158
  %160 = add i64 %152, %159
  %161 = load i64*, i64** %10
  %162 = getelementptr i64, i64* %161, i64 2
  %163 = load i64, i64* %162
  %164 = load i64*, i64** %14
  %165 = getelementptr i64, i64* %164, i64 2
  %166 = load i64, i64* %165
  %167 = mul i64 %163, %166
  %168 = add i64 %160, %167
  store i64 %168, i64* %145
  %169 = load i64*, i64** %17
  %170 = getelementptr i64, i64* %169, i64 0
  %171 = load i64*, i64** %11
  %172 = getelementptr i64, i64* %171, i64 0
  %173 = load i64, i64* %172
  %174 = load i64*, i64** %12
  %175 = getelementptr i64, i64* %174, i64 0
  %176 = load i64, i64* %175
  %177 = mul i64 %173, %176
  %178 = load i64*, i64** %11
  %179 = getelementptr i64, i64* %178, i64 1
  %180 = load i64, i64* %179
  %181 = load i64*, i64** %13
  %182 = getelementptr i64, i64* %181, i64 0
  %183 = load i64, i64* %182
  %184 = mul i64 %180, %183
  %185 = add i64 %177, %184
  %186 = load i64*, i64** %11
  %187 = getelementptr i64, i64* %186, i64 2
  %188 = load i64, i64* %187
  %189 = load i64*, i64** %14
  %190 = getelementptr i64, i64* %189, i64 0
  %191 = load i64, i64* %190
  %192 = mul i64 %188, %191
  %193 = add i64 %185, %192
  store i64 %193, i64* %170
  %194 = load i64*, i64** %17
  %195 = getelementptr i64, i64* %194, i64 1
  %196 = load i64*, i64** %11
  %197 = getelementptr i64, i64* %196, i64 0
  %198 = load i64, i64* %197
  %199 = load i64*, i64** %12
  %200 = getelementptr i64, i64* %199, i64 1
  %201 = load i64, i64* %200
  %202 = mul i64 %198, %201
  %203 = load i64*, i64** %11
  %204 = getelementptr i64, i64* %203, i64 1
  %205 = load i64, i64* %204
  %206 = load i64*, i64** %13
  %207 = getelementptr i64, i64* %206, i64 1
  %208 = load i64, i64* %207
  %209 = mul i64 %205, %208
  %210 = add i64 %202, %209
  %211 = load i64*, i64** %11
  %212 = getelementptr i64, i64* %211, i64 2
  %213 = load i64, i64* %212
  %214 = load i64*, i64** %14
  %215 = getelementptr i64, i64* %214, i64 1
  %216 = load i64, i64* %215
  %217 = mul i64 %213, %216
  %218 = add i64 %210, %217
  store i64 %218, i64* %195
  %219 = load i64*, i64** %17
  %220 = getelementptr i64, i64* %219, i64 2
  %221 = load i64*, i64** %11
  %222 = getelementptr i64, i64* %221, i64 0
  %223 = load i64, i64* %222
  %224 = load i64*, i64** %12
  %225 = getelementptr i64, i64* %224, i64 2
  %226 = load i64, i64* %225
  %227 = mul i64 %223, %226
  %228 = load i64*, i64** %11
  %229 = getelementptr i64, i64* %228, i64 1
  %230 = load i64, i64* %229
  %231 = load i64*, i64** %13
  %232 = getelementptr i64, i64* %231, i64 2
  %233 = load i64, i64* %232
  %234 = mul i64 %230, %233
  %235 = add i64 %227, %234
  %236 = load i64*, i64** %11
  %237 = getelementptr i64, i64* %236, i64 2
  %238 = load i64, i64* %237
  %239 = load i64*, i64** %14
  %240 = getelementptr i64, i64* %239, i64 2
  %241 = load i64, i64* %240
  %242 = mul i64 %238, %241
  %243 = add i64 %235, %242
  store i64 %243, i64* %220
  ret i64 0
}

define i64 @main() {
entry:
  store i64 3, i64* @2
  store i64 3, i64* @0
  store i64 3, i64* @1
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
  br label %loop_expression

loop_expression:                                  ; preds = %loop_true, %entry
  %10 = load i64, i64* %9
  %11 = load i64, i64* @0
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %loop_true, label %loop_cont

loop_true:                                        ; preds = %loop_expression
  %15 = load i64, i64* %9
  %16 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 %15
  %17 = load i64, i64* %9
  store i64 %17, i64* %16
  %18 = load i64, i64* %9
  %19 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 %18
  %20 = load i64, i64* %9
  store i64 %20, i64* %19
  %21 = load i64, i64* %9
  %22 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 %21
  %23 = load i64, i64* %9
  store i64 %23, i64* %22
  %24 = load i64, i64* %9
  %25 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 %24
  %26 = load i64, i64* %9
  store i64 %26, i64* %25
  %27 = load i64, i64* %9
  %28 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 %27
  %29 = load i64, i64* %9
  store i64 %29, i64* %28
  %30 = load i64, i64* %9
  %31 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 %30
  %32 = load i64, i64* %9
  store i64 %32, i64* %31
  %33 = load i64, i64* %9
  %34 = add i64 %33, 1
  store i64 %34, i64* %9
  br label %loop_expression

loop_cont:                                        ; preds = %loop_expression
  %35 = getelementptr [3 x i64], [3 x i64]* %0, i64 0, i64 0
  %36 = getelementptr [3 x i64], [3 x i64]* %1, i64 0, i64 0
  %37 = getelementptr [3 x i64], [3 x i64]* %2, i64 0, i64 0
  %38 = getelementptr [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %39 = getelementptr [3 x i64], [3 x i64]* %4, i64 0, i64 0
  %40 = getelementptr [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %41 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 0
  %42 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %43 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %44 = call i64 @mul(i64* %35, i64* %36, i64* %37, i64* %38, i64* %39, i64* %40, i64* %41, i64* %42, i64* %43)
  store i64 %44, i64* %9
  %45 = alloca i64
  br label %loop_expression1

loop_expression1:                                 ; preds = %loop_true2, %loop_cont
  %46 = load i64, i64* %9
  %47 = load i64, i64* @2
  %48 = icmp slt i64 %46, %47
  %49 = zext i1 %48 to i64
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %loop_true2, label %loop_cont3

loop_true2:                                       ; preds = %loop_expression1
  %51 = load i64, i64* %9
  %52 = getelementptr [6 x i64], [6 x i64]* %6, i64 0, i64 %51
  %53 = load i64, i64* %52
  store i64 %53, i64* %45
  %54 = load i64, i64* %45
  call void @putint(i64 %54)
  %55 = load i64, i64* %9
  %56 = add i64 %55, 1
  store i64 %56, i64* %9
  br label %loop_expression1

loop_cont3:                                       ; preds = %loop_expression1
  store i64 10, i64* %45
  store i64 0, i64* %9
  %57 = load i64, i64* %45
  call void @putch(i64 %57)
  br label %loop_expression4

loop_expression4:                                 ; preds = %loop_true5, %loop_cont3
  %58 = load i64, i64* %9
  %59 = load i64, i64* @2
  %60 = icmp slt i64 %58, %59
  %61 = zext i1 %60 to i64
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %loop_true5, label %loop_cont6

loop_true5:                                       ; preds = %loop_expression4
  %63 = load i64, i64* %9
  %64 = getelementptr [3 x i64], [3 x i64]* %7, i64 0, i64 %63
  %65 = load i64, i64* %64
  store i64 %65, i64* %45
  %66 = load i64, i64* %45
  call void @putint(i64 %66)
  %67 = load i64, i64* %9
  %68 = add i64 %67, 1
  store i64 %68, i64* %9
  br label %loop_expression4

loop_cont6:                                       ; preds = %loop_expression4
  store i64 10, i64* %45
  store i64 0, i64* %9
  %69 = load i64, i64* %45
  call void @putch(i64 %69)
  br label %loop_expression7

loop_expression7:                                 ; preds = %loop_true8, %loop_cont6
  %70 = load i64, i64* %9
  %71 = load i64, i64* @2
  %72 = icmp slt i64 %70, %71
  %73 = zext i1 %72 to i64
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %loop_true8, label %loop_cont9

loop_true8:                                       ; preds = %loop_expression7
  %75 = load i64, i64* %9
  %76 = getelementptr [3 x i64], [3 x i64]* %8, i64 0, i64 %75
  %77 = load i64, i64* %76
  store i64 %77, i64* %45
  %78 = load i64, i64* %45
  call void @putint(i64 %78)
  %79 = load i64, i64* %9
  %80 = add i64 %79, 1
  store i64 %80, i64* %9
  br label %loop_expression7

loop_cont9:                                       ; preds = %loop_expression7
  store i64 10, i64* %45
  %81 = load i64, i64* %45
  call void @putch(i64 %81)
  ret i64 0
}
