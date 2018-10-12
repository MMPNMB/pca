	.file	"err.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Unknown error."
	.section	.text.unlikely.lwip_strerr,"ax",@progbits
.LCOLDB1:
	.section	.text.lwip_strerr,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.lwip_strerr
.Ltext_cold0:
	.section	.text.lwip_strerr
	.globl	lwip_strerr
	.type	lwip_strerr, @function
lwip_strerr:
.LFB17:
	.file 1 "kernel/protocols/net/api/err.c"
	.loc 1 99 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$.LC0, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 99 0
	movl	8(%ebp), %edx
	.loc 1 100 0
	leal	16(%edx), %ecx
	cmpb	$16, %cl
	ja	.L2
	.loc 1 103 0
	movsbl	%dl, %edx
	negl	%edx
	movl	err_strerr(,%edx,4), %eax
.L2:
	.loc 1 104 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	lwip_strerr, .-lwip_strerr
	.section	.text.unlikely.lwip_strerr
.LCOLDE1:
	.section	.text.lwip_strerr
.LHOTE1:
	.section	.text.unlikely.err_to_errno,"ax",@progbits
.LCOLDB2:
	.section	.text.err_to_errno,"ax",@progbits
.LHOTB2:
	.globl	err_to_errno
	.type	err_to_errno, @function
err_to_errno:
.LFB18:
	.loc 1 111 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$5, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 111 0
	movl	8(%ebp), %edx
	.loc 1 112 0
	leal	16(%edx), %ecx
	cmpb	$16, %cl
	ja	.L8
	.loc 1 115 0
	movsbl	%dl, %edx
	negl	%edx
	movl	err_to_errno_table(,%edx,4), %eax
.L8:
	.loc 1 116 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	err_to_errno, .-err_to_errno
	.section	.text.unlikely.err_to_errno
.LCOLDE2:
	.section	.text.err_to_errno
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"Ok."
.LC4:
	.string	"Out of memory error."
.LC5:
	.string	"Buffer error."
.LC6:
	.string	"Timeout."
.LC7:
	.string	"Routing problem."
.LC8:
	.string	"Operation in progress."
.LC9:
	.string	"Illegal value."
.LC10:
	.string	"Operation would block."
.LC11:
	.string	"Address in use."
.LC12:
	.string	"Already connecting."
.LC13:
	.string	"Already connected."
.LC14:
	.string	"Not connected."
.LC15:
	.string	"Low-level netif error."
.LC16:
	.string	"Connection aborted."
.LC17:
	.string	"Connection reset."
.LC18:
	.string	"Connection closed."
.LC19:
	.string	"Illegal argument."
	.section	.rodata.err_strerr,"a",@progbits
	.align 32
	.type	err_strerr, @object
	.size	err_strerr, 68
err_strerr:
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.section	.rodata.err_to_errno_table,"a",@progbits
	.align 32
	.type	err_to_errno_table, @object
	.size	err_to_errno_table, 68
err_to_errno_table:
	.long	0
	.long	12
	.long	105
	.long	11
	.long	113
	.long	115
	.long	22
	.long	11
	.long	98
	.long	114
	.long	106
	.long	107
	.long	-1
	.long	103
	.long	104
	.long	107
	.long	5
	.text
.Letext0:
	.section	.text.unlikely.lwip_strerr
.Letext_cold0:
	.file 2 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 3 "./kernel/protocols/net/include/lwip/err.h"
	.file 4 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x15f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF21
	.byte	0xc
	.long	.LASF22
	.long	.LASF23
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.long	0x86
	.uleb128 0x5
	.long	0x79
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.byte	0x32
	.long	0x41
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.byte	0x39
	.long	0x99
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF16
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x62
	.long	0x80
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xde
	.uleb128 0x8
	.string	"err"
	.byte	0x1
	.byte	0x62
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x6e
	.long	0x25
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x106
	.uleb128 0x8
	.string	"err"
	.byte	0x1
	.byte	0x6e
	.long	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.long	0x116
	.long	0x116
	.uleb128 0xa
	.long	0x72
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	0x25
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x30
	.long	0x12c
	.uleb128 0x5
	.byte	0x3
	.long	err_to_errno_table
	.uleb128 0x5
	.long	0x106
	.uleb128 0x9
	.long	0x80
	.long	0x141
	.uleb128 0xa
	.long	0x72
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.byte	0x47
	.long	0x152
	.uleb128 0x5
	.byte	0x3
	.long	err_strerr
	.uleb128 0x5
	.long	0x131
	.uleb128 0xc
	.long	.LASF24
	.byte	0x4
	.byte	0x17
	.long	0x2c
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
	.uleb128 0x8
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
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"long long int"
.LASF21:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF0:
	.string	"unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF20:
	.string	"err_strerr"
.LASF3:
	.string	"signed char"
.LASF8:
	.string	"long unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF24:
	.string	"aos_log_level"
.LASF15:
	.string	"err_t"
.LASF17:
	.string	"lwip_strerr"
.LASF19:
	.string	"err_to_errno_table"
.LASF11:
	.string	"char"
.LASF23:
	.string	"/home/stone/Documents/pca"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"double"
.LASF16:
	.string	"_Bool"
.LASF22:
	.string	"src/err.c"
.LASF6:
	.string	"short unsigned int"
.LASF14:
	.string	"s8_t"
.LASF2:
	.string	"long double"
.LASF18:
	.string	"err_to_errno"
.LASF12:
	.string	"float"
.LASF5:
	.string	"short int"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
