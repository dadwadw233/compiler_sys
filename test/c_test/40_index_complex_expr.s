	.text
	.file	"40_index_complex_expr.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)
	sd	s0, 96(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a1, zero, 5
	sw	a1, -24(s0)
	sw	a1, -28(s0)
	addi	a2, zero, 1
	sw	a2, -32(s0)
	slli	a3, a2, 32
	addi	a4, a3, -2
	sw	a4, -36(s0)
	sw	a2, -56(s0)
	addi	a2, zero, 2
	sw	a2, -52(s0)
	addi	a2, zero, 3
	sw	a2, -48(s0)
	addi	a2, zero, 4
	sw	a2, -44(s0)
	sw	a1, -40(s0)
	lwu	a2, -36(s0)
	srli	a5, a2, 31
	addw	a2, a2, a5
	srli	a2, a2, 1
	lw	a5, -24(s0)
	lw	a6, -28(s0)
	sub	a5, a5, a6
	add	a2, a2, a5
	lw	a5, -32(s0)
	addi	a6, a5, 3
	addi	a3, a3, -3
	sub	a3, a3, a5
	srliw	a3, a3, 31
	sub	a3, a3, a6
	and	a3, a3, a4
	add	a3, a3, a6
	addw	a2, a2, a3
	addi	a3, a2, 4
	addiw	a2, a2, 4
	lui	a5, 13107
	addiw	a5, a5, 819
	slli	a5, a5, 12
	addi	a5, a5, 819
	slli	a5, a5, 12
	addi	a5, a5, 819
	slli	a5, a5, 13
	addi	a5, a5, 1639
	mulh	a2, a2, a5
	srli	a6, a2, 63
	srli	a2, a2, 1
	add	a2, a2, a6
	mul	a2, a2, a1
	subw	a2, a3, a2
	slli	a2, a2, 2
	addi	a3, s0, -56
	add	a2, a2, a3
	lw	a2, 0(a2)
	sw	a2, -60(s0)
	lw	a2, -60(s0)
	sd	a0, -72(s0)
	add	a0, zero, a2
	sd	a1, -80(s0)
	sd	a4, -88(s0)
	sd	a5, -96(s0)
	sd	a3, -104(s0)
	call	_Z6putinti
	lwu	a0, -32(s0)
	srli	a1, a0, 31
	add	a1, a1, a0
	ld	a2, -88(s0)
	and	a1, a1, a2
	sub	a1, a0, a1
	lw	a3, -24(s0)
	add	a1, a1, a3
	lw	a3, -28(s0)
	sub	a1, a1, a3
	addi	a0, a0, 2
	srliw	a3, a0, 31
	add	a3, a3, a0
	and	a3, a3, a2
	sub	a0, a0, a3
	addw	a0, a0, a1
	addi	a1, a0, 67
	addiw	a0, a0, 67
	ld	a3, -96(s0)
	mulh	a0, a0, a3
	srli	a4, a0, 63
	srli	a0, a0, 1
	add	a0, a0, a4
	ld	a4, -80(s0)
	mul	a0, a0, a4
	subw	a0, a1, a0
	slli	a0, a0, 2
	ld	a1, -104(s0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	call	_Z6putinti
	ld	a0, -72(s0)
	ld	s0, 96(sp)
	ld	ra, 104(sp)
	addi	sp, sp, 112
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6putinti
