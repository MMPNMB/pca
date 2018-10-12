	.file	"memq.c"
	.text
.Ltext0:
	.section	.text.unlikely.memq_init,"ax",@progbits
.LCOLDB0:
	.section	.text.memq_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.memq_init
.Ltext_cold0:
	.section	.text.memq_init
	.globl	memq_init
	.type	memq_init, @function
memq_init:
.LFB0:
	.file 1 "src/memq.c"
	.loc 1 74 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 74 0
	movl	8(%ebp), %eax
	.loc 1 75 0
	movl	16(%ebp), %edx
	movl	%eax, (%edx)
	movl	12(%ebp), %edx
	movl	%eax, (%edx)
	.loc 1 77 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	memq_init, .-memq_init
	.section	.text.unlikely.memq_init
.LCOLDE0:
	.section	.text.memq_init
.LHOTE0:
	.section	.text.unlikely.memq_enqueue,"ax",@progbits
.LCOLDB1:
	.section	.text.memq_enqueue,"ax",@progbits
.LHOTB1:
	.globl	memq_enqueue
	.type	memq_enqueue, @function
memq_enqueue:
.LFB1:
	.loc 1 79 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 79 0
	movl	16(%ebp), %edx
	movl	8(%ebp), %eax
	.loc 1 81 0
	movl	12(%ebp), %ebx
	.loc 1 80 0
	movl	(%edx), %ecx
	movl	%eax, (%ecx)
	.loc 1 81 0
	movl	(%edx), %ecx
	movl	%ebx, 4(%ecx)
	.loc 1 82 0
	movl	%eax, (%edx)
	.loc 1 84 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	memq_enqueue, .-memq_enqueue
	.section	.text.unlikely.memq_enqueue
.LCOLDE1:
	.section	.text.memq_enqueue
.LHOTE1:
	.section	.text.unlikely.memq_peek,"ax",@progbits
.LCOLDB2:
	.section	.text.memq_peek,"ax",@progbits
.LHOTB2:
	.globl	memq_peek
	.type	memq_peek, @function
memq_peek:
.LFB2:
	.loc 1 86 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 89 0
	xorl	%eax, %eax
	.loc 1 86 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 86 0
	movl	8(%ebp), %edx
	.loc 1 87 0
	cmpl	12(%ebp), %edx
	.loc 1 86 0
	movl	16(%ebp), %ecx
	.loc 1 87 0
	je	.L6
	.loc 1 92 0
	testl	%ecx, %ecx
	movl	%edx, %eax
	je	.L6
	.loc 1 93 0
	movl	4(%edx), %eax
	movl	%eax, (%ecx)
	movl	%edx, %eax
.LVL3:
.L6:
	.loc 1 96 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	memq_peek, .-memq_peek
	.section	.text.unlikely.memq_peek
.LCOLDE2:
	.section	.text.memq_peek
.LHOTE2:
	.section	.text.unlikely.memq_dequeue,"ax",@progbits
.LCOLDB3:
	.section	.text.memq_dequeue,"ax",@progbits
.LHOTB3:
	.globl	memq_dequeue
	.type	memq_dequeue, @function
memq_dequeue:
.LFB3:
	.loc 1 98 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 98 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %ecx
	.loc 1 100 0
	movl	(%edx), %eax
.LVL5:
.LBB4:
.LBB5:
	.loc 1 87 0
	cmpl	8(%ebp), %eax
	je	.L15
	.loc 1 92 0
	testl	%ecx, %ecx
	je	.L13
	.loc 1 93 0
	movl	4(%eax), %ebx
	movl	%ebx, (%ecx)
.LVL6:
	jmp	.L14
.LVL7:
.L13:
.LBE5:
.LBE4:
	.loc 1 101 0
	testl	%eax, %eax
	je	.L12
.L14:
	.loc 1 104 0
	movl	(%eax), %ecx
	movl	%ecx, (%edx)
	.loc 1 105 0
	jmp	.L12
.LVL8:
.L15:
.LBB7:
.LBB6:
	.loc 1 89 0
	xorl	%eax, %eax
.LVL9:
.L12:
.LBE6:
.LBE7:
	.loc 1 106 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	memq_dequeue, .-memq_dequeue
	.section	.text.unlikely.memq_dequeue
.LCOLDE3:
	.section	.text.memq_dequeue
.LHOTE3:
	.text
.Letext0:
	.section	.text.unlikely.memq_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x218
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF16
	.byte	0xc
	.long	.LASF17
	.long	.LASF18
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
	.long	.LASF19
	.byte	0x8
	.byte	0x1
	.byte	0x3e
	.long	0x97
	.uleb128 0x5
	.long	.LASF10
	.byte	0x1
	.byte	0x3f
	.long	0x97
	.byte	0
	.uleb128 0x6
	.string	"mem"
	.byte	0x1
	.byte	0x40
	.long	0x9d
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x72
	.uleb128 0x8
	.byte	0x4
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x42
	.long	0x72
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.byte	0x55
	.long	0xdc
	.byte	0x3
	.long	0xdc
	.uleb128 0xb
	.long	.LASF11
	.byte	0x1
	.byte	0x55
	.long	0xdc
	.uleb128 0xb
	.long	.LASF12
	.byte	0x1
	.byte	0x55
	.long	0xdc
	.uleb128 0xc
	.string	"mem"
	.byte	0x1
	.byte	0x55
	.long	0xe2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x9f
	.uleb128 0x7
	.byte	0x4
	.long	0x9d
	.uleb128 0xd
	.long	.LASF14
	.byte	0x1
	.byte	0x49
	.long	0xdc
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x12c
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x49
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LASF11
	.byte	0x1
	.byte	0x49
	.long	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.long	.LASF12
	.byte	0x1
	.byte	0x49
	.long	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xdc
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1
	.byte	0x4e
	.long	0xdc
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x176
	.uleb128 0xe
	.long	.LASF13
	.byte	0x1
	.byte	0x4e
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.string	"mem"
	.byte	0x1
	.byte	0x4e
	.long	0x9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.long	.LASF12
	.byte	0x1
	.byte	0x4e
	.long	0x12c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x10
	.long	0xaa
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a3
	.uleb128 0x11
	.long	0xba
	.long	.LLST0
	.uleb128 0x12
	.long	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.long	0xd0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0x61
	.long	0xdc
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF12
	.byte	0x1
	.byte	0x61
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF11
	.byte	0x1
	.byte	0x61
	.long	0x12c
	.long	.LLST1
	.uleb128 0x15
	.string	"mem"
	.byte	0x1
	.byte	0x61
	.long	0xe2
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF13
	.byte	0x1
	.byte	0x63
	.long	0xdc
	.uleb128 0x17
	.long	0xaa
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.long	0xd0
	.long	.LLST3
	.uleb128 0x11
	.long	0xc5
	.long	.LLST4
	.uleb128 0x11
	.long	0xba
	.long	.LLST5
	.byte	0
	.byte	0
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL2
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL3
	.long	.LFE2
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL8
	.long	.LFE3
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x51
	.long	.LVL9
	.long	.LFE3
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
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
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"next"
.LASF14:
	.string	"memq_init"
.LASF20:
	.string	"memq_link_t"
.LASF19:
	.string	"_memq_link"
.LASF21:
	.string	"memq_peek"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF16:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"head"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF17:
	.string	"src/memq.c"
.LASF15:
	.string	"memq_enqueue"
.LASF13:
	.string	"link"
.LASF6:
	.string	"long long int"
.LASF22:
	.string	"memq_dequeue"
.LASF18:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"tail"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
