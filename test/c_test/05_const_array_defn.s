	.text
	.file	"05_const_array_defn.c"
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
	lui	a0, %hi(_ZL1a)
	addi	a0, a0, %lo(_ZL1a)
	lw	a0, 16(a0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	_ZL1a,@object           # @_ZL1a
	.section	.rodata,"a",@progbits
	.p2align	2
_ZL1a:
	.word	0                       # 0x0
	.word	1                       # 0x1
	.word	2                       # 0x2
	.word	3                       # 0x3
	.word	4                       # 0x4
	.size	_ZL1a, 20

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _ZL1a
