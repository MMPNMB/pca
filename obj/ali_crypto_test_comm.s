	.file	"ali_crypto_test_comm.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"E %s %d: print_data: no data\n"
.LC1:
	.string	"I %s %d: %s size: %d\n"
.LC2:
	.string	"I %s %d: %s data: %02x%02x %02x%02x %02x%02x %02x%02x\n"
.LC3:
	.string	"I %s %d: %s data: %02x\n"
	.section	.text.unlikely.ali_crypto_print_data,"ax",@progbits
.LCOLDB4:
	.section	.text.ali_crypto_print_data,"ax",@progbits
.LHOTB4:
	.section	.text.unlikely.ali_crypto_print_data
.Ltext_cold0:
	.section	.text.ali_crypto_print_data
	.globl	ali_crypto_print_data
	.type	ali_crypto_print_data, @function
ali_crypto_print_data:
.LFB1:
	.file 1 "security/alicrypto/./libalicrypto/test/ali_crypto_test_comm.c"
	.loc 1 8 0
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 8 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	movl	16(%ebp), %ebx
	.loc 1 11 0
	testl	%esi, %esi
	je	.L8
	testl	%ebx, %ebx
	jne	.L2
.L8:
	.loc 1 12 0
	movl	$12, 16(%ebp)
.LVL1:
	movl	$__FUNCTION__.3673, 12(%ebp)
.LVL2:
	movl	$.LC0, 8(%ebp)
.LVL3:
	.loc 1 29 0
	leal	-12(%ebp), %esp
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
	.loc 1 12 0
	jmp	printf
.LVL4:
.L2:
	.cfi_restore_state
	.loc 1 16 0
	subl	$12, %esp
	pushl	%ebx
	pushl	%edi
	pushl	$16
	pushl	$__FUNCTION__.3673
	pushl	$.LC1
	call	printf
.LVL5:
	.loc 1 17 0
	movl	%ebx, %eax
	addl	$32, %esp
	movl	%esi, %edx
	andl	$-8, %eax
	movl	%eax, -28(%ebp)
.LVL6:
.L4:
	movl	%edx, %ecx
	subl	%esi, %ecx
.LVL7:
	.loc 1 17 0 is_stmt 0 discriminator 1
	cmpl	%ecx, -28(%ebp)
	jbe	.L6
	.loc 1 18 0 is_stmt 1 discriminator 3
	movzbl	7(%edx), %eax
	movl	%edx, -32(%ebp)
	pushl	%eax
	movzbl	6(%edx), %eax
	pushl	%eax
	movzbl	5(%edx), %eax
	pushl	%eax
	movzbl	4(%edx), %eax
	pushl	%eax
	movzbl	3(%edx), %eax
	pushl	%eax
	movzbl	2(%edx), %eax
	pushl	%eax
	movzbl	1(%edx), %eax
	pushl	%eax
	movzbl	(%edx), %eax
	pushl	%eax
	pushl	%edi
	pushl	$21
	pushl	$__FUNCTION__.3673
	pushl	$.LC2
	call	printf
.LVL8:
	movl	-32(%ebp), %edx
	addl	$48, %esp
	addl	$8, %edx
	jmp	.L4
.LVL9:
.L6:
	.loc 1 23 0
	cmpl	%ebx, %ecx
	jnb	.L11
	.loc 1 24 0
	movzbl	(%esi,%ecx), %eax
	subl	$12, %esp
	movl	%ecx, -28(%ebp)
	pushl	%eax
	pushl	%edi
	pushl	$24
	pushl	$__FUNCTION__.3673
	pushl	$.LC3
	call	printf
.LVL10:
	.loc 1 25 0
	movl	-28(%ebp), %ecx
	addl	$32, %esp
	incl	%ecx
.LVL11:
	jmp	.L6
.L11:
	.loc 1 29 0
	leal	-12(%ebp), %esp
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
.LFE1:
	.size	ali_crypto_print_data, .-ali_crypto_print_data
	.section	.text.unlikely.ali_crypto_print_data
.LCOLDE4:
	.section	.text.ali_crypto_print_data
.LHOTE4:
	.section	.rodata.__FUNCTION__.3673,"a",@progbits
	.align 4
	.type	__FUNCTION__.3673, @object
	.size	__FUNCTION__.3673, 22
__FUNCTION__.3673:
	.string	"ali_crypto_print_data"
	.text
.Letext0:
	.section	.text.unlikely.ali_crypto_print_data
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x152
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
	.long	.LASF9
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
	.byte	0x3
	.byte	0xd8
	.long	0x6f
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.long	0x9c
	.uleb128 0x6
	.long	0x88
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.long	0x2c
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x7
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x12f
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x7
	.long	0x96
	.long	.LLST0
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x7
	.long	0x12f
	.long	.LLST1
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.byte	0x7
	.long	0x76
	.long	.LLST2
	.uleb128 0x9
	.string	"i"
	.byte	0x1
	.byte	0x9
	.long	0x76
	.long	.LLST3
	.uleb128 0xa
	.long	.LASF22
	.long	0x145
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3673
	.uleb128 0xb
	.long	.LVL4
	.long	0x14a
	.uleb128 0xc
	.long	.LVL5
	.long	0x14a
	.uleb128 0xc
	.long	.LVL8
	.long	0x14a
	.uleb128 0xc
	.long	.LVL10
	.long	0x14a
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xa1
	.uleb128 0xd
	.long	0x9c
	.long	0x145
	.uleb128 0xe
	.long	0x8f
	.byte	0x15
	.byte	0
	.uleb128 0x6
	.long	0x135
	.uleb128 0xf
	.long	.LASF23
	.long	.LASF23
	.byte	0x5
	.byte	0xc8
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL4
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL4
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL4
	.long	.LFE1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x51
	.long	.LVL8-1
	.long	.LVL8
	.value	0x7
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.value	0x9
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x51
	.long	.LVL10-1
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL11
	.long	.LFE1
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
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF18:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF22:
	.string	"__FUNCTION__"
.LASF10:
	.string	"size_t"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"src/ali_crypto_test_comm.c"
.LASF5:
	.string	"long unsigned int"
.LASF15:
	.string	"name"
.LASF7:
	.string	"long long unsigned int"
.LASF16:
	.string	"data"
.LASF21:
	.string	"ali_crypto_print_data"
.LASF14:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"__uint8_t"
.LASF12:
	.string	"char"
.LASF20:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"printf"
.LASF17:
	.string	"size"
.LASF11:
	.string	"long double"
.LASF2:
	.string	"short int"
.LASF8:
	.string	"unsigned int"
.LASF13:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
