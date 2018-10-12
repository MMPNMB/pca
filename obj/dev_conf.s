	.file	"dev_conf.c"
	.text
.Ltext0:
	.section	.text.unlikely.utils_crc16.constprop.1,"ax",@progbits
.LCOLDB0:
	.section	.text.utils_crc16.constprop.1,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.utils_crc16.constprop.1
.Ltext_cold0:
	.section	.text.utils_crc16.constprop.1
	.type	utils_crc16.constprop.1, @function
utils_crc16.constprop.1:
.LFB9:
	.file 1 "framework/protocol/linkkit/iotkit/layers/config/src/dev_conf.c"
	.loc 1 40 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 43 0
	xorl	%edx, %edx
	orl	$-1, %eax
	.loc 1 45 0
	xorl	%ecx, %ecx
	.loc 1 40 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 45 0
	movl	$main_config, %ebx
.LVL1:
.L2:
	cmpl	$72, %ecx
	je	.L8
	.loc 1 46 0
	testb	$7, %cl
	jne	.L3
.LVL2:
	.loc 1 47 0
	movzbl	(%ebx), %edx
.LVL3:
	incl	%ebx
.LVL4:
	sall	$8, %edx
.LVL5:
.L3:
	.loc 1 49 0
	movl	%eax, %edi
	.loc 1 50 0
	addl	%eax, %eax
.LVL6:
	.loc 1 49 0
	xorl	%edx, %edi
.LVL7:
	.loc 1 53 0
	movl	%eax, %esi
	.loc 1 51 0
	addl	%edx, %edx
.LVL8:
	.loc 1 53 0
	xorw	$4129, %si
	testw	%di, %di
	cmovs	%esi, %eax
.LVL9:
	.loc 1 45 0
	incl	%ecx
.LVL10:
	jmp	.L2
.LVL11:
.L8:
	.loc 1 57 0
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
.LFE9:
	.size	utils_crc16.constprop.1, .-utils_crc16.constprop.1
	.section	.text.unlikely.utils_crc16.constprop.1
.LCOLDE0:
	.section	.text.utils_crc16.constprop.1
.LHOTE0:
	.section	.text.unlikely.config_exit,"ax",@progbits
.LCOLDB1:
	.section	.text.config_exit,"ax",@progbits
.LHOTB1:
	.globl	config_exit
	.type	config_exit, @function
config_exit:
.LFB3:
	.loc 1 85 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 86 0
	movl	$0, is_init
	.loc 1 85 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 87 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	config_exit, .-config_exit
	.section	.text.unlikely.config_exit
.LCOLDE1:
	.section	.text.config_exit
.LHOTE1:
	.section	.text.unlikely.config_update,"ax",@progbits
.LCOLDB2:
	.section	.text.config_update,"ax",@progbits
.LHOTB2:
	.globl	config_update
	.type	config_update, @function
config_update:
.LFB5:
	.loc 1 99 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 100 0
	call	utils_crc16.constprop.1
.LVL13:
	.loc 1 101 0
	pushl	%edx
	pushl	%edx
	pushl	$74
	pushl	$main_config
	.loc 1 100 0
	movw	%ax, main_config+72
	.loc 1 101 0
	call	HAL_Config_Write
.LVL14:
	.loc 1 102 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	config_update, .-config_update
	.section	.text.unlikely.config_update
.LCOLDE2:
	.section	.text.config_update
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Alink+"
	.section	.text.unlikely.config_factory,"ax",@progbits
.LCOLDB4:
	.section	.text.config_factory,"ax",@progbits
.LHOTB4:
	.globl	config_factory
	.type	config_factory, @function
config_factory:
.LFB6:
	.loc 1 105 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 106 0
	movl	$main_config, %edx
	xorl	%eax, %eax
	movl	$74, %ecx
	.loc 1 105 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 106 0
	movl	%edx, %edi
	.loc 1 105 0
	subl	$12, %esp
	.loc 1 106 0
	rep stosb
	.loc 1 108 0
	pushl	$.LC3
	pushl	%edx
	call	strcpy
.LVL15:
	.loc 1 109 0
	movl	$main_config+8, (%esp)
	call	HAL_GetFirmwareVesion
.LVL16:
	.loc 1 110 0
	call	utils_crc16.constprop.1
.LVL17:
	.loc 1 111 0
	addl	$16, %esp
	.loc 1 110 0
	movw	%ax, main_config+72
	.loc 1 112 0
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	.loc 1 111 0
	jmp	config_update
.LVL18:
	.cfi_endproc
.LFE6:
	.size	config_factory, .-config_factory
	.section	.text.unlikely.config_factory
.LCOLDE4:
	.section	.text.config_factory
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"config init ok"
.LC6:
	.string	"config init fail, reset..."
.LC7:
	.string	"~~~~~dump device config~~~~~"
.LC8:
	.string	"magic: %s"
.LC9:
	.string	"firmware_version: %s"
.LC10:
	.string	"crc: %d"
.LC11:
	.string	"~~~~~~~~~~~~~~~~~~~~~~~~~~"
	.section	.text.unlikely.config_init,"ax",@progbits
.LCOLDB12:
	.section	.text.config_init,"ax",@progbits
.LHOTB12:
	.globl	config_init
	.type	config_init, @function
config_init:
.LFB2:
	.loc 1 61 0
	.cfi_startproc
.LVL19:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 62 0
	xorl	%ebx, %ebx
	.loc 1 61 0
	subl	$12, %esp
	.loc 1 64 0
	cmpl	$0, is_init
	jne	.L16
.LBB9:
.LBB10:
	.loc 1 65 0
	movl	$main_config, %edx
	xorl	%eax, %eax
	movl	$74, %ecx
	movl	%edx, %edi
	rep stosb
.LBB11:
	.loc 1 66 0
	pushl	%ecx
	pushl	%ecx
	pushl	$74
	pushl	%edx
	call	HAL_Config_Read
.LVL20:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L17
	.loc 1 67 0
	pushl	%eax
	pushl	$6
	pushl	$.LC3
	pushl	$main_config
	call	strncmp
.LVL21:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L17
	.loc 1 69 0
	movl	main_config+72, %esi
	call	utils_crc16.constprop.1
.LVL22:
	cmpw	%ax, %si
	jne	.L17
	.loc 1 71 0
	pushl	$.LC5
	pushl	$4
	pushl	$71
	pushl	$__FUNCTION__.3591
	call	LITE_syslog
.LVL23:
	jmp	.L21
.L17:
	.loc 1 73 0
	pushl	$.LC6
	pushl	$3
	pushl	$73
	pushl	$__FUNCTION__.3591
	call	LITE_syslog
.LVL24:
	.loc 1 74 0
	call	config_factory
.LVL25:
	movl	%eax, %ebx
.L21:
.LVL26:
	addl	$16, %esp
.LBE11:
.LBB12:
.LBB13:
	.loc 1 91 0
	pushl	$.LC7
	pushl	$5
	pushl	$91
	pushl	$__FUNCTION__.3599
	call	LITE_syslog
.LVL27:
	.loc 1 92 0
	movl	$main_config, (%esp)
	pushl	$.LC8
	pushl	$5
	pushl	$92
	pushl	$__FUNCTION__.3599
	call	LITE_syslog
.LVL28:
	.loc 1 93 0
	addl	$20, %esp
	pushl	$main_config+8
	pushl	$.LC9
	pushl	$5
	pushl	$93
	pushl	$__FUNCTION__.3599
	call	LITE_syslog
.LVL29:
	.loc 1 94 0
	movzwl	main_config+72, %eax
	addl	$20, %esp
	pushl	%eax
	pushl	$.LC10
	pushl	$5
	pushl	$94
	pushl	$__FUNCTION__.3599
	call	LITE_syslog
.LVL30:
	.loc 1 95 0
	addl	$32, %esp
	pushl	$.LC11
	pushl	$5
	pushl	$95
	pushl	$__FUNCTION__.3599
	call	LITE_syslog
.LVL31:
.LBE13:
.LBE12:
	.loc 1 78 0
	movl	$1, is_init
.LVL32:
	addl	$16, %esp
.L16:
.LVL33:
.LBE10:
.LBE9:
	.loc 1 82 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL34:
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
	.size	config_init, .-config_init
	.section	.text.unlikely.config_init
.LCOLDE12:
	.section	.text.config_init
.LHOTE12:
	.section	.text.unlikely.config_get_fw_version,"ax",@progbits
.LCOLDB13:
	.section	.text.config_get_fw_version,"ax",@progbits
.LHOTB13:
	.globl	config_get_fw_version
	.type	config_get_fw_version, @function
config_get_fw_version:
.LFB7:
	.loc 1 115 0
	.cfi_startproc
	.loc 1 116 0
	cmpl	$0, is_init
	jne	.L25
	.loc 1 115 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 117 0
	call	config_init
.LVL35:
	.loc 1 120 0
	movl	$main_config+8, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L25:
	movl	$main_config+8, %eax
	ret
	.cfi_endproc
.LFE7:
	.size	config_get_fw_version, .-config_get_fw_version
	.section	.text.unlikely.config_get_fw_version
.LCOLDE13:
	.section	.text.config_get_fw_version
.LHOTE13:
	.section	.rodata.__FUNCTION__.3599,"a",@progbits
	.align 4
	.type	__FUNCTION__.3599, @object
	.size	__FUNCTION__.3599, 12
__FUNCTION__.3599:
	.string	"config_dump"
	.section	.rodata.__FUNCTION__.3591,"a",@progbits
	.align 4
	.type	__FUNCTION__.3591, @object
	.size	__FUNCTION__.3591, 12
__FUNCTION__.3591:
	.string	"config_init"
	.section	.bss.is_init,"aw",@nobits
	.align 4
	.type	is_init, @object
	.size	is_init, 4
is_init:
	.zero	4
	.globl	main_config
	.section	.bss.main_config,"aw",@nobits
	.align 32
	.type	main_config, @object
	.size	main_config, 74
main_config:
	.zero	74
	.text
.Letext0:
	.section	.text.unlikely.utils_crc16.constprop.1
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./framework/protocol/linkkit/iotkit/layers/config/include/dev_conf.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 6 "./framework/protocol/linkkit/iotkit/sdk-encap/imports/iot_import_product.h"
	.file 7 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x44a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF40
	.byte	0xc
	.long	.LASF41
	.long	.LASF42
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
	.long	0x37
	.uleb128 0x5
	.byte	0x4
	.long	0x88
	.uleb128 0x6
	.long	0x88
	.uleb128 0x7
	.long	0x88
	.long	0xb7
	.uleb128 0x8
	.long	0x8f
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x24
	.long	0x45
	.uleb128 0x9
	.long	.LASF43
	.byte	0x4a
	.byte	0x4
	.byte	0x25
	.long	0x10a
	.uleb128 0xa
	.long	.LASF16
	.byte	0x4
	.byte	0x26
	.long	0xa7
	.byte	0
	.uleb128 0xa
	.long	.LASF17
	.byte	0x4
	.byte	0x27
	.long	0x10a
	.byte	0x8
	.uleb128 0xa
	.long	.LASF18
	.byte	0x4
	.byte	0x28
	.long	0x10a
	.byte	0x28
	.uleb128 0xb
	.string	"crc"
	.byte	0x4
	.byte	0x29
	.long	0xc2
	.byte	0x48
	.byte	0
	.uleb128 0x7
	.long	0x88
	.long	0x11a
	.uleb128 0x8
	.long	0x8f
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x4
	.byte	0x2a
	.long	0xcd
	.uleb128 0xc
	.long	.LASF44
	.byte	0x4
	.long	0x7a
	.byte	0x7
	.byte	0x22
	.long	0x15a
	.uleb128 0xd
	.long	.LASF20
	.byte	0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.uleb128 0xd
	.long	.LASF22
	.byte	0x2
	.uleb128 0xd
	.long	.LASF23
	.byte	0x3
	.uleb128 0xd
	.long	.LASF24
	.byte	0x4
	.uleb128 0xd
	.long	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.byte	0x3c
	.long	0x73
	.byte	0x1
	.long	0x194
	.uleb128 0xf
	.string	"ret"
	.byte	0x1
	.byte	0x3e
	.long	0x73
	.uleb128 0x10
	.long	.LASF26
	.long	0x1a4
	.long	.LASF30
	.uleb128 0x11
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.byte	0x42
	.long	0x73
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	0xa2
	.long	0x1a4
	.uleb128 0x8
	.long	0x8f
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.long	0x194
	.uleb128 0x14
	.long	.LASF45
	.byte	0x1
	.byte	0x28
	.long	0x50
	.byte	0x1
	.long	0x1fa
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0x28
	.long	0x96
	.uleb128 0x16
	.long	.LASF27
	.byte	0x1
	.byte	0x28
	.long	0x7a
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x73
	.uleb128 0x17
	.long	.LASF28
	.byte	0x1
	.byte	0x2b
	.long	0x50
	.uleb128 0x17
	.long	.LASF29
	.byte	0x1
	.byte	0x2b
	.long	0x50
	.uleb128 0xf
	.string	"val"
	.byte	0x1
	.byte	0x2b
	.long	0x50
	.byte	0
	.uleb128 0x18
	.long	0x1a9
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f
	.uleb128 0x19
	.long	0x1cf
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1a
	.long	0x1d8
	.long	.LLST0
	.uleb128 0x1a
	.long	0x1e3
	.long	.LLST1
	.uleb128 0x1a
	.long	0x1ee
	.long	.LLST2
	.uleb128 0x1b
	.long	0x1c4
	.byte	0x48
	.uleb128 0x1c
	.long	0x1b9
	.long	.LLST3
	.byte	0
	.uleb128 0x1d
	.long	.LASF46
	.byte	0x1
	.byte	0x54
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF32
	.byte	0x1
	.byte	0x62
	.long	0x73
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x28d
	.uleb128 0x1f
	.long	.LASF34
	.byte	0x1
	.byte	0x65
	.long	0x73
	.long	0x27a
	.uleb128 0x13
	.byte	0
	.uleb128 0x20
	.long	.LVL13
	.long	0x1fa
	.uleb128 0x20
	.long	.LVL14
	.long	0x40b
	.byte	0
	.uleb128 0x21
	.long	.LASF47
	.byte	0x1
	.byte	0x68
	.long	0x73
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cb
	.uleb128 0x20
	.long	.LVL15
	.long	0x416
	.uleb128 0x20
	.long	.LVL16
	.long	0x421
	.uleb128 0x20
	.long	.LVL17
	.long	0x1fa
	.uleb128 0x22
	.long	.LVL18
	.long	0x250
	.byte	0
	.uleb128 0x23
	.long	.LASF31
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	0x2e5
	.uleb128 0x10
	.long	.LASF26
	.long	0x2e5
	.long	.LASF31
	.byte	0
	.uleb128 0x6
	.long	0x194
	.uleb128 0x18
	.long	0x15a
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c6
	.uleb128 0x1a
	.long	0x16a
	.long	.LLST4
	.uleb128 0x19
	.long	0x175
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3591
	.uleb128 0x24
	.long	.LBB10
	.long	.LBE10-.LBB10
	.uleb128 0x1a
	.long	0x16a
	.long	.LLST5
	.uleb128 0x19
	.long	0x175
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3591
	.uleb128 0x25
	.long	.LBB11
	.long	.LBE11-.LBB11
	.long	0x372
	.uleb128 0x20
	.long	.LVL20
	.long	0x42c
	.uleb128 0x20
	.long	.LVL21
	.long	0x437
	.uleb128 0x20
	.long	.LVL22
	.long	0x1fa
	.uleb128 0x20
	.long	.LVL23
	.long	0x442
	.uleb128 0x20
	.long	.LVL24
	.long	0x442
	.uleb128 0x20
	.long	.LVL25
	.long	0x28d
	.byte	0
	.uleb128 0x26
	.long	0x2cb
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.byte	0x4d
	.uleb128 0x24
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x19
	.long	0x2d7
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3599
	.uleb128 0x20
	.long	.LVL27
	.long	0x442
	.uleb128 0x20
	.long	.LVL28
	.long	0x442
	.uleb128 0x20
	.long	.LVL29
	.long	0x442
	.uleb128 0x20
	.long	.LVL30
	.long	0x442
	.uleb128 0x20
	.long	.LVL31
	.long	0x442
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF33
	.byte	0x1
	.byte	0x72
	.long	0x9c
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e9
	.uleb128 0x20
	.long	.LVL35
	.long	0x15a
	.byte	0
	.uleb128 0x27
	.long	.LASF48
	.byte	0x1
	.byte	0x25
	.long	0x73
	.uleb128 0x5
	.byte	0x3
	.long	is_init
	.uleb128 0x28
	.long	.LASF49
	.byte	0x1
	.byte	0x21
	.long	0x11a
	.uleb128 0x5
	.byte	0x3
	.long	main_config
	.uleb128 0x29
	.long	.LASF34
	.long	.LASF34
	.byte	0x1
	.byte	0x65
	.uleb128 0x29
	.long	.LASF35
	.long	.LASF35
	.byte	0x5
	.byte	0x22
	.uleb128 0x29
	.long	.LASF36
	.long	.LASF36
	.byte	0x6
	.byte	0x71
	.uleb128 0x29
	.long	.LASF37
	.long	.LASF37
	.byte	0x1
	.byte	0x42
	.uleb128 0x29
	.long	.LASF38
	.long	.LASF38
	.byte	0x5
	.byte	0x27
	.uleb128 0x29
	.long	.LASF39
	.long	.LASF39
	.byte	0x7
	.byte	0x34
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.long	.LVL1
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x57
	.long	.LVL7
	.long	.LFE9
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL3
	.value	0x1
	.byte	0x52
	.long	.LVL5
	.long	.LFE9
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL11
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL1
	.value	0x6
	.byte	0x3
	.long	main_config
	.byte	0x9f
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
.LLST4:
	.long	.LVL19
	.long	.LVL33
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.value	0x1
	.byte	0x53
	.long	.LVL34
	.long	.LFE2
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL26
	.long	.LVL32
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB9
	.long	.LFE9
	.long	.LFB3
	.long	.LFE3
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB2
	.long	.LFE2
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"LOG_EMERG_LEVEL"
.LASF28:
	.string	"shift"
.LASF33:
	.string	"config_get_fw_version"
.LASF46:
	.string	"config_exit"
.LASF3:
	.string	"__uint8_t"
.LASF43:
	.string	"device_config"
.LASF34:
	.string	"HAL_Config_Write"
.LASF17:
	.string	"firmware_version"
.LASF22:
	.string	"LOG_ERR_LEVEL"
.LASF16:
	.string	"magic"
.LASF29:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"LOG_INFO_LEVEL"
.LASF35:
	.string	"strcpy"
.LASF7:
	.string	"long unsigned int"
.LASF40:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF5:
	.string	"short unsigned int"
.LASF45:
	.string	"utils_crc16"
.LASF30:
	.string	"config_init"
.LASF4:
	.string	"__uint16_t"
.LASF26:
	.string	"__FUNCTION__"
.LASF32:
	.string	"config_update"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF39:
	.string	"LITE_syslog"
.LASF48:
	.string	"is_init"
.LASF19:
	.string	"device_config_t"
.LASF44:
	.string	"_LOGLEVEL"
.LASF21:
	.string	"LOG_CRIT_LEVEL"
.LASF25:
	.string	"LOG_DEBUG_LEVEL"
.LASF14:
	.string	"uint8_t"
.LASF8:
	.string	"long long int"
.LASF41:
	.string	"src/dev_conf.c"
.LASF49:
	.string	"main_config"
.LASF38:
	.string	"strncmp"
.LASF37:
	.string	"HAL_Config_Read"
.LASF42:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"sizetype"
.LASF15:
	.string	"uint16_t"
.LASF23:
	.string	"LOG_WARNING_LEVEL"
.LASF31:
	.string	"config_dump"
.LASF6:
	.string	"long int"
.LASF12:
	.string	"char"
.LASF11:
	.string	"long double"
.LASF36:
	.string	"HAL_GetFirmwareVesion"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"ota_version"
.LASF27:
	.string	"length"
.LASF47:
	.string	"config_factory"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
