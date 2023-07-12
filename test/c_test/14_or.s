	.text
	.file	"14_or.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	sd	a0, -32(s0)
	call	_Z6getintv
	lui	a1, %hi(a)
	sw	a0, %lo(a)(a1)
	sd	a1, -40(s0)
	call	_Z6getintv
	lui	a1, %hi(b)
	sw	a0, %lo(b)(a1)
	ld	a0, -40(s0)
	lw	a1, %lo(a)(a0)
	ld	a2, -32(s0)
	bne	a1, a2, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lui	a0, %hi(b)
	lw	a0, %lo(b)(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB0_4
.LBB0_3:
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB0_4
.LBB0_4:
	lw	a0, -20(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	a,@object               # @a
	.section	.sbss,"aw",@nobits
	.globl	a
	.p2align	2
a:
	.word	0                       # 0x0
	.size	a, 4

	.type	b,@object               # @b
	.globl	b
	.p2align	2
b:
	.word	0                       # 0x0
	.size	b, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6getintv
	.addrsig_sym a
	.addrsig_sym b
