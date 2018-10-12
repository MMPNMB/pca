	.file	"crc32.c"
	.text
.Ltext0:
	.section	.text.unlikely.crc32_compute,"ax",@progbits
.LCOLDB0:
	.section	.text.crc32_compute,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.crc32_compute
.Ltext_cold0:
	.section	.text.crc32_compute
	.globl	crc32_compute
	.type	crc32_compute, @function
crc32_compute:
.LFB140:
	.file 1 "src/crc32.c"
	.loc 1 3054 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	orl	$-1, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	movl	16(%ebp), %edx
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3058 0
	testl	%edx, %edx
	je	.L2
	.loc 1 3058 0 is_stmt 0 discriminator 1
	movl	(%edx), %eax
	notl	%eax
.L2:
	movl	8(%ebp), %edx
	movl	12(%ebp), %ebx
.LBB2:
.LBB3:
	.loc 1 3064 0 is_stmt 1 discriminator 1
	movl	$-306674912, %esi
	addl	%edx, %ebx
.L3:
.LVL1:
.LBE3:
	.loc 1 3059 0 discriminator 1
	cmpl	%edx, %ebx
	je	.L13
	.loc 1 3061 0
	movzbl	(%edx), %ecx
	xorl	%ecx, %eax
.LVL2:
	movl	$8, %ecx
.LVL3:
.L5:
.LBB4:
	.loc 1 3064 0
	movl	%eax, %edi
	shrl	%edi
	andl	$1, %eax
.LVL4:
	cmovne	%esi, %eax
	xorl	%edi, %eax
.LVL5:
	.loc 1 3062 0
	decl	%ecx
.LVL6:
	jne	.L5
.LVL7:
	incl	%edx
.LVL8:
	jmp	.L3
.LVL9:
.L13:
.LBE4:
.LBE2:
	.loc 1 3068 0
	popl	%ebx
	.cfi_restore 3
	.loc 1 3067 0
	notl	%eax
.LVL10:
	.loc 1 3068 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE140:
	.size	crc32_compute, .-crc32_compute
	.section	.text.unlikely.crc32_compute
.LCOLDE0:
	.section	.text.crc32_compute
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.crc32_compute
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x182
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF24
	.byte	0xc
	.long	.LASF25
	.long	.LASF26
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x6
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x17
	.long	0x4c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF15
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF16
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x5
	.long	0x97
	.uleb128 0x6
	.long	.LASF27
	.byte	0x1
	.value	0xbed
	.long	0xa2
	.long	.LFB140
	.long	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.value	0xbed
	.long	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.value	0xbed
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.value	0xbed
	.long	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x8
	.string	"crc"
	.byte	0x1
	.value	0xbef
	.long	0xa2
	.long	.LLST0
	.uleb128 0x9
	.long	.LBB2
	.long	.LBE2-.LBB2
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.value	0xbf3
	.long	0xa2
	.long	.LLST1
	.uleb128 0xa
	.long	.Ldebug_ranges0+0
	.uleb128 0x8
	.string	"j"
	.byte	0x1
	.value	0xbf6
	.long	0xa2
	.long	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x151
	.uleb128 0xc
	.long	0x8c
	.uleb128 0xb
	.byte	0x4
	.long	0x15c
	.uleb128 0xc
	.long	0xa2
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.value	0x4fe
	.long	0xc2
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.value	0xac0
	.long	0xa2
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.value	0xac1
	.long	0xa2
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.long	.LVL1
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LFE140
	.value	0x4
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
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
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL8
	.long	.LFE140
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
.LLST2:
	.long	.LVL2
	.long	.LVL3
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x51
	.long	.LVL5
	.long	.LVL6
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	.LVL6
	.long	.LVL9
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB140
	.long	.LFE140-.LFB140
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB3
	.long	.LBE3
	.long	.LBB4
	.long	.LBE4
	.long	0
	.long	0
	.long	.LFB140
	.long	.LFE140
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"__uint8_t"
.LASF5:
	.string	"__int32_t"
.LASF10:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF24:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"ITM_RxBuffer"
.LASF7:
	.string	"__uint32_t"
.LASF25:
	.string	"src/crc32.c"
.LASF18:
	.string	"p_data"
.LASF11:
	.string	"unsigned int"
.LASF23:
	.string	"__StackLimit"
.LASF17:
	.string	"char"
.LASF12:
	.string	"uint8_t"
.LASF20:
	.string	"p_crc"
.LASF22:
	.string	"__StackTop"
.LASF13:
	.string	"int32_t"
.LASF16:
	.string	"sizetype"
.LASF9:
	.string	"long long int"
.LASF27:
	.string	"crc32_compute"
.LASF26:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"size"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
