	.file	"ali_crypto.c"
	.text
.Ltext0:
	.section	.text.unlikely.mbed_crypto_init,"ax",@progbits
.LCOLDB0:
	.section	.text.mbed_crypto_init,"ax",@progbits
.LHOTB0:
	.globl	mbed_crypto_init
	.type	mbed_crypto_init, @function
mbed_crypto_init:
.LFB8:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	mbed_crypto_init, .-mbed_crypto_init
	.section	.text.unlikely.mbed_crypto_init
.LCOLDE0:
	.section	.text.mbed_crypto_init
.LHOTE0:
	.section	.text.unlikely.mbed_crypto_cleanup,"ax",@progbits
.LCOLDB1:
	.section	.text.mbed_crypto_cleanup,"ax",@progbits
.LHOTB1:
	.globl	mbed_crypto_cleanup
	.type	mbed_crypto_cleanup, @function
mbed_crypto_cleanup:
.LFB6:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	mbed_crypto_cleanup, .-mbed_crypto_cleanup
	.section	.text.unlikely.mbed_crypto_cleanup
.LCOLDE1:
	.section	.text.mbed_crypto_cleanup
.LHOTE1:
	.section	.text.unlikely.ali_crypto_init,"ax",@progbits
.LCOLDB2:
	.section	.text.ali_crypto_init,"ax",@progbits
.LHOTB2:
	.section	.text.unlikely.ali_crypto_init
.Ltext_cold0:
	.section	.text.ali_crypto_init
	.globl	ali_crypto_init
	.type	ali_crypto_init, @function
ali_crypto_init:
.LFB3:
	.file 1 "security/alicrypto/./libalicrypto/ali_crypto.c"
	.loc 1 34 0
	.cfi_startproc
.LVL0:
	.loc 1 34 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 42 0
	xorl	%eax, %eax
	.loc 1 34 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 42 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	ali_crypto_init, .-ali_crypto_init
	.section	.text.unlikely.ali_crypto_init
.LCOLDE2:
	.section	.text.ali_crypto_init
.LHOTE2:
	.section	.text.unlikely.ali_crypto_cleanup,"ax",@progbits
.LCOLDB3:
	.section	.text.ali_crypto_cleanup,"ax",@progbits
.LHOTB3:
	.globl	ali_crypto_cleanup
	.type	ali_crypto_cleanup, @function
ali_crypto_cleanup:
.LFB4:
	.loc 1 44 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 50 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	ali_crypto_cleanup, .-ali_crypto_cleanup
	.section	.text.unlikely.ali_crypto_cleanup
.LCOLDE3:
	.section	.text.ali_crypto_cleanup
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely.ali_crypto_init
.Letext_cold0:
	.file 2 "./security/alicrypto/./libalicrypto/inc/ali_crypto.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x17f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF31
	.byte	0xc
	.long	.LASF32
	.long	.LASF33
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
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF34
	.byte	0x4
	.long	0x5d
	.byte	0x2
	.byte	0xc
	.long	0xf9
	.uleb128 0x5
	.long	.LASF10
	.sleb128 -65536
	.uleb128 0x5
	.long	.LASF11
	.sleb128 -65535
	.uleb128 0x5
	.long	.LASF12
	.sleb128 -65534
	.uleb128 0x5
	.long	.LASF13
	.sleb128 -65533
	.uleb128 0x5
	.long	.LASF14
	.sleb128 -65532
	.uleb128 0x5
	.long	.LASF15
	.sleb128 -65531
	.uleb128 0x5
	.long	.LASF16
	.sleb128 -65530
	.uleb128 0x5
	.long	.LASF17
	.sleb128 -65529
	.uleb128 0x5
	.long	.LASF18
	.sleb128 -65528
	.uleb128 0x5
	.long	.LASF19
	.sleb128 -65527
	.uleb128 0x5
	.long	.LASF20
	.sleb128 -65526
	.uleb128 0x5
	.long	.LASF21
	.sleb128 -65525
	.uleb128 0x5
	.long	.LASF22
	.sleb128 -65524
	.uleb128 0x5
	.long	.LASF23
	.sleb128 -65523
	.uleb128 0x6
	.long	.LASF24
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF35
	.byte	0x2
	.byte	0x1c
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF26
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.byte	0xc
	.long	0xf9
	.byte	0x1
	.long	0x12e
	.uleb128 0x9
	.string	"ret"
	.byte	0x1
	.byte	0xe
	.long	0xf9
	.byte	0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.byte	0x21
	.long	0xf9
	.byte	0x1
	.long	0x152
	.uleb128 0x9
	.string	"ret"
	.byte	0x1
	.byte	0x23
	.long	0xf9
	.byte	0
	.uleb128 0xb
	.long	0x136
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x16b
	.uleb128 0xc
	.long	0x146
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uleb128 0xd
	.long	0x16b
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"ALI_CRYPTO_INVALID_CONTEXT"
.LASF10:
	.string	"ALI_CRYPTO_ERROR"
.LASF17:
	.string	"ALI_CRYPTO_INVALID_ARG"
.LASF32:
	.string	"src/ali_crypto.c"
.LASF11:
	.string	"ALI_CRYPTO_NOSUPPORT"
.LASF24:
	.string	"ALI_CRYPTO_SUCCESS"
.LASF34:
	.string	"_ali_crypto_result"
.LASF30:
	.string	"ali_crypto_cleanup"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF31:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"mbed_crypto_cleanup"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"mbed_crypto_init"
.LASF19:
	.string	"ALI_CRYPTO_LENGTH_ERR"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF21:
	.string	"ALI_CRYPTO_SHORT_BUFFER"
.LASF22:
	.string	"ALI_CRYPTO_NULL"
.LASF26:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF28:
	.string	"ali_crypto_init"
.LASF25:
	.string	"char"
.LASF35:
	.string	"ali_crypto_result"
.LASF33:
	.string	"/home/stone/Documents/pca"
.LASF16:
	.string	"ALI_CRYPTO_INVALID_AUTHENTICATION"
.LASF13:
	.string	"ALI_CRYPTO_INVALID_TYPE"
.LASF20:
	.string	"ALI_CRYPTO_OUTOFMEM"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"ALI_CRYPTO_INVALID_KEY"
.LASF15:
	.string	"ALI_CRYPTO_INVALID_PADDING"
.LASF23:
	.string	"ALI_CRYPTO_ERR_STATE"
.LASF18:
	.string	"ALI_CRYPTO_INVALID_PACKET"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
