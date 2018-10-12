	.file	"ll_scan.c"
	.text
.Ltext0:
	.section	.text.unlikely.ll_scan_params_set,"ax",@progbits
.LCOLDB0:
	.section	.text.ll_scan_params_set,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ll_scan_params_set
.Ltext_cold0:
	.section	.text.ll_scan_params_set
	.globl	ll_scan_params_set
	.type	ll_scan_params_set, @function
ll_scan_params_set:
.LFB50:
	.file 1 "src/ll_scan.c"
	.loc 1 2851 0
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 2851 0
	movl	20(%ebp), %eax
	movl	8(%ebp), %edi
	movl	12(%ebp), %esi
	movl	16(%ebp), %ebx
	movl	%eax, -28(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 2852 0
	call	radio_scan_is_enabled
.LVL1:
	testl	%eax, %eax
	jne	.L3
	.loc 1 2855 0
	movl	%edi, %edx
	.loc 1 2857 0
	movw	%bx, ll_scan+2
	.loc 1 2855 0
	movl	ll_scan+4, %edi
	.loc 1 2858 0
	movb	-28(%ebp), %bl
	.loc 1 2855 0
	andl	$1, %edx
	.loc 1 2856 0
	movw	%si, ll_scan
	.loc 1 2859 0
	movl	-32(%ebp), %esi
	.loc 1 2855 0
	andl	$-8, %edi
	.loc 1 2858 0
	andl	$3, %ebx
	orl	%edx, %edi
	addl	%ebx, %ebx
	.loc 1 2859 0
	andl	$3, %esi
	.loc 1 2858 0
	orl	%ebx, %edi
	.loc 1 2859 0
	sall	$3, %esi
	andl	$-25, %edi
	movl	%edi, %edx
	orl	%esi, %edx
	movb	%dl, ll_scan+4
	.loc 1 2860 0
	jmp	.L2
.L3:
	.loc 1 2853 0
	movl	$12, %eax
.L2:
	.loc 1 2861 0
	addl	$28, %esp
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
	.size	ll_scan_params_set, .-ll_scan_params_set
	.section	.text.unlikely.ll_scan_params_set
.LCOLDE0:
	.section	.text.ll_scan_params_set
.LHOTE0:
	.section	.text.unlikely.ll_scan_enable,"ax",@progbits
.LCOLDB1:
	.section	.text.ll_scan_enable,"ax",@progbits
.LHOTB1:
	.globl	ll_scan_enable
	.type	ll_scan_enable, @function
ll_scan_enable:
.LFB51:
	.loc 1 2863 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 2866 0
	cmpb	$0, 8(%ebp)
	jne	.L7
	.loc 1 2879 0
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
	.loc 1 2867 0
	jmp	radio_scan_disable
.LVL3:
.L7:
	.cfi_restore_state
	.loc 1 2868 0
	call	radio_scan_is_enabled
.LVL4:
	.loc 1 2869 0
	xorl	%edx, %edx
	.loc 1 2868 0
	testl	%eax, %eax
	jne	.L8
	.loc 1 2876 0
	movb	ll_scan+4, %al
	.loc 1 2871 0
	movzwl	ll_scan+2, %edi
	movzwl	ll_scan, %esi
	pushl	%edx
	pushl	%edx
	pushl	$0
	.loc 1 2876 0
	movb	%al, %bl
	.loc 1 2872 0
	shrb	%al
	.loc 1 2871 0
	andl	$1, %eax
	.loc 1 2876 0
	shrb	$3, %bl
	.loc 1 2871 0
	pushl	%eax
	andl	$3, %ebx
	call	ll_addr_get
.LVL5:
	pushl	$255
	pushl	$0
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movb	ll_scan+4, %al
	movb	%al, %dl
	andl	$1, %eax
	shrb	%dl
	andl	$1, %edx
	pushl	%edx
	pushl	%eax
	call	radio_scan_enable
.LVL6:
	.loc 1 2878 0
	addl	$48, %esp
	movl	%eax, %edx
.LVL7:
.L8:
	.loc 1 2879 0
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
.LFE51:
	.size	ll_scan_enable, .-ll_scan_enable
	.section	.text.unlikely.ll_scan_enable
.LCOLDE1:
	.section	.text.ll_scan_enable
.LHOTE1:
	.section	.bss.ll_scan,"aw",@nobits
	.align 4
	.type	ll_scan, @object
	.size	ll_scan, 6
ll_scan:
	.zero	6
	.text
.Letext0:
	.section	.text.unlikely.ll_scan_params_set
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x27a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF42
	.byte	0xc
	.long	.LASF43
	.long	.LASF44
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
	.long	.LASF20
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0x386
	.long	0xd1
	.uleb128 0x6
	.long	.LASF15
	.byte	0
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.uleb128 0x6
	.long	.LASF17
	.byte	0x2
	.uleb128 0x6
	.long	.LASF18
	.byte	0x3
	.uleb128 0x6
	.long	.LASF19
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF21
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0x38d
	.long	0x101
	.uleb128 0x6
	.long	.LASF22
	.byte	0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.uleb128 0x6
	.long	.LASF24
	.byte	0x2
	.uleb128 0x6
	.long	.LASF25
	.byte	0x3
	.uleb128 0x6
	.long	.LASF26
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x6
	.byte	0x1
	.value	0xb1a
	.long	0x155
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.value	0xb1b
	.long	0x7d
	.byte	0
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.value	0xb1c
	.long	0x7d
	.byte	0x2
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.value	0xb1d
	.long	0x72
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x4
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.value	0xb1e
	.long	0x72
	.byte	0x1
	.byte	0x2
	.byte	0x5
	.byte	0x4
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.value	0xb1f
	.long	0x72
	.byte	0x1
	.byte	0x2
	.byte	0x3
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.value	0xb21
	.long	0x88
	.long	.LFB50
	.long	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c4
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.value	0xb21
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.value	0xb21
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.long	.LASF28
	.byte	0x1
	.value	0xb21
	.long	0x7d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.value	0xb22
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xb
	.long	.LASF31
	.byte	0x1
	.value	0xb22
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.long	.LVL1
	.long	0x24d
	.byte	0
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.value	0xb2e
	.long	0x88
	.long	.LFB51
	.long	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.value	0xb2e
	.long	0x72
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.value	0xb30
	.long	0x88
	.long	.LLST0
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.value	0xb31
	.long	0x72
	.byte	0
	.uleb128 0xf
	.long	.LVL3
	.long	0x259
	.uleb128 0xc
	.long	.LVL4
	.long	0x24d
	.uleb128 0xc
	.long	.LVL5
	.long	0x265
	.uleb128 0xc
	.long	.LVL6
	.long	0x271
	.byte	0
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.value	0xb20
	.long	0x101
	.uleb128 0x5
	.byte	0x3
	.long	ll_scan
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.value	0x222
	.long	0x64
	.uleb128 0x12
	.long	.LASF38
	.long	.LASF38
	.byte	0x1
	.value	0xaad
	.uleb128 0x12
	.long	.LASF39
	.long	.LASF39
	.byte	0x1
	.value	0xaac
	.uleb128 0x12
	.long	.LASF40
	.long	.LASF40
	.byte	0x1
	.value	0xac3
	.uleb128 0x12
	.long	.LASF41
	.long	.LASF41
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
	.uleb128 0x5
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.long	.LVL6
	.long	.LVL7
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
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF18:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF24:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF43:
	.string	"src/ll_scan.c"
.LASF44:
	.string	"/home/stone/Documents/pca"
.LASF34:
	.string	"enable"
.LASF35:
	.string	"status"
.LASF38:
	.string	"radio_scan_is_enabled"
.LASF11:
	.string	"u16_t"
.LASF7:
	.string	"long long unsigned int"
.LASF17:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF1:
	.string	"unsigned char"
.LASF36:
	.string	"rpa_gen"
.LASF33:
	.string	"ll_scan_enable"
.LASF23:
	.string	"_POLL_STATE_SIGNALED"
.LASF42:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"_POLL_NUM_STATES"
.LASF20:
	.string	"_poll_types_bits"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"u32_t"
.LASF40:
	.string	"ll_addr_get"
.LASF19:
	.string	"_POLL_NUM_TYPES"
.LASF8:
	.string	"unsigned int"
.LASF41:
	.string	"radio_scan_enable"
.LASF14:
	.string	"char"
.LASF39:
	.string	"radio_scan_disable"
.LASF10:
	.string	"u8_t"
.LASF30:
	.string	"own_addr_type"
.LASF32:
	.string	"ll_scan_params_set"
.LASF45:
	.string	"aos_log_level"
.LASF9:
	.string	"long double"
.LASF13:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF37:
	.string	"ll_scan"
.LASF16:
	.string	"_POLL_TYPE_SIGNAL"
.LASF29:
	.string	"type"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"interval"
.LASF31:
	.string	"filter_policy"
.LASF21:
	.string	"_poll_states_bits"
.LASF4:
	.string	"long int"
.LASF28:
	.string	"window"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"_POLL_STATE_NOT_READY"
.LASF15:
	.string	"_POLL_TYPE_IGNORE"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
