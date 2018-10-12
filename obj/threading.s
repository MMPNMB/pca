	.file	"threading.c"
	.text
.Ltext0:
	.section	.text.unlikely.threading_mutex_fail,"ax",@progbits
.LCOLDB0:
	.section	.text.threading_mutex_fail,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.threading_mutex_fail
.Ltext_cold0:
	.section	.text.threading_mutex_fail
	.type	threading_mutex_fail, @function
threading_mutex_fail:
.LFB0:
	.file 1 "security/alicrypto/./mbedtls/library/threading.c"
	.loc 1 86 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 89 0
	movl	$-28, %eax
	.loc 1 86 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 89 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	threading_mutex_fail, .-threading_mutex_fail
	.section	.text.unlikely.threading_mutex_fail
.LCOLDE0:
	.section	.text.threading_mutex_fail
.LHOTE0:
	.section	.text.unlikely.threading_mutex_dummy,"ax",@progbits
.LCOLDB1:
	.section	.text.threading_mutex_dummy,"ax",@progbits
.LHOTB1:
	.type	threading_mutex_dummy, @function
threading_mutex_dummy:
.LFB1:
	.loc 1 91 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 94 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	threading_mutex_dummy, .-threading_mutex_dummy
	.section	.text.unlikely.threading_mutex_dummy
.LCOLDE1:
	.section	.text.threading_mutex_dummy
.LHOTE1:
	.section	.text.unlikely.mbedtls_threading_set_alt,"ax",@progbits
.LCOLDB2:
	.section	.text.mbedtls_threading_set_alt,"ax",@progbits
.LHOTB2:
	.globl	mbedtls_threading_set_alt
	.type	mbedtls_threading_set_alt, @function
mbedtls_threading_set_alt:
.LFB2:
	.loc 1 108 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 110 0
	movl	12(%ebp), %edx
	.loc 1 108 0
	movl	8(%ebp), %eax
	.loc 1 114 0
	pushl	$mbedtls_threading_readdir_mutex
	.loc 1 110 0
	movl	%edx, mbedtls_mutex_free
	.loc 1 111 0
	movl	16(%ebp), %edx
	.loc 1 109 0
	movl	%eax, mbedtls_mutex_init
	.loc 1 111 0
	movl	%edx, mbedtls_mutex_lock
	.loc 1 112 0
	movl	20(%ebp), %edx
	movl	%edx, mbedtls_mutex_unlock
	.loc 1 114 0
	call	*%eax
.LVL3:
	.loc 1 115 0
	addl	$16, %esp
	movl	$mbedtls_threading_gmtime_mutex, 8(%ebp)
	.loc 1 116 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 115 0
	jmp	*mbedtls_mutex_init
.LVL4:
	.cfi_endproc
.LFE2:
	.size	mbedtls_threading_set_alt, .-mbedtls_threading_set_alt
	.section	.text.unlikely.mbedtls_threading_set_alt
.LCOLDE2:
	.section	.text.mbedtls_threading_set_alt
.LHOTE2:
	.section	.text.unlikely.mbedtls_threading_free_alt,"ax",@progbits
.LCOLDB3:
	.section	.text.mbedtls_threading_free_alt,"ax",@progbits
.LHOTB3:
	.globl	mbedtls_threading_free_alt
	.type	mbedtls_threading_free_alt, @function
mbedtls_threading_free_alt:
.LFB3:
	.loc 1 122 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 123 0
	pushl	$mbedtls_threading_readdir_mutex
	call	*mbedtls_mutex_free
.LVL5:
	.loc 1 124 0
	movl	$mbedtls_threading_gmtime_mutex, (%esp)
	call	*mbedtls_mutex_free
.LVL6:
	.loc 1 125 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	mbedtls_threading_free_alt, .-mbedtls_threading_free_alt
	.section	.text.unlikely.mbedtls_threading_free_alt
.LCOLDE3:
	.section	.text.mbedtls_threading_free_alt
.LHOTE3:
	.globl	mbedtls_threading_gmtime_mutex
	.section	.bss.mbedtls_threading_gmtime_mutex,"aw",@nobits
	.align 4
	.type	mbedtls_threading_gmtime_mutex, @object
	.size	mbedtls_threading_gmtime_mutex, 8
mbedtls_threading_gmtime_mutex:
	.zero	8
	.globl	mbedtls_threading_readdir_mutex
	.section	.bss.mbedtls_threading_readdir_mutex,"aw",@nobits
	.align 4
	.type	mbedtls_threading_readdir_mutex, @object
	.size	mbedtls_threading_readdir_mutex, 8
mbedtls_threading_readdir_mutex:
	.zero	8
	.globl	mbedtls_mutex_unlock
	.section	.data.mbedtls_mutex_unlock,"aw",@progbits
	.align 4
	.type	mbedtls_mutex_unlock, @object
	.size	mbedtls_mutex_unlock, 4
mbedtls_mutex_unlock:
	.long	threading_mutex_fail
	.globl	mbedtls_mutex_lock
	.section	.data.mbedtls_mutex_lock,"aw",@progbits
	.align 4
	.type	mbedtls_mutex_lock, @object
	.size	mbedtls_mutex_lock, 4
mbedtls_mutex_lock:
	.long	threading_mutex_fail
	.globl	mbedtls_mutex_free
	.section	.data.mbedtls_mutex_free,"aw",@progbits
	.align 4
	.type	mbedtls_mutex_free, @object
	.size	mbedtls_mutex_free, 4
mbedtls_mutex_free:
	.long	threading_mutex_dummy
	.globl	mbedtls_mutex_init
	.section	.data.mbedtls_mutex_init,"aw",@progbits
	.align 4
	.type	mbedtls_mutex_init, @object
	.size	mbedtls_mutex_init, 4
mbedtls_mutex_init:
	.long	threading_mutex_dummy
	.text
.Letext0:
	.section	.text.unlikely.threading_mutex_fail
.Letext_cold0:
	.file 2 "./include/aos/kernel.h"
	.file 3 "./security/alicrypto/./mbedtls/include/mbedtls/threading_alt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x21c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF27
	.byte	0xc
	.long	.LASF28
	.long	.LASF29
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.long	0x97
	.uleb128 0x6
	.string	"hdl"
	.byte	0x2
	.byte	0x14
	.long	0x79
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.byte	0x15
	.long	0x82
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.byte	0x18
	.long	0x97
	.uleb128 0x5
	.byte	0x8
	.byte	0x3
	.byte	0x1f
	.long	0xce
	.uleb128 0x8
	.long	.LASF14
	.byte	0x3
	.byte	0x21
	.long	0xa2
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.byte	0x22
	.long	0x7b
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF16
	.byte	0x3
	.byte	0x23
	.long	0xad
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x55
	.long	0x5d
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x101
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0x55
	.long	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xce
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.byte	0x5a
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x12b
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.byte	0x5a
	.long	0x101
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.long	.LASF32
	.byte	0x1
	.byte	0x68
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x182
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.byte	0x68
	.long	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.byte	0x69
	.long	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.long	.LASF19
	.byte	0x1
	.byte	0x6a
	.long	0x1a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.byte	0x6b
	.long	0x1a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.long	.LVL3
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.long	0x18d
	.uleb128 0x10
	.long	0x101
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x182
	.uleb128 0x11
	.long	0x5d
	.long	0x1a2
	.uleb128 0x10
	.long	0x101
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x193
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.byte	0x79
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.long	.LASF21
	.byte	0x1
	.byte	0x60
	.long	0x18d
	.uleb128 0x5
	.byte	0x3
	.long	mbedtls_mutex_init
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0x61
	.long	0x18d
	.uleb128 0x5
	.byte	0x3
	.long	mbedtls_mutex_free
	.uleb128 0x13
	.long	.LASF23
	.byte	0x1
	.byte	0x62
	.long	0x1a2
	.uleb128 0x5
	.byte	0x3
	.long	mbedtls_mutex_lock
	.uleb128 0x13
	.long	.LASF24
	.byte	0x1
	.byte	0x63
	.long	0x1a2
	.uleb128 0x5
	.byte	0x3
	.long	mbedtls_mutex_unlock
	.uleb128 0x13
	.long	.LASF25
	.byte	0x1
	.byte	0x86
	.long	0xce
	.uleb128 0x5
	.byte	0x3
	.long	mbedtls_threading_readdir_mutex
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.byte	0x87
	.long	0xce
	.uleb128 0x5
	.byte	0x3
	.long	mbedtls_threading_gmtime_mutex
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
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
.LASF26:
	.string	"mbedtls_threading_gmtime_mutex"
.LASF19:
	.string	"mutex_lock"
.LASF24:
	.string	"mbedtls_mutex_unlock"
.LASF33:
	.string	"mbedtls_threading_free_alt"
.LASF32:
	.string	"mbedtls_threading_set_alt"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF27:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF17:
	.string	"mutex_init"
.LASF13:
	.string	"aos_mutex_t"
.LASF30:
	.string	"threading_mutex_fail"
.LASF20:
	.string	"mutex_unlock"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.string	"aos_hdl_t"
.LASF23:
	.string	"mbedtls_mutex_lock"
.LASF7:
	.string	"long long unsigned int"
.LASF22:
	.string	"mbedtls_mutex_free"
.LASF25:
	.string	"mbedtls_threading_readdir_mutex"
.LASF10:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF15:
	.string	"is_valid"
.LASF11:
	.string	"char"
.LASF14:
	.string	"mutex"
.LASF29:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF28:
	.string	"src/threading.c"
.LASF21:
	.string	"mbedtls_mutex_init"
.LASF31:
	.string	"threading_mutex_dummy"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF18:
	.string	"mutex_free"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"mbedtls_threading_mutex_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
