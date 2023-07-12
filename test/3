	.text
	.file	"55_sort_test3.c"
	.globl	_Z9QuickSortPiii        # -- Begin function _Z9QuickSortPiii
	.p2align	1
	.type	_Z9QuickSortPiii,@function
_Z9QuickSortPiii:                       # @_Z9QuickSortPiii
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
	add	a3, zero, a2
	add	a4, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	bge	a0, a1, .LBB0_19
	j	.LBB0_1
.LBB0_1:
	lw	a0, -28(s0)
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -44(s0)
	j	.LBB0_2
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB0_18
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	j	.LBB0_4
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	mv	a2, zero
	sd	a2, -56(s0)
	bge	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=2
	ld	a0, -24(s0)
	lw	a1, -40(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -44(s0)
	addiw	a1, a1, -1
	slt	a0, a1, a0
	sd	a0, -56(s0)
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=2
	ld	a0, -56(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB0_8
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=2
	lw	a0, -40(s0)
	addi	a0, a0, -1
	sw	a0, -40(s0)
	j	.LBB0_4
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB0_10
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	ld	a0, -24(s0)
	lw	a1, -40(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	a1, 0(a0)
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	j	.LBB0_11
.LBB0_11:                               #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	mv	a2, zero
	sd	a2, -64(s0)
	bge	a0, a1, .LBB0_13
	j	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=2
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -44(s0)
	slt	a0, a0, a1
	sd	a0, -64(s0)
	j	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=2
	ld	a0, -64(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB0_15
	j	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=2
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB0_11
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB0_17
	j	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, -40(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	a1, 0(a0)
	lw	a0, -40(s0)
	addi	a0, a0, -1
	sw	a0, -40(s0)
	j	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_2 Depth=1
	j	.LBB0_2
.LBB0_18:
	lw	a0, -44(s0)
	ld	a1, -24(s0)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -36(s0)
	addi	a0, a0, -1
	sw	a0, -48(s0)
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a2, -48(s0)
	call	_Z9QuickSortPiii
	sw	a0, -48(s0)
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	ld	a0, -24(s0)
	lw	a1, -48(s0)
	lw	a2, -32(s0)
	call	_Z9QuickSortPiii
	sw	a0, -48(s0)
	j	.LBB0_19
.LBB0_19:
	mv	a0, zero
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	_Z9QuickSortPiii, .Lfunc_end0-_Z9QuickSortPiii
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
	addi	a1, zero, 4
	sw	a1, -60(s0)
	addi	a1, zero, 3
	sw	a1, -56(s0)
	addi	a1, zero, 9
	sw	a1, -52(s0)
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
	sw	a1, -68(s0)
	lw	a1, -64(s0)
	lw	a2, -68(s0)
	addi	a0, s0, -60
	call	_Z9QuickSortPiii
	sw	a0, -64(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -64(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -64(s0)
	slli	a0, a0, 2
	addi	a1, s0, -60
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -72(s0)
	lw	a0, -72(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -72(s0)
	lw	a0, -72(s0)
	call	_Z5putchi
	lw	a0, -64(s0)
	addi	a0, a0, 1
	sw	a0, -64(s0)
	j	.LBB1_1
.LBB1_3:
	mv	a0, zero
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
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
	.addrsig_sym _Z9QuickSortPiii
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym n
