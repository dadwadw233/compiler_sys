	.text
	.file	"32_while_if_test3.c"
	.globl	_Z11deepWhileBrii       # -- Begin function _Z11deepWhileBrii
	.p2align	1
	.type	_Z11deepWhileBrii,@function
_Z11deepWhileBrii:                      # @_Z11deepWhileBrii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a2, zero, a1
	add	a3, zero, a0
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	addi	a1, zero, 74
	blt	a1, a0, .LBB0_7
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	addi	a0, zero, 42
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	addi	a1, zero, 99
	blt	a1, a0, .LBB0_6
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	addi	a1, zero, 100
	blt	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -32(s0)
	slli	a0, a0, 1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	slli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_1
.LBB0_7:
	lw	a0, -28(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z11deepWhileBrii, .Lfunc_end0-_Z11deepWhileBrii
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
	addi	a0, zero, 2
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	sd	a0, -32(s0)
	ld	a1, -32(s0)
	call	_Z11deepWhileBrii
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
	.addrsig_sym _Z11deepWhileBrii
