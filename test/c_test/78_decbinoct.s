	.text
	.file	"78_decbinoct.c"
	.globl	_Z7dec2bini             # -- Begin function _Z7dec2bini
	.p2align	1
	.type	_Z7dec2bini,@function
_Z7dec2bini:                            # @_Z7dec2bini
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a1, zero, a0
	sw	a0, -20(s0)
	mv	a0, zero
	sw	a0, -24(s0)
	addi	a0, zero, 1
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	mv	a1, zero
	beq	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lwu	a0, -36(s0)
	srli	a1, a0, 31
	add	a1, a1, a0
	addi	a2, zero, 1
	slli	a2, a2, 32
	addi	a2, a2, -2
	and	a1, a1, a2
	sub	a0, a0, a1
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	mul	a0, a0, a1
	lw	a1, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	addi	a1, zero, 10
	mul	a0, a0, a1
	sw	a0, -28(s0)
	lwu	a0, -36(s0)
	srli	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_3:
	lw	a0, -24(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z7dec2bini, .Lfunc_end0-_Z7dec2bini
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a1, zero, 400
	sw	a1, -24(s0)
	lw	a1, -24(s0)
	sd	a0, -40(s0)
	add	a0, zero, a1
	call	_Z7dec2bini
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	call	_Z5putchi
	ld	a0, -40(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z7dec2bini
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
