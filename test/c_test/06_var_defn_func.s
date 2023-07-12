	.text
	.file	"06_var_defn_func.c"
	.globl	_Z4defnv                # -- Begin function _Z4defnv
	.p2align	1
	.type	_Z4defnv,@function
_Z4defnv:                               # @_Z4defnv
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	addi	s0, sp, 16
	addi	a0, zero, 4
	ld	s0, 0(sp)
	ld	ra, 8(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	_Z4defnv, .Lfunc_end0-_Z4defnv
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
	call	_Z4defnv
	sw	a0, -24(s0)
	lw	a0, -24(s0)
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
	.addrsig_sym _Z4defnv
