	.file	"util.c"
	.text
.Ltext0:
	.section	.text.unlikely.util_ones_count_get,"ax",@progbits
.LCOLDB0:
	.section	.text.util_ones_count_get,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.util_ones_count_get
.Ltext_cold0:
	.section	.text.util_ones_count_get
	.globl	util_ones_count_get
	.type	util_ones_count_get, @function
util_ones_count_get:
.LFB0:
	.file 1 "src/util.c"
	.loc 1 57 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 58 0
	xorl	%eax, %eax
	.loc 1 57 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 57 0
	movb	12(%ebp), %cl
	movl	8(%ebp), %ebx
.LVL1:
.L2:
	.loc 1 59 0
	decl	%ecx
.LVL2:
	cmpb	$-1, %cl
	je	.L8
.LBB2:
	.loc 1 61 0
	movb	(%ebx), %dl
.LVL3:
.L3:
	.loc 1 62 0
	testb	%dl, %dl
	je	.L9
	.loc 1 63 0
	leal	-1(%edx), %esi
	.loc 1 64 0
	incl	%eax
.LVL4:
	.loc 1 63 0
	andl	%esi, %edx
.LVL5:
	jmp	.L3
.LVL6:
.L9:
	.loc 1 66 0
	incl	%ebx
.LVL7:
	jmp	.L2
.LVL8:
.L8:
.LBE2:
	.loc 1 69 0
	popl	%ebx
	.cfi_restore 3
.LVL9:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	util_ones_count_get, .-util_ones_count_get
	.section	.text.unlikely.util_ones_count_get
.LCOLDE0:
	.section	.text.util_ones_count_get
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.util_ones_count_get
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF13
	.byte	0xc
	.long	.LASF14
	.long	.LASF15
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF16
	.byte	0x1
	.byte	0x33
	.long	0x2c
	.uleb128 0x5
	.long	.LASF17
	.byte	0x1
	.byte	0x38
	.long	0x6b
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0xd6
	.uleb128 0x6
	.long	.LASF9
	.byte	0x1
	.byte	0x38
	.long	0xd6
	.long	.LLST0
	.uleb128 0x6
	.long	.LASF10
	.byte	0x1
	.byte	0x38
	.long	0x6b
	.long	.LLST1
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.byte	0x3a
	.long	0x6b
	.long	.LLST2
	.uleb128 0x8
	.long	.LBB2
	.long	.LBE2-.LBB2
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x3c
	.long	0x6b
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x6b
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.sleb128 0
	.long	.LVL1
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL1
	.long	.LFE0
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LFE0
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x52
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x52
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
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"octets"
.LASF11:
	.string	"one_count"
.LASF14:
	.string	"src/util.c"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF13:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF16:
	.string	"u8_t"
.LASF12:
	.string	"bite"
.LASF6:
	.string	"long long int"
.LASF15:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF10:
	.string	"octets_len"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"util_ones_count_get"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
