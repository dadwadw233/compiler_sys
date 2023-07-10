	.text
	.file	"26_if_test5.c"
	.globl	_Z10if_if_Elsev         # -- Begin function _Z10if_if_Elsev
	.p2align	1
	.type	_Z10if_if_Elsev,@function
_Z10if_if_Elsev:                        # @_Z10if_if_Elsev
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 5
	sw	a0, -20(s0)
	addi	a1, zero, 10
	sw	a1, -24(s0)
	lw	a1, -20(s0)
	bne	a1, a0, .LBB0_4
	j	.LBB0_1
.LBB0_1:
	lw	a0, -24(s0)
	addi	a1, zero, 10
	bne	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	addi	a0, zero, 25
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_3:
	j	.LBB0_5
.LBB0_4:
	lw	a0, -20(s0)
	addi	a0, a0, 15
	sw	a0, -20(s0)
	j	.LBB0_5
.LBB0_5:
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z10if_if_Elsev, .Lfunc_end0-_Z10if_if_Elsev
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
	call	_Z10if_if_Elsev
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
	.addrsig_sym _Z10if_if_Elsev
