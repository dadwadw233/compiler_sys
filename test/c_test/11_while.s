	.text
	.file	"11_while.c"
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
	lui	a1, %hi(b)
	sw	a0, %lo(b)(a1)
	lui	a0, %hi(a)
	addi	a1, zero, 3
	sw	a1, %lo(a)(a0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lui	a0, %hi(a)
	lw	a0, %lo(a)(a0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lui	a0, %hi(b)
	lw	a1, %lo(b)(a0)
	lui	a2, %hi(a)
	lw	a3, %lo(a)(a2)
	add	a1, a1, a3
	sw	a1, %lo(b)(a0)
	lw	a0, %lo(a)(a2)
	addi	a0, a0, -1
	sw	a0, %lo(a)(a2)
	j	.LBB0_1
.LBB0_3:
	lui	a0, %hi(b)
	lw	a0, %lo(b)(a0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	a,@object               # @a
	.section	.sbss,"aw",@nobits
	.globl	a
	.p2align	2
a:
	.word	0                       # 0x0
	.size	a, 4

	.type	b,@object               # @b
	.globl	b
	.p2align	2
b:
	.word	0                       # 0x0
	.size	b, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a
	.addrsig_sym b
