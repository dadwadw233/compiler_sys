; ModuleID = 'sysyc'
source_filename = "./99_register_realloc.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

declare i32 @getint()

declare i32 @getch()

declare void @putint(i32)

declare void @putch(i32)

declare i32 @getarray(i32*)

declare i32 @putarray(i32, i32*)

define i32 @func(i32 %0, i32 %1) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 %1, i32* %3
  %4 = alloca i32
  %5 = load i32, i32* %2
  %6 = load i32, i32* %3
  %7 = add i32 %5, %6
  store i32 %7, i32* %4
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
  %32 = alloca i32
  %33 = alloca i32
  %34 = alloca i32
  %35 = alloca i32
  %36 = alloca i32
  %37 = alloca i32
  %38 = alloca i32
  %39 = alloca i32
  %40 = alloca i32
  %41 = alloca i32
  %42 = alloca i32
  %43 = alloca i32
  store i32 1, i32* %8
  store i32 2, i32* %9
  store i32 3, i32* %10
  store i32 4, i32* %11
  %44 = load i32, i32* %8
  %45 = add i32 1, %44
  store i32 %45, i32* %12
  %46 = load i32, i32* %9
  %47 = add i32 2, %46
  store i32 %47, i32* %13
  %48 = load i32, i32* %10
  %49 = add i32 3, %48
  store i32 %49, i32* %14
  %50 = load i32, i32* %11
  %51 = add i32 4, %50
  store i32 %51, i32* %15
  %52 = load i32, i32* %12
  %53 = add i32 1, %52
  store i32 %53, i32* %16
  %54 = load i32, i32* %13
  %55 = add i32 2, %54
  store i32 %55, i32* %17
  %56 = load i32, i32* %14
  %57 = add i32 3, %56
  store i32 %57, i32* %18
  %58 = load i32, i32* %15
  %59 = add i32 4, %58
  store i32 %59, i32* %19
  %60 = load i32, i32* %16
  %61 = add i32 1, %60
  store i32 %61, i32* %20
  %62 = load i32, i32* %17
  %63 = add i32 2, %62
  store i32 %63, i32* %21
  %64 = load i32, i32* %18
  %65 = add i32 3, %64
  store i32 %65, i32* %22
  %66 = load i32, i32* %19
  %67 = add i32 4, %66
  store i32 %67, i32* %23
  %68 = load i32, i32* %20
  %69 = add i32 1, %68
  store i32 %69, i32* %24
  %70 = load i32, i32* %21
  %71 = add i32 2, %70
  store i32 %71, i32* %25
  %72 = load i32, i32* %22
  %73 = add i32 3, %72
  store i32 %73, i32* %26
  %74 = load i32, i32* %23
  %75 = add i32 4, %74
  store i32 %75, i32* %27
  %76 = load i32, i32* %24
  %77 = add i32 1, %76
  store i32 %77, i32* %28
  %78 = load i32, i32* %25
  %79 = add i32 2, %78
  store i32 %79, i32* %29
  %80 = load i32, i32* %26
  %81 = add i32 3, %80
  store i32 %81, i32* %30
  %82 = load i32, i32* %27
  %83 = add i32 4, %82
  store i32 %83, i32* %31
  %84 = load i32, i32* %28
  %85 = add i32 1, %84
  store i32 %85, i32* %32
  %86 = load i32, i32* %29
  %87 = add i32 2, %86
  store i32 %87, i32* %33
  %88 = load i32, i32* %30
  %89 = add i32 3, %88
  store i32 %89, i32* %34
  %90 = load i32, i32* %31
  %91 = add i32 4, %90
  store i32 %91, i32* %35
  %92 = load i32, i32* %32
  %93 = add i32 1, %92
  store i32 %93, i32* %36
  %94 = load i32, i32* %33
  %95 = add i32 2, %94
  store i32 %95, i32* %37
  %96 = load i32, i32* %34
  %97 = add i32 3, %96
  store i32 %97, i32* %38
  %98 = load i32, i32* %35
  %99 = add i32 4, %98
  store i32 %99, i32* %39
  %100 = load i32, i32* %36
  %101 = add i32 1, %100
  store i32 %101, i32* %40
  %102 = load i32, i32* %37
  %103 = add i32 2, %102
  store i32 %103, i32* %41
  %104 = load i32, i32* %38
  %105 = add i32 3, %104
  store i32 %105, i32* %42
  %106 = load i32, i32* %39
  %107 = add i32 4, %106
  store i32 %107, i32* %43
  %108 = load i32, i32* %2
  %109 = load i32, i32* %3
  %110 = sub i32 %108, %109
  %111 = add i32 %110, 10
  store i32 %111, i32* %4
  %112 = load i32, i32* %36
  %113 = add i32 1, %112
  store i32 %113, i32* %40
  %114 = load i32, i32* %37
  %115 = add i32 2, %114
  store i32 %115, i32* %41
  %116 = load i32, i32* %38
  %117 = add i32 3, %116
  store i32 %117, i32* %42
  %118 = load i32, i32* %39
  %119 = add i32 4, %118
  store i32 %119, i32* %43
  %120 = load i32, i32* %32
  %121 = add i32 1, %120
  store i32 %121, i32* %36
  %122 = load i32, i32* %33
  %123 = add i32 2, %122
  store i32 %123, i32* %37
  %124 = load i32, i32* %34
  %125 = add i32 3, %124
  store i32 %125, i32* %38
  %126 = load i32, i32* %35
  %127 = add i32 4, %126
  store i32 %127, i32* %39
  %128 = load i32, i32* %28
  %129 = add i32 1, %128
  store i32 %129, i32* %32
  %130 = load i32, i32* %29
  %131 = add i32 2, %130
  store i32 %131, i32* %33
  %132 = load i32, i32* %30
  %133 = add i32 3, %132
  store i32 %133, i32* %34
  %134 = load i32, i32* %31
  %135 = add i32 4, %134
  store i32 %135, i32* %35
  %136 = load i32, i32* %24
  %137 = add i32 1, %136
  store i32 %137, i32* %28
  %138 = load i32, i32* %25
  %139 = add i32 2, %138
  store i32 %139, i32* %29
  %140 = load i32, i32* %26
  %141 = add i32 3, %140
  store i32 %141, i32* %30
  %142 = load i32, i32* %27
  %143 = add i32 4, %142
  store i32 %143, i32* %31
  %144 = load i32, i32* %20
  %145 = add i32 1, %144
  store i32 %145, i32* %24
  %146 = load i32, i32* %21
  %147 = add i32 2, %146
  store i32 %147, i32* %25
  %148 = load i32, i32* %22
  %149 = add i32 3, %148
  store i32 %149, i32* %26
  %150 = load i32, i32* %23
  %151 = add i32 4, %150
  store i32 %151, i32* %27
  %152 = load i32, i32* %16
  %153 = add i32 1, %152
  store i32 %153, i32* %20
  %154 = load i32, i32* %17
  %155 = add i32 2, %154
  store i32 %155, i32* %21
  %156 = load i32, i32* %18
  %157 = add i32 3, %156
  store i32 %157, i32* %22
  %158 = load i32, i32* %19
  %159 = add i32 4, %158
  store i32 %159, i32* %23
  %160 = load i32, i32* %12
  %161 = add i32 1, %160
  store i32 %161, i32* %16
  %162 = load i32, i32* %13
  %163 = add i32 2, %162
  store i32 %163, i32* %17
  %164 = load i32, i32* %14
  %165 = add i32 3, %164
  store i32 %165, i32* %18
  %166 = load i32, i32* %15
  %167 = add i32 4, %166
  store i32 %167, i32* %19
  %168 = load i32, i32* %8
  %169 = add i32 1, %168
  store i32 %169, i32* %12
  %170 = load i32, i32* %9
  %171 = add i32 2, %170
  store i32 %171, i32* %13
  %172 = load i32, i32* %10
  %173 = add i32 3, %172
  store i32 %173, i32* %14
  %174 = load i32, i32* %11
  %175 = add i32 4, %174
  store i32 %175, i32* %15
  %176 = load i32, i32* %40
  %177 = add i32 1, %176
  store i32 %177, i32* %8
  %178 = load i32, i32* %41
  %179 = add i32 2, %178
  store i32 %179, i32* %9
  %180 = load i32, i32* %42
  %181 = add i32 3, %180
  store i32 %181, i32* %10
  %182 = load i32, i32* %43
  %183 = add i32 4, %182
  store i32 %183, i32* %11
  %184 = load i32, i32* %4
  %185 = load i32, i32* %8
  %186 = add i32 %184, %185
  %187 = load i32, i32* %9
  %188 = add i32 %186, %187
  %189 = load i32, i32* %10
  %190 = add i32 %188, %189
  %191 = load i32, i32* %11
  %192 = add i32 %190, %191
  %193 = load i32, i32* %12
  %194 = sub i32 %192, %193
  %195 = load i32, i32* %13
  %196 = sub i32 %194, %195
  %197 = load i32, i32* %14
  %198 = sub i32 %196, %197
  %199 = load i32, i32* %15
  %200 = sub i32 %198, %199
  %201 = load i32, i32* %16
  %202 = add i32 %200, %201
  %203 = load i32, i32* %17
  %204 = add i32 %202, %203
  %205 = load i32, i32* %18
  %206 = add i32 %204, %205
  %207 = load i32, i32* %19
  %208 = add i32 %206, %207
  %209 = load i32, i32* %20
  %210 = sub i32 %208, %209
  %211 = load i32, i32* %21
  %212 = sub i32 %210, %211
  %213 = load i32, i32* %22
  %214 = sub i32 %212, %213
  %215 = load i32, i32* %23
  %216 = sub i32 %214, %215
  %217 = load i32, i32* %24
  %218 = add i32 %216, %217
  %219 = load i32, i32* %25
  %220 = add i32 %218, %219
  %221 = load i32, i32* %26
  %222 = add i32 %220, %221
  %223 = load i32, i32* %27
  %224 = add i32 %222, %223
  %225 = load i32, i32* %28
  %226 = sub i32 %224, %225
  %227 = load i32, i32* %29
  %228 = sub i32 %226, %227
  %229 = load i32, i32* %30
  %230 = sub i32 %228, %229
  %231 = load i32, i32* %31
  %232 = sub i32 %230, %231
  %233 = load i32, i32* %32
  %234 = add i32 %232, %233
  %235 = load i32, i32* %33
  %236 = add i32 %234, %235
  %237 = load i32, i32* %34
  %238 = add i32 %236, %237
  %239 = load i32, i32* %35
  %240 = add i32 %238, %239
  %241 = load i32, i32* %36
  %242 = sub i32 %240, %241
  %243 = load i32, i32* %37
  %244 = sub i32 %242, %243
  %245 = load i32, i32* %38
  %246 = sub i32 %244, %245
  %247 = load i32, i32* %39
  %248 = sub i32 %246, %247
  %249 = load i32, i32* %40
  %250 = add i32 %248, %249
  %251 = load i32, i32* %41
  %252 = add i32 %250, %251
  %253 = load i32, i32* %42
  %254 = add i32 %252, %253
  %255 = load i32, i32* %43
  %256 = add i32 %254, %255
  ret i32 %256
}

define i32 @main() {
entry:
  %0 = alloca i32
  %1 = alloca i32
  store i32 1, i32* %0
  %2 = load i32, i32* %0
  %3 = add i32 %2, 18
  store i32 %3, i32* %1
  %4 = load i32, i32* %0
  %5 = load i32, i32* %1
  %6 = call i32 @func(i32 %4, i32 %5)
  ret i32 %6
}
