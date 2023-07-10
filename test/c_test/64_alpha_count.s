	.text
	.file	"64_alpha_count.c"
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
	sw	a0, -2040(s0)
	sw	a0, -2036(s0)
	sw	a0, -2032(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -2032(s0)
	addi	a1, zero, 10
	beq	a0, a1, .LBB0_8
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	call	_Z5getchv
	sw	a0, -2032(s0)
	lw	a0, -2032(s0)
	addi	a1, zero, 41
	blt	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -2032(s0)
	addi	a1, zero, 91
	blt	a0, a1, .LBB0_6
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -2032(s0)
	addi	a1, zero, 97
	blt	a0, a1, .LBB0_7
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -2032(s0)
	addi	a1, zero, 122
	blt	a1, a0, .LBB0_7
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -2040(s0)
	addi	a0, a0, 1
	sw	a0, -2040(s0)
	j	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -2036(s0)
	addi	a0, a0, 1
	sw	a0, -2036(s0)
	j	.LBB0_1
.LBB0_8:
	lw	a0, -2040(s0)
	call	_Z6putinti
	mv	a0, zero
	addi	sp, sp, 16
	ld	s0, 2016(sp)
	ld	ra, 2024(sp)
	addi	sp, sp, 2032
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z5getchv
	.addrsig_sym _Z6putinti
