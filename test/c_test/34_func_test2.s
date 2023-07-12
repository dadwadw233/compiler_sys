	.text
	.file	"34_func_test2.c"
	.globl	_Z5func1v               # -- Begin function _Z5func1v
	.p2align	1
	.type	_Z5func1v,@function
_Z5func1v:                              # @_Z5func1v
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 1
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end0:
	.size	_Z5func1v, .Lfunc_end0-_Z5func1v
                                        # -- End function
	.globl	_Z5func2v               # -- Begin function _Z5func2v
	.p2align	1
	.type	_Z5func2v,@function
_Z5func2v:                              # @_Z5func2v
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 2
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end1:
	.size	_Z5func2v, .Lfunc_end1-_Z5func2v
                                        # -- End function
	.globl	_Z5func3v               # -- Begin function _Z5func3v
	.p2align	1
	.type	_Z5func3v,@function
_Z5func3v:                              # @_Z5func3v
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 4
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	_Z5func3v, .Lfunc_end2-_Z5func3v
                                        # -- End function
	.globl	_Z5func4v               # -- Begin function _Z5func4v
	.p2align	1
	.type	_Z5func4v,@function
_Z5func4v:                              # @_Z5func4v
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)
	sd	s0, 16(sp)
	addi	s0, sp, 32
	addi	a0, zero, 8
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	addi	a0, zero, 16
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	ld	s0, 16(sp)
	ld	ra, 24(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	_Z5func4v, .Lfunc_end3-_Z5func4v
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	addi	s0, sp, 64
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a0, zero, 32
	sw	a0, -24(s0)
	sw	a0, -28(s0)
	sw	a0, -32(s0)
	call	_Z5func1v
	sd	a0, -40(s0)
	call	_Z5func2v
	ld	a1, -40(s0)
	addw	a0, a0, a1
	sd	a0, -48(s0)
	call	_Z5func3v
	ld	a1, -48(s0)
	add	a0, a0, a1
	sd	a0, -56(s0)
	call	_Z5func4v
	ld	a1, -56(s0)
	add	a0, a0, a1
	lw	a1, -24(s0)
	add	a0, a0, a1
	lw	a1, -28(s0)
	add	a0, a0, a1
	lw	a1, -32(s0)
	addw	a0, a0, a1
	ld	s0, 48(sp)
	ld	ra, 56(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z5func1v
	.addrsig_sym _Z5func2v
	.addrsig_sym _Z5func3v
	.addrsig_sym _Z5func4v
