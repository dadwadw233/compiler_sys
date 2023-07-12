	.text
	.file	"74_itera_sqrt.c"
	.globl	_Z5fsqrti               # -- Begin function _Z5fsqrti
	.p2align	1
	.type	_Z5fsqrti,@function
_Z5fsqrti:                              # @_Z5fsqrti
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	add	a1, zero, a0
	sw	a0, -20(s0)
	mv	a0, zero
	sw	a0, -24(s0)
	lwu	a0, -20(s0)
	srli	a2, a0, 31
	addw	a0, a0, a2
	srli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	sub	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, zero
	beq	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	divw	a1, a1, a0
	add	a0, a0, a1
	sw	a0, -28(s0)
	lwu	a0, -28(s0)
	srli	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_3:
	lw	a0, -28(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z5fsqrti, .Lfunc_end0-_Z5fsqrti
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
	call	_Z5fsqrti
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
	.addrsig_sym _Z5fsqrti
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
