	.file	"app_error_weak.c"
	.text
.Ltext0:
	.section	.text.unlikely.app_error_fault_handler,"ax",@progbits
.LCOLDB0:
	.section	.text.app_error_fault_handler,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.app_error_fault_handler
.Ltext_cold0:
	.section	.text.app_error_fault_handler
	.weak	app_error_fault_handler
	.type	app_error_fault_handler, @function
app_error_fault_handler:
.LFB150:
	.file 1 "src/app_error_weak.c"
	.loc 1 3666 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3669 0
	movl	-536810000, %eax
	.loc 1 3666 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3669 0
	testb	$1, %al
	je	.L2
	.loc 1 3669 0 is_stmt 0 discriminator 1
	ud2
.L2:
.LBB16:
.LBB17:
.LBB18:
.LBB19:
	.loc 1 756 0 is_stmt 1
#APP
# 756 "src/app_error_weak.c" 1
	dsb 0xF
# 0 "" 2
#NO_APP
.LBE19:
.LBE18:
	.loc 1 1537 0
	movl	-536810228, %eax
	.loc 1 1536 0
	andl	$1792, %eax
	orl	$100270084, %eax
	movl	%eax, -536810228
.LVL1:
.LBB20:
.LBB21:
	.loc 1 756 0
#APP
# 756 "src/app_error_weak.c" 1
	dsb 0xF
# 0 "" 2
#NO_APP
.L3:
.LBE21:
.LBE20:
.LBB22:
.LBB23:
	.loc 1 736 0
#APP
# 736 "src/app_error_weak.c" 1
	nop
# 0 "" 2
#NO_APP
	jmp	.L3
.LBE23:
.LBE22:
.LBE17:
.LBE16:
	.cfi_endproc
.LFE150:
	.size	app_error_fault_handler, .-app_error_fault_handler
	.section	.text.unlikely.app_error_fault_handler
.LCOLDE0:
	.section	.text.app_error_fault_handler
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.app_error_fault_handler
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x383
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF46
	.byte	0xc
	.long	.LASF47
	.long	.LASF48
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x1
	.byte	0x6
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
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x17
	.long	0x4c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.long	0xa2
	.uleb128 0x5
	.long	0x8c
	.uleb128 0x6
	.byte	0x8c
	.byte	0x1
	.value	0x50f
	.long	0x1e7
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.value	0x511
	.long	0x1e7
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.value	0x512
	.long	0xc2
	.byte	0x4
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.value	0x513
	.long	0xc2
	.byte	0x8
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.value	0x514
	.long	0xc2
	.byte	0xc
	.uleb128 0x8
	.string	"SCR"
	.byte	0x1
	.value	0x515
	.long	0xc2
	.byte	0x10
	.uleb128 0x8
	.string	"CCR"
	.byte	0x1
	.value	0x516
	.long	0xc2
	.byte	0x14
	.uleb128 0x8
	.string	"SHP"
	.byte	0x1
	.value	0x517
	.long	0x1fc
	.byte	0x18
	.uleb128 0x7
	.long	.LASF22
	.byte	0x1
	.value	0x518
	.long	0xc2
	.byte	0x24
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.value	0x519
	.long	0xc2
	.byte	0x28
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.value	0x51a
	.long	0xc2
	.byte	0x2c
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.value	0x51b
	.long	0xc2
	.byte	0x30
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.value	0x51c
	.long	0xc2
	.byte	0x34
	.uleb128 0x7
	.long	.LASF27
	.byte	0x1
	.value	0x51d
	.long	0xc2
	.byte	0x38
	.uleb128 0x7
	.long	.LASF28
	.byte	0x1
	.value	0x51e
	.long	0xc2
	.byte	0x3c
	.uleb128 0x8
	.string	"PFR"
	.byte	0x1
	.value	0x51f
	.long	0x216
	.byte	0x40
	.uleb128 0x8
	.string	"DFR"
	.byte	0x1
	.value	0x520
	.long	0x1e7
	.byte	0x48
	.uleb128 0x8
	.string	"ADR"
	.byte	0x1
	.value	0x521
	.long	0x1e7
	.byte	0x4c
	.uleb128 0x7
	.long	.LASF29
	.byte	0x1
	.value	0x522
	.long	0x230
	.byte	0x50
	.uleb128 0x7
	.long	.LASF30
	.byte	0x1
	.value	0x523
	.long	0x24a
	.byte	0x60
	.uleb128 0x7
	.long	.LASF31
	.byte	0x1
	.value	0x524
	.long	0x24f
	.byte	0x74
	.uleb128 0x7
	.long	.LASF32
	.byte	0x1
	.value	0x525
	.long	0xc2
	.byte	0x88
	.byte	0
	.uleb128 0x9
	.long	0xc2
	.uleb128 0xa
	.long	0xc7
	.long	0x1fc
	.uleb128 0xb
	.long	0xbb
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.long	0x1ec
	.uleb128 0xa
	.long	0x1e7
	.long	0x211
	.uleb128 0xb
	.long	0xbb
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.long	0x201
	.uleb128 0x9
	.long	0x211
	.uleb128 0xa
	.long	0x1e7
	.long	0x22b
	.uleb128 0xb
	.long	0xbb
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.long	0x21b
	.uleb128 0x9
	.long	0x22b
	.uleb128 0xa
	.long	0x1e7
	.long	0x245
	.uleb128 0xb
	.long	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	0x235
	.uleb128 0x9
	.long	0x245
	.uleb128 0xa
	.long	0xa2
	.long	0x25f
	.uleb128 0xb
	.long	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.value	0x526
	.long	0xcc
	.uleb128 0x6
	.byte	0x10
	.byte	0x1
	.value	0x5a3
	.long	0x2a9
	.uleb128 0x7
	.long	.LASF34
	.byte	0x1
	.value	0x5a5
	.long	0xc2
	.byte	0
	.uleb128 0x7
	.long	.LASF35
	.byte	0x1
	.value	0x5a6
	.long	0xc2
	.byte	0x4
	.uleb128 0x7
	.long	.LASF36
	.byte	0x1
	.value	0x5a7
	.long	0xc2
	.byte	0x8
	.uleb128 0x7
	.long	.LASF37
	.byte	0x1
	.value	0x5a8
	.long	0xc2
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	.LASF38
	.byte	0x1
	.value	0x5a9
	.long	0x26b
	.uleb128 0x5
	.long	0x97
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF39
	.uleb128 0xd
	.long	.LASF40
	.byte	0x1
	.value	0x2f2
	.byte	0x3
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.value	0x2de
	.byte	0x3
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.value	0x5fd
	.byte	0x3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x1
	.value	0xe51
	.long	.LFB150
	.long	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.long	0x362
	.uleb128 0x10
	.string	"id"
	.byte	0x1
	.value	0xe51
	.long	0xa2
	.long	.LLST0
	.uleb128 0x10
	.string	"pc"
	.byte	0x1
	.value	0xe51
	.long	0xa2
	.long	.LLST1
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.value	0xe51
	.long	0xa2
	.long	.LLST2
	.uleb128 0x12
	.long	0x2d3
	.long	.LBB16
	.long	.LBE16-.LBB16
	.byte	0x1
	.value	0xe57
	.uleb128 0x13
	.long	0x2c1
	.long	.LBB18
	.long	.LBE18-.LBB18
	.byte	0x1
	.value	0x5ff
	.uleb128 0x13
	.long	0x2c1
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.value	0x603
	.uleb128 0x13
	.long	0x2ca
	.long	.LBB22
	.long	.LBE22-.LBB22
	.byte	0x1
	.value	0x606
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF43
	.byte	0x1
	.value	0x617
	.long	0x2b5
	.uleb128 0x14
	.long	.LASF44
	.byte	0x1
	.value	0xc27
	.long	0xa2
	.uleb128 0x14
	.long	.LASF45
	.byte	0x1
	.value	0xc28
	.long	0xa2
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x91
	.sleb128 8
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
	.long	.LFB150
	.long	.LFE150-.LFB150
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB150
	.long	.LFE150
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"DCRDR"
.LASF4:
	.string	"__uint8_t"
.LASF29:
	.string	"MMFR"
.LASF22:
	.string	"SHCSR"
.LASF5:
	.string	"__int32_t"
.LASF40:
	.string	"__DSB"
.LASF26:
	.string	"MMFAR"
.LASF20:
	.string	"VTOR"
.LASF2:
	.string	"short int"
.LASF31:
	.string	"RESERVED0"
.LASF10:
	.string	"long long unsigned int"
.LASF37:
	.string	"DEMCR"
.LASF1:
	.string	"unsigned char"
.LASF38:
	.string	"CoreDebug_Type"
.LASF49:
	.string	"NVIC_SystemReset"
.LASF46:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"CFSR"
.LASF47:
	.string	"src/app_error_weak.c"
.LASF43:
	.string	"ITM_RxBuffer"
.LASF34:
	.string	"DHCSR"
.LASF24:
	.string	"HFSR"
.LASF42:
	.string	"info"
.LASF8:
	.string	"long unsigned int"
.LASF32:
	.string	"CPACR"
.LASF7:
	.string	"__uint32_t"
.LASF35:
	.string	"DCRSR"
.LASF33:
	.string	"SCB_Type"
.LASF11:
	.string	"unsigned int"
.LASF41:
	.string	"__NOP"
.LASF45:
	.string	"__StackLimit"
.LASF16:
	.string	"char"
.LASF19:
	.string	"ICSR"
.LASF44:
	.string	"__StackTop"
.LASF21:
	.string	"AIRCR"
.LASF30:
	.string	"ISAR"
.LASF27:
	.string	"BFAR"
.LASF13:
	.string	"int32_t"
.LASF17:
	.string	"sizetype"
.LASF12:
	.string	"uint8_t"
.LASF9:
	.string	"long long int"
.LASF18:
	.string	"CPUID"
.LASF25:
	.string	"DFSR"
.LASF28:
	.string	"AFSR"
.LASF48:
	.string	"/home/stone/Documents/pca"
.LASF14:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF15:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF39:
	.string	"_Bool"
.LASF50:
	.string	"app_error_fault_handler"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
