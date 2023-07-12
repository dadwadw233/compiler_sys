	.text
	.file	"19_neg_expr.c"
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
	lw	a2, %lo(a)(a0)
	lw	a1, %lo(b)(a1)
	add	a1, a1, a2
	ld	a2, -32(s0)
	sub	a1, a2, a1
	sw	a1, -24(s0)
	lw	a0, -24(s0)
	call	_Z6putinti
	ld	a0, -32(s0)
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
	.addrsig_sym _Z6putinti
	.addrsig_sym a
	.addrsig_sym b
