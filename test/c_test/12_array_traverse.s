	.text
	.file	"12_array_traverse.c"
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
	sw	a0, -24(s0)
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	lw	a0, -24(s0)
	addi	a1, zero, 5
	blt	a1, a0, .LBB0_9
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -32(s0)
	mv	a1, zero
	blt	a0, a1, .LBB0_8
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -32(s0)
	addi	a1, zero, 3
	blt	a1, a0, .LBB0_7
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	subw	a0, a0, a1
	addi	a1, zero, 2
	blt	a1, a0, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	lw	a2, -32(s0)
	subw	a1, a1, a2
	slli	a1, a1, 4
	slli	a2, a2, 2
	add	a1, a1, a2
	lui	a2, %hi(a)
	addi	a2, a2, %lo(a)
	add	a1, a1, a2
	sw	a0, 0(a1)
	addi	a0, zero, 1
	sw	a0, -28(s0)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -32(s0)
	addi	a0, a0, -1
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_9:
	mv	a0, zero
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	a,@object               # @a
	.bss
	.globl	a
	.p2align	2
a:
	.zero	48
	.size	a, 48

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a
