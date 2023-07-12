	.text
	.file	"97_many_global_var.c"
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
	addw	a0, a0, a1
	lw	a1, -40(s0)
	add	a0, a0, a1
	lw	a1, -44(s0)
	add	a0, a0, a1
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
	sub	a0, a0, a1
	lw	a1, -108(s0)
	sub	a0, a0, a1
	lw	a1, -112(s0)
	subw	a0, a0, a1
	lw	a1, -116(s0)
	sub	a0, a0, a1
	lw	a1, -120(s0)
	sub	a0, a0, a1
	lw	a1, -124(s0)
	add	a0, a0, a1
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
	add	t0, t0, t1
	lw	t1, -160(s0)
	add	t0, t0, t1
	lw	t1, -164(s0)
	add	t0, t0, t1
	lw	t1, -168(s0)
	add	t0, t0, t1
	lw	t1, -172(s0)
	addw	t0, t0, t1
	lw	t1, -176(s0)
	add	t0, t0, t1
	lw	t1, -180(s0)
	sub	t0, t0, t1
	lw	t1, -184(s0)
	sub	t0, t0, t1
	lw	t1, -188(s0)
	sub	t0, t0, t1
	lw	t1, -192(s0)
	subw	t0, t0, t1
	lw	t1, -196(s0)
	sub	t0, t0, t1
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
	addi	sp, sp, -704
	.cfi_def_cfa_offset 704
	sd	ra, 696(sp)
	sd	s0, 688(sp)
	sd	s1, 680(sp)
	sd	s2, 672(sp)
	sd	s3, 664(sp)
	sd	s4, 656(sp)
	sd	s5, 648(sp)
	sd	s6, 640(sp)
	sd	s7, 632(sp)
	sd	s8, 624(sp)
	sd	s9, 616(sp)
	sd	s10, 608(sp)
	sd	s11, 600(sp)
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
	addi	s0, sp, 704
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -108(s0)
	lui	a1, %hi(a0)
	sw	a0, %lo(a0)(a1)
	lui	a2, %hi(a1)
	addi	a3, zero, 1
	sw	a3, %lo(a1)(a2)
	lui	a4, %hi(a2)
	addi	a5, zero, 2
	sw	a5, %lo(a2)(a4)
	lui	a6, %hi(a3)
	addi	a7, zero, 3
	sw	a7, %lo(a3)(a6)
	lui	t0, %hi(a4)
	addi	t1, zero, 4
	sw	t1, %lo(a4)(t0)
	lui	t2, %hi(a5)
	addi	t3, zero, 5
	sw	t3, %lo(a5)(t2)
	lui	t4, %hi(a6)
	addi	t5, zero, 6
	sw	t5, %lo(a6)(t4)
	lui	t6, %hi(a7)
	addi	s1, zero, 7
	sw	s1, %lo(a7)(t6)
	lui	s2, %hi(a8)
	addi	s3, zero, 8
	sw	s3, %lo(a8)(s2)
	lui	s4, %hi(a9)
	addi	s5, zero, 9
	sw	s5, %lo(a9)(s4)
	lui	s6, %hi(a10)
	sw	a0, %lo(a10)(s6)
	lui	s7, %hi(a11)
	sw	a3, %lo(a11)(s7)
	lui	s8, %hi(a12)
	sw	a5, %lo(a12)(s8)
	lui	s9, %hi(a13)
	sw	a7, %lo(a13)(s9)
	lui	s10, %hi(a14)
	sw	t1, %lo(a14)(s10)
	lui	s11, %hi(a15)
	sw	t3, %lo(a15)(s11)
	lui	ra, %hi(a16)
	sw	t5, %lo(a16)(ra)
	sd	a0, -120(s0)
	lui	a0, %hi(a17)
	sw	s1, %lo(a17)(a0)
	sd	a0, -128(s0)
	lui	a0, %hi(a18)
	sw	s3, %lo(a18)(a0)
	sd	a0, -136(s0)
	lui	a0, %hi(a19)
	sw	s5, %lo(a19)(a0)
	sd	a0, -144(s0)
	lui	a0, %hi(a20)
	sd	a0, -152(s0)
	ld	a0, -120(s0)
	sd	a1, -160(s0)
	ld	a1, -152(s0)
	sw	a0, %lo(a20)(a1)
	lui	a0, %hi(a21)
	sw	a3, %lo(a21)(a0)
	lui	a1, %hi(a22)
	sw	a5, %lo(a22)(a1)
	lui	a5, %hi(a23)
	sw	a7, %lo(a23)(a5)
	lui	a7, %hi(a24)
	sw	t1, %lo(a24)(a7)
	sd	a0, -168(s0)
	lui	a0, %hi(a25)
	sw	t3, %lo(a25)(a0)
	sd	a0, -176(s0)
	lui	a0, %hi(a26)
	sw	t5, %lo(a26)(a0)
	sd	a0, -184(s0)
	lui	a0, %hi(a27)
	sw	s1, %lo(a27)(a0)
	sd	a0, -192(s0)
	lui	a0, %hi(a28)
	sw	s3, %lo(a28)(a0)
	sd	a0, -200(s0)
	lui	a0, %hi(a29)
	sw	s5, %lo(a29)(a0)
	sd	a0, -208(s0)
	lui	a0, %hi(a30)
	sd	a0, -216(s0)
	ld	a0, -120(s0)
	sd	a1, -224(s0)
	ld	a1, -216(s0)
	sw	a0, %lo(a30)(a1)
	lui	a0, %hi(a31)
	sw	a3, %lo(a31)(a0)
	lui	a1, %hi(a32)
	sw	t1, %lo(a32)(a1)
	lui	t1, %hi(a33)
	sw	t3, %lo(a33)(t1)
	lui	t3, %hi(a34)
	sw	t5, %lo(a34)(t3)
	lui	t5, %hi(a35)
	sw	s1, %lo(a35)(t5)
	lui	s1, %hi(a36)
	sw	s3, %lo(a36)(s1)
	lui	s3, %hi(a37)
	sw	s5, %lo(a37)(s3)
	lui	s5, %hi(a38)
	sd	a0, -232(s0)
	ld	a0, -120(s0)
	sw	a0, %lo(a38)(s5)
	lui	a0, %hi(a39)
	sw	a3, %lo(a39)(a0)
	ld	a3, -160(s0)
	lw	a3, %lo(a0)(a3)
	sd	a1, -240(s0)
	lw	a1, %lo(a1)(a2)
	sd	a2, -248(s0)
	lw	a2, %lo(a2)(a4)
	sd	a3, -256(s0)
	lw	a3, %lo(a3)(a6)
	sd	a4, -264(s0)
	lw	a4, %lo(a4)(t0)
	sd	a5, -272(s0)
	lw	a5, %lo(a5)(t2)
	sd	a6, -280(s0)
	lw	a6, %lo(a6)(t4)
	sd	a7, -288(s0)
	lw	a7, %lo(a7)(t6)
	sd	a0, -296(s0)
	ld	a0, -256(s0)
	sd	t0, -304(s0)
	sd	t2, -312(s0)
	sd	t4, -320(s0)
	sd	t6, -328(s0)
	sd	s2, -336(s0)
	sd	s4, -344(s0)
	sd	s6, -352(s0)
	sd	s7, -360(s0)
	sd	s8, -368(s0)
	sd	s9, -376(s0)
	sd	s10, -384(s0)
	sd	s11, -392(s0)
	sd	ra, -400(s0)
	sd	t1, -408(s0)
	sd	t3, -416(s0)
	sd	t5, -424(s0)
	sd	s1, -432(s0)
	sd	s3, -440(s0)
	sd	s5, -448(s0)
	call	_Z10testParam8iiiiiiii
	ld	a1, -160(s0)
	sw	a0, %lo(a0)(a1)
	lw	a0, %lo(a0)(a1)
	call	_Z6putinti
	ld	a0, -240(s0)
	lw	a0, %lo(a32)(a0)
	ld	a1, -408(s0)
	lw	a1, %lo(a33)(a1)
	ld	a2, -416(s0)
	lw	a2, %lo(a34)(a2)
	ld	a3, -424(s0)
	lw	a3, %lo(a35)(a3)
	ld	a4, -432(s0)
	lw	a4, %lo(a36)(a4)
	ld	a5, -440(s0)
	lw	a5, %lo(a37)(a5)
	ld	a6, -448(s0)
	lw	a6, %lo(a38)(a6)
	ld	a7, -296(s0)
	lw	a7, %lo(a39)(a7)
	ld	t0, -336(s0)
	lw	t1, %lo(a8)(t0)
	ld	t2, -344(s0)
	lw	t3, %lo(a9)(t2)
	ld	t4, -352(s0)
	lw	t5, %lo(a10)(t4)
	ld	t6, -360(s0)
	lw	s1, %lo(a11)(t6)
	ld	s2, -368(s0)
	lw	s3, %lo(a12)(s2)
	ld	s4, -376(s0)
	lw	s5, %lo(a13)(s4)
	ld	s6, -384(s0)
	lw	s7, %lo(a14)(s6)
	ld	s8, -392(s0)
	lw	s9, %lo(a15)(s8)
	add	s10, zero, sp
	sd	s9, 56(s10)
	sd	s7, 48(s10)
	sd	s5, 40(s10)
	sd	s3, 32(s10)
	sd	s1, 24(s10)
	sd	t5, 16(s10)
	sd	t3, 8(s10)
	sd	t1, 0(s10)
	call	_Z11testParam16iiiiiiiiiiiiiiii
	ld	a1, -160(s0)
	sw	a0, %lo(a0)(a1)
	lw	a0, %lo(a0)(a1)
	call	_Z6putinti
	ld	a0, -160(s0)
	lw	a0, %lo(a0)(a0)
	ld	a1, -248(s0)
	lw	a1, %lo(a1)(a1)
	ld	a2, -264(s0)
	lw	a2, %lo(a2)(a2)
	ld	a3, -280(s0)
	lw	a3, %lo(a3)(a3)
	ld	a4, -304(s0)
	lw	a4, %lo(a4)(a4)
	ld	a5, -312(s0)
	lw	a5, %lo(a5)(a5)
	ld	a6, -320(s0)
	lw	a6, %lo(a6)(a6)
	ld	a7, -328(s0)
	lw	a7, %lo(a7)(a7)
	ld	t0, -336(s0)
	lw	t1, %lo(a8)(t0)
	ld	t2, -344(s0)
	lw	t3, %lo(a9)(t2)
	ld	t4, -352(s0)
	lw	t5, %lo(a10)(t4)
	ld	t6, -360(s0)
	lw	s1, %lo(a11)(t6)
	ld	s2, -368(s0)
	lw	s3, %lo(a12)(s2)
	ld	s4, -376(s0)
	lw	s5, %lo(a13)(s4)
	ld	s6, -384(s0)
	lw	s7, %lo(a14)(s6)
	ld	s8, -392(s0)
	lw	s9, %lo(a15)(s8)
	ld	s10, -400(s0)
	lw	s11, %lo(a16)(s10)
	ld	ra, -128(s0)
	lw	t0, %lo(a17)(ra)
	ld	t2, -136(s0)
	lw	t2, %lo(a18)(t2)
	ld	t4, -144(s0)
	lw	t4, %lo(a19)(t4)
	ld	t6, -152(s0)
	lw	t6, %lo(a20)(t6)
	ld	s2, -168(s0)
	lw	s2, %lo(a21)(s2)
	ld	s4, -224(s0)
	lw	s4, %lo(a22)(s4)
	ld	s6, -272(s0)
	lw	s6, %lo(a23)(s6)
	ld	s8, -288(s0)
	lw	s8, %lo(a24)(s8)
	ld	s10, -176(s0)
	lw	s10, %lo(a25)(s10)
	ld	ra, -184(s0)
	lw	ra, %lo(a26)(ra)
	sd	a0, -456(s0)
	ld	a0, -192(s0)
	lw	a0, %lo(a27)(a0)
	sd	a0, -464(s0)
	ld	a0, -200(s0)
	lw	a0, %lo(a28)(a0)
	sd	a0, -472(s0)
	ld	a0, -208(s0)
	lw	a0, %lo(a29)(a0)
	sd	a0, -480(s0)
	ld	a0, -216(s0)
	lw	a0, %lo(a30)(a0)
	sd	a0, -488(s0)
	ld	a0, -232(s0)
	lw	a0, %lo(a31)(a0)
	sd	a0, -496(s0)
	add	a0, zero, sp
	sd	a0, -504(s0)
	ld	a0, -496(s0)
	sd	a1, -512(s0)
	ld	a1, -504(s0)
	sd	a0, 184(a1)
	ld	a0, -488(s0)
	sd	a0, 176(a1)
	ld	a0, -480(s0)
	sd	a0, 168(a1)
	ld	a0, -472(s0)
	sd	a0, 160(a1)
	ld	a0, -464(s0)
	sd	a0, 152(a1)
	sd	ra, 144(a1)
	sd	s10, 136(a1)
	sd	s8, 128(a1)
	sd	s6, 120(a1)
	sd	s4, 112(a1)
	sd	s2, 104(a1)
	sd	t6, 96(a1)
	sd	t4, 88(a1)
	sd	t2, 80(a1)
	sd	t0, 72(a1)
	sd	s11, 64(a1)
	sd	s9, 56(a1)
	sd	s7, 48(a1)
	sd	s5, 40(a1)
	sd	s3, 32(a1)
	sd	s1, 24(a1)
	sd	t5, 16(a1)
	sd	t3, 8(a1)
	sd	t1, 0(a1)
	ld	a0, -456(s0)
	ld	a1, -512(s0)
	call	_Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
	ld	a1, -160(s0)
	sw	a0, %lo(a0)(a1)
	lw	a0, %lo(a0)(a1)
	call	_Z6putinti
	ld	a0, -120(s0)
	ld	s11, 600(sp)
	ld	s10, 608(sp)
	ld	s9, 616(sp)
	ld	s8, 624(sp)
	ld	s7, 632(sp)
	ld	s6, 640(sp)
	ld	s5, 648(sp)
	ld	s4, 656(sp)
	ld	s3, 664(sp)
	ld	s2, 672(sp)
	ld	s1, 680(sp)
	ld	s0, 688(sp)
	ld	ra, 696(sp)
	addi	sp, sp, 704
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        # -- End function
	.type	a0,@object              # @a0
	.section	.sbss,"aw",@nobits
	.globl	a0
	.p2align	2
a0:
	.word	0                       # 0x0
	.size	a0, 4

	.type	a1,@object              # @a1
	.globl	a1
	.p2align	2
a1:
	.word	0                       # 0x0
	.size	a1, 4

	.type	a2,@object              # @a2
	.globl	a2
	.p2align	2
a2:
	.word	0                       # 0x0
	.size	a2, 4

	.type	a3,@object              # @a3
	.globl	a3
	.p2align	2
a3:
	.word	0                       # 0x0
	.size	a3, 4

	.type	a4,@object              # @a4
	.globl	a4
	.p2align	2
a4:
	.word	0                       # 0x0
	.size	a4, 4

	.type	a5,@object              # @a5
	.globl	a5
	.p2align	2
a5:
	.word	0                       # 0x0
	.size	a5, 4

	.type	a6,@object              # @a6
	.globl	a6
	.p2align	2
a6:
	.word	0                       # 0x0
	.size	a6, 4

	.type	a7,@object              # @a7
	.globl	a7
	.p2align	2
a7:
	.word	0                       # 0x0
	.size	a7, 4

	.type	a8,@object              # @a8
	.globl	a8
	.p2align	2
a8:
	.word	0                       # 0x0
	.size	a8, 4

	.type	a9,@object              # @a9
	.globl	a9
	.p2align	2
a9:
	.word	0                       # 0x0
	.size	a9, 4

	.type	a10,@object             # @a10
	.globl	a10
	.p2align	2
a10:
	.word	0                       # 0x0
	.size	a10, 4

	.type	a11,@object             # @a11
	.globl	a11
	.p2align	2
a11:
	.word	0                       # 0x0
	.size	a11, 4

	.type	a12,@object             # @a12
	.globl	a12
	.p2align	2
a12:
	.word	0                       # 0x0
	.size	a12, 4

	.type	a13,@object             # @a13
	.globl	a13
	.p2align	2
a13:
	.word	0                       # 0x0
	.size	a13, 4

	.type	a14,@object             # @a14
	.globl	a14
	.p2align	2
a14:
	.word	0                       # 0x0
	.size	a14, 4

	.type	a15,@object             # @a15
	.globl	a15
	.p2align	2
a15:
	.word	0                       # 0x0
	.size	a15, 4

	.type	a16,@object             # @a16
	.globl	a16
	.p2align	2
a16:
	.word	0                       # 0x0
	.size	a16, 4

	.type	a17,@object             # @a17
	.globl	a17
	.p2align	2
a17:
	.word	0                       # 0x0
	.size	a17, 4

	.type	a18,@object             # @a18
	.globl	a18
	.p2align	2
a18:
	.word	0                       # 0x0
	.size	a18, 4

	.type	a19,@object             # @a19
	.globl	a19
	.p2align	2
a19:
	.word	0                       # 0x0
	.size	a19, 4

	.type	a20,@object             # @a20
	.globl	a20
	.p2align	2
a20:
	.word	0                       # 0x0
	.size	a20, 4

	.type	a21,@object             # @a21
	.globl	a21
	.p2align	2
a21:
	.word	0                       # 0x0
	.size	a21, 4

	.type	a22,@object             # @a22
	.globl	a22
	.p2align	2
a22:
	.word	0                       # 0x0
	.size	a22, 4

	.type	a23,@object             # @a23
	.globl	a23
	.p2align	2
a23:
	.word	0                       # 0x0
	.size	a23, 4

	.type	a24,@object             # @a24
	.globl	a24
	.p2align	2
a24:
	.word	0                       # 0x0
	.size	a24, 4

	.type	a25,@object             # @a25
	.globl	a25
	.p2align	2
a25:
	.word	0                       # 0x0
	.size	a25, 4

	.type	a26,@object             # @a26
	.globl	a26
	.p2align	2
a26:
	.word	0                       # 0x0
	.size	a26, 4

	.type	a27,@object             # @a27
	.globl	a27
	.p2align	2
a27:
	.word	0                       # 0x0
	.size	a27, 4

	.type	a28,@object             # @a28
	.globl	a28
	.p2align	2
a28:
	.word	0                       # 0x0
	.size	a28, 4

	.type	a29,@object             # @a29
	.globl	a29
	.p2align	2
a29:
	.word	0                       # 0x0
	.size	a29, 4

	.type	a30,@object             # @a30
	.globl	a30
	.p2align	2
a30:
	.word	0                       # 0x0
	.size	a30, 4

	.type	a31,@object             # @a31
	.globl	a31
	.p2align	2
a31:
	.word	0                       # 0x0
	.size	a31, 4

	.type	a32,@object             # @a32
	.globl	a32
	.p2align	2
a32:
	.word	0                       # 0x0
	.size	a32, 4

	.type	a33,@object             # @a33
	.globl	a33
	.p2align	2
a33:
	.word	0                       # 0x0
	.size	a33, 4

	.type	a34,@object             # @a34
	.globl	a34
	.p2align	2
a34:
	.word	0                       # 0x0
	.size	a34, 4

	.type	a35,@object             # @a35
	.globl	a35
	.p2align	2
a35:
	.word	0                       # 0x0
	.size	a35, 4

	.type	a36,@object             # @a36
	.globl	a36
	.p2align	2
a36:
	.word	0                       # 0x0
	.size	a36, 4

	.type	a37,@object             # @a37
	.globl	a37
	.p2align	2
a37:
	.word	0                       # 0x0
	.size	a37, 4

	.type	a38,@object             # @a38
	.globl	a38
	.p2align	2
a38:
	.word	0                       # 0x0
	.size	a38, 4

	.type	a39,@object             # @a39
	.globl	a39
	.p2align	2
a39:
	.word	0                       # 0x0
	.size	a39, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z10testParam8iiiiiiii
	.addrsig_sym _Z11testParam16iiiiiiiiiiiiiiii
	.addrsig_sym _Z11testParam32iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii
	.addrsig_sym _Z6putinti
	.addrsig_sym a0
	.addrsig_sym a1
	.addrsig_sym a2
	.addrsig_sym a3
	.addrsig_sym a4
	.addrsig_sym a5
	.addrsig_sym a6
	.addrsig_sym a7
	.addrsig_sym a8
	.addrsig_sym a9
	.addrsig_sym a10
	.addrsig_sym a11
	.addrsig_sym a12
	.addrsig_sym a13
	.addrsig_sym a14
	.addrsig_sym a15
	.addrsig_sym a16
	.addrsig_sym a17
	.addrsig_sym a18
	.addrsig_sym a19
	.addrsig_sym a20
	.addrsig_sym a21
	.addrsig_sym a22
	.addrsig_sym a23
	.addrsig_sym a24
	.addrsig_sym a25
	.addrsig_sym a26
	.addrsig_sym a27
	.addrsig_sym a28
	.addrsig_sym a29
	.addrsig_sym a30
	.addrsig_sym a31
	.addrsig_sym a32
	.addrsig_sym a33
	.addrsig_sym a34
	.addrsig_sym a35
	.addrsig_sym a36
	.addrsig_sym a37
	.addrsig_sym a38
	.addrsig_sym a39
