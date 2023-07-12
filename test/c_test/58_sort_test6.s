	.text
	.file	"58_sort_test6.c"
	.globl	_Z13counting_sortPiS_i  # -- Begin function _Z13counting_sortPiS_i
	.p2align	1
	.type	_Z13counting_sortPiS_i,@function
_Z13counting_sortPiS_i:                 # @_Z13counting_sortPiS_i
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	addi	s0, sp, 96
	add	a3, zero, a2
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
	mv	a0, zero
	sw	a0, -88(s0)
	sw	a0, -80(s0)
	sw	a0, -84(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -88(s0)
	addi	a1, zero, 9
	blt	a1, a0, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -88(s0)
	slli	a0, a0, 2
	addi	a1, s0, -76
	add	a0, a0, a1
	mv	a1, zero
	sw	a1, 0(a0)
	lw	a0, -88(s0)
	addi	a0, a0, 1
	sw	a0, -88(s0)
	j	.LBB0_1
.LBB0_3:
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -80(s0)
	lw	a1, -36(s0)
	bge	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	ld	a0, -24(s0)
	lw	a1, -80(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, s0, -76
	add	a0, a0, a1
	lw	a1, 0(a0)
	addi	a1, a1, 1
	sw	a1, 0(a0)
	lw	a0, -80(s0)
	addi	a0, a0, 1
	sw	a0, -80(s0)
	j	.LBB0_4
.LBB0_6:
	addi	a0, zero, 1
	sw	a0, -88(s0)
	j	.LBB0_7
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -88(s0)
	addi	a1, zero, 9
	blt	a1, a0, .LBB0_9
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=1
	lw	a0, -88(s0)
	slli	a1, a0, 2
	addi	a2, s0, -76
	add	a1, a1, a2
	lw	a3, 0(a1)
	addiw	a0, a0, -1
	slli	a0, a0, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	add	a0, a0, a3
	sw	a0, 0(a1)
	lw	a0, -88(s0)
	addi	a0, a0, 1
	sw	a0, -88(s0)
	j	.LBB0_7
.LBB0_9:
	lw	a0, -36(s0)
	sw	a0, -84(s0)
	j	.LBB0_10
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -84(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB0_12
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_10 Depth=1
	ld	a0, -24(s0)
	lw	a1, -84(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	slli	a0, a0, 2
	addi	a1, s0, -76
	add	a0, a0, a1
	lw	a2, 0(a0)
	addi	a2, a2, -1
	sw	a2, 0(a0)
	ld	a0, -24(s0)
	lw	a2, -84(s0)
	addiw	a2, a2, -1
	slli	a2, a2, 2
	add	a0, a0, a2
	ld	a2, -32(s0)
	lw	a0, 0(a0)
	slli	a3, a0, 2
	add	a1, a1, a3
	lw	a1, 0(a1)
	slli	a1, a1, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -84(s0)
	addi	a0, a0, -1
	sw	a0, -84(s0)
	j	.LBB0_10
.LBB0_12:
	mv	a0, zero
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	_Z13counting_sortPiS_i, .Lfunc_end0-_Z13counting_sortPiS_i
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -112
	.cfi_def_cfa_offset 112
	sd	ra, 104(sp)
	sd	s0, 96(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 112
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
	lw	a2, %lo(n)(a1)
	addi	a0, s0, -60
	addi	a1, s0, -104
	call	_Z13counting_sortPiS_i
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
	addi	a1, s0, -104
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -108(s0)
	lw	a0, -108(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -108(s0)
	lw	a0, -108(s0)
	call	_Z5putchi
	lw	a0, -64(s0)
	addi	a0, a0, 1
	sw	a0, -64(s0)
	j	.LBB1_1
.LBB1_3:
	mv	a0, zero
	ld	s0, 96(sp)
	ld	ra, 104(sp)
	addi	sp, sp, 112
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
	.addrsig_sym _Z13counting_sortPiS_i
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym n
