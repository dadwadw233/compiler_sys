	.text
	.file	"02_arr_defn4.c"
	.globl	main                    # -- Begin function main
	.p2align	1
	.type	main,@function
main:                                   # @main
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)
	sd	s0, 80(sp)
	addi	s0, sp, 96
	mv	a0, zero
	sw	a0, -20(s0)
	lui	a1, %hi(.L__const.main.a)
	addi	a2, a1, %lo(.L__const.main.a)
	lwu	a3, 24(a2)
	lwu	a4, 28(a2)
	slli	a4, a4, 32
	or	a3, a3, a4
	sd	a3, -32(s0)
	lwu	a3, 16(a2)
	lwu	a4, 20(a2)
	slli	a4, a4, 32
	or	a3, a3, a4
	sd	a3, -40(s0)
	lwu	a3, 8(a2)
	lwu	a4, 12(a2)
	slli	a4, a4, 32
	or	a3, a3, a4
	sd	a3, -48(s0)
	lwu	a1, %lo(.L__const.main.a)(a1)
	lwu	a2, 4(a2)
	slli	a2, a2, 32
	or	a1, a1, a2
	sd	a1, -56(s0)
	lw	a1, -56(s0)
	sw	a1, -88(s0)
	lw	a1, -52(s0)
	sw	a1, -84(s0)
	addi	a1, zero, 3
	sw	a1, -80(s0)
	addi	a1, zero, 4
	sw	a1, -76(s0)
	addi	a1, zero, 5
	sw	a1, -72(s0)
	addi	a1, zero, 6
	sw	a1, -68(s0)
	addi	a1, zero, 7
	sw	a1, -64(s0)
	addi	a1, zero, 8
	sw	a1, -60(s0)
	ld	s0, 80(sp)
	ld	ra, 88(sp)
	addi	sp, sp, 96
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L__const.main.a,@object # @__const.main.a
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	2
.L__const.main.a:
	.word	1                       # 0x1
	.word	2                       # 0x2
	.word	3                       # 0x3
	.word	4                       # 0x4
	.word	5                       # 0x5
	.word	6                       # 0x6
	.word	7                       # 0x7
	.word	8                       # 0x8
	.size	.L__const.main.a, 32

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
