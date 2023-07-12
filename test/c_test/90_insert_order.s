	.text
	.file	"90_insert_order.c"
	.globl	_Z6insertPii            # -- Begin function _Z6insertPii
	.p2align	1
	.type	_Z6insertPii,@function
_Z6insertPii:                           # @_Z6insertPii
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
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	ld	a1, -24(s0)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	mv	a2, zero
	sd	a2, -48(s0)
	bge	a1, a0, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -32(s0)
	lui	a1, %hi(N)
	lw	a1, %lo(N)(a1)
	slt	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -48(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_1
.LBB0_5:
	lui	a0, %hi(N)
	lw	a0, %lo(N)(a0)
	sw	a0, -36(s0)
	j	.LBB0_6
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lw	a1, -32(s0)
	bge	a1, a0, .LBB0_8
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=1
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	addiw	a2, a1, -1
	slli	a2, a2, 2
	add	a2, a2, a0
	lw	a2, 0(a2)
	slli	a1, a1, 2
	add	a0, a0, a1
	sw	a2, 0(a0)
	lw	a0, -28(s0)
	ld	a1, -24(s0)
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -36(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	j	.LBB0_6
.LBB0_8:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z6insertPii, .Lfunc_end0-_Z6insertPii
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
	lui	a1, %hi(N)
	addi	a2, zero, 10
	sw	a2, %lo(N)(a1)
	addi	a1, zero, 1
	sw	a1, -64(s0)
	addi	a1, zero, 3
	sw	a1, -60(s0)
	addi	a1, zero, 4
	sw	a1, -56(s0)
	addi	a1, zero, 7
	sw	a1, -52(s0)
	addi	a1, zero, 8
	sw	a1, -48(s0)
	addi	a1, zero, 11
	sw	a1, -44(s0)
	addi	a1, zero, 13
	sw	a1, -40(s0)
	addi	a1, zero, 18
	sw	a1, -36(s0)
	addi	a1, zero, 56
	sw	a1, -32(s0)
	addi	a1, zero, 78
	sw	a1, -28(s0)
	sw	a0, -72(s0)
	call	_Z6getintv
	sw	a0, -68(s0)
	lw	a1, -68(s0)
	addi	a0, s0, -64
	call	_Z6insertPii
	sw	a0, -68(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -72(s0)
	lui	a1, %hi(N)
	lw	a1, %lo(N)(a1)
	bge	a0, a1, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -72(s0)
	slli	a0, a0, 2
	addi	a1, s0, -64
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -68(s0)
	lw	a0, -68(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -68(s0)
	lw	a0, -68(s0)
	call	_Z5putchi
	lw	a0, -72(s0)
	addi	a0, a0, 1
	sw	a0, -72(s0)
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
	.type	N,@object               # @N
	.section	.sbss,"aw",@nobits
	.globl	N
	.p2align	2
N:
	.word	0                       # 0x0
	.size	N, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6insertPii
	.addrsig_sym _Z6getintv
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym N
