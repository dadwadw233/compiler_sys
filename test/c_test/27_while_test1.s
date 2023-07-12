	.text
	.file	"27_while_test1.c"
	.globl	_Z11doubleWhilev        # -- Begin function _Z11doubleWhilev
	.p2align	1
	.type	_Z11doubleWhilev,@function
_Z11doubleWhilev:                       # @_Z11doubleWhilev
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 5
	sw	a0, -20(s0)
	addi	a0, zero, 7
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	lw	a0, -20(s0)
	addi	a1, zero, 99
	blt	a1, a0, .LBB0_6
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 30
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -24(s0)
	addi	a1, zero, 99
	blt	a1, a0, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -24(s0)
	addi	a0, a0, 6
	sw	a0, -24(s0)
	j	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, -100
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_6:
	lw	a0, -24(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z11doubleWhilev, .Lfunc_end0-_Z11doubleWhilev
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
	call	_Z11doubleWhilev
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
	.addrsig_sym _Z11doubleWhilev
