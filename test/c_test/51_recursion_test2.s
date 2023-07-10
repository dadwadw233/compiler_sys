	.text
	.file	"51_recursion_test2.c"
	.globl	_Z3fibi                 # -- Begin function _Z3fibi
	.p2align	1
	.type	_Z3fibi,@function
_Z3fibi:                                # @_Z3fibi
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
	add	a1, zero, a0
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	mv	a2, zero
	bne	a0, a2, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB0_5
.LBB0_2:
	lw	a0, -24(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB0_5
.LBB0_4:
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	addi	a0, a0, -2
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	call	_Z3fibi
	lw	a1, -32(s0)
	sd	a0, -40(s0)
	add	a0, zero, a1
	call	_Z3fibi
	ld	a1, -40(s0)
	add	a0, a0, a1
	sw	a0, -20(s0)
	j	.LBB0_5
.LBB0_5:
	lw	a0, -20(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z3fibi, .Lfunc_end0-_Z3fibi
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
	addi	a0, zero, 10
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	call	_Z3fibi
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3fibi
