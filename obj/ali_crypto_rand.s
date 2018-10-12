	.file	"ali_crypto_rand.c"
	.text
.Ltext0:
	.section	.text.unlikely.ali_crypt_rand_word,"ax",@progbits
.LCOLDB0:
	.section	.text.ali_crypt_rand_word,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ali_crypt_rand_word
.Ltext_cold0:
	.section	.text.ali_crypt_rand_word
	.globl	ali_crypt_rand_word
	.type	ali_crypt_rand_word, @function
ali_crypt_rand_word:
.LFB1:
	.file 1 "security/alicrypto/./libalicrypto/sw/ali_crypto_rand.c"
	.loc 1 12 0
	.cfi_startproc
	.loc 1 13 0
	imull	$1664525, randseed, %eax
	.loc 1 12 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 14 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 13 0
	addl	$1013904223, %eax
	movl	%eax, randseed
	.loc 1 14 0
	ret
	.cfi_endproc
.LFE1:
	.size	ali_crypt_rand_word, .-ali_crypt_rand_word
	.section	.text.unlikely.ali_crypt_rand_word
.LCOLDE0:
	.section	.text.ali_crypt_rand_word
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"E %s %d: ali_rand_gen: invalid input args!\n"
	.section	.text.unlikely.ali_rand_gen,"ax",@progbits
.LCOLDB2:
	.section	.text.ali_rand_gen,"ax",@progbits
.LHOTB2:
	.globl	ali_rand_gen
	.type	ali_rand_gen, @function
ali_rand_gen:
.LFB2:
	.loc 1 17 0
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
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 17 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 21 0
	testl	%esi, %esi
	je	.L9
	testl	%ebx, %ebx
	jne	.L4
.L9:
	.loc 1 22 0
	pushl	%eax
	pushl	$22
	pushl	$__FUNCTION__.4650
	pushl	$.LC1
	call	printf
.LVL1:
	.loc 1 23 0
	addl	$16, %esp
	movl	$-65529, %eax
	jmp	.L6
.L4:
	.loc 1 26 0
	call	ali_crypt_rand_word
.LVL2:
	.loc 1 27 0
	xorl	%edx, %edx
.LVL3:
.L8:
	.loc 1 28 0
	movl	%edx, %ecx
	andl	$3, %ecx
	jne	.L7
	.loc 1 29 0
	call	ali_crypt_rand_word
.LVL4:
.L7:
	.loc 1 31 0 discriminator 2
	sall	$3, %ecx
	movl	%eax, %edi
	shrl	%cl, %edi
	movl	%edi, %ecx
	movb	%cl, (%esi,%edx)
	.loc 1 27 0 discriminator 2
	incl	%edx
.LVL5:
	cmpl	%edx, %ebx
	jne	.L8
	.loc 1 34 0
	xorl	%eax, %eax
.LVL6:
.L6:
	.loc 1 35 0
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
.LFE2:
	.size	ali_rand_gen, .-ali_rand_gen
	.section	.text.unlikely.ali_rand_gen
.LCOLDE2:
	.section	.text.ali_rand_gen
.LHOTE2:
	.section	.text.unlikely.ali_seed,"ax",@progbits
.LCOLDB3:
	.section	.text.ali_seed,"ax",@progbits
.LHOTB3:
	.globl	ali_seed
	.type	ali_seed, @function
ali_seed:
.LFB3:
	.loc 1 38 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 39 0
	xorl	%edx, %edx
	.loc 1 41 0
	xorl	%eax, %eax
	.loc 1 38 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 41 0
	movl	12(%ebp), %edi
	.loc 1 38 0
	pushl	%ebx
	.cfi_offset 3, -20
	.loc 1 38 0
	movl	8(%ebp), %ebx
	.loc 1 41 0
	andl	$-4, %edi
.LVL8:
.L14:
	.loc 1 41 0 is_stmt 0 discriminator 1
	cmpl	%edi, %eax
	jnb	.L16
.LVL9:
	.loc 1 43 0 is_stmt 1 discriminator 3
	movzbl	1(%ebx,%eax), %esi
	movzbl	(%ebx,%eax), %ecx
	sall	$8, %esi
	xorl	%esi, %ecx
	xorl	%ecx, %edx
.LVL10:
	.loc 1 44 0 discriminator 3
	movzbl	2(%ebx,%eax), %ecx
	sall	$16, %ecx
	xorl	%edx, %ecx
.LVL11:
	.loc 1 45 0 discriminator 3
	movzbl	3(%ebx,%eax), %edx
	.loc 1 41 0 discriminator 3
	addl	$4, %eax
.LVL12:
	.loc 1 45 0 discriminator 3
	sall	$24, %edx
	xorl	%ecx, %edx
.LVL13:
	jmp	.L14
.LVL14:
.L16:
	.loc 1 47 0
	cmpl	12(%ebp), %eax
	jnb	.L19
	.loc 1 48 0
	incl	%eax
.LVL15:
	movzbl	-1(%ebx,%eax), %ecx
	xorl	%ecx, %edx
.LVL16:
	jmp	.L16
.L19:
	.loc 1 54 0
	popl	%ebx
	.cfi_restore 3
.LVL17:
	xorl	%eax, %eax
.LVL18:
	.loc 1 51 0
	movl	%edx, randseed
	.loc 1 54 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	ali_seed, .-ali_seed
	.section	.text.unlikely.ali_seed
.LCOLDE3:
	.section	.text.ali_seed
.LHOTE3:
	.section	.rodata.__FUNCTION__.4650,"a",@progbits
	.align 4
	.type	__FUNCTION__.4650, @object
	.size	__FUNCTION__.4650, 13
__FUNCTION__.4650:
	.string	"ali_rand_gen"
	.section	.data.randseed,"aw",@progbits
	.align 4
	.type	randseed, @object
	.size	randseed, 4
randseed:
	.long	12345
	.text
.Letext0:
	.section	.text.unlikely.ali_crypt_rand_word
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "./security/alicrypto/./libalicrypto/inc/ali_crypto.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x266
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF38
	.byte	0xc
	.long	.LASF39
	.long	.LASF40
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF5
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF14
	.uleb128 0x5
	.long	.LASF41
	.byte	0x4
	.long	0x73
	.byte	0x5
	.byte	0xc
	.long	0x130
	.uleb128 0x6
	.long	.LASF15
	.sleb128 -65536
	.uleb128 0x6
	.long	.LASF16
	.sleb128 -65535
	.uleb128 0x6
	.long	.LASF17
	.sleb128 -65534
	.uleb128 0x6
	.long	.LASF18
	.sleb128 -65533
	.uleb128 0x6
	.long	.LASF19
	.sleb128 -65532
	.uleb128 0x6
	.long	.LASF20
	.sleb128 -65531
	.uleb128 0x6
	.long	.LASF21
	.sleb128 -65530
	.uleb128 0x6
	.long	.LASF22
	.sleb128 -65529
	.uleb128 0x6
	.long	.LASF23
	.sleb128 -65528
	.uleb128 0x6
	.long	.LASF24
	.sleb128 -65527
	.uleb128 0x6
	.long	.LASF25
	.sleb128 -65526
	.uleb128 0x6
	.long	.LASF26
	.sleb128 -65525
	.uleb128 0x6
	.long	.LASF27
	.sleb128 -65524
	.uleb128 0x6
	.long	.LASF28
	.sleb128 -65523
	.uleb128 0x7
	.long	.LASF29
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x5
	.byte	0x1c
	.long	0xa9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF31
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF32
	.uleb128 0x8
	.long	0x13b
	.uleb128 0x9
	.long	.LASF42
	.byte	0x1
	.byte	0xb
	.long	0x8c
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.byte	0x10
	.long	0x130
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1df
	.uleb128 0xb
	.string	"buf"
	.byte	0x1
	.byte	0x10
	.long	0x1df
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.byte	0x10
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x12
	.long	0x8c
	.long	.LLST0
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x13
	.long	0x8c
	.long	.LLST1
	.uleb128 0xd
	.long	.LASF43
	.long	0x1f5
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4650
	.uleb128 0xe
	.long	.LVL1
	.long	0x25e
	.uleb128 0xe
	.long	.LVL2
	.long	0x14e
	.uleb128 0xe
	.long	.LVL4
	.long	0x14e
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x81
	.uleb128 0x10
	.long	0x149
	.long	0x1f5
	.uleb128 0x11
	.long	0x142
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x1e5
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.byte	0x25
	.long	0x130
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x24d
	.uleb128 0x12
	.long	.LASF35
	.byte	0x1
	.byte	0x25
	.long	0x1df
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF36
	.byte	0x1
	.byte	0x25
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xc
	.string	"i"
	.byte	0x1
	.byte	0x27
	.long	0x8c
	.long	.LLST3
	.uleb128 0xc
	.string	"tmp"
	.byte	0x1
	.byte	0x27
	.long	0x8c
	.long	.LLST4
	.byte	0
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0x9
	.long	0x8c
	.uleb128 0x5
	.byte	0x3
	.long	randseed
	.uleb128 0x15
	.long	.LASF44
	.long	.LASF44
	.byte	0x6
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.long	.LVL2
	.long	.LVL3
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x52
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL4-1
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL14
	.long	.LVL17
	.value	0x1
	.byte	0x53
	.long	.LVL17
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL13
	.value	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	.LVL13
	.long	.LVL18
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x52
	.long	.LVL9
	.long	.LVL10
	.value	0xf
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x52
	.long	.LVL11
	.long	.LVL13
	.value	0x1
	.byte	0x51
	.long	.LVL13
	.long	.LFE3
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
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
.LASF19:
	.string	"ALI_CRYPTO_INVALID_CONTEXT"
.LASF5:
	.string	"__uint8_t"
.LASF13:
	.string	"size_t"
.LASF42:
	.string	"ali_crypt_rand_word"
.LASF30:
	.string	"ali_crypto_result"
.LASF11:
	.string	"uint8_t"
.LASF37:
	.string	"randseed"
.LASF22:
	.string	"ALI_CRYPTO_INVALID_ARG"
.LASF16:
	.string	"ALI_CRYPTO_NOSUPPORT"
.LASF29:
	.string	"ALI_CRYPTO_SUCCESS"
.LASF41:
	.string	"_ali_crypto_result"
.LASF15:
	.string	"ALI_CRYPTO_ERROR"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"ali_rand_gen"
.LASF7:
	.string	"long unsigned int"
.LASF38:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"__uint32_t"
.LASF2:
	.string	"short int"
.LASF43:
	.string	"__FUNCTION__"
.LASF34:
	.string	"ali_seed"
.LASF25:
	.string	"ALI_CRYPTO_OUTOFMEM"
.LASF24:
	.string	"ALI_CRYPTO_LENGTH_ERR"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF39:
	.string	"src/ali_crypto_rand.c"
.LASF26:
	.string	"ALI_CRYPTO_SHORT_BUFFER"
.LASF27:
	.string	"ALI_CRYPTO_NULL"
.LASF32:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF31:
	.string	"char"
.LASF44:
	.string	"printf"
.LASF40:
	.string	"/home/stone/Documents/pca"
.LASF21:
	.string	"ALI_CRYPTO_INVALID_AUTHENTICATION"
.LASF36:
	.string	"seed_len"
.LASF18:
	.string	"ALI_CRYPTO_INVALID_TYPE"
.LASF35:
	.string	"seed"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF14:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"ALI_CRYPTO_INVALID_KEY"
.LASF20:
	.string	"ALI_CRYPTO_INVALID_PADDING"
.LASF28:
	.string	"ALI_CRYPTO_ERR_STATE"
.LASF23:
	.string	"ALI_CRYPTO_INVALID_PACKET"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
