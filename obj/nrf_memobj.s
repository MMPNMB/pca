	.file	"nrf_memobj.c"
	.text
.Ltext0:
	.section	.text.unlikely.memobj_op,"ax",@progbits
.LCOLDB0:
	.section	.text.memobj_op,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.memobj_op
.Ltext_cold0:
	.section	.text.memobj_op
	.type	memobj_op, @function
memobj_op:
.LFB163:
	.file 1 "src/nrf_memobj.c"
	.loc 1 3715 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$20, %esp
	.loc 1 3715 0
	movb	12(%ebp), %al
.LVL1:
	movl	%edx, -28(%ebp)
	.loc 1 3719 0
	xorl	%edx, %edx
.LVL2:
	.loc 1 3715 0
	movl	%ecx, -16(%ebp)
.LVL3:
	movb	%al, -29(%ebp)
	.loc 1 3717 0
	movzwl	6(%ebx), %eax
	movl	%eax, -20(%ebp)
.LVL4:
	.loc 1 3719 0
	movl	8(%ebp), %eax
.LVL5:
	addl	$4, %eax
	divl	-20(%ebp)
.LVL6:
	.loc 1 3720 0
	movl	%edx, %ecx
.LVL7:
.L2:
	.loc 1 3725 0
	testl	%eax, %eax
	je	.L11
	.loc 1 3727 0
	movl	(%ebx), %ebx
.LVL8:
	.loc 1 3728 0
	decl	%eax
.LVL9:
	jmp	.L2
.L11:
.LVL10:
	.loc 1 3731 0
	movl	-20(%ebp), %eax
.LVL11:
	subl	%edx, %eax
	.loc 1 3732 0
	cmpl	%eax, -16(%ebp)
	.loc 1 3731 0
	movl	%eax, %edx
.LVL12:
	.loc 1 3732 0
	cmovbe	-16(%ebp), %edx
.LVL13:
	.loc 1 3730 0
	xorl	%eax, %eax
.LVL14:
.L4:
	.loc 1 3733 0
	cmpl	$0, -16(%ebp)
	je	.L12
	movl	-28(%ebp), %esi
	.loc 1 3735 0
	cmpb	$0, -29(%ebp)
	leal	(%esi,%eax), %edi
	leal	(%ebx,%ecx), %esi
	movl	%edi, -24(%ebp)
	je	.L5
	.loc 1 3737 0
	addl	$4, %esi
	jmp	.L9
.L5:
	.loc 1 3741 0
	leal	4(%esi), %ecx
.LVL15:
	movl	-24(%ebp), %esi
	movl	%ecx, %edi
.L9:
	movl	%edx, %ecx
	.loc 1 3746 0
	addl	%edx, %eax
.LVL16:
	.loc 1 3741 0
	rep movsb
.LVL17:
	.loc 1 3745 0
	subl	%edx, -16(%ebp)
.LVL18:
	.loc 1 3744 0
	movl	(%ebx), %ebx
.LVL19:
	.loc 1 3747 0
	movl	-16(%ebp), %esi
	cmpl	%esi, -20(%ebp)
	movl	%esi, %edx
.LVL20:
	cmovbe	-20(%ebp), %edx
.LVL21:
	.loc 1 3743 0
	xorl	%ecx, %ecx
	jmp	.L4
.LVL22:
.L12:
	.loc 1 3749 0
	addl	$20, %esp
	popl	%ebx
	.cfi_restore 3
.LVL23:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE163:
	.size	memobj_op, .-memobj_op
	.section	.text.unlikely.memobj_op
.LCOLDE0:
	.section	.text.memobj_op
.LHOTE0:
	.section	.text.unlikely.nrf_memobj_pool_init,"ax",@progbits
.LCOLDB1:
	.section	.text.nrf_memobj_pool_init,"ax",@progbits
.LHOTB1:
	.globl	nrf_memobj_pool_init
	.type	nrf_memobj_pool_init, @function
nrf_memobj_pool_init:
.LFB158:
	.loc 1 3628 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3630 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3629 0
	jmp	nrf_balloc_init
.LVL25:
	.cfi_endproc
.LFE158:
	.size	nrf_memobj_pool_init, .-nrf_memobj_pool_init
	.section	.text.unlikely.nrf_memobj_pool_init
.LCOLDE1:
	.section	.text.nrf_memobj_pool_init
.LHOTE1:
	.section	.text.unlikely.nrf_memobj_free,"ax",@progbits
.LCOLDB2:
	.section	.text.nrf_memobj_free,"ax",@progbits
.LHOTB2:
	.globl	nrf_memobj_free
	.type	nrf_memobj_free, @function
nrf_memobj_free:
.LFB160:
	.loc 1 3674 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3681 0
	xorl	%edx, %edx
	.loc 1 3674 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3674 0
	movl	8(%ebp), %eax
.LVL27:
	.loc 1 3680 0
	movzbl	5(%eax), %ecx
	.loc 1 3681 0
	movl	%eax, %ebx
	.loc 1 3680 0
	leal	-1(%ecx), %esi
.LVL28:
.L16:
	.loc 1 3681 0 discriminator 1
	cmpl	%esi, %edx
	movl	(%ebx), %ebx
.LVL29:
	jnb	.L21
.LVL30:
	.loc 1 3681 0 is_stmt 0 discriminator 3
	incl	%edx
.LVL31:
	jmp	.L16
.LVL32:
.L21:
	.loc 1 3687 0 is_stmt 1
	xorl	%edi, %edi
.LVL33:
.L18:
	.loc 1 3687 0 is_stmt 0 discriminator 1
	cmpl	%ecx, %edi
	jnb	.L22
	.loc 1 3689 0 is_stmt 1 discriminator 3
	movl	(%eax), %esi
.LVL34:
	.loc 1 3690 0 discriminator 3
	pushl	%edx
	.loc 1 3687 0 discriminator 3
	incl	%edi
.LVL35:
	.loc 1 3690 0 discriminator 3
	pushl	%edx
	pushl	%eax
	pushl	%ebx
	movl	%ecx, -28(%ebp)
	call	nrf_balloc_free
.LVL36:
	.loc 1 3687 0 discriminator 3
	addl	$16, %esp
	.loc 1 3691 0 discriminator 3
	movl	%esi, %eax
	movl	-28(%ebp), %ecx
	jmp	.L18
.LVL37:
.L22:
	.loc 1 3693 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL38:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL39:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE160:
	.size	nrf_memobj_free, .-nrf_memobj_free
	.section	.text.unlikely.nrf_memobj_free
.LCOLDE2:
	.section	.text.nrf_memobj_free
.LHOTE2:
	.section	.text.unlikely.nrf_memobj_alloc,"ax",@progbits
.LCOLDB3:
	.section	.text.nrf_memobj_alloc,"ax",@progbits
.LHOTB3:
	.globl	nrf_memobj_alloc
	.type	nrf_memobj_alloc, @function
nrf_memobj_alloc:
.LFB159:
	.loc 1 3633 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3635 0
	xorl	%edx, %edx
	.loc 1 3633 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3633 0
	movl	8(%ebp), %ebx
	.loc 1 3635 0
	movl	12(%ebp), %eax
	.loc 1 3634 0
	movzwl	16(%ebx), %edi
	.loc 1 3636 0
	pushl	%ebx
	.loc 1 3634 0
	subl	$4, %edi
.LVL41:
	.loc 1 3635 0
	addl	%edi, %eax
	addl	$3, %eax
	divl	%edi
	movl	%eax, -28(%ebp)
.LVL42:
	.loc 1 3636 0
	call	nrf_balloc_alloc
.LVL43:
	movl	%eax, %esi
.LVL44:
	.loc 1 3637 0
	addl	$16, %esp
	.loc 1 3642 0
	xorl	%eax, %eax
.LVL45:
	.loc 1 3637 0
	testl	%esi, %esi
	je	.L24
	movzbl	-28(%ebp), %eax
	.loc 1 3647 0
	movw	%di, 6(%esi)
.LVL46:
	.loc 1 3653 0
	movl	%esi, %edx
	.loc 1 3645 0
	movb	$0, 4(%esi)
	.loc 1 3646 0
	movb	$1, 5(%esi)
	.loc 1 3653 0
	movl	$1, %edi
.LVL47:
	.loc 1 3652 0
	movl	%ebx, (%esi)
	movl	%eax, -28(%ebp)
.LVL48:
.L25:
	.loc 1 3653 0 discriminator 1
	cmpl	%edi, -28(%ebp)
	je	.L30
	.loc 1 3655 0
	subl	$12, %esp
	movl	%edx, -32(%ebp)
	incl	%edi
.LVL49:
	pushl	%ebx
	call	nrf_balloc_alloc
.LVL50:
	.loc 1 3656 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L26
	.loc 1 3659 0
	movl	-32(%ebp), %edx
	.loc 1 3658 0
	incb	5(%esi)
	.loc 1 3659 0
	movl	%eax, (%edx)
	.loc 1 3660 0
	movl	%eax, %edx
	movl	%ebx, (%eax)
.LVL51:
	jmp	.L25
.LVL52:
.L26:
	.loc 1 3665 0
	subl	$12, %esp
	pushl	%esi
	call	nrf_memobj_free
.LVL53:
	.loc 1 3667 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L24
.LVL54:
.L30:
	movl	%esi, %eax
.LVL55:
.L24:
	.loc 1 3672 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL56:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE159:
	.size	nrf_memobj_alloc, .-nrf_memobj_alloc
	.section	.text.unlikely.nrf_memobj_alloc
.LCOLDE3:
	.section	.text.nrf_memobj_alloc
.LHOTE3:
	.section	.text.unlikely.nrf_memobj_get,"ax",@progbits
.LCOLDB4:
	.section	.text.nrf_memobj_get,"ax",@progbits
.LHOTB4:
	.globl	nrf_memobj_get
	.type	nrf_memobj_get, @function
nrf_memobj_get:
.LFB161:
	.loc 1 3695 0
	.cfi_startproc
.LVL57:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB7:
.LBB8:
.LBB9:
	.loc 1 3557 0
	movl	$1, %edx
.LBE9:
.LBE8:
.LBE7:
	.loc 1 3695 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL58:
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3697 0
	movl	8(%ebp), %eax
	addl	$4, %eax
.LVL59:
.LBB12:
.LBB11:
.LBB10:
	.loc 1 3557 0
#APP
# 3557 "src/nrf_memobj.c" 1
	1:     ldrex   %ecx, [%eax]
add %ebx, %ecx, %edx
       strex   %esi, %ebx, [%eax]
       teq     %esi, #0
       bne.n     1b
# 0 "" 2
.LVL60:
#NO_APP
.LBE10:
.LBE11:
.LBE12:
	.loc 1 3698 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE161:
	.size	nrf_memobj_get, .-nrf_memobj_get
	.section	.text.unlikely.nrf_memobj_get
.LCOLDE4:
	.section	.text.nrf_memobj_get
.LHOTE4:
	.section	.text.unlikely.nrf_memobj_put,"ax",@progbits
.LCOLDB5:
	.section	.text.nrf_memobj_put,"ax",@progbits
.LHOTB5:
	.globl	nrf_memobj_put
	.type	nrf_memobj_put, @function
nrf_memobj_put:
.LFB162:
	.loc 1 3700 0
	.cfi_startproc
.LVL61:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB16:
.LBB17:
.LBB18:
	.loc 1 3575 0
	movl	$1, %edx
.LBE18:
.LBE17:
.LBE16:
	.loc 1 3700 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	movl	8(%ebp), %ecx
.LVL62:
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3702 0
	leal	4(%ecx), %eax
.LVL63:
.LBB21:
.LBB20:
.LBB19:
	.loc 1 3575 0
#APP
# 3575 "src/nrf_memobj.c" 1
	1:     ldrex   %esi, [%eax]
sub %ebx, %esi, %edx
       strex   %edi, %ebx, [%eax]
       teq     %edi, #0
       bne.n     1b
# 0 "" 2
.LVL64:
#NO_APP
.LBE19:
.LBE20:
.LBE21:
	.loc 1 3704 0
	testb	%bl, %bl
	jne	.L33
	.loc 1 3708 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3706 0
	jmp	nrf_memobj_free
.LVL65:
.L33:
	.cfi_restore_state
	.loc 1 3708 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE162:
	.size	nrf_memobj_put, .-nrf_memobj_put
	.section	.text.unlikely.nrf_memobj_put
.LCOLDE5:
	.section	.text.nrf_memobj_put
.LHOTE5:
	.section	.text.unlikely.nrf_memobj_write,"ax",@progbits
.LCOLDB6:
	.section	.text.nrf_memobj_write,"ax",@progbits
.LHOTB6:
	.globl	nrf_memobj_write
	.type	nrf_memobj_write, @function
nrf_memobj_write:
.LFB164:
	.loc 1 3754 0
	.cfi_startproc
.LVL66:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3755 0
	movl	20(%ebp), %ecx
	.loc 1 3754 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 3755 0
	movl	$0, 12(%ebp)
.LVL67:
	movl	%ecx, 8(%ebp)
.LVL68:
	movl	16(%ebp), %ecx
	.loc 1 3758 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3755 0
	jmp	memobj_op
.LVL69:
	.cfi_endproc
.LFE164:
	.size	nrf_memobj_write, .-nrf_memobj_write
	.section	.text.unlikely.nrf_memobj_write
.LCOLDE6:
	.section	.text.nrf_memobj_write
.LHOTE6:
	.section	.text.unlikely.nrf_memobj_read,"ax",@progbits
.LCOLDB7:
	.section	.text.nrf_memobj_read,"ax",@progbits
.LHOTB7:
	.globl	nrf_memobj_read
	.type	nrf_memobj_read, @function
nrf_memobj_read:
.LFB165:
	.loc 1 3763 0
	.cfi_startproc
.LVL70:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3764 0
	movl	20(%ebp), %ecx
	.loc 1 3763 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 3764 0
	movl	$1, 12(%ebp)
.LVL71:
	movl	%ecx, 8(%ebp)
.LVL72:
	movl	16(%ebp), %ecx
	.loc 1 3767 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3764 0
	jmp	memobj_op
.LVL73:
	.cfi_endproc
.LFE165:
	.size	nrf_memobj_read, .-nrf_memobj_read
	.section	.text.unlikely.nrf_memobj_read
.LCOLDE7:
	.section	.text.nrf_memobj_read
.LHOTE7:
	.text
.Letext0:
	.section	.text.unlikely.memobj_op
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x88e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF89
	.byte	0xc
	.long	.LASF90
	.long	.LASF91
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x2
	.long	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x4
	.long	0x57
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x5
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x1
	.byte	0x6
	.long	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x14
	.long	0x33
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x16
	.long	0x4c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x17
	.long	0x5e
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x18
	.long	0x70
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x2f
	.long	0x25
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.value	0x179
	.long	0xb8
	.uleb128 0x7
	.long	0xb8
	.uleb128 0x7
	.long	0xad
	.uleb128 0x8
	.byte	0x4
	.long	0x97
	.uleb128 0x9
	.byte	0x8
	.byte	0x1
	.value	0xd2d
	.long	0x125
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.value	0xd2f
	.long	0xfb
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.value	0xd30
	.long	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.value	0xd31
	.long	0x101
	.uleb128 0x9
	.byte	0x14
	.byte	0x1
	.value	0xd32
	.long	0x17c
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.value	0xd34
	.long	0x17c
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.value	0xd35
	.long	0xfb
	.byte	0x4
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.value	0xd36
	.long	0xfb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.value	0xd37
	.long	0xdc
	.byte	0xc
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.value	0xd38
	.long	0xa2
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x125
	.uleb128 0x6
	.long	.LASF30
	.byte	0x1
	.value	0xd39
	.long	0x131
	.uleb128 0x6
	.long	.LASF31
	.byte	0x1
	.value	0xd45
	.long	0x182
	.uleb128 0x6
	.long	.LASF32
	.byte	0x1
	.value	0xd46
	.long	0xdc
	.uleb128 0x6
	.long	.LASF33
	.byte	0x1
	.value	0xd8e
	.long	0xf1
	.uleb128 0x6
	.long	.LASF34
	.byte	0x1
	.value	0xe0c
	.long	0x1be
	.uleb128 0xb
	.long	.LASF92
	.byte	0x8
	.byte	0x1
	.value	0xe26
	.long	0x1e6
	.uleb128 0xa
	.long	.LASF35
	.byte	0x1
	.value	0xe28
	.long	0x203
	.byte	0
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.value	0xe29
	.long	0x2c2
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.value	0xe0d
	.long	0x1fd
	.uleb128 0xa
	.long	.LASF37
	.byte	0x1
	.value	0xe0f
	.long	0x1fd
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x1b2
	.uleb128 0x6
	.long	.LASF38
	.byte	0x1
	.value	0xe10
	.long	0x1e6
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.value	0xe11
	.long	0x240
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.value	0xe13
	.long	0x97
	.byte	0
	.uleb128 0xa
	.long	.LASF40
	.byte	0x1
	.value	0xe14
	.long	0x97
	.byte	0x1
	.uleb128 0xa
	.long	.LASF41
	.byte	0x1
	.value	0xe15
	.long	0xa2
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF42
	.byte	0x1
	.value	0xe16
	.long	0x20f
	.uleb128 0xc
	.byte	0x4
	.byte	0x1
	.value	0xe19
	.long	0x26e
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.value	0xe1b
	.long	0x1a6
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.value	0xe1c
	.long	0x240
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x1
	.value	0xe17
	.long	0x285
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.value	0xe1d
	.long	0x24c
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF45
	.byte	0x1
	.value	0xe1e
	.long	0x26e
	.uleb128 0x9
	.byte	0xc
	.byte	0x1
	.value	0xe1f
	.long	0x2c2
	.uleb128 0xa
	.long	.LASF35
	.byte	0x1
	.value	0xe21
	.long	0x203
	.byte	0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x1
	.value	0xe22
	.long	0x285
	.byte	0x4
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.value	0xe23
	.long	0x2c2
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.long	0x97
	.long	0x2d2
	.uleb128 0xf
	.long	0xd5
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF47
	.byte	0x1
	.value	0xe24
	.long	0x291
	.uleb128 0x10
	.long	.LASF53
	.byte	0x1
	.value	0xde1
	.long	0xb8
	.byte	0x3
	.long	0x32e
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.value	0xde1
	.long	0x32e
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.value	0xde1
	.long	0xb8
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.value	0xde3
	.long	0xb8
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.value	0xde4
	.long	0xb8
	.uleb128 0x13
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.value	0xde5
	.long	0xb8
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x1a6
	.uleb128 0x10
	.long	.LASF54
	.byte	0x1
	.value	0xdf3
	.long	0xb8
	.byte	0x3
	.long	0x384
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.value	0xdf3
	.long	0x32e
	.uleb128 0x11
	.long	.LASF49
	.byte	0x1
	.value	0xdf3
	.long	0xb8
	.uleb128 0x12
	.long	.LASF50
	.byte	0x1
	.value	0xdf5
	.long	0xb8
	.uleb128 0x12
	.long	.LASF51
	.byte	0x1
	.value	0xdf6
	.long	0xb8
	.uleb128 0x13
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.value	0xdf7
	.long	0xb8
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.value	0xe7d
	.long	.LFB163
	.long	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x469
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.value	0xe7d
	.long	0x469
	.long	.LLST0
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.value	0xe7e
	.long	0xdc
	.long	.LLST1
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.value	0xe7f
	.long	0xb8
	.long	.LLST2
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.value	0xe80
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.value	0xe82
	.long	0x46f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0xe84
	.long	0x476
	.long	.LLST3
	.uleb128 0x18
	.long	.LASF59
	.byte	0x1
	.value	0xe85
	.long	0xb8
	.long	.LLST4
	.uleb128 0x18
	.long	.LASF60
	.byte	0x1
	.value	0xe86
	.long	0x1fd
	.long	.LLST5
	.uleb128 0x18
	.long	.LASF61
	.byte	0x1
	.value	0xe87
	.long	0xb8
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF62
	.byte	0x1
	.value	0xe88
	.long	0xb8
	.long	.LLST7
	.uleb128 0x18
	.long	.LASF63
	.byte	0x1
	.value	0xe89
	.long	0x97
	.long	.LLST8
	.uleb128 0x18
	.long	.LASF64
	.byte	0x1
	.value	0xe92
	.long	0xb8
	.long	.LLST9
	.uleb128 0x18
	.long	.LASF65
	.byte	0x1
	.value	0xe93
	.long	0xb8
	.long	.LLST10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x19a
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF66
	.uleb128 0x8
	.byte	0x4
	.long	0x2d2
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.value	0xe2b
	.long	0xe5
	.long	.LFB158
	.long	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b8
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.value	0xe2b
	.long	0x4b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LVL25
	.long	0x86d
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x4be
	.uleb128 0x1c
	.long	0x18e
	.uleb128 0x1d
	.long	.LASF77
	.byte	0x1
	.value	0xe59
	.long	.LFB160
	.long	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.long	0x560
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.value	0xe59
	.long	0x469
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0xe5b
	.long	0x476
	.long	.LLST11
	.uleb128 0x18
	.long	.LASF40
	.byte	0x1
	.value	0xe5c
	.long	0x97
	.long	.LLST12
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0xe5d
	.long	0xb8
	.long	.LLST13
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.value	0xe5e
	.long	0x560
	.long	.LLST14
	.uleb128 0x18
	.long	.LASF37
	.byte	0x1
	.value	0xe5f
	.long	0x560
	.long	.LLST15
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.value	0xe60
	.long	0xb8
	.long	.LLST16
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0xe65
	.long	0x566
	.long	.LLST17
	.uleb128 0x1f
	.long	.LVL36
	.long	0x879
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x203
	.uleb128 0x8
	.byte	0x4
	.long	0x56c
	.uleb128 0x1c
	.long	0x182
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.value	0xe2f
	.long	0x469
	.long	.LFB159
	.long	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.long	0x633
	.uleb128 0x17
	.long	.LASF67
	.byte	0x1
	.value	0xe2f
	.long	0x4b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF73
	.byte	0x1
	.value	0xe30
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.value	0xe32
	.long	0xb8
	.long	.LLST18
	.uleb128 0x18
	.long	.LASF75
	.byte	0x1
	.value	0xe33
	.long	0x97
	.long	.LLST19
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0xe34
	.long	0x476
	.long	.LLST20
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0xe40
	.long	0x560
	.long	.LLST21
	.uleb128 0x18
	.long	.LASF68
	.byte	0x1
	.value	0xe41
	.long	0x560
	.long	.LLST22
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0xe42
	.long	0xb8
	.long	.LLST23
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.value	0xe43
	.long	0xb8
	.long	.LLST24
	.uleb128 0x1f
	.long	.LVL43
	.long	0x885
	.uleb128 0x1f
	.long	.LVL50
	.long	0x885
	.uleb128 0x1f
	.long	.LVL53
	.long	0x4c3
	.byte	0
	.uleb128 0x1d
	.long	.LASF78
	.byte	0x1
	.value	0xe6e
	.long	.LFB161
	.long	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a6
	.uleb128 0x17
	.long	.LASF55
	.byte	0x1
	.value	0xe6e
	.long	0x6a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF58
	.byte	0x1
	.value	0xe70
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	0x2de
	.long	.LBB7
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xe71
	.uleb128 0x22
	.long	0x2fb
	.long	.LLST25
	.uleb128 0x22
	.long	0x2ef
	.long	.LLST26
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.uleb128 0x24
	.long	0x307
	.uleb128 0x24
	.long	0x313
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.uleb128 0x24
	.long	0x320
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x6ac
	.uleb128 0x1c
	.long	0x19a
	.uleb128 0x1d
	.long	.LASF79
	.byte	0x1
	.value	0xe73
	.long	.LFB162
	.long	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.long	0x75b
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.value	0xe73
	.long	0x469
	.long	.LLST27
	.uleb128 0x18
	.long	.LASF58
	.byte	0x1
	.value	0xe75
	.long	0x476
	.long	.LLST28
	.uleb128 0x12
	.long	.LASF39
	.byte	0x1
	.value	0xe76
	.long	0xb8
	.uleb128 0x20
	.long	.LASF80
	.byte	0x1
	.value	0xe77
	.long	0x75b
	.uleb128 0x6
	.byte	0xf2
	.long	.Ldebug_info0+1767
	.sleb128 0
	.uleb128 0x25
	.long	0x334
	.long	.LBB16
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xe76
	.long	0x748
	.uleb128 0x22
	.long	0x351
	.long	.LLST29
	.uleb128 0x22
	.long	0x345
	.long	.LLST30
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.long	0x35d
	.uleb128 0x24
	.long	0x369
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.long	0x376
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL65
	.long	0x4c3
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x240
	.uleb128 0x1d
	.long	.LASF81
	.byte	0x1
	.value	0xea6
	.long	.LFB164
	.long	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d5
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.value	0xea6
	.long	0x469
	.long	.LLST31
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.value	0xea7
	.long	0xdc
	.long	.LLST32
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0xea8
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.value	0xea9
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.long	.LVL69
	.long	0x384
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF82
	.byte	0x1
	.value	0xeaf
	.long	.LFB165
	.long	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.long	0x849
	.uleb128 0x15
	.long	.LASF55
	.byte	0x1
	.value	0xeaf
	.long	0x469
	.long	.LLST33
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.value	0xeb0
	.long	0xdc
	.long	.LLST34
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0xeb1
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.value	0xeb2
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.long	.LVL73
	.long	0x384
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF83
	.byte	0x1
	.value	0x558
	.long	0xf6
	.uleb128 0x27
	.long	.LASF84
	.byte	0x1
	.value	0xc94
	.long	0xb8
	.uleb128 0x27
	.long	.LASF85
	.byte	0x1
	.value	0xc95
	.long	0xb8
	.uleb128 0x28
	.long	.LASF86
	.long	.LASF86
	.byte	0x1
	.value	0xd3a
	.uleb128 0x28
	.long	.LASF87
	.long	.LASF87
	.byte	0x1
	.value	0xd3c
	.uleb128 0x28
	.long	.LASF88
	.long	.LASF88
	.byte	0x1
	.value	0xd3b
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL7
	.value	0x1
	.byte	0x53
	.long	.LVL7
	.long	.LFE163
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.value	0x1
	.byte	0x52
	.long	.LVL2
	.long	.LFE163
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL7
	.value	0x1
	.byte	0x51
	.long	.LVL7
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	.LVL19
	.long	.LFE163
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL7
	.value	0x1
	.byte	0x53
	.long	.LVL7
	.long	.LFE163
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LFE163
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL23
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL11
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL7
	.long	.LVL12
	.value	0x1
	.byte	0x52
	.long	.LVL12
	.long	.LVL15
	.value	0x1
	.byte	0x51
	.long	.LVL17
	.long	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LFE163
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST8:
	.long	.LVL7
	.long	.LVL14
	.value	0x18
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0x22
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x3
	.byte	0xf7
	.uleb128 0x25
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.long	.LVL14
	.long	.LFE163
	.value	0x18
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x3
	.byte	0xf7
	.uleb128 0x25
	.byte	0x91
	.sleb128 -28
	.byte	0x6
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL10
	.long	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LFE163
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL20
	.value	0x1
	.byte	0x52
	.long	.LVL21
	.long	.LFE163
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST11:
	.long	.LVL27
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LFE160
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL27
	.long	.LVL33
	.value	0x2
	.byte	0x70
	.sleb128 5
	.long	0
	.long	0
.LLST13:
	.long	.LVL28
	.long	.LVL32
	.value	0x1
	.byte	0x52
	.long	.LVL32
	.long	.LVL33
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL35
	.value	0x1
	.byte	0x57
	.long	.LVL35
	.long	.LVL36
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	.LVL36
	.long	.LVL39
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST14:
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x53
	.long	.LVL30
	.long	.LVL32
	.value	0x1
	.byte	0x53
	.long	.LVL32
	.long	.LVL36-1
	.value	0x1
	.byte	0x50
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x56
	.long	.LVL37
	.long	.LFE160
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL34
	.long	.LVL37
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST16:
	.long	.LVL28
	.long	.LVL33
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST17:
	.long	.LVL32
	.long	.LVL38
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST18:
	.long	.LVL41
	.long	.LVL47
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST19:
	.long	.LVL42
	.long	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST20:
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x50
	.long	.LVL45
	.long	.LVL56
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST21:
	.long	.LVL46
	.long	.LVL48
	.value	0x1
	.byte	0x56
	.long	.LVL48
	.long	.LVL50-1
	.value	0x1
	.byte	0x52
	.long	.LVL50-1
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	.LVL52
	.long	.LVL54
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST22:
	.long	.LVL50
	.long	.LVL53-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST23:
	.long	.LVL48
	.long	.LVL49
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	.LVL49
	.long	.LVL51
	.value	0x3
	.byte	0x77
	.sleb128 -2
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	.LVL52
	.long	.LVL54
	.value	0x3
	.byte	0x77
	.sleb128 -2
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL48
	.long	.LVL55
	.value	0x6
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL58
	.long	.LVL60
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL58
	.long	.LVL59
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL61
	.long	.LVL65
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL65
	.long	.LFE162
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST28:
	.long	.LVL62
	.long	.LVL65
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL65
	.long	.LFE162
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST29:
	.long	.LVL62
	.long	.LVL64
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL62
	.long	.LVL63
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.long	.LVL63
	.long	.LVL64
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST31:
	.long	.LVL66
	.long	.LVL68
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL68
	.long	.LVL69-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST32:
	.long	.LVL66
	.long	.LVL67
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL67
	.long	.LVL69-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST33:
	.long	.LVL70
	.long	.LVL72
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL72
	.long	.LVL73-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST34:
	.long	.LVL70
	.long	.LVL71
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL71
	.long	.LVL73-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB163
	.long	.LFE163-.LFB163
	.long	.LFB158
	.long	.LFE158-.LFB158
	.long	.LFB160
	.long	.LFE160-.LFB160
	.long	.LFB159
	.long	.LFE159-.LFB159
	.long	.LFB161
	.long	.LFE161-.LFB161
	.long	.LFB162
	.long	.LFE162-.LFB162
	.long	.LFB164
	.long	.LFE164-.LFB164
	.long	.LFB165
	.long	.LFE165-.LFB165
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB7
	.long	.LBE7
	.long	.LBB12
	.long	.LBE12
	.long	0
	.long	0
	.long	.LBB16
	.long	.LBE16
	.long	.LBB21
	.long	.LBE21
	.long	0
	.long	0
	.long	.LFB163
	.long	.LFE163
	.long	.LFB158
	.long	.LFE158
	.long	.LFB160
	.long	.LFE160
	.long	.LFB159
	.long	.LFE159
	.long	.LFB161
	.long	.LFE161
	.long	.LFB162
	.long	.LFE162
	.long	.LFB164
	.long	.LFE164
	.long	.LFB165
	.long	.LFE165
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF59:
	.string	"space_in_chunk"
.LASF35:
	.string	"header"
.LASF23:
	.string	"max_utilization"
.LASF51:
	.string	"new_val"
.LASF29:
	.string	"block_size"
.LASF90:
	.string	"src/nrf_memobj.c"
.LASF39:
	.string	"user_cnt"
.LASF88:
	.string	"nrf_balloc_alloc"
.LASF3:
	.string	"short int"
.LASF17:
	.string	"size_t"
.LASF67:
	.string	"p_pool"
.LASF19:
	.string	"sizetype"
.LASF76:
	.string	"p_prev"
.LASF28:
	.string	"p_memory_begin"
.LASF64:
	.string	"src_offset"
.LASF72:
	.string	"nrf_memobj_alloc"
.LASF5:
	.string	"__uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF77:
	.string	"nrf_memobj_free"
.LASF80:
	.string	"p_fields"
.LASF63:
	.string	"chunks_expected"
.LASF37:
	.string	"p_next"
.LASF26:
	.string	"p_stack_base"
.LASF49:
	.string	"value"
.LASF42:
	.string	"memobj_head_header_fields_t"
.LASF30:
	.string	"nrf_balloc_t"
.LASF71:
	.string	"nrf_memobj_pool_init"
.LASF13:
	.string	"uint8_t"
.LASF79:
	.string	"nrf_memobj_put"
.LASF54:
	.string	"nrf_atomic_u32_sub"
.LASF92:
	.string	"memobj_elem_s"
.LASF34:
	.string	"memobj_elem_t"
.LASF78:
	.string	"nrf_memobj_get"
.LASF57:
	.string	"read"
.LASF11:
	.string	"long long int"
.LASF70:
	.string	"p_pool2"
.LASF50:
	.string	"old_val"
.LASF45:
	.string	"memobj_head_header_t"
.LASF8:
	.string	"long int"
.LASF43:
	.string	"atomic_user_cnt"
.LASF56:
	.string	"offset"
.LASF84:
	.string	"__StackTop"
.LASF4:
	.string	"__uint8_t"
.LASF58:
	.string	"p_head"
.LASF52:
	.string	"str_res"
.LASF62:
	.string	"chunk_offset"
.LASF18:
	.string	"long double"
.LASF2:
	.string	"unsigned char"
.LASF38:
	.string	"memobj_header_t"
.LASF25:
	.string	"p_cb"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF93:
	.string	"memobj_op"
.LASF0:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF22:
	.string	"p_stack_pointer"
.LASF65:
	.string	"curr_cpy_size"
.LASF75:
	.string	"num_of_chunks"
.LASF6:
	.string	"short unsigned int"
.LASF33:
	.string	"nrf_atomic_u32_t"
.LASF27:
	.string	"p_stack_limit"
.LASF74:
	.string	"bsize"
.LASF20:
	.string	"char"
.LASF87:
	.string	"nrf_balloc_free"
.LASF15:
	.string	"int32_t"
.LASF7:
	.string	"__int32_t"
.LASF55:
	.string	"p_obj"
.LASF66:
	.string	"_Bool"
.LASF47:
	.string	"memobj_head_t"
.LASF82:
	.string	"nrf_memobj_read"
.LASF60:
	.string	"p_curr_chunk"
.LASF36:
	.string	"data"
.LASF24:
	.string	"nrf_balloc_cb_t"
.LASF16:
	.string	"uint32_t"
.LASF31:
	.string	"nrf_memobj_pool_t"
.LASF46:
	.string	"head_header"
.LASF10:
	.string	"long unsigned int"
.LASF44:
	.string	"fields"
.LASF73:
	.string	"size"
.LASF32:
	.string	"nrf_memobj_t"
.LASF40:
	.string	"chunk_cnt"
.LASF53:
	.string	"nrf_atomic_u32_add"
.LASF41:
	.string	"chunk_size"
.LASF89:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF81:
	.string	"nrf_memobj_write"
.LASF68:
	.string	"p_curr"
.LASF86:
	.string	"nrf_balloc_init"
.LASF91:
	.string	"/home/stone/Documents/pca"
.LASF69:
	.string	"chunk_less1"
.LASF48:
	.string	"p_data"
.LASF85:
	.string	"__StackLimit"
.LASF83:
	.string	"ITM_RxBuffer"
.LASF61:
	.string	"chunk_idx"
.LASF21:
	.string	"ret_code_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
