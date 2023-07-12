	.text
	.file	"23_if_test2.c"
	.globl	_Z12ifElseElseIfv       # -- Begin function _Z12ifElseElseIfv
	.p2align	1
	.type	_Z12ifElseElseIfv,@function
_Z12ifElseElseIfv:                      # @_Z12ifElseElseIfv
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 66
	sw	a0, -20(s0)
	lui	a0, 2
	addiw	a0, a0, 731
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	addi	a1, zero, 5
	bne	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	addi	a0, zero, 25
	sw	a0, -24(s0)
	j	.LBB0_6
.LBB0_2:
	lw	a0, -20(s0)
	addi	a1, zero, 10
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	addi	a0, zero, 42
	sw	a0, -24(s0)
	j	.LBB0_5
.LBB0_4:
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_5
.LBB0_5:
	j	.LBB0_6
.LBB0_6:
	lw	a0, -24(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z12ifElseElseIfv, .Lfunc_end0-_Z12ifElseElseIfv
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
	call	_Z12ifElseElseIfv
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
	.addrsig_sym _Z12ifElseElseIfv
