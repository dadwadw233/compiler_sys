	.text
	.file	"16_nequal.c"
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
	lui	a1, %hi(a)
	sw	a0, %lo(a)(a1)
	sd	a1, -32(s0)
	call	_Z6getintv
	lui	a1, %hi(b)
	sw	a0, %lo(b)(a1)
	ld	a0, -32(s0)
	lw	a2, %lo(a)(a0)
	lw	a1, %lo(b)(a1)
	beq	a2, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_2:
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_3:
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
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
