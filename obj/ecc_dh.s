	.file	"ecc_dh.c"
	.text
.Ltext0:
	.section	.text.unlikely.uECC_make_key_with_d,"ax",@progbits
.LCOLDB0:
	.section	.text.uECC_make_key_with_d,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.uECC_make_key_with_d
.Ltext_cold0:
	.section	.text.uECC_make_key_with_d
	.globl	uECC_make_key_with_d
	.type	uECC_make_key_with_d, @function
uECC_make_key_with_d:
.LFB0:
	.file 1 "src/ecc_dh.c"
	.loc 1 408 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 411 0
	movl	$8, %ecx
	.loc 1 408 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.loc 1 411 0
	leal	-124(%ebp), %edx
	.loc 1 408 0
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 411 0
	movl	%edx, %edi
	.loc 1 408 0
	subl	$144, %esp
	.loc 1 408 0
	movl	8(%ebp), %eax
	movl	16(%ebp), %esi
	movl	20(%ebp), %ebx
	.loc 1 411 0
	rep movsl
	.loc 1 412 0
	leal	-92(%ebp), %esi
	.loc 1 408 0
	movl	%eax, -140(%ebp)
	movl	12(%ebp), %eax
	.loc 1 412 0
	pushl	%ebx
	pushl	%edx
	pushl	%esi
	movl	%edx, -148(%ebp)
	.loc 1 408 0
	movl	%eax, -144(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 412 0
	call	EccPoint_compute_public_key
.LVL1:
	addl	$16, %esp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	-148(%ebp), %edx
	je	.L2
	.loc 1 413 0
	pushl	%eax
	movswl	2(%ebx), %eax
	movl	$8, %ecx
	pushl	%edx
	addl	$7, %eax
	cltd
	idivl	%ecx
	pushl	%eax
	pushl	-144(%ebp)
	call	uECC_vli_nativeToBytes
.LVL2:
	.loc 1 416 0
	addl	$12, %esp
	pushl	%esi
	movsbl	1(%ebx), %eax
	pushl	%eax
	pushl	-140(%ebp)
	call	uECC_vli_nativeToBytes
.LVL3:
	.loc 1 419 0
	movsbl	(%ebx), %eax
	addl	$12, %esp
	leal	(%esi,%eax,4), %eax
	pushl	%eax
	movsbl	1(%ebx), %eax
	pushl	%eax
	addl	-140(%ebp), %eax
	pushl	%eax
	call	uECC_vli_nativeToBytes
.LVL4:
	.loc 1 423 0
	addl	$16, %esp
	movl	$1, %ecx
.L2:
	.loc 1 426 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%ecx, %eax
	je	.L3
	call	__stack_chk_fail
.LVL5:
.L3:
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
.LFE0:
	.size	uECC_make_key_with_d, .-uECC_make_key_with_d
	.section	.text.unlikely.uECC_make_key_with_d
.LCOLDE0:
	.section	.text.uECC_make_key_with_d
.LHOTE0:
	.section	.text.unlikely.uECC_make_key,"ax",@progbits
.LCOLDB1:
	.section	.text.uECC_make_key,"ax",@progbits
.LHOTB1:
	.globl	uECC_make_key
	.type	uECC_make_key, @function
uECC_make_key:
.LFB1:
	.loc 1 428 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$204, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 428 0
	movl	8(%ebp), %eax
	movl	16(%ebp), %ebx
	movl	$64, -208(%ebp)
	movl	%eax, -204(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -212(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL7:
.LBB2:
	.loc 1 439 0
	leal	36(%ebx), %eax
	movl	%eax, -216(%ebp)
.LVL8:
.L14:
	.loc 1 434 0
	call	uECC_get_rng
.LVL9:
	.loc 1 435 0
	testl	%eax, %eax
	jne	.L10
.LVL10:
.L12:
	.loc 1 437 0
	xorl	%eax, %eax
	jmp	.L11
.LVL11:
.L10:
	.loc 1 436 0 discriminator 1
	pushl	%edx
	pushl	%edx
	leal	-156(%ebp), %edx
	pushl	$64
	pushl	%edx
	call	*%eax
.LVL12:
	.loc 1 435 0 discriminator 1
	addl	$16, %esp
	testl	%eax, %eax
	je	.L12
	.loc 1 439 0
	movswl	2(%ebx), %eax
	movl	$32, %ecx
	leal	-188(%ebp), %edi
	.loc 1 440 0
	leal	-92(%ebp), %esi
	.loc 1 439 0
	addl	$31, %eax
	cltd
	idivl	%ecx
	movsbl	%al, %eax
	pushl	%eax
	leal	-156(%ebp), %eax
	pushl	-216(%ebp)
	pushl	%eax
	pushl	%edi
	call	uECC_vli_mmod
.LVL13:
	.loc 1 440 0
	addl	$12, %esp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	call	EccPoint_compute_public_key
.LVL14:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L13
	.loc 1 441 0
	pushl	%eax
	movswl	2(%ebx), %eax
	movl	$8, %ecx
	pushl	%edi
	addl	$7, %eax
	cltd
	idivl	%ecx
	pushl	%eax
	pushl	-212(%ebp)
	call	uECC_vli_nativeToBytes
.LVL15:
	.loc 1 444 0
	addl	$12, %esp
	pushl	%esi
	movsbl	1(%ebx), %eax
	pushl	%eax
	pushl	-204(%ebp)
	call	uECC_vli_nativeToBytes
.LVL16:
	.loc 1 447 0
	movsbl	(%ebx), %eax
	addl	$12, %esp
	leal	(%esi,%eax,4), %eax
	pushl	%eax
	movsbl	1(%ebx), %eax
	pushl	%eax
	addl	-204(%ebp), %eax
	pushl	%eax
	call	uECC_vli_nativeToBytes
.LVL17:
	.loc 1 451 0
	addl	$16, %esp
	movl	$1, %eax
	jmp	.L11
.L13:
.LVL18:
.LBE2:
	.loc 1 433 0 discriminator 2
	decl	-208(%ebp)
.LVL19:
	jne	.L14
	jmp	.L12
.L11:
	.loc 1 455 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L15
	call	__stack_chk_fail
.LVL20:
.L15:
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
.LFE1:
	.size	uECC_make_key, .-uECC_make_key
	.section	.text.unlikely.uECC_make_key
.LCOLDE1:
	.section	.text.uECC_make_key
.LHOTE1:
	.section	.text.unlikely.uECC_shared_secret,"ax",@progbits
.LCOLDB2:
	.section	.text.uECC_shared_secret,"ax",@progbits
.LHOTB2:
	.globl	uECC_shared_secret
	.type	uECC_shared_secret, @function
uECC_shared_secret:
.LFB2:
	.loc 1 458 0
	.cfi_startproc
.LVL21:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 468 0
	movl	$8, %edi
	.loc 1 462 0
	leal	-156(%ebp), %ecx
	.loc 1 458 0
	subl	$176, %esp
	.loc 1 458 0
	movl	8(%ebp), %eax
	movl	20(%ebp), %esi
	.loc 1 462 0
	movl	%ecx, -164(%ebp)
	.loc 1 468 0
	movl	%ecx, -184(%ebp)
	.loc 1 458 0
	movl	%eax, -172(%ebp)
	movl	16(%ebp), %eax
	.loc 1 466 0
	movsbl	1(%esi), %ebx
	.loc 1 458 0
	movl	%eax, -180(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 462 0
	leal	-124(%ebp), %eax
	movl	%eax, -160(%ebp)
.LVL22:
	.loc 1 465 0
	movb	(%esi), %al
	movb	%al, -173(%ebp)
.LVL23:
	.loc 1 468 0
	movswl	2(%esi), %eax
.LVL24:
	addl	$7, %eax
	cltd
	idivl	%edi
	.loc 1 471 0
	leal	-92(%ebp), %edi
	.loc 1 468 0
	pushl	%eax
.LVL25:
	pushl	12(%ebp)
	pushl	%ecx
	call	uECC_vli_bytesToNative
.LVL26:
	.loc 1 471 0
	addl	$12, %esp
	pushl	%ebx
	pushl	-172(%ebp)
	pushl	%edi
	call	uECC_vli_bytesToNative
.LVL27:
	.loc 1 474 0
	movl	-172(%ebp), %eax
	addl	$12, %esp
	pushl	%ebx
	addl	%ebx, %eax
	pushl	%eax
	movsbl	-173(%ebp), %eax
	leal	(%edi,%eax,4), %eax
	pushl	%eax
	call	uECC_vli_bytesToNative
.LVL28:
	.loc 1 477 0
	movl	-184(%ebp), %ecx
	leal	-124(%ebp), %eax
	pushl	%esi
	pushl	%eax
	pushl	%ecx
	pushl	%ecx
	call	regularize_k
.LVL29:
	.loc 1 485 0
	movw	2(%esi), %dx
	addl	$24, %esp
	pushl	%esi
	incl	%edx
	testl	%eax, %eax
	sete	%al
.LVL30:
	movswl	%dx, %edx
	movzbl	%al, %eax
	pushl	%edx
	pushl	$0
	pushl	-164(%ebp,%eax,4)
	pushl	%edi
	pushl	%edi
	call	EccPoint_mult
.LVL31:
	.loc 1 487 0
	addl	$28, %esp
	pushl	%edi
	pushl	%ebx
	pushl	-180(%ebp)
	call	uECC_vli_nativeToBytes
.LVL32:
	.loc 1 488 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	%edi
	call	EccPoint_isZero
.LVL33:
.LDL1:
	.loc 1 493 0
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
.LVL34:
	.loc 1 494 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L22
	call	__stack_chk_fail
.LVL35:
.L22:
	leal	-12(%ebp), %esp
	movzbl	%al, %eax
	popl	%ebx
	.cfi_restore 3
.LVL36:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	uECC_shared_secret, .-uECC_shared_secret
	.section	.text.unlikely.uECC_shared_secret
.LCOLDE2:
	.section	.text.uECC_shared_secret
.LHOTE2:
	.text
.Letext0:
	.section	.text.unlikely.uECC_make_key_with_d
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x57b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF52
	.byte	0xc
	.long	.LASF53
	.long	.LASF54
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x1
	.byte	0x1
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x1
	.byte	0x2
	.long	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x2
	.long	.LASF4
	.byte	0x1
	.byte	0x3
	.long	0x54
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
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x1
	.byte	0x13
	.long	0x25
	.uleb128 0x2
	.long	.LASF13
	.byte	0x1
	.byte	0x14
	.long	0x37
	.uleb128 0x2
	.long	.LASF14
	.byte	0x1
	.byte	0x15
	.long	0x49
	.uleb128 0x2
	.long	.LASF15
	.byte	0x1
	.byte	0x2f
	.long	0x8c
	.uleb128 0x2
	.long	.LASF16
	.byte	0x1
	.byte	0x30
	.long	0xa2
	.uleb128 0x2
	.long	.LASF17
	.byte	0x1
	.byte	0x32
	.long	0x85
	.uleb128 0x2
	.long	.LASF18
	.byte	0x1
	.byte	0x35
	.long	0xd9
	.uleb128 0x5
	.byte	0x4
	.long	0x15c
	.uleb128 0x6
	.long	.LASF55
	.byte	0xb0
	.byte	0x1
	.byte	0x36
	.long	0x15c
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0x37
	.long	0xad
	.byte	0
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x38
	.long	0xad
	.byte	0x1
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x39
	.long	0xb8
	.byte	0x2
	.uleb128 0x8
	.string	"p"
	.byte	0x1
	.byte	0x3a
	.long	0x161
	.byte	0x4
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x3b
	.long	0x161
	.byte	0x24
	.uleb128 0x8
	.string	"G"
	.byte	0x1
	.byte	0x3c
	.long	0x178
	.byte	0x44
	.uleb128 0x8
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.long	0x161
	.byte	0x84
	.uleb128 0x7
	.long	.LASF22
	.byte	0x1
	.byte	0x3e
	.long	0x1a8
	.byte	0xa4
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0x40
	.long	0x1ce
	.byte	0xa8
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.byte	0x41
	.long	0x1e4
	.byte	0xac
	.byte	0
	.uleb128 0x9
	.long	0xdf
	.uleb128 0xa
	.long	0xc3
	.long	0x171
	.uleb128 0xb
	.long	0x171
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF25
	.uleb128 0xa
	.long	0xc3
	.long	0x188
	.uleb128 0xb
	.long	0x171
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0x1a2
	.uleb128 0xd
	.long	0x1a2
	.uleb128 0xd
	.long	0x1a2
	.uleb128 0xd
	.long	0x1a2
	.uleb128 0xd
	.long	0xce
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xc3
	.uleb128 0x5
	.byte	0x4
	.long	0x188
	.uleb128 0xc
	.long	0x1c3
	.uleb128 0xd
	.long	0x1a2
	.uleb128 0xd
	.long	0x1c3
	.uleb128 0xd
	.long	0xce
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1c9
	.uleb128 0x9
	.long	0xc3
	.uleb128 0x5
	.byte	0x4
	.long	0x1ae
	.uleb128 0xc
	.long	0x1e4
	.uleb128 0xd
	.long	0x1a2
	.uleb128 0xd
	.long	0x1a2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1d4
	.uleb128 0x2
	.long	.LASF26
	.byte	0x1
	.byte	0x6b
	.long	0x1f5
	.uleb128 0x5
	.byte	0x4
	.long	0x1fb
	.uleb128 0xe
	.long	0x7e
	.long	0x20f
	.uleb128 0xd
	.long	0x20f
	.uleb128 0xd
	.long	0x85
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x97
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF27
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF28
	.uleb128 0xf
	.long	.LASF34
	.byte	0x1
	.value	0x196
	.long	0x7e
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c5
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.value	0x196
	.long	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.value	0x196
	.long	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"d"
	.byte	0x1
	.value	0x197
	.long	0x2c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.value	0x197
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.value	0x199
	.long	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.value	0x19a
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x13
	.long	.LVL1
	.long	0x51d
	.uleb128 0x13
	.long	.LVL2
	.long	0x528
	.uleb128 0x13
	.long	.LVL3
	.long	0x528
	.uleb128 0x13
	.long	.LVL4
	.long	0x528
	.uleb128 0x13
	.long	.LVL5
	.long	0x533
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x85
	.uleb128 0x14
	.long	.LASF35
	.byte	0x1
	.value	0x1ab
	.long	0x7e
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b0
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.value	0x1ab
	.long	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.value	0x1ab
	.long	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.value	0x1ab
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.long	.LASF36
	.byte	0x1
	.value	0x1ad
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.value	0x1ae
	.long	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.value	0x1af
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x15
	.long	.LASF37
	.byte	0x1
	.value	0x1b0
	.long	0xc3
	.long	.LLST0
	.uleb128 0x16
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x3a6
	.uleb128 0x15
	.long	.LASF38
	.byte	0x1
	.value	0x1b2
	.long	0x1ea
	.long	.LLST1
	.uleb128 0x13
	.long	.LVL9
	.long	0x53c
	.uleb128 0x13
	.long	.LVL13
	.long	0x547
	.uleb128 0x13
	.long	.LVL14
	.long	0x51d
	.uleb128 0x13
	.long	.LVL15
	.long	0x528
	.uleb128 0x13
	.long	.LVL16
	.long	0x528
	.uleb128 0x13
	.long	.LVL17
	.long	0x528
	.byte	0
	.uleb128 0x13
	.long	.LVL20
	.long	0x533
	.byte	0
	.uleb128 0xf
	.long	.LASF39
	.byte	0x1
	.value	0x1c8
	.long	0x7e
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e5
	.uleb128 0x10
	.long	.LASF29
	.byte	0x1
	.value	0x1c8
	.long	0x4e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.value	0x1c8
	.long	0x4e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.long	.LASF40
	.byte	0x1
	.value	0x1c9
	.long	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.value	0x1c9
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.value	0x1cb
	.long	0x178
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.value	0x1cc
	.long	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x17
	.string	"tmp"
	.byte	0x1
	.value	0x1cd
	.long	0x161
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x17
	.string	"p2"
	.byte	0x1
	.value	0x1ce
	.long	0x4f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x18
	.long	.LASF41
	.byte	0x1
	.value	0x1cf
	.long	0x1a2
	.byte	0
	.uleb128 0x15
	.long	.LASF42
	.byte	0x1
	.value	0x1d0
	.long	0xc3
	.long	.LLST2
	.uleb128 0x15
	.long	.LASF19
	.byte	0x1
	.value	0x1d1
	.long	0xad
	.long	.LLST3
	.uleb128 0x15
	.long	.LASF20
	.byte	0x1
	.value	0x1d2
	.long	0xad
	.long	.LLST4
	.uleb128 0x19
	.string	"r"
	.byte	0x1
	.value	0x1d3
	.long	0x7e
	.long	.LLST5
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x1
	.value	0x1e9
	.long	.LDL1
	.uleb128 0x13
	.long	.LVL26
	.long	0x552
	.uleb128 0x13
	.long	.LVL27
	.long	0x552
	.uleb128 0x13
	.long	.LVL28
	.long	0x552
	.uleb128 0x13
	.long	.LVL29
	.long	0x55d
	.uleb128 0x13
	.long	.LVL31
	.long	0x568
	.uleb128 0x13
	.long	.LVL32
	.long	0x528
	.uleb128 0x13
	.long	.LVL33
	.long	0x573
	.uleb128 0x13
	.long	.LVL35
	.long	0x533
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x4eb
	.uleb128 0x9
	.long	0x97
	.uleb128 0xa
	.long	0x1a2
	.long	0x500
	.uleb128 0xb
	.long	0x171
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.long	.LASF57
	.byte	0x1
	.byte	0x48
	.long	0x15c
	.uleb128 0x18
	.long	.LASF43
	.byte	0x1
	.value	0x195
	.long	0x518
	.byte	0
	.uleb128 0x9
	.long	0x1ea
	.uleb128 0x1c
	.long	.LASF44
	.long	.LASF44
	.byte	0x1
	.byte	0x72
	.uleb128 0x1c
	.long	.LASF45
	.long	.LASF45
	.byte	0x1
	.byte	0x9e
	.uleb128 0x1d
	.long	.LASF58
	.long	.LASF58
	.uleb128 0x1c
	.long	.LASF46
	.long	.LASF46
	.byte	0x1
	.byte	0x6d
	.uleb128 0x1c
	.long	.LASF47
	.long	.LASF47
	.byte	0x1
	.byte	0x87
	.uleb128 0x1c
	.long	.LASF48
	.long	.LASF48
	.byte	0x1
	.byte	0xa0
	.uleb128 0x1c
	.long	.LASF49
	.long	.LASF49
	.byte	0x1
	.byte	0x74
	.uleb128 0x1c
	.long	.LASF50
	.long	.LASF50
	.byte	0x1
	.byte	0x76
	.uleb128 0x1c
	.long	.LASF51
	.long	.LASF51
	.byte	0x1
	.byte	0x7a
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL10
	.value	0x8
	.byte	0x8
	.byte	0x40
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL11
	.long	.LVL18
	.value	0x8
	.byte	0x8
	.byte	0x40
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0x8
	.byte	0x8
	.byte	0x41
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL12-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	.LVL25
	.long	.LFE2
	.value	0x3
	.byte	0x91
	.sleb128 -181
	.long	0
	.long	0
.LLST4:
	.long	.LVL23
	.long	.LVL36
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL33
	.long	.LVL34
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
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
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"uECC_vli_mmod"
.LASF18:
	.string	"uECC_Curve"
.LASF1:
	.string	"__uint8_t"
.LASF45:
	.string	"uECC_vli_nativeToBytes"
.LASF53:
	.string	"src/ecc_dh.c"
.LASF10:
	.string	"long long unsigned int"
.LASF0:
	.string	"__int8_t"
.LASF32:
	.string	"_private"
.LASF14:
	.string	"int16_t"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF51:
	.string	"EccPoint_isZero"
.LASF41:
	.string	"initial_Z"
.LASF7:
	.string	"long int"
.LASF49:
	.string	"regularize_k"
.LASF54:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"__int16_t"
.LASF55:
	.string	"uECC_Curve_t"
.LASF43:
	.string	"g_rng_function"
.LASF11:
	.string	"unsigned int"
.LASF16:
	.string	"bitcount_t"
.LASF8:
	.string	"long unsigned int"
.LASF46:
	.string	"uECC_get_rng"
.LASF19:
	.string	"num_words"
.LASF6:
	.string	"short unsigned int"
.LASF35:
	.string	"uECC_make_key"
.LASF21:
	.string	"num_n_bits"
.LASF38:
	.string	"rng_function"
.LASF40:
	.string	"secret"
.LASF25:
	.string	"sizetype"
.LASF27:
	.string	"long double"
.LASF26:
	.string	"uECC_RNG_Function"
.LASF34:
	.string	"uECC_make_key_with_d"
.LASF24:
	.string	"mmod_fast"
.LASF48:
	.string	"uECC_vli_bytesToNative"
.LASF42:
	.string	"carry"
.LASF23:
	.string	"x_side"
.LASF56:
	.string	"clear_and_out"
.LASF3:
	.string	"unsigned char"
.LASF37:
	.string	"tries"
.LASF5:
	.string	"short int"
.LASF58:
	.string	"__stack_chk_fail"
.LASF52:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF50:
	.string	"EccPoint_mult"
.LASF17:
	.string	"uECC_word_t"
.LASF28:
	.string	"char"
.LASF29:
	.string	"public_key"
.LASF57:
	.string	"curve_secp256r1"
.LASF12:
	.string	"int8_t"
.LASF20:
	.string	"num_bytes"
.LASF22:
	.string	"double_jacobian"
.LASF39:
	.string	"uECC_shared_secret"
.LASF13:
	.string	"uint8_t"
.LASF36:
	.string	"_random"
.LASF31:
	.string	"curve"
.LASF44:
	.string	"EccPoint_compute_public_key"
.LASF30:
	.string	"private_key"
.LASF15:
	.string	"wordcount_t"
.LASF33:
	.string	"_public"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
