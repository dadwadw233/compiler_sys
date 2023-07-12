	.text
	.file	"21_suminput.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	call	_Z6getintv
	lui	a1, %hi(n)
	sw	a0, %lo(n)(a1)
	lw	a0, %lo(n)(a1)
	addi	a1, zero, 11
	blt	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB0_6
.LBB0_2:
	mv	a0, zero
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	sw	a0, -24(s0)
	j	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	call	_Z6getintv
	lw	a1, -28(s0)
	lui	a2, %hi(a)
	addi	a2, a2, %lo(a)
	slli	a1, a1, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	slli	a1, a1, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_3
.LBB0_5:
	lw	a0, -24(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	call	_Z5putchi
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB0_6
.LBB0_6:
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	n,@object               # @n
	.section	.sbss,"aw",@nobits
	.globl	n
	.p2align	2
n:
	.word	0                       # 0x0
	.size	n, 4

	.type	a,@object               # @a
	.bss
	.globl	a
	.p2align	2
a:
	.zero	40
	.size	a, 40

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6getintv
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym n
	.addrsig_sym a
