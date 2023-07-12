	.text
	.file	"52_recursion_test3.c"
	.globl	_Z3faci                 # -- Begin function _Z3faci
	.p2align	1
	.type	_Z3faci,@function
_Z3faci:                                # @_Z3faci
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	add	a1, zero, a0
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	addi	a2, zero, 1
	blt	a2, a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_2:
	lw	a0, -24(s0)
	addi	a0, a0, -1
	lui	a1, %hi(a)
	sw	a0, %lo(a)(a1)
	lw	a0, %lo(a)(a1)
	call	_Z3faci
	lui	a1, %hi(r)
	sw	a0, %lo(r)(a1)
	lw	a0, -24(s0)
	lw	a2, %lo(r)(a1)
	mul	a0, a0, a2
	sw	a0, %lo(r)(a1)
	lw	a0, %lo(r)(a1)
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_3:
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z3faci, .Lfunc_end0-_Z3faci
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a0, zero, 5
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	call	_Z3faci
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	a,@object               # @a
	.section	.sbss,"aw",@nobits
	.globl	a
	.p2align	2
a:
	.word	0                       # 0x0
	.size	a, 4

	.type	r,@object               # @r
	.globl	r
	.p2align	2
r:
	.word	0                       # 0x0
	.size	r, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3faci
	.addrsig_sym a
	.addrsig_sym r
