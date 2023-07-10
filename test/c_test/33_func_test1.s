	.text
	.file	"33_func_test1.c"
	.globl	_Z6myFunciii            # -- Begin function _Z6myFunciii
	.p2align	1
	.type	_Z6myFunciii,@function
_Z6myFunciii:                           # @_Z6myFunciii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a3, zero, a2
	add	a4, zero, a1
	add	a5, zero, a0
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	addi	a0, zero, 2
	sw	a0, -24(s0)
	mv	a0, zero
	sw	a0, -36(s0)
	lw	a1, -36(s0)
	beq	a1, a0, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	mv	a0, zero
	sw	a0, -20(s0)
	j	.LBB0_6
.LBB0_2:
	j	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	addi	a1, zero, 1
	blt	a0, a1, .LBB0_5
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -28(s0)
	j	.LBB0_3
.LBB0_5:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	sw	a0, -20(s0)
	j	.LBB0_6
.LBB0_6:
	lw	a0, -20(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z6myFunciii, .Lfunc_end0-_Z6myFunciii
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
	lui	a0, %hi(a)
	addi	a1, zero, 3
	sw	a1, %lo(a)(a0)
	addi	a1, zero, 2
	addi	a2, zero, 1
	sd	a0, -32(s0)
	add	a0, zero, a2
	call	_Z6myFunciii
	sw	a0, -24(s0)
	ld	a0, -32(s0)
	lw	a1, %lo(a)(a0)
	lw	a2, -24(s0)
	addw	a0, a1, a2
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.type	a,@object               # @a
	.section	.sbss,"aw",@nobits
	.globl	a
	.p2align	2
a:
	.word	0                       # 0x0
	.size	a, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z6myFunciii
	.addrsig_sym a
