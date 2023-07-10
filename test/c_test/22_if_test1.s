	.text
	.file	"22_if_test1.c"
	.globl	_Z6ifElsev              # -- Begin function _Z6ifElsev
	.p2align	1
	.type	_Z6ifElsev,@function
_Z6ifElsev:                             # @_Z6ifElsev
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 5
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	bne	a1, a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	addi	a0, zero, 25
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_2:
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_3:
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z6ifElsev, .Lfunc_end0-_Z6ifElsev
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
	call	_Z6ifElsev
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
	.addrsig_sym _Z6ifElsev
