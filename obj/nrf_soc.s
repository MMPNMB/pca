	.file	"nrf_soc.c"
	.text
.Ltext0:
	.section	.text.unlikely.sd_app_evt_wait,"ax",@progbits
.LCOLDB0:
	.section	.text.sd_app_evt_wait,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sd_app_evt_wait
.Ltext_cold0:
	.section	.text.sd_app_evt_wait
	.globl	sd_app_evt_wait
	.type	sd_app_evt_wait, @function
sd_app_evt_wait:
.LFB124:
	.file 1 "src/nrf_soc.c"
	.loc 1 2843 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB4:
.LBB5:
	.loc 1 547 0
#APP
# 547 "src/nrf_soc.c" 1
	wfe
# 0 "" 2
#NO_APP
.LBE5:
.LBE4:
	.loc 1 2846 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE124:
	.size	sd_app_evt_wait, .-sd_app_evt_wait
	.section	.text.unlikely.sd_app_evt_wait
.LCOLDE0:
	.section	.text.sd_app_evt_wait
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.sd_app_evt_wait
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.byte	0xc
	.long	.LASF17
	.long	.LASF18
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0xc
	.long	0x68
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0xd
	.long	0x7a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x5
	.long	.LASF14
	.byte	0x1
	.value	0x161
	.long	0x5d
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1
	.value	0x162
	.long	0x6f
	.uleb128 0x6
	.long	0x96
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.value	0x221
	.byte	0x3
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.value	0xb1a
	.long	0xa2
	.long	.LFB124
	.long	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0xe7
	.uleb128 0x9
	.long	0xb3
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.value	0xb1c
	.byte	0
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.value	0x552
	.long	0xae
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB124
	.long	.LFE124-.LFB124
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB124
	.long	.LFE124
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"long long int"
.LASF6:
	.string	"short unsigned int"
.LASF16:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF9:
	.string	"__uint32_t"
.LASF17:
	.string	"src/nrf_soc.c"
.LASF10:
	.string	"long unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF19:
	.string	"__WFE"
.LASF13:
	.string	"char"
.LASF18:
	.string	"/home/stone/Documents/pca"
.LASF7:
	.string	"long int"
.LASF21:
	.string	"ITM_RxBuffer"
.LASF3:
	.string	"signed char"
.LASF8:
	.string	"__int32_t"
.LASF2:
	.string	"long double"
.LASF5:
	.string	"short int"
.LASF14:
	.string	"int32_t"
.LASF12:
	.string	"sizetype"
.LASF20:
	.string	"sd_app_evt_wait"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
