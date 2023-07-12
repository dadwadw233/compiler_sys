	.text
	.file	"53_sort_test1.c"
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
	addi	a1, zero, 2
	sw	a1, -48(s0)
	sw	a0, -44(s0)
	addi	a0, zero, 1
	sw	a0, -40(s0)
	addi	a0, zero, 6
	sw	a0, -36(s0)
	addi	a0, zero, 5
	sw	a0, -32(s0)
	addi	a0, zero, 7
	sw	a0, -28(s0)
	addi	a0, zero, 8
	sw	a0, -24(s0)
	addi	a0, s0, -60
	call	_Z10bubblesortPi
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
	.addrsig_sym _Z10bubblesortPi
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym n
