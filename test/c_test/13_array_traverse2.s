	.text
	.file	"13_array_traverse2.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	mv	a0, zero
	sw	a0, -20(s0)
	sw	a0, -24(s0)
	sw	a0, -28(s0)
	sw	a0, -32(s0)
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	lw	a0, -24(s0)
	addi	a1, zero, 2
	blt	a1, a0, .LBB0_9
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	lw	a0, -28(s0)
	addi	a1, zero, 2
	blt	a1, a0, .LBB0_8
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
	j	.LBB0_5
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	lw	a0, -32(s0)
	addi	a1, zero, 2
	blt	a1, a0, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=3
	lw	a0, -36(s0)
	lw	a1, -24(s0)
	addi	a2, zero, 36
	mul	a1, a1, a2
	lw	a2, -28(s0)
	addi	a3, zero, 12
	mul	a2, a2, a3
	add	a1, a1, a2
	lui	a2, %hi(a)
	addi	a2, a2, %lo(a)
	lw	a3, -32(s0)
	slli	a3, a3, 2
	add	a1, a1, a3
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_5
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_9:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	a,@object               # @a
	.bss
	.globl	a
	.p2align	2
a:
	.zero	108
	.size	a, 108

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a
