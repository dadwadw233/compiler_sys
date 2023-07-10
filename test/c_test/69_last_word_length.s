	.text
	.file	"69_last_word_length.c"
	.globl	_Z16lengthOfLastWordPii # -- Begin function _Z16lengthOfLastWordPii
	.p2align	1
	.type	_Z16lengthOfLastWordPii,@function
_Z16lengthOfLastWordPii:                # @_Z16lengthOfLastWordPii
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	add	a2, zero, a1
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	lw	a0, -36(s0)
	mv	a1, zero
	bne	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB0_15
.LBB0_2:
	lw	a0, -36(s0)
	addi	a0, a0, -1
	sw	a0, -40(s0)
	j	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	mv	a1, zero
	add	a2, zero, a1
	sd	a2, -56(s0)
	blt	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	ld	a0, -32(s0)
	lw	a1, -40(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	seqz	a0, a0
	sd	a0, -56(s0)
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	ld	a0, -56(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	lw	a0, -40(s0)
	addi	a0, a0, -1
	sw	a0, -40(s0)
	j	.LBB0_3
.LBB0_7:
	lw	a0, -40(s0)
	addi	a1, zero, -1
	bne	a0, a1, .LBB0_9
	j	.LBB0_8
.LBB0_8:
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB0_15
.LBB0_9:
	lw	a0, -40(s0)
	sw	a0, -44(s0)
	j	.LBB0_10
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	mv	a1, zero
	blt	a0, a1, .LBB0_14
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_10 Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	mv	a1, zero
	bne	a0, a1, .LBB0_13
	j	.LBB0_12
.LBB0_12:
	lw	a0, -44(s0)
	lw	a1, -40(s0)
	sub	a0, a1, a0
	sw	a0, -20(s0)
	j	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_10 Depth=1
	lw	a0, -44(s0)
	addi	a0, a0, -1
	sw	a0, -44(s0)
	j	.LBB0_10
.LBB0_14:
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	sub	a0, a0, a1
	sw	a0, -20(s0)
	j	.LBB0_15
.LBB0_15:
	lw	a0, -20(s0)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	_Z16lengthOfLastWordPii, .Lfunc_end0-_Z16lengthOfLastWordPii
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a1, zero, 1
	slli	a2, a1, 32
	addi	a3, a2, -4
	sw	a3, -64(s0)
	addi	a3, zero, 3
	sw	a3, -60(s0)
	addi	a3, zero, 9
	sw	a3, -56(s0)
	addi	a3, a2, -2
	sw	a3, -52(s0)
	sw	a0, -48(s0)
	sw	a1, -44(s0)
	addi	a0, a2, -6
	sw	a0, -40(s0)
	addi	a0, zero, 5
	sw	a0, -36(s0)
	addi	a0, zero, 7
	sw	a0, -32(s0)
	addi	a0, zero, 8
	sw	a0, -28(s0)
	addi	a0, zero, 10
	sw	a0, -24(s0)
	lw	a1, -24(s0)
	addi	a0, s0, -64
	call	_Z16lengthOfLastWordPii
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z16lengthOfLastWordPii
