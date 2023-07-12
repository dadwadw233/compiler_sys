	.text
	.file	"88_array_concat.c"
	.globl	_Z6concatPiS_S_         # -- Begin function _Z6concatPiS_S_
	.p2align	1
	.type	_Z6concatPiS_S_,@function
_Z6concatPiS_S_:                        # @_Z6concatPiS_S_
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	mv	a0, zero
	sw	a0, -44(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	addi	a1, zero, 2
	blt	a1, a0, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a2, -40(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB0_1
.LBB0_3:
	mv	a0, zero
	sw	a0, -48(s0)
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -48(s0)
	addi	a1, zero, 2
	blt	a1, a0, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, -32(s0)
	lw	a1, -48(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a1, -40(s0)
	lw	a2, -44(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	lw	a0, -48(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB0_4
.LBB0_6:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z6concatPiS_S_, .Lfunc_end0-_Z6concatPiS_S_
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)
	sd	s0, 144(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 160
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	sw	a0, -144(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -144(s0)
	addi	a1, zero, 2
	blt	a1, a0, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -32
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -44
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -56
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -68
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -80
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -92
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	j	.LBB1_1
.LBB1_3:
	addi	a0, s0, -32
	addi	a1, s0, -68
	addi	a2, s0, -116
	call	_Z6concatPiS_S_
	sw	a0, -144(s0)
	j	.LBB1_4
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -144(s0)
	addi	a1, zero, 5
	blt	a1, a0, .LBB1_6
	j	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=1
	lw	a0, -144(s0)
	slli	a0, a0, 2
	addi	a1, s0, -116
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -148(s0)
	lw	a0, -148(s0)
	call	_Z6putinti
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	j	.LBB1_4
.LBB1_6:
	addi	a0, zero, 10
	sw	a0, -148(s0)
	lw	a0, -148(s0)
	call	_Z5putchi
	mv	a0, zero
	ld	s0, 144(sp)
	ld	ra, 152(sp)
	addi	sp, sp, 160
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6concatPiS_S_
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
