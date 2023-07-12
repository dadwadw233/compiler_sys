; ModuleID = 'sysyc'
source_filename = "./14_or.sy"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n64-S128"

@0 = global i64 zeroinitializer
@1 = global i64 zeroinitializer

declare i64 @getint()

declare i64 @getch()

declare void @putint(i64)

declare void @putch(i64)

declare i64 @getarray(i64*)

declare i64 @putarray(i64, i64*)

define i64 @main() {
entry:
  %0 = call i64 @getint()
  store i64 %0, i64* @0
  %1 = call i64 @getint()
  store i64 %1, i64* @1
  %2 = load i64, i64* @0
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %early_stop_or, label %not_early_stop_or

early_stop_or:                                    ; preds = %entry
  br label %merge

not_early_stop_or:                                ; preds = %entry
  %4 = load i64, i64* @1
  %5 = icmp ne i64 %4, 0
  %6 = or i1 %3, %5
  br label %merge

merge:                                            ; preds = %early_stop_or, %not_early_stop_or
  %7 = phi i1 [ %3, %early_stop_or ], [ %6, %not_early_stop_or ]
  br i1 %7, label %condition_true, label %false

condition_true:                                   ; preds = %merge
  ret i64 1

false:                                            ; preds = %merge
  ret i64 0
}
