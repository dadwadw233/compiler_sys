	.text
	.file	"81_jump_game.c"
	.globl	_Z7canJumpPii           # -- Begin function _Z7canJumpPii
	.p2align	1
	.type	_Z7canJumpPii,@function
_Z7canJumpPii:                          # @_Z7canJumpPii
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	addi	s0, sp, 96
	add	a2, zero, a1
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	lw	a0, -36(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB0_19
.LBB0_2:
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	lw	a1, -36(s0)
	addiw	a1, a1, -2
	bge	a1, a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB0_19
.LBB0_4:
	mv	a0, zero
	sw	a0, -80(s0)
	j	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -80(s0)
	lw	a1, -36(s0)
	addiw	a1, a1, -1
	bge	a0, a1, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	lw	a0, -80(s0)
	slli	a0, a0, 2
	addi	a1, s0, -76
	add	a0, a0, a1
	mv	a1, zero
	sw	a1, 0(a0)
	lw	a0, -80(s0)
	addi	a0, a0, 1
	sw	a0, -80(s0)
	j	.LBB0_5
.LBB0_7:
	lw	a0, -36(s0)
	addiw	a0, a0, -1
	slli	a0, a0, 2
	addi	a1, s0, -76
	add	a0, a0, a1
	addi	a1, zero, 1
	sw	a1, 0(a0)
	lw	a0, -36(s0)
	addi	a0, a0, -2
	sw	a0, -80(s0)
	j	.LBB0_8
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	lw	a0, -80(s0)
	mv	a1, zero
	blt	a0, a1, .LBB0_18
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	ld	a0, -32(s0)
	lw	a1, -80(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a2, -36(s0)
	not	a1, a1
	addw	a1, a1, a2
	bge	a0, a1, .LBB0_11
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	ld	a0, -32(s0)
	lw	a1, -80(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -84(s0)
	j	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	lw	a0, -36(s0)
	lw	a1, -80(s0)
	not	a1, a1
	add	a0, a0, a1
	sw	a0, -84(s0)
	j	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	j	.LBB0_13
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -84(s0)
	mv	a1, zero
	blt	a0, a1, .LBB0_17
	j	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=2
	lw	a0, -80(s0)
	lw	a1, -84(s0)
	addw	a0, a0, a1
	slli	a0, a0, 2
	addi	a1, s0, -76
	add	a0, a0, a1
	lw	a0, 0(a0)
	mv	a1, zero
	beq	a0, a1, .LBB0_16
	j	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=2
	lw	a0, -80(s0)
	slli	a0, a0, 2
	addi	a1, s0, -76
	add	a0, a0, a1
	addi	a1, zero, 1
	sw	a1, 0(a0)
	j	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=2
	lw	a0, -84(s0)
	addi	a0, a0, -1
	sw	a0, -84(s0)
	j	.LBB0_13
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	lw	a0, -80(s0)
	addi	a0, a0, -1
	sw	a0, -80(s0)
	j	.LBB0_8
.LBB0_18:
	lw	a0, -76(s0)
	sw	a0, -20(s0)
	j	.LBB0_19
.LBB0_19:
	lw	a0, -20(s0)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	_Z7canJumpPii, .Lfunc_end0-_Z7canJumpPii
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
	addi	a1, zero, 3
	sw	a1, -64(s0)
	sw	a1, -60(s0)
	addi	a1, zero, 9
	sw	a1, -56(s0)
	sw	a0, -52(s0)
	sw	a0, -48(s0)
	addi	a0, zero, 1
	sw	a0, -44(s0)
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
	call	_Z7canJumpPii
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
	.addrsig_sym _Z7canJumpPii
