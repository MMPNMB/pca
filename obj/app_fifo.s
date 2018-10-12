	.file	"app_fifo.c"
	.text
.Ltext0:
	.section	.text.unlikely.app_fifo_init,"ax",@progbits
.LCOLDB0:
	.section	.text.app_fifo_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.app_fifo_init
.Ltext_cold0:
	.section	.text.app_fifo_init
	.globl	app_fifo_init
	.type	app_fifo_init, @function
app_fifo_init:
.LFB144:
	.file 1 "src/app_fifo.c"
	.loc 1 3086 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3091 0
	movl	$14, %eax
	.loc 1 3086 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3086 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
	.loc 1 3087 0
	testl	%ebx, %ebx
	je	.L2
	.loc 1 3093 0
	testw	%dx, %dx
	.loc 1 3095 0
	movl	$9, %eax
	.loc 1 3093 0
	je	.L2
	.loc 1 3093 0 is_stmt 0 discriminator 1
	movzwl	%dx, %esi
	leal	-1(%esi), %edi
	testl	%esi, %edi
	jne	.L2
	.loc 1 3098 0 is_stmt 1
	decl	%edx
	.loc 1 3099 0
	movl	$0, 8(%ecx)
	.loc 1 3097 0
	movl	%ebx, (%ecx)
	.loc 1 3098 0
	movw	%dx, 4(%ecx)
	.loc 1 3100 0
	movl	$0, 12(%ecx)
	.loc 1 3101 0
	xorl	%eax, %eax
.LVL1:
.L2:
	.loc 1 3102 0
	popl	%ebx
	.cfi_restore 3
.LVL2:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE144:
	.size	app_fifo_init, .-app_fifo_init
	.section	.text.unlikely.app_fifo_init
.LCOLDE0:
	.section	.text.app_fifo_init
.LHOTE0:
	.section	.text.unlikely.app_fifo_put,"ax",@progbits
.LCOLDB1:
	.section	.text.app_fifo_put,"ax",@progbits
.LHOTB1:
	.globl	app_fifo_put
	.type	app_fifo_put, @function
app_fifo_put:
.LFB145:
	.loc 1 3104 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3104 0
	movl	8(%ebp), %edx
.LVL4:
	movl	12(%ebp), %ebx
.LBB16:
.LBB17:
	.loc 1 3068 0
	movl	8(%edx), %eax
.LVL5:
.LBE17:
.LBE16:
	.loc 1 3105 0
	movzwl	4(%edx), %esi
.LBB19:
.LBB18:
	.loc 1 3069 0
	movl	12(%edx), %ecx
.LVL6:
.LBE18:
.LBE19:
	.loc 1 3105 0
	subl	%eax, %ecx
	movl	$4, %eax
	cmpl	%ecx, %esi
	jb	.L9
.LVL7:
.LBB20:
.LBB21:
	.loc 1 3073 0
	movl	12(%edx), %eax
	movl	(%edx), %ecx
	andl	%esi, %eax
	movb	%bl, (%ecx,%eax)
	.loc 1 3074 0
	movl	12(%edx), %eax
	incl	%eax
	movl	%eax, 12(%edx)
.LBE21:
.LBE20:
	.loc 1 3108 0
	xorl	%eax, %eax
.LVL8:
.L9:
	.loc 1 3111 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE145:
	.size	app_fifo_put, .-app_fifo_put
	.section	.text.unlikely.app_fifo_put
.LCOLDE1:
	.section	.text.app_fifo_put
.LHOTE1:
	.section	.text.unlikely.app_fifo_get,"ax",@progbits
.LCOLDB2:
	.section	.text.app_fifo_get,"ax",@progbits
.LHOTB2:
	.globl	app_fifo_get
	.type	app_fifo_get, @function
app_fifo_get:
.LFB146:
	.loc 1 3113 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$5, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 3113 0
	movl	8(%ebp), %edx
.LVL10:
.LBB28:
.LBB29:
	.loc 1 3068 0
	movl	8(%edx), %ebx
.LVL11:
	.loc 1 3069 0
	movl	12(%edx), %ecx
.LVL12:
.LBE29:
.LBE28:
	.loc 1 3114 0
	cmpl	%ecx, %ebx
	je	.L14
.LVL13:
.LBB30:
.LBB31:
.LBB32:
.LBB33:
	.loc 1 3078 0
	movzwl	4(%edx), %ecx
	movl	8(%edx), %eax
	andl	%ecx, %eax
	movl	(%edx), %ecx
	movb	(%ecx,%eax), %cl
	movl	12(%ebp), %eax
	movb	%cl, (%eax)
.LVL14:
.LBE33:
.LBE32:
	.loc 1 3083 0
	movl	8(%edx), %eax
	incl	%eax
	movl	%eax, 8(%edx)
.LBE31:
.LBE30:
	.loc 1 3117 0
	xorl	%eax, %eax
.LVL15:
.L14:
	.loc 1 3120 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE146:
	.size	app_fifo_get, .-app_fifo_get
	.section	.text.unlikely.app_fifo_get
.LCOLDE2:
	.section	.text.app_fifo_get
.LHOTE2:
	.section	.text.unlikely.app_fifo_peek,"ax",@progbits
.LCOLDB3:
	.section	.text.app_fifo_peek,"ax",@progbits
.LHOTB3:
	.globl	app_fifo_peek
	.type	app_fifo_peek, @function
app_fifo_peek:
.LFB147:
	.loc 1 3122 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 3122 0
	movl	8(%ebp), %edx
.LVL17:
	.loc 1 3123 0
	movzwl	12(%ebp), %ecx
.LBB38:
.LBB39:
	.loc 1 3068 0
	movl	8(%edx), %eax
.LVL18:
	.loc 1 3069 0
	movl	12(%edx), %ebx
.LVL19:
.LBE39:
.LBE38:
	.loc 1 3123 0
	subl	%eax, %ebx
	movl	$5, %eax
	cmpl	%ebx, %ecx
	jnb	.L19
.LVL20:
.LBB40:
.LBB41:
	.loc 1 3078 0
	movl	8(%edx), %eax
	addl	%eax, %ecx
	movzwl	4(%edx), %eax
	movl	(%edx), %edx
	andl	%ecx, %eax
	movb	(%edx,%eax), %dl
	movl	16(%ebp), %eax
	movb	%dl, (%eax)
.LBE41:
.LBE40:
	.loc 1 3126 0
	xorl	%eax, %eax
.LVL21:
.L19:
	.loc 1 3129 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE147:
	.size	app_fifo_peek, .-app_fifo_peek
	.section	.text.unlikely.app_fifo_peek
.LCOLDE3:
	.section	.text.app_fifo_peek
.LHOTE3:
	.section	.text.unlikely.app_fifo_flush,"ax",@progbits
.LCOLDB4:
	.section	.text.app_fifo_flush,"ax",@progbits
.LHOTB4:
	.globl	app_fifo_flush
	.type	app_fifo_flush, @function
app_fifo_flush:
.LFB148:
	.loc 1 3131 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3131 0
	movl	8(%ebp), %eax
	.loc 1 3132 0
	movl	12(%eax), %edx
	movl	%edx, 8(%eax)
	.loc 1 3134 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE148:
	.size	app_fifo_flush, .-app_fifo_flush
	.section	.text.unlikely.app_fifo_flush
.LCOLDE4:
	.section	.text.app_fifo_flush
.LHOTE4:
	.section	.text.unlikely.app_fifo_read,"ax",@progbits
.LCOLDB5:
	.section	.text.app_fifo_read,"ax",@progbits
.LHOTB5:
	.globl	app_fifo_read
	.type	app_fifo_read, @function
app_fifo_read:
.LFB149:
	.loc 1 3136 0
	.cfi_startproc
.LVL23:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3136 0
	movl	16(%ebp), %ecx
	movl	8(%ebp), %edx
	.loc 1 3140 0
	testl	%ecx, %ecx
	je	.L29
	testl	%edx, %edx
	je	.L29
.LVL24:
.LBB48:
.LBB49:
	.loc 1 3068 0
	movl	8(%edx), %eax
.LVL25:
	.loc 1 3069 0
	movl	12(%edx), %ebx
.LBE49:
.LBE48:
	.loc 1 3144 0
	movl	(%ecx), %esi
.LBB51:
.LBB50:
	.loc 1 3069 0
	subl	%eax, %ebx
.LVL26:
.LBE50:
.LBE51:
	.loc 1 3150 0
	movl	$5, %eax
	.loc 1 3148 0
	testl	%ebx, %ebx
	.loc 1 3147 0
	movl	%ebx, (%ecx)
	.loc 1 3148 0
	je	.L26
	.loc 1 3156 0
	xorl	%eax, %eax
	.loc 1 3152 0
	cmpl	$0, 12(%ebp)
	je	.L26
	.loc 1 3146 0
	cmpl	%ebx, %esi
	cmovbe	%esi, %ebx
.LVL27:
	movl	%ebx, -16(%ebp)
.LVL28:
.L27:
	.loc 1 3158 0
	cmpl	-16(%ebp), %eax
	je	.L34
.LBB52:
.LBB53:
.LBB54:
.LBB55:
	.loc 1 3078 0
	movzwl	4(%edx), %edi
	movl	8(%edx), %esi
.LBE55:
.LBE54:
.LBE53:
.LBE52:
	.loc 1 3160 0
	incl	%eax
.LVL29:
.LBB59:
.LBB58:
.LBB57:
.LBB56:
	.loc 1 3078 0
	andl	%edi, %esi
	movl	(%edx), %edi
	movb	(%edi,%esi), %bl
	movl	12(%ebp), %edi
	movb	%bl, -1(%edi,%eax)
.LVL30:
.LBE56:
.LBE57:
	.loc 1 3083 0
	movl	8(%edx), %esi
	incl	%esi
	movl	%esi, 8(%edx)
	jmp	.L27
.LVL31:
.L34:
.LBE58:
.LBE59:
	.loc 1 3162 0
	movl	%eax, (%ecx)
	.loc 1 3163 0
	xorl	%eax, %eax
.LVL32:
	jmp	.L26
.LVL33:
.L29:
	.loc 1 3142 0
	movl	$14, %eax
.L26:
	.loc 1 3164 0
	popl	%edx
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
.LFE149:
	.size	app_fifo_read, .-app_fifo_read
	.section	.text.unlikely.app_fifo_read
.LCOLDE5:
	.section	.text.app_fifo_read
.LHOTE5:
	.section	.text.unlikely.app_fifo_write,"ax",@progbits
.LCOLDB6:
	.section	.text.app_fifo_write,"ax",@progbits
.LHOTB6:
	.globl	app_fifo_write
	.type	app_fifo_write, @function
app_fifo_write:
.LFB150:
	.loc 1 3166 0
	.cfi_startproc
.LVL34:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3166 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %edx
	movl	12(%ebp), %esi
	.loc 1 3170 0
	testl	%eax, %eax
	.loc 1 3166 0
	movl	%eax, -16(%ebp)
	.loc 1 3170 0
	je	.L39
	testl	%edx, %edx
	je	.L39
.LVL35:
.LBB64:
.LBB65:
	.loc 1 3068 0
	movl	8(%edx), %eax
.LVL36:
.LBE65:
.LBE64:
	.loc 1 3173 0
	movzwl	4(%edx), %ebx
.LBB67:
.LBB66:
	.loc 1 3069 0
	movl	12(%edx), %edi
.LVL37:
.LBE66:
.LBE67:
	.loc 1 3173 0
	subl	%edi, %eax
	leal	1(%eax,%ebx), %ebx
.LVL38:
	.loc 1 3174 0
	movl	-16(%ebp), %eax
	.loc 1 3178 0
	testl	%ebx, %ebx
	.loc 1 3174 0
	movl	(%eax), %edi
.LVL39:
	.loc 1 3177 0
	movl	%ebx, (%eax)
	.loc 1 3180 0
	movl	$4, %eax
	.loc 1 3178 0
	je	.L36
	.loc 1 3186 0
	xorl	%eax, %eax
	.loc 1 3182 0
	testl	%esi, %esi
	je	.L36
	.loc 1 3176 0
	cmpl	%edi, %ebx
	cmovbe	%ebx, %edi
.LVL40:
	movl	%edi, -20(%ebp)
.LVL41:
.L37:
	.loc 1 3188 0
	cmpl	-20(%ebp), %eax
	je	.L44
.LBB68:
.LBB69:
	.loc 1 3073 0
	movzwl	4(%edx), %edi
	movl	12(%edx), %ebx
.LBE69:
.LBE68:
	.loc 1 3190 0
	incl	%eax
.LVL42:
.LBB71:
.LBB70:
	.loc 1 3073 0
	movb	-1(%esi,%eax), %cl
	andl	%edi, %ebx
	movl	(%edx), %edi
	movb	%cl, (%edi,%ebx)
.LVL43:
	.loc 1 3074 0
	movl	12(%edx), %ebx
	incl	%ebx
	movl	%ebx, 12(%edx)
	jmp	.L37
.LVL44:
.L44:
.LBE70:
.LBE71:
	.loc 1 3192 0
	movl	-16(%ebp), %ecx
	movl	%eax, (%ecx)
	.loc 1 3193 0
	xorl	%eax, %eax
.LVL45:
	jmp	.L36
.LVL46:
.L39:
	.loc 1 3172 0
	movl	$14, %eax
.L36:
	.loc 1 3194 0
	popl	%edx
	popl	%ecx
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
.LFE150:
	.size	app_fifo_write, .-app_fifo_write
	.section	.text.unlikely.app_fifo_write
.LCOLDE6:
	.section	.text.app_fifo_write
.LHOTE6:
	.text
.Letext0:
	.section	.text.unlikely.app_fifo_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x645
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF50
	.byte	0xc
	.long	.LASF51
	.long	.LASF52
	.long	.Ldebug_ranges0+0x90
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
	.byte	0x1
	.byte	0x2
	.long	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x4
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1
	.byte	0x5
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x1
	.byte	0x6
	.long	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x16
	.long	0x45
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x18
	.long	0x69
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x5
	.long	0xb8
	.uleb128 0x5
	.long	0xad
	.uleb128 0x6
	.byte	0x4
	.long	0x97
	.uleb128 0x7
	.byte	0x10
	.byte	0x1
	.value	0xbec
	.long	0x126
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.value	0xbee
	.long	0xe2
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.value	0xbef
	.long	0xa2
	.byte	0x4
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.value	0xbf0
	.long	0xd8
	.byte	0x8
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.value	0xbf1
	.long	0xd8
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.value	0xbf2
	.long	0xe8
	.uleb128 0xa
	.long	.LASF53
	.byte	0x1
	.value	0xbfa
	.long	0xb8
	.byte	0x3
	.long	0x15c
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0xbfa
	.long	0x15c
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.value	0xbfc
	.long	0xb8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x126
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0xc0d
	.long	0xb8
	.long	.LFB144
	.long	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.value	0xc0d
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF20
	.byte	0x1
	.value	0xc0d
	.long	0xe2
	.long	.LLST0
	.uleb128 0xe
	.long	.LASF26
	.byte	0x1
	.value	0xc0d
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.value	0xbff
	.byte	0x3
	.long	0x1d1
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0xbff
	.long	0x15c
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.value	0xbff
	.long	0x97
	.byte	0
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.value	0xc1f
	.long	0xb8
	.long	.LFB145
	.long	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x256
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.value	0xc1f
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.value	0xc1f
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.long	0x132
	.long	.LBB16
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xc21
	.long	0x236
	.uleb128 0x12
	.long	0x143
	.long	.LLST1
	.uleb128 0x13
	.long	.Ldebug_ranges0+0
	.uleb128 0x14
	.long	0x14f
	.long	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x1ab
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.value	0xc23
	.uleb128 0x16
	.long	0x1c4
	.uleb128 0x12
	.long	0x1b8
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.value	0xc08
	.byte	0x3
	.long	0x27c
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0xc08
	.long	0x15c
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.value	0xc08
	.long	0xe2
	.byte	0
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.value	0xc04
	.byte	0x3
	.long	0x2ae
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0xc04
	.long	0x15c
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.value	0xc04
	.long	0xa2
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.value	0xc04
	.long	0xe2
	.byte	0
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.value	0xc28
	.long	0xb8
	.long	.LFB146
	.long	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x367
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.value	0xc28
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.value	0xc28
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	0x132
	.long	.LBB28
	.long	.LBE28-.LBB28
	.byte	0x1
	.value	0xc2a
	.long	0x317
	.uleb128 0x12
	.long	0x143
	.long	.LLST4
	.uleb128 0x18
	.long	.LBB29
	.long	.LBE29-.LBB29
	.uleb128 0x14
	.long	0x14f
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x256
	.long	.LBB30
	.long	.LBE30-.LBB30
	.byte	0x1
	.value	0xc2c
	.uleb128 0x12
	.long	0x26f
	.long	.LLST6
	.uleb128 0x12
	.long	0x263
	.long	.LLST7
	.uleb128 0x15
	.long	0x27c
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.value	0xc0a
	.uleb128 0x12
	.long	0x2a1
	.long	.LLST8
	.uleb128 0x12
	.long	0x295
	.long	.LLST9
	.uleb128 0x12
	.long	0x289
	.long	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.value	0xc31
	.long	0xb8
	.long	.LFB147
	.long	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0x40c
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.value	0xc31
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.value	0xc31
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.value	0xc31
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	0x132
	.long	.LBB38
	.long	.LBE38-.LBB38
	.byte	0x1
	.value	0xc33
	.long	0x3df
	.uleb128 0x12
	.long	0x143
	.long	.LLST11
	.uleb128 0x18
	.long	.LBB39
	.long	.LBE39-.LBB39
	.uleb128 0x14
	.long	0x14f
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	0x27c
	.long	.LBB40
	.long	.LBE40-.LBB40
	.byte	0x1
	.value	0xc35
	.uleb128 0x12
	.long	0x2a1
	.long	.LLST13
	.uleb128 0x12
	.long	0x295
	.long	.LLST14
	.uleb128 0x12
	.long	0x289
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.value	0xc3a
	.long	0xb8
	.long	.LFB148
	.long	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x436
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.value	0xc3a
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.value	0xc3f
	.long	0xb8
	.long	.LFB149
	.long	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x536
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.value	0xc3f
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LASF39
	.byte	0x1
	.value	0xc3f
	.long	0xe2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.value	0xc3f
	.long	0x536
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF41
	.byte	0x1
	.value	0xc47
	.long	0x53c
	.uleb128 0x1a
	.long	.LASF42
	.byte	0x1
	.value	0xc48
	.long	0x53c
	.long	.LLST16
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x1
	.value	0xc49
	.long	0xb8
	.long	.LLST17
	.uleb128 0x1a
	.long	.LASF43
	.byte	0x1
	.value	0xc4a
	.long	0xb8
	.long	.LLST18
	.uleb128 0x11
	.long	0x132
	.long	.LBB48
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xc47
	.long	0x4e6
	.uleb128 0x12
	.long	0x143
	.long	.LLST19
	.uleb128 0x13
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x14
	.long	0x14f
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x256
	.long	.LBB52
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0xc58
	.uleb128 0x12
	.long	0x26f
	.long	.LLST21
	.uleb128 0x12
	.long	0x263
	.long	.LLST22
	.uleb128 0x1b
	.long	0x27c
	.long	.LBB54
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0xc0a
	.uleb128 0x12
	.long	0x2a1
	.long	.LLST23
	.uleb128 0x12
	.long	0x295
	.long	.LLST24
	.uleb128 0x12
	.long	0x289
	.long	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xb8
	.uleb128 0x1c
	.long	0xb8
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.value	0xc5d
	.long	0xb8
	.long	.LFB150
	.long	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.long	0x619
	.uleb128 0xe
	.long	.LASF25
	.byte	0x1
	.value	0xc5d
	.long	0x15c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LASF39
	.byte	0x1
	.value	0xc5d
	.long	0x619
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.value	0xc5d
	.long	0x536
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF45
	.byte	0x1
	.value	0xc65
	.long	0x53c
	.long	.LLST26
	.uleb128 0x1a
	.long	.LASF42
	.byte	0x1
	.value	0xc66
	.long	0x53c
	.long	.LLST27
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x1
	.value	0xc67
	.long	0xb8
	.long	.LLST28
	.uleb128 0x1a
	.long	.LASF46
	.byte	0x1
	.value	0xc68
	.long	0xb8
	.long	.LLST29
	.uleb128 0x11
	.long	0x132
	.long	.LBB64
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.value	0xc65
	.long	0x5f5
	.uleb128 0x12
	.long	0x143
	.long	.LLST30
	.uleb128 0x13
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x14
	.long	0x14f
	.long	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x1ab
	.long	.LBB68
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.value	0xc76
	.uleb128 0x12
	.long	0x1c4
	.long	.LLST32
	.uleb128 0x12
	.long	0x1b8
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x61f
	.uleb128 0x1c
	.long	0x97
	.uleb128 0x1d
	.long	.LASF47
	.byte	0x1
	.value	0x4fe
	.long	0xdd
	.uleb128 0x1d
	.long	.LASF48
	.byte	0x1
	.value	0xac0
	.long	0xb8
	.uleb128 0x1d
	.long	.LASF49
	.byte	0x1
	.value	0xac1
	.long	0xb8
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x53
	.long	.LVL2
	.long	.LFE144
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST9:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL17
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST14:
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST15:
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST16:
	.long	.LVL26
	.long	.LVL28
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST17:
	.long	.LVL26
	.long	.LVL28
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL28
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LVL33
	.value	0x2
	.byte	0x71
	.sleb128 0
	.long	0
	.long	0
.LLST18:
	.long	.LVL26
	.long	.LVL27
	.value	0x16
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.value	0x17
	.byte	0x76
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x6
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL24
	.long	.LVL26
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST20:
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST21:
	.long	.LVL29
	.long	.LVL31
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL29
	.long	.LVL31
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST23:
	.long	.LVL29
	.long	.LVL30
	.value	0x9
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL29
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST26:
	.long	.LVL38
	.long	.LVL41
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST28:
	.long	.LVL39
	.long	.LVL41
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL41
	.long	.LVL45
	.value	0x1
	.byte	0x50
	.long	.LVL45
	.long	.LVL46
	.value	0x2
	.byte	0x71
	.sleb128 0
	.long	0
	.long	0
.LLST29:
	.long	.LVL39
	.long	.LVL40
	.value	0x16
	.byte	0x73
	.sleb128 0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL35
	.long	.LVL37
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST31:
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST32:
	.long	.LVL42
	.long	.LVL43
	.value	0x7
	.byte	0x76
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST33:
	.long	.LVL42
	.long	.LVL44
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB144
	.long	.LFE144-.LFB144
	.long	.LFB145
	.long	.LFE145-.LFB145
	.long	.LFB146
	.long	.LFE146-.LFB146
	.long	.LFB147
	.long	.LFE147-.LFB147
	.long	.LFB148
	.long	.LFE148-.LFB148
	.long	.LFB149
	.long	.LFE149-.LFB149
	.long	.LFB150
	.long	.LFE150-.LFB150
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB16
	.long	.LBE16
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LBB48
	.long	.LBE48
	.long	.LBB51
	.long	.LBE51
	.long	0
	.long	0
	.long	.LBB52
	.long	.LBE52
	.long	.LBB59
	.long	.LBE59
	.long	0
	.long	0
	.long	.LBB54
	.long	.LBE54
	.long	.LBB57
	.long	.LBE57
	.long	0
	.long	0
	.long	.LBB64
	.long	.LBE64
	.long	.LBB67
	.long	.LBE67
	.long	0
	.long	0
	.long	.LBB68
	.long	.LBE68
	.long	.LBB71
	.long	.LBE71
	.long	0
	.long	0
	.long	.LFB144
	.long	.LFE144
	.long	.LFB145
	.long	.LFE145
	.long	.LFB146
	.long	.LFE146
	.long	.LFB147
	.long	.LFE147
	.long	.LFB148
	.long	.LFE148
	.long	.LFB149
	.long	.LFE149
	.long	.LFB150
	.long	.LFE150
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF53:
	.string	"fifo_length"
.LASF3:
	.string	"__uint8_t"
.LASF21:
	.string	"buf_size_mask"
.LASF50:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF36:
	.string	"app_fifo_peek"
.LASF28:
	.string	"app_fifo_init"
.LASF6:
	.string	"__int32_t"
.LASF32:
	.string	"p_byte"
.LASF40:
	.string	"p_size"
.LASF37:
	.string	"app_fifo_flush"
.LASF23:
	.string	"write_pos"
.LASF25:
	.string	"p_fifo"
.LASF27:
	.string	"byte"
.LASF42:
	.string	"requested_len"
.LASF51:
	.string	"src/app_fifo.c"
.LASF11:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"app_fifo_t"
.LASF35:
	.string	"app_fifo_get"
.LASF38:
	.string	"app_fifo_read"
.LASF9:
	.string	"long unsigned int"
.LASF39:
	.string	"p_byte_array"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"read_pos"
.LASF47:
	.string	"ITM_RxBuffer"
.LASF45:
	.string	"available_count"
.LASF4:
	.string	"__uint16_t"
.LASF17:
	.string	"long double"
.LASF30:
	.string	"fifo_put"
.LASF8:
	.string	"__uint32_t"
.LASF12:
	.string	"unsigned int"
.LASF46:
	.string	"write_size"
.LASF43:
	.string	"read_size"
.LASF49:
	.string	"__StackLimit"
.LASF19:
	.string	"char"
.LASF13:
	.string	"uint8_t"
.LASF33:
	.string	"fifo_peek"
.LASF48:
	.string	"__StackTop"
.LASF15:
	.string	"int32_t"
.LASF18:
	.string	"sizetype"
.LASF44:
	.string	"app_fifo_write"
.LASF10:
	.string	"long long int"
.LASF26:
	.string	"buf_size"
.LASF34:
	.string	"index"
.LASF52:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF41:
	.string	"byte_count"
.LASF14:
	.string	"uint16_t"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF20:
	.string	"p_buf"
.LASF29:
	.string	"app_fifo_put"
.LASF0:
	.string	"signed char"
.LASF31:
	.string	"fifo_get"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
