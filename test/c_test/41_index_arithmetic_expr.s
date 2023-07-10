	.text
	.file	"41_index_arithmetic_expr.c"
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
	addi	a1, zero, 56
	sw	a1, -24(s0)
	addi	a1, zero, 12
	sw	a1, -28(s0)
	addi	a1, zero, 1
	sw	a1, -40(s0)
	addi	a1, zero, 2
	sw	a1, -36(s0)
	addi	a1, zero, 3
	sw	a1, -32(s0)
	lw	a1, -24(s0)
	lw	a2, -28(s0)
	rem	a1, a1, a2
	addw	a1, a1, a2
	lui	a2, 13107
	addiw	a2, a2, 819
	slli	a2, a2, 12
	addi	a2, a2, 819
	slli	a2, a2, 12
	addi	a2, a2, 819
	slli	a2, a2, 13
	addi	a2, a2, 1639
	mulh	a1, a1, a2
	srli	a2, a1, 63
	srli	a1, a1, 1
	add	a1, a1, a2
	addiw	a1, a1, -2
	slli	a1, a1, 2
	addi	a2, s0, -40
	add	a1, a1, a2
	lw	a1, 0(a1)
	sw	a1, -44(s0)
	lw	a1, -44(s0)
	sd	a0, -56(s0)
	add	a0, zero, a1
	call	_Z6putinti
	ld	a0, -56(s0)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6putinti
