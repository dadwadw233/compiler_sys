	.text
	.file	"59_sort_test7.c"
	.globl	_Z5MergePiiii           # -- Begin function _Z5MergePiiii
	.p2align	1
	.type	_Z5MergePiiii,@function
_Z5MergePiiii:                          # @_Z5MergePiiii
# %bb.0:
	addi	sp, sp, -144
	sd	ra, 136(sp)
	sd	s0, 128(sp)
	addi	s0, sp, 144
	add	a4, zero, a3
	add	a5, zero, a2
	add	a6, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	sw	a3, -36(s0)
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	sub	a0, a0, a1
	addi	a0, a0, 1
	sw	a0, -40(s0)
	lw	a0, -36(s0)
	lw	a1, -32(s0)
	sub	a0, a0, a1
	sw	a0, -44(s0)
	mv	a0, zero
	sw	a0, -128(s0)
	sw	a0, -132(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -128(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a2, -128(s0)
	addw	a1, a1, a2
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	slli	a1, a2, 2
	addi	a2, s0, -84
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -128(s0)
	addi	a0, a0, 1
	sw	a0, -128(s0)
	j	.LBB0_1
.LBB0_3:
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -132(s0)
	lw	a1, -44(s0)
	bge	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	lw	a2, -132(s0)
	add	a1, a1, a2
	addiw	a1, a1, 1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	slli	a1, a2, 2
	addi	a2, s0, -124
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -132(s0)
	addi	a0, a0, 1
	sw	a0, -132(s0)
	j	.LBB0_4
.LBB0_6:
	mv	a0, zero
	sw	a0, -128(s0)
	sw	a0, -132(s0)
	lw	a0, -28(s0)
	sw	a0, -136(s0)
	j	.LBB0_7
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -128(s0)
	lw	a1, -40(s0)
	mv	a2, zero
	sd	a2, -144(s0)
	beq	a0, a1, .LBB0_9
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=1
	lw	a0, -132(s0)
	lw	a1, -44(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sd	a0, -144(s0)
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	ld	a0, -144(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB0_14
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	lw	a0, -128(s0)
	slli	a0, a0, 2
	addi	a1, s0, -84
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -132(s0)
	slli	a1, a1, 2
	addi	a2, s0, -124
	add	a1, a1, a2
	lw	a1, 0(a1)
	addiw	a1, a1, 1
	bge	a0, a1, .LBB0_12
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	lw	a0, -128(s0)
	slli	a0, a0, 2
	addi	a1, s0, -84
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	lw	a2, -136(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -136(s0)
	addi	a0, a0, 1
	sw	a0, -136(s0)
	lw	a0, -128(s0)
	addi	a0, a0, 1
	sw	a0, -128(s0)
	j	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	lw	a0, -132(s0)
	slli	a0, a0, 2
	addi	a1, s0, -124
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	lw	a2, -136(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -136(s0)
	addi	a0, a0, 1
	sw	a0, -136(s0)
	lw	a0, -132(s0)
	addi	a0, a0, 1
	sw	a0, -132(s0)
	j	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	j	.LBB0_7
.LBB0_14:
	j	.LBB0_15
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -128(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB0_17
	j	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_15 Depth=1
	lw	a0, -128(s0)
	slli	a0, a0, 2
	addi	a1, s0, -84
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	lw	a2, -136(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -136(s0)
	addi	a0, a0, 1
	sw	a0, -136(s0)
	lw	a0, -128(s0)
	addi	a0, a0, 1
	sw	a0, -128(s0)
	j	.LBB0_15
.LBB0_17:
	j	.LBB0_18
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -132(s0)
	lw	a1, -44(s0)
	bge	a0, a1, .LBB0_20
	j	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_18 Depth=1
	lw	a0, -132(s0)
	slli	a0, a0, 2
	addi	a1, s0, -124
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	lw	a2, -136(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -136(s0)
	addi	a0, a0, 1
	sw	a0, -136(s0)
	lw	a0, -132(s0)
	addi	a0, a0, 1
	sw	a0, -132(s0)
	j	.LBB0_18
.LBB0_20:
	mv	a0, zero
	ld	s0, 128(sp)
	ld	ra, 136(sp)
	addi	sp, sp, 144
	ret
.Lfunc_end0:
	.size	_Z5MergePiiii, .Lfunc_end0-_Z5MergePiiii
                                        # -- End function
	.globl	_Z9MergeSortPiii        # -- Begin function _Z9MergeSortPiii
	.p2align	1
	.type	_Z9MergeSortPiii,@function
_Z9MergeSortPiii:                       # @_Z9MergeSortPiii
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
	add	a3, zero, a2
	add	a4, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	bge	a0, a1, .LBB1_2
	j	.LBB1_1
.LBB1_1:
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	add	a0, a0, a1
	srliw	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a2, -36(s0)
	call	_Z9MergeSortPiii
	sw	a0, -40(s0)
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	lw	a1, -40(s0)
	lw	a2, -32(s0)
	call	_Z9MergeSortPiii
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a2, -36(s0)
	lw	a3, -32(s0)
	call	_Z5MergePiiii
	sw	a0, -40(s0)
	j	.LBB1_2
.LBB1_2:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	_Z9MergeSortPiii, .Lfunc_end1-_Z9MergeSortPiii
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -80
	.cfi_def_cfa_offset 80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 80
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	lui	a1, %hi(n)
	addi	a2, zero, 10
	sw	a2, %lo(n)(a1)
	addi	a2, zero, 4
	sw	a2, -60(s0)
	addi	a2, zero, 3
	sw	a2, -56(s0)
	addi	a2, zero, 9
	sw	a2, -52(s0)
	addi	a2, zero, 2
	sw	a2, -48(s0)
	sw	a0, -44(s0)
	addi	a2, zero, 1
	sw	a2, -40(s0)
	addi	a2, zero, 6
	sw	a2, -36(s0)
	addi	a2, zero, 5
	sw	a2, -32(s0)
	addi	a2, zero, 7
	sw	a2, -28(s0)
	addi	a2, zero, 8
	sw	a2, -24(s0)
	sw	a0, -64(s0)
	lw	a0, %lo(n)(a1)
	addi	a0, a0, -1
	sw	a0, -68(s0)
	lw	a1, -64(s0)
	lw	a2, -68(s0)
	addi	a0, s0, -60
	call	_Z9MergeSortPiii
	sw	a0, -64(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -64(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB2_3
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -64(s0)
	slli	a0, a0, 2
	addi	a1, s0, -60
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -68(s0)
	lw	a0, -68(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -68(s0)
	lw	a0, -68(s0)
	call	_Z5putchi
	lw	a0, -64(s0)
	addi	a0, a0, 1
	sw	a0, -64(s0)
	j	.LBB2_1
.LBB2_3:
	mv	a0, zero
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
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
	.addrsig_sym _Z5MergePiiii
	.addrsig_sym _Z9MergeSortPiii
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym n
