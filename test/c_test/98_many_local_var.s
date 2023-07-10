	.text
	.file	"98_many_local_var.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)
	sd	s0, 144(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 160
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	call	_Z6getintv
	sw	a0, -144(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -144(s0)
	addi	a1, zero, 5
	bne	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	j	.LBB0_1
.LBB0_3:
	mv	a0, zero
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	lw	a0, -48(s0)
	addi	a0, a0, 1
	sw	a0, -52(s0)
	lw	a0, -52(s0)
	addi	a0, a0, 1
	sw	a0, -56(s0)
	lw	a0, -56(s0)
	addi	a0, a0, 1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	addi	a0, a0, 1
	sw	a0, -64(s0)
	lw	a0, -64(s0)
	addi	a0, a0, 1
	sw	a0, -68(s0)
	lw	a0, -68(s0)
	addi	a0, a0, 1
	sw	a0, -72(s0)
	lw	a0, -72(s0)
	addi	a0, a0, 1
	sw	a0, -76(s0)
	lw	a0, -76(s0)
	addi	a0, a0, 1
	sw	a0, -80(s0)
	lw	a0, -80(s0)
	addi	a0, a0, 1
	sw	a0, -84(s0)
	lw	a0, -84(s0)
	addi	a0, a0, 1
	sw	a0, -88(s0)
	lw	a0, -88(s0)
	addi	a0, a0, 1
	sw	a0, -92(s0)
	lw	a0, -92(s0)
	addi	a0, a0, 1
	sw	a0, -96(s0)
	lw	a0, -96(s0)
	addi	a0, a0, 1
	sw	a0, -100(s0)
	lw	a0, -100(s0)
	addi	a0, a0, 1
	sw	a0, -104(s0)
	lw	a0, -104(s0)
	addi	a0, a0, 1
	sw	a0, -108(s0)
	lw	a0, -108(s0)
	addi	a0, a0, 1
	sw	a0, -112(s0)
	lw	a0, -112(s0)
	addi	a0, a0, 1
	sw	a0, -116(s0)
	lw	a0, -116(s0)
	addi	a0, a0, 1
	sw	a0, -120(s0)
	lw	a0, -120(s0)
	addi	a0, a0, 1
	sw	a0, -124(s0)
	lw	a0, -124(s0)
	addi	a0, a0, 1
	sw	a0, -128(s0)
	lw	a0, -128(s0)
	addi	a0, a0, 1
	sw	a0, -132(s0)
	lw	a0, -132(s0)
	addi	a0, a0, 1
	sw	a0, -136(s0)
	lw	a0, -136(s0)
	addi	a0, a0, 1
	sw	a0, -140(s0)
	lw	a0, -24(s0)
	call	_Z6putinti
	lw	a0, -28(s0)
	call	_Z6putinti
	lw	a0, -32(s0)
	call	_Z6putinti
	lw	a0, -36(s0)
	call	_Z6putinti
	lw	a0, -40(s0)
	call	_Z6putinti
	lw	a0, -44(s0)
	call	_Z6putinti
	lw	a0, -48(s0)
	call	_Z6putinti
	lw	a0, -52(s0)
	call	_Z6putinti
	lw	a0, -56(s0)
	call	_Z6putinti
	lw	a0, -60(s0)
	call	_Z6putinti
	lw	a0, -64(s0)
	call	_Z6putinti
	lw	a0, -68(s0)
	call	_Z6putinti
	lw	a0, -72(s0)
	call	_Z6putinti
	lw	a0, -76(s0)
	call	_Z6putinti
	lw	a0, -80(s0)
	call	_Z6putinti
	lw	a0, -84(s0)
	call	_Z6putinti
	lw	a0, -88(s0)
	call	_Z6putinti
	lw	a0, -92(s0)
	call	_Z6putinti
	lw	a0, -96(s0)
	call	_Z6putinti
	lw	a0, -100(s0)
	call	_Z6putinti
	lw	a0, -104(s0)
	call	_Z6putinti
	lw	a0, -108(s0)
	call	_Z6putinti
	lw	a0, -112(s0)
	call	_Z6putinti
	lw	a0, -116(s0)
	call	_Z6putinti
	lw	a0, -120(s0)
	call	_Z6putinti
	lw	a0, -124(s0)
	call	_Z6putinti
	lw	a0, -128(s0)
	call	_Z6putinti
	lw	a0, -132(s0)
	call	_Z6putinti
	lw	a0, -136(s0)
	call	_Z6putinti
	lw	a0, -140(s0)
	call	_Z6putinti
	addi	a0, zero, 10
	sw	a0, -152(s0)
	lw	a0, -152(s0)
	call	_Z5putchi
	lw	a0, -144(s0)
	call	_Z6putinti
	lw	a0, -152(s0)
	call	_Z5putchi
	lw	a0, -124(s0)
	ld	s0, 144(sp)
	ld	ra, 152(sp)
	addi	sp, sp, 160
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
