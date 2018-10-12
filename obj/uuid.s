	.file	"uuid.c"
	.text
.Ltext0:
	.section	.text.unlikely.uuid_to_uuid128,"ax",@progbits
.LCOLDB0:
	.section	.text.uuid_to_uuid128,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.uuid_to_uuid128
.Ltext_cold0:
	.section	.text.uuid_to_uuid128
	.type	uuid_to_uuid128, @function
uuid_to_uuid128:
.LFB59:
	.file 1 "src/uuid.c"
	.loc 1 1349 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 1350 0
	movb	(%eax), %cl
	testb	%cl, %cl
	je	.L3
	decb	%cl
	jne	.L1
	.loc 1 1363 0
	movl	$uuid128_base, %esi
	movl	$17, %ecx
	movl	%edx, %edi
	rep movsb
	.loc 1 1364 0
	movl	4(%eax), %eax
.LVL1:
.LBB20:
.LBB21:
.LBB22:
.LBB23:
	.loc 1 309 0
	movl	%eax, %ecx
	.loc 1 308 0
	movb	%al, 13(%edx)
.LBE23:
.LBE22:
	.loc 1 314 0
	shrl	$16, %eax
.LVL2:
.LBB26:
.LBB24:
	.loc 1 309 0
	shrw	$8, %cx
.LVL3:
.LBE24:
.LBE26:
.LBB27:
.LBB28:
	.loc 1 308 0
	movb	%al, 15(%edx)
	.loc 1 309 0
	shrw	$8, %ax
.LBE28:
.LBE27:
.LBB30:
.LBB25:
	movb	%cl, 14(%edx)
.LVL4:
.LBE25:
.LBE30:
.LBB31:
.LBB29:
	movb	%al, 16(%edx)
.LVL5:
	jmp	.L1
.LVL6:
.L3:
.LBE29:
.LBE31:
.LBE21:
.LBE20:
.LBB32:
.LBB33:
	.loc 1 1352 0
	movl	$uuid128_base, %esi
	movl	$17, %ecx
	movl	%edx, %edi
	rep movsb
	.loc 1 1359 0
	movw	2(%eax), %ax
.LVL7:
.LBB34:
.LBB35:
	.loc 1 308 0
	movb	%al, 13(%edx)
	.loc 1 309 0
	shrw	$8, %ax
.LVL8:
	movb	%al, 14(%edx)
.LVL9:
.L1:
.LBE35:
.LBE34:
.LBE33:
.LBE32:
	.loc 1 1377 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE59:
	.size	uuid_to_uuid128, .-uuid_to_uuid128
	.section	.text.unlikely.uuid_to_uuid128
.LCOLDE0:
	.section	.text.uuid_to_uuid128
.LHOTE0:
	.section	.text.unlikely.bt_uuid_cmp,"ax",@progbits
.LCOLDB1:
	.section	.text.bt_uuid_cmp,"ax",@progbits
.LHOTB1:
	.globl	bt_uuid_cmp
	.type	bt_uuid_cmp, @function
bt_uuid_cmp:
.LFB61:
	.loc 1 1386 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	.loc 1 1386 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	movl	%gs:20, %ecx
	movl	%ecx, -12(%ebp)
	xorl	%ecx, %ecx
	.loc 1 1387 0
	movb	(%eax), %dl
	cmpb	(%ebx), %dl
	je	.L8
.LVL11:
.LBB38:
.LBB39:
	.loc 1 1381 0
	leal	-46(%ebp), %edx
	call	uuid_to_uuid128
.LVL12:
	.loc 1 1382 0
	leal	-29(%ebp), %edx
	movl	%ebx, %eax
	call	uuid_to_uuid128
.LVL13:
	.loc 1 1383 0
	leal	-28(%ebp), %eax
	pushl	%ecx
	pushl	$16
	pushl	%eax
	leal	-45(%ebp), %eax
	jmp	.L17
.LVL14:
.L8:
.LBE39:
.LBE38:
	.loc 1 1390 0
	cmpb	$1, %dl
	je	.L10
	jb	.L11
	cmpb	$2, %dl
	jne	.L18
	.loc 1 1420 0
	incl	%ebx
	incl	%eax
	pushl	%edx
	pushl	$16
	pushl	%ebx
	jmp	.L17
.L11:
	.loc 1 1392 0
	movzwl	2(%eax), %eax
	movzwl	2(%ebx), %edx
	subl	%edx, %eax
	jmp	.L9
.L10:
	.loc 1 1406 0
	movl	4(%eax), %eax
	subl	4(%ebx), %eax
	jmp	.L9
.L17:
	.loc 1 1420 0
	pushl	%eax
	call	memcmp
.LVL15:
	addl	$16, %esp
	jmp	.L9
.L18:
	.loc 1 1434 0
	movl	$-22, %eax
.L9:
	.loc 1 1435 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L13
	call	__stack_chk_fail
.LVL16:
.L13:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE61:
	.size	bt_uuid_cmp, .-bt_uuid_cmp
	.section	.text.unlikely.bt_uuid_cmp
.LCOLDE1:
	.section	.text.bt_uuid_cmp
.LHOTE1:
	.section	.rodata.uuid128_base,"a",@progbits
	.align 4
	.type	uuid128_base, @object
	.size	uuid128_base, 17
uuid128_base:
	.byte	2
	.byte	-5
	.byte	52
	.byte	-101
	.byte	95
	.byte	-128
	.byte	0
	.byte	0
	.byte	-128
	.byte	0
	.byte	16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.text
.Letext0:
	.section	.text.unlikely.uuid_to_uuid128
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x44f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF41
	.byte	0xc
	.long	.LASF42
	.long	.LASF43
	.long	.Ldebug_ranges0+0x38
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.value	0x124
	.long	0x48
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.value	0x125
	.long	0x56
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.value	0x126
	.long	0x2c
	.uleb128 0x5
	.long	.LASF20
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0x4e2
	.long	0xd4
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
	.long	0x2c
	.byte	0x1
	.value	0x4e9
	.long	0x104
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
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0x51d
	.long	0x124
	.uleb128 0x6
	.long	.LASF27
	.byte	0
	.uleb128 0x6
	.long	.LASF28
	.byte	0x1
	.uleb128 0x6
	.long	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF30
	.byte	0x1
	.byte	0x1
	.value	0x522
	.long	0x13f
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.value	0x523
	.long	0x80
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.byte	0x1
	.value	0x525
	.long	0x167
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.value	0x526
	.long	0x124
	.byte	0
	.uleb128 0xa
	.string	"val"
	.byte	0x1
	.value	0x527
	.long	0x8c
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF34
	.byte	0x8
	.byte	0x1
	.value	0x529
	.long	0x18f
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.value	0x52a
	.long	0x124
	.byte	0
	.uleb128 0xa
	.string	"val"
	.byte	0x1
	.value	0x52b
	.long	0x98
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF35
	.byte	0x11
	.byte	0x1
	.value	0x52d
	.long	0x1b7
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.value	0x52e
	.long	0x124
	.byte	0
	.uleb128 0xa
	.string	"val"
	.byte	0x1
	.value	0x52f
	.long	0x1b7
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	0x80
	.long	0x1c7
	.uleb128 0xc
	.long	0x72
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.value	0x132
	.byte	0x3
	.long	0x1ed
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0x132
	.long	0x8c
	.uleb128 0xe
	.string	"dst"
	.byte	0x1
	.value	0x132
	.long	0x1ed
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x80
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.value	0x544
	.byte	0x1
	.long	0x219
	.uleb128 0xe
	.string	"src"
	.byte	0x1
	.value	0x544
	.long	0x219
	.uleb128 0xe
	.string	"dst"
	.byte	0x1
	.value	0x544
	.long	0x224
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x21f
	.uleb128 0x10
	.long	0x124
	.uleb128 0xf
	.byte	0x4
	.long	0x18f
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.value	0x137
	.byte	0x3
	.long	0x250
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0x137
	.long	0x98
	.uleb128 0xe
	.string	"dst"
	.byte	0x1
	.value	0x137
	.long	0x1ed
	.byte	0
	.uleb128 0x11
	.long	0x1f3
	.long	.LFB59
	.long	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x320
	.uleb128 0x12
	.long	0x200
	.long	.LLST0
	.uleb128 0x13
	.long	0x20c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x14
	.long	0x22a
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.value	0x554
	.long	0x2e0
	.uleb128 0x12
	.long	0x243
	.long	.LLST1
	.uleb128 0x12
	.long	0x237
	.long	.LLST2
	.uleb128 0x15
	.long	0x1c7
	.long	.LBB22
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x139
	.long	0x2c0
	.uleb128 0x12
	.long	0x1e0
	.long	.LLST3
	.uleb128 0x12
	.long	0x1d4
	.long	.LLST4
	.byte	0
	.uleb128 0x16
	.long	0x1c7
	.long	.LBB27
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.value	0x13a
	.uleb128 0x12
	.long	0x1e0
	.long	.LLST5
	.uleb128 0x17
	.long	0x1d4
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LBB32
	.long	.LBE32-.LBB32
	.uleb128 0x12
	.long	0x20c
	.long	.LLST6
	.uleb128 0x12
	.long	0x200
	.long	.LLST7
	.uleb128 0x19
	.long	0x1c7
	.long	.LBB34
	.long	.LBE34-.LBB34
	.byte	0x1
	.value	0x549
	.uleb128 0x12
	.long	0x1e0
	.long	.LLST8
	.uleb128 0x12
	.long	0x1d4
	.long	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF44
	.byte	0x1
	.value	0x562
	.long	0x25
	.byte	0x1
	.long	0x360
	.uleb128 0xe
	.string	"u1"
	.byte	0x1
	.value	0x562
	.long	0x219
	.uleb128 0xe
	.string	"u2"
	.byte	0x1
	.value	0x562
	.long	0x219
	.uleb128 0x1b
	.long	.LASF39
	.byte	0x1
	.value	0x564
	.long	0x18f
	.uleb128 0x1b
	.long	.LASF40
	.byte	0x1
	.value	0x564
	.long	0x18f
	.byte	0
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x1
	.value	0x569
	.long	0x25
	.long	.LFB61
	.long	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x41b
	.uleb128 0x1d
	.string	"u1"
	.byte	0x1
	.value	0x569
	.long	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"u2"
	.byte	0x1
	.value	0x569
	.long	0x219
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	0x320
	.long	.LBB38
	.long	.LBE38-.LBB38
	.byte	0x1
	.value	0x56c
	.long	0x408
	.uleb128 0x12
	.long	0x33c
	.long	.LLST10
	.uleb128 0x12
	.long	0x331
	.long	.LLST11
	.uleb128 0x18
	.long	.LBB39
	.long	.LBE39-.LBB39
	.uleb128 0x1e
	.long	0x347
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x1e
	.long	0x353
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x1f
	.long	.LVL12
	.long	0x1f3
	.long	0x3f0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.byte	0
	.uleb128 0x21
	.long	.LVL13
	.long	0x1f3
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LVL15
	.long	0x43e
	.uleb128 0x22
	.long	.LVL16
	.long	0x449
	.byte	0
	.uleb128 0x23
	.long	.LASF46
	.byte	0x1
	.value	0x53d
	.long	0x42d
	.uleb128 0x5
	.byte	0x3
	.long	uuid128_base
	.uleb128 0x10
	.long	0x18f
	.uleb128 0x24
	.long	.LASF47
	.byte	0x1
	.value	0x43b
	.long	0x2c
	.uleb128 0x25
	.long	.LASF48
	.long	.LASF48
	.byte	0x1
	.byte	0xcd
	.uleb128 0x26
	.long	.LASF49
	.long	.LASF49
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	.LVL7
	.long	.LFE59
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL6
	.value	0x3
	.byte	0x72
	.sleb128 13
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL4
	.value	0x3
	.byte	0x72
	.sleb128 13
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL5
	.value	0x3
	.byte	0x72
	.sleb128 15
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL9
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST7:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	.LVL7
	.long	.LVL9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL7
	.long	.LVL9
	.value	0x3
	.byte	0x72
	.sleb128 13
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL11
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL11
	.long	.LVL12-1
	.value	0x1
	.byte	0x50
	.long	.LVL12-1
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 0
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
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB22
	.long	.LBE22
	.long	.LBB26
	.long	.LBE26
	.long	.LBB30
	.long	.LBE30
	.long	0
	.long	0
	.long	.LBB27
	.long	.LBE27
	.long	.LBB31
	.long	.LBE31
	.long	0
	.long	0
	.long	.LFB59
	.long	.LFE59
	.long	.LFB61
	.long	.LFE61
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
.LASF44:
	.string	"uuid128_cmp"
.LASF29:
	.string	"BT_UUID_TYPE_128"
.LASF31:
	.string	"bt_uuid_16"
.LASF34:
	.string	"bt_uuid_32"
.LASF46:
	.string	"uuid128_base"
.LASF40:
	.string	"uuid2"
.LASF39:
	.string	"uuid1"
.LASF3:
	.string	"signed char"
.LASF30:
	.string	"bt_uuid"
.LASF4:
	.string	"unsigned char"
.LASF23:
	.string	"_POLL_STATE_SIGNALED"
.LASF41:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF6:
	.string	"short unsigned int"
.LASF45:
	.string	"bt_uuid_cmp"
.LASF49:
	.string	"__stack_chk_fail"
.LASF20:
	.string	"_poll_types_bits"
.LASF48:
	.string	"memcmp"
.LASF13:
	.string	"u16_t"
.LASF35:
	.string	"bt_uuid_128"
.LASF19:
	.string	"_POLL_NUM_TYPES"
.LASF8:
	.string	"long unsigned int"
.LASF0:
	.string	"unsigned int"
.LASF26:
	.string	"_POLL_NUM_STATES"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"u8_t"
.LASF42:
	.string	"src/uuid.c"
.LASF47:
	.string	"aos_log_level"
.LASF2:
	.string	"long double"
.LASF10:
	.string	"sizetype"
.LASF1:
	.string	"long long int"
.LASF16:
	.string	"_POLL_TYPE_SIGNAL"
.LASF37:
	.string	"uuid_to_uuid128"
.LASF32:
	.string	"type"
.LASF43:
	.string	"/home/stone/Documents/pca"
.LASF5:
	.string	"short int"
.LASF15:
	.string	"_POLL_TYPE_IGNORE"
.LASF14:
	.string	"u32_t"
.LASF21:
	.string	"_poll_states_bits"
.LASF27:
	.string	"BT_UUID_TYPE_16"
.LASF7:
	.string	"long int"
.LASF11:
	.string	"char"
.LASF28:
	.string	"BT_UUID_TYPE_32"
.LASF17:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF33:
	.string	"uuid"
.LASF22:
	.string	"_POLL_STATE_NOT_READY"
.LASF36:
	.string	"sys_put_le16"
.LASF38:
	.string	"sys_put_le32"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
