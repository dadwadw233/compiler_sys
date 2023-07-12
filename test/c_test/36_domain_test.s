	.text
	.file	"36_domain_test.c"
	.globl	_Z4funcPi               # -- Begin function _Z4funcPi
	.p2align	1
	.type	_Z4funcPi,@function
_Z4funcPi:                              # @_Z4funcPi
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	sd	a0, -24(s0)
	lui	a0, %hi(a)
	addi	a1, zero, 1
	sw	a1, %lo(a)(a0)
	ld	a1, -24(s0)
	lw	a0, %lo(a)(a0)
	addi	a2, zero, 3
	subw	a0, a2, a0
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z4funcPi, .Lfunc_end0-_Z4funcPi
                                        # -- End function
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
	addi	a0, zero, 1
	slli	a0, a0, 32
	addi	a0, a0, -1
	sw	a0, -36(s0)
	addi	a0, zero, 4
	sw	a0, -32(s0)
	addi	a0, zero, 8
	sw	a0, -28(s0)
	addi	a0, s0, -36
	call	_Z4funcPi
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	addw	a0, a0, a1
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	a,@object               # @a
	.section	.sbss,"aw",@nobits
	.globl	a
	.p2align	2
a:
	.zero	8
	.size	a, 8

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z4funcPi
	.addrsig_sym a
