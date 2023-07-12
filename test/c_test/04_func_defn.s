	.text
	.file	"04_func_defn.c"
	.globl	_Z4funci                # -- Begin function _Z4funci
	.p2align	1
	.type	_Z4funci,@function
_Z4funci:                               # @_Z4funci
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	add	a1, zero, a0
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z4funci, .Lfunc_end0-_Z4funci
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
	addi	a1, zero, 10
	sw	a1, %lo(a)(a0)
	lw	a0, %lo(a)(a0)
	call	_Z4funci
	sw	a0, -24(s0)
	lw	a0, -24(s0)
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

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z4funci
	.addrsig_sym a
