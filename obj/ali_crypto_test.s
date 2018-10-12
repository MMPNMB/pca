	.file	"ali_crypto_test.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\n"
.LC1:
	.string	"alicrypto TEST"
.LC2:
	.string	"I %s %d: Test hash:\n"
.LC3:
	.string	"I %s %d: Test hmac:\n"
.LC4:
	.string	"I %s %d: Test rand:\n"
.LC5:
	.string	"I %s %d: Test aes:\n"
.LC6:
	.string	"I %s %d: Test rsa:\n"
	.section	.text.unlikely.ali_crypto_test_entry,"ax",@progbits
.LCOLDB7:
	.section	.text.ali_crypto_test_entry,"ax",@progbits
.LHOTB7:
	.section	.text.unlikely.ali_crypto_test_entry
.Ltext_cold0:
	.section	.text.ali_crypto_test_entry
	.globl	ali_crypto_test_entry
	.type	ali_crypto_test_entry, @function
ali_crypto_test_entry:
.LFB1:
	.file 1 "security/alicrypto/./libalicrypto/test/ali_crypto_test.c"
	.loc 1 9 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 13 0
	pushl	$1
	pushl	$.LC0
	pushl	$.LC1
	call	ali_crypto_print_data
.LVL0:
	.loc 1 15 0
	call	ali_crypto_init
.LVL1:
	.loc 1 16 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L3
.LVL2:
	.loc 1 20 0
	pushl	%eax
	pushl	$20
	pushl	$__FUNCTION__.3672
	pushl	$.LC2
	call	printf
.LVL3:
	.loc 1 21 0
	call	ali_crypto_hash_test
.LVL4:
	.loc 1 22 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L3
.LVL5:
	.loc 1 26 0
	pushl	%eax
	pushl	$26
	pushl	$__FUNCTION__.3672
	pushl	$.LC3
	call	printf
.LVL6:
	.loc 1 27 0
	call	ali_crypto_hmac_test
.LVL7:
	.loc 1 28 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L3
	.loc 1 32 0
	pushl	%ecx
	pushl	$32
	pushl	$__FUNCTION__.3672
	pushl	$.LC4
	call	printf
.LVL8:
	.loc 1 33 0
	call	ali_crypto_rand_test
.LVL9:
	.loc 1 34 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L3
	.loc 1 38 0
	pushl	%edx
	pushl	$38
	pushl	$__FUNCTION__.3672
	pushl	$.LC5
	call	printf
.LVL10:
	.loc 1 39 0
	call	ali_crypto_aes_test
.LVL11:
	.loc 1 40 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L3
.LVL12:
	.loc 1 44 0
	pushl	%eax
	pushl	$44
	pushl	$__FUNCTION__.3672
	pushl	$.LC6
	call	printf
.LVL13:
	.loc 1 45 0
	call	ali_crypto_rsa_test
.LVL14:
	addl	$16, %esp
.L3:
	.loc 1 53 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 51 0
	jmp	ali_crypto_cleanup
.LVL15:
	.cfi_endproc
.LFE1:
	.size	ali_crypto_test_entry, .-ali_crypto_test_entry
	.section	.text.unlikely.ali_crypto_test_entry
.LCOLDE7:
	.section	.text.ali_crypto_test_entry
.LHOTE7:
	.section	.rodata.__FUNCTION__.3672,"a",@progbits
	.align 4
	.type	__FUNCTION__.3672, @object
	.size	__FUNCTION__.3672, 22
__FUNCTION__.3672:
	.string	"ali_crypto_test_entry"
	.text
.Letext0:
	.section	.text.unlikely.ali_crypto_test_entry
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./security/alicrypto/./libalicrypto/test/inc/ali_crypto_test.h"
	.file 5 "./security/alicrypto/./libalicrypto/inc/ali_crypto.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1c6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF23
	.byte	0xc
	.long	.LASF24
	.long	.LASF25
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
	.byte	0x18
	.long	0x2c
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
	.long	0x88
	.uleb128 0x6
	.long	.LASF26
	.byte	0x1
	.byte	0x8
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x14f
	.uleb128 0x7
	.string	"ret"
	.byte	0x1
	.byte	0xa
	.long	0x68
	.long	.LLST0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0x32
	.long	.L3
	.uleb128 0x9
	.long	.LASF28
	.long	0x15f
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3672
	.uleb128 0xa
	.long	.LVL0
	.long	0x164
	.uleb128 0xa
	.long	.LVL1
	.long	0x16f
	.uleb128 0xa
	.long	.LVL3
	.long	0x17b
	.uleb128 0xa
	.long	.LVL4
	.long	0x186
	.uleb128 0xa
	.long	.LVL6
	.long	0x17b
	.uleb128 0xa
	.long	.LVL7
	.long	0x191
	.uleb128 0xa
	.long	.LVL8
	.long	0x17b
	.uleb128 0xa
	.long	.LVL9
	.long	0x19c
	.uleb128 0xa
	.long	.LVL10
	.long	0x17b
	.uleb128 0xa
	.long	.LVL11
	.long	0x1a7
	.uleb128 0xa
	.long	.LVL13
	.long	0x17b
	.uleb128 0xa
	.long	.LVL14
	.long	0x1b2
	.uleb128 0xb
	.long	.LVL15
	.long	0x1bd
	.byte	0
	.uleb128 0xc
	.long	0x96
	.long	0x15f
	.uleb128 0xd
	.long	0x8f
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	0x14f
	.uleb128 0xe
	.long	.LASF14
	.long	.LASF14
	.byte	0x4
	.byte	0x23
	.uleb128 0xf
	.long	.LASF15
	.long	.LASF15
	.byte	0x5
	.value	0x2dd
	.uleb128 0xe
	.long	.LASF16
	.long	.LASF16
	.byte	0x6
	.byte	0xc8
	.uleb128 0xe
	.long	.LASF17
	.long	.LASF17
	.byte	0x4
	.byte	0x25
	.uleb128 0xe
	.long	.LASF18
	.long	.LASF18
	.byte	0x4
	.byte	0x26
	.uleb128 0xe
	.long	.LASF19
	.long	.LASF19
	.byte	0x4
	.byte	0x27
	.uleb128 0xe
	.long	.LASF20
	.long	.LASF20
	.byte	0x4
	.byte	0x28
	.uleb128 0xe
	.long	.LASF21
	.long	.LASF21
	.byte	0x4
	.byte	0x29
	.uleb128 0xf
	.long	.LASF22
	.long	.LASF22
	.byte	0x5
	.value	0x2de
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL12
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
.LASF14:
	.string	"ali_crypto_print_data"
.LASF20:
	.string	"ali_crypto_aes_test"
.LASF9:
	.string	"__uint8_t"
.LASF16:
	.string	"printf"
.LASF17:
	.string	"ali_crypto_hash_test"
.LASF22:
	.string	"ali_crypto_cleanup"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF23:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"ali_crypto_rsa_test"
.LASF19:
	.string	"ali_crypto_rand_test"
.LASF28:
	.string	"__FUNCTION__"
.LASF27:
	.string	"_OUT"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF15:
	.string	"ali_crypto_init"
.LASF13:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF24:
	.string	"src/ali_crypto_test.c"
.LASF25:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF26:
	.string	"ali_crypto_test_entry"
.LASF4:
	.string	"long int"
.LASF11:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"ali_crypto_hmac_test"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
