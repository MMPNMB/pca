	.file	"cntr.c"
	.text
.Ltext0:
	.section	.text.unlikely.cntr_init,"ax",@progbits
.LCOLDB0:
	.section	.text.cntr_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.cntr_init
.Ltext_cold0:
	.section	.text.cntr_init
	.globl	cntr_init
	.type	cntr_init, @function
cntr_init:
.LFB184:
	.file 1 "src/cntr.c"
	.loc 1 5332 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5333 0
	movl	$0, 1073788168
	.loc 1 5334 0
	movl	$196608, 1073787716
	.loc 1 5336 0
	movl	$196608, 1073787652
	.loc 1 5332 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5338 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE184:
	.size	cntr_init, .-cntr_init
	.section	.text.unlikely.cntr_init
.LCOLDE0:
	.section	.text.cntr_init
.LHOTE0:
	.section	.text.unlikely.cntr_start,"ax",@progbits
.LCOLDB1:
	.section	.text.cntr_start,"ax",@progbits
.LHOTB1:
	.globl	cntr_start
	.type	cntr_start, @function
cntr_start:
.LFB185:
	.loc 1 5340 0
	.cfi_startproc
	.loc 1 5341 0
	movb	_refcount, %dl
	.loc 1 5340 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5341 0
	leal	1(%edx), %eax
	testb	%dl, %dl
	movb	%al, _refcount
	movl	$1, %eax
	jne	.L4
	.loc 1 5344 0
	movl	$1, 1073786880
	.loc 1 5345 0
	xorl	%eax, %eax
.L4:
	.loc 1 5346 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE185:
	.size	cntr_start, .-cntr_start
	.section	.text.unlikely.cntr_start
.LCOLDE1:
	.section	.text.cntr_start
.LHOTE1:
	.section	.text.unlikely.cntr_stop,"ax",@progbits
.LCOLDB2:
	.section	.text.cntr_stop,"ax",@progbits
.LHOTB2:
	.globl	cntr_stop
	.type	cntr_stop, @function
cntr_stop:
.LFB186:
	.loc 1 5348 0
	.cfi_startproc
	.loc 1 5350 0
	movb	_refcount, %al
	.loc 1 5348 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5350 0
	leal	-1(%eax), %edx
	movl	$1, %eax
	testb	%dl, %dl
	movb	%dl, _refcount
	jne	.L10
	.loc 1 5353 0
	movl	$1, 1073786884
	.loc 1 5354 0
	xorl	%eax, %eax
.L10:
	.loc 1 5355 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE186:
	.size	cntr_stop, .-cntr_stop
	.section	.text.unlikely.cntr_stop
.LCOLDE2:
	.section	.text.cntr_stop
.LHOTE2:
	.section	.text.unlikely.cntr_cnt_get,"ax",@progbits
.LCOLDB3:
	.section	.text.cntr_cnt_get,"ax",@progbits
.LHOTB3:
	.globl	cntr_cnt_get
	.type	cntr_cnt_get, @function
cntr_cnt_get:
.LFB187:
	.loc 1 5357 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5358 0
	movl	1073788164, %eax
	.loc 1 5357 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5359 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE187:
	.size	cntr_cnt_get, .-cntr_cnt_get
	.section	.text.unlikely.cntr_cnt_get
.LCOLDE3:
	.section	.text.cntr_cnt_get
.LHOTE3:
	.section	.text.unlikely.cntr_cmp_set,"ax",@progbits
.LCOLDB4:
	.section	.text.cntr_cmp_set,"ax",@progbits
.LHOTB4:
	.globl	cntr_cmp_set
	.type	cntr_cmp_set, @function
cntr_cmp_set:
.LFB188:
	.loc 1 5361 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5362 0
	movzbl	8(%ebp), %eax
	movl	12(%ebp), %edx
	addl	$336, %eax
	movl	%edx, 1073786880(,%eax,4)
.LVL1:
	.loc 1 5363 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE188:
	.size	cntr_cmp_set, .-cntr_cmp_set
	.section	.text.unlikely.cntr_cmp_set
.LCOLDE4:
	.section	.text.cntr_cmp_set
.LHOTE4:
	.section	.bss._refcount,"aw",@nobits
	.type	_refcount, @object
	.size	_refcount, 1
_refcount:
	.zero	1
	.text
.Letext0:
	.section	.text.unlikely.cntr_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3c6
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF58
	.byte	0xc
	.long	.LASF59
	.long	.LASF60
	.long	.Ldebug_ranges0+0
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0xc
	.long	0x68
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0xd
	.long	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x1e
	.long	0x5d
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x1f
	.long	0x6f
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.byte	0x3a
	.long	0x48
	.uleb128 0x4
	.long	.LASF15
	.byte	0x1
	.byte	0x3c
	.long	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF16
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x5
	.long	.LASF23
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0x386
	.long	0xf2
	.uleb128 0x6
	.long	.LASF18
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.uleb128 0x6
	.long	.LASF20
	.byte	0x2
	.uleb128 0x6
	.long	.LASF21
	.byte	0x3
	.uleb128 0x6
	.long	.LASF22
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0x38d
	.long	0x122
	.uleb128 0x6
	.long	.LASF25
	.byte	0
	.uleb128 0x6
	.long	.LASF26
	.byte	0x1
	.uleb128 0x6
	.long	.LASF27
	.byte	0x2
	.uleb128 0x6
	.long	.LASF28
	.byte	0x3
	.uleb128 0x6
	.long	.LASF29
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF30
	.uleb128 0x7
	.long	0x93
	.uleb128 0x8
	.long	0x129
	.uleb128 0x9
	.long	0x129
	.long	0x143
	.uleb128 0xa
	.long	0xb4
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	0x12e
	.long	0x153
	.uleb128 0xa
	.long	0xb4
	.byte	0x6d
	.byte	0
	.uleb128 0x9
	.long	0x12e
	.long	0x163
	.uleb128 0xa
	.long	0xb4
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.long	0x12e
	.long	0x173
	.uleb128 0xa
	.long	0xb4
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x12e
	.long	0x183
	.uleb128 0xa
	.long	0xb4
	.byte	0x3b
	.byte	0
	.uleb128 0xb
	.value	0x550
	.byte	0x1
	.value	0x12d8
	.long	0x2ae
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.value	0x12d9
	.long	0x129
	.byte	0
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.value	0x12da
	.long	0x129
	.byte	0x4
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.value	0x12db
	.long	0x129
	.byte	0x8
	.uleb128 0xc
	.long	.LASF34
	.byte	0x1
	.value	0x12dc
	.long	0x129
	.byte	0xc
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.value	0x12dd
	.long	0x2b3
	.byte	0x10
	.uleb128 0xd
	.long	.LASF36
	.byte	0x1
	.value	0x12de
	.long	0x129
	.value	0x100
	.uleb128 0xd
	.long	.LASF37
	.byte	0x1
	.value	0x12df
	.long	0x129
	.value	0x104
	.uleb128 0xd
	.long	.LASF38
	.byte	0x1
	.value	0x12e0
	.long	0x2bd
	.value	0x108
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.value	0x12e1
	.long	0x2c2
	.value	0x140
	.uleb128 0xd
	.long	.LASF40
	.byte	0x1
	.value	0x12e2
	.long	0x2dc
	.value	0x150
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.value	0x12e3
	.long	0x129
	.value	0x304
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.value	0x12e4
	.long	0x129
	.value	0x308
	.uleb128 0xd
	.long	.LASF43
	.byte	0x1
	.value	0x12e5
	.long	0x2e6
	.value	0x30c
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.value	0x12e6
	.long	0x129
	.value	0x340
	.uleb128 0xd
	.long	.LASF45
	.byte	0x1
	.value	0x12e7
	.long	0x129
	.value	0x344
	.uleb128 0xd
	.long	.LASF46
	.byte	0x1
	.value	0x12e8
	.long	0x129
	.value	0x348
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.value	0x12e9
	.long	0x2f0
	.value	0x34c
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.value	0x12ea
	.long	0x12e
	.value	0x504
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.value	0x12eb
	.long	0x129
	.value	0x508
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.value	0x12ec
	.long	0x2fa
	.value	0x50c
	.uleb128 0xe
	.string	"CC"
	.byte	0x1
	.value	0x12ed
	.long	0x2ff
	.value	0x540
	.byte	0
	.uleb128 0x7
	.long	0x173
	.uleb128 0x8
	.long	0x2ae
	.uleb128 0x7
	.long	0x153
	.uleb128 0x8
	.long	0x2b8
	.uleb128 0x7
	.long	0x133
	.uleb128 0x9
	.long	0x12e
	.long	0x2d7
	.uleb128 0xa
	.long	0xb4
	.byte	0x6c
	.byte	0
	.uleb128 0x7
	.long	0x2c7
	.uleb128 0x8
	.long	0x2d7
	.uleb128 0x7
	.long	0x163
	.uleb128 0x8
	.long	0x2e1
	.uleb128 0x7
	.long	0x143
	.uleb128 0x8
	.long	0x2eb
	.uleb128 0x7
	.long	0x163
	.uleb128 0x8
	.long	0x2f5
	.uleb128 0x7
	.long	0x133
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.value	0x12ee
	.long	0x183
	.uleb128 0x7
	.long	0x88
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.value	0x14d3
	.long	.LFB184
	.long	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.value	0x14db
	.long	0xa9
	.long	.LFB185
	.long	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.value	0x14e3
	.long	0xa9
	.long	.LFB186
	.long	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.value	0x14ec
	.long	0xa9
	.long	.LFB187
	.long	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x12
	.long	.LASF62
	.byte	0x1
	.value	0x14f0
	.long	.LFB188
	.long	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.long	0x39f
	.uleb128 0x13
	.string	"cmp"
	.byte	0x1
	.value	0x14f0
	.long	0x9e
	.long	.LLST0
	.uleb128 0x14
	.long	.LASF55
	.byte	0x1
	.value	0x14f0
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.value	0x14d2
	.long	0x9e
	.uleb128 0x5
	.byte	0x3
	.long	_refcount
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.value	0x222
	.long	0x2c
	.uleb128 0x16
	.long	.LASF57
	.byte	0x1
	.value	0xf0b
	.long	0x310
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.long	.LVL1
	.long	.LFE188
	.value	0x4
	.byte	0x70
	.sleb128 -80
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB184
	.long	.LFE184-.LFB184
	.long	.LFB185
	.long	.LFE185-.LFB185
	.long	.LFB186
	.long	.LFE186-.LFB186
	.long	.LFB187
	.long	.LFE187-.LFB187
	.long	.LFB188
	.long	.LFE188-.LFB188
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB184
	.long	.LFE184
	.long	.LFB185
	.long	.LFE185
	.long	.LFB186
	.long	.LFE186
	.long	.LFB187
	.long	.LFE187
	.long	.LFB188
	.long	.LFE188
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"_POLL_STATE_NOT_READY"
.LASF22:
	.string	"_POLL_NUM_TYPES"
.LASF34:
	.string	"TASKS_TRIGOVRFLW"
.LASF52:
	.string	"cntr_start"
.LASF5:
	.string	"short int"
.LASF16:
	.string	"sizetype"
.LASF36:
	.string	"EVENTS_TICK"
.LASF9:
	.string	"__uint32_t"
.LASF55:
	.string	"value"
.LASF46:
	.string	"EVTENCLR"
.LASF51:
	.string	"NRF_RTC_Type"
.LASF13:
	.string	"uint32_t"
.LASF42:
	.string	"INTENCLR"
.LASF45:
	.string	"EVTENSET"
.LASF1:
	.string	"long long int"
.LASF31:
	.string	"TASKS_START"
.LASF17:
	.string	"char"
.LASF27:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF62:
	.string	"cntr_cmp_set"
.LASF7:
	.string	"long int"
.LASF39:
	.string	"EVENTS_COMPARE"
.LASF56:
	.string	"aos_log_level"
.LASF24:
	.string	"_poll_states_bits"
.LASF61:
	.string	"cntr_init"
.LASF19:
	.string	"_POLL_TYPE_SIGNAL"
.LASF2:
	.string	"long double"
.LASF32:
	.string	"TASKS_STOP"
.LASF59:
	.string	"src/cntr.c"
.LASF4:
	.string	"unsigned char"
.LASF18:
	.string	"_POLL_TYPE_IGNORE"
.LASF3:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF44:
	.string	"EVTEN"
.LASF0:
	.string	"unsigned int"
.LASF28:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF63:
	.string	"_refcount"
.LASF6:
	.string	"short unsigned int"
.LASF20:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF54:
	.string	"cntr_cnt_get"
.LASF15:
	.string	"u32_t"
.LASF37:
	.string	"EVENTS_OVRFLW"
.LASF12:
	.string	"int32_t"
.LASF33:
	.string	"TASKS_CLEAR"
.LASF30:
	.string	"_Bool"
.LASF35:
	.string	"RESERVED0"
.LASF38:
	.string	"RESERVED1"
.LASF40:
	.string	"RESERVED2"
.LASF43:
	.string	"RESERVED3"
.LASF47:
	.string	"RESERVED4"
.LASF50:
	.string	"RESERVED5"
.LASF10:
	.string	"long unsigned int"
.LASF41:
	.string	"INTENSET"
.LASF26:
	.string	"_POLL_STATE_SIGNALED"
.LASF23:
	.string	"_poll_types_bits"
.LASF8:
	.string	"__int32_t"
.LASF14:
	.string	"u8_t"
.LASF58:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF48:
	.string	"COUNTER"
.LASF49:
	.string	"PRESCALER"
.LASF60:
	.string	"/home/stone/Documents/pca"
.LASF53:
	.string	"cntr_stop"
.LASF29:
	.string	"_POLL_NUM_STATES"
.LASF57:
	.string	"ITM_RxBuffer"
.LASF21:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
