	.text
	.file	"83_enc_dec.c"
	.globl	_Z3enci                 # -- Begin function _Z3enci
	.p2align	1
	.type	_Z3enci,@function
_Z3enci:                                # @_Z3enci
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	add	a1, zero, a0
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addi	a2, zero, 26
	blt	a0, a2, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -20(s0)
	addi	a0, a0, 60
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_2:
	lw	a0, -20(s0)
	addi	a0, a0, -15
	sw	a0, -20(s0)
	j	.LBB0_3
.LBB0_3:
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z3enci, .Lfunc_end0-_Z3enci
                                        # -- End function
	.globl	_Z3deci                 # -- Begin function _Z3deci
	.p2align	1
	.type	_Z3deci,@function
_Z3deci:                                # @_Z3deci
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	add	a1, zero, a0
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addi	a2, zero, 86
	blt	a0, a2, .LBB1_2
	j	.LBB1_1
.LBB1_1:
	lw	a0, -20(s0)
	addi	a0, a0, -59
	sw	a0, -20(s0)
	j	.LBB1_3
.LBB1_2:
	lw	a0, -20(s0)
	addi	a0, a0, 14
	sw	a0, -20(s0)
	j	.LBB1_3
.LBB1_3:
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	_Z3deci, .Lfunc_end1-_Z3deci
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
	call	_Z3enci
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	call	_Z3deci
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
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3enci
	.addrsig_sym _Z3deci
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
