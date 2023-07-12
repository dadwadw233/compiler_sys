	.text
	.file	"76_int_factor_sum.c"
	.globl	_Z6factori              # -- Begin function _Z6factori
	.p2align	1
	.type	_Z6factori,@function
_Z6factori:                             # @_Z6factori
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	add	a1, zero, a0
	sw	a0, -20(s0)
	mv	a0, zero
	sw	a0, -28(s0)
	addi	a0, zero, 1
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	addiw	a1, a1, 1
	bge	a0, a1, .LBB0_5
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	rem	a0, a0, a1
	slli	a0, a0, 32
	srli	a0, a0, 32
	mv	a1, zero
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB0_1
.LBB0_5:
	lw	a0, -28(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z6factori, .Lfunc_end0-_Z6factori
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
	lui	a0, %hi(N)
	addi	a1, zero, 4
	sw	a1, %lo(N)(a0)
	lui	a0, %hi(newline)
	addi	a1, zero, 10
	sw	a1, %lo(newline)(a0)
	addi	a0, zero, 1478
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	call	_Z6factori
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	N,@object               # @N
	.section	.sbss,"aw",@nobits
	.globl	N
	.p2align	2
N:
	.word	0                       # 0x0
	.size	N, 4

	.type	newline,@object         # @newline
	.globl	newline
	.p2align	2
newline:
	.word	0                       # 0x0
	.size	newline, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6factori
	.addrsig_sym N
	.addrsig_sym newline
