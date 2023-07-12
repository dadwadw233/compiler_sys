	.text
	.file	"63_simple_atoi.c"
	.globl	_Z5atoi_Pi              # -- Begin function _Z5atoi_Pi
	.p2align	1
	.type	_Z5atoi_Pi,@function
_Z5atoi_Pi:                             # @_Z5atoi_Pi
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	sd	a0, -32(s0)
	mv	a0, zero
	sw	a0, -36(s0)
	addi	a1, zero, 1
	sw	a1, -40(s0)
	sw	a0, -44(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a1, zero, 32
	bne	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB0_1
.LBB0_3:
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a1, zero, 43
	beq	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB0_8
	j	.LBB0_5
.LBB0_5:
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a1, zero, 45
	bne	a0, a1, .LBB0_7
	j	.LBB0_6
.LBB0_6:
	addi	a0, zero, 1
	slli	a0, a0, 32
	addi	a0, a0, -1
	sw	a0, -40(s0)
	j	.LBB0_7
.LBB0_7:
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB0_12
.LBB0_8:
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a1, zero, 48
	blt	a0, a1, .LBB0_10
	j	.LBB0_9
.LBB0_9:
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	addi	a1, zero, 58
	blt	a0, a1, .LBB0_11
	j	.LBB0_10
.LBB0_10:
	lui	a0, 524288
	addiw	a0, a0, -1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	sw	a0, -20(s0)
	j	.LBB0_19
.LBB0_11:
	j	.LBB0_12
.LBB0_12:
	j	.LBB0_13
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	mv	a1, zero
	add	a2, zero, a1
	sd	a2, -56(s0)
	beq	a0, a1, .LBB0_16
	j	.LBB0_14
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	mv	a1, zero
	addi	a2, zero, 48
	sd	a1, -56(s0)
	blt	a0, a2, .LBB0_16
	j	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_13 Depth=1
	ld	a0, -32(s0)
	lw	a1, -44(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	slti	a0, a0, 58
	sd	a0, -56(s0)
	j	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=1
	ld	a0, -56(s0)
	andi	a0, a0, 1
	mv	a1, zero
	beq	a0, a1, .LBB0_18
	j	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=1
	lw	a0, -36(s0)
	addi	a1, zero, 10
	mul	a0, a0, a1
	ld	a1, -32(s0)
	lw	a2, -44(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a0, a1
	addi	a0, a0, -48
	sw	a0, -36(s0)
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB0_13
.LBB0_18:
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	mul	a0, a0, a1
	sw	a0, -20(s0)
	j	.LBB0_19
.LBB0_19:
	lw	a0, -20(s0)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	_Z5atoi_Pi, .Lfunc_end0-_Z5atoi_Pi
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -2032
	.cfi_def_cfa_offset 2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 2032
	.cfi_def_cfa s0, 0
	addi	sp, sp, -16
	mv	a0, zero
	sw	a0, -28(s0)
	sw	a0, -2032(s0)
	sw	a0, -2036(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -2032(s0)
	addi	a1, zero, 10
	beq	a0, a1, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	call	_Z5getchv
	sw	a0, -2032(s0)
	lw	a0, -2032(s0)
	lw	a1, -2036(s0)
	slli	a1, a1, 2
	addi	a2, s0, -2028
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -2036(s0)
	addi	a0, a0, 1
	sw	a0, -2036(s0)
	j	.LBB1_1
.LBB1_3:
	lw	a0, -2036(s0)
	slli	a0, a0, 2
	addi	a1, s0, -2028
	add	a0, a0, a1
	mv	a2, zero
	sw	a2, 0(a0)
	add	a0, zero, a1
	sd	a2, -2048(s0)
	call	_Z5atoi_Pi
	sw	a0, -2036(s0)
	lw	a0, -2036(s0)
	call	_Z6putinti
	ld	a0, -2048(s0)
	addi	sp, sp, 16
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z5atoi_Pi
	.addrsig_sym _Z5getchv
	.addrsig_sym _Z6putinti
