	.text
	.file	"29_while_test3.c"
	.globl	_Z10EightWhilev         # -- Begin function _Z10EightWhilev
	.p2align	1
	.type	_Z10EightWhilev,@function
_Z10EightWhilev:                        # @_Z10EightWhilev
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
                                        #           Child Loop BB0_9 Depth 5
                                        #             Child Loop BB0_11 Depth 6
                                        #               Child Loop BB0_13 Depth 7
                                        #                 Child Loop BB0_15 Depth 8
	lw	a0, -20(s0)
	addi	a1, zero, 19
	blt	a1, a0, .LBB0_24
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
                                        #           Child Loop BB0_9 Depth 5
                                        #             Child Loop BB0_11 Depth 6
                                        #               Child Loop BB0_13 Depth 7
                                        #                 Child Loop BB0_15 Depth 8
	lw	a0, -24(s0)
	addi	a1, zero, 9
	blt	a1, a0, .LBB0_23
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
                                        #           Child Loop BB0_9 Depth 5
                                        #             Child Loop BB0_11 Depth 6
                                        #               Child Loop BB0_13 Depth 7
                                        #                 Child Loop BB0_15 Depth 8
	lw	a0, -28(s0)
	addi	a1, zero, 7
	bne	a0, a1, .LBB0_22
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=3
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -28(s0)
	j	.LBB0_7
.LBB0_7:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_9 Depth 5
                                        #             Child Loop BB0_11 Depth 6
                                        #               Child Loop BB0_13 Depth 7
                                        #                 Child Loop BB0_15 Depth 8
	lw	a0, -32(s0)
	addi	a1, zero, 19
	blt	a1, a0, .LBB0_21
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=4
	lw	a0, -32(s0)
	addi	a0, a0, 3
	sw	a0, -32(s0)
	j	.LBB0_9
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        #         Parent Loop BB0_7 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB0_11 Depth 6
                                        #               Child Loop BB0_13 Depth 7
                                        #                 Child Loop BB0_15 Depth 8
	lui	a0, %hi(e)
	lw	a0, %lo(e)(a0)
	addi	a1, zero, 2
	blt	a0, a1, .LBB0_20
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_9 Depth=5
	lui	a0, %hi(e)
	lw	a1, %lo(e)(a0)
	addi	a1, a1, -1
	sw	a1, %lo(e)(a0)
	j	.LBB0_11
.LBB0_11:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        #         Parent Loop BB0_7 Depth=4
                                        #           Parent Loop BB0_9 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB0_13 Depth 7
                                        #                 Child Loop BB0_15 Depth 8
	lui	a0, %hi(f)
	lw	a0, %lo(f)(a0)
	addi	a1, zero, 3
	blt	a0, a1, .LBB0_19
	j	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=6
	lui	a0, %hi(f)
	lw	a1, %lo(f)(a0)
	addi	a1, a1, -2
	sw	a1, %lo(f)(a0)
	j	.LBB0_13
.LBB0_13:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        #         Parent Loop BB0_7 Depth=4
                                        #           Parent Loop BB0_9 Depth=5
                                        #             Parent Loop BB0_11 Depth=6
                                        # =>            This Loop Header: Depth=7
                                        #                 Child Loop BB0_15 Depth 8
	lui	a0, %hi(g)
	lw	a0, %lo(g)(a0)
	addi	a1, zero, 2
	blt	a1, a0, .LBB0_18
	j	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=7
	lui	a0, %hi(g)
	lw	a1, %lo(g)(a0)
	addi	a1, a1, 10
	sw	a1, %lo(g)(a0)
	j	.LBB0_15
.LBB0_15:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        #       Parent Loop BB0_5 Depth=3
                                        #         Parent Loop BB0_7 Depth=4
                                        #           Parent Loop BB0_9 Depth=5
                                        #             Parent Loop BB0_11 Depth=6
                                        #               Parent Loop BB0_13 Depth=7
                                        # =>              This Inner Loop Header: Depth=8
	lui	a0, %hi(h)
	lw	a0, %lo(h)(a0)
	addi	a1, zero, 9
	blt	a1, a0, .LBB0_17
	j	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_15 Depth=8
	lui	a0, %hi(h)
	lw	a1, %lo(h)(a0)
	addi	a1, a1, 8
	sw	a1, %lo(h)(a0)
	j	.LBB0_15
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=7
	lui	a0, %hi(h)
	lw	a1, %lo(h)(a0)
	addi	a1, a1, -1
	sw	a1, %lo(h)(a0)
	j	.LBB0_13
.LBB0_18:                               #   in Loop: Header=BB0_11 Depth=6
	lui	a0, %hi(g)
	lw	a1, %lo(g)(a0)
	addi	a1, a1, -8
	sw	a1, %lo(g)(a0)
	j	.LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_9 Depth=5
	lui	a0, %hi(f)
	lw	a1, %lo(f)(a0)
	addi	a1, a1, 1
	sw	a1, %lo(f)(a0)
	j	.LBB0_9
.LBB0_20:                               #   in Loop: Header=BB0_7 Depth=4
	lui	a0, %hi(e)
	lw	a1, %lo(e)(a0)
	addi	a1, a1, 1
	sw	a1, %lo(e)(a0)
	j	.LBB0_7
.LBB0_21:                               #   in Loop: Header=BB0_5 Depth=3
	lw	a0, -32(s0)
	addi	a0, a0, -1
	sw	a0, -32(s0)
	j	.LBB0_5
.LBB0_22:                               #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_3
.LBB0_23:                               #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, -2
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_24:
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	lw	a2, -32(s0)
	add	a1, a1, a2
	add	a0, a0, a1
	lw	a1, -28(s0)
	add	a0, a0, a1
	lui	a1, %hi(e)
	lw	a1, %lo(e)(a1)
	add	a1, a1, a2
	lui	a2, %hi(g)
	lw	a2, %lo(g)(a2)
	sub	a1, a1, a2
	lui	a2, %hi(h)
	lw	a2, %lo(h)(a2)
	add	a1, a1, a2
	subw	a0, a0, a1
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z10EightWhilev, .Lfunc_end0-_Z10EightWhilev
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
	lui	a0, %hi(g)
	addi	a1, zero, 1
	sw	a1, %lo(g)(a0)
	lui	a0, %hi(h)
	addi	a1, zero, 2
	sw	a1, %lo(h)(a0)
	lui	a0, %hi(e)
	addi	a1, zero, 4
	sw	a1, %lo(e)(a0)
	lui	a0, %hi(f)
	addi	a1, zero, 6
	sw	a1, %lo(f)(a0)
	call	_Z10EightWhilev
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	g,@object               # @g
	.section	.sbss,"aw",@nobits
	.globl	g
	.p2align	2
g:
	.word	0                       # 0x0
	.size	g, 4

	.type	h,@object               # @h
	.globl	h
	.p2align	2
h:
	.word	0                       # 0x0
	.size	h, 4

	.type	f,@object               # @f
	.globl	f
	.p2align	2
f:
	.word	0                       # 0x0
	.size	f, 4

	.type	e,@object               # @e
	.globl	e
	.p2align	2
e:
	.word	0                       # 0x0
	.size	e, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10EightWhilev
	.addrsig_sym g
	.addrsig_sym h
	.addrsig_sym f
	.addrsig_sym e
