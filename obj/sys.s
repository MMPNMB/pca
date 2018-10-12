	.file	"sys.c"
	.text
.Ltext0:
	.section	.text.unlikely.sys_msleep,"ax",@progbits
.LCOLDB0:
	.section	.text.sys_msleep,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sys_msleep
.Ltext_cold0:
	.section	.text.sys_msleep
	.globl	sys_msleep
	.type	sys_msleep, @function
sys_msleep:
.LFB17:
	.file 1 "kernel/protocols/net/core/sys.c"
	.loc 1 56 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 56 0
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 57 0
	testl	%esi, %esi
	je	.L1
.LBB2:
	.loc 1 59 0
	leal	-16(%ebp), %ebx
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	%ebx
	call	sys_sem_new
.LVL1:
	.loc 1 60 0
	addl	$16, %esp
	testb	%al, %al
	jne	.L1
.LVL2:
	.loc 1 61 0
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	call	sys_arch_sem_wait
.LVL3:
	.loc 1 62 0
	movl	%ebx, (%esp)
	call	sys_sem_free
.LVL4:
	addl	$16, %esp
.L1:
.LBE2:
	.loc 1 65 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L4
	call	__stack_chk_fail
.LVL5:
.L4:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	sys_msleep, .-sys_msleep
	.section	.text.unlikely.sys_msleep
.LCOLDE0:
	.section	.text.sys_msleep
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.sys_msleep
.Letext_cold0:
	.file 2 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 3 "./kernel/protocols/net/include/lwip/err.h"
	.file 4 "./include/aos/kernel.h"
	.file 5 "./kernel/protocols/net/port/include/arch/sys_arch.h"
	.file 6 "./kernel/protocols/net/include/lwip/sys.h"
	.file 7 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x205
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF42
	.byte	0xc
	.long	.LASF43
	.long	.LASF44
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.byte	0x32
	.long	0x41
	.uleb128 0x5
	.long	.LASF15
	.byte	0x2
	.byte	0x35
	.long	0x64
	.uleb128 0x5
	.long	.LASF16
	.byte	0x3
	.byte	0x39
	.long	0x90
	.uleb128 0x6
	.byte	0x4
	.long	0x25
	.byte	0x3
	.byte	0x3d
	.long	0x124
	.uleb128 0x7
	.long	.LASF17
	.byte	0
	.uleb128 0x8
	.long	.LASF18
	.sleb128 -1
	.uleb128 0x8
	.long	.LASF19
	.sleb128 -2
	.uleb128 0x8
	.long	.LASF20
	.sleb128 -3
	.uleb128 0x8
	.long	.LASF21
	.sleb128 -4
	.uleb128 0x8
	.long	.LASF22
	.sleb128 -5
	.uleb128 0x8
	.long	.LASF23
	.sleb128 -6
	.uleb128 0x8
	.long	.LASF24
	.sleb128 -7
	.uleb128 0x8
	.long	.LASF25
	.sleb128 -8
	.uleb128 0x8
	.long	.LASF26
	.sleb128 -9
	.uleb128 0x8
	.long	.LASF27
	.sleb128 -10
	.uleb128 0x8
	.long	.LASF28
	.sleb128 -11
	.uleb128 0x8
	.long	.LASF29
	.sleb128 -12
	.uleb128 0x8
	.long	.LASF30
	.sleb128 -13
	.uleb128 0x8
	.long	.LASF31
	.sleb128 -14
	.uleb128 0x8
	.long	.LASF32
	.sleb128 -15
	.uleb128 0x8
	.long	.LASF33
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x13
	.long	0x139
	.uleb128 0xa
	.string	"hdl"
	.byte	0x4
	.byte	0x14
	.long	0x79
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF34
	.byte	0x4
	.byte	0x15
	.long	0x124
	.uleb128 0x5
	.long	.LASF35
	.byte	0x4
	.byte	0x19
	.long	0x139
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF36
	.uleb128 0x5
	.long	.LASF37
	.byte	0x5
	.byte	0x2e
	.long	0x144
	.uleb128 0xb
	.long	.LASF45
	.byte	0x1
	.byte	0x37
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d3
	.uleb128 0xc
	.string	"ms"
	.byte	0x1
	.byte	0x37
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x1c9
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0x3a
	.long	0x156
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xf
	.string	"err"
	.byte	0x1
	.byte	0x3b
	.long	0xa6
	.long	.LLST0
	.uleb128 0x10
	.long	.LVL1
	.long	0x1de
	.uleb128 0x10
	.long	.LVL3
	.long	0x1e9
	.uleb128 0x10
	.long	.LVL4
	.long	0x1f4
	.byte	0
	.uleb128 0x10
	.long	.LVL5
	.long	0x1ff
	.byte	0
	.uleb128 0x11
	.long	.LASF46
	.byte	0x7
	.byte	0x17
	.long	0x2c
	.uleb128 0x12
	.long	.LASF39
	.long	.LASF39
	.byte	0x6
	.byte	0xd5
	.uleb128 0x12
	.long	.LASF40
	.long	.LASF40
	.byte	0x6
	.byte	0xe4
	.uleb128 0x12
	.long	.LASF41
	.long	.LASF41
	.byte	0x6
	.byte	0xea
	.uleb128 0x13
	.long	.LASF47
	.long	.LASF47
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xd
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xb
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"delaysem"
.LASF41:
	.string	"sys_sem_free"
.LASF43:
	.string	"src/sys.c"
.LASF23:
	.string	"ERR_VAL"
.LASF28:
	.string	"ERR_CONN"
.LASF44:
	.string	"/home/stone/Documents/pca"
.LASF13:
	.string	"double"
.LASF40:
	.string	"sys_arch_sem_wait"
.LASF14:
	.string	"s8_t"
.LASF25:
	.string	"ERR_USE"
.LASF27:
	.string	"ERR_ISCONN"
.LASF12:
	.string	"float"
.LASF16:
	.string	"err_t"
.LASF31:
	.string	"ERR_RST"
.LASF29:
	.string	"ERR_IF"
.LASF18:
	.string	"ERR_MEM"
.LASF8:
	.string	"long unsigned int"
.LASF42:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF6:
	.string	"short unsigned int"
.LASF30:
	.string	"ERR_ABRT"
.LASF7:
	.string	"long int"
.LASF47:
	.string	"__stack_chk_fail"
.LASF4:
	.string	"unsigned char"
.LASF21:
	.string	"ERR_RTE"
.LASF15:
	.string	"u32_t"
.LASF17:
	.string	"ERR_OK"
.LASF0:
	.string	"unsigned int"
.LASF34:
	.string	"aos_hdl_t"
.LASF9:
	.string	"long long unsigned int"
.LASF45:
	.string	"sys_msleep"
.LASF32:
	.string	"ERR_CLSD"
.LASF10:
	.string	"sizetype"
.LASF19:
	.string	"ERR_BUF"
.LASF1:
	.string	"long long int"
.LASF39:
	.string	"sys_sem_new"
.LASF11:
	.string	"char"
.LASF33:
	.string	"ERR_ARG"
.LASF5:
	.string	"short int"
.LASF35:
	.string	"aos_sem_t"
.LASF22:
	.string	"ERR_INPROGRESS"
.LASF46:
	.string	"aos_log_level"
.LASF2:
	.string	"long double"
.LASF37:
	.string	"sys_sem_t"
.LASF3:
	.string	"signed char"
.LASF24:
	.string	"ERR_WOULDBLOCK"
.LASF20:
	.string	"ERR_TIMEOUT"
.LASF36:
	.string	"_Bool"
.LASF26:
	.string	"ERR_ALREADY"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
