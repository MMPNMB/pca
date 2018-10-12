	.file	"ali_crypto_test_rand.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"E %s %d: ali_seed fail(%08x)\n"
.LC1:
	.string	"E %s %d: gen rand fail(%08x)\n"
.LC2:
	.string	"tmp_buf"
.LC3:
	.string	"rand_buf"
.LC4:
	.string	"E %s %d: RAND test fail!\n"
.LC5:
	.string	"I %s %d: RAND test success!\n"
	.section	.text.unlikely.ali_crypto_rand_test,"ax",@progbits
.LCOLDB6:
	.section	.text.ali_crypto_rand_test,"ax",@progbits
.LHOTB6:
	.section	.text.unlikely.ali_crypto_rand_test
.Ltext_cold0:
	.section	.text.ali_crypto_rand_test
	.globl	ali_crypto_rand_test
	.type	ali_crypto_rand_test, @function
ali_crypto_rand_test:
.LFB1:
	.file 1 "security/alicrypto/./libalicrypto/test/ali_crypto_test_rand.c"
	.loc 1 8 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 10 0
	movl	$4, %ecx
	.loc 1 8 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 10 0
	leal	-108(%ebp), %edi
	.loc 1 8 0
	subl	$132, %esp
	.loc 1 8 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL0:
	.loc 1 10 0
	rep stosl
.LVL1:
	.loc 1 17 0
	leal	-108(%ebp), %eax
	pushl	$16
	pushl	%eax
	call	ali_seed
.LVL2:
	.loc 1 18 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 19 0
	pushl	%eax
	pushl	$19
	pushl	$__FUNCTION__.3677
	pushl	$.LC0
	jmp	.L13
.L2:
.LVL3:
	.loc 1 23 0
	pushl	%eax
	pushl	%eax
	pushl	$32
	pushl	$0
	call	ali_rand_gen
.LVL4:
	.loc 1 24 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L4
	.loc 1 25 0
	pushl	$0
	pushl	$25
.LVL5:
.L14:
	pushl	$__FUNCTION__.3677
	pushl	$.LC1
.LVL6:
.L13:
	call	printf
.LVL7:
	addl	$16, %esp
	orl	$-1, %eax
	jmp	.L3
.LVL8:
.L4:
	.loc 1 28 0
	leal	-60(%ebp), %eax
.LVL9:
	pushl	%edi
	pushl	%edi
	pushl	$32
	.loc 1 36 0
	leal	-60(%ebp), %ebx
	.loc 1 28 0
	pushl	%eax
	call	ali_rand_gen
.LVL10:
	.loc 1 29 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	$11, -124(%ebp)
	je	.L10
	.loc 1 30 0
	pushl	%eax
	pushl	$30
	jmp	.L14
.LVL11:
.L10:
	.loc 1 33 0
	decl	-124(%ebp)
.LVL12:
	je	.L16
.LVL13:
	.loc 1 34 0
	leal	-92(%ebp), %edi
	movl	$8, %ecx
	leal	-60(%ebp), %esi
	rep movsl
	.loc 1 36 0
	pushl	%esi
	pushl	%esi
	pushl	$32
	pushl	%ebx
	call	ali_rand_gen
.LVL14:
	.loc 1 37 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L6
	.loc 1 38 0
	pushl	%eax
	pushl	$38
	jmp	.L14
.L6:
	.loc 1 41 0
	leal	-92(%ebp), %eax
.LVL15:
	pushl	%ecx
	pushl	$32
	pushl	%ebx
	pushl	%eax
	call	memcmp
.LVL16:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L10
	.loc 1 42 0
	leal	-92(%ebp), %eax
	pushl	%edx
	pushl	$32
	pushl	%eax
	pushl	$.LC2
	call	ali_crypto_print_data
.LVL17:
	.loc 1 43 0
	addl	$12, %esp
	pushl	$32
	pushl	%ebx
	pushl	$.LC3
	call	ali_crypto_print_data
.LVL18:
	.loc 1 44 0
	addl	$12, %esp
	pushl	$44
	pushl	$__FUNCTION__.3677
	pushl	$.LC4
	jmp	.L13
.LVL19:
.L16:
	.loc 1 48 0
	pushl	%eax
	pushl	$48
	pushl	$__FUNCTION__.3677
	pushl	$.LC5
	call	printf
.LVL20:
	.loc 1 50 0
	addl	$16, %esp
	xorl	%eax, %eax
.L3:
	.loc 1 51 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L9
	call	__stack_chk_fail
.LVL21:
.L9:
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
	.size	ali_crypto_rand_test, .-ali_crypto_rand_test
	.section	.text.unlikely.ali_crypto_rand_test
.LCOLDE6:
	.section	.text.ali_crypto_rand_test
.LHOTE6:
	.section	.rodata.__FUNCTION__.3677,"a",@progbits
	.align 4
	.type	__FUNCTION__.3677, @object
	.size	__FUNCTION__.3677, 21
__FUNCTION__.3677:
	.string	"ali_crypto_rand_test"
	.text
.Letext0:
	.section	.text.unlikely.ali_crypto_rand_test
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./security/alicrypto/./libalicrypto/inc/ali_crypto.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 8 "./security/alicrypto/./libalicrypto/test/inc/ali_crypto_test.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2a6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF44
	.byte	0xc
	.long	.LASF45
	.long	.LASF46
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
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x5
	.long	0x93
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x30
	.long	0x53
	.uleb128 0x6
	.long	.LASF47
	.byte	0x4
	.long	0x73
	.byte	0x5
	.byte	0xc
	.long	0x143
	.uleb128 0x7
	.long	.LASF17
	.sleb128 -65536
	.uleb128 0x7
	.long	.LASF18
	.sleb128 -65535
	.uleb128 0x7
	.long	.LASF19
	.sleb128 -65534
	.uleb128 0x7
	.long	.LASF20
	.sleb128 -65533
	.uleb128 0x7
	.long	.LASF21
	.sleb128 -65532
	.uleb128 0x7
	.long	.LASF22
	.sleb128 -65531
	.uleb128 0x7
	.long	.LASF23
	.sleb128 -65530
	.uleb128 0x7
	.long	.LASF24
	.sleb128 -65529
	.uleb128 0x7
	.long	.LASF25
	.sleb128 -65528
	.uleb128 0x7
	.long	.LASF26
	.sleb128 -65527
	.uleb128 0x7
	.long	.LASF27
	.sleb128 -65526
	.uleb128 0x7
	.long	.LASF28
	.sleb128 -65525
	.uleb128 0x7
	.long	.LASF29
	.sleb128 -65524
	.uleb128 0x7
	.long	.LASF30
	.sleb128 -65523
	.uleb128 0x8
	.long	.LASF31
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF32
	.byte	0x5
	.byte	0x1c
	.long	0xbc
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.byte	0x7
	.long	0x73
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x232
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0x9
	.long	0xb1
	.long	.LLST0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.byte	0xa
	.long	0x232
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0xc
	.long	.LASF34
	.byte	0x1
	.byte	0xb
	.long	0x81
	.byte	0x10
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.byte	0xc
	.long	0x242
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xb
	.long	.LASF36
	.byte	0x1
	.byte	0xd
	.long	0x242
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xc
	.long	.LASF37
	.byte	0x1
	.byte	0xe
	.long	0x81
	.byte	0x20
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.byte	0xf
	.long	0x143
	.long	.LLST1
	.uleb128 0xe
	.long	.LASF49
	.long	0x262
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3677
	.uleb128 0xf
	.long	.LVL2
	.long	0x267
	.uleb128 0xf
	.long	.LVL4
	.long	0x273
	.uleb128 0xf
	.long	.LVL7
	.long	0x27f
	.uleb128 0xf
	.long	.LVL10
	.long	0x273
	.uleb128 0xf
	.long	.LVL14
	.long	0x273
	.uleb128 0xf
	.long	.LVL16
	.long	0x28a
	.uleb128 0xf
	.long	.LVL17
	.long	0x295
	.uleb128 0xf
	.long	.LVL18
	.long	0x295
	.uleb128 0xf
	.long	.LVL20
	.long	0x27f
	.uleb128 0xf
	.long	.LVL21
	.long	0x2a0
	.byte	0
	.uleb128 0x10
	.long	0xa6
	.long	0x242
	.uleb128 0x11
	.long	0x9a
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.long	0xa6
	.long	0x252
	.uleb128 0x11
	.long	0x9a
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	0xa1
	.long	0x262
	.uleb128 0x11
	.long	0x9a
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	0x252
	.uleb128 0x12
	.long	.LASF39
	.long	.LASF39
	.byte	0x5
	.value	0x2da
	.uleb128 0x12
	.long	.LASF40
	.long	.LASF40
	.byte	0x5
	.value	0x2db
	.uleb128 0x13
	.long	.LASF41
	.long	.LASF41
	.byte	0x6
	.byte	0xc8
	.uleb128 0x13
	.long	.LASF42
	.long	.LASF42
	.byte	0x7
	.byte	0x1a
	.uleb128 0x13
	.long	.LASF43
	.long	.LASF43
	.byte	0x8
	.byte	0x23
	.uleb128 0x14
	.long	.LASF50
	.long	.LASF50
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL5
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL11
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x7
	.byte	0x3c
	.byte	0x75
	.sleb128 -124
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL13
	.long	.LVL19
	.value	0x7
	.byte	0x3c
	.byte	0x75
	.sleb128 -124
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x50
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
.LASF43:
	.string	"ali_crypto_print_data"
.LASF21:
	.string	"ALI_CRYPTO_INVALID_CONTEXT"
.LASF5:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF42:
	.string	"memcmp"
.LASF4:
	.string	"long int"
.LASF32:
	.string	"ali_crypto_result"
.LASF24:
	.string	"ALI_CRYPTO_INVALID_ARG"
.LASF18:
	.string	"ALI_CRYPTO_NOSUPPORT"
.LASF31:
	.string	"ALI_CRYPTO_SUCCESS"
.LASF47:
	.string	"_ali_crypto_result"
.LASF17:
	.string	"ALI_CRYPTO_ERROR"
.LASF1:
	.string	"unsigned char"
.LASF36:
	.string	"rand_buf"
.LASF40:
	.string	"ali_rand_gen"
.LASF7:
	.string	"long unsigned int"
.LASF44:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF6:
	.string	"__uint32_t"
.LASF50:
	.string	"__stack_chk_fail"
.LASF48:
	.string	"ali_crypto_rand_test"
.LASF37:
	.string	"rand_len"
.LASF2:
	.string	"short int"
.LASF49:
	.string	"__FUNCTION__"
.LASF39:
	.string	"ali_seed"
.LASF27:
	.string	"ALI_CRYPTO_OUTOFMEM"
.LASF26:
	.string	"ALI_CRYPTO_LENGTH_ERR"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint8_t"
.LASF28:
	.string	"ALI_CRYPTO_SHORT_BUFFER"
.LASF38:
	.string	"result"
.LASF29:
	.string	"ALI_CRYPTO_NULL"
.LASF14:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF45:
	.string	"src/ali_crypto_test_rand.c"
.LASF41:
	.string	"printf"
.LASF46:
	.string	"/home/stone/Documents/pca"
.LASF23:
	.string	"ALI_CRYPTO_INVALID_AUTHENTICATION"
.LASF34:
	.string	"seed_len"
.LASF20:
	.string	"ALI_CRYPTO_INVALID_TYPE"
.LASF33:
	.string	"seed"
.LASF16:
	.string	"uint32_t"
.LASF35:
	.string	"tmp_buf"
.LASF12:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"ALI_CRYPTO_INVALID_KEY"
.LASF22:
	.string	"ALI_CRYPTO_INVALID_PADDING"
.LASF30:
	.string	"ALI_CRYPTO_ERR_STATE"
.LASF25:
	.string	"ALI_CRYPTO_INVALID_PACKET"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
