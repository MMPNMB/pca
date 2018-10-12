	.file	"sdk-impl.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"---"
	.section	.text.unlikely.IOT_OpenLog,"ax",@progbits
.LCOLDB1:
	.section	.text.IOT_OpenLog,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.IOT_OpenLog
.Ltext_cold0:
	.section	.text.IOT_OpenLog
	.globl	IOT_OpenLog
	.type	IOT_OpenLog, @function
IOT_OpenLog:
.LFB18:
	.file 1 "framework/protocol/linkkit/iotkit/iotkit-system/src/sdk-impl.c"
	.loc 1 25 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 29 0
	movl	$.LC0, %edx
	.loc 1 25 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 25 0
	movl	8(%ebp), %eax
.LVL1:
	.loc 1 29 0
	testl	%eax, %eax
	cmove	%edx, %eax
.LVL2:
	.loc 1 32 0
	movl	%eax, 8(%ebp)
.LVL3:
	.loc 1 33 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 32 0
	jmp	LITE_openlog
.LVL4:
	.cfi_endproc
.LFE18:
	.size	IOT_OpenLog, .-IOT_OpenLog
	.section	.text.unlikely.IOT_OpenLog
.LCOLDE1:
	.section	.text.IOT_OpenLog
.LHOTE1:
	.section	.text.unlikely.IOT_CloseLog,"ax",@progbits
.LCOLDB2:
	.section	.text.IOT_CloseLog,"ax",@progbits
.LHOTB2:
	.globl	IOT_CloseLog
	.type	IOT_CloseLog, @function
IOT_CloseLog:
.LFB19:
	.loc 1 36 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 38 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 37 0
	jmp	LITE_closelog
.LVL5:
	.cfi_endproc
.LFE19:
	.size	IOT_CloseLog, .-IOT_CloseLog
	.section	.text.unlikely.IOT_CloseLog
.LCOLDE2:
	.section	.text.IOT_CloseLog
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"Invalid input level: %d out of [%d, %d]"
	.section	.text.unlikely.IOT_SetLogLevel,"ax",@progbits
.LCOLDB4:
	.section	.text.IOT_SetLogLevel,"ax",@progbits
.LHOTB4:
	.globl	IOT_SetLogLevel
	.type	IOT_SetLogLevel, @function
IOT_SetLogLevel:
.LFB20:
	.loc 1 41 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 41 0
	movl	8(%ebp), %eax
.LVL7:
	.loc 1 44 0
	cmpl	$5, %eax
	jbe	.L7
	.loc 1 45 0
	pushl	%edx
	pushl	$5
	pushl	$0
	pushl	%eax
	pushl	$.LC3
	pushl	$2
	pushl	$47
	pushl	$__FUNCTION__.3734
	call	LITE_syslog
.LVL8:
	.loc 1 48 0
	addl	$32, %esp
	.loc 1 52 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL9:
.L7:
	.cfi_restore_state
	.loc 1 51 0
	movl	%eax, 8(%ebp)
.LVL10:
	.loc 1 52 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 51 0
	jmp	LITE_set_loglevel
.LVL11:
	.cfi_endproc
.LFE20:
	.size	IOT_SetLogLevel, .-IOT_SetLogLevel
	.section	.text.unlikely.IOT_SetLogLevel
.LCOLDE4:
	.section	.text.IOT_SetLogLevel
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"Invalid input level, using default: %d => %d"
	.section	.text.unlikely.IOT_DumpMemoryStats,"ax",@progbits
.LCOLDB6:
	.section	.text.IOT_DumpMemoryStats,"ax",@progbits
.LHOTB6:
	.globl	IOT_DumpMemoryStats
	.type	IOT_DumpMemoryStats, @function
IOT_DumpMemoryStats:
.LFB21:
	.loc 1 55 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 55 0
	movl	8(%ebp), %eax
.LVL13:
	.loc 1 58 0
	cmpl	$5, %eax
	jbe	.L13
.LVL14:
	.loc 1 60 0
	pushl	%edx
	pushl	%edx
	pushl	$5
	pushl	%eax
	pushl	$.LC5
	pushl	$3
	pushl	$60
	pushl	$__FUNCTION__.3739
	call	LITE_syslog
.LVL15:
	addl	$32, %esp
	.loc 1 59 0
	movl	$5, %eax
.LVL16:
.L13:
	.loc 1 63 0
	movl	%eax, 8(%ebp)
	.loc 1 64 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 63 0
	jmp	LITE_dump_malloc_free_stats
.LVL17:
	.cfi_endproc
.LFE21:
	.size	IOT_DumpMemoryStats, .-IOT_DumpMemoryStats
	.section	.text.unlikely.IOT_DumpMemoryStats
.LCOLDE6:
	.section	.text.IOT_DumpMemoryStats
.LHOTE6:
	.section	.rodata.str1.1
.LC7:
	.string	"Invalid argument, info_ptr = %p"
.LC8:
	.string	"product_key"
.LC9:
	.string	"Invalid argument, %s = %p"
.LC10:
	.string	"Invalid argument, %s = '%s'"
.LC11:
	.string	"device_name"
.LC12:
	.string	"device_secret"
	.section	.text.unlikely.IOT_SetupConnInfo,"ax",@progbits
.LCOLDB13:
	.section	.text.IOT_SetupConnInfo,"ax",@progbits
.LHOTB13:
	.globl	IOT_SetupConnInfo
	.type	IOT_SetupConnInfo, @function
IOT_SetupConnInfo:
.LFB22:
	.loc 1 71 0
	.cfi_startproc
.LVL18:
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
	.loc 1 71 0
	movl	20(%ebp), %edi
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	16(%ebp), %edx
	.loc 1 74 0
	testl	%edi, %edi
	jne	.L17
	.loc 1 75 0
	subl	$12, %esp
	pushl	$0
	pushl	$.LC7
	pushl	$2
	pushl	$75
	jmp	.L28
.L17:
	.loc 1 79 0
	testl	%ebx, %ebx
	jne	.L19
	.loc 1 79 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	$.LC8
	pushl	$.LC9
.L29:
	pushl	$2
	pushl	$79
.L28:
	pushl	$__FUNCTION__.3747
	call	LITE_syslog
.LVL19:
	addl	$32, %esp
	jmp	.L27
.L19:
	.loc 1 79 0 is_stmt 0 discriminator 2
	cmpb	$0, (%ebx)
	jne	.L20
	.loc 1 79 0 discriminator 3
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$.LC8
	pushl	$.LC10
	jmp	.L29
.L20:
	.loc 1 80 0 is_stmt 1
	testl	%esi, %esi
	jne	.L21
	.loc 1 80 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	$.LC11
	pushl	$.LC9
	jmp	.L30
.L21:
	.loc 1 80 0 is_stmt 0 discriminator 2
	cmpb	$0, (%esi)
	jne	.L22
	.loc 1 80 0 discriminator 3
	pushl	%edi
	pushl	%edi
	pushl	%esi
	pushl	$.LC11
	pushl	$.LC10
.L30:
	pushl	$2
	pushl	$80
	jmp	.L28
.L22:
	.loc 1 81 0 is_stmt 1
	testl	%edx, %edx
	jne	.L23
	.loc 1 81 0 discriminator 1
	pushl	%ebx
	pushl	%ebx
	pushl	$0
	pushl	$.LC12
	pushl	$.LC9
	jmp	.L31
.L23:
	.loc 1 81 0 is_stmt 0 discriminator 2
	cmpb	$0, (%edx)
	jne	.L24
	.loc 1 81 0 discriminator 3
	pushl	%ecx
	pushl	%ecx
	pushl	%edx
	pushl	$.LC12
	pushl	$.LC10
.L31:
	pushl	$2
	pushl	$81
	jmp	.L28
.L24:
	movl	%edx, -28(%ebp)
	.loc 1 83 0 is_stmt 1
	call	iotx_device_info_init
.LVL20:
	.loc 1 84 0
	movl	-28(%ebp), %edx
	pushl	%eax
	pushl	%edx
	pushl	%esi
	pushl	%ebx
	call	iotx_device_info_set
.LVL21:
	.loc 1 86 0
	call	iotx_guider_authenticate
.LVL22:
	.loc 1 87 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L25
	.loc 1 88 0
	call	iotx_conn_info_get
.LVL23:
	movl	%eax, (%edi)
	.loc 1 89 0
	xorl	%eax, %eax
	jmp	.L18
.LVL24:
.L25:
	.loc 1 91 0
	movl	$0, (%edi)
.LVL25:
.L27:
	.loc 1 92 0
	orl	$-1, %eax
.L18:
	.loc 1 94 0
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
.LFE22:
	.size	IOT_SetupConnInfo, .-IOT_SetupConnInfo
	.section	.text.unlikely.IOT_SetupConnInfo
.LCOLDE13:
	.section	.text.IOT_SetupConnInfo
.LHOTE13:
	.section	.rodata.__FUNCTION__.3747,"a",@progbits
	.align 4
	.type	__FUNCTION__.3747, @object
	.size	__FUNCTION__.3747, 18
__FUNCTION__.3747:
	.string	"IOT_SetupConnInfo"
	.section	.rodata.__FUNCTION__.3739,"a",@progbits
	.align 4
	.type	__FUNCTION__.3739, @object
	.size	__FUNCTION__.3739, 20
__FUNCTION__.3739:
	.string	"IOT_DumpMemoryStats"
	.section	.rodata.__FUNCTION__.3734,"a",@progbits
	.align 4
	.type	__FUNCTION__.3734, @object
	.size	__FUNCTION__.3734, 16
__FUNCTION__.3734:
	.string	"IOT_SetLogLevel"
	.text
.Letext0:
	.section	.text.unlikely.IOT_OpenLog
.Letext_cold0:
	.file 2 "./framework/protocol/linkkit/iotkit/base/utils/iot_export.h"
	.file 3 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.file 4 "./framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/lite-utils.h"
	.file 5 "./framework/protocol/linkkit/iotkit/iotkit-system/lite-system.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x353
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF48
	.byte	0xc
	.long	.LASF49
	.long	.LASF50
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
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.long	0x88
	.uleb128 0x6
	.long	0x72
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.long	0x64
	.byte	0x2
	.byte	0x1d
	.long	0xc2
	.uleb128 0x8
	.long	.LASF12
	.byte	0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x1
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2
	.uleb128 0x8
	.long	.LASF15
	.byte	0x3
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x2
	.byte	0x24
	.long	0x8d
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.long	0x64
	.byte	0x3
	.byte	0x22
	.long	0x102
	.uleb128 0x8
	.long	.LASF20
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.uleb128 0x8
	.long	.LASF22
	.byte	0x2
	.uleb128 0x8
	.long	.LASF23
	.byte	0x3
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x3
	.byte	0x29
	.long	0xcd
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.byte	0x18
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x14a
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.byte	0x18
	.long	0x82
	.long	.LLST0
	.uleb128 0xc
	.string	"mod"
	.byte	0x1
	.byte	0x1a
	.long	0x82
	.long	.LLST1
	.uleb128 0xd
	.long	.LVL4
	.long	0x2f3
	.byte	0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x23
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x169
	.uleb128 0xd
	.long	.LVL5
	.long	0x2fe
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x28
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1be
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.byte	0x28
	.long	0xc2
	.long	.LLST2
	.uleb128 0xc
	.string	"lvl"
	.byte	0x1
	.byte	0x2a
	.long	0x102
	.long	.LLST3
	.uleb128 0xe
	.long	.LASF34
	.long	0x1ce
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3734
	.uleb128 0xf
	.long	.LVL8
	.long	0x309
	.uleb128 0xd
	.long	.LVL11
	.long	0x314
	.byte	0
	.uleb128 0x10
	.long	0x88
	.long	0x1ce
	.uleb128 0x11
	.long	0x79
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.long	0x1be
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.byte	0x36
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x227
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.byte	0x36
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"lvl"
	.byte	0x1
	.byte	0x38
	.long	0x102
	.long	.LLST4
	.uleb128 0xe
	.long	.LASF34
	.long	0x237
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3739
	.uleb128 0xf
	.long	.LVL15
	.long	0x309
	.uleb128 0xd
	.long	.LVL17
	.long	0x31f
	.byte	0
	.uleb128 0x10
	.long	0x88
	.long	0x237
	.uleb128 0x11
	.long	0x79
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.long	0x227
	.uleb128 0x13
	.long	.LASF51
	.byte	0x1
	.byte	0x43
	.long	0x5d
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d8
	.uleb128 0x12
	.long	.LASF35
	.byte	0x1
	.byte	0x43
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF36
	.byte	0x1
	.byte	0x44
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.byte	0x45
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1
	.byte	0x46
	.long	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xc
	.string	"rc"
	.byte	0x1
	.byte	0x48
	.long	0x5d
	.long	.LLST5
	.uleb128 0xe
	.long	.LASF34
	.long	0x2ee
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3747
	.uleb128 0xf
	.long	.LVL19
	.long	0x309
	.uleb128 0xf
	.long	.LVL20
	.long	0x32a
	.uleb128 0xf
	.long	.LVL21
	.long	0x335
	.uleb128 0xf
	.long	.LVL22
	.long	0x340
	.uleb128 0xf
	.long	.LVL23
	.long	0x34b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x80
	.uleb128 0x10
	.long	0x88
	.long	0x2ee
	.uleb128 0x11
	.long	0x79
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.long	0x2de
	.uleb128 0x14
	.long	.LASF39
	.long	.LASF39
	.byte	0x3
	.byte	0x2b
	.uleb128 0x14
	.long	.LASF40
	.long	.LASF40
	.byte	0x3
	.byte	0x2c
	.uleb128 0x14
	.long	.LASF41
	.long	.LASF41
	.byte	0x3
	.byte	0x34
	.uleb128 0x14
	.long	.LASF42
	.long	.LASF42
	.byte	0x3
	.byte	0x30
	.uleb128 0x14
	.long	.LASF43
	.long	.LASF43
	.byte	0x4
	.byte	0x5e
	.uleb128 0x14
	.long	.LASF44
	.long	.LASF44
	.byte	0x5
	.byte	0x2e
	.uleb128 0x14
	.long	.LASF45
	.long	.LASF45
	.byte	0x5
	.byte	0x30
	.uleb128 0x14
	.long	.LASF46
	.long	.LASF46
	.byte	0x5
	.byte	0x21
	.uleb128 0x14
	.long	.LASF47
	.long	.LASF47
	.byte	0x5
	.byte	0x36
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
	.uleb128 0x13
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
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL2
	.long	.LVL4-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL8-1
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL9
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL16
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL18
	.long	.LVL22
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF20:
	.string	"LOG_EMERG_LEVEL"
.LASF39:
	.string	"LITE_openlog"
.LASF48:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF36:
	.string	"device_name"
.LASF18:
	.string	"_IOT_LogLevel"
.LASF43:
	.string	"LITE_dump_malloc_free_stats"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"IOT_CloseLog"
.LASF15:
	.string	"IOT_LOG_WARNING"
.LASF46:
	.string	"iotx_guider_authenticate"
.LASF26:
	.string	"IOT_LogLevel"
.LASF0:
	.string	"signed char"
.LASF33:
	.string	"IOT_DumpMemoryStats"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"LOG_INFO_LEVEL"
.LASF5:
	.string	"long unsigned int"
.LASF17:
	.string	"IOT_LOG_DEBUG"
.LASF45:
	.string	"iotx_device_info_set"
.LASF44:
	.string	"iotx_device_info_init"
.LASF13:
	.string	"IOT_LOG_CRIT"
.LASF35:
	.string	"product_key"
.LASF30:
	.string	"IOT_SetLogLevel"
.LASF37:
	.string	"device_secret"
.LASF34:
	.string	"__FUNCTION__"
.LASF38:
	.string	"info_ptr"
.LASF28:
	.string	"IOT_OpenLog"
.LASF8:
	.string	"unsigned int"
.LASF27:
	.string	"LOGLEVEL"
.LASF7:
	.string	"long long unsigned int"
.LASF41:
	.string	"LITE_syslog"
.LASF42:
	.string	"LITE_set_loglevel"
.LASF47:
	.string	"iotx_conn_info_get"
.LASF19:
	.string	"_LOGLEVEL"
.LASF16:
	.string	"IOT_LOG_INFO"
.LASF25:
	.string	"LOG_DEBUG_LEVEL"
.LASF31:
	.string	"ident"
.LASF51:
	.string	"IOT_SetupConnInfo"
.LASF32:
	.string	"level"
.LASF11:
	.string	"sizetype"
.LASF10:
	.string	"char"
.LASF12:
	.string	"IOT_LOG_EMERG"
.LASF50:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"LOG_WARNING_LEVEL"
.LASF21:
	.string	"LOG_CRIT_LEVEL"
.LASF40:
	.string	"LITE_closelog"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF22:
	.string	"LOG_ERR_LEVEL"
.LASF14:
	.string	"IOT_LOG_ERROR"
.LASF49:
	.string	"src/sdk-impl.c"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
