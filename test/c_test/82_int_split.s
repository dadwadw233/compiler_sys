	.text
	.file	"82_int_split.c"
	.globl	_Z5splitiPi             # -- Begin function _Z5splitiPi
	.p2align	1
	.type	_Z5splitiPi,@function
_Z5splitiPi:                            # @_Z5splitiPi
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a2, zero, a0
	sw	a0, -20(s0)
	sd	a1, -32(s0)
	lui	a0, %hi(N)
	lw	a0, %lo(N)(a0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addi	a1, zero, -1
	beq	a0, a1, .LBB0_3
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
	ld	a2, -32(s0)
	lw	a3, -36(s0)
	slli	a3, a3, 2
	add	a2, a2, a3
	sw	a0, 0(a2)
	lw	a0, -20(s0)
	mulh	a0, a0, a1
	srli	a1, a0, 63
	srli	a0, a0, 2
	add	a0, a0, a1
	sw	a0, -20(s0)
	lw	a0, -36(s0)
	addi	a0, a0, -1
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_3:
	mv	a0, zero
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z5splitiPi, .Lfunc_end0-_Z5splitiPi
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
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
	mv	a0, zero
	sw	a0, -20(s0)
	lui	a1, %hi(N)
	addi	a2, zero, 4
	sw	a2, %lo(N)(a1)
	lui	a1, %hi(newline)
	addi	a2, zero, 10
	sw	a2, %lo(newline)(a1)
	addi	a1, zero, 1478
	sw	a1, -28(s0)
	lw	a1, -28(s0)
	addi	a2, s0, -44
	sd	a0, -56(s0)
	add	a0, zero, a1
	add	a1, zero, a2
	call	_Z5splitiPi
	sw	a0, -28(s0)
	ld	a0, -56(s0)
	sw	a0, -24(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 3
	blt	a1, a0, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -24(s0)
	slli	a0, a0, 2
	addi	a1, s0, -44
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -48(s0)
	lw	a0, -48(s0)
	call	_Z6putinti
	lui	a0, %hi(newline)
	lw	a0, %lo(newline)(a0)
	call	_Z5putchi
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB1_1
.LBB1_3:
	mv	a0, zero
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
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

	.type	newline,@object         # @newline
	.globl	newline
	.p2align	2
newline:
	.word	0                       # 0x0
	.size	newline, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z5splitiPi
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym N
	.addrsig_sym newline
