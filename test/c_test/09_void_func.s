	.text
	.file	"09_void_func.c"
	.globl	_Z3addii                # -- Begin function _Z3addii
	.p2align	1
	.type	_Z3addii,@function
_Z3addii:                               # @_Z3addii
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	add	a2, zero, a1
	add	a3, zero, a0
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	lui	a1, %hi(c)
	sw	a0, %lo(c)(a1)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z3addii, .Lfunc_end0-_Z3addii
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
	lui	a0, %hi(a)
	addi	a1, zero, 3
	sw	a1, %lo(a)(a0)
	lui	a1, %hi(b)
	addi	a2, zero, 2
	sw	a2, %lo(b)(a1)
	lw	a0, %lo(a)(a0)
	lw	a1, %lo(b)(a1)
	call	_Z3addii
	lui	a0, %hi(c)
	lw	a0, %lo(c)(a0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
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

	.type	c,@object               # @c
	.globl	c
	.p2align	2
c:
	.word	0                       # 0x0
	.size	c, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3addii
	.addrsig_sym a
	.addrsig_sym b
	.addrsig_sym c
