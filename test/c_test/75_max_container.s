	.text
	.file	"75_max_container.c"
	.globl	_Z7maxAreaPii           # -- Begin function _Z7maxAreaPii
	.p2align	1
	.type	_Z7maxAreaPii,@function
_Z7maxAreaPii:                          # @_Z7maxAreaPii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a2, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	mv	a0, zero
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	addi	a0, zero, 1
	slli	a0, a0, 32
	addi	a0, a0, -1
	sw	a0, -40(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	lw	a1, -36(s0)
	bge	a0, a1, .LBB0_11
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	bge	a1, a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -36(s0)
	lw	a1, -32(s0)
	sub	a0, a0, a1
	ld	a2, -24(s0)
	slli	a1, a1, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	mul	a0, a0, a1
	sw	a0, -44(s0)
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -32(s0)
	lw	a1, -36(s0)
	sub	a0, a1, a0
	ld	a2, -24(s0)
	slli	a1, a1, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	mul	a0, a0, a1
	sw	a0, -44(s0)
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -44(s0)
	lw	a1, -40(s0)
	bge	a1, a0, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -44(s0)
	sw	a0, -40(s0)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	bge	a0, a1, .LBB0_9
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	j	.LBB0_10
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_1
.LBB0_11:
	lw	a0, -40(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z7maxAreaPii, .Lfunc_end0-_Z7maxAreaPii
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
	call	_Z7maxAreaPii
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
	.addrsig_sym _Z7maxAreaPii
