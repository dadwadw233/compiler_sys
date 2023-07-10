	.text
	.file	"94_matrix_mul.c"
	.globl	_Z3mulPiS_S_S_S_S_S_S_S_ # -- Begin function _Z3mulPiS_S_S_S_S_S_S_S_
	.p2align	1
	.type	_Z3mulPiS_S_S_S_S_S_S_S_,@function
_Z3mulPiS_S_S_S_S_S_S_S_:               # @_Z3mulPiS_S_S_S_S_S_S_S_
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	addi	s0, sp, 96
	ld	t0, 0(s0)
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	sd	a3, -48(s0)
	sd	a4, -56(s0)
	sd	a5, -64(s0)
	sd	a6, -72(s0)
	sd	a7, -80(s0)
	mv	a0, zero
	sw	a0, -84(s0)
	ld	a1, -24(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 0(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 0(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 0(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, -72(s0)
	sw	a1, 0(a2)
	ld	a1, -24(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 4(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 4(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 4(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, -72(s0)
	sw	a1, 4(a2)
	ld	a1, -24(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 8(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 8(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 8(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, -72(s0)
	sw	a1, 8(a2)
	ld	a1, -32(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 0(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 0(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 0(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, -80(s0)
	sw	a1, 0(a2)
	ld	a1, -32(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 4(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 4(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 4(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, -80(s0)
	sw	a1, 4(a2)
	ld	a1, -32(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 8(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 8(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 8(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, -80(s0)
	sw	a1, 8(a2)
	ld	a1, -40(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 0(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 0(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 0(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, 0(s0)
	sw	a1, 0(a2)
	ld	a1, -40(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 4(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 4(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 4(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, 0(s0)
	sw	a1, 4(a2)
	ld	a1, -40(s0)
	lw	a2, 0(a1)
	ld	a3, -48(s0)
	lw	a3, 8(a3)
	mul	a2, a2, a3
	lw	a3, 4(a1)
	ld	a4, -56(s0)
	lw	a4, 8(a4)
	mul	a3, a3, a4
	add	a2, a2, a3
	lw	a1, 8(a1)
	ld	a3, -64(s0)
	lw	a3, 8(a3)
	mul	a1, a1, a3
	add	a1, a1, a2
	ld	a2, 0(s0)
	sw	a1, 8(a2)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	_Z3mulPiS_S_S_S_S_S_S_S_, .Lfunc_end0-_Z3mulPiS_S_S_S_S_S_S_S_
                                        # -- End function
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
	lui	a1, %hi(N)
	addi	a2, zero, 3
	sw	a2, %lo(N)(a1)
	lui	a1, %hi(M)
	sw	a2, %lo(M)(a1)
	lui	a1, %hi(L)
	sw	a2, %lo(L)(a1)
	sw	a0, -144(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -144(s0)
	lui	a1, %hi(M)
	lw	a1, %lo(M)(a1)
	bge	a0, a1, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -32
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -44
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -56
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -68
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -80
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	slli	a1, a0, 2
	addi	a2, s0, -92
	add	a1, a1, a2
	sw	a0, 0(a1)
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	j	.LBB1_1
.LBB1_3:
	add	a0, zero, sp
	addi	a1, s0, -140
	sd	a1, 0(a0)
	addi	a0, s0, -32
	addi	a1, s0, -44
	addi	a2, s0, -56
	addi	a3, s0, -68
	addi	a4, s0, -80
	addi	a5, s0, -92
	addi	a6, s0, -116
	addi	a7, s0, -128
	call	_Z3mulPiS_S_S_S_S_S_S_S_
	sw	a0, -144(s0)
	j	.LBB1_4
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -144(s0)
	lui	a1, %hi(N)
	lw	a1, %lo(N)(a1)
	bge	a0, a1, .LBB1_6
	j	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_4 Depth=1
	lw	a0, -144(s0)
	slli	a0, a0, 2
	addi	a1, s0, -116
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -148(s0)
	lw	a0, -148(s0)
	call	_Z6putinti
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	j	.LBB1_4
.LBB1_6:
	addi	a0, zero, 10
	sw	a0, -148(s0)
	mv	a0, zero
	sw	a0, -144(s0)
	lw	a0, -148(s0)
	call	_Z5putchi
	j	.LBB1_7
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -144(s0)
	lui	a1, %hi(N)
	lw	a1, %lo(N)(a1)
	bge	a0, a1, .LBB1_9
	j	.LBB1_8
.LBB1_8:                                #   in Loop: Header=BB1_7 Depth=1
	lw	a0, -144(s0)
	slli	a0, a0, 2
	addi	a1, s0, -128
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -148(s0)
	lw	a0, -148(s0)
	call	_Z6putinti
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	j	.LBB1_7
.LBB1_9:
	addi	a0, zero, 10
	sw	a0, -148(s0)
	mv	a0, zero
	sw	a0, -144(s0)
	lw	a0, -148(s0)
	call	_Z5putchi
	j	.LBB1_10
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -144(s0)
	lui	a1, %hi(N)
	lw	a1, %lo(N)(a1)
	bge	a0, a1, .LBB1_12
	j	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_10 Depth=1
	lw	a0, -144(s0)
	slli	a0, a0, 2
	addi	a1, s0, -140
	add	a0, a0, a1
	lw	a0, 0(a0)
	sw	a0, -148(s0)
	lw	a0, -148(s0)
	call	_Z6putinti
	lw	a0, -144(s0)
	addi	a0, a0, 1
	sw	a0, -144(s0)
	j	.LBB1_10
.LBB1_12:
	addi	a0, zero, 10
	sw	a0, -148(s0)
	lw	a0, -148(s0)
	call	_Z5putchi
	mv	a0, zero
	ld	s0, 144(sp)
	ld	ra, 152(sp)
	addi	sp, sp, 160
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	M,@object               # @M
	.section	.sbss,"aw",@nobits
	.globl	M
	.p2align	2
M:
	.word	0                       # 0x0
	.size	M, 4

	.type	L,@object               # @L
	.globl	L
	.p2align	2
L:
	.word	0                       # 0x0
	.size	L, 4

	.type	N,@object               # @N
	.globl	N
	.p2align	2
N:
	.word	0                       # 0x0
	.size	N, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3mulPiS_S_S_S_S_S_S_S_
	.addrsig_sym _Z6putinti
	.addrsig_sym _Z5putchi
	.addrsig_sym M
	.addrsig_sym L
	.addrsig_sym N
