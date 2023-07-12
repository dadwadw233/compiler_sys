	.text
	.file	"31_while_if_test2.c"
	.globl	_Z7ifWhilev             # -- Begin function _Z7ifWhilev
	.p2align	1
	.type	_Z7ifWhilev,@function
_Z7ifWhilev:                            # @_Z7ifWhilev
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a0, zero, 3
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	addi	a1, zero, 5
	bne	a0, a1, .LBB0_5
	j	.LBB0_1
.LBB0_1:
	j	.LBB0_2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 2
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 2
	sw	a0, -24(s0)
	j	.LBB0_2
.LBB0_4:
	lw	a0, -24(s0)
	addi	a0, a0, 25
	sw	a0, -24(s0)
	j	.LBB0_9
.LBB0_5:
	j	.LBB0_6
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, zero, 4
	blt	a1, a0, .LBB0_8
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=1
	lw	a0, -24(s0)
	slli	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB0_6
.LBB0_8:
	j	.LBB0_9
.LBB0_9:
	lw	a0, -24(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z7ifWhilev, .Lfunc_end0-_Z7ifWhilev
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
	call	_Z7ifWhilev
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
	.addrsig_sym _Z7ifWhilev
