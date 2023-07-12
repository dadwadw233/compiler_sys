	.text
	.file	"80_lcm.c"
	.globl	_Z3gcdii                # -- Begin function _Z3gcdii
	.p2align	1
	.type	_Z3gcdii,@function
_Z3gcdii:                               # @_Z3gcdii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a2, zero, a1
	add	a3, zero, a0
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	sw	a0, -32(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	bge	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -20(s0)
	sw	a0, -36(s0)
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	lw	a0, -36(s0)
	sw	a0, -24(s0)
	j	.LBB0_2
.LBB0_2:
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	rem	a0, a0, a1
	sw	a0, -40(s0)
	j	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	lw	a0, -40(s0)
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	rem	a0, a0, a1
	sw	a0, -40(s0)
	j	.LBB0_3
.LBB0_5:
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	mulw	a0, a0, a1
	lw	a1, -24(s0)
	divw	a0, a0, a1
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z3gcdii, .Lfunc_end0-_Z3gcdii
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
	call	_Z6getintv
	sw	a0, -24(s0)
	call	_Z6getintv
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	_Z3gcdii
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	n,@object               # @n
	.section	.sbss,"aw",@nobits
	.globl	n
	.p2align	2
n:
	.word	0                       # 0x0
	.size	n, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3gcdii
	.addrsig_sym _Z6getintv
