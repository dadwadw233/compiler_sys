	.text
	.file	"77_unique_path.c"
	.globl	_Z11uniquePathsii       # -- Begin function _Z11uniquePathsii
	.p2align	1
	.type	_Z11uniquePathsii,@function
_Z11uniquePathsii:                      # @_Z11uniquePathsii
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)
	sd	s0, 64(sp)
	addi	s0, sp, 80
	add	a2, zero, a1
	add	a3, zero, a0
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	lw	a0, -24(s0)
	addi	a1, zero, 1
	beq	a0, a1, .LBB0_2
	j	.LBB0_1
.LBB0_1:
	lw	a0, -28(s0)
	addi	a1, zero, 1
	bne	a0, a1, .LBB0_3
	j	.LBB0_2
.LBB0_2:
	addi	a0, zero, 1
	sw	a0, -20(s0)
	j	.LBB0_16
.LBB0_3:
	mv	a0, zero
	sw	a0, -68(s0)
	j	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -68(s0)
	lw	a1, -24(s0)
	bge	a0, a1, .LBB0_6
	j	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_4 Depth=1
	lw	a0, -68(s0)
	addi	a1, zero, 3
	mul	a0, a0, a1
	lw	a1, -28(s0)
	add	a0, a0, a1
	addiw	a0, a0, -1
	slli	a0, a0, 2
	addi	a1, s0, -64
	add	a0, a0, a1
	addi	a1, zero, 1
	sw	a1, 0(a0)
	lw	a0, -68(s0)
	addi	a0, a0, 1
	sw	a0, -68(s0)
	j	.LBB0_4
.LBB0_6:
	mv	a0, zero
	sw	a0, -68(s0)
	j	.LBB0_7
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -68(s0)
	lw	a1, -28(s0)
	bge	a0, a1, .LBB0_9
	j	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_7 Depth=1
	lw	a0, -24(s0)
	addi	a1, zero, 3
	mul	a0, a0, a1
	lw	a1, -68(s0)
	add	a0, a0, a1
	addiw	a0, a0, -3
	slli	a0, a0, 2
	addi	a1, s0, -64
	add	a0, a0, a1
	addi	a1, zero, 1
	sw	a1, 0(a0)
	lw	a0, -68(s0)
	addi	a0, a0, 1
	sw	a0, -68(s0)
	j	.LBB0_7
.LBB0_9:
	lw	a0, -24(s0)
	addi	a0, a0, -2
	sw	a0, -68(s0)
	j	.LBB0_10
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	lw	a0, -68(s0)
	mv	a1, zero
	blt	a0, a1, .LBB0_15
	j	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_10 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, -2
	sw	a0, -72(s0)
	j	.LBB0_12
.LBB0_12:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -72(s0)
	mv	a1, zero
	blt	a0, a1, .LBB0_14
	j	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_12 Depth=2
	lw	a0, -68(s0)
	lw	a1, -72(s0)
	addi	a2, zero, 3
	mul	a0, a0, a2
	add	a2, a0, a1
	addiw	a3, a2, 3
	slli	a3, a3, 2
	addi	a4, s0, -64
	add	a3, a3, a4
	lw	a3, 0(a3)
	addw	a0, a0, a1
	addiw	a1, a2, 1
	slli	a1, a1, 2
	add	a1, a1, a4
	lw	a1, 0(a1)
	add	a1, a1, a3
	slli	a0, a0, 2
	add	a0, a0, a4
	sw	a1, 0(a0)
	lw	a0, -72(s0)
	addi	a0, a0, -1
	sw	a0, -72(s0)
	j	.LBB0_12
.LBB0_14:                               #   in Loop: Header=BB0_10 Depth=1
	lw	a0, -68(s0)
	addi	a0, a0, -1
	sw	a0, -68(s0)
	j	.LBB0_10
.LBB0_15:
	lw	a0, -64(s0)
	sw	a0, -20(s0)
	j	.LBB0_16
.LBB0_16:
	lw	a0, -20(s0)
	ld	s0, 64(sp)
	ld	ra, 72(sp)
	addi	sp, sp, 80
	ret
.Lfunc_end0:
	.size	_Z11uniquePathsii, .Lfunc_end0-_Z11uniquePathsii
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	addi	s0, sp, 48
	mv	a0, zero
	sw	a0, -20(s0)
	addi	a0, zero, 3
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	sd	a0, -40(s0)
	ld	a1, -40(s0)
	call	_Z11uniquePathsii
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	ld	s0, 32(sp)
	ld	ra, 40(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z11uniquePathsii
