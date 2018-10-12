	.file	"nrf_assert.c"
	.text
.Ltext0:
	.section	.text.unlikely.assert_nrf_callback,"ax",@progbits
.LCOLDB0:
	.section	.text.assert_nrf_callback,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.assert_nrf_callback
.Ltext_cold0:
	.section	.text.assert_nrf_callback
	.weak	assert_nrf_callback
	.type	assert_nrf_callback, @function
assert_nrf_callback:
.LFB125:
	.file 1 "src/nrf_assert.c"
	.loc 1 3056 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	.loc 1 3056 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 3057 0
	movl	8(%ebp), %eax
	movw	%ax, -20(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 3062 0
	leal	-20(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	$16386
	call	app_error_fault_handler
.LVL1:
	.loc 1 3064 0
	addl	$16, %esp
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L2
	call	__stack_chk_fail
.LVL2:
.L2:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE125:
	.size	assert_nrf_callback, .-assert_nrf_callback
	.section	.text.unlikely.assert_nrf_callback
.LCOLDE0:
	.section	.text.assert_nrf_callback
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.assert_nrf_callback
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x18c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF24
	.byte	0xc
	.long	.LASF25
	.long	.LASF26
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.long	0xad
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x6
	.byte	0x4
	.long	0xe3
	.uleb128 0x7
	.long	0x97
	.uleb128 0x8
	.byte	0x8
	.byte	0x1
	.value	0xbe6
	.long	0x10c
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.value	0xbe8
	.long	0xa2
	.byte	0
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.value	0xbe9
	.long	0xdd
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.value	0xbea
	.long	0xe8
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.value	0xbef
	.long	.LFB125
	.long	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.value	0xbef
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.value	0xbef
	.long	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0xbf1
	.long	0x10c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.long	.LVL1
	.long	0x17a
	.uleb128 0xe
	.long	.LVL2
	.long	0x186
	.byte	0
	.uleb128 0xf
	.long	.LASF29
	.byte	0x1
	.value	0x408
	.long	0xca
	.uleb128 0x10
	.long	.LASF30
	.long	.LASF30
	.byte	0x1
	.value	0xbdf
	.uleb128 0x11
	.long	.LASF31
	.long	.LASF31
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB125
	.long	.LFE125-.LFB125
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB125
	.long	.LFE125
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"__uint8_t"
.LASF21:
	.string	"p_file_name"
.LASF6:
	.string	"__int32_t"
.LASF11:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF24:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF5:
	.string	"short unsigned int"
.LASF23:
	.string	"file_name"
.LASF29:
	.string	"ITM_RxBuffer"
.LASF31:
	.string	"__stack_chk_fail"
.LASF4:
	.string	"__uint16_t"
.LASF8:
	.string	"__uint32_t"
.LASF27:
	.string	"assert_nrf_callback"
.LASF12:
	.string	"unsigned int"
.LASF19:
	.string	"char"
.LASF13:
	.string	"uint8_t"
.LASF15:
	.string	"int32_t"
.LASF17:
	.string	"sizetype"
.LASF20:
	.string	"line_num"
.LASF10:
	.string	"long long int"
.LASF25:
	.string	"src/nrf_assert.c"
.LASF26:
	.string	"/home/stone/Documents/pca"
.LASF28:
	.string	"assert_info"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"uint16_t"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF18:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"assert_info_t"
.LASF30:
	.string	"app_error_fault_handler"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
