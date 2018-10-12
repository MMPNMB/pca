	.file	"nrf_drv_common.c"
	.text
.Ltext0:
	.section	.text.unlikely.nrf_drv_common_clock_irq_disable,"ax",@progbits
.LCOLDB0:
	.section	.text.nrf_drv_common_clock_irq_disable,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.nrf_drv_common_clock_irq_disable
.Ltext_cold0:
	.section	.text.nrf_drv_common_clock_irq_disable
	.globl	nrf_drv_common_clock_irq_disable
	.type	nrf_drv_common_clock_irq_disable, @function
nrf_drv_common_clock_irq_disable:
.LFB148:
	.file 1 "src/nrf_drv_common.c"
	.loc 1 3349 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB8:
.LBB9:
.LBB10:
	.loc 1 951 0
	movl	$1, -536813184
.LVL1:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 3349 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3353 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE148:
	.size	nrf_drv_common_clock_irq_disable, .-nrf_drv_common_clock_irq_disable
	.section	.text.unlikely.nrf_drv_common_clock_irq_disable
.LCOLDE0:
	.section	.text.nrf_drv_common_clock_irq_disable
.LHOTE0:
	.section	.text.unlikely.nrf_drv_common_irq_enable,"ax",@progbits
.LCOLDB1:
	.section	.text.nrf_drv_common_irq_enable,"ax",@progbits
.LHOTB1:
	.globl	nrf_drv_common_irq_enable
	.type	nrf_drv_common_irq_enable, @function
nrf_drv_common_irq_enable:
.LFB149:
	.loc 1 3355 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL3:
	.loc 1 3355 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %eax
.LVL4:
.LBB17:
.LBB18:
	.loc 1 971 0
	testl	%ecx, %ecx
	jns	.L4
	.loc 1 973 0
	movl	%ecx, %edx
	sall	$5, %eax
.LVL5:
	andl	$15, %edx
	movb	%al, -536810220(%edx)
.LVL6:
	jmp	.L5
.LVL7:
.L4:
	.loc 1 977 0
	sall	$5, %eax
.LVL8:
	movb	%al, -536812544(%ecx)
.LVL9:
.L5:
.LBE18:
.LBE17:
.LBB19:
.LBB20:
	.loc 1 963 0
	movl	$1, %eax
	sall	%cl, %eax
	shrl	$5, %ecx
.LVL10:
	leal	-536813312(,%ecx,4), %edx
	movl	%eax, 384(%edx)
.LVL11:
.LBE20:
.LBE19:
.LBB21:
.LBB22:
	.loc 1 947 0
	movl	%eax, -536813312(,%ecx,4)
.LBE22:
.LBE21:
	.loc 1 3360 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE149:
	.size	nrf_drv_common_irq_enable, .-nrf_drv_common_irq_enable
	.section	.text.unlikely.nrf_drv_common_irq_enable
.LCOLDE1:
	.section	.text.nrf_drv_common_irq_enable
.LHOTE1:
	.text
.Letext0:
	.section	.text.unlikely.nrf_drv_common_clock_irq_disable
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x69f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF114
	.byte	0xc
	.long	.LASF115
	.long	.LASF116
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
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x9
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0xb
	.long	0x6c
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0xc
	.long	0x7e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x1
	.byte	0xd
	.long	0x90
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.byte	0x1b
	.long	0x48
	.uleb128 0x4
	.long	.LASF15
	.byte	0x1
	.byte	0x1d
	.long	0x61
	.uleb128 0x4
	.long	.LASF16
	.byte	0x1
	.byte	0x1e
	.long	0x73
	.uleb128 0x4
	.long	.LASF17
	.byte	0x1
	.byte	0x1f
	.long	0x85
	.uleb128 0x5
	.byte	0x4
	.long	0x25
	.byte	0x1
	.byte	0x36
	.long	0x215
	.uleb128 0x6
	.long	.LASF18
	.sleb128 -15
	.uleb128 0x6
	.long	.LASF19
	.sleb128 -14
	.uleb128 0x6
	.long	.LASF20
	.sleb128 -13
	.uleb128 0x6
	.long	.LASF21
	.sleb128 -12
	.uleb128 0x6
	.long	.LASF22
	.sleb128 -11
	.uleb128 0x6
	.long	.LASF23
	.sleb128 -10
	.uleb128 0x6
	.long	.LASF24
	.sleb128 -5
	.uleb128 0x6
	.long	.LASF25
	.sleb128 -4
	.uleb128 0x6
	.long	.LASF26
	.sleb128 -2
	.uleb128 0x6
	.long	.LASF27
	.sleb128 -1
	.uleb128 0x7
	.long	.LASF28
	.byte	0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x1
	.uleb128 0x7
	.long	.LASF30
	.byte	0x2
	.uleb128 0x7
	.long	.LASF31
	.byte	0x3
	.uleb128 0x7
	.long	.LASF32
	.byte	0x4
	.uleb128 0x7
	.long	.LASF33
	.byte	0x5
	.uleb128 0x7
	.long	.LASF34
	.byte	0x6
	.uleb128 0x7
	.long	.LASF35
	.byte	0x7
	.uleb128 0x7
	.long	.LASF36
	.byte	0x8
	.uleb128 0x7
	.long	.LASF37
	.byte	0x9
	.uleb128 0x7
	.long	.LASF38
	.byte	0xa
	.uleb128 0x7
	.long	.LASF39
	.byte	0xb
	.uleb128 0x7
	.long	.LASF40
	.byte	0xc
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd
	.uleb128 0x7
	.long	.LASF42
	.byte	0xe
	.uleb128 0x7
	.long	.LASF43
	.byte	0xf
	.uleb128 0x7
	.long	.LASF44
	.byte	0x10
	.uleb128 0x7
	.long	.LASF45
	.byte	0x11
	.uleb128 0x7
	.long	.LASF46
	.byte	0x12
	.uleb128 0x7
	.long	.LASF47
	.byte	0x13
	.uleb128 0x7
	.long	.LASF48
	.byte	0x14
	.uleb128 0x7
	.long	.LASF49
	.byte	0x15
	.uleb128 0x7
	.long	.LASF50
	.byte	0x16
	.uleb128 0x7
	.long	.LASF51
	.byte	0x17
	.uleb128 0x7
	.long	.LASF52
	.byte	0x18
	.uleb128 0x7
	.long	.LASF53
	.byte	0x19
	.uleb128 0x7
	.long	.LASF54
	.byte	0x1a
	.uleb128 0x7
	.long	.LASF55
	.byte	0x1b
	.uleb128 0x7
	.long	.LASF56
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF57
	.byte	0x1d
	.uleb128 0x7
	.long	.LASF58
	.byte	0x20
	.uleb128 0x7
	.long	.LASF59
	.byte	0x21
	.uleb128 0x7
	.long	.LASF60
	.byte	0x22
	.uleb128 0x7
	.long	.LASF61
	.byte	0x23
	.uleb128 0x7
	.long	.LASF62
	.byte	0x24
	.uleb128 0x7
	.long	.LASF63
	.byte	0x25
	.uleb128 0x7
	.long	.LASF64
	.byte	0x26
	.uleb128 0x7
	.long	.LASF65
	.byte	0x27
	.uleb128 0x7
	.long	.LASF66
	.byte	0x28
	.uleb128 0x7
	.long	.LASF67
	.byte	0x29
	.uleb128 0x7
	.long	.LASF68
	.byte	0x2a
	.uleb128 0x7
	.long	.LASF69
	.byte	0x2d
	.uleb128 0x7
	.long	.LASF70
	.byte	0x2f
	.byte	0
	.uleb128 0x4
	.long	.LASF71
	.byte	0x1
	.byte	0x6c
	.long	0xca
	.uleb128 0x8
	.value	0xe04
	.byte	0x1
	.value	0x2f7
	.long	0x2dc
	.uleb128 0x9
	.long	.LASF72
	.byte	0x1
	.value	0x2f9
	.long	0x2f8
	.byte	0
	.uleb128 0x9
	.long	.LASF73
	.byte	0x1
	.value	0x2fa
	.long	0x2fd
	.byte	0x20
	.uleb128 0x9
	.long	.LASF74
	.byte	0x1
	.value	0x2fb
	.long	0x30d
	.byte	0x80
	.uleb128 0x9
	.long	.LASF75
	.byte	0x1
	.value	0x2fc
	.long	0x2fd
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF76
	.byte	0x1
	.value	0x2fd
	.long	0x312
	.value	0x100
	.uleb128 0xa
	.long	.LASF77
	.byte	0x1
	.value	0x2fe
	.long	0x2fd
	.value	0x120
	.uleb128 0xa
	.long	.LASF78
	.byte	0x1
	.value	0x2ff
	.long	0x317
	.value	0x180
	.uleb128 0xa
	.long	.LASF79
	.byte	0x1
	.value	0x300
	.long	0x2fd
	.value	0x1a0
	.uleb128 0xa
	.long	.LASF80
	.byte	0x1
	.value	0x301
	.long	0x31c
	.value	0x200
	.uleb128 0xa
	.long	.LASF81
	.byte	0x1
	.value	0x302
	.long	0x321
	.value	0x220
	.uleb128 0xb
	.string	"IP"
	.byte	0x1
	.value	0x303
	.long	0x346
	.value	0x300
	.uleb128 0xa
	.long	.LASF82
	.byte	0x1
	.value	0x304
	.long	0x34b
	.value	0x3f0
	.uleb128 0xa
	.long	.LASF83
	.byte	0x1
	.value	0x305
	.long	0x2f3
	.value	0xe00
	.byte	0
	.uleb128 0xc
	.long	0x2f3
	.long	0x2ec
	.uleb128 0xd
	.long	0x2ec
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF84
	.uleb128 0xe
	.long	0xbf
	.uleb128 0xe
	.long	0x2dc
	.uleb128 0xc
	.long	0xbf
	.long	0x30d
	.uleb128 0xd
	.long	0x2ec
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.long	0x2dc
	.uleb128 0xe
	.long	0x2dc
	.uleb128 0xe
	.long	0x2dc
	.uleb128 0xe
	.long	0x2dc
	.uleb128 0xc
	.long	0xbf
	.long	0x331
	.uleb128 0xd
	.long	0x2ec
	.byte	0x37
	.byte	0
	.uleb128 0xc
	.long	0x341
	.long	0x341
	.uleb128 0xd
	.long	0x2ec
	.byte	0xef
	.byte	0
	.uleb128 0xe
	.long	0x9e
	.uleb128 0xe
	.long	0x331
	.uleb128 0xc
	.long	0xbf
	.long	0x35c
	.uleb128 0xf
	.long	0x2ec
	.value	0x283
	.byte	0
	.uleb128 0x10
	.long	.LASF85
	.byte	0x1
	.value	0x306
	.long	0x220
	.uleb128 0x11
	.byte	0x8c
	.byte	0x1
	.value	0x307
	.long	0x483
	.uleb128 0x9
	.long	.LASF86
	.byte	0x1
	.value	0x309
	.long	0x483
	.byte	0
	.uleb128 0x9
	.long	.LASF87
	.byte	0x1
	.value	0x30a
	.long	0x2f3
	.byte	0x4
	.uleb128 0x9
	.long	.LASF88
	.byte	0x1
	.value	0x30b
	.long	0x2f3
	.byte	0x8
	.uleb128 0x9
	.long	.LASF89
	.byte	0x1
	.value	0x30c
	.long	0x2f3
	.byte	0xc
	.uleb128 0x12
	.string	"SCR"
	.byte	0x1
	.value	0x30d
	.long	0x2f3
	.byte	0x10
	.uleb128 0x12
	.string	"CCR"
	.byte	0x1
	.value	0x30e
	.long	0x2f3
	.byte	0x14
	.uleb128 0x12
	.string	"SHP"
	.byte	0x1
	.value	0x30f
	.long	0x498
	.byte	0x18
	.uleb128 0x9
	.long	.LASF90
	.byte	0x1
	.value	0x310
	.long	0x2f3
	.byte	0x24
	.uleb128 0x9
	.long	.LASF91
	.byte	0x1
	.value	0x311
	.long	0x2f3
	.byte	0x28
	.uleb128 0x9
	.long	.LASF92
	.byte	0x1
	.value	0x312
	.long	0x2f3
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF93
	.byte	0x1
	.value	0x313
	.long	0x2f3
	.byte	0x30
	.uleb128 0x9
	.long	.LASF94
	.byte	0x1
	.value	0x314
	.long	0x2f3
	.byte	0x34
	.uleb128 0x9
	.long	.LASF95
	.byte	0x1
	.value	0x315
	.long	0x2f3
	.byte	0x38
	.uleb128 0x9
	.long	.LASF96
	.byte	0x1
	.value	0x316
	.long	0x2f3
	.byte	0x3c
	.uleb128 0x12
	.string	"PFR"
	.byte	0x1
	.value	0x317
	.long	0x4b2
	.byte	0x40
	.uleb128 0x12
	.string	"DFR"
	.byte	0x1
	.value	0x318
	.long	0x483
	.byte	0x48
	.uleb128 0x12
	.string	"ADR"
	.byte	0x1
	.value	0x319
	.long	0x483
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF97
	.byte	0x1
	.value	0x31a
	.long	0x4cc
	.byte	0x50
	.uleb128 0x9
	.long	.LASF98
	.byte	0x1
	.value	0x31b
	.long	0x4e6
	.byte	0x60
	.uleb128 0x9
	.long	.LASF73
	.byte	0x1
	.value	0x31c
	.long	0x4eb
	.byte	0x74
	.uleb128 0x9
	.long	.LASF99
	.byte	0x1
	.value	0x31d
	.long	0x2f3
	.byte	0x88
	.byte	0
	.uleb128 0x13
	.long	0x2f3
	.uleb128 0xc
	.long	0x341
	.long	0x498
	.uleb128 0xd
	.long	0x2ec
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.long	0x488
	.uleb128 0xc
	.long	0x483
	.long	0x4ad
	.uleb128 0xd
	.long	0x2ec
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	0x49d
	.uleb128 0x13
	.long	0x4ad
	.uleb128 0xc
	.long	0x483
	.long	0x4c7
	.uleb128 0xd
	.long	0x2ec
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	0x4b7
	.uleb128 0x13
	.long	0x4c7
	.uleb128 0xc
	.long	0x483
	.long	0x4e1
	.uleb128 0xd
	.long	0x2ec
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	0x4d1
	.uleb128 0x13
	.long	0x4e1
	.uleb128 0xc
	.long	0xbf
	.long	0x4fb
	.uleb128 0xd
	.long	0x2ec
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF100
	.byte	0x1
	.value	0x31e
	.long	0x368
	.uleb128 0xe
	.long	0xb4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF101
	.uleb128 0x14
	.long	.LASF102
	.byte	0x1
	.value	0xce1
	.byte	0x3
	.long	0x52d
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0xce1
	.long	0x215
	.byte	0
	.uleb128 0x14
	.long	.LASF103
	.byte	0x1
	.value	0x3b5
	.byte	0x3
	.long	0x547
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x3b5
	.long	0x215
	.byte	0
	.uleb128 0x16
	.long	.LASF109
	.byte	0x1
	.value	0xd14
	.long	.LFB148
	.long	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x592
	.uleb128 0x17
	.long	0x513
	.long	.LBB8
	.long	.LBE8-.LBB8
	.byte	0x1
	.value	0xd17
	.uleb128 0x18
	.long	0x520
	.long	.LLST0
	.uleb128 0x17
	.long	0x52d
	.long	.LBB9
	.long	.LBE9-.LBB9
	.byte	0x1
	.value	0xce3
	.uleb128 0x18
	.long	0x53a
	.long	.LLST0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF105
	.byte	0x1
	.value	0x3b1
	.byte	0x3
	.long	0x5ac
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x3b1
	.long	0x215
	.byte	0
	.uleb128 0x14
	.long	.LASF106
	.byte	0x1
	.value	0x3c1
	.byte	0x3
	.long	0x5c6
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x3c1
	.long	0x215
	.byte	0
	.uleb128 0x14
	.long	.LASF107
	.byte	0x1
	.value	0x3c9
	.byte	0x3
	.long	0x5ec
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x3c9
	.long	0x215
	.uleb128 0x15
	.long	.LASF108
	.byte	0x1
	.value	0x3c9
	.long	0xbf
	.byte	0
	.uleb128 0x16
	.long	.LASF110
	.byte	0x1
	.value	0xd1a
	.long	.LFB149
	.long	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x67e
	.uleb128 0x19
	.long	.LASF104
	.byte	0x1
	.value	0xd1a
	.long	0x215
	.long	.LLST2
	.uleb128 0x19
	.long	.LASF108
	.byte	0x1
	.value	0xd1a
	.long	0x9e
	.long	.LLST3
	.uleb128 0x1a
	.long	0x5c6
	.long	.LBB17
	.long	.LBE17-.LBB17
	.byte	0x1
	.value	0xd1d
	.long	0x649
	.uleb128 0x18
	.long	0x5df
	.long	.LLST4
	.uleb128 0x18
	.long	0x5d3
	.long	.LLST5
	.byte	0
	.uleb128 0x1a
	.long	0x5ac
	.long	.LBB19
	.long	.LBE19-.LBB19
	.byte	0x1
	.value	0xd1e
	.long	0x667
	.uleb128 0x18
	.long	0x5b9
	.long	.LLST6
	.byte	0
	.uleb128 0x17
	.long	0x592
	.long	.LBB21
	.long	.LBE21-.LBB21
	.byte	0x1
	.value	0xd1f
	.uleb128 0x1b
	.long	0x59f
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1
	.value	0x40f
	.long	0x507
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x1
	.value	0xac0
	.long	0xbf
	.uleb128 0x1c
	.long	.LASF113
	.byte	0x1
	.value	0xac1
	.long	0xbf
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
	.uleb128 0x5
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL6
	.long	.LVL10
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL7
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.value	0x8
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL8
	.long	.LVL9
	.value	0x8
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL3
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL6
	.long	.LVL9
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB148
	.long	.LFE148-.LFB148
	.long	.LFB149
	.long	.LFE149-.LFB149
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB148
	.long	.LFE148
	.long	.LFB149
	.long	.LFE149
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"uint32_t"
.LASF80:
	.string	"IABR"
.LASF50:
	.string	"SWI2_EGU2_IRQn"
.LASF27:
	.string	"SysTick_IRQn"
.LASF54:
	.string	"TIMER3_IRQn"
.LASF33:
	.string	"NFCT_IRQn"
.LASF108:
	.string	"priority"
.LASF109:
	.string	"nrf_drv_common_clock_irq_disable"
.LASF94:
	.string	"MMFAR"
.LASF5:
	.string	"short int"
.LASF84:
	.string	"sizetype"
.LASF61:
	.string	"SPIM2_SPIS2_SPI2_IRQn"
.LASF63:
	.string	"I2S_IRQn"
.LASF36:
	.string	"TIMER0_IRQn"
.LASF25:
	.string	"DebugMonitor_IRQn"
.LASF20:
	.string	"HardFault_IRQn"
.LASF104:
	.string	"IRQn"
.LASF7:
	.string	"__uint16_t"
.LASF86:
	.string	"CPUID"
.LASF53:
	.string	"SWI5_EGU5_IRQn"
.LASF107:
	.string	"NVIC_SetPriority"
.LASF81:
	.string	"RESERVED4"
.LASF14:
	.string	"uint8_t"
.LASF102:
	.string	"nrf_drv_common_irq_disable"
.LASF100:
	.string	"SCB_Type"
.LASF29:
	.string	"RADIO_IRQn"
.LASF45:
	.string	"RTC1_IRQn"
.LASF32:
	.string	"SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn"
.LASF70:
	.string	"SPIM3_IRQn"
.LASF23:
	.string	"UsageFault_IRQn"
.LASF39:
	.string	"RTC0_IRQn"
.LASF38:
	.string	"TIMER2_IRQn"
.LASF52:
	.string	"SWI4_EGU4_IRQn"
.LASF56:
	.string	"PWM0_IRQn"
.LASF2:
	.string	"long double"
.LASF87:
	.string	"ICSR"
.LASF75:
	.string	"RSERVED1"
.LASF1:
	.string	"long long int"
.LASF57:
	.string	"PDM_IRQn"
.LASF95:
	.string	"BFAR"
.LASF64:
	.string	"FPU_IRQn"
.LASF10:
	.string	"long int"
.LASF18:
	.string	"Reset_IRQn"
.LASF40:
	.string	"TEMP_IRQn"
.LASF49:
	.string	"SWI1_EGU1_IRQn"
.LASF112:
	.string	"__StackTop"
.LASF6:
	.string	"__uint8_t"
.LASF91:
	.string	"CFSR"
.LASF105:
	.string	"NVIC_EnableIRQ"
.LASF4:
	.string	"unsigned char"
.LASF89:
	.string	"AIRCR"
.LASF35:
	.string	"SAADC_IRQn"
.LASF115:
	.string	"src/nrf_drv_common.c"
.LASF98:
	.string	"ISAR"
.LASF71:
	.string	"IRQn_Type"
.LASF85:
	.string	"NVIC_Type"
.LASF78:
	.string	"ICPR"
.LASF3:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF90:
	.string	"SHCSR"
.LASF37:
	.string	"TIMER1_IRQn"
.LASF15:
	.string	"uint16_t"
.LASF58:
	.string	"MWU_IRQn"
.LASF22:
	.string	"BusFault_IRQn"
.LASF26:
	.string	"PendSV_IRQn"
.LASF74:
	.string	"ICER"
.LASF24:
	.string	"SVCall_IRQn"
.LASF30:
	.string	"UARTE0_UART0_IRQn"
.LASF42:
	.string	"ECB_IRQn"
.LASF34:
	.string	"GPIOTE_IRQn"
.LASF8:
	.string	"short unsigned int"
.LASF69:
	.string	"PWM3_IRQn"
.LASF103:
	.string	"NVIC_DisableIRQ"
.LASF101:
	.string	"char"
.LASF88:
	.string	"VTOR"
.LASF16:
	.string	"int32_t"
.LASF60:
	.string	"PWM2_IRQn"
.LASF76:
	.string	"ISPR"
.LASF68:
	.string	"CRYPTOCELL_IRQn"
.LASF93:
	.string	"DFSR"
.LASF47:
	.string	"COMP_LPCOMP_IRQn"
.LASF44:
	.string	"WDT_IRQn"
.LASF83:
	.string	"STIR"
.LASF92:
	.string	"HFSR"
.LASF72:
	.string	"ISER"
.LASF48:
	.string	"SWI0_EGU0_IRQn"
.LASF97:
	.string	"MMFR"
.LASF73:
	.string	"RESERVED0"
.LASF31:
	.string	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn"
.LASF77:
	.string	"RESERVED2"
.LASF79:
	.string	"RESERVED3"
.LASF62:
	.string	"RTC2_IRQn"
.LASF82:
	.string	"RESERVED5"
.LASF12:
	.string	"long unsigned int"
.LASF110:
	.string	"nrf_drv_common_irq_enable"
.LASF67:
	.string	"QSPI_IRQn"
.LASF21:
	.string	"MemoryManagement_IRQn"
.LASF28:
	.string	"POWER_CLOCK_IRQn"
.LASF66:
	.string	"UARTE1_IRQn"
.LASF55:
	.string	"TIMER4_IRQn"
.LASF46:
	.string	"QDEC_IRQn"
.LASF11:
	.string	"__uint32_t"
.LASF19:
	.string	"NonMaskableInt_IRQn"
.LASF43:
	.string	"CCM_AAR_IRQn"
.LASF9:
	.string	"__int32_t"
.LASF114:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF65:
	.string	"USBD_IRQn"
.LASF106:
	.string	"NVIC_ClearPendingIRQ"
.LASF96:
	.string	"AFSR"
.LASF116:
	.string	"/home/stone/Documents/pca"
.LASF51:
	.string	"SWI3_EGU3_IRQn"
.LASF113:
	.string	"__StackLimit"
.LASF111:
	.string	"ITM_RxBuffer"
.LASF0:
	.string	"unsigned int"
.LASF99:
	.string	"CPACR"
.LASF59:
	.string	"PWM1_IRQn"
.LASF41:
	.string	"RNG_IRQn"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
