	.text
	.file	"73_exchange_value.c"
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
	sd	a0, -40(s0)
	call	_Z6getintv
	sw	a0, -24(s0)
	call	_Z6getintv
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	sw	a0, -24(s0)
	lw	a0, -32(s0)
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -32(s0)
	lw	a1, -32(s0)
	sd	a0, -48(s0)
	add	a0, zero, a1
	call	_Z5putchi
	lw	a0, -28(s0)
	call	_Z6putinti
	ld	a0, -48(s0)
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	call	_Z5putchi
	ld	a0, -40(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	.addrsig_sym _Z6getintv
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
