	.text
	.file	"62_long_code.c"
	.globl	_Z10bubblesortPi        # -- Begin function _Z10bubblesortPi
	.p2align	1
	.type	_Z10bubblesortPi,@function
_Z10bubblesortPi:                       # @_Z10bubblesortPi
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	a0, -24(s0)
	mv	a0, zero
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	lw	a0, -28(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	addiw	a1, a1, -1
	bge	a0, a1, .LBB0_8
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	mv	a0, zero
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -32(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	lw	a2, -28(s0)
	not	a2, a2
	addw	a1, a1, a2
	bge	a0, a1, .LBB0_7
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	addiw	a1, a1, 1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	bge	a0, a2, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	addiw	a1, a1, 1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	addiw	a1, a1, 1
	slli	a1, a1, 2
	add	a0, a0, a1
	sw	a2, 0(a0)
	lw	a0, -36(s0)
	ld	a1, -24(s0)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_8:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z10bubblesortPi, .Lfunc_end0-_Z10bubblesortPi
                                        # -- End function
	.globl	_Z10insertsortPi        # -- Begin function _Z10insertsortPi
	.p2align	1
	.type	_Z10insertsortPi,@function
_Z10insertsortPi:                       # @_Z10insertsortPi
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	a0, -24(s0)
	addi	a0, zero, 1
	sw	a0, -28(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	lw	a0, -28(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB1_8
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	j	.LBB1_3
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -36(s0)
	mv	a1, zero
	add	a2, zero, a1
	sd	a2, -48(s0)
	blt	a0, a1, .LBB1_5
	j	.LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_3 Depth=2
	lw	a0, -32(s0)
	ld	a1, -24(s0)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	slt	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=2
	ld	a0, -48(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB1_7
	j	.LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=2
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	addiw	a1, a1, 1
	slli	a1, a1, 2
	add	a0, a0, a1
	sw	a2, 0(a0)
	lw	a0, -36(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	j	.LBB1_3
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -32(s0)
	ld	a1, -24(s0)
	lw	a2, -36(s0)
	addiw	a2, a2, 1
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB1_1
.LBB1_8:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	_Z10insertsortPi, .Lfunc_end1-_Z10insertsortPi
                                        # -- End function
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
	bge	a0, a1, .LBB2_19
	j	.LBB2_1
.LBB2_1:
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
	j	.LBB2_2
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_4 Depth 2
                                        #     Child Loop BB2_11 Depth 2
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB2_18
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_2 Depth=1
	j	.LBB2_4
.LBB2_4:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	mv	a2, zero
	sd	a2, -56(s0)
	bge	a0, a1, .LBB2_6
	j	.LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_4 Depth=2
	ld	a0, -24(s0)
	lw	a1, -40(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -44(s0)
	addiw	a1, a1, -1
	slt	a0, a1, a0
	sd	a0, -56(s0)
	j	.LBB2_6
.LBB2_6:                                #   in Loop: Header=BB2_4 Depth=2
	ld	a0, -56(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB2_8
	j	.LBB2_7
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=2
	lw	a0, -40(s0)
	addi	a0, a0, -1
	sw	a0, -40(s0)
	j	.LBB2_4
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB2_10
	j	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_2 Depth=1
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
	j	.LBB2_10
.LBB2_10:                               #   in Loop: Header=BB2_2 Depth=1
	j	.LBB2_11
.LBB2_11:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	mv	a2, zero
	sd	a2, -64(s0)
	bge	a0, a1, .LBB2_13
	j	.LBB2_12
.LBB2_12:                               #   in Loop: Header=BB2_11 Depth=2
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -44(s0)
	slt	a0, a0, a1
	sd	a0, -64(s0)
	j	.LBB2_13
.LBB2_13:                               #   in Loop: Header=BB2_11 Depth=2
	ld	a0, -64(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB2_15
	j	.LBB2_14
.LBB2_14:                               #   in Loop: Header=BB2_11 Depth=2
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB2_11
.LBB2_15:                               #   in Loop: Header=BB2_2 Depth=1
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	bge	a0, a1, .LBB2_17
	j	.LBB2_16
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
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
	j	.LBB2_17
.LBB2_17:                               #   in Loop: Header=BB2_2 Depth=1
	j	.LBB2_2
.LBB2_18:
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
	j	.LBB2_19
.LBB2_19:
	mv	a0, zero
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	_Z9QuickSortPiii, .Lfunc_end2-_Z9QuickSortPiii
	.cfi_endproc
                                        # -- End function
	.globl	_Z6getMidPi             # -- Begin function _Z6getMidPi
	.p2align	1
	.type	_Z6getMidPi,@function
_Z6getMidPi:                            # @_Z6getMidPi
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	a0, -32(s0)
	lui	a0, %hi(n)
	lwu	a0, %lo(n)(a0)
	srli	a1, a0, 31
	add	a1, a1, a0
	addi	a2, zero, 1
	slli	a2, a2, 32
	addi	a2, a2, -2
	and	a1, a1, a2
	sub	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, zero
	bne	a0, a1, .LBB3_2
	j	.LBB3_1
.LBB3_1:
	lui	a0, %hi(n)
	lwu	a0, %lo(n)(a0)
	srli	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	sw	a0, -36(s0)
	ld	a0, -32(s0)
	lw	a1, -36(s0)
	slli	a2, a1, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	addiw	a1, a1, -1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	add	a0, a0, a2
	srliw	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB3_3
.LBB3_2:
	lui	a0, %hi(n)
	lwu	a0, %lo(n)(a0)
	srli	a1, a0, 31
	addw	a0, a0, a1
	srli	a0, a0, 1
	sw	a0, -36(s0)
	ld	a0, -32(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -20(s0)
	j	.LBB3_3
.LBB3_3:
	lw	a0, -20(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end3:
	.size	_Z6getMidPi, .Lfunc_end3-_Z6getMidPi
                                        # -- End function
	.globl	_Z7getMostPi            # -- Begin function _Z7getMostPi
	.p2align	1
	.type	_Z7getMostPi,@function
_Z7getMostPi:                           # @_Z7getMostPi
# %bb.0:
	addi	sp, sp, -2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	addi	s0, sp, 2032
	addi	sp, sp, -2016
	sd	a0, -32(s0)
	mv	a0, zero
	lui	a1, 1048575
	addiw	a1, a1, 60
	add	a1, a1, s0
	sw	a0, 0(a1)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lui	a0, 1048575
	addiw	a0, a0, 60
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a1, zero, 999
	blt	a1, a0, .LBB4_3
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lui	a0, 1048575
	addiw	a0, a0, 60
	add	a0, a0, s0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lui	a1, 1048575
	addiw	a1, a1, 64
	add	a1, a1, s0
	add	a1, zero, a1
	add	a0, a0, a1
	mv	a1, zero
	sw	a1, 0(a0)
	lui	a0, 1048575
	addiw	a0, a0, 60
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a0, a0, 1
	lui	a1, 1048575
	addiw	a1, a1, 60
	add	a1, a1, s0
	sw	a0, 0(a1)
	j	.LBB4_1
.LBB4_3:
	mv	a0, zero
	lui	a1, 1048575
	addiw	a1, a1, 60
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a1, 1048575
	addiw	a1, a1, 56
	add	a1, a1, s0
	sw	a0, 0(a1)
	j	.LBB4_4
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	lui	a0, 1048575
	addiw	a0, a0, 60
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB4_8
	j	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_4 Depth=1
	ld	a0, -32(s0)
	lui	a1, 1048575
	addiw	a1, a1, 60
	add	a1, a1, s0
	lw	a1, 0(a1)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lui	a1, 1048575
	addiw	a1, a1, 48
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a0, 1048575
	addiw	a0, a0, 48
	add	a0, a0, s0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lui	a1, 1048575
	addiw	a1, a1, 64
	add	a1, a1, s0
	add	a1, zero, a1
	add	a0, a0, a1
	lw	a2, 0(a0)
	addi	a2, a2, 1
	sw	a2, 0(a0)
	lui	a0, 1048575
	addiw	a0, a0, 48
	add	a0, a0, s0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lui	a1, 1048575
	addiw	a1, a1, 56
	add	a1, a1, s0
	lw	a1, 0(a1)
	bge	a1, a0, .LBB4_7
	j	.LBB4_6
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=1
	lui	a0, 1048575
	addiw	a0, a0, 48
	add	a0, a0, s0
	lw	a0, 0(a0)
	slli	a0, a0, 2
	lui	a1, 1048575
	addiw	a1, a1, 64
	add	a1, a1, s0
	add	a1, zero, a1
	add	a0, a0, a1
	lw	a0, 0(a0)
	lui	a1, 1048575
	addiw	a1, a1, 56
	add	a1, a1, s0
	sw	a0, 0(a1)
	lui	a0, 1048575
	addiw	a0, a0, 48
	add	a0, a0, s0
	lw	a0, 0(a0)
	lui	a1, 1048575
	addiw	a1, a1, 52
	add	a1, a1, s0
	sw	a0, 0(a1)
	j	.LBB4_7
.LBB4_7:                                #   in Loop: Header=BB4_4 Depth=1
	lui	a0, 1048575
	addiw	a0, a0, 60
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	a0, a0, 1
	lui	a1, 1048575
	addiw	a1, a1, 60
	add	a1, a1, s0
	sw	a0, 0(a1)
	j	.LBB4_4
.LBB4_8:
	lui	a0, 1048575
	addiw	a0, a0, 52
	add	a0, a0, s0
	lw	a0, 0(a0)
	addi	sp, sp, 2016
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end4:
	.size	_Z7getMostPi, .Lfunc_end4-_Z7getMostPi
                                        # -- End function
	.globl	_Z6revertPi             # -- Begin function _Z6revertPi
	.p2align	1
	.type	_Z6revertPi,@function
_Z6revertPi:                            # @_Z6revertPi
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	a0, -24(s0)
	mv	a0, zero
	sw	a0, -32(s0)
	sw	a0, -36(s0)
	j	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	lw	a1, -36(s0)
	bge	a0, a1, .LBB5_3
	j	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -32(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -28(s0)
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	a1, 0(a0)
	lw	a0, -28(s0)
	ld	a1, -24(s0)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	lw	a0, -36(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	j	.LBB5_1
.LBB5_3:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end5:
	.size	_Z6revertPi, .Lfunc_end5-_Z6revertPi
                                        # -- End function
	.globl	_Z7arrCopyPiS_          # -- Begin function _Z7arrCopyPiS_
	.p2align	1
	.type	_Z7arrCopyPiS_,@function
_Z7arrCopyPiS_:                         # @_Z7arrCopyPiS_
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	mv	a0, zero
	sw	a0, -36(s0)
	j	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB6_3
	j	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	ld	a2, -32(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB6_1
.LBB6_3:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end6:
	.size	_Z7arrCopyPiS_, .Lfunc_end6-_Z7arrCopyPiS_
                                        # -- End function
	.globl	_Z6calSumPii            # -- Begin function _Z6calSumPii
	.p2align	1
	.type	_Z6calSumPii,@function
_Z6calSumPii:                           # @_Z6calSumPii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a2, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	mv	a0, zero
	sw	a0, -32(s0)
	sw	a0, -36(s0)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB7_6
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -32(s0)
	ld	a1, -24(s0)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a0, a1
	sw	a0, -32(s0)
	lw	a0, -36(s0)
	lw	a1, -28(s0)
	rem	a0, a0, a1
	sext.w	a0, a0
	addiw	a1, a1, -1
	beq	a0, a1, .LBB7_4
	j	.LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	mv	a1, zero
	sw	a1, 0(a0)
	j	.LBB7_5
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -32(s0)
	ld	a1, -24(s0)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	mv	a0, zero
	sw	a0, -32(s0)
	j	.LBB7_5
.LBB7_5:                                #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB7_1
.LBB7_6:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end7:
	.size	_Z6calSumPii, .Lfunc_end7-_Z6calSumPii
                                        # -- End function
	.globl	_Z10avgPoolingPii       # -- Begin function _Z10avgPoolingPii
	.p2align	1
	.type	_Z10avgPoolingPii,@function
_Z10avgPoolingPii:                      # @_Z10avgPoolingPii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a2, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	mv	a0, zero
	sw	a0, -36(s0)
	sw	a0, -32(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB8_9
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -36(s0)
	lw	a1, -28(s0)
	addiw	a1, a1, -1
	bge	a0, a1, .LBB8_4
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -32(s0)
	ld	a1, -24(s0)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB8_8
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -36(s0)
	lw	a1, -28(s0)
	addiw	a1, a1, -1
	bne	a0, a1, .LBB8_6
	j	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	sw	a0, -40(s0)
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	divw	a0, a0, a1
	ld	a1, -24(s0)
	sw	a0, 0(a1)
	j	.LBB8_7
.LBB8_6:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -32(s0)
	ld	a1, -24(s0)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, -40(s0)
	sub	a0, a0, a1
	sw	a0, -32(s0)
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	lw	a2, -28(s0)
	sub	a1, a1, a2
	addiw	a1, a1, 1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -40(s0)
	lw	a0, -32(s0)
	lw	a1, -28(s0)
	divw	a0, a0, a1
	ld	a2, -24(s0)
	lw	a3, -36(s0)
	sub	a1, a3, a1
	addiw	a1, a1, 1
	slli	a1, a1, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB8_7
.LBB8_7:                                #   in Loop: Header=BB8_1 Depth=1
	j	.LBB8_8
.LBB8_8:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB8_1
.LBB8_9:
	lui	a0, %hi(n)
	lw	a0, %lo(n)(a0)
	lw	a1, -28(s0)
	sub	a0, a0, a1
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB8_10
.LBB8_10:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lui	a1, %hi(n)
	lw	a1, %lo(n)(a1)
	bge	a0, a1, .LBB8_12
	j	.LBB8_11
.LBB8_11:                               #   in Loop: Header=BB8_10 Depth=1
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	mv	a1, zero
	sw	a1, 0(a0)
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB8_10
.LBB8_12:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end8:
	.size	_Z10avgPoolingPii, .Lfunc_end8-_Z10avgPoolingPii
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -352
	.cfi_def_cfa_offset 352
	sd	ra, 344(sp)
	sd	s0, 336(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 352
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	lui	a1, %hi(n)
	addi	a2, zero, 32
	sw	a2, %lo(n)(a1)
	addi	a1, zero, 7
	sw	a1, -148(s0)
	addi	a1, zero, 23
	sw	a1, -144(s0)
	addi	a1, zero, 89
	sw	a1, -140(s0)
	addi	a1, zero, 26
	sw	a1, -136(s0)
	addi	a1, zero, 282
	sw	a1, -132(s0)
	addi	a1, zero, 254
	sw	a1, -128(s0)
	addi	a1, zero, 27
	sw	a1, -124(s0)
	addi	a1, zero, 5
	sw	a1, -120(s0)
	addi	a1, zero, 83
	sw	a1, -116(s0)
	addi	a1, zero, 273
	sw	a1, -112(s0)
	addi	a1, zero, 574
	sw	a1, -108(s0)
	addi	a1, zero, 905
	sw	a1, -104(s0)
	addi	a1, zero, 354
	sw	a1, -100(s0)
	addi	a1, zero, 657
	sw	a1, -96(s0)
	addi	a1, zero, 935
	sw	a1, -92(s0)
	addi	a1, zero, 264
	sw	a1, -88(s0)
	addi	a1, zero, 639
	sw	a1, -84(s0)
	addi	a1, zero, 459
	sw	a1, -80(s0)
	addi	a1, zero, 29
	sw	a1, -76(s0)
	addi	a1, zero, 68
	sw	a1, -72(s0)
	addi	a1, zero, 929
	sw	a1, -68(s0)
	addi	a1, zero, 756
	sw	a1, -64(s0)
	addi	a1, zero, 452
	sw	a1, -60(s0)
	addi	a1, zero, 279
	sw	a1, -56(s0)
	addi	a1, zero, 58
	sw	a1, -52(s0)
	addi	a1, zero, 87
	sw	a1, -48(s0)
	addi	a1, zero, 96
	sw	a1, -44(s0)
	addi	a1, zero, 36
	sw	a1, -40(s0)
	addi	a1, zero, 39
	sw	a1, -36(s0)
	addi	a1, zero, 28
	sw	a1, -32(s0)
	addi	a1, zero, 1
	sw	a1, -28(s0)
	addi	a1, zero, 290
	sw	a1, -24(s0)
	addi	a1, s0, -148
	addi	a2, s0, -276
	sd	a0, -296(s0)
	add	a0, zero, a1
	add	a1, zero, a2
	sd	a2, -304(s0)
	call	_Z7arrCopyPiS_
	sw	a0, -280(s0)
	ld	a0, -304(s0)
	call	_Z6revertPi
	sw	a0, -280(s0)
	ld	a0, -296(s0)
	sw	a0, -284(s0)
	j	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -284(s0)
	addi	a1, zero, 31
	blt	a1, a0, .LBB9_3
	j	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	lw	a0, -284(s0)
	slli	a0, a0, 2
	addi	a1, s0, -276
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	lw	a0, -284(s0)
	addi	a0, a0, 1
	sw	a0, -284(s0)
	j	.LBB9_1
.LBB9_3:
	addi	a0, s0, -276
	call	_Z10bubblesortPi
	sw	a0, -280(s0)
	mv	a0, zero
	sw	a0, -284(s0)
	j	.LBB9_4
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -284(s0)
	addi	a1, zero, 31
	blt	a1, a0, .LBB9_6
	j	.LBB9_5
.LBB9_5:                                #   in Loop: Header=BB9_4 Depth=1
	lw	a0, -284(s0)
	slli	a0, a0, 2
	addi	a1, s0, -276
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	lw	a0, -284(s0)
	addi	a0, a0, 1
	sw	a0, -284(s0)
	j	.LBB9_4
.LBB9_6:
	addi	a0, s0, -276
	sd	a0, -312(s0)
	call	_Z6getMidPi
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	ld	a0, -312(s0)
	call	_Z7getMostPi
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	addi	a0, s0, -148
	ld	a1, -312(s0)
	call	_Z7arrCopyPiS_
	sw	a0, -280(s0)
	ld	a0, -312(s0)
	call	_Z10bubblesortPi
	sw	a0, -280(s0)
	mv	a0, zero
	sw	a0, -284(s0)
	j	.LBB9_7
.LBB9_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -284(s0)
	addi	a1, zero, 31
	blt	a1, a0, .LBB9_9
	j	.LBB9_8
.LBB9_8:                                #   in Loop: Header=BB9_7 Depth=1
	lw	a0, -284(s0)
	slli	a0, a0, 2
	addi	a1, s0, -276
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	lw	a0, -284(s0)
	addi	a0, a0, 1
	sw	a0, -284(s0)
	j	.LBB9_7
.LBB9_9:
	addi	a0, s0, -148
	addi	a1, s0, -276
	sd	a1, -320(s0)
	call	_Z7arrCopyPiS_
	sw	a0, -280(s0)
	ld	a0, -320(s0)
	call	_Z10insertsortPi
	sw	a0, -280(s0)
	mv	a0, zero
	sw	a0, -284(s0)
	j	.LBB9_10
.LBB9_10:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -284(s0)
	addi	a1, zero, 31
	blt	a1, a0, .LBB9_12
	j	.LBB9_11
.LBB9_11:                               #   in Loop: Header=BB9_10 Depth=1
	lw	a0, -284(s0)
	slli	a0, a0, 2
	addi	a1, s0, -276
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	lw	a0, -284(s0)
	addi	a0, a0, 1
	sw	a0, -284(s0)
	j	.LBB9_10
.LBB9_12:
	addi	a0, s0, -148
	addi	a1, s0, -276
	sd	a1, -328(s0)
	call	_Z7arrCopyPiS_
	sw	a0, -280(s0)
	mv	a0, zero
	sw	a0, -284(s0)
	addi	a0, zero, 31
	sw	a0, -280(s0)
	lw	a1, -284(s0)
	lw	a2, -280(s0)
	ld	a0, -328(s0)
	call	_Z9QuickSortPiii
	sw	a0, -280(s0)
	j	.LBB9_13
.LBB9_13:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -284(s0)
	addi	a1, zero, 31
	blt	a1, a0, .LBB9_15
	j	.LBB9_14
.LBB9_14:                               #   in Loop: Header=BB9_13 Depth=1
	lw	a0, -284(s0)
	slli	a0, a0, 2
	addi	a1, s0, -276
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	lw	a0, -284(s0)
	addi	a0, a0, 1
	sw	a0, -284(s0)
	j	.LBB9_13
.LBB9_15:
	addi	a0, s0, -148
	addi	a1, s0, -276
	sd	a1, -336(s0)
	call	_Z7arrCopyPiS_
	sw	a0, -280(s0)
	addi	a1, zero, 4
	ld	a0, -336(s0)
	call	_Z6calSumPii
	sw	a0, -280(s0)
	mv	a0, zero
	sw	a0, -284(s0)
	j	.LBB9_16
.LBB9_16:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -284(s0)
	addi	a1, zero, 31
	blt	a1, a0, .LBB9_18
	j	.LBB9_17
.LBB9_17:                               #   in Loop: Header=BB9_16 Depth=1
	lw	a0, -284(s0)
	slli	a0, a0, 2
	addi	a1, s0, -276
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	lw	a0, -284(s0)
	addi	a0, a0, 1
	sw	a0, -284(s0)
	j	.LBB9_16
.LBB9_18:
	addi	a0, s0, -148
	addi	a1, s0, -276
	sd	a1, -344(s0)
	call	_Z7arrCopyPiS_
	sw	a0, -280(s0)
	addi	a1, zero, 3
	ld	a0, -344(s0)
	call	_Z10avgPoolingPii
	sw	a0, -280(s0)
	mv	a0, zero
	sw	a0, -284(s0)
	j	.LBB9_19
.LBB9_19:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -284(s0)
	addi	a1, zero, 31
	blt	a1, a0, .LBB9_21
	j	.LBB9_20
.LBB9_20:                               #   in Loop: Header=BB9_19 Depth=1
	lw	a0, -284(s0)
	slli	a0, a0, 2
	addi	a1, s0, -276
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -280(s0)
	lw	a0, -280(s0)
	call	_Z6putinti
	lw	a0, -284(s0)
	addi	a0, a0, 1
	sw	a0, -284(s0)
	j	.LBB9_19
.LBB9_21:
	mv	a0, zero
	ld	s0, 336(sp)
	ld	ra, 344(sp)
	addi	sp, sp, 352
	ret
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
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
	.addrsig_sym _Z10bubblesortPi
	.addrsig_sym _Z10insertsortPi
	.addrsig_sym _Z9QuickSortPiii
	.addrsig_sym _Z6getMidPi
	.addrsig_sym _Z7getMostPi
	.addrsig_sym _Z6revertPi
	.addrsig_sym _Z7arrCopyPiS_
	.addrsig_sym _Z6calSumPii
	.addrsig_sym _Z10avgPoolingPii
	.addrsig_sym _Z6putinti
	.addrsig_sym n
