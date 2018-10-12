	.file	"ll_master.c"
	.text
.Ltext0:
	.section	.text.unlikely.ll_create_connection,"ax",@progbits
.LCOLDB0:
	.section	.text.ll_create_connection,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ll_create_connection
.Ltext_cold0:
	.section	.text.ll_create_connection
	.globl	ll_create_connection
	.type	ll_create_connection, @function
ll_create_connection:
.LFB50:
	.file 1 "src/ll_master.c"
	.loc 1 2847 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 2847 0
	movl	8(%ebp), %eax
	movl	24(%ebp), %ecx
	movl	32(%ebp), %ebx
	movl	36(%ebp), %esi
	movl	40(%ebp), %edi
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%ecx, -48(%ebp)
	movl	%eax, -32(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 2851 0
	call	radio_scan_is_enabled
.LVL1:
	testl	%eax, %eax
	movl	$12, %edx
	movl	-48(%ebp), %ecx
	jne	.L2
	.loc 1 2854 0
	movzbl	-40(%ebp), %eax
	subl	$12, %esp
	movzwl	%di, %edi
	movzwl	%si, %esi
	movzwl	%bx, %ebx
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	pushl	%eax
	call	radio_connect_enable
.LVL2:
	.loc 1 2856 0
	addl	$32, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L2
	.loc 1 2859 0
	movzbl	-44(%ebp), %ebx
.LVL3:
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%ebx
	call	ll_addr_get
.LVL4:
	movzbl	-36(%ebp), %edx
	movl	%ebx, 12(%ebp)
	addl	$16, %esp
	movl	$255, 36(%ebp)
	movl	$0, 32(%ebp)
	movl	%eax, 16(%ebp)
	movl	$0, 8(%ebp)
	movl	%edx, 28(%ebp)
	movzwl	-32(%ebp), %edx
	movl	%edx, 24(%ebp)
	movzwl	-28(%ebp), %edx
	movl	%edx, 20(%ebp)
	.loc 1 2865 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 2859 0
	jmp	radio_scan_enable
.LVL5:
.L2:
	.cfi_restore_state
	.loc 1 2865 0
	leal	-12(%ebp), %esp
	movl	%edx, %eax
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
.LFE50:
	.size	ll_create_connection, .-ll_create_connection
	.section	.text.unlikely.ll_create_connection
.LCOLDE0:
	.section	.text.ll_create_connection
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.ll_create_connection
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1d0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF31
	.byte	0xc
	.long	.LASF32
	.long	.LASF33
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
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0x3a
	.long	0x2c
	.uleb128 0x4
	.long	.LASF11
	.byte	0x1
	.byte	0x3b
	.long	0x3a
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x3c
	.long	0x64
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x5
	.long	.LASF34
	.byte	0x1
	.value	0xb1a
	.long	0x88
	.long	.LFB50
	.long	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x191
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.value	0xb1a
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.value	0xb1a
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.value	0xb1b
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.value	0xb1b
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.value	0xb1c
	.long	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.value	0xb1c
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.value	0xb1d
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.value	0xb1d
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.value	0xb1e
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.value	0xb20
	.long	0x88
	.long	.LLST0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1
	.value	0xb21
	.long	0x72
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.value	0xb22
	.long	0x72
	.sleb128 -1
	.uleb128 0xa
	.long	.LVL1
	.long	0x1a3
	.uleb128 0xa
	.long	.LVL2
	.long	0x1af
	.uleb128 0xa
	.long	.LVL4
	.long	0x1bb
	.uleb128 0xb
	.long	.LVL5
	.long	0x1c7
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x72
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.value	0x222
	.long	0x64
	.uleb128 0xe
	.long	.LASF27
	.long	.LASF27
	.byte	0x1
	.value	0xaad
	.uleb128 0xe
	.long	.LASF28
	.long	.LASF28
	.byte	0x1
	.value	0xaaf
	.uleb128 0xe
	.long	.LASF29
	.long	.LASF29
	.byte	0x1
	.value	0xac3
	.uleb128 0xe
	.long	.LASF30
	.long	.LASF30
	.byte	0x1
	.value	0xaa9
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x52
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
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB50
	.long	.LFE50
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"peer_addr"
.LASF28:
	.string	"radio_connect_enable"
.LASF32:
	.string	"src/ll_master.c"
.LASF24:
	.string	"status"
.LASF27:
	.string	"radio_scan_is_enabled"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"rpa_gen"
.LASF29:
	.string	"ll_addr_get"
.LASF15:
	.string	"scan_interval"
.LASF5:
	.string	"long unsigned int"
.LASF31:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF34:
	.string	"ll_create_connection"
.LASF22:
	.string	"latency"
.LASF11:
	.string	"u16_t"
.LASF12:
	.string	"u32_t"
.LASF8:
	.string	"unsigned int"
.LASF30:
	.string	"radio_scan_enable"
.LASF14:
	.string	"char"
.LASF10:
	.string	"u8_t"
.LASF20:
	.string	"own_addr_type"
.LASF35:
	.string	"aos_log_level"
.LASF13:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF26:
	.string	"rl_idx"
.LASF23:
	.string	"timeout"
.LASF33:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF21:
	.string	"interval"
.LASF17:
	.string	"filter_policy"
.LASF18:
	.string	"peer_addr_type"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"scan_window"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
