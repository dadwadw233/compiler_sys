	.text
	.file	"39_assign_complex_expr.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a1, zero, 5
	sw	a1, -24(s0)
	sw	a1, -28(s0)
	addi	a1, zero, 1
	sw	a1, -32(s0)
	slli	a1, a1, 32
	addi	a2, a1, -2
	sw	a2, -36(s0)
	lwu	a3, -36(s0)
	srli	a4, a3, 31
	addw	a3, a3, a4
	srli	a3, a3, 1
	lw	a4, -24(s0)
	lw	a5, -28(s0)
	sub	a4, a4, a5
	add	a3, a3, a4
	lw	a4, -32(s0)
	addi	a5, a4, 3
	addi	a1, a1, -3
	sub	a1, a1, a4
	srliw	a1, a1, 31
	sub	a1, a1, a5
	and	a1, a1, a2
	add	a1, a1, a5
	add	a1, a1, a3
	sw	a1, -40(s0)
	lw	a1, -40(s0)
	sd	a0, -48(s0)
	add	a0, zero, a1
	sd	a2, -56(s0)
	call	_Z6putinti
	lwu	a0, -36(s0)
	srli	a1, a0, 31
	add	a1, a1, a0
	ld	a2, -56(s0)
	and	a1, a1, a2
	sub	a0, a0, a1
	lw	a1, -24(s0)
	lw	a3, -28(s0)
	sub	a1, a3, a1
	add	a0, a0, a1
	lw	a1, -32(s0)
	addi	a1, a1, 2
	srliw	a3, a1, 31
	add	a3, a3, a1
	and	a3, a3, a2
	sub	a1, a1, a3
	add	a0, a0, a1
	addi	a0, a0, 67
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	addi	a0, a0, 3
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	call	_Z6putinti
	ld	a0, -48(s0)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6putinti
