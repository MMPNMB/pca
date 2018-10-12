	.file	"rpa.c"
	.text
.Ltext0:
	.section	.text.unlikely.bt_rpa_irk_matches,"ax",@progbits
.LCOLDB0:
	.section	.text.bt_rpa_irk_matches,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.bt_rpa_irk_matches
.Ltext_cold0:
	.section	.text.bt_rpa_irk_matches
	.globl	bt_rpa_irk_matches
	.type	bt_rpa_irk_matches, @function
bt_rpa_irk_matches:
.LFB75:
	.file 1 "src/rpa.c"
	.loc 1 2979 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB4:
.LBB5:
	.loc 1 2969 0
	movl	$13, %ecx
.LBE5:
.LBE4:
	.loc 1 2979 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LBB9:
.LBB6:
	.loc 1 2969 0
	leal	-41(%ebp), %esi
	.loc 1 2968 0
	leal	-44(%ebp), %edx
.LBE6:
.LBE9:
	.loc 1 2979 0
	subl	$48, %esp
	.loc 1 2979 0
	movl	12(%ebp), %ebx
.LBB10:
.LBB7:
	.loc 1 2969 0
	movl	%esi, %edi
.LBE7:
.LBE10:
	.loc 1 2979 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL1:
.LBB11:
.LBB8:
	.loc 1 2968 0
	movw	3(%ebx), %ax
	movw	%ax, -44(%ebp)
	movb	5(%ebx), %al
	movb	%al, -42(%ebp)
	.loc 1 2969 0
	xorl	%eax, %eax
	rep stosb
	.loc 1 2970 0
	pushl	%edx
	pushl	%edx
	pushl	8(%ebp)
	call	bt_encrypt_le
.LVL2:
	.loc 1 2971 0
	addl	$16, %esp
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	.L3
	.loc 1 2974 0
	movl	-44(%ebp), %eax
.LVL3:
	movw	%ax, -47(%ebp)
	movb	-42(%ebp), %al
	movb	%al, -45(%ebp)
.LVL4:
.LBE8:
.LBE11:
	.loc 1 2989 0
	pushl	%eax
	leal	-47(%ebp), %eax
	pushl	$3
	pushl	%eax
	pushl	%ebx
	call	memcmp
.LVL5:
	addl	$16, %esp
	testl	%eax, %eax
	sete	%dl
.L3:
	.loc 1 2990 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movb	%dl, %al
	je	.L4
	call	__stack_chk_fail
.LVL6:
.L4:
	leal	-12(%ebp), %esp
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
.LFE75:
	.size	bt_rpa_irk_matches, .-bt_rpa_irk_matches
	.section	.text.unlikely.bt_rpa_irk_matches
.LCOLDE0:
	.section	.text.bt_rpa_irk_matches
.LHOTE0:
	.section	.text.unlikely.bt_rpa_create,"ax",@progbits
.LCOLDB1:
	.section	.text.bt_rpa_create,"ax",@progbits
.LHOTB1:
	.globl	bt_rpa_create
	.type	bt_rpa_create, @function
bt_rpa_create:
.LFB76:
	.loc 1 2992 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 2994 0
	movl	$-35, %eax
	.loc 1 2992 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2994 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE76:
	.size	bt_rpa_create, .-bt_rpa_create
	.section	.text.unlikely.bt_rpa_create
.LCOLDE1:
	.section	.text.bt_rpa_create
.LHOTE1:
	.text
.Letext0:
	.section	.text.unlikely.bt_rpa_irk_matches
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x26b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.byte	0xc
	.long	.LASF21
	.long	.LASF22
	.long	.Ldebug_ranges0+0x28
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
	.long	.LASF12
	.byte	0x1
	.byte	0x3a
	.long	0x2c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x72
	.uleb128 0x6
	.byte	0x6
	.byte	0x1
	.value	0x5bc
	.long	0xa8
	.uleb128 0x7
	.string	"val"
	.byte	0x1
	.value	0x5bd
	.long	0xa8
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	0x72
	.long	0xb8
	.uleb128 0x9
	.long	0x7d
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	.LASF13
	.byte	0x1
	.value	0x5be
	.long	0x91
	.uleb128 0x8
	.long	0x72
	.long	0xd4
	.uleb128 0x9
	.long	0x7d
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x72
	.long	0xe4
	.uleb128 0x9
	.long	0x7d
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xea
	.uleb128 0xb
	.long	0x72
	.uleb128 0x5
	.byte	0x4
	.long	0xf5
	.uleb128 0xb
	.long	0xb8
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF14
	.uleb128 0xc
	.string	"ah"
	.byte	0x1
	.value	0xb93
	.long	0x5d
	.byte	0x1
	.long	0x14c
	.uleb128 0xd
	.string	"irk"
	.byte	0x1
	.value	0xb93
	.long	0xe4
	.uleb128 0xd
	.string	"r"
	.byte	0x1
	.value	0xb93
	.long	0xe4
	.uleb128 0xd
	.string	"out"
	.byte	0x1
	.value	0xb93
	.long	0x8b
	.uleb128 0xe
	.string	"res"
	.byte	0x1
	.value	0xb95
	.long	0xd4
	.uleb128 0xe
	.string	"err"
	.byte	0x1
	.value	0xb96
	.long	0x5d
	.byte	0
	.uleb128 0xf
	.long	.LASF16
	.byte	0x1
	.value	0xba2
	.long	0xfa
	.long	.LFB75
	.long	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x202
	.uleb128 0x10
	.string	"irk"
	.byte	0x1
	.value	0xba2
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LASF15
	.byte	0x1
	.value	0xba2
	.long	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	.LASF23
	.byte	0x1
	.value	0xba4
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -55
	.uleb128 0xe
	.string	"err"
	.byte	0x1
	.value	0xba5
	.long	0x5d
	.uleb128 0x13
	.long	0x101
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xba7
	.long	0x1ef
	.uleb128 0x14
	.long	0x127
	.long	.LLST0
	.uleb128 0x14
	.long	0x11d
	.long	.LLST1
	.uleb128 0x14
	.long	0x111
	.long	.LLST2
	.uleb128 0x15
	.long	.Ldebug_ranges0+0
	.uleb128 0x16
	.long	0x133
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.long	0x13f
	.long	.LLST3
	.uleb128 0x18
	.long	.LVL2
	.long	0x24d
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LVL5
	.long	0x259
	.uleb128 0x18
	.long	.LVL6
	.long	0x265
	.byte	0
	.uleb128 0xf
	.long	.LASF17
	.byte	0x1
	.value	0xbaf
	.long	0x5d
	.long	.LFB76
	.long	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x23b
	.uleb128 0x10
	.string	"irk"
	.byte	0x1
	.value	0xbaf
	.long	0xe4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"rpa"
	.byte	0x1
	.value	0xbaf
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xb8
	.uleb128 0x19
	.long	.LASF24
	.byte	0x1
	.value	0x222
	.long	0x64
	.uleb128 0x1a
	.long	.LASF18
	.long	.LASF18
	.byte	0x1
	.value	0xb2d
	.uleb128 0x1a
	.long	.LASF19
	.long	.LASF19
	.byte	0x1
	.value	0x2b3
	.uleb128 0x1b
	.long	.LASF25
	.long	.LASF25
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL4
	.value	0x3
	.byte	0x91
	.sleb128 -55
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL4
	.value	0x3
	.byte	0x73
	.sleb128 3
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL3
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
	.long	.LFB75
	.long	.LFE75-.LFB75
	.long	.LFB76
	.long	.LFE76-.LFB76
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB4
	.long	.LBE4
	.long	.LBB9
	.long	.LBE9
	.long	.LBB10
	.long	.LBE10
	.long	.LBB11
	.long	.LBE11
	.long	0
	.long	0
	.long	.LFB75
	.long	.LFE75
	.long	.LFB76
	.long	.LFE76
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF13:
	.string	"bt_addr_t"
.LASF19:
	.string	"memcmp"
.LASF3:
	.string	"short unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF21:
	.string	"src/rpa.c"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF20:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF15:
	.string	"addr"
.LASF16:
	.string	"bt_rpa_irk_matches"
.LASF25:
	.string	"__stack_chk_fail"
.LASF11:
	.string	"char"
.LASF12:
	.string	"u8_t"
.LASF23:
	.string	"hash"
.LASF24:
	.string	"aos_log_level"
.LASF10:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF22:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"long int"
.LASF18:
	.string	"bt_encrypt_le"
.LASF9:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"bt_rpa_create"
.LASF14:
	.string	"_Bool"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
