	.text
	.file	"91_line_search.c"
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
	lw	a1, -76(s0)
	lw	a2, -80(s0)
	add	a1, a1, a2
	srliw	a2, a1, 31
	addw	a1, a1, a2
	srli	a1, a1, 1
	sw	a1, -84(s0)
	sw	a0, -92(s0)
	sw	a0, -24(s0)
	sw	a0, -96(s0)
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	mv	a1, zero
	addi	a2, zero, 9
	sd	a1, -104(s0)
	blt	a2, a0, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -92(s0)
	seqz	a0, a0
	sd	a0, -104(s0)
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, -104(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB0_10
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -24(s0)
	slli	a0, a0, 2
	addi	a1, s0, -68
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -72(s0)
	bne	a0, a1, .LBB0_9
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	addi	a0, zero, 1
	sw	a0, -92(s0)
	lw	a0, -24(s0)
	sw	a0, -96(s0)
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_4
.LBB0_10:
	lw	a0, -92(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_12
	j	.LBB0_11
.LBB0_11:
	lw	a0, -96(s0)
	call	_Z6putinti
	j	.LBB0_13
.LBB0_12:
	mv	a0, zero
	sw	a0, -72(s0)
	lw	a0, -72(s0)
	call	_Z6putinti
	j	.LBB0_13
.LBB0_13:
	addi	a0, zero, 10
	sw	a0, -72(s0)
	lw	a0, -72(s0)
	call	_Z5putchi
	mv	a0, zero
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
	.addrsig_sym _Z6getintv
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
