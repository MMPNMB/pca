	.file	"app_util_platform.c"
	.text
.Ltext0:
	.section	.text.unlikely.app_util_disable_irq,"ax",@progbits
.LCOLDB0:
	.section	.text.app_util_disable_irq,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.app_util_disable_irq
.Ltext_cold0:
	.section	.text.app_util_disable_irq
	.globl	app_util_disable_irq
	.type	app_util_disable_irq, @function
app_util_disable_irq:
.LFB125:
	.file 1 "src/app_util_platform.c"
	.loc 1 3075 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB14:
.LBB15:
	.loc 1 113 0
#APP
# 113 "src/app_util_platform.c" 1
	cpsid i
# 0 "" 2
#NO_APP
.LBE15:
.LBE14:
	.loc 1 3077 0
	incl	m_in_critical_region
	.loc 1 3078 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE125:
	.size	app_util_disable_irq, .-app_util_disable_irq
	.section	.text.unlikely.app_util_disable_irq
.LCOLDE0:
	.section	.text.app_util_disable_irq
.LHOTE0:
	.section	.text.unlikely.app_util_enable_irq,"ax",@progbits
.LCOLDB1:
	.section	.text.app_util_enable_irq,"ax",@progbits
.LHOTB1:
	.globl	app_util_enable_irq
	.type	app_util_enable_irq, @function
app_util_enable_irq:
.LFB126:
	.loc 1 3080 0
	.cfi_startproc
	.loc 1 3082 0
	decl	m_in_critical_region
	.loc 1 3080 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3082 0
	jne	.L3
.LBB16:
.LBB17:
	.loc 1 109 0
#APP
# 109 "src/app_util_platform.c" 1
	cpsie i
# 0 "" 2
#NO_APP
.L3:
.LBE17:
.LBE16:
	.loc 1 3086 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE126:
	.size	app_util_enable_irq, .-app_util_enable_irq
	.section	.text.unlikely.app_util_enable_irq
.LCOLDE1:
	.section	.text.app_util_enable_irq
.LHOTE1:
	.section	.text.unlikely.app_util_critical_region_enter,"ax",@progbits
.LCOLDB2:
	.section	.text.app_util_critical_region_enter,"ax",@progbits
.LHOTB2:
	.globl	app_util_critical_region_enter
	.type	app_util_critical_region_enter, @function
app_util_critical_region_enter:
.LFB127:
	.loc 1 3088 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3091 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3090 0
	jmp	app_util_disable_irq
.LVL1:
	.cfi_endproc
.LFE127:
	.size	app_util_critical_region_enter, .-app_util_critical_region_enter
	.section	.text.unlikely.app_util_critical_region_enter
.LCOLDE2:
	.section	.text.app_util_critical_region_enter
.LHOTE2:
	.section	.text.unlikely.app_util_critical_region_exit,"ax",@progbits
.LCOLDB3:
	.section	.text.app_util_critical_region_exit,"ax",@progbits
.LHOTB3:
	.globl	app_util_critical_region_exit
	.type	app_util_critical_region_exit, @function
app_util_critical_region_exit:
.LFB128:
	.loc 1 3093 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3096 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3095 0
	jmp	app_util_enable_irq
.LVL3:
	.cfi_endproc
.LFE128:
	.size	app_util_critical_region_exit, .-app_util_critical_region_exit
	.section	.text.unlikely.app_util_critical_region_exit
.LCOLDE3:
	.section	.text.app_util_critical_region_exit
.LHOTE3:
	.section	.text.unlikely.privilege_level_get,"ax",@progbits
.LCOLDB4:
	.section	.text.privilege_level_get,"ax",@progbits
.LHOTB4:
	.globl	privilege_level_get
	.type	privilege_level_get, @function
privilege_level_get:
.LFB129:
	.loc 1 3098 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB18:
.LBB19:
	.loc 1 128 0
#APP
# 128 "src/app_util_platform.c" 1
	MRS %edx, ipsr
# 0 "" 2
.LVL4:
#NO_APP
.LBE19:
.LBE18:
	.loc 1 3100 0
	andl	$511, %edx
.LVL5:
	movb	$1, %al
	jne	.L12
.LBB20:
.LBB21:
.LBB22:
	.loc 1 118 0
#APP
# 118 "src/app_util_platform.c" 1
	MRS %eax, control
# 0 "" 2
.LVL6:
#NO_APP
.LBE22:
.LBE21:
	.loc 1 3103 0
	andl	$1, %eax
.LVL7:
	xorl	$1, %eax
.L12:
.LBE20:
	.loc 1 3109 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE129:
	.size	privilege_level_get, .-privilege_level_get
	.section	.text.unlikely.privilege_level_get
.LCOLDE4:
	.section	.text.privilege_level_get
.LHOTE4:
	.section	.text.unlikely.current_int_priority_get,"ax",@progbits
.LCOLDB5:
	.section	.text.current_int_priority_get,"ax",@progbits
.LHOTB5:
	.globl	current_int_priority_get
	.type	current_int_priority_get, @function
current_int_priority_get:
.LFB130:
	.loc 1 3111 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB28:
.LBB29:
	.loc 1 128 0
#APP
# 128 "src/app_util_platform.c" 1
	MRS %edx, ipsr
# 0 "" 2
.LVL8:
#NO_APP
.LBE29:
.LBE28:
	.loc 1 3113 0
	andl	$511, %edx
.LVL9:
	.loc 1 3120 0
	movb	$15, %al
	.loc 1 3113 0
	je	.L17
.LVL10:
.LBB30:
.LBB31:
.LBB32:
	.loc 1 980 0
	movl	%edx, %eax
	subl	$16, %eax
.LVL11:
	jns	.L18
	.loc 1 982 0
	andl	$15, %eax
.LVL12:
	subl	$4, %eax
	movb	-536810216(%eax), %al
	jmp	.L23
.LVL13:
.L18:
	.loc 1 986 0
	movb	-536812544(%eax), %al
.LVL14:
.L23:
	shrb	$5, %al
	movzbl	%al, %eax
.LVL15:
.L17:
.LBE32:
.LBE31:
.LBE30:
	.loc 1 3122 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE130:
	.size	current_int_priority_get, .-current_int_priority_get
	.section	.text.unlikely.current_int_priority_get
.LCOLDE5:
	.section	.text.current_int_priority_get
.LHOTE5:
	.section	.bss.m_in_critical_region,"aw",@nobits
	.align 4
	.type	m_in_critical_region, @object
	.size	m_in_critical_region, 4
m_in_critical_region:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.app_util_disable_irq
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x79e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF128
	.byte	0xc
	.long	.LASF129
	.long	.LASF130
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
	.byte	0x1
	.byte	0x2
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
	.byte	0x1
	.byte	0x4
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1
	.byte	0x5
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x1
	.byte	0x6
	.long	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x16
	.long	0x45
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x18
	.long	0x69
	.uleb128 0x5
	.byte	0x4
	.long	0x89
	.byte	0x1
	.byte	0x34
	.long	0x20e
	.uleb128 0x6
	.long	.LASF17
	.sleb128 -15
	.uleb128 0x6
	.long	.LASF18
	.sleb128 -14
	.uleb128 0x6
	.long	.LASF19
	.sleb128 -13
	.uleb128 0x6
	.long	.LASF20
	.sleb128 -12
	.uleb128 0x6
	.long	.LASF21
	.sleb128 -11
	.uleb128 0x6
	.long	.LASF22
	.sleb128 -10
	.uleb128 0x6
	.long	.LASF23
	.sleb128 -5
	.uleb128 0x6
	.long	.LASF24
	.sleb128 -4
	.uleb128 0x6
	.long	.LASF25
	.sleb128 -2
	.uleb128 0x6
	.long	.LASF26
	.sleb128 -1
	.uleb128 0x7
	.long	.LASF27
	.byte	0
	.uleb128 0x7
	.long	.LASF28
	.byte	0x1
	.uleb128 0x7
	.long	.LASF29
	.byte	0x2
	.uleb128 0x7
	.long	.LASF30
	.byte	0x3
	.uleb128 0x7
	.long	.LASF31
	.byte	0x4
	.uleb128 0x7
	.long	.LASF32
	.byte	0x5
	.uleb128 0x7
	.long	.LASF33
	.byte	0x6
	.uleb128 0x7
	.long	.LASF34
	.byte	0x7
	.uleb128 0x7
	.long	.LASF35
	.byte	0x8
	.uleb128 0x7
	.long	.LASF36
	.byte	0x9
	.uleb128 0x7
	.long	.LASF37
	.byte	0xa
	.uleb128 0x7
	.long	.LASF38
	.byte	0xb
	.uleb128 0x7
	.long	.LASF39
	.byte	0xc
	.uleb128 0x7
	.long	.LASF40
	.byte	0xd
	.uleb128 0x7
	.long	.LASF41
	.byte	0xe
	.uleb128 0x7
	.long	.LASF42
	.byte	0xf
	.uleb128 0x7
	.long	.LASF43
	.byte	0x10
	.uleb128 0x7
	.long	.LASF44
	.byte	0x11
	.uleb128 0x7
	.long	.LASF45
	.byte	0x12
	.uleb128 0x7
	.long	.LASF46
	.byte	0x13
	.uleb128 0x7
	.long	.LASF47
	.byte	0x14
	.uleb128 0x7
	.long	.LASF48
	.byte	0x15
	.uleb128 0x7
	.long	.LASF49
	.byte	0x16
	.uleb128 0x7
	.long	.LASF50
	.byte	0x17
	.uleb128 0x7
	.long	.LASF51
	.byte	0x18
	.uleb128 0x7
	.long	.LASF52
	.byte	0x19
	.uleb128 0x7
	.long	.LASF53
	.byte	0x1a
	.uleb128 0x7
	.long	.LASF54
	.byte	0x1b
	.uleb128 0x7
	.long	.LASF55
	.byte	0x1c
	.uleb128 0x7
	.long	.LASF56
	.byte	0x1d
	.uleb128 0x7
	.long	.LASF57
	.byte	0x20
	.uleb128 0x7
	.long	.LASF58
	.byte	0x21
	.uleb128 0x7
	.long	.LASF59
	.byte	0x22
	.uleb128 0x7
	.long	.LASF60
	.byte	0x23
	.uleb128 0x7
	.long	.LASF61
	.byte	0x24
	.uleb128 0x7
	.long	.LASF62
	.byte	0x25
	.uleb128 0x7
	.long	.LASF63
	.byte	0x26
	.uleb128 0x7
	.long	.LASF64
	.byte	0x27
	.uleb128 0x7
	.long	.LASF65
	.byte	0x28
	.uleb128 0x7
	.long	.LASF66
	.byte	0x29
	.uleb128 0x7
	.long	.LASF67
	.byte	0x2a
	.uleb128 0x7
	.long	.LASF68
	.byte	0x2d
	.uleb128 0x7
	.long	.LASF69
	.byte	0x2f
	.byte	0
	.uleb128 0x3
	.long	.LASF70
	.byte	0x1
	.byte	0x6a
	.long	0xc3
	.uleb128 0x8
	.value	0xe04
	.byte	0x1
	.value	0x2f5
	.long	0x2d5
	.uleb128 0x9
	.long	.LASF71
	.byte	0x1
	.value	0x2f7
	.long	0x2f1
	.byte	0
	.uleb128 0x9
	.long	.LASF72
	.byte	0x1
	.value	0x2f8
	.long	0x2f6
	.byte	0x20
	.uleb128 0x9
	.long	.LASF73
	.byte	0x1
	.value	0x2f9
	.long	0x306
	.byte	0x80
	.uleb128 0x9
	.long	.LASF74
	.byte	0x1
	.value	0x2fa
	.long	0x2f6
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF75
	.byte	0x1
	.value	0x2fb
	.long	0x30b
	.value	0x100
	.uleb128 0xa
	.long	.LASF76
	.byte	0x1
	.value	0x2fc
	.long	0x2f6
	.value	0x120
	.uleb128 0xa
	.long	.LASF77
	.byte	0x1
	.value	0x2fd
	.long	0x310
	.value	0x180
	.uleb128 0xa
	.long	.LASF78
	.byte	0x1
	.value	0x2fe
	.long	0x2f6
	.value	0x1a0
	.uleb128 0xa
	.long	.LASF79
	.byte	0x1
	.value	0x2ff
	.long	0x315
	.value	0x200
	.uleb128 0xa
	.long	.LASF80
	.byte	0x1
	.value	0x300
	.long	0x31a
	.value	0x220
	.uleb128 0xb
	.string	"IP"
	.byte	0x1
	.value	0x301
	.long	0x33f
	.value	0x300
	.uleb128 0xa
	.long	.LASF81
	.byte	0x1
	.value	0x302
	.long	0x344
	.value	0x3f0
	.uleb128 0xa
	.long	.LASF82
	.byte	0x1
	.value	0x303
	.long	0x2ec
	.value	0xe00
	.byte	0
	.uleb128 0xc
	.long	0x2ec
	.long	0x2e5
	.uleb128 0xd
	.long	0x2e5
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF83
	.uleb128 0xe
	.long	0xb8
	.uleb128 0xe
	.long	0x2d5
	.uleb128 0xc
	.long	0xb8
	.long	0x306
	.uleb128 0xd
	.long	0x2e5
	.byte	0x17
	.byte	0
	.uleb128 0xe
	.long	0x2d5
	.uleb128 0xe
	.long	0x2d5
	.uleb128 0xe
	.long	0x2d5
	.uleb128 0xe
	.long	0x2d5
	.uleb128 0xc
	.long	0xb8
	.long	0x32a
	.uleb128 0xd
	.long	0x2e5
	.byte	0x37
	.byte	0
	.uleb128 0xc
	.long	0x33a
	.long	0x33a
	.uleb128 0xd
	.long	0x2e5
	.byte	0xef
	.byte	0
	.uleb128 0xe
	.long	0x97
	.uleb128 0xe
	.long	0x32a
	.uleb128 0xc
	.long	0xb8
	.long	0x355
	.uleb128 0xf
	.long	0x2e5
	.value	0x283
	.byte	0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x1
	.value	0x304
	.long	0x219
	.uleb128 0x11
	.byte	0x8c
	.byte	0x1
	.value	0x305
	.long	0x47c
	.uleb128 0x9
	.long	.LASF85
	.byte	0x1
	.value	0x307
	.long	0x47c
	.byte	0
	.uleb128 0x9
	.long	.LASF86
	.byte	0x1
	.value	0x308
	.long	0x2ec
	.byte	0x4
	.uleb128 0x9
	.long	.LASF87
	.byte	0x1
	.value	0x309
	.long	0x2ec
	.byte	0x8
	.uleb128 0x9
	.long	.LASF88
	.byte	0x1
	.value	0x30a
	.long	0x2ec
	.byte	0xc
	.uleb128 0x12
	.string	"SCR"
	.byte	0x1
	.value	0x30b
	.long	0x2ec
	.byte	0x10
	.uleb128 0x12
	.string	"CCR"
	.byte	0x1
	.value	0x30c
	.long	0x2ec
	.byte	0x14
	.uleb128 0x12
	.string	"SHP"
	.byte	0x1
	.value	0x30d
	.long	0x491
	.byte	0x18
	.uleb128 0x9
	.long	.LASF89
	.byte	0x1
	.value	0x30e
	.long	0x2ec
	.byte	0x24
	.uleb128 0x9
	.long	.LASF90
	.byte	0x1
	.value	0x30f
	.long	0x2ec
	.byte	0x28
	.uleb128 0x9
	.long	.LASF91
	.byte	0x1
	.value	0x310
	.long	0x2ec
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF92
	.byte	0x1
	.value	0x311
	.long	0x2ec
	.byte	0x30
	.uleb128 0x9
	.long	.LASF93
	.byte	0x1
	.value	0x312
	.long	0x2ec
	.byte	0x34
	.uleb128 0x9
	.long	.LASF94
	.byte	0x1
	.value	0x313
	.long	0x2ec
	.byte	0x38
	.uleb128 0x9
	.long	.LASF95
	.byte	0x1
	.value	0x314
	.long	0x2ec
	.byte	0x3c
	.uleb128 0x12
	.string	"PFR"
	.byte	0x1
	.value	0x315
	.long	0x4ab
	.byte	0x40
	.uleb128 0x12
	.string	"DFR"
	.byte	0x1
	.value	0x316
	.long	0x47c
	.byte	0x48
	.uleb128 0x12
	.string	"ADR"
	.byte	0x1
	.value	0x317
	.long	0x47c
	.byte	0x4c
	.uleb128 0x9
	.long	.LASF96
	.byte	0x1
	.value	0x318
	.long	0x4c5
	.byte	0x50
	.uleb128 0x9
	.long	.LASF97
	.byte	0x1
	.value	0x319
	.long	0x4df
	.byte	0x60
	.uleb128 0x9
	.long	.LASF72
	.byte	0x1
	.value	0x31a
	.long	0x4e4
	.byte	0x74
	.uleb128 0x9
	.long	.LASF98
	.byte	0x1
	.value	0x31b
	.long	0x2ec
	.byte	0x88
	.byte	0
	.uleb128 0x13
	.long	0x2ec
	.uleb128 0xc
	.long	0x33a
	.long	0x491
	.uleb128 0xd
	.long	0x2e5
	.byte	0xb
	.byte	0
	.uleb128 0xe
	.long	0x481
	.uleb128 0xc
	.long	0x47c
	.long	0x4a6
	.uleb128 0xd
	.long	0x2e5
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	0x496
	.uleb128 0x13
	.long	0x4a6
	.uleb128 0xc
	.long	0x47c
	.long	0x4c0
	.uleb128 0xd
	.long	0x2e5
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	0x4b0
	.uleb128 0x13
	.long	0x4c0
	.uleb128 0xc
	.long	0x47c
	.long	0x4da
	.uleb128 0xd
	.long	0x2e5
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	0x4ca
	.uleb128 0x13
	.long	0x4da
	.uleb128 0xc
	.long	0xb8
	.long	0x4f4
	.uleb128 0xd
	.long	0x2e5
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF99
	.byte	0x1
	.value	0x31c
	.long	0x361
	.uleb128 0xe
	.long	0xad
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF100
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF101
	.uleb128 0x14
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xbf0
	.long	0x545
	.uleb128 0x7
	.long	.LASF102
	.byte	0
	.uleb128 0x7
	.long	.LASF103
	.byte	0x2
	.uleb128 0x7
	.long	.LASF104
	.byte	0x4
	.uleb128 0x7
	.long	.LASF105
	.byte	0x6
	.uleb128 0x7
	.long	.LASF106
	.byte	0x7
	.uleb128 0x7
	.long	.LASF107
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xbf9
	.long	0x55f
	.uleb128 0x7
	.long	.LASF108
	.byte	0
	.uleb128 0x7
	.long	.LASF109
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	.LASF110
	.byte	0x1
	.byte	0x6f
	.byte	0x3
	.uleb128 0x15
	.long	.LASF111
	.byte	0x1
	.byte	0x6b
	.byte	0x3
	.uleb128 0x16
	.long	.LASF112
	.byte	0x1
	.byte	0x7d
	.long	0xb8
	.byte	0x3
	.long	0x58b
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.byte	0x7f
	.long	0xb8
	.byte	0
	.uleb128 0x16
	.long	.LASF113
	.byte	0x1
	.byte	0x73
	.long	0xb8
	.byte	0x3
	.long	0x5a7
	.uleb128 0x17
	.long	.LASF114
	.byte	0x1
	.byte	0x75
	.long	0xb8
	.byte	0
	.uleb128 0x18
	.long	.LASF115
	.byte	0x1
	.value	0xc02
	.long	.LFB125
	.long	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ce
	.uleb128 0x19
	.long	0x55f
	.long	.LBB14
	.long	.LBE14-.LBB14
	.byte	0x1
	.value	0xc04
	.byte	0
	.uleb128 0x18
	.long	.LASF116
	.byte	0x1
	.value	0xc07
	.long	.LFB126
	.long	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f5
	.uleb128 0x19
	.long	0x567
	.long	.LBB16
	.long	.LBE16-.LBB16
	.byte	0x1
	.value	0xc0c
	.byte	0
	.uleb128 0x18
	.long	.LASF117
	.byte	0x1
	.value	0xc0f
	.long	.LFB127
	.long	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x624
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.value	0xc0f
	.long	0x624
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL1
	.long	0x5a7
	.byte	0
	.uleb128 0x1c
	.byte	0x4
	.long	0x97
	.uleb128 0x18
	.long	.LASF118
	.byte	0x1
	.value	0xc14
	.long	.LFB128
	.long	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x659
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.value	0xc14
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL3
	.long	0x5ce
	.byte	0
	.uleb128 0x1d
	.long	.LASF124
	.byte	0x1
	.value	0xc19
	.long	0x97
	.long	.LFB129
	.long	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x6e2
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x1
	.value	0xc1b
	.long	0xb8
	.long	.LLST0
	.uleb128 0x1f
	.long	0x56f
	.long	.LBB18
	.long	.LBE18-.LBB18
	.byte	0x1
	.value	0xc1b
	.long	0x6a7
	.uleb128 0x20
	.long	.LBB19
	.long	.LBE19-.LBB19
	.uleb128 0x21
	.long	0x57f
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LBB20
	.long	.LBE20-.LBB20
	.uleb128 0x1e
	.long	.LASF122
	.byte	0x1
	.value	0xc1e
	.long	0xad
	.long	.LLST1
	.uleb128 0x22
	.long	0x58b
	.long	.LBB21
	.long	.LBE21-.LBB21
	.byte	0x1
	.value	0xc1e
	.uleb128 0x20
	.long	.LBB22
	.long	.LBE22-.LBB22
	.uleb128 0x21
	.long	0x59b
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF123
	.byte	0x1
	.value	0x3d2
	.long	0xb8
	.byte	0x3
	.long	0x700
	.uleb128 0x24
	.long	.LASF131
	.byte	0x1
	.value	0x3d2
	.long	0x20e
	.byte	0
	.uleb128 0x1d
	.long	.LASF125
	.byte	0x1
	.value	0xc26
	.long	0x97
	.long	.LFB130
	.long	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x783
	.uleb128 0x1e
	.long	.LASF121
	.byte	0x1
	.value	0xc28
	.long	0xb8
	.long	.LLST2
	.uleb128 0x1f
	.long	0x56f
	.long	.LBB28
	.long	.LBE28-.LBB28
	.byte	0x1
	.value	0xc28
	.long	0x74e
	.uleb128 0x20
	.long	.LBB29
	.long	.LBE29-.LBB29
	.uleb128 0x21
	.long	0x57f
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LBB30
	.long	.LBE30-.LBB30
	.uleb128 0x1e
	.long	.LASF126
	.byte	0x1
	.value	0xc2b
	.long	0xad
	.long	.LLST3
	.uleb128 0x22
	.long	0x6e2
	.long	.LBB31
	.long	.LBE31-.LBB31
	.byte	0x1
	.value	0xc2c
	.uleb128 0x25
	.long	0x6f3
	.long	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF127
	.byte	0x1
	.value	0xc01
	.long	0xb8
	.uleb128 0x5
	.byte	0x3
	.long	m_in_critical_region
	.uleb128 0x27
	.long	.LASF132
	.byte	0x1
	.value	0x40d
	.long	0x500
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x16
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
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2
	.uleb128 0x18
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
	.long	.LVL4
	.long	.LVL5
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.value	0x1ff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL5
	.long	.LFE129
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL8
	.long	.LVL9
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.value	0x1ff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL9
	.long	.LFE130
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL11
	.value	0x3
	.byte	0x72
	.sleb128 -16
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL13
	.value	0x3
	.byte	0x72
	.sleb128 -16
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL15
	.value	0x3
	.byte	0x72
	.sleb128 -16
	.byte	0x9f
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
	.long	.LFB130
	.long	.LFE130-.LFB130
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	.LFB130
	.long	.LFE130
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF77:
	.string	"ICPR"
.LASF67:
	.string	"CRYPTOCELL_IRQn"
.LASF57:
	.string	"MWU_IRQn"
.LASF17:
	.string	"Reset_IRQn"
.LASF3:
	.string	"__uint8_t"
.LASF46:
	.string	"COMP_LPCOMP_IRQn"
.LASF65:
	.string	"UARTE1_IRQn"
.LASF121:
	.string	"isr_vector_num"
.LASF117:
	.string	"app_util_critical_region_enter"
.LASF61:
	.string	"RTC2_IRQn"
.LASF45:
	.string	"QDEC_IRQn"
.LASF35:
	.string	"TIMER0_IRQn"
.LASF51:
	.string	"SWI4_EGU4_IRQn"
.LASF85:
	.string	"CPUID"
.LASF29:
	.string	"UARTE0_UART0_IRQn"
.LASF31:
	.string	"SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn"
.LASF75:
	.string	"ISPR"
.LASF120:
	.string	"nested"
.LASF108:
	.string	"APP_LEVEL_UNPRIVILEGED"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF56:
	.string	"PDM_IRQn"
.LASF66:
	.string	"QSPI_IRQn"
.LASF11:
	.string	"long long unsigned int"
.LASF97:
	.string	"ISAR"
.LASF69:
	.string	"SPIM3_IRQn"
.LASF54:
	.string	"TIMER4_IRQn"
.LASF7:
	.string	"long int"
.LASF104:
	.string	"APP_IRQ_PRIORITY_MID"
.LASF58:
	.string	"PWM1_IRQn"
.LASF105:
	.string	"APP_IRQ_PRIORITY_LOW"
.LASF28:
	.string	"RADIO_IRQn"
.LASF47:
	.string	"SWI0_EGU0_IRQn"
.LASF14:
	.string	"uint16_t"
.LASF94:
	.string	"BFAR"
.LASF130:
	.string	"/home/stone/Documents/pca"
.LASF19:
	.string	"HardFault_IRQn"
.LASF122:
	.string	"control"
.LASF95:
	.string	"AFSR"
.LASF8:
	.string	"__uint32_t"
.LASF21:
	.string	"BusFault_IRQn"
.LASF99:
	.string	"SCB_Type"
.LASF12:
	.string	"unsigned int"
.LASF64:
	.string	"USBD_IRQn"
.LASF20:
	.string	"MemoryManagement_IRQn"
.LASF9:
	.string	"long unsigned int"
.LASF87:
	.string	"VTOR"
.LASF129:
	.string	"src/app_util_platform.c"
.LASF126:
	.string	"irq_type"
.LASF23:
	.string	"SVCall_IRQn"
.LASF86:
	.string	"ICSR"
.LASF88:
	.string	"AIRCR"
.LASF92:
	.string	"DFSR"
.LASF123:
	.string	"NVIC_GetPriority"
.LASF93:
	.string	"MMFAR"
.LASF41:
	.string	"ECB_IRQn"
.LASF96:
	.string	"MMFR"
.LASF2:
	.string	"short int"
.LASF102:
	.string	"APP_IRQ_PRIORITY_HIGHEST"
.LASF39:
	.string	"TEMP_IRQn"
.LASF26:
	.string	"SysTick_IRQn"
.LASF22:
	.string	"UsageFault_IRQn"
.LASF124:
	.string	"privilege_level_get"
.LASF33:
	.string	"GPIOTE_IRQn"
.LASF131:
	.string	"IRQn"
.LASF112:
	.string	"__get_IPSR"
.LASF83:
	.string	"sizetype"
.LASF48:
	.string	"SWI1_EGU1_IRQn"
.LASF90:
	.string	"CFSR"
.LASF36:
	.string	"TIMER1_IRQn"
.LASF79:
	.string	"IABR"
.LASF50:
	.string	"SWI3_EGU3_IRQn"
.LASF73:
	.string	"ICER"
.LASF111:
	.string	"__enable_irq"
.LASF127:
	.string	"m_in_critical_region"
.LASF34:
	.string	"SAADC_IRQn"
.LASF32:
	.string	"NFCT_IRQn"
.LASF116:
	.string	"app_util_enable_irq"
.LASF110:
	.string	"__disable_irq"
.LASF72:
	.string	"RESERVED0"
.LASF76:
	.string	"RESERVED2"
.LASF78:
	.string	"RESERVED3"
.LASF80:
	.string	"RESERVED4"
.LASF81:
	.string	"RESERVED5"
.LASF15:
	.string	"int32_t"
.LASF37:
	.string	"TIMER2_IRQn"
.LASF27:
	.string	"POWER_CLOCK_IRQn"
.LASF89:
	.string	"SHCSR"
.LASF132:
	.string	"ITM_RxBuffer"
.LASF40:
	.string	"RNG_IRQn"
.LASF71:
	.string	"ISER"
.LASF84:
	.string	"NVIC_Type"
.LASF49:
	.string	"SWI2_EGU2_IRQn"
.LASF125:
	.string	"current_int_priority_get"
.LASF115:
	.string	"app_util_disable_irq"
.LASF42:
	.string	"CCM_AAR_IRQn"
.LASF70:
	.string	"IRQn_Type"
.LASF128:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF16:
	.string	"uint32_t"
.LASF118:
	.string	"app_util_critical_region_exit"
.LASF25:
	.string	"PendSV_IRQn"
.LASF62:
	.string	"I2S_IRQn"
.LASF100:
	.string	"long double"
.LASF59:
	.string	"PWM2_IRQn"
.LASF60:
	.string	"SPIM2_SPIS2_SPI2_IRQn"
.LASF101:
	.string	"char"
.LASF68:
	.string	"PWM3_IRQn"
.LASF53:
	.string	"TIMER3_IRQn"
.LASF107:
	.string	"APP_IRQ_PRIORITY_THREAD"
.LASF4:
	.string	"__uint16_t"
.LASF18:
	.string	"NonMaskableInt_IRQn"
.LASF6:
	.string	"__int32_t"
.LASF43:
	.string	"WDT_IRQn"
.LASF5:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"DebugMonitor_IRQn"
.LASF38:
	.string	"RTC0_IRQn"
.LASF119:
	.string	"p_nested"
.LASF30:
	.string	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn"
.LASF109:
	.string	"APP_LEVEL_PRIVILEGED"
.LASF13:
	.string	"uint8_t"
.LASF74:
	.string	"RSERVED1"
.LASF82:
	.string	"STIR"
.LASF55:
	.string	"PWM0_IRQn"
.LASF63:
	.string	"FPU_IRQn"
.LASF106:
	.string	"APP_IRQ_PRIORITY_LOWEST"
.LASF103:
	.string	"APP_IRQ_PRIORITY_HIGH"
.LASF98:
	.string	"CPACR"
.LASF91:
	.string	"HFSR"
.LASF44:
	.string	"RTC1_IRQn"
.LASF113:
	.string	"__get_CONTROL"
.LASF114:
	.string	"result"
.LASF52:
	.string	"SWI5_EGU5_IRQn"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
