	.text
	.file	"20_arr_sum.c"
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
	sd	a0, -40(s0)
	call	_Z6getintv
	lui	a1, %hi(a)
	sw	a0, %lo(a)(a1)
	sd	a1, -48(s0)
	call	_Z6getintv
	ld	a1, -48(s0)
	addi	a2, a1, %lo(a)
	sw	a0, 4(a2)
	sd	a2, -56(s0)
	call	_Z6getintv
	ld	a1, -56(s0)
	sw	a0, 8(a1)
	call	_Z6getintv
	ld	a1, -56(s0)
	sw	a0, 12(a1)
	call	_Z6getintv
	ld	a1, -56(s0)
	sw	a0, 16(a1)
	addi	a0, zero, 4
	sw	a0, -24(s0)
	ld	a0, -40(s0)
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 2
	blt	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	lui	a2, %hi(a)
	addi	a2, a2, %lo(a)
	slli	a1, a1, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a0, a1
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_3:
	lw	a0, -28(s0)
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	a,@object               # @a
	.bss
	.globl	a
	.p2align	2
a:
	.zero	20
	.size	a, 20

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6getintv
	.addrsig_sym a
