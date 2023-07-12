	.text
	.file	"86_bin_search.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -96
	.cfi_def_cfa_offset 96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 96
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	sw	a0, -28(s0)
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 9
	blt	a1, a0, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a1, a0, 1
	slli	a0, a0, 2
	addi	a2, s0, -68
	add	a0, a0, a2
	sw	a1, 0(a0)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_3:
	addi	a0, zero, 10
	sw	a0, -88(s0)
	call	_Z6getintv
	sw	a0, -72(s0)
	lw	a0, -88(s0)
	addi	a0, a0, -1
	sw	a0, -76(s0)
	mv	a0, zero
	sw	a0, -80(s0)
	lw	a0, -76(s0)
	lw	a1, -80(s0)
	add	a0, a0, a1
	srliw	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	sw	a0, -84(s0)
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -84(s0)
	slli	a0, a0, 2
	addi	a1, s0, -68
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -72(s0)
	mv	a2, zero
	sd	a2, -96(s0)
	beq	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -80(s0)
	lw	a1, -76(s0)
	slt	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, -96(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB0_11
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -76(s0)
	lw	a1, -80(s0)
	add	a0, a0, a1
	srliw	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	sw	a0, -84(s0)
	lw	a0, -72(s0)
	lw	a1, -84(s0)
	slli	a1, a1, 2
	addi	a2, s0, -68
	add	a1, a1, a2
	lw	a1, 0(a1)
	bge	a0, a1, .LBB0_9
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -84(s0)
	addi	a0, a0, -1
	sw	a0, -76(s0)
	j	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -84(s0)
	addi	a0, a0, 1
	sw	a0, -80(s0)
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	j	.LBB0_4
.LBB0_11:
	lw	a0, -72(s0)
	lw	a1, -84(s0)
	slli	a1, a1, 2
	addi	a2, s0, -68
	add	a1, a1, a2
	lw	a1, 0(a1)
	bne	a0, a1, .LBB0_13
	j	.LBB0_12
.LBB0_12:
	lw	a0, -72(s0)
	call	_Z6putinti
	j	.LBB0_14
.LBB0_13:
	mv	a0, zero
	sw	a0, -72(s0)
	lw	a0, -72(s0)
	call	_Z6putinti
	j	.LBB0_14
.LBB0_14:
	addi	a0, zero, 10
	sw	a0, -72(s0)
	lw	a0, -72(s0)
	call	_Z5putchi
	mv	a0, zero
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6getintv
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
