	.text
	.file	"42_index_func_ret.c"
	.globl	_Z12_getMaxOfAllPii     # -- Begin function _Z12_getMaxOfAllPii
	.p2align	1
	.type	_Z12_getMaxOfAllPii,@function
_Z12_getMaxOfAllPii:                    # @_Z12_getMaxOfAllPii
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	add	a2, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	lui	a0, 64
	addiw	a0, a0, -61
	slli	a0, a0, 14
	addi	a0, a0, -575
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	mv	a1, zero
	blt	a0, a1, .LBB0_5
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -32(s0)
	bge	a1, a0, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -32(s0)
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_5:
	lw	a0, -32(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z12_getMaxOfAllPii, .Lfunc_end0-_Z12_getMaxOfAllPii
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a1, zero, 1
	slli	a1, a1, 32
	addi	a2, a1, -2
	sw	a2, -32(s0)
	addi	a2, zero, 2
	sw	a2, -28(s0)
	addi	a1, a1, -7
	sw	a1, -24(s0)
	addi	a1, s0, -32
	addi	a2, zero, 3
	sd	a0, -48(s0)
	add	a0, zero, a1
	sd	a1, -56(s0)
	add	a1, zero, a2
	call	_Z12_getMaxOfAllPii
	slli	a0, a0, 2
	ld	a1, -56(s0)
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	call	_Z6putinti
	ld	a0, -48(s0)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z12_getMaxOfAllPii
	.addrsig_sym _Z6putinti
