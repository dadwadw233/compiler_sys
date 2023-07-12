	.text
	.file	"57_sort_test5.c"
	.globl	_Z4swapPiii             # -- Begin function _Z4swapPiii
	.p2align	1
	.type	_Z4swapPiii,@function
_Z4swapPiii:                            # @_Z4swapPiii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a3, zero, a2
	add	a4, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, -28(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	a1, 0(a0)
	lw	a0, -36(s0)
	ld	a1, -24(s0)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z4swapPiii, .Lfunc_end0-_Z4swapPiii
                                        # -- End function
	.globl	_Z10heap_ajustPiii      # -- Begin function _Z10heap_ajustPiii
	.p2align	1
	.type	_Z10heap_ajustPiii,@function
_Z10heap_ajustPiii:                     # @_Z10heap_ajustPiii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a3, zero, a2
	add	a4, zero, a1
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	sw	a2, -40(s0)
	lw	a0, -36(s0)
	sw	a0, -44(s0)
	lw	a0, -44(s0)
	slli	a0, a0, 1
	ori	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -48(s0)
	lw	a1, -40(s0)
	addiw	a1, a1, 1
	bge	a0, a1, .LBB1_9
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -48(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB1_5
	j	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, -32(s0)
	lw	a1, -48(s0)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	addiw	a1, a1, 1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	bge	a2, a0, .LBB1_5
	j	.LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -48(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, -48(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	bge	a0, a1, .LBB1_7
	j	.LBB1_6
.LBB1_6:
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB1_10
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	lw	a2, -48(s0)
	call	_Z4swapPiii
	sw	a0, -44(s0)
	lw	a0, -48(s0)
	sw	a0, -44(s0)
	lw	a0, -44(s0)
	slli	a0, a0, 1
	ori	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB1_8
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	j	.LBB1_1
.LBB1_9:
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB1_10
.LBB1_10:
	lw	a0, -20(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	_Z10heap_ajustPiii, .Lfunc_end1-_Z10heap_ajustPiii
                                        # -- End function
	.globl	_Z9heap_sortPii         # -- Begin function _Z9heap_sortPii
	.p2align	1
	.type	_Z9heap_sortPii,@function
_Z9heap_sortPii:                        # @_Z9heap_sortPii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a2, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	lwu	a0, -28(s0)
	srli	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	addi	a0, a0, -1
	sw	a0, -32(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	mv	a1, zero
	blt	a0, a1, .LBB2_3
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	lw	a2, -36(s0)
	call	_Z10heap_ajustPiii
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	addi	a0, a0, -1
	sw	a0, -32(s0)
	j	.LBB2_1
.LBB2_3:
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -32(s0)
	j	.LBB2_4
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB2_6
	j	.LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_4 Depth=1
	mv	a0, zero
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	lw	a1, -40(s0)
	lw	a2, -32(s0)
	call	_Z4swapPiii
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a1, -40(s0)
	lw	a2, -36(s0)
	call	_Z10heap_ajustPiii
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	addi	a0, a0, -1
	sw	a0, -32(s0)
	j	.LBB2_4
.LBB2_6:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	_Z9heap_sortPii, .Lfunc_end2-_Z9heap_sortPii
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
	lw	a1, %lo(n)(a1)
	addi	a0, s0, -60
	call	_Z9heap_sortPii
	sw	a0, -64(s0)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -64(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB3_3
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
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
	j	.LBB3_1
.LBB3_3:
	mv	a0, zero
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
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
	.addrsig_sym _Z4swapPiii
	.addrsig_sym _Z10heap_ajustPiii
	.addrsig_sym _Z9heap_sortPii
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym n
