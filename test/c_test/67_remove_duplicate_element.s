	.text
	.file	"67_remove_duplicate_element.c"
	.globl	_Z13removeElementPiii   # -- Begin function _Z13removeElementPiii
	.p2align	1
	.type	_Z13removeElementPiii,@function
_Z13removeElementPiii:                  # @_Z13removeElementPiii
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	add	a3, zero, a2
	add	a4, zero, a1
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	mv	a0, zero
	sw	a0, -36(s0)
	j	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	lw	a1, -28(s0)
	bge	a0, a1, .LBB0_6
	j	.LBB0_2
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -36(s0)
	slli	a1, a1, 2
	add	a0, a0, a1
	lw	a0, 0(a0)
	lw	a1, -32(s0)
	bne	a0, a1, .LBB0_4
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	ld	a0, -24(s0)
	lw	a1, -28(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 2
	add	a1, a1, a0
	lw	a1, 0(a1)
	lw	a2, -36(s0)
	slli	a2, a2, 2
	add	a0, a0, a2
	sw	a1, 0(a0)
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -28(s0)
	j	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	j	.LBB0_1
.LBB0_6:
	lw	a0, -28(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	_Z13removeElementPiii, .Lfunc_end0-_Z13removeElementPiii
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a1, zero, 3
	sw	a1, -64(s0)
	sw	a1, -60(s0)
	addi	a2, zero, 9
	sw	a2, -56(s0)
	sw	a0, -52(s0)
	sw	a0, -48(s0)
	addi	a0, zero, 1
	sw	a0, -44(s0)
	sw	a0, -40(s0)
	addi	a0, zero, 5
	sw	a0, -36(s0)
	addi	a0, zero, 7
	sw	a0, -32(s0)
	addi	a0, zero, 8
	sw	a0, -28(s0)
	addi	a0, zero, 10
	sw	a0, -24(s0)
	sw	a1, -68(s0)
	lw	a1, -24(s0)
	lw	a2, -68(s0)
	addi	a0, s0, -64
	call	_Z13removeElementPiii
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z13removeElementPiii
