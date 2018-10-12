	.file	"irq_manage.c"
	.text
.Ltext0:
	.section	.text.unlikely._arch_irq_enable,"ax",@progbits
.LCOLDB0:
	.section	.text._arch_irq_enable,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely._arch_irq_enable
.Ltext_cold0:
	.section	.text._arch_irq_enable
	.globl	_arch_irq_enable
	.type	_arch_irq_enable, @function
_arch_irq_enable:
.LFB125:
	.file 1 "src/irq_manage.c"
	.loc 1 2550 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB4:
.LBB5:
	.loc 1 976 0
	movl	$1, %eax
.LBE5:
.LBE4:
	.loc 1 2550 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2550 0
	movl	8(%ebp), %ecx
.LVL1:
.LBB7:
.LBB6:
	.loc 1 976 0
	movl	%ecx, %edx
	sall	%cl, %eax
	shrl	$5, %edx
	movl	%eax, -536813312(,%edx,4)
.LVL2:
.LBE6:
.LBE7:
	.loc 1 2552 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE125:
	.size	_arch_irq_enable, .-_arch_irq_enable
	.section	.text.unlikely._arch_irq_enable
.LCOLDE0:
	.section	.text._arch_irq_enable
.LHOTE0:
	.section	.text.unlikely._arch_irq_disable,"ax",@progbits
.LCOLDB1:
	.section	.text._arch_irq_disable,"ax",@progbits
.LHOTB1:
	.globl	_arch_irq_disable
	.type	_arch_irq_disable, @function
_arch_irq_disable:
.LFB126:
	.loc 1 2554 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB10:
.LBB11:
	.loc 1 980 0
	movl	$1, %edx
.LBE11:
.LBE10:
	.loc 1 2554 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2554 0
	movl	8(%ebp), %ecx
.LVL4:
.LBB13:
.LBB12:
	.loc 1 980 0
	movl	%ecx, %eax
	sall	%cl, %edx
	shrl	$5, %eax
	addl	$32, %eax
	movl	%edx, -536813312(,%eax,4)
.LVL5:
.LBE12:
.LBE13:
	.loc 1 2556 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE126:
	.size	_arch_irq_disable, .-_arch_irq_disable
	.section	.text.unlikely._arch_irq_disable
.LCOLDE1:
	.section	.text._arch_irq_disable
.LHOTE1:
	.section	.text.unlikely._arch_irq_is_enabled,"ax",@progbits
.LCOLDB2:
	.section	.text._arch_irq_is_enabled,"ax",@progbits
.LHOTB2:
	.globl	_arch_irq_is_enabled
	.type	_arch_irq_is_enabled, @function
_arch_irq_is_enabled:
.LFB127:
	.loc 1 2558 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2558 0
	movl	8(%ebp), %ecx
	.loc 1 2560 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 2559 0
	movl	%ecx, %eax
	shrl	$5, %eax
	movl	-536813312(,%eax,4), %edx
	movl	$1, %eax
	sall	%cl, %eax
	andl	%edx, %eax
	.loc 1 2560 0
	ret
	.cfi_endproc
.LFE127:
	.size	_arch_irq_is_enabled, .-_arch_irq_is_enabled
	.section	.text.unlikely._arch_irq_is_enabled
.LCOLDE2:
	.section	.text._arch_irq_is_enabled
.LHOTE2:
	.section	.text.unlikely._irq_priority_set,"ax",@progbits
.LCOLDB3:
	.section	.text._irq_priority_set,"ax",@progbits
.LHOTB3:
	.globl	_irq_priority_set
	.type	_irq_priority_set, @function
_irq_priority_set:
.LFB128:
	.loc 1 2562 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2562 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
.LVL8:
.LBB16:
.LBB17:
	.loc 1 1000 0
	testl	%eax, %eax
	jns	.L8
	.loc 1 1002 0
	andl	$15, %eax
	sall	$5, %edx
	movb	%dl, -536810220(%eax)
.LVL9:
	jmp	.L7
.LVL10:
.L8:
	.loc 1 1006 0
	sall	$5, %edx
.LVL11:
	movb	%dl, -536812544(%eax)
.LVL12:
.L7:
.LBE17:
.LBE16:
	.loc 1 2568 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE128:
	.size	_irq_priority_set, .-_irq_priority_set
	.section	.text.unlikely._irq_priority_set
.LCOLDE3:
	.section	.text._irq_priority_set
.LHOTE3:
	.section	.text.unlikely._irq_spurious,"ax",@progbits
.LCOLDB4:
	.section	.text._irq_spurious,"ax",@progbits
.LHOTB4:
	.globl	_irq_spurious
	.type	_irq_spurious, @function
_irq_spurious:
.LFB129:
	.loc 1 2570 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2573 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 2572 0
	jmp	__reserved
.LVL14:
	.cfi_endproc
.LFE129:
	.size	_irq_spurious, .-_irq_spurious
	.section	.text.unlikely._irq_spurious
.LCOLDE4:
	.section	.text._irq_spurious
.LHOTE4:
	.text
.Letext0:
	.section	.text.unlikely._arch_irq_enable
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6ae
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF111
	.byte	0xc
	.long	.LASF112
	.long	.LASF113
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x4
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x7
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x8
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x16
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x19
	.long	0x4c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x1a
	.long	0x5e
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x37
	.long	0x85
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x7e
	.byte	0x1
	.byte	0x53
	.long	0x205
	.uleb128 0x7
	.long	.LASF16
	.sleb128 -15
	.uleb128 0x7
	.long	.LASF17
	.sleb128 -14
	.uleb128 0x7
	.long	.LASF18
	.sleb128 -13
	.uleb128 0x7
	.long	.LASF19
	.sleb128 -12
	.uleb128 0x7
	.long	.LASF20
	.sleb128 -11
	.uleb128 0x7
	.long	.LASF21
	.sleb128 -10
	.uleb128 0x7
	.long	.LASF22
	.sleb128 -5
	.uleb128 0x7
	.long	.LASF23
	.sleb128 -4
	.uleb128 0x7
	.long	.LASF24
	.sleb128 -2
	.uleb128 0x7
	.long	.LASF25
	.sleb128 -1
	.uleb128 0x8
	.long	.LASF26
	.byte	0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.uleb128 0x8
	.long	.LASF28
	.byte	0x2
	.uleb128 0x8
	.long	.LASF29
	.byte	0x3
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.uleb128 0x8
	.long	.LASF31
	.byte	0x5
	.uleb128 0x8
	.long	.LASF32
	.byte	0x6
	.uleb128 0x8
	.long	.LASF33
	.byte	0x7
	.uleb128 0x8
	.long	.LASF34
	.byte	0x8
	.uleb128 0x8
	.long	.LASF35
	.byte	0x9
	.uleb128 0x8
	.long	.LASF36
	.byte	0xa
	.uleb128 0x8
	.long	.LASF37
	.byte	0xb
	.uleb128 0x8
	.long	.LASF38
	.byte	0xc
	.uleb128 0x8
	.long	.LASF39
	.byte	0xd
	.uleb128 0x8
	.long	.LASF40
	.byte	0xe
	.uleb128 0x8
	.long	.LASF41
	.byte	0xf
	.uleb128 0x8
	.long	.LASF42
	.byte	0x10
	.uleb128 0x8
	.long	.LASF43
	.byte	0x11
	.uleb128 0x8
	.long	.LASF44
	.byte	0x12
	.uleb128 0x8
	.long	.LASF45
	.byte	0x13
	.uleb128 0x8
	.long	.LASF46
	.byte	0x14
	.uleb128 0x8
	.long	.LASF47
	.byte	0x15
	.uleb128 0x8
	.long	.LASF48
	.byte	0x16
	.uleb128 0x8
	.long	.LASF49
	.byte	0x17
	.uleb128 0x8
	.long	.LASF50
	.byte	0x18
	.uleb128 0x8
	.long	.LASF51
	.byte	0x19
	.uleb128 0x8
	.long	.LASF52
	.byte	0x1a
	.uleb128 0x8
	.long	.LASF53
	.byte	0x1b
	.uleb128 0x8
	.long	.LASF54
	.byte	0x1c
	.uleb128 0x8
	.long	.LASF55
	.byte	0x1d
	.uleb128 0x8
	.long	.LASF56
	.byte	0x20
	.uleb128 0x8
	.long	.LASF57
	.byte	0x21
	.uleb128 0x8
	.long	.LASF58
	.byte	0x22
	.uleb128 0x8
	.long	.LASF59
	.byte	0x23
	.uleb128 0x8
	.long	.LASF60
	.byte	0x24
	.uleb128 0x8
	.long	.LASF61
	.byte	0x25
	.uleb128 0x8
	.long	.LASF62
	.byte	0x26
	.uleb128 0x8
	.long	.LASF63
	.byte	0x27
	.uleb128 0x8
	.long	.LASF64
	.byte	0x28
	.uleb128 0x8
	.long	.LASF65
	.byte	0x29
	.uleb128 0x8
	.long	.LASF66
	.byte	0x2a
	.uleb128 0x8
	.long	.LASF67
	.byte	0x2d
	.uleb128 0x8
	.long	.LASF68
	.byte	0x2f
	.byte	0
	.uleb128 0x3
	.long	.LASF69
	.byte	0x1
	.byte	0x89
	.long	0xba
	.uleb128 0x9
	.value	0xe04
	.byte	0x1
	.value	0x314
	.long	0x2cc
	.uleb128 0xa
	.long	.LASF70
	.byte	0x1
	.value	0x316
	.long	0x2e8
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0x1
	.value	0x317
	.long	0x2ed
	.byte	0x20
	.uleb128 0xa
	.long	.LASF72
	.byte	0x1
	.value	0x318
	.long	0x2fd
	.byte	0x80
	.uleb128 0xa
	.long	.LASF73
	.byte	0x1
	.value	0x319
	.long	0x2ed
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF74
	.byte	0x1
	.value	0x31a
	.long	0x302
	.value	0x100
	.uleb128 0xb
	.long	.LASF75
	.byte	0x1
	.value	0x31b
	.long	0x2ed
	.value	0x120
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1
	.value	0x31c
	.long	0x307
	.value	0x180
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.value	0x31d
	.long	0x2ed
	.value	0x1a0
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.value	0x31e
	.long	0x30c
	.value	0x200
	.uleb128 0xb
	.long	.LASF79
	.byte	0x1
	.value	0x31f
	.long	0x311
	.value	0x220
	.uleb128 0xc
	.string	"IP"
	.byte	0x1
	.value	0x320
	.long	0x336
	.value	0x300
	.uleb128 0xb
	.long	.LASF80
	.byte	0x1
	.value	0x321
	.long	0x33b
	.value	0x3f0
	.uleb128 0xb
	.long	.LASF81
	.byte	0x1
	.value	0x322
	.long	0x2e3
	.value	0xe00
	.byte	0
	.uleb128 0xd
	.long	0x2e3
	.long	0x2dc
	.uleb128 0xe
	.long	0x2dc
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF82
	.uleb128 0xf
	.long	0xa2
	.uleb128 0xf
	.long	0x2cc
	.uleb128 0xd
	.long	0xa2
	.long	0x2fd
	.uleb128 0xe
	.long	0x2dc
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.long	0x2cc
	.uleb128 0xf
	.long	0x2cc
	.uleb128 0xf
	.long	0x2cc
	.uleb128 0xf
	.long	0x2cc
	.uleb128 0xd
	.long	0xa2
	.long	0x321
	.uleb128 0xe
	.long	0x2dc
	.byte	0x37
	.byte	0
	.uleb128 0xd
	.long	0x331
	.long	0x331
	.uleb128 0xe
	.long	0x2dc
	.byte	0xef
	.byte	0
	.uleb128 0xf
	.long	0x8c
	.uleb128 0xf
	.long	0x321
	.uleb128 0xd
	.long	0xa2
	.long	0x34c
	.uleb128 0x10
	.long	0x2dc
	.value	0x283
	.byte	0
	.uleb128 0x11
	.long	.LASF83
	.byte	0x1
	.value	0x323
	.long	0x210
	.uleb128 0x12
	.byte	0x8c
	.byte	0x1
	.value	0x324
	.long	0x473
	.uleb128 0xa
	.long	.LASF84
	.byte	0x1
	.value	0x326
	.long	0x473
	.byte	0
	.uleb128 0xa
	.long	.LASF85
	.byte	0x1
	.value	0x327
	.long	0x2e3
	.byte	0x4
	.uleb128 0xa
	.long	.LASF86
	.byte	0x1
	.value	0x328
	.long	0x2e3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF87
	.byte	0x1
	.value	0x329
	.long	0x2e3
	.byte	0xc
	.uleb128 0x13
	.string	"SCR"
	.byte	0x1
	.value	0x32a
	.long	0x2e3
	.byte	0x10
	.uleb128 0x13
	.string	"CCR"
	.byte	0x1
	.value	0x32b
	.long	0x2e3
	.byte	0x14
	.uleb128 0x13
	.string	"SHP"
	.byte	0x1
	.value	0x32c
	.long	0x488
	.byte	0x18
	.uleb128 0xa
	.long	.LASF88
	.byte	0x1
	.value	0x32d
	.long	0x2e3
	.byte	0x24
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1
	.value	0x32e
	.long	0x2e3
	.byte	0x28
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.value	0x32f
	.long	0x2e3
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1
	.value	0x330
	.long	0x2e3
	.byte	0x30
	.uleb128 0xa
	.long	.LASF92
	.byte	0x1
	.value	0x331
	.long	0x2e3
	.byte	0x34
	.uleb128 0xa
	.long	.LASF93
	.byte	0x1
	.value	0x332
	.long	0x2e3
	.byte	0x38
	.uleb128 0xa
	.long	.LASF94
	.byte	0x1
	.value	0x333
	.long	0x2e3
	.byte	0x3c
	.uleb128 0x13
	.string	"PFR"
	.byte	0x1
	.value	0x334
	.long	0x4a2
	.byte	0x40
	.uleb128 0x13
	.string	"DFR"
	.byte	0x1
	.value	0x335
	.long	0x473
	.byte	0x48
	.uleb128 0x13
	.string	"ADR"
	.byte	0x1
	.value	0x336
	.long	0x473
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF95
	.byte	0x1
	.value	0x337
	.long	0x4bc
	.byte	0x50
	.uleb128 0xa
	.long	.LASF96
	.byte	0x1
	.value	0x338
	.long	0x4d6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF71
	.byte	0x1
	.value	0x339
	.long	0x4db
	.byte	0x74
	.uleb128 0xa
	.long	.LASF97
	.byte	0x1
	.value	0x33a
	.long	0x2e3
	.byte	0x88
	.byte	0
	.uleb128 0x14
	.long	0x2e3
	.uleb128 0xd
	.long	0x331
	.long	0x488
	.uleb128 0xe
	.long	0x2dc
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.long	0x478
	.uleb128 0xd
	.long	0x473
	.long	0x49d
	.uleb128 0xe
	.long	0x2dc
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	0x48d
	.uleb128 0x14
	.long	0x49d
	.uleb128 0xd
	.long	0x473
	.long	0x4b7
	.uleb128 0xe
	.long	0x2dc
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	0x4a7
	.uleb128 0x14
	.long	0x4b7
	.uleb128 0xd
	.long	0x473
	.long	0x4d1
	.uleb128 0xe
	.long	0x2dc
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	0x4c1
	.uleb128 0x14
	.long	0x4d1
	.uleb128 0xd
	.long	0xa2
	.long	0x4eb
	.uleb128 0xe
	.long	0x2dc
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.long	.LASF98
	.byte	0x1
	.value	0x33b
	.long	0x358
	.uleb128 0xf
	.long	0x97
	.uleb128 0x15
	.long	.LASF99
	.byte	0x1
	.value	0x3ce
	.byte	0x3
	.long	0x516
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x3ce
	.long	0x205
	.byte	0
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.value	0x9f5
	.long	.LFB125
	.long	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x556
	.uleb128 0x18
	.string	"irq"
	.byte	0x1
	.value	0x9f5
	.long	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	0x4fc
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x9f7
	.uleb128 0x1a
	.long	0x509
	.long	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF100
	.byte	0x1
	.value	0x3d2
	.byte	0x3
	.long	0x570
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x3d2
	.long	0x205
	.byte	0
	.uleb128 0x17
	.long	.LASF103
	.byte	0x1
	.value	0x9f9
	.long	.LFB126
	.long	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b0
	.uleb128 0x18
	.string	"irq"
	.byte	0x1
	.value	0x9f9
	.long	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	0x556
	.long	.LBB10
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x9fb
	.uleb128 0x1a
	.long	0x563
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF114
	.byte	0x1
	.value	0x9fd
	.long	0x7e
	.long	.LFB127
	.long	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x5da
	.uleb128 0x18
	.string	"irq"
	.byte	0x1
	.value	0x9fd
	.long	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF104
	.byte	0x1
	.value	0x3e6
	.byte	0x3
	.long	0x600
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x3e6
	.long	0x205
	.uleb128 0x16
	.long	.LASF105
	.byte	0x1
	.value	0x3e6
	.long	0xa2
	.byte	0
	.uleb128 0x17
	.long	.LASF106
	.byte	0x1
	.value	0xa01
	.long	.LFB128
	.long	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x66a
	.uleb128 0x1c
	.string	"irq"
	.byte	0x1
	.value	0xa01
	.long	0x85
	.long	.LLST2
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.value	0xa01
	.long	0x85
	.long	.LLST3
	.uleb128 0x1d
	.long	.LASF108
	.byte	0x1
	.value	0xa01
	.long	0xad
	.long	.LLST4
	.uleb128 0x1e
	.long	0x5da
	.long	.LBB16
	.long	.LBE16-.LBB16
	.byte	0x1
	.value	0xa07
	.uleb128 0x1a
	.long	0x5f3
	.long	.LLST5
	.uleb128 0x1a
	.long	0x5e7
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF109
	.byte	0x1
	.value	0xa09
	.long	.LFB129
	.long	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x699
	.uleb128 0x1f
	.long	.LASF110
	.byte	0x1
	.value	0xa09
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL14
	.long	0x6a5
	.byte	0
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.value	0x42c
	.long	0x4f7
	.uleb128 0x22
	.long	.LASF116
	.long	.LASF116
	.byte	0x1
	.value	0x9f4
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL10
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x52
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL10
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x52
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL10
	.long	.LVL12
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
	.long	.LFB125
	.long	.LFE125-.LFB125
	.long	.LFB126
	.long	.LFE126-.LFB126
	.long	.LFB127
	.long	.LFE127-.LFB127
	.long	.LFB128
	.long	.LFE128-.LFB128
	.long	.LFB129
	.long	.LFE129-.LFB129
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB4
	.long	.LBE4
	.long	.LBB7
	.long	.LBE7
	.long	0
	.long	0
	.long	.LBB10
	.long	.LBE10
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LFB125
	.long	.LFE125
	.long	.LFB126
	.long	.LFE126
	.long	.LFB127
	.long	.LFE127
	.long	.LFB128
	.long	.LFE128
	.long	.LFB129
	.long	.LFE129
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF112:
	.string	"src/irq_manage.c"
.LASF76:
	.string	"ICPR"
.LASF66:
	.string	"CRYPTOCELL_IRQn"
.LASF56:
	.string	"MWU_IRQn"
.LASF16:
	.string	"Reset_IRQn"
.LASF4:
	.string	"__uint8_t"
.LASF45:
	.string	"COMP_LPCOMP_IRQn"
.LASF64:
	.string	"UARTE1_IRQn"
.LASF10:
	.string	"long long unsigned int"
.LASF60:
	.string	"RTC2_IRQn"
.LASF44:
	.string	"QDEC_IRQn"
.LASF34:
	.string	"TIMER0_IRQn"
.LASF50:
	.string	"SWI4_EGU4_IRQn"
.LASF84:
	.string	"CPUID"
.LASF28:
	.string	"UARTE0_UART0_IRQn"
.LASF30:
	.string	"SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn"
.LASF74:
	.string	"ISPR"
.LASF96:
	.string	"ISAR"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF55:
	.string	"PDM_IRQn"
.LASF65:
	.string	"QSPI_IRQn"
.LASF68:
	.string	"SPIM3_IRQn"
.LASF53:
	.string	"TIMER4_IRQn"
.LASF6:
	.string	"long int"
.LASF57:
	.string	"PWM1_IRQn"
.LASF27:
	.string	"RADIO_IRQn"
.LASF46:
	.string	"SWI0_EGU0_IRQn"
.LASF109:
	.string	"_irq_spurious"
.LASF93:
	.string	"BFAR"
.LASF113:
	.string	"/home/stone/Documents/pca"
.LASF18:
	.string	"HardFault_IRQn"
.LASF106:
	.string	"_irq_priority_set"
.LASF94:
	.string	"AFSR"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"BusFault_IRQn"
.LASF98:
	.string	"SCB_Type"
.LASF11:
	.string	"unsigned int"
.LASF63:
	.string	"USBD_IRQn"
.LASF19:
	.string	"MemoryManagement_IRQn"
.LASF8:
	.string	"long unsigned int"
.LASF15:
	.string	"u32_t"
.LASF86:
	.string	"VTOR"
.LASF22:
	.string	"SVCall_IRQn"
.LASF85:
	.string	"ICSR"
.LASF87:
	.string	"AIRCR"
.LASF91:
	.string	"DFSR"
.LASF102:
	.string	"_arch_irq_enable"
.LASF92:
	.string	"MMFAR"
.LASF40:
	.string	"ECB_IRQn"
.LASF105:
	.string	"priority"
.LASF95:
	.string	"MMFR"
.LASF2:
	.string	"short int"
.LASF38:
	.string	"TEMP_IRQn"
.LASF25:
	.string	"SysTick_IRQn"
.LASF21:
	.string	"UsageFault_IRQn"
.LASF32:
	.string	"GPIOTE_IRQn"
.LASF101:
	.string	"IRQn"
.LASF110:
	.string	"unused"
.LASF82:
	.string	"sizetype"
.LASF47:
	.string	"SWI1_EGU1_IRQn"
.LASF89:
	.string	"CFSR"
.LASF35:
	.string	"TIMER1_IRQn"
.LASF78:
	.string	"IABR"
.LASF49:
	.string	"SWI3_EGU3_IRQn"
.LASF103:
	.string	"_arch_irq_disable"
.LASF72:
	.string	"ICER"
.LASF107:
	.string	"prio"
.LASF33:
	.string	"SAADC_IRQn"
.LASF31:
	.string	"NFCT_IRQn"
.LASF71:
	.string	"RESERVED0"
.LASF75:
	.string	"RESERVED2"
.LASF77:
	.string	"RESERVED3"
.LASF79:
	.string	"RESERVED4"
.LASF80:
	.string	"RESERVED5"
.LASF13:
	.string	"int32_t"
.LASF36:
	.string	"TIMER2_IRQn"
.LASF26:
	.string	"POWER_CLOCK_IRQn"
.LASF88:
	.string	"SHCSR"
.LASF115:
	.string	"ITM_RxBuffer"
.LASF39:
	.string	"RNG_IRQn"
.LASF70:
	.string	"ISER"
.LASF83:
	.string	"NVIC_Type"
.LASF48:
	.string	"SWI2_EGU2_IRQn"
.LASF99:
	.string	"NVIC_EnableIRQ"
.LASF41:
	.string	"CCM_AAR_IRQn"
.LASF69:
	.string	"IRQn_Type"
.LASF111:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF14:
	.string	"uint32_t"
.LASF24:
	.string	"PendSV_IRQn"
.LASF61:
	.string	"I2S_IRQn"
.LASF58:
	.string	"PWM2_IRQn"
.LASF59:
	.string	"SPIM2_SPIS2_SPI2_IRQn"
.LASF67:
	.string	"PWM3_IRQn"
.LASF52:
	.string	"TIMER3_IRQn"
.LASF17:
	.string	"NonMaskableInt_IRQn"
.LASF5:
	.string	"__int32_t"
.LASF42:
	.string	"WDT_IRQn"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF100:
	.string	"NVIC_DisableIRQ"
.LASF23:
	.string	"DebugMonitor_IRQn"
.LASF114:
	.string	"_arch_irq_is_enabled"
.LASF37:
	.string	"RTC0_IRQn"
.LASF29:
	.string	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn"
.LASF12:
	.string	"uint8_t"
.LASF108:
	.string	"flags"
.LASF73:
	.string	"RSERVED1"
.LASF81:
	.string	"STIR"
.LASF116:
	.string	"__reserved"
.LASF54:
	.string	"PWM0_IRQn"
.LASF62:
	.string	"FPU_IRQn"
.LASF97:
	.string	"CPACR"
.LASF90:
	.string	"HFSR"
.LASF43:
	.string	"RTC1_IRQn"
.LASF51:
	.string	"SWI5_EGU5_IRQn"
.LASF104:
	.string	"NVIC_SetPriority"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
