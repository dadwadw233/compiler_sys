	.text
	.file	"28_while_test2.c"
	.globl	_Z9FourWhilev           # -- Begin function _Z9FourWhilev
	.p2align	1
	.type	_Z9FourWhilev,@function
_Z9FourWhilev:                          # @_Z9FourWhilev
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 5
	sw	a0, -20(s0)
	addi	a0, zero, 6
	sw	a0, -24(s0)
	addi	a0, zero, 7
	sw	a0, -28(s0)
	addi	a0, zero, 10
	sw	a0, -32(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	lw	a0, -20(s0)
	addi	a1, zero, 19
	blt	a1, a0, .LBB0_12
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 3
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
                                        #         Child Loop BB0_7 Depth 4
	lw	a0, -24(s0)
	addi	a1, zero, 9
	blt	a1, a0, .LBB0_11
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_5
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_7 Depth 4
	lw	a0, -28(s0)
	addi	a1, zero, 7
	bne	a0, a1, .LBB0_10
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=3
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -28(s0)
	j	.LBB0_7
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	lw	a0, -32(s0)
	addi	a1, zero, 19
	blt	a1, a0, .LBB0_9
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=4
	lw	a0, -32(s0)
	addi	a0, a0, 3
	sw	a0, -32(s0)
	j	.LBB0_7
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=3
	lw	a0, -32(s0)
	addi	a0, a0, -1
	sw	a0, -32(s0)
	j	.LBB0_5
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_3
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, -2
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_12:
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	lw	a2, -32(s0)
	add	a1, a1, a2
	add	a0, a0, a1
	lw	a1, -28(s0)
	addw	a0, a0, a1
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z9FourWhilev, .Lfunc_end0-_Z9FourWhilev
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
	call	_Z9FourWhilev
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
	.addrsig_sym _Z9FourWhilev
