	.text
	.file	"38_if_complex_expr.c"
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
	addi	a1, zero, 5
	sw	a1, -24(s0)
	sw	a1, -28(s0)
	addi	a1, zero, 1
	sw	a1, -32(s0)
	slli	a1, a1, 32
	addi	a1, a1, -2
	sw	a1, -36(s0)
	addi	a1, zero, 2
	sw	a1, -40(s0)
	lwu	a1, -36(s0)
	srli	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	blt	a1, a0, .LBB0_3
	j	.LBB0_1
.LBB0_1:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	sub	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, zero
	beq	a0, a1, .LBB0_4
	j	.LBB0_2
.LBB0_2:
	lw	a0, -32(s0)
	addi	a0, a0, 3
	srliw	a1, a0, 31
	add	a1, a1, a0
	addi	a2, zero, 1
	slli	a2, a2, 32
	addi	a2, a2, -2
	and	a1, a1, a2
	sub	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, zero
	beq	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	lw	a0, -40(s0)
	call	_Z6putinti
	j	.LBB0_4
.LBB0_4:
	lwu	a0, -36(s0)
	srli	a1, a0, 31
	add	a1, a1, a0
	addi	a2, zero, 1
	slli	a2, a2, 32
	addi	a2, a2, -2
	and	a1, a1, a2
	sub	a0, a0, a1
	addiw	a0, a0, 67
	mv	a1, zero
	blt	a0, a1, .LBB0_7
	j	.LBB0_5
.LBB0_5:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	sub	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, zero
	beq	a0, a1, .LBB0_8
	j	.LBB0_6
.LBB0_6:
	lw	a0, -32(s0)
	addi	a0, a0, 2
	srliw	a1, a0, 31
	add	a1, a1, a0
	addi	a2, zero, 1
	slli	a2, a2, 32
	addi	a2, a2, -2
	and	a1, a1, a2
	sub	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, zero
	beq	a0, a1, .LBB0_8
	j	.LBB0_7
.LBB0_7:
	addi	a0, zero, 4
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	call	_Z6putinti
	j	.LBB0_8
.LBB0_8:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6putinti
