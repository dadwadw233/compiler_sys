	.text
	.file	"84_palindrome_number.c"
	.globl	_Z10palindromei         # -- Begin function _Z10palindromei
	.p2align	1
	.type	_Z10palindromei,@function
_Z10palindromei:                        # @_Z10palindromei
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a1, zero, a0
	sw	a0, -20(s0)
	mv	a0, zero
	sw	a0, -40(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	addi	a1, zero, 3
	blt	a1, a0, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -20(s0)
	lui	a1, 13107
	addiw	a1, a1, 819
	slli	a1, a1, 12
	addi	a1, a1, 819
	slli	a1, a1, 12
	addi	a1, a1, 819
	slli	a1, a1, 13
	addi	a1, a1, 1639
	mulh	a2, a0, a1
	srli	a3, a2, 63
	srli	a2, a2, 2
	add	a2, a2, a3
	addi	a3, zero, 10
	mul	a2, a2, a3
	sub	a0, a0, a2
	lw	a2, -40(s0)
	slli	a2, a2, 2
	addi	a3, s0, -36
	add	a2, a2, a3
	sw	a0, 0(a2)
	lw	a0, -20(s0)
	mulh	a0, a0, a1
	srli	a1, a0, 63
	srli	a0, a0, 2
	add	a0, a0, a1
	sw	a0, -20(s0)
	lw	a0, -40(s0)
	addi	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB0_1
.LBB0_3:
	lw	a0, -36(s0)
	lw	a1, -24(s0)
	bne	a0, a1, .LBB0_6
	j	.LBB0_4
.LBB0_4:
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	bne	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:
	addi	a0, zero, 1
	sw	a0, -44(s0)
	j	.LBB0_7
.LBB0_6:
	mv	a0, zero
	sw	a0, -44(s0)
	j	.LBB0_7
.LBB0_7:
	lw	a0, -44(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z10palindromei, .Lfunc_end0-_Z10palindromei
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
	addi	a0, zero, 1221
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	call	_Z10palindromei
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB1_2
	j	.LBB1_1
.LBB1_1:
	lw	a0, -24(s0)
	call	_Z6putinti
	j	.LBB1_3
.LBB1_2:
	mv	a0, zero
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	call	_Z6putinti
	j	.LBB1_3
.LBB1_3:
	addi	a0, zero, 10
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	call	_Z5putchi
	mv	a0, zero
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
	.addrsig_sym _Z10palindromei
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
