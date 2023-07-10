	.text
	.file	"44_add_prior_equal.c"
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
	addi	a0, zero, 1
	sw	a0, -24(s0)
	addi	a0, zero, 4
	sw	a0, -28(s0)
	addi	a0, zero, 28
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	lw	a1, -24(s0)
	addw	a0, a0, a1
	lw	a1, -28(s0)
	beq	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	mv	a2, zero
	subw	a1, a2, a1
	rem	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	call	_Z6putinti
	j	.LBB0_2
.LBB0_2:
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	subw	a0, a0, a1
	lw	a1, -24(s0)
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	rem	a0, a0, a1
	add	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	call	_Z6putinti
	j	.LBB0_4
.LBB0_4:
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
