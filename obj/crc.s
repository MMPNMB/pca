	.file	"crc.c"
	.text
.Ltext0:
	.section	.text.unlikely.utils_crc16,"ax",@progbits
.LCOLDB0:
	.section	.text.utils_crc16,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.utils_crc16
.Ltext_cold0:
	.section	.text.utils_crc16
	.globl	utils_crc16
	.type	utils_crc16, @function
utils_crc16:
.LFB0:
	.file 1 "utility/digest_algorithm/crc.c"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 18 0
	xorl	%edx, %edx
	orl	$-1, %eax
	.loc 1 19 0
	xorl	%ecx, %ecx
	.loc 1 16 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 16 0
	movl	8(%ebp), %ebx
.LVL1:
.L2:
	.loc 1 19 0 discriminator 1
	cmpl	12(%ebp), %ecx
	je	.L8
	.loc 1 20 0
	testb	$7, %cl
	jne	.L3
.LVL2:
	.loc 1 21 0
	movzbl	(%ebx), %edx
.LVL3:
	incl	%ebx
.LVL4:
	sall	$8, %edx
.LVL5:
.L3:
	.loc 1 23 0
	movl	%eax, %edi
	.loc 1 24 0
	addl	%eax, %eax
.LVL6:
	.loc 1 23 0
	xorl	%edx, %edi
.LVL7:
	.loc 1 27 0
	movl	%eax, %esi
	.loc 1 25 0
	addl	%edx, %edx
.LVL8:
	.loc 1 27 0
	xorw	$4129, %si
	testw	%di, %di
	cmovs	%esi, %eax
.LVL9:
	.loc 1 19 0
	incl	%ecx
.LVL10:
	jmp	.L2
.LVL11:
.L8:
	.loc 1 31 0
	popl	%ebx
	.cfi_restore 3
.LVL12:
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
	.size	utils_crc16, .-utils_crc16
	.section	.text.unlikely.utils_crc16
.LCOLDE0:
	.section	.text.utils_crc16
.LHOTE0:
	.section	.text.unlikely.utils_crc32,"ax",@progbits
.LCOLDB1:
	.section	.text.utils_crc32,"ax",@progbits
.LHOTB1:
	.globl	utils_crc32
	.type	utils_crc32, @function
utils_crc32:
.LFB1:
	.loc 1 35 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 39 0
	xorl	%edx, %edx
	.loc 1 37 0
	orl	$-1, %eax
	.loc 1 35 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LVL14:
.L10:
	.loc 1 39 0
	cmpl	%edx, 12(%ebp)
	je	.L17
.LVL15:
	.loc 1 40 0
	movl	8(%ebp), %ebx
	movzbl	(%ebx,%edx), %ecx
	sall	$24, %ecx
	xorl	%ecx, %eax
.LVL16:
	movb	$8, %cl
.LVL17:
.L13:
	leal	(%eax,%eax), %ebx
	.loc 1 43 0
	movl	%ebx, %esi
	xorl	$79764919, %esi
	testl	%eax, %eax
	movl	%ebx, %eax
.LVL18:
	cmovs	%esi, %eax
.LVL19:
	.loc 1 41 0
	decb	%cl
.LVL20:
	jne	.L13
	incl	%edx
.LVL21:
	jmp	.L10
.LVL22:
.L17:
	.loc 1 50 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	utils_crc32, .-utils_crc32
	.section	.text.unlikely.utils_crc32
.LCOLDE1:
	.section	.text.utils_crc32
.LHOTE1:
	.text
.Letext0:
	.section	.text.unlikely.utils_crc16
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x171
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF18
	.byte	0xc
	.long	.LASF19
	.long	.LASF20
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x1d
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
	.byte	0x2
	.byte	0x2b
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x41
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
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x24
	.long	0x45
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x30
	.long	0x5e
	.uleb128 0x5
	.long	.LASF21
	.byte	0x1
	.byte	0xf
	.long	0x97
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e
	.uleb128 0x6
	.string	"buf"
	.byte	0x1
	.byte	0xf
	.long	0x11e
	.long	.LLST0
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0xf
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x11
	.long	0x7e
	.long	.LLST1
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x12
	.long	0x50
	.long	.LLST2
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x12
	.long	0x50
	.long	.LLST3
	.uleb128 0x8
	.string	"val"
	.byte	0x1
	.byte	0x12
	.long	0x50
	.long	.LLST4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x8c
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.byte	0x22
	.long	0xa2
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"buf"
	.byte	0x1
	.byte	0x22
	.long	0x11e
	.long	.LLST5
	.uleb128 0xc
	.long	.LASF15
	.byte	0x1
	.byte	0x22
	.long	0xa2
	.long	.LLST6
	.uleb128 0x8
	.string	"i"
	.byte	0x1
	.byte	0x24
	.long	0x8c
	.long	.LLST7
	.uleb128 0x8
	.string	"crc"
	.byte	0x1
	.byte	0x25
	.long	0xa2
	.long	.LLST8
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.long	.LVL2
	.value	0x1
	.byte	0x53
	.long	.LVL2
	.long	.LVL4
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.long	.LVL4
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LFE0
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL1
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x57
	.long	.LVL7
	.long	.LFE0
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL3
	.value	0x1
	.byte	0x52
	.long	.LVL5
	.long	.LFE0
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST4:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL11
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL14
	.long	.LVL15
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL15
	.long	.LVL21
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL21
	.long	.LFE1
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL14
	.long	.LVL21
	.value	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.value	0x7
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL22
	.long	.LFE1
	.value	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.value	0x5
	.byte	0x38
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.value	0x5
	.byte	0x39
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL20
	.long	.LVL22
	.value	0x5
	.byte	0x38
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL14
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL14
	.long	.LVL18
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LFE1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"shift"
.LASF3:
	.string	"__uint8_t"
.LASF19:
	.string	"src/crc.c"
.LASF17:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"utils_crc32"
.LASF4:
	.string	"__uint16_t"
.LASF7:
	.string	"__uint32_t"
.LASF21:
	.string	"utils_crc16"
.LASF11:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF9:
	.string	"long long int"
.LASF20:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"uint16_t"
.LASF14:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF15:
	.string	"length"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
