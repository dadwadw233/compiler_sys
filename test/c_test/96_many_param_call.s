	.text
	.file	"96_many_param_call.c"
	.globl	_Z10testParam8iiiiiiii  # -- Begin function _Z10testParam8iiiiiiii
	.p2align	1
	.type	_Z10testParam8iiiiiiii,@function
_Z10testParam8iiiiiiii:                 # @_Z10testParam8iiiiiiii
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	sd	s1, 40(sp)
	addi	s0, sp, 64
	add	t0, zero, a7
	add	t1, zero, a6
	add	t2, zero, a5
	add	t3, zero, a4
	add	t4, zero, a3
	add	t5, zero, a2
	add	t6, zero, a1
	add	s1, zero, a0
	sw	a0, -28(s0)
	sw	a1, -32(s0)
	sw	a2, -36(s0)
	sw	a3, -40(s0)
	sw	a4, -44(s0)
	sw	a5, -48(s0)
	sw	a6, -52(s0)
	sw	a7, -56(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	add	a0, a0, a1
	lw	a1, -36(s0)
	subw	a0, a0, a1
	lw	a1, -40(s0)
	sub	a0, a0, a1
	lw	a1, -44(s0)
	sub	a0, a0, a1
	lw	a1, -48(s0)
	add	a0, a0, a1
	lw	a1, -52(s0)
	add	a0, a0, a1
	lw	a1, -56(s0)
	addw	a0, a0, a1
	ld	s1, 40(sp)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	_Z10testParam8iiiiiiii, .Lfunc_end0-_Z10testParam8iiiiiiii
                                        # -- End function
	.globl	_Z11testParam16iiiiiiiiiiiiiiii # -- Begin function _Z11testParam16iiiiiiiiiiiiiiii
	.p2align	1
	.type	_Z11testParam16iiiiiiiiiiiiiiii,@function
_Z11testParam16iiiiiiiiiiiiiiii:        # @_Z11testParam16iiiiiiiiiiiiiiii
# %bb.0:
	addi	sp, sp, -160
	sd	ra, 152(sp)
	sd	s0, 144(sp)
	sd	s1, 136(sp)
	sd	s2, 128(sp)
	sd	s3, 120(sp)
	sd	s4, 112(sp)
	sd	s5, 104(sp)
	sd	s6, 96(sp)
	sd	s7, 88(sp)
	sd	s8, 80(sp)
	sd	s9, 72(sp)
	addi	s0, sp, 160
	ld	t0, 56(s0)
	ld	t1, 48(s0)
	ld	t2, 40(s0)
	ld	t3, 32(s0)
	ld	t4, 24(s0)
	ld	t5, 16(s0)
	ld	t6, 8(s0)
	ld	s1, 0(s0)
	add	s2, zero, a7
	add	s3, zero, a6
	add	s4, zero, a5
	add	s5, zero, a4
	add	s6, zero, a3
	add	s7, zero, a2
	add	s8, zero, a1
	add	s9, zero, a0
	sw	a0, -92(s0)
	sw	a1, -96(s0)
	sw	a2, -100(s0)
	sw	a3, -104(s0)
	sw	a4, -108(s0)
	sw	a5, -112(s0)
	sw	a6, -116(s0)
	sw	a7, -120(s0)
	sw	s1, -124(s0)
	sw	t6, -128(s0)
	sw	t5, -132(s0)
	sw	t4, -136(s0)
	sw	t3, -140(s0)
	sw	t2, -144(s0)
	sw	t1, -148(s0)
	sw	t0, -152(s0)
	lw	a0, -92(s0)
	lw	a1, -96(s0)
	add	a0, a0, a1
	lw	a1, -100(s0)
	add	a0, a0, a1
	lw	a1, -104(s0)
	add	a0, a0, a1
	lw	a1, -108(s0)
	add	a0, a0, a1
	lw	a1, -112(s0)
	addw	a0, a0, a1
	lw	a1, -116(s0)
	add	a0, a0, a1
	lw	a1, -120(s0)
	add	a0, a0, a1
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
	add	a0, a0, a1
	lw	a1, -148(s0)
	add	a0, a0, a1
	lw	a1, -152(s0)
	addw	a0, a0, a1
	ld	s9, 72(sp)
	ld	s8, 80(sp)
	ld	s7, 88(sp)
	ld	s6, 96(sp)
	ld	s5, 104(sp)
	ld	s4, 112(sp)
	ld	s3, 120(sp)
	ld	s2, 128(sp)
	ld	s1, 136(sp)
	ld	s0, 144(sp)
	ld	ra, 152(sp)
	addi	sp, sp, 160
	ret
.Lfunc_end1:
	.size	_Z11testParam16iiiiiiiiiiiiiiii, .Lfunc_end1-_Z11testParam16iiiiiiiiiiiiiiii
                                        # -- End function
	.globl	_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii # -- Begin function _Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
	.p2align	1
	.type	_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii,@function
_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii: # @_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
# %bb.0:
	addi	sp, sp, -352
	sd	ra, 344(sp)
	sd	s0, 336(sp)
	sd	s1, 328(sp)
	sd	s2, 320(sp)
	sd	s3, 312(sp)
	sd	s4, 304(sp)
	sd	s5, 296(sp)
	sd	s6, 288(sp)
	sd	s7, 280(sp)
	sd	s8, 272(sp)
	sd	s9, 264(sp)
	sd	s10, 256(sp)
	sd	s11, 248(sp)
	addi	s0, sp, 352
	ld	t0, 184(s0)
	ld	t1, 176(s0)
	ld	t2, 168(s0)
	ld	t3, 160(s0)
	ld	t4, 152(s0)
	ld	t5, 144(s0)
	ld	t6, 136(s0)
	ld	s1, 128(s0)
	ld	s2, 120(s0)
	ld	s3, 112(s0)
	ld	s4, 104(s0)
	ld	s5, 96(s0)
	ld	s6, 88(s0)
	ld	s7, 80(s0)
	ld	s8, 72(s0)
	ld	s9, 64(s0)
	ld	s10, 56(s0)
	ld	s11, 48(s0)
	ld	ra, 40(s0)
	sd	a0, -240(s0)
	ld	a0, 32(s0)
	sd	a0, -248(s0)
	ld	a0, 24(s0)
	sd	a0, -256(s0)
	ld	a0, 16(s0)
	sd	a0, -264(s0)
	ld	a0, 8(s0)
	sd	a0, -272(s0)
	ld	a0, 0(s0)
	sd	a7, -280(s0)
	sd	a6, -288(s0)
	sd	a5, -296(s0)
	sd	a4, -304(s0)
	sd	a3, -312(s0)
	sd	a2, -320(s0)
	sd	a1, -328(s0)
	sd	a0, -336(s0)
	ld	a0, -240(s0)
	sd	a0, -344(s0)
	ld	a0, -240(s0)
	sw	a0, -108(s0)
	ld	a0, -328(s0)
	sw	a0, -112(s0)
	ld	a0, -320(s0)
	sw	a0, -116(s0)
	ld	a0, -312(s0)
	sw	a0, -120(s0)
	ld	a0, -304(s0)
	sw	a0, -124(s0)
	ld	a0, -296(s0)
	sw	a0, -128(s0)
	ld	a0, -288(s0)
	sw	a0, -132(s0)
	ld	a0, -280(s0)
	sw	a0, -136(s0)
	ld	a0, -336(s0)
	sw	a0, -140(s0)
	ld	a0, -272(s0)
	sw	a0, -144(s0)
	ld	a0, -264(s0)
	sw	a0, -148(s0)
	ld	a0, -256(s0)
	sw	a0, -152(s0)
	ld	a0, -248(s0)
	sw	a0, -156(s0)
	sw	ra, -160(s0)
	sw	s11, -164(s0)
	sw	s10, -168(s0)
	sw	s9, -172(s0)
	sw	s8, -176(s0)
	sw	s7, -180(s0)
	sw	s6, -184(s0)
	sw	s5, -188(s0)
	sw	s4, -192(s0)
	sw	s3, -196(s0)
	sw	s2, -200(s0)
	sw	s1, -204(s0)
	sw	t6, -208(s0)
	sw	t5, -212(s0)
	sw	t4, -216(s0)
	sw	t3, -220(s0)
	sw	t2, -224(s0)
	sw	t1, -228(s0)
	sw	t0, -232(s0)
	lw	t0, -108(s0)
	lw	t1, -112(s0)
	addw	t0, t0, t1
	lw	t1, -116(s0)
	add	t0, t0, t1
	lw	t1, -120(s0)
	add	t0, t0, t1
	lw	t1, -124(s0)
	add	t0, t0, t1
	lw	t1, -128(s0)
	add	t0, t0, t1
	lw	t1, -132(s0)
	addw	t0, t0, t1
	lw	t1, -136(s0)
	add	t0, t0, t1
	lw	t1, -140(s0)
	add	t0, t0, t1
	lw	t1, -144(s0)
	add	t0, t0, t1
	lw	t1, -148(s0)
	add	t0, t0, t1
	lw	t1, -152(s0)
	addw	t0, t0, t1
	lw	t1, -156(s0)
	sub	t0, t0, t1
	lw	t1, -160(s0)
	sub	t0, t0, t1
	lw	t1, -164(s0)
	sub	t0, t0, t1
	lw	t1, -168(s0)
	sub	t0, t0, t1
	lw	t1, -172(s0)
	subw	t0, t0, t1
	lw	t1, -176(s0)
	sub	t0, t0, t1
	lw	t1, -180(s0)
	sub	t0, t0, t1
	lw	t1, -184(s0)
	sub	t0, t0, t1
	lw	t1, -188(s0)
	sub	t0, t0, t1
	lw	t1, -192(s0)
	subw	t0, t0, t1
	lw	t1, -196(s0)
	add	t0, t0, t1
	lw	t1, -200(s0)
	add	t0, t0, t1
	lw	t1, -204(s0)
	add	t0, t0, t1
	lw	t1, -208(s0)
	add	t0, t0, t1
	lw	t1, -212(s0)
	addw	t0, t0, t1
	lw	t1, -216(s0)
	add	t0, t0, t1
	lw	t1, -220(s0)
	add	t0, t0, t1
	lw	t1, -224(s0)
	add	t0, t0, t1
	lw	t1, -228(s0)
	add	t0, t0, t1
	lw	t1, -232(s0)
	addw	a0, t0, t1
	ld	s11, 248(sp)
	ld	s10, 256(sp)
	ld	s9, 264(sp)
	ld	s8, 272(sp)
	ld	s7, 280(sp)
	ld	s6, 288(sp)
	ld	s5, 296(sp)
	ld	s4, 304(sp)
	ld	s3, 312(sp)
	ld	s2, 320(sp)
	ld	s1, 328(sp)
	ld	s0, 336(sp)
	ld	ra, 344(sp)
	addi	sp, sp, 352
	ret
.Lfunc_end2:
	.size	_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii, .Lfunc_end2-_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -512
	.cfi_def_cfa_offset 512
	sd	ra, 504(sp)
	sd	s0, 496(sp)
	sd	s1, 488(sp)
	sd	s2, 480(sp)
	sd	s3, 472(sp)
	sd	s4, 464(sp)
	sd	s5, 456(sp)
	sd	s6, 448(sp)
	sd	s7, 440(sp)
	sd	s8, 432(sp)
	sd	s9, 424(sp)
	sd	s10, 416(sp)
	sd	s11, 408(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	.cfi_offset s10, -96
	.cfi_offset s11, -104
	addi	s0, sp, 512
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -108(s0)
	sw	a0, -112(s0)
	addi	a1, zero, 1
	sw	a1, -116(s0)
	addi	a2, zero, 2
	sw	a2, -120(s0)
	addi	a3, zero, 3
	sw	a3, -124(s0)
	addi	a4, zero, 4
	sw	a4, -128(s0)
	addi	a5, zero, 5
	sw	a5, -132(s0)
	addi	a6, zero, 6
	sw	a6, -136(s0)
	addi	a7, zero, 7
	sw	a7, -140(s0)
	addi	t0, zero, 8
	sw	t0, -144(s0)
	addi	t1, zero, 9
	sw	t1, -148(s0)
	sw	a0, -152(s0)
	sw	a1, -156(s0)
	sw	a2, -160(s0)
	sw	a3, -164(s0)
	sw	a4, -168(s0)
	sw	a5, -172(s0)
	sw	a6, -176(s0)
	sw	a7, -180(s0)
	sw	t0, -184(s0)
	sw	t1, -188(s0)
	sw	a0, -192(s0)
	sw	a1, -196(s0)
	sw	a2, -200(s0)
	sw	a3, -204(s0)
	sw	a4, -208(s0)
	sw	a5, -212(s0)
	sw	a6, -216(s0)
	sw	a7, -220(s0)
	sw	t0, -224(s0)
	sw	t1, -228(s0)
	sw	a0, -232(s0)
	sw	a1, -236(s0)
	lw	a1, -112(s0)
	lw	a2, -116(s0)
	lw	a3, -120(s0)
	lw	a4, -124(s0)
	lw	a5, -128(s0)
	lw	a6, -132(s0)
	lw	a7, -136(s0)
	lw	t0, -140(s0)
	sd	a0, -248(s0)
	add	a0, zero, a1
	add	a1, zero, a2
	add	a2, zero, a3
	add	a3, zero, a4
	add	a4, zero, a5
	add	a5, zero, a6
	add	a6, zero, a7
	add	a7, zero, t0
	call	_Z10testParam8iiiiiiii
	sw	a0, -112(s0)
	lw	a0, -112(s0)
	call	_Z6putinti
	lw	a0, -112(s0)
	lw	a1, -116(s0)
	lw	a2, -120(s0)
	lw	a3, -124(s0)
	lw	a4, -128(s0)
	lw	a5, -132(s0)
	lw	a6, -136(s0)
	lw	a7, -140(s0)
	lw	t0, -144(s0)
	lw	t1, -148(s0)
	lw	t2, -152(s0)
	lw	t3, -156(s0)
	lw	t4, -160(s0)
	lw	t5, -164(s0)
	lw	t6, -168(s0)
	lw	s1, -172(s0)
	add	s2, zero, sp
	sd	s1, 56(s2)
	sd	t6, 48(s2)
	sd	t5, 40(s2)
	sd	t4, 32(s2)
	sd	t3, 24(s2)
	sd	t2, 16(s2)
	sd	t1, 8(s2)
	sd	t0, 0(s2)
	call	_Z11testParam16iiiiiiiiiiiiiiii
	sw	a0, -112(s0)
	lw	a0, -112(s0)
	call	_Z6putinti
	lw	a0, -112(s0)
	lw	a1, -116(s0)
	lw	a2, -120(s0)
	lw	a3, -124(s0)
	lw	a4, -128(s0)
	lw	a5, -132(s0)
	lw	a6, -136(s0)
	lw	a7, -140(s0)
	lw	t0, -144(s0)
	lw	t1, -148(s0)
	lw	t2, -152(s0)
	lw	t3, -156(s0)
	lw	t4, -160(s0)
	lw	t5, -164(s0)
	lw	t6, -168(s0)
	lw	s1, -172(s0)
	lw	s2, -176(s0)
	lw	s3, -180(s0)
	lw	s4, -184(s0)
	lw	s5, -188(s0)
	lw	s6, -192(s0)
	lw	s7, -196(s0)
	lw	s8, -200(s0)
	lw	s9, -204(s0)
	lw	s10, -208(s0)
	lw	s11, -212(s0)
	lw	ra, -216(s0)
	sd	a0, -256(s0)
	lw	a0, -220(s0)
	sd	a0, -264(s0)
	lw	a0, -224(s0)
	sd	a0, -272(s0)
	lw	a0, -228(s0)
	sd	a0, -280(s0)
	lw	a0, -232(s0)
	sd	a0, -288(s0)
	lw	a0, -236(s0)
	sd	a0, -296(s0)
	add	a0, zero, sp
	sd	a0, -304(s0)
	ld	a0, -296(s0)
	sd	a1, -312(s0)
	ld	a1, -304(s0)
	sd	a0, 184(a1)
	ld	a0, -288(s0)
	sd	a0, 176(a1)
	ld	a0, -280(s0)
	sd	a0, 168(a1)
	ld	a0, -272(s0)
	sd	a0, 160(a1)
	ld	a0, -264(s0)
	sd	a0, 152(a1)
	sd	ra, 144(a1)
	sd	s11, 136(a1)
	sd	s10, 128(a1)
	sd	s9, 120(a1)
	sd	s8, 112(a1)
	sd	s7, 104(a1)
	sd	s6, 96(a1)
	sd	s5, 88(a1)
	sd	s4, 80(a1)
	sd	s3, 72(a1)
	sd	s2, 64(a1)
	sd	s1, 56(a1)
	sd	t6, 48(a1)
	sd	t5, 40(a1)
	sd	t4, 32(a1)
	sd	t3, 24(a1)
	sd	t2, 16(a1)
	sd	t1, 8(a1)
	sd	t0, 0(a1)
	ld	a0, -256(s0)
	ld	a1, -312(s0)
	call	_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
	sw	a0, -112(s0)
	lw	a0, -112(s0)
	call	_Z6putinti
	ld	a0, -248(s0)
	ld	s11, 408(sp)
	ld	s10, 416(sp)
	ld	s9, 424(sp)
	ld	s8, 432(sp)
	ld	s7, 440(sp)
	ld	s6, 448(sp)
	ld	s5, 456(sp)
	ld	s4, 464(sp)
	ld	s3, 472(sp)
	ld	s2, 480(sp)
	ld	s1, 488(sp)
	ld	s0, 496(sp)
	ld	ra, 504(sp)
	addi	sp, sp, 512
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10testParam8iiiiiiii
	.addrsig_sym _Z11testParam16iiiiiiiiiiiiiiii
	.addrsig_sym _Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
	.addrsig_sym _Z6putinti
