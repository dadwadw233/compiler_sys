	.text
	.file	"46_and_prior_or.c"
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
	addi	a1, zero, 3
	sw	a1, -24(s0)
	addi	a1, zero, 8
	sw	a1, -28(s0)
	addi	a1, zero, 1
	slli	a1, a1, 32
	addi	a1, a1, -4
	sw	a1, -32(s0)
	addi	a1, zero, 15
	sw	a1, -36(s0)
	lw	a1, -36(s0)
	lw	a2, -28(s0)
	lw	a3, -24(s0)
	subw	a2, a2, a3
	rem	a1, a1, a2
	slli	a1, a1, 32
	srli	a1, a1, 32
	beq	a1, a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -24(s0)
	mv	a1, zero
	blt	a1, a0, .LBB0_4
	j	.LBB0_2
.LBB0_2:
	lw	a0, -36(s0)
	lui	a1, 21845
	addiw	a1, a1, 1365
	slli	a1, a1, 12
	addi	a1, a1, 1365
	slli	a1, a1, 12
	addi	a1, a1, 1365
	slli	a1, a1, 12
	addi	a1, a1, 1366
	mulh	a1, a0, a1
	srli	a2, a1, 63
	add	a1, a1, a2
	addi	a2, zero, 3
	mul	a1, a1, a2
	sub	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, zero
	bne	a0, a1, .LBB0_5
	j	.LBB0_3
.LBB0_3:
	lw	a0, -32(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:
	lw	a0, -36(s0)
	lw	a1, -32(s0)
	add	a0, a0, a1
	lw	a1, -28(s0)
	add	a0, a0, a1
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	call	_Z6putinti
	j	.LBB0_5
.LBB0_5:
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
