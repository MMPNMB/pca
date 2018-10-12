	.file	"nrf_strerror.c"
	.text
.Ltext0:
	.section	.text.unlikely.nrf_strerror_find,"ax",@progbits
.LCOLDB0:
	.section	.text.nrf_strerror_find,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.nrf_strerror_find
.Ltext_cold0:
	.section	.text.nrf_strerror_find
	.globl	nrf_strerror_find
	.type	nrf_strerror_find, @function
nrf_strerror_find:
.LFB141:
	.file 1 "src/nrf_strerror.c"
	.loc 1 2954 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 2957 0
	movl	$nrf_strerror_array, %ecx
	.loc 1 2954 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
.LBB2:
	.loc 1 2961 0
	movl	$2, %esi
.LBE2:
	.loc 1 2954 0
	pushl	%ebx
	.cfi_offset 3, -16
	.loc 1 2958 0
	movl	$nrf_strerror_array+240, %ebx
.LVL1:
.L3:
	.loc 1 2959 0
	cmpl	%ecx, %ebx
	jbe	.L10
.LBB3:
	.loc 1 2961 0
	movl	%ebx, %eax
	subl	%ecx, %eax
	sarl	$3, %eax
	cltd
	idivl	%esi
	.loc 1 2963 0
	movl	8(%ebp), %edx
	.loc 1 2961 0
	leal	(%ecx,%eax,8), %eax
.LVL2:
	.loc 1 2963 0
	cmpl	%edx, (%eax)
	ja	.L7
	.loc 1 2967 0
	jnb	.L4
	.loc 1 2969 0
	leal	8(%eax), %ecx
.LVL3:
	jmp	.L3
.L4:
	.loc 1 2973 0
	movl	4(%eax), %eax
.LVL4:
	jmp	.L5
.LVL5:
.L7:
	movl	%eax, %ebx
.LVL6:
	jmp	.L3
.LVL7:
.L10:
.LBE3:
	.loc 1 2977 0
	xorl	%eax, %eax
.L5:
	.loc 1 2979 0
	popl	%ebx
	.cfi_restore 3
.LVL8:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE141:
	.size	nrf_strerror_find, .-nrf_strerror_find
	.section	.text.unlikely.nrf_strerror_find
.LCOLDE0:
	.section	.text.nrf_strerror_find
.LHOTE0:
	.section	.text.unlikely.nrf_strerror_get,"ax",@progbits
.LCOLDB1:
	.section	.text.nrf_strerror_get,"ax",@progbits
.LHOTB1:
	.globl	nrf_strerror_get
	.type	nrf_strerror_get, @function
nrf_strerror_get:
.LFB140:
	.loc 1 2947 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2948 0
	pushl	8(%ebp)
	call	nrf_strerror_find
.LVL10:
	popl	%edx
.LVL11:
	.loc 1 2951 0
	testl	%eax, %eax
	movl	$m_unknown_str, %edx
	cmove	%edx, %eax
.LVL12:
	.loc 1 2952 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE140:
	.size	nrf_strerror_get, .-nrf_strerror_get
	.section	.text.unlikely.nrf_strerror_get
.LCOLDE1:
	.section	.text.nrf_strerror_get
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"NRF_SUCCESS"
.LC3:
	.string	"NRF_ERROR_SVC_HANDLER_MISSING"
.LC4:
	.string	"NRF_ERROR_SOFTDEVICE_NOT_ENABLED"
.LC5:
	.string	"NRF_ERROR_INTERNAL"
.LC6:
	.string	"NRF_ERROR_NO_MEM"
.LC7:
	.string	"NRF_ERROR_NOT_FOUND"
.LC8:
	.string	"NRF_ERROR_NOT_SUPPORTED"
.LC9:
	.string	"NRF_ERROR_INVALID_PARAM"
.LC10:
	.string	"NRF_ERROR_INVALID_STATE"
.LC11:
	.string	"NRF_ERROR_INVALID_LENGTH"
.LC12:
	.string	"NRF_ERROR_INVALID_FLAGS"
.LC13:
	.string	"NRF_ERROR_INVALID_DATA"
.LC14:
	.string	"NRF_ERROR_DATA_SIZE"
.LC15:
	.string	"NRF_ERROR_TIMEOUT"
.LC16:
	.string	"NRF_ERROR_NULL"
.LC17:
	.string	"NRF_ERROR_FORBIDDEN"
.LC18:
	.string	"NRF_ERROR_INVALID_ADDR"
.LC19:
	.string	"NRF_ERROR_BUSY"
.LC20:
	.string	"NRF_ERROR_MODULE_NOT_INITIALZED"
.LC21:
	.string	"NRF_ERROR_MUTEX_INIT_FAILED"
.LC22:
	.string	"NRF_ERROR_MUTEX_LOCK_FAILED"
.LC23:
	.string	"NRF_ERROR_MUTEX_UNLOCK_FAILED"
.LC24:
	.string	"NRF_ERROR_MUTEX_COND_INIT_FAILED"
.LC25:
	.string	"NRF_ERROR_MODULE_ALREADY_INITIALIZED"
.LC26:
	.string	"NRF_ERROR_STORAGE_FULL"
.LC27:
	.string	"NRF_ERROR_API_NOT_IMPLEMENTED"
.LC28:
	.string	"NRF_ERROR_FEATURE_NOT_ENABLED"
.LC29:
	.string	"NRF_ERROR_DRV_TWI_ERR_OVERRUN"
.LC30:
	.string	"NRF_ERROR_DRV_TWI_ERR_ANACK"
.LC31:
	.string	"NRF_ERROR_DRV_TWI_ERR_DNACK"
	.section	.rodata.nrf_strerror_array,"a",@progbits
	.align 32
	.type	nrf_strerror_array, @object
	.size	nrf_strerror_array, 240
nrf_strerror_array:
	.long	0
	.long	.LC2
	.long	1
	.long	.LC3
	.long	2
	.long	.LC4
	.long	3
	.long	.LC5
	.long	4
	.long	.LC6
	.long	5
	.long	.LC7
	.long	6
	.long	.LC8
	.long	7
	.long	.LC9
	.long	8
	.long	.LC10
	.long	9
	.long	.LC11
	.long	10
	.long	.LC12
	.long	11
	.long	.LC13
	.long	12
	.long	.LC14
	.long	13
	.long	.LC15
	.long	14
	.long	.LC16
	.long	15
	.long	.LC17
	.long	16
	.long	.LC18
	.long	17
	.long	.LC19
	.long	128
	.long	.LC20
	.long	129
	.long	.LC21
	.long	130
	.long	.LC22
	.long	131
	.long	.LC23
	.long	132
	.long	.LC24
	.long	133
	.long	.LC25
	.long	134
	.long	.LC26
	.long	144
	.long	.LC27
	.long	145
	.long	.LC28
	.long	33280
	.long	.LC29
	.long	33281
	.long	.LC30
	.long	33282
	.long	.LC31
	.section	.rodata.m_unknown_str,"a",@progbits
	.align 4
	.type	m_unknown_str, @object
	.size	m_unknown_str, 19
m_unknown_str:
	.string	"Unknown error code"
	.text
.Letext0:
	.section	.text.unlikely.nrf_strerror_find
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x225
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF32
	.byte	0xc
	.long	.LASF33
	.long	.LASF34
	.long	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.long	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1
	.byte	0x6
	.long	0x5e
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
	.uleb128 0x3
	.long	.LASF11
	.byte	0x1
	.byte	0x17
	.long	0x41
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x18
	.long	0x53
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.long	0xb2
	.uleb128 0x6
	.long	0xa5
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.value	0x124
	.long	0x8c
	.uleb128 0x8
	.long	0x81
	.uleb128 0x9
	.byte	0x8
	.byte	0x1
	.value	0xb5b
	.long	0xec
	.uleb128 0xa
	.long	.LASF17
	.byte	0x1
	.value	0xb5d
	.long	0xb7
	.byte	0
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.value	0xb5e
	.long	0xac
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.value	0xb5f
	.long	0xc8
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.value	0xb89
	.long	0xac
	.long	.LFB141
	.long	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x168
	.uleb128 0xc
	.long	.LASF17
	.byte	0x1
	.value	0xb89
	.long	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.value	0xb8b
	.long	0x168
	.long	.LLST0
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.value	0xb8c
	.long	0x168
	.long	.LLST1
	.uleb128 0xe
	.long	.Ldebug_ranges0+0
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.value	0xb91
	.long	0x168
	.long	.LLST2
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.value	0xb92
	.long	0xb7
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x16e
	.uleb128 0x6
	.long	0xec
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0xb82
	.long	0xac
	.long	.LFB140
	.long	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b6
	.uleb128 0xc
	.long	.LASF17
	.byte	0x1
	.value	0xb82
	.long	0xb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF26
	.byte	0x1
	.value	0xb84
	.long	0xac
	.long	.LLST4
	.uleb128 0xf
	.long	.LVL10
	.long	0xf8
	.byte	0
	.uleb128 0x10
	.long	0xb2
	.long	0x1c6
	.uleb128 0x11
	.long	0x9e
	.byte	0x12
	.byte	0
	.uleb128 0x12
	.long	.LASF27
	.byte	0x1
	.value	0xb60
	.long	0x1d8
	.uleb128 0x5
	.byte	0x3
	.long	m_unknown_str
	.uleb128 0x6
	.long	0x1b6
	.uleb128 0x10
	.long	0x16e
	.long	0x1ed
	.uleb128 0x11
	.long	0x9e
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	.LASF28
	.byte	0x1
	.value	0xb61
	.long	0x1ff
	.uleb128 0x5
	.byte	0x3
	.long	nrf_strerror_array
	.uleb128 0x6
	.long	0x1dd
	.uleb128 0x13
	.long	.LASF29
	.byte	0x1
	.value	0x4fe
	.long	0xc3
	.uleb128 0x13
	.long	.LASF30
	.byte	0x1
	.value	0xac0
	.long	0x8c
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.value	0xac1
	.long	0x8c
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x13
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
	.value	0x6
	.byte	0x3
	.long	nrf_strerror_array
	.byte	0x9f
	.long	.LVL1
	.long	.LFE141
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x6
	.byte	0x3
	.long	nrf_strerror_array+240
	.byte	0x9f
	.long	.LVL1
	.long	.LVL6
	.value	0x1
	.byte	0x53
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5
	.value	0x10
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x26
	.byte	0x76
	.sleb128 0
	.byte	0x1b
	.byte	0x33
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL5
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL4
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL4
	.long	.LVL5
	.value	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x33
	.byte	0x26
	.byte	0x76
	.sleb128 0
	.byte	0x1b
	.byte	0x33
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.long	.LVL5
	.long	.LVL7
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
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
	.long	.LFB141
	.long	.LFE141-.LFB141
	.long	.LFB140
	.long	.LFE140-.LFB140
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	0
	.long	0
	.long	.LFB141
	.long	.LFE141
	.long	.LFB140
	.long	.LFE140
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"p_ret"
.LASF5:
	.string	"__int32_t"
.LASF10:
	.string	"unsigned int"
.LASF27:
	.string	"m_unknown_str"
.LASF21:
	.string	"p_end"
.LASF9:
	.string	"long long unsigned int"
.LASF16:
	.string	"ret_code_t"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"src/nrf_strerror.c"
.LASF23:
	.string	"mid_c"
.LASF22:
	.string	"p_mid"
.LASF7:
	.string	"long unsigned int"
.LASF32:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF25:
	.string	"nrf_strerror_get"
.LASF29:
	.string	"ITM_RxBuffer"
.LASF20:
	.string	"p_start"
.LASF6:
	.string	"__uint32_t"
.LASF17:
	.string	"code"
.LASF28:
	.string	"nrf_strerror_array"
.LASF31:
	.string	"__StackLimit"
.LASF15:
	.string	"char"
.LASF30:
	.string	"__StackTop"
.LASF11:
	.string	"int32_t"
.LASF14:
	.string	"sizetype"
.LASF8:
	.string	"long long int"
.LASF18:
	.string	"name"
.LASF34:
	.string	"/home/stone/Documents/pca"
.LASF24:
	.string	"nrf_strerror_find"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"nrf_strerror_desc_t"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"long double"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
