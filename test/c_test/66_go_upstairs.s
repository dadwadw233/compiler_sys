	.text
	.file	"66_go_upstairs.c"
	.globl	_Z11climbStairsi        # -- Begin function _Z11climbStairsi
	.p2align	1
	.type	_Z11climbStairsi,@function
_Z11climbStairsi:                       # @_Z11climbStairsi
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
	add	a1, zero, a0
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	addi	a2, zero, 3
	blt	a2, a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB0_6
.LBB0_2:
	mv	a0, zero
	sw	a0, -64(s0)
	addi	a0, zero, 1
	sw	a0, -60(s0)
	addi	a0, zero, 2
	sw	a0, -56(s0)
	addi	a0, zero, 3
	sw	a0, -68(s0)
	j	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -68(s0)
	lw	a1, -24(s0)
	addiw	a1, a1, 1
	bge	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	lw	a0, -68(s0)
	addiw	a1, a0, -1
	slli	a1, a1, 2
	addi	a2, s0, -64
	add	a1, a1, a2
	lw	a1, 0(a1)
	addiw	a3, a0, -2
	slli	a3, a3, 2
	add	a3, a3, a2
	lw	a3, 0(a3)
	add	a1, a1, a3
	slli	a0, a0, 2
	add	a0, a0, a2
	sw	a1, 0(a0)
	lw	a0, -68(s0)
	addi	a0, a0, 1
	sw	a0, -68(s0)
	j	.LBB0_3
.LBB0_5:
	lw	a0, -24(s0)
	slli	a0, a0, 2
	addi	a1, s0, -64
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -20(s0)
	j	.LBB0_6
.LBB0_6:
	lw	a0, -20(s0)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	_Z11climbStairsi, .Lfunc_end0-_Z11climbStairsi
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a0, zero, 5
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	call	_Z11climbStairsi
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z11climbStairsi
