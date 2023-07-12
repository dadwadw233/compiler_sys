	.text
	.file	"45_equal_prior_logic.c"
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
	addi	a0, zero, 10
	sw	a0, -24(s0)
	addi	a0, zero, 6
	sw	a0, -28(s0)
	addi	a0, zero, 4
	sw	a0, -32(s0)
	addi	a0, zero, 5
	sw	a0, -36(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	addw	a0, a0, a1
	lw	a1, -24(s0)
	bne	a0, a1, .LBB0_3
	j	.LBB0_1
.LBB0_1:
	lw	a0, -36(s0)
	lwu	a1, -24(s0)
	srli	a2, a1, 31
	add	a1, a1, a2
	sraiw	a1, a1, 1
	beq	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	lw	a2, -36(s0)
	divw	a1, a1, a2
	slli	a1, a1, 1
	add	a0, a0, a1
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	call	_Z6putinti
	j	.LBB0_3
.LBB0_3:
	lw	a0, -32(s0)
	mv	a1, zero
	blt	a0, a1, .LBB0_6
	j	.LBB0_4
.LBB0_4:
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	subw	a0, a0, a1
	lw	a1, -28(s0)
	bne	a0, a1, .LBB0_7
	j	.LBB0_5
.LBB0_5:
	lw	a0, -24(s0)
	lw	a1, -36(s0)
	slliw	a1, a1, 1
	beq	a0, a1, .LBB0_7
	j	.LBB0_6
.LBB0_6:
	addi	a0, zero, 1
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	call	_Z6putinti
	j	.LBB0_7
.LBB0_7:
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
