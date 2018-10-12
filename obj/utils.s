	.file	"utils.c"
	.text
.Ltext0:
	.section	.text.unlikely._copy,"ax",@progbits
.LCOLDB0:
	.section	.text._copy,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely._copy
.Ltext_cold0:
	.section	.text._copy
	.globl	_copy
	.type	_copy, @function
_copy:
.LFB0:
	.file 1 "src/utils.c"
	.loc 1 294 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 294 0
	movl	20(%ebp), %edx
	.loc 1 295 0
	cmpl	12(%ebp), %edx
	.loc 1 294 0
	movl	16(%ebp), %esi
	.loc 1 295 0
	ja	.L2
	.loc 1 296 0
	movl	8(%ebp), %edi
	movl	%edx, %ecx
	.loc 1 297 0
	movl	%edx, %eax
	.loc 1 296 0
	rep movsb
.LVL1:
.L2:
	.loc 1 301 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	_copy, .-_copy
	.section	.text.unlikely._copy
.LCOLDE0:
	.section	.text._copy
.LHOTE0:
	.section	.text.unlikely._set,"ax",@progbits
.LCOLDB1:
	.section	.text._set,"ax",@progbits
.LHOTB1:
	.globl	_set
	.type	_set, @function
_set:
.LFB1:
	.loc 1 303 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 303 0
	movl	16(%ebp), %ecx
	.loc 1 304 0
	movb	12(%ebp), %al
	movl	8(%ebp), %edi
	rep stosb
	.loc 1 305 0
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_set, .-_set
	.section	.text.unlikely._set
.LCOLDE1:
	.section	.text._set
.LHOTE1:
	.section	.text.unlikely._double_byte,"ax",@progbits
.LCOLDB2:
	.section	.text._double_byte,"ax",@progbits
.LHOTB2:
	.globl	_double_byte
	.type	_double_byte, @function
_double_byte:
.LFB2:
	.loc 1 307 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 308 0
	movb	$27, %dl
	.loc 1 307 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 307 0
	movl	8(%ebp), %ecx
	.loc 1 309 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 308 0
	movb	%cl, %al
	shrb	$7, %al
	imull	%edx, %eax
	leal	(%ecx,%ecx), %edx
	xorl	%edx, %eax
	.loc 1 309 0
	ret
	.cfi_endproc
.LFE2:
	.size	_double_byte, .-_double_byte
	.section	.text.unlikely._double_byte
.LCOLDE2:
	.section	.text._double_byte
.LHOTE2:
	.section	.text.unlikely._compare,"ax",@progbits
.LCOLDB3:
	.section	.text._compare,"ax",@progbits
.LHOTB3:
	.globl	_compare
	.type	_compare, @function
_compare:
.LFB3:
	.loc 1 311 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 314 0
	xorl	%eax, %eax
	.loc 1 311 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL5:
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	8(%ebp), %edx
	movl	16(%ebp), %esi
	movl	12(%ebp), %ecx
	addl	%edx, %esi
.LVL6:
.L12:
.LBB2:
	.loc 1 315 0 discriminator 1
	cmpl	%esi, %edx
	je	.L15
	.loc 1 316 0 discriminator 3
	movb	(%edx), %bl
	xorb	(%ecx), %bl
	incl	%edx
.LVL7:
	incl	%ecx
	orl	%ebx, %eax
.LVL8:
	jmp	.L12
.LVL9:
.L15:
.LBE2:
	.loc 1 319 0
	popl	%ebx
	.cfi_restore 3
	.loc 1 318 0
	movzbl	%al, %eax
	.loc 1 319 0
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	_compare, .-_compare
	.section	.text.unlikely._compare
.LCOLDE3:
	.section	.text._compare
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely._copy
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1f9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF26
	.byte	0xc
	.long	.LASF27
	.long	.LASF28
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF9
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF11
	.byte	0x1
	.byte	0x30
	.long	0x6f
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.value	0x124
	.long	0x6f
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xfa
	.uleb128 0x7
	.string	"to"
	.byte	0x1
	.value	0x124
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.value	0x124
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.value	0x125
	.long	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.value	0x125
	.long	0x6f
	.long	.LLST0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x76
	.uleb128 0xa
	.byte	0x4
	.long	0x106
	.uleb128 0xb
	.long	0x76
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.value	0x12e
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e
	.uleb128 0x7
	.string	"to"
	.byte	0x1
	.value	0x12e
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"val"
	.byte	0x1
	.value	0x12e
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.value	0x12e
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.value	0x132
	.long	0x76
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x176
	.uleb128 0x7
	.string	"a"
	.byte	0x1
	.value	0x132
	.long	0x76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.value	0x136
	.long	0x68
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x7
	.string	"a"
	.byte	0x1
	.value	0x136
	.long	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"b"
	.byte	0x1
	.value	0x136
	.long	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.long	.LASF22
	.byte	0x1
	.value	0x136
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.long	.LASF23
	.byte	0x1
	.value	0x138
	.long	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LASF24
	.byte	0x1
	.value	0x139
	.long	0x100
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.value	0x13a
	.long	0x76
	.long	.LLST1
	.uleb128 0x10
	.long	.LBB2
	.long	.LBE2-.LBB2
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.value	0x13b
	.long	0x6f
	.long	.LLST2
	.byte	0
	.byte	0
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL1
	.long	.LFE0
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LFE3
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.value	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x20
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL9
	.long	.LFE3
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"__uint8_t"
.LASF16:
	.string	"from"
.LASF23:
	.string	"tempa"
.LASF24:
	.string	"tempb"
.LASF19:
	.string	"_double_byte"
.LASF21:
	.string	"_compare"
.LASF22:
	.string	"size"
.LASF5:
	.string	"long unsigned int"
.LASF26:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"size_t"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF25:
	.string	"result"
.LASF17:
	.string	"from_len"
.LASF15:
	.string	"to_len"
.LASF20:
	.string	"_set"
.LASF13:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF28:
	.string	"/home/stone/Documents/pca"
.LASF18:
	.string	"_copy"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF27:
	.string	"src/utils.c"
.LASF12:
	.string	"long double"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
