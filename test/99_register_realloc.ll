; ModuleID = 'sysyc'
source_filename = "./99_register_realloc.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @func(i64 %0, i64 %1) {
entry:
  %2 = alloca i64
  store i64 %0, i64* %2
  %3 = alloca i64
  store i64 %1, i64* %3
  %4 = alloca i64
  %5 = load i64, i64* %2
  %6 = load i64, i64* %3
  %7 = add i64 %5, %6
  store i64 %7, i64* %4
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
  %31 = alloca i64
  %32 = alloca i64
  %33 = alloca i64
  %34 = alloca i64
  %35 = alloca i64
  %36 = alloca i64
  %37 = alloca i64
  %38 = alloca i64
  %39 = alloca i64
  %40 = alloca i64
  %41 = alloca i64
  %42 = alloca i64
  %43 = alloca i64
  store i64 1, i64* %8
  store i64 2, i64* %9
  store i64 3, i64* %10
  store i64 4, i64* %11
  %44 = load i64, i64* %8
  %45 = add i64 1, %44
  store i64 %45, i64* %12
  %46 = load i64, i64* %9
  %47 = add i64 2, %46
  store i64 %47, i64* %13
  %48 = load i64, i64* %10
  %49 = add i64 3, %48
  store i64 %49, i64* %14
  %50 = load i64, i64* %11
  %51 = add i64 4, %50
  store i64 %51, i64* %15
  %52 = load i64, i64* %12
  %53 = add i64 1, %52
  store i64 %53, i64* %16
  %54 = load i64, i64* %13
  %55 = add i64 2, %54
  store i64 %55, i64* %17
  %56 = load i64, i64* %14
  %57 = add i64 3, %56
  store i64 %57, i64* %18
  %58 = load i64, i64* %15
  %59 = add i64 4, %58
  store i64 %59, i64* %19
  %60 = load i64, i64* %16
  %61 = add i64 1, %60
  store i64 %61, i64* %20
  %62 = load i64, i64* %17
  %63 = add i64 2, %62
  store i64 %63, i64* %21
  %64 = load i64, i64* %18
  %65 = add i64 3, %64
  store i64 %65, i64* %22
  %66 = load i64, i64* %19
  %67 = add i64 4, %66
  store i64 %67, i64* %23
  %68 = load i64, i64* %20
  %69 = add i64 1, %68
  store i64 %69, i64* %24
  %70 = load i64, i64* %21
  %71 = add i64 2, %70
  store i64 %71, i64* %25
  %72 = load i64, i64* %22
  %73 = add i64 3, %72
  store i64 %73, i64* %26
  %74 = load i64, i64* %23
  %75 = add i64 4, %74
  store i64 %75, i64* %27
  %76 = load i64, i64* %24
  %77 = add i64 1, %76
  store i64 %77, i64* %28
  %78 = load i64, i64* %25
  %79 = add i64 2, %78
  store i64 %79, i64* %29
  %80 = load i64, i64* %26
  %81 = add i64 3, %80
  store i64 %81, i64* %30
  %82 = load i64, i64* %27
  %83 = add i64 4, %82
  store i64 %83, i64* %31
  %84 = load i64, i64* %28
  %85 = add i64 1, %84
  store i64 %85, i64* %32
  %86 = load i64, i64* %29
  %87 = add i64 2, %86
  store i64 %87, i64* %33
  %88 = load i64, i64* %30
  %89 = add i64 3, %88
  store i64 %89, i64* %34
  %90 = load i64, i64* %31
  %91 = add i64 4, %90
  store i64 %91, i64* %35
  %92 = load i64, i64* %32
  %93 = add i64 1, %92
  store i64 %93, i64* %36
  %94 = load i64, i64* %33
  %95 = add i64 2, %94
  store i64 %95, i64* %37
  %96 = load i64, i64* %34
  %97 = add i64 3, %96
  store i64 %97, i64* %38
  %98 = load i64, i64* %35
  %99 = add i64 4, %98
  store i64 %99, i64* %39
  %100 = load i64, i64* %36
  %101 = add i64 1, %100
  store i64 %101, i64* %40
  %102 = load i64, i64* %37
  %103 = add i64 2, %102
  store i64 %103, i64* %41
  %104 = load i64, i64* %38
  %105 = add i64 3, %104
  store i64 %105, i64* %42
  %106 = load i64, i64* %39
  %107 = add i64 4, %106
  store i64 %107, i64* %43
  %108 = load i64, i64* %2
  %109 = load i64, i64* %3
  %110 = sub i64 %108, %109
  %111 = add i64 %110, 10
  store i64 %111, i64* %4
  %112 = load i64, i64* %36
  %113 = add i64 1, %112
  store i64 %113, i64* %40
  %114 = load i64, i64* %37
  %115 = add i64 2, %114
  store i64 %115, i64* %41
  %116 = load i64, i64* %38
  %117 = add i64 3, %116
  store i64 %117, i64* %42
  %118 = load i64, i64* %39
  %119 = add i64 4, %118
  store i64 %119, i64* %43
  %120 = load i64, i64* %32
  %121 = add i64 1, %120
  store i64 %121, i64* %36
  %122 = load i64, i64* %33
  %123 = add i64 2, %122
  store i64 %123, i64* %37
  %124 = load i64, i64* %34
  %125 = add i64 3, %124
  store i64 %125, i64* %38
  %126 = load i64, i64* %35
  %127 = add i64 4, %126
  store i64 %127, i64* %39
  %128 = load i64, i64* %28
  %129 = add i64 1, %128
  store i64 %129, i64* %32
  %130 = load i64, i64* %29
  %131 = add i64 2, %130
  store i64 %131, i64* %33
  %132 = load i64, i64* %30
  %133 = add i64 3, %132
  store i64 %133, i64* %34
  %134 = load i64, i64* %31
  %135 = add i64 4, %134
  store i64 %135, i64* %35
  %136 = load i64, i64* %24
  %137 = add i64 1, %136
  store i64 %137, i64* %28
  %138 = load i64, i64* %25
  %139 = add i64 2, %138
  store i64 %139, i64* %29
  %140 = load i64, i64* %26
  %141 = add i64 3, %140
  store i64 %141, i64* %30
  %142 = load i64, i64* %27
  %143 = add i64 4, %142
  store i64 %143, i64* %31
  %144 = load i64, i64* %20
  %145 = add i64 1, %144
  store i64 %145, i64* %24
  %146 = load i64, i64* %21
  %147 = add i64 2, %146
  store i64 %147, i64* %25
  %148 = load i64, i64* %22
  %149 = add i64 3, %148
  store i64 %149, i64* %26
  %150 = load i64, i64* %23
  %151 = add i64 4, %150
  store i64 %151, i64* %27
  %152 = load i64, i64* %16
  %153 = add i64 1, %152
  store i64 %153, i64* %20
  %154 = load i64, i64* %17
  %155 = add i64 2, %154
  store i64 %155, i64* %21
  %156 = load i64, i64* %18
  %157 = add i64 3, %156
  store i64 %157, i64* %22
  %158 = load i64, i64* %19
  %159 = add i64 4, %158
  store i64 %159, i64* %23
  %160 = load i64, i64* %12
  %161 = add i64 1, %160
  store i64 %161, i64* %16
  %162 = load i64, i64* %13
  %163 = add i64 2, %162
  store i64 %163, i64* %17
  %164 = load i64, i64* %14
  %165 = add i64 3, %164
  store i64 %165, i64* %18
  %166 = load i64, i64* %15
  %167 = add i64 4, %166
  store i64 %167, i64* %19
  %168 = load i64, i64* %8
  %169 = add i64 1, %168
  store i64 %169, i64* %12
  %170 = load i64, i64* %9
  %171 = add i64 2, %170
  store i64 %171, i64* %13
  %172 = load i64, i64* %10
  %173 = add i64 3, %172
  store i64 %173, i64* %14
  %174 = load i64, i64* %11
  %175 = add i64 4, %174
  store i64 %175, i64* %15
  %176 = load i64, i64* %40
  %177 = add i64 1, %176
  store i64 %177, i64* %8
  %178 = load i64, i64* %41
  %179 = add i64 2, %178
  store i64 %179, i64* %9
  %180 = load i64, i64* %42
  %181 = add i64 3, %180
  store i64 %181, i64* %10
  %182 = load i64, i64* %43
  %183 = add i64 4, %182
  store i64 %183, i64* %11
  %184 = load i64, i64* %4
  %185 = load i64, i64* %8
  %186 = add i64 %184, %185
  %187 = load i64, i64* %9
  %188 = add i64 %186, %187
  %189 = load i64, i64* %10
  %190 = add i64 %188, %189
  %191 = load i64, i64* %11
  %192 = add i64 %190, %191
  %193 = load i64, i64* %12
  %194 = sub i64 %192, %193
  %195 = load i64, i64* %13
  %196 = sub i64 %194, %195
  %197 = load i64, i64* %14
  %198 = sub i64 %196, %197
  %199 = load i64, i64* %15
  %200 = sub i64 %198, %199
  %201 = load i64, i64* %16
  %202 = add i64 %200, %201
  %203 = load i64, i64* %17
  %204 = add i64 %202, %203
  %205 = load i64, i64* %18
  %206 = add i64 %204, %205
  %207 = load i64, i64* %19
  %208 = add i64 %206, %207
  %209 = load i64, i64* %20
  %210 = sub i64 %208, %209
  %211 = load i64, i64* %21
  %212 = sub i64 %210, %211
  %213 = load i64, i64* %22
  %214 = sub i64 %212, %213
  %215 = load i64, i64* %23
  %216 = sub i64 %214, %215
  %217 = load i64, i64* %24
  %218 = add i64 %216, %217
  %219 = load i64, i64* %25
  %220 = add i64 %218, %219
  %221 = load i64, i64* %26
  %222 = add i64 %220, %221
  %223 = load i64, i64* %27
  %224 = add i64 %222, %223
  %225 = load i64, i64* %28
  %226 = sub i64 %224, %225
  %227 = load i64, i64* %29
  %228 = sub i64 %226, %227
  %229 = load i64, i64* %30
  %230 = sub i64 %228, %229
  %231 = load i64, i64* %31
  %232 = sub i64 %230, %231
  %233 = load i64, i64* %32
  %234 = add i64 %232, %233
  %235 = load i64, i64* %33
  %236 = add i64 %234, %235
  %237 = load i64, i64* %34
  %238 = add i64 %236, %237
  %239 = load i64, i64* %35
  %240 = add i64 %238, %239
  %241 = load i64, i64* %36
  %242 = sub i64 %240, %241
  %243 = load i64, i64* %37
  %244 = sub i64 %242, %243
  %245 = load i64, i64* %38
  %246 = sub i64 %244, %245
  %247 = load i64, i64* %39
  %248 = sub i64 %246, %247
  %249 = load i64, i64* %40
  %250 = add i64 %248, %249
  %251 = load i64, i64* %41
  %252 = add i64 %250, %251
  %253 = load i64, i64* %42
  %254 = add i64 %252, %253
  %255 = load i64, i64* %43
  %256 = add i64 %254, %255
  ret i64 %256
}

define i64 @main() {
entry:
  %0 = alloca i64
  %1 = alloca i64
  store i64 1, i64* %0
  %2 = load i64, i64* %0
  %3 = add i64 %2, 18
  store i64 %3, i64* %1
  %4 = load i64, i64* %0
  %5 = load i64, i64* %1
  %6 = call i64 @func(i64 %4, i64 %5)
  ret i64 %6
}
