	.text
	.file	"47_minus_with_sub.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a1, zero, 1
	slli	a2, a1, 32
	addi	a2, a2, -2
	sw	a2, -24(s0)
	sw	a1, -28(s0)
	lw	a1, -24(s0)
	lw	a2, -28(s0)
	add	a3, a1, a2
	sub	a4, a0, a3
	sub	a1, a2, a1
	remw	a1, a4, a1
	add	a1, a1, a3
	sw	a1, -24(s0)
	lw	a1, -24(s0)
	sd	a0, -40(s0)
	add	a0, zero, a1
	call	_Z6putinti
	ld	a0, -40(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6putinti
