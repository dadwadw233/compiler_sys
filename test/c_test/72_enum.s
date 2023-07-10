	.text
	.file	"72_enum.c"
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
	sw	a0, -24(s0)
	sw	a0, -28(s0)
	sw	a0, -32(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	lw	a0, -24(s0)
	addi	a1, zero, 20
	blt	a1, a0, .LBB0_8
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	addi	a2, zero, 101
	subw	a1, a2, a1
	bge	a0, a1, .LBB0_7
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	addi	a1, zero, 100
	sub	a0, a1, a0
	sw	a0, -32(s0)
	lw	a0, -24(s0)
	addi	a2, zero, 5
	mul	a0, a0, a2
	lw	a2, -28(s0)
	add	a0, a0, a2
	lwu	a2, -32(s0)
	srli	a3, a2, 31
	addw	a2, a2, a3
	srli	a2, a2, 1
	add	a0, a0, a2
	slli	a0, a0, 32
	srli	a0, a0, 32
	bne	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -24(s0)
	call	_Z6putinti
	lw	a0, -28(s0)
	call	_Z6putinti
	lw	a0, -32(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	call	_Z5putchi
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_3
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_1
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
	.addrsig_sym _Z5putchi
