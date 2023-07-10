	.text
	.file	"99_register_realloc.c"
	.globl	_Z4funcii               # -- Begin function _Z4funcii
	.p2align	1
	.type	_Z4funcii,@function
_Z4funcii:                              # @_Z4funcii
# %bb.0:
	addi	sp, sp, -176
	sd	ra, 168(sp)
	sd	s0, 160(sp)
	addi	s0, sp, 176
	add	a2, zero, a1
	add	a3, zero, a0
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	addi	a0, zero, 1
	sw	a0, -32(s0)
	addi	a0, zero, 2
	sw	a0, -36(s0)
	addi	a0, zero, 3
	sw	a0, -40(s0)
	addi	a0, zero, 4
	sw	a0, -44(s0)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	lw	a0, -36(s0)
	addi	a0, a0, 2
	sw	a0, -52(s0)
	lw	a0, -40(s0)
	addi	a0, a0, 3
	sw	a0, -56(s0)
	lw	a0, -44(s0)
	addi	a0, a0, 4
	sw	a0, -60(s0)
	lw	a0, -48(s0)
	addi	a0, a0, 1
	sw	a0, -64(s0)
	lw	a0, -52(s0)
	addi	a0, a0, 2
	sw	a0, -68(s0)
	lw	a0, -56(s0)
	addi	a0, a0, 3
	sw	a0, -72(s0)
	lw	a0, -60(s0)
	addi	a0, a0, 4
	sw	a0, -76(s0)
	lw	a0, -64(s0)
	addi	a0, a0, 1
	sw	a0, -80(s0)
	lw	a0, -68(s0)
	addi	a0, a0, 2
	sw	a0, -84(s0)
	lw	a0, -72(s0)
	addi	a0, a0, 3
	sw	a0, -88(s0)
	lw	a0, -76(s0)
	addi	a0, a0, 4
	sw	a0, -92(s0)
	lw	a0, -80(s0)
	addi	a0, a0, 1
	sw	a0, -96(s0)
	lw	a0, -84(s0)
	addi	a0, a0, 2
	sw	a0, -100(s0)
	lw	a0, -88(s0)
	addi	a0, a0, 3
	sw	a0, -104(s0)
	lw	a0, -92(s0)
	addi	a0, a0, 4
	sw	a0, -108(s0)
	lw	a0, -96(s0)
	addi	a0, a0, 1
	sw	a0, -112(s0)
	lw	a0, -100(s0)
	addi	a0, a0, 2
	sw	a0, -116(s0)
	lw	a0, -104(s0)
	addi	a0, a0, 3
	sw	a0, -120(s0)
	lw	a0, -108(s0)
	addi	a0, a0, 4
	sw	a0, -124(s0)
	lw	a0, -112(s0)
	addi	a0, a0, 1
	sw	a0, -128(s0)
	lw	a0, -116(s0)
	addi	a0, a0, 2
	sw	a0, -132(s0)
	lw	a0, -120(s0)
	addi	a0, a0, 3
	sw	a0, -136(s0)
	lw	a0, -124(s0)
	addi	a0, a0, 4
	sw	a0, -140(s0)
	lw	a0, -128(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	lw	a0, -132(s0)
	addi	a0, a0, 2
	sw	a0, -148(s0)
	lw	a0, -136(s0)
	addi	a0, a0, 3
	sw	a0, -152(s0)
	lw	a0, -140(s0)
	addi	a0, a0, 4
	sw	a0, -156(s0)
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -160(s0)
	lw	a0, -148(s0)
	addi	a0, a0, 2
	sw	a0, -164(s0)
	lw	a0, -152(s0)
	addi	a0, a0, 3
	sw	a0, -168(s0)
	lw	a0, -156(s0)
	addi	a0, a0, 4
	sw	a0, -172(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	sub	a0, a0, a1
	addi	a0, a0, 10
	sw	a0, -28(s0)
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -160(s0)
	lw	a0, -148(s0)
	addi	a0, a0, 2
	sw	a0, -164(s0)
	lw	a0, -152(s0)
	addi	a0, a0, 3
	sw	a0, -168(s0)
	lw	a0, -156(s0)
	addi	a0, a0, 4
	sw	a0, -172(s0)
	lw	a0, -128(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	lw	a0, -132(s0)
	addi	a0, a0, 2
	sw	a0, -148(s0)
	lw	a0, -136(s0)
	addi	a0, a0, 3
	sw	a0, -152(s0)
	lw	a0, -140(s0)
	addi	a0, a0, 4
	sw	a0, -156(s0)
	lw	a0, -112(s0)
	addi	a0, a0, 1
	sw	a0, -128(s0)
	lw	a0, -116(s0)
	addi	a0, a0, 2
	sw	a0, -132(s0)
	lw	a0, -120(s0)
	addi	a0, a0, 3
	sw	a0, -136(s0)
	lw	a0, -124(s0)
	addi	a0, a0, 4
	sw	a0, -140(s0)
	lw	a0, -96(s0)
	addi	a0, a0, 1
	sw	a0, -112(s0)
	lw	a0, -100(s0)
	addi	a0, a0, 2
	sw	a0, -116(s0)
	lw	a0, -104(s0)
	addi	a0, a0, 3
	sw	a0, -120(s0)
	lw	a0, -108(s0)
	addi	a0, a0, 4
	sw	a0, -124(s0)
	lw	a0, -80(s0)
	addi	a0, a0, 1
	sw	a0, -96(s0)
	lw	a0, -84(s0)
	addi	a0, a0, 2
	sw	a0, -100(s0)
	lw	a0, -88(s0)
	addi	a0, a0, 3
	sw	a0, -104(s0)
	lw	a0, -92(s0)
	addi	a0, a0, 4
	sw	a0, -108(s0)
	lw	a0, -64(s0)
	addi	a0, a0, 1
	sw	a0, -80(s0)
	lw	a0, -68(s0)
	addi	a0, a0, 2
	sw	a0, -84(s0)
	lw	a0, -72(s0)
	addi	a0, a0, 3
	sw	a0, -88(s0)
	lw	a0, -76(s0)
	addi	a0, a0, 4
	sw	a0, -92(s0)
	lw	a0, -48(s0)
	addi	a0, a0, 1
	sw	a0, -64(s0)
	lw	a0, -52(s0)
	addi	a0, a0, 2
	sw	a0, -68(s0)
	lw	a0, -56(s0)
	addi	a0, a0, 3
	sw	a0, -72(s0)
	lw	a0, -60(s0)
	addi	a0, a0, 4
	sw	a0, -76(s0)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -48(s0)
	lw	a0, -36(s0)
	addi	a0, a0, 2
	sw	a0, -52(s0)
	lw	a0, -40(s0)
	addi	a0, a0, 3
	sw	a0, -56(s0)
	lw	a0, -44(s0)
	addi	a0, a0, 4
	sw	a0, -60(s0)
	lw	a0, -160(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	lw	a0, -164(s0)
	addi	a0, a0, 2
	sw	a0, -36(s0)
	lw	a0, -168(s0)
	addi	a0, a0, 3
	sw	a0, -40(s0)
	lw	a0, -172(s0)
	addi	a0, a0, 4
	sw	a0, -44(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	addw	a0, a0, a1
	lw	a1, -36(s0)
	add	a0, a0, a1
	lw	a1, -40(s0)
	add	a0, a0, a1
	lw	a1, -44(s0)
	add	a0, a0, a1
	lw	a1, -48(s0)
	sub	a0, a0, a1
	lw	a1, -52(s0)
	subw	a0, a0, a1
	lw	a1, -56(s0)
	sub	a0, a0, a1
	lw	a1, -60(s0)
	sub	a0, a0, a1
	lw	a1, -64(s0)
	add	a0, a0, a1
	lw	a1, -68(s0)
	add	a0, a0, a1
	lw	a1, -72(s0)
	addw	a0, a0, a1
	lw	a1, -76(s0)
	add	a0, a0, a1
	lw	a1, -80(s0)
	sub	a0, a0, a1
	lw	a1, -84(s0)
	sub	a0, a0, a1
	lw	a1, -88(s0)
	sub	a0, a0, a1
	lw	a1, -92(s0)
	subw	a0, a0, a1
	lw	a1, -96(s0)
	add	a0, a0, a1
	lw	a1, -100(s0)
	add	a0, a0, a1
	lw	a1, -104(s0)
	add	a0, a0, a1
	lw	a1, -108(s0)
	add	a0, a0, a1
	lw	a1, -112(s0)
	subw	a0, a0, a1
	lw	a1, -116(s0)
	sub	a0, a0, a1
	lw	a1, -120(s0)
	sub	a0, a0, a1
	lw	a1, -124(s0)
	sub	a0, a0, a1
	lw	a1, -128(s0)
	add	a0, a0, a1
	lw	a1, -132(s0)
	addw	a0, a0, a1
	lw	a1, -136(s0)
	add	a0, a0, a1
	lw	a1, -140(s0)
	add	a0, a0, a1
	lw	a1, -144(s0)
	sub	a0, a0, a1
	lw	a1, -148(s0)
	sub	a0, a0, a1
	lw	a1, -152(s0)
	subw	a0, a0, a1
	lw	a1, -156(s0)
	sub	a0, a0, a1
	lw	a1, -160(s0)
	add	a0, a0, a1
	lw	a1, -164(s0)
	add	a0, a0, a1
	lw	a1, -168(s0)
	add	a0, a0, a1
	lw	a1, -172(s0)
	addw	a0, a0, a1
	ld	s0, 160(sp)
	ld	ra, 168(sp)
	addi	sp, sp, 176
	ret
.Lfunc_end0:
	.size	_Z4funcii, .Lfunc_end0-_Z4funcii
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a0, zero, 1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 18
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	_Z4funcii
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z4funcii
