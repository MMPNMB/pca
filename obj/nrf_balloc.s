	.file	"nrf_balloc.c"
	.text
.Ltext0:
	.section	.text.unlikely.nrf_balloc_init,"ax",@progbits
.LCOLDB0:
	.section	.text.nrf_balloc_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.nrf_balloc_init
.Ltext_cold0:
	.section	.text.nrf_balloc_init
	.globl	nrf_balloc_init
	.type	nrf_balloc_init, @function
nrf_balloc_init:
.LFB144:
	.file 1 "src/nrf_balloc.c"
	.loc 1 3421 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$14, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3421 0
	movl	8(%ebp), %edx
	.loc 1 3423 0
	testl	%edx, %edx
	je	.L2
	.loc 1 3431 0
	movl	4(%edx), %ecx
	movb	8(%edx), %al
	.loc 1 3434 0
	movl	(%edx), %ebx
	.loc 1 3431 0
	subl	%ecx, %eax
.LVL1:
	.loc 1 3434 0
	movl	%ecx, (%ebx)
.LVL2:
.L3:
	.loc 1 3435 0
	decl	%eax
.LVL3:
	movl	(%edx), %ecx
	cmpb	$-1, %al
	je	.L9
	.loc 1 3437 0
	movl	(%ecx), %ebx
	leal	1(%ebx), %esi
	movl	%esi, (%ecx)
	movb	%al, (%ebx)
	jmp	.L3
.L9:
	.loc 1 3439 0
	movb	$0, 4(%ecx)
	.loc 1 3440 0
	xorl	%eax, %eax
.LVL4:
.L2:
	.loc 1 3441 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE144:
	.size	nrf_balloc_init, .-nrf_balloc_init
	.section	.text.unlikely.nrf_balloc_init
.LCOLDE0:
	.section	.text.nrf_balloc_init
.LHOTE0:
	.section	.text.unlikely.nrf_balloc_alloc,"ax",@progbits
.LCOLDB1:
	.section	.text.nrf_balloc_alloc,"ax",@progbits
.LHOTB1:
	.globl	nrf_balloc_alloc
	.type	nrf_balloc_alloc, @function
nrf_balloc_alloc:
.LFB145:
	.loc 1 3443 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3443 0
	movl	8(%ebp), %esi
	.loc 1 3447 0
	xorl	%ebx, %ebx
	.loc 1 3450 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_enter
.LVL6:
	.loc 1 3453 0
	movl	(%esi), %edx
	addl	$16, %esp
	movl	(%edx), %eax
	cmpl	4(%esi), %eax
	jbe	.L11
.LBB7:
	.loc 1 3455 0
	leal	-1(%eax), %ecx
	movl	%ecx, (%edx)
.LVL7:
.LBB8:
.LBB9:
	.loc 1 3411 0
	movzbl	-1(%eax), %ebx
	movzwl	16(%esi), %eax
	imull	%eax, %ebx
.LBE9:
.LBE8:
	.loc 1 3456 0
	movl	8(%esi), %eax
.LBB11:
.LBB10:
	.loc 1 3411 0
	addl	12(%esi), %ebx
.LVL8:
.LBE10:
.LBE11:
	.loc 1 3456 0
	subl	%ecx, %eax
.LVL9:
	.loc 1 3457 0
	cmpb	4(%edx), %al
	jbe	.L11
	.loc 1 3459 0
	movb	%al, 4(%edx)
.LVL10:
.L11:
.LBE7:
	.loc 1 3462 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_exit
.LVL11:
	.loc 1 3466 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
.LVL12:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE145:
	.size	nrf_balloc_alloc, .-nrf_balloc_alloc
	.section	.text.unlikely.nrf_balloc_alloc
.LCOLDE1:
	.section	.text.nrf_balloc_alloc
.LHOTE1:
	.section	.text.unlikely.nrf_balloc_free,"ax",@progbits
.LCOLDB2:
	.section	.text.nrf_balloc_free,"ax",@progbits
.LHOTB2:
	.globl	nrf_balloc_free
	.type	nrf_balloc_free, @function
nrf_balloc_free:
.LFB146:
	.loc 1 3468 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3468 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
.LVL14:
	.loc 1 3478 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_enter
.LVL15:
	.loc 1 3481 0
	movl	(%esi), %eax
	.loc 1 3482 0
	addl	$16, %esp
	.loc 1 3481 0
	movl	(%eax), %ecx
	leal	1(%ecx), %edx
	movl	%edx, (%eax)
	movl	%ebx, %eax
	movzwl	16(%esi), %ebx
	subl	12(%esi), %eax
	xorl	%edx, %edx
	divl	%ebx
	movb	%al, (%ecx)
	.loc 1 3482 0
	movl	$0, 8(%ebp)
	.loc 1 3483 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3482 0
	jmp	app_util_critical_region_exit
.LVL16:
	.cfi_endproc
.LFE146:
	.size	nrf_balloc_free, .-nrf_balloc_free
	.section	.text.unlikely.nrf_balloc_free
.LCOLDE2:
	.section	.text.nrf_balloc_free
.LHOTE2:
	.text
.Letext0:
	.section	.text.unlikely.nrf_balloc_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x346
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF45
	.byte	0xc
	.long	.LASF46
	.long	.LASF47
	.long	.Ldebug_ranges0+0x18
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
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x30
	.long	0x90
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.value	0x124
	.long	0xb8
	.uleb128 0x7
	.long	0xad
	.uleb128 0x8
	.byte	0x4
	.long	0x97
	.uleb128 0x9
	.byte	0x8
	.byte	0x1
	.value	0xcd3
	.long	0x120
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.value	0xcd5
	.long	0xf6
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.value	0xcd6
	.long	0x97
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.value	0xcd7
	.long	0xfc
	.uleb128 0x9
	.byte	0x14
	.byte	0x1
	.value	0xcd8
	.long	0x177
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.value	0xcda
	.long	0x177
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.value	0xcdb
	.long	0xf6
	.byte	0x4
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.value	0xcdc
	.long	0xf6
	.byte	0x8
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.value	0xcdd
	.long	0xdc
	.byte	0xc
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.value	0xcde
	.long	0xa2
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x120
	.uleb128 0x6
	.long	.LASF30
	.byte	0x1
	.value	0xcdf
	.long	0x12c
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.value	0xd4e
	.long	0xdc
	.byte	0x1
	.long	0x1b3
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.value	0xd4e
	.long	0x1b3
	.uleb128 0xd
	.string	"idx"
	.byte	0x1
	.value	0xd4e
	.long	0x97
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x1b9
	.uleb128 0xe
	.long	0x17d
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.value	0xd55
	.long	0x97
	.byte	0x1
	.long	0x1e8
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.value	0xd55
	.long	0x1b3
	.uleb128 0xc
	.long	.LASF34
	.byte	0x1
	.value	0xd55
	.long	0x1e8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x1ee
	.uleb128 0xf
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.value	0xd5c
	.long	0xe5
	.long	.LFB144
	.long	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x22a
	.uleb128 0x11
	.long	.LASF31
	.byte	0x1
	.value	0xd5c
	.long	0x1b3
	.long	.LLST0
	.uleb128 0x12
	.long	.LASF37
	.byte	0x1
	.value	0xd5e
	.long	0x97
	.long	.LLST1
	.byte	0
	.uleb128 0x10
	.long	.LASF36
	.byte	0x1
	.value	0xd72
	.long	0xdc
	.long	.LFB145
	.long	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b7
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.value	0xd72
	.long	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.value	0xd77
	.long	0xdc
	.long	.LLST2
	.uleb128 0x14
	.long	.LBB7
	.long	.LBE7-.LBB7
	.long	0x2a4
	.uleb128 0x12
	.long	.LASF38
	.byte	0x1
	.value	0xd80
	.long	0x97
	.long	.LLST3
	.uleb128 0x15
	.long	0x189
	.long	.LBB8
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xd7f
	.uleb128 0x16
	.long	0x1a6
	.long	.LLST4
	.uleb128 0x16
	.long	0x19a
	.long	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LVL6
	.long	0x331
	.uleb128 0x17
	.long	.LVL11
	.long	0x33d
	.byte	0
	.uleb128 0x18
	.long	.LASF48
	.byte	0x1
	.value	0xd8b
	.long	.LFB146
	.long	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x30d
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1
	.value	0xd8b
	.long	0x1b3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF39
	.byte	0x1
	.value	0xd8b
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.value	0xd95
	.long	0xdc
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LVL15
	.long	0x331
	.uleb128 0x1a
	.long	.LVL16
	.long	0x33d
	.byte	0
	.uleb128 0x1b
	.long	.LASF40
	.byte	0x1
	.value	0x4fe
	.long	0xf1
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x1
	.value	0xac0
	.long	0xb8
	.uleb128 0x1b
	.long	.LASF42
	.byte	0x1
	.value	0xac1
	.long	0xb8
	.uleb128 0x1c
	.long	.LASF43
	.long	.LASF43
	.byte	0x1
	.value	0xccf
	.uleb128 0x1c
	.long	.LASF44
	.long	.LASF44
	.byte	0x1
	.value	0xcd0
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.long	.LVL0
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL4
	.long	.LFE144
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.value	0xa
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	.LVL12
	.long	.LFE145
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x71
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB144
	.long	.LFE144-.LFB144
	.long	.LFB145
	.long	.LFE145-.LFB145
	.long	.LFB146
	.long	.LFE146-.LFB146
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB8
	.long	.LBE8
	.long	.LBB11
	.long	.LBE11
	.long	0
	.long	0
	.long	.LFB144
	.long	.LFE144
	.long	.LFB145
	.long	.LFE145
	.long	.LFB146
	.long	.LFE146
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"nrf_balloc_alloc"
.LASF3:
	.string	"__uint8_t"
.LASF17:
	.string	"size_t"
.LASF45:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF6:
	.string	"__int32_t"
.LASF35:
	.string	"nrf_balloc_init"
.LASF24:
	.string	"nrf_balloc_cb_t"
.LASF25:
	.string	"p_cb"
.LASF27:
	.string	"p_stack_limit"
.LASF11:
	.string	"long long unsigned int"
.LASF37:
	.string	"pool_size"
.LASF21:
	.string	"ret_code_t"
.LASF1:
	.string	"unsigned char"
.LASF38:
	.string	"utilization"
.LASF9:
	.string	"long unsigned int"
.LASF48:
	.string	"nrf_balloc_free"
.LASF5:
	.string	"short unsigned int"
.LASF29:
	.string	"block_size"
.LASF40:
	.string	"ITM_RxBuffer"
.LASF34:
	.string	"p_block"
.LASF22:
	.string	"p_stack_pointer"
.LASF4:
	.string	"__uint16_t"
.LASF23:
	.string	"max_utilization"
.LASF8:
	.string	"__uint32_t"
.LASF31:
	.string	"p_pool"
.LASF12:
	.string	"unsigned int"
.LASF42:
	.string	"__StackLimit"
.LASF20:
	.string	"char"
.LASF13:
	.string	"uint8_t"
.LASF41:
	.string	"__StackTop"
.LASF43:
	.string	"app_util_critical_region_enter"
.LASF15:
	.string	"int32_t"
.LASF19:
	.string	"sizetype"
.LASF10:
	.string	"long long int"
.LASF47:
	.string	"/home/stone/Documents/pca"
.LASF26:
	.string	"p_stack_base"
.LASF14:
	.string	"uint16_t"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF32:
	.string	"nrf_balloc_idx2block"
.LASF18:
	.string	"long double"
.LASF30:
	.string	"nrf_balloc_t"
.LASF0:
	.string	"signed char"
.LASF33:
	.string	"nrf_balloc_block2idx"
.LASF39:
	.string	"p_element"
.LASF28:
	.string	"p_memory_begin"
.LASF46:
	.string	"src/nrf_balloc.c"
.LASF44:
	.string	"app_util_critical_region_exit"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
