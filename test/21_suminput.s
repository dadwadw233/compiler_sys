    .arch armv7-a
    .file ""
    .text
    .global main
    .syntax unified
    .arm
    .global n
    .global a
.global_vars:
    .long n
    .long a
main:
.main_pre:
    push {lr}
    mov r12, #108
    sub sp, sp, r12
.main_entry:
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #0]
    ldr lr, [sp, #0]
    adrl r11, .global_vars+0
    ldr r12, [r11, #0]
    str lr, [r12, #0]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #4]
    ldr r12, [sp, #4]
    ldr lr, =#10
    cmp r12, lr
    mov r12, #0
    movgt r12, #1
    str r12, [sp, #8]
    ldr r12, [sp, #8]
    str r12, [sp, #12]
    ldr r12, [sp, #12]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #16]
    ldr r12, [sp, #16]
    cmp r12, #0
    bne .main_label5+0
    b .main_label6+0
.main_label5:
    ldr r0, =#1
    mov r12, #108
    add sp, sp, r12
    pop {pc}
.main_label6:
    ldr lr, =#0
    add r12, sp, #24
    str lr, [r12, #0]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #28]
    ldr lr, [sp, #28]
    add r12, sp, #20
    str lr, [r12, #0]
    b .main_label10+0
.main_label10:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #32]
    adrl r11, .global_vars+0
    ldr lr, [r11, #0]
    ldr r12, [lr, #0]
    str r12, [sp, #36]
    ldr r12, [sp, #32]
    ldr lr, [sp, #36]
    cmp r12, lr
    mov r12, #0
    movlt r12, #1
    str r12, [sp, #40]
    ldr r12, [sp, #40]
    str r12, [sp, #44]
    ldr r12, [sp, #44]
    ldr lr, =#0
    cmp r12, lr
    mov r12, #0
    movne r12, #1
    str r12, [sp, #48]
    ldr r12, [sp, #48]
    cmp r12, #0
    bne .main_label16+0
    b .main_label27+0
.main_label16:
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #52]
    ldr lr, [sp, #52]
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #56]
    mov r12, #0
    sub sp, sp, r12
    bl getint
    mov r12, #0
    add sp, sp, r12
    str r0, [sp, #60]
    ldr lr, [sp, #60]
    ldr r12, [sp, #56]
    str lr, [r12, #0]
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #64]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #68]
    ldr lr, [sp, #68]
    mov r12, #4
    mul lr, lr, r12
    adrl r11, .global_vars+4
    ldr r12, [r11, #0]
    add r12, r12, lr
    str r12, [sp, #72]
    ldr lr, [sp, #72]
    ldr r12, [lr, #0]
    str r12, [sp, #76]
    ldr r12, [sp, #64]
    ldr lr, [sp, #76]
    add r12, r12, lr
    str r12, [sp, #80]
    ldr lr, [sp, #80]
    add r12, sp, #20
    str lr, [r12, #0]
    add lr, sp, #24
    ldr r12, [lr, #0]
    str r12, [sp, #84]
    ldr r12, [sp, #84]
    ldr lr, =#1
    add r12, r12, lr
    str r12, [sp, #88]
    ldr lr, [sp, #88]
    add r12, sp, #24
    str lr, [r12, #0]
    b .main_label10+0
.main_label27:
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #92]
    ldr r0, [sp, #92]
    mov r12, #0
    sub sp, sp, r12
    bl putint
    mov r12, #0
    add sp, sp, r12
    ldr lr, =#10
    add r12, sp, #96
    str lr, [r12, #0]
    add lr, sp, #96
    ldr r12, [lr, #0]
    str r12, [sp, #100]
    ldr r0, [sp, #100]
    mov r12, #0
    sub sp, sp, r12
    bl putch
    mov r12, #0
    add sp, sp, r12
    add lr, sp, #20
    ldr r12, [lr, #0]
    str r12, [sp, #104]
    ldr r0, [sp, #104]
    mov r12, #108
    add sp, sp, r12
    pop {pc}
.main_post:
    .data
n:
    .long 0
a:
    .zero 40
