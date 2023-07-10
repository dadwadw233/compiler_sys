	.text
	.file	"71_max_subsequence_sum.c"
	.globl	_Z11maxSubArrayPii      # -- Begin function _Z11maxSubArrayPii
	.p2align	1
	.type	_Z11maxSubArrayPii,@function
_Z11maxSubArrayPii:                     # @_Z11maxSubArrayPii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
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
	j	.LBB0_12
.LBB0_2:
	lw	a0, -36(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	sw	a0, -20(s0)
	j	.LBB0_12
.LBB0_4:
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	sw	a0, -44(s0)
	addi	a0, zero, 1
	sw	a0, -48(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -48(s0)
	lw	a1, -36(s0)
	bge	a0, a1, .LBB0_11
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -40(s0)
	addi	a1, zero, -1
	blt	a1, a0, .LBB0_8
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	mv	a0, zero
	sw	a0, -40(s0)
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -40(s0)
	ld	a1, -32(s0)
	lw	a2, -48(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a0, a1
	sw	a0, -40(s0)
	lw	a0, -44(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB0_10
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -40(s0)
	sw	a0, -44(s0)
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -48(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB0_5
.LBB0_11:
	lw	a0, -44(s0)
	sw	a0, -20(s0)
	j	.LBB0_12
.LBB0_12:
	lw	a0, -20(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z11maxSubArrayPii, .Lfunc_end0-_Z11maxSubArrayPii
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
	call	_Z11maxSubArrayPii
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
	.addrsig_sym _Z11maxSubArrayPii
