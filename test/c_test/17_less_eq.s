	.text
	.file	"17_less_eq.c"
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
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lui	a1, %hi(s)
	addi	a1, a1, %lo(s)
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lui	a1, %hi(a)
	lw	a1, %lo(a)(a1)
	blt	a1, a0, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_3:
	lw	a0, -24(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	a,@object               # @a
	.section	.sdata,"aw",@progbits
	.globl	a
	.p2align	2
a:
	.word	5                       # 0x5
	.size	a, 4

	.type	s,@object               # @s
	.data
	.globl	s
	.p2align	2
s:
	.word	0                       # 0x0
	.word	1                       # 0x1
	.word	2                       # 0x2
	.word	3                       # 0x3
	.word	4                       # 0x4
	.word	5                       # 0x5
	.word	6                       # 0x6
	.word	7                       # 0x7
	.word	8                       # 0x8
	.word	9                       # 0x9
	.size	s, 40

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a
	.addrsig_sym s
