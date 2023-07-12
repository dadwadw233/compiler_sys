; ModuleID = 'sysyc'
source_filename = "./09_if.sy"
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
  store i64 10, i64* @0
  %0 = load i64, i64* @0
  %1 = icmp sgt i64 %0, 0
  %2 = zext i1 %1 to i64
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %condition_true, label %condition_cont

condition_true:                                   ; preds = %entry
  ret i64 1

condition_cont:                                   ; preds = %entry
  ret i64 0
}
