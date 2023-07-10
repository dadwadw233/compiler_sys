	.text
	.file	"10_break.c"
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
	addi	a0, zero, 10
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB0_5
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	addi	a1, zero, 5
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_1
.LBB0_5:
	lw	a0, -24(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
