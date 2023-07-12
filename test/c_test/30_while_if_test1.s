	.text
	.file	"30_while_if_test1.c"
	.globl	_Z7whileIfv             # -- Begin function _Z7whileIfv
	.p2align	1
	.type	_Z7whileIfv,@function
_Z7whileIfv:                            # @_Z7whileIfv
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	mv	a0, zero
	sw	a0, -20(s0)
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, zero, 99
	blt	a1, a0, .LBB0_9
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -20(s0)
	addi	a1, zero, 5
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	addi	a0, zero, 25
	sw	a0, -24(s0)
	j	.LBB0_8
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -20(s0)
	addi	a1, zero, 10
	bne	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	addi	a0, zero, 42
	sw	a0, -24(s0)
	j	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB0_1
.LBB0_9:
	lw	a0, -24(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z7whileIfv, .Lfunc_end0-_Z7whileIfv
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
	call	_Z7whileIfv
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
	.addrsig_sym _Z7whileIfv
