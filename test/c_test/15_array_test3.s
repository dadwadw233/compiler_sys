	.text
	.file	"15_array_test3.c"
	.globl	_Z4funcPA5_i            # -- Begin function _Z4funcPA5_i
	.p2align	1
	.type	_Z4funcPA5_i,@function
_Z4funcPA5_i:                           # @_Z4funcPA5_i
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	sd	a0, -24(s0)
	mv	a0, zero
	sw	a0, -28(s0)
	sw	a0, -32(s0)
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	lw	a0, -28(s0)
	addi	a1, zero, 4
	blt	a1, a0, .LBB0_6
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_3
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -32(s0)
	addi	a1, zero, 4
	blt	a1, a0, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=2
	lw	a0, -36(s0)
	ld	a1, -24(s0)
	lw	a2, -28(s0)
	addi	a3, zero, 20
	mul	a2, a2, a3
	add	a1, a1, a2
	lw	a2, -32(s0)
	slli	a2, a2, 2
	add	a1, a1, a2
	lw	a1, 0(a1)
	add	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB0_3
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_6:
	lw	a0, -36(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z4funcPA5_i, .Lfunc_end0-_Z4funcPA5_i
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	mv	a0, zero
	sw	a0, -20(s0)
	lui	a1, %hi(a)
	addi	a1, a1, %lo(a)
	sd	a0, -32(s0)
	add	a0, zero, a1
	call	_Z4funcPA5_i
	call	_Z6putinti
	ld	a0, -32(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	a,@object               # @a
	.data
	.globl	a
	.p2align	2
a:
	.word	1                       # 0x1
	.word	2                       # 0x2
	.word	3                       # 0x3
	.word	4                       # 0x4
	.word	5                       # 0x5
	.zero	20
	.zero	20
	.zero	20
	.zero	20
	.size	a, 100

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z4funcPA5_i
	.addrsig_sym _Z6putinti
	.addrsig_sym a
