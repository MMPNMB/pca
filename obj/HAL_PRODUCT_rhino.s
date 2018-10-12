	.file	"HAL_PRODUCT_rhino.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"AliOSThings"
	.section	.text.unlikely.HAL_GetPartnerID,"ax",@progbits
.LCOLDB1:
	.section	.text.HAL_GetPartnerID,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.HAL_GetPartnerID
.Ltext_cold0:
	.section	.text.HAL_GetPartnerID
	.globl	HAL_GetPartnerID
	.type	HAL_GetPartnerID, @function
HAL_GetPartnerID:
.LFB1:
	.file 1 "framework/protocol/linkkit/iotkit/hal-impl/rhino/HAL_PRODUCT_rhino.c"
	.loc 1 31 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 33 0
	movl	$3, %ecx
	.loc 1 35 0
	movl	$12, %eax
	.loc 1 31 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 33 0
	movl	8(%ebp), %edi
	movl	$.LC0, %esi
	rep movsl
	.loc 1 35 0
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
	.size	HAL_GetPartnerID, .-HAL_GetPartnerID
	.section	.text.unlikely.HAL_GetPartnerID
.LCOLDE1:
	.section	.text.HAL_GetPartnerID
.LHOTE1:
	.section	.rodata.str1.1
.LC2:
	.string	"GeneralID"
	.section	.text.unlikely.HAL_GetModuleID,"ax",@progbits
.LCOLDB3:
	.section	.text.HAL_GetModuleID,"ax",@progbits
.LHOTB3:
	.globl	HAL_GetModuleID
	.type	HAL_GetModuleID, @function
HAL_GetModuleID:
.LFB2:
	.loc 1 45 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 47 0
	movl	$10, %ecx
	.loc 1 49 0
	movl	$10, %eax
	.loc 1 45 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 47 0
	movl	8(%ebp), %edi
	movl	$.LC2, %esi
	rep movsb
	.loc 1 49 0
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
	.size	HAL_GetModuleID, .-HAL_GetModuleID
	.section	.text.unlikely.HAL_GetModuleID
.LCOLDE3:
	.section	.text.HAL_GetModuleID
.LHOTE3:
	.section	.rodata.str1.1
.LC4:
	.string	"yfTuLfBJTiL"
	.section	.text.unlikely.HAL_GetProductKey,"ax",@progbits
.LCOLDB5:
	.section	.text.HAL_GetProductKey,"ax",@progbits
.LHOTB5:
	.globl	HAL_GetProductKey
	.type	HAL_GetProductKey, @function
HAL_GetProductKey:
.LFB3:
	.loc 1 58 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 60 0
	movl	$3, %ecx
	.loc 1 62 0
	movl	$12, %eax
	.loc 1 58 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 60 0
	movl	8(%ebp), %edi
	movl	$.LC4, %esi
	rep movsl
	.loc 1 62 0
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
	.size	HAL_GetProductKey, .-HAL_GetProductKey
	.section	.text.unlikely.HAL_GetProductKey
.LCOLDE5:
	.section	.text.HAL_GetProductKey
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"TestDeviceForDemo"
	.section	.text.unlikely.HAL_GetDeviceName,"ax",@progbits
.LCOLDB7:
	.section	.text.HAL_GetDeviceName,"ax",@progbits
.LHOTB7:
	.globl	HAL_GetDeviceName
	.type	HAL_GetDeviceName, @function
HAL_GetDeviceName:
.LFB4:
	.loc 1 71 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 73 0
	movl	$18, %ecx
	.loc 1 75 0
	movl	$18, %eax
	.loc 1 71 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 73 0
	movl	8(%ebp), %edi
	movl	$.LC6, %esi
	rep movsb
	.loc 1 75 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	HAL_GetDeviceName, .-HAL_GetDeviceName
	.section	.text.unlikely.HAL_GetDeviceName
.LCOLDE7:
	.section	.text.HAL_GetDeviceName
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"fSCl9Ns5YPnYN8Ocg0VEel1kXFnRlV6c"
	.section	.text.unlikely.HAL_GetDeviceSecret,"ax",@progbits
.LCOLDB9:
	.section	.text.HAL_GetDeviceSecret,"ax",@progbits
.LHOTB9:
	.globl	HAL_GetDeviceSecret
	.type	HAL_GetDeviceSecret, @function
HAL_GetDeviceSecret:
.LFB5:
	.loc 1 84 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 86 0
	movl	$33, %ecx
	.loc 1 88 0
	movl	$33, %eax
	.loc 1 84 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 86 0
	movl	8(%ebp), %edi
	movl	$.LC8, %esi
	rep movsb
	.loc 1 88 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	HAL_GetDeviceSecret, .-HAL_GetDeviceSecret
	.section	.text.unlikely.HAL_GetDeviceSecret
.LCOLDE9:
	.section	.text.HAL_GetDeviceSecret
.LHOTE9:
	.section	.text.unlikely.HAL_GetProductSecret,"ax",@progbits
.LCOLDB10:
	.section	.text.HAL_GetProductSecret,"ax",@progbits
.LHOTB10:
	.globl	HAL_GetProductSecret
	.type	HAL_GetProductSecret, @function
HAL_GetProductSecret:
.LFB6:
	.loc 1 97 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 99 0
	movl	8(%ebp), %eax
	movb	$0, (%eax)
	.loc 1 101 0
	movl	$1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	HAL_GetProductSecret, .-HAL_GetProductSecret
	.section	.text.unlikely.HAL_GetProductSecret
.LCOLDE10:
	.section	.text.HAL_GetProductSecret
.LHOTE10:
	.section	.rodata.str1.1
.LC11:
	.string	"AosAwssDeviceID"
	.section	.text.unlikely.HAL_GetDeviceID,"ax",@progbits
.LCOLDB12:
	.section	.text.HAL_GetDeviceID,"ax",@progbits
.LHOTB12:
	.globl	HAL_GetDeviceID
	.type	HAL_GetDeviceID, @function
HAL_GetDeviceID:
.LFB7:
	.loc 1 110 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 112 0
	movl	$4, %ecx
	.loc 1 114 0
	movl	$16, %eax
	.loc 1 110 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 112 0
	movl	8(%ebp), %edi
	movl	$.LC11, %esi
	rep movsl
	.loc 1 114 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	HAL_GetDeviceID, .-HAL_GetDeviceID
	.section	.text.unlikely.HAL_GetDeviceID
.LCOLDE12:
	.section	.text.HAL_GetDeviceID
.LHOTE12:
	.section	.rodata.str1.1
.LC13:
	.string	"AosAwssFwVersion"
	.section	.text.unlikely.HAL_GetFirmwareVesion,"ax",@progbits
.LCOLDB14:
	.section	.text.HAL_GetFirmwareVesion,"ax",@progbits
.LHOTB14:
	.globl	HAL_GetFirmwareVesion
	.type	HAL_GetFirmwareVesion, @function
HAL_GetFirmwareVesion:
.LFB8:
	.loc 1 123 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 125 0
	movl	$17, %ecx
	.loc 1 127 0
	movl	$17, %eax
	.loc 1 123 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 125 0
	movl	8(%ebp), %edi
	movl	$.LC13, %esi
	rep movsb
	.loc 1 127 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	HAL_GetFirmwareVesion, .-HAL_GetFirmwareVesion
	.section	.text.unlikely.HAL_GetFirmwareVesion
.LCOLDE14:
	.section	.text.HAL_GetFirmwareVesion
.LHOTE14:
	.section	.rodata.str1.1
.LC15:
	.string	"AosAwssChiID"
	.section	.text.unlikely.HAL_GetChipID,"ax",@progbits
.LCOLDB16:
	.section	.text.HAL_GetChipID,"ax",@progbits
.LHOTB16:
	.globl	HAL_GetChipID
	.type	HAL_GetChipID, @function
HAL_GetChipID:
.LFB9:
	.loc 1 137 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 139 0
	movl	$13, %ecx
	.loc 1 141 0
	xorl	%eax, %eax
	.loc 1 137 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 139 0
	movl	8(%ebp), %edi
	movl	$.LC15, %esi
	rep movsb
	.loc 1 141 0
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
	.size	HAL_GetChipID, .-HAL_GetChipID
	.section	.text.unlikely.HAL_GetChipID
.LCOLDE16:
	.section	.text.HAL_GetChipID
.LHOTE16:
	.text
.Letext0:
	.section	.text.unlikely.HAL_GetPartnerID
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x253
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF29
	.byte	0xc
	.long	.LASF30
	.long	.LASF31
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
	.long	0x72
	.uleb128 0x5
	.long	.LASF12
	.byte	0x1
	.byte	0x1e
	.long	0x5d
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xba
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x1e
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x20
	.long	0x5d
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	.LASF13
	.byte	0x1
	.byte	0x2c
	.long	0x5d
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0xee
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0x2c
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x2e
	.long	0x5d
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.byte	0x39
	.long	0x5d
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x122
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x39
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x3b
	.long	0x5d
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	.LASF18
	.byte	0x1
	.byte	0x46
	.long	0x5d
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x156
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x46
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x48
	.long	0x5d
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	.LASF20
	.byte	0x1
	.byte	0x53
	.long	0x5d
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.byte	0x53
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x55
	.long	0x5d
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1
	.byte	0x60
	.long	0x5d
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x1be
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x60
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x62
	.long	0x5d
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x1
	.byte	0x6d
	.long	0x5d
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f2
	.uleb128 0x6
	.long	.LASF25
	.byte	0x1
	.byte	0x6d
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x6f
	.long	0x5d
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x1
	.byte	0x7a
	.long	0x5d
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x226
	.uleb128 0x6
	.long	.LASF27
	.byte	0x1
	.byte	0x7a
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x7c
	.long	0x5d
	.byte	0x11
	.byte	0
	.uleb128 0x8
	.long	.LASF32
	.byte	0x1
	.byte	0x88
	.long	0x80
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.long	.LASF28
	.byte	0x1
	.byte	0x88
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.string	"len"
	.byte	0x1
	.byte	0x8a
	.long	0x5d
	.byte	0xd
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.long	0x5c
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
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
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
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"HAL_GetProductSecret"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"HAL_GetDeviceSecret"
.LASF24:
	.string	"HAL_GetDeviceID"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF29:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF19:
	.string	"device_name"
.LASF16:
	.string	"HAL_GetProductKey"
.LASF15:
	.string	"mid_str"
.LASF17:
	.string	"product_key"
.LASF30:
	.string	"src/HAL_PRODUCT_rhino.c"
.LASF21:
	.string	"device_secret"
.LASF18:
	.string	"HAL_GetDeviceName"
.LASF27:
	.string	"version"
.LASF8:
	.string	"unsigned int"
.LASF13:
	.string	"HAL_GetModuleID"
.LASF7:
	.string	"long long unsigned int"
.LASF28:
	.string	"cid_str"
.LASF25:
	.string	"device_id"
.LASF11:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF14:
	.string	"pid_str"
.LASF10:
	.string	"char"
.LASF12:
	.string	"HAL_GetPartnerID"
.LASF31:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF26:
	.string	"HAL_GetFirmwareVesion"
.LASF0:
	.string	"signed char"
.LASF32:
	.string	"HAL_GetChipID"
.LASF23:
	.string	"product_secret"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
