	.text
	.file	"65_word_count.c"
	.globl	_Z2wcPii                # -- Begin function _Z2wcPii
	.p2align	1
	.type	_Z2wcPii,@function
_Z2wcPii:                               # @_Z2wcPii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a2, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	mv	a0, zero
	sw	a0, -36(s0)
	sw	a0, -32(s0)
	sw	a0, -40(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lw	a1, -28(s0)
	bge	a0, a1, .LBB0_8
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a1, zero, 32
	beq	a0, a1, .LBB0_6
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -32(s0)
	mv	a1, zero
	bne	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -40(s0)
	addi	a0, a0, 1
	sw	a0, -40(s0)
	addi	a0, zero, 1
	sw	a0, -32(s0)
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	mv	a0, zero
	sw	a0, -32(s0)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_8:
	lw	a0, -40(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z2wcPii, .Lfunc_end0-_Z2wcPii
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -2032
	.cfi_def_cfa_offset 2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 2032
	.cfi_def_cfa s0, 0
	addi	sp, sp, -16
	mv	a0, zero
	sw	a0, -28(s0)
	sw	a0, -2036(s0)
	sw	a0, -2032(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -2032(s0)
	addi	a1, zero, 10
	beq	a0, a1, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	call	_Z5getchv
	sw	a0, -2032(s0)
	lw	a0, -2032(s0)
	lw	a1, -2036(s0)
	slli	a1, a1, 2
	addi	a2, s0, -2028
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -2036(s0)
	addi	a0, a0, 1
	sw	a0, -2036(s0)
	j	.LBB1_1
.LBB1_3:
	lw	a1, -2036(s0)
	addi	a0, s0, -2028
	call	_Z2wcPii
	sw	a0, -2032(s0)
	lw	a0, -2032(s0)
	call	_Z6putinti
	mv	a0, zero
	addi	sp, sp, 16
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z2wcPii
	.addrsig_sym _Z5getchv
	.addrsig_sym _Z6putinti
