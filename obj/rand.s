	.file	"rand.c"
	.text
.Ltext0:
	.section	.text.unlikely.get,"ax",@progbits
.LCOLDB0:
	.section	.text.get,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.get
.Ltext_cold0:
	.section	.text.get
	.type	get, @function
get:
.LFB187:
	.file 1 "src/rand.c"
	.loc 1 5377 0
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%ecx, %esi
	leal	(%esi,%edx), %edi
	subl	$24, %esp
	.loc 1 5380 0
	movb	2(%eax), %cl
.LVL1:
	.loc 1 5381 0
	movb	3(%eax), %bl
	movl	%edi, -28(%ebp)
	movzbl	%cl, %esi
.LVL2:
	.loc 1 5382 0
	cmpb	%bl, %cl
	.loc 1 5381 0
	movb	%bl, -16(%ebp)
.LVL3:
.LBB2:
	.loc 1 5386 0
	leal	4(%eax,%esi), %esi
.LBE2:
	.loc 1 5382 0
	ja	.L2
.LVL4:
.LBB3:
	.loc 1 5387 0
	subl	%ecx, %ebx
.LVL5:
	.loc 1 5386 0
	movl	%esi, -24(%ebp)
.LVL6:
	.loc 1 5392 0
	movb	$0, -17(%ebp)
	.loc 1 5388 0
	movzbl	%bl, %edi
	cmpl	%edi, %edx
	jnb	.L3
	.loc 1 5389 0
	subl	%edx, %ebx
	movb	%bl, -17(%ebp)
.LVL7:
	.loc 1 5390 0
	movb	%dl, %bl
.LVL8:
.L3:
	.loc 1 5394 0
	addl	%ebx, %ecx
.LVL9:
	.loc 1 5395 0
	movzbl	%bl, %edi
	.loc 1 5394 0
	movb	%cl, -32(%ebp)
.LVL10:
	.loc 1 5395 0
	movl	%edi, -16(%ebp)
	subl	%edi, %edx
.LVL11:
	.loc 1 5396 0
	xorl	%ecx, %ecx
.LVL12:
.L4:
	cmpl	%ecx, -16(%ebp)
	je	.L27
.LVL13:
	.loc 1 5397 0
	movl	-24(%ebp), %ebx
	movl	-28(%ebp), %esi
	movl	%ecx, %edi
	negl	%edi
	movb	(%ebx,%ecx), %bl
	incl	%ecx
.LVL14:
	movb	%bl, -1(%esi,%edi)
	jmp	.L4
.LVL15:
.L27:
	.loc 1 5399 0
	movb	-32(%ebp), %bl
	jmp	.L25
.LVL16:
.L2:
.LBE3:
.LBB4:
	.loc 1 5405 0
	movb	(%eax), %bl
.LVL17:
	.loc 1 5404 0
	movl	%esi, -36(%ebp)
.LVL18:
	.loc 1 5405 0
	subl	%ecx, %ebx
	.loc 1 5406 0
	movzbl	%bl, %esi
	.loc 1 5405 0
	movl	%ebx, %edi
.LVL19:
	.loc 1 5406 0
	cmpl	%esi, %edx
	jnb	.L15
	.loc 1 5407 0
	movl	-16(%ebp), %edi
	movl	%ebx, %esi
	addl	%edi, %esi
.LVL20:
	movl	%edx, %edi
	movl	%esi, %ebx
	subl	%edx, %ebx
	movb	%bl, -17(%ebp)
.LVL21:
	.loc 1 5409 0
	leal	(%ecx,%edx), %ebx
.LVL22:
	movb	%bl, -24(%ebp)
.LVL23:
	jmp	.L7
.LVL24:
.L15:
	movb	-16(%ebp), %cl
.LVL25:
	.loc 1 5412 0
	movb	$0, -24(%ebp)
	movb	%cl, -17(%ebp)
.LVL26:
.L7:
	.loc 1 5414 0
	movl	%edi, %ecx
	movzbl	%cl, %esi
	.loc 1 5415 0
	xorl	%ecx, %ecx
	.loc 1 5414 0
	movl	%esi, -32(%ebp)
	subl	%esi, %edx
.LVL27:
.L8:
	.loc 1 5415 0
	cmpl	-32(%ebp), %ecx
	je	.L28
.LVL28:
	.loc 1 5416 0
	movl	-36(%ebp), %ebx
	movl	-28(%ebp), %edi
	movl	%ecx, %esi
	negl	%esi
	movb	(%ebx,%ecx), %bl
	incl	%ecx
.LVL29:
	movb	%bl, -1(%edi,%esi)
	jmp	.L8
.LVL30:
.L28:
	movl	-28(%ebp), %edi
	subl	%ecx, %edi
	.loc 1 5418 0
	testl	%edx, %edx
	movl	%edi, %esi
	je	.L10
	cmpb	$0, -16(%ebp)
	je	.L10
	.loc 1 5420 0
	movzbl	-16(%ebp), %ecx
.LVL31:
	.loc 1 5419 0
	leal	4(%eax), %edi
	movl	%edi, -28(%ebp)
.LVL32:
	.loc 1 5420 0
	cmpl	%ecx, %edx
	jnb	.L16
	.loc 1 5421 0
	movb	-16(%ebp), %bl
	movb	%dl, -24(%ebp)
.LVL33:
	subl	%edx, %ebx
	movb	%bl, -17(%ebp)
.LVL34:
	jmp	.L11
.LVL35:
.L16:
	movb	-16(%ebp), %cl
	.loc 1 5424 0
	movb	$0, -17(%ebp)
.LVL36:
	movb	%cl, -24(%ebp)
.LVL37:
.L11:
	.loc 1 5427 0
	movzbl	-24(%ebp), %edi
.LVL38:
	xorl	%ecx, %ecx
	movl	%edi, -16(%ebp)
	subl	%edi, %edx
.LVL39:
.L12:
	.loc 1 5429 0
	movl	-28(%ebp), %ebx
	movl	%ecx, %edi
	negl	%edi
	movb	(%ebx,%ecx), %bl
	incl	%ecx
.LVL40:
	.loc 1 5428 0
	cmpl	-16(%ebp), %ecx
	.loc 1 5429 0
	movb	%bl, -1(%esi,%edi)
	.loc 1 5428 0
	jne	.L12
.LVL41:
.L10:
	.loc 1 5432 0
	movb	-24(%ebp), %bl
.LVL42:
.L25:
.LBE4:
	.loc 1 5434 0
	movb	-17(%ebp), %cl
	cmpb	1(%eax), %cl
.LBB5:
	.loc 1 5432 0
	movb	%bl, 2(%eax)
.LVL43:
.LBE5:
	.loc 1 5434 0
	jnb	.L13
	.loc 1 5435 0
	movl	$1, 1073795072
.L13:
	.loc 1 5438 0
	addl	$24, %esp
	movl	%edx, %eax
.LVL44:
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
.LFE187:
	.size	get, .-get
	.section	.text.unlikely.get
.LCOLDE0:
	.section	.text.get
.LHOTE0:
	.section	.text.unlikely.isr,"ax",@progbits
.LCOLDB1:
	.section	.text.isr,"ax",@progbits
.LHOTB1:
	.type	isr, @function
isr:
.LFB190:
	.loc 1 5450 0
	.cfi_startproc
.LVL45:
	.loc 1 5452 0
	testl	%eax, %eax
	je	.L34
	.loc 1 5450 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	.loc 1 5455 0
	movzbl	3(%eax), %esi
	.loc 1 5456 0
	movb	(%eax), %al
.LVL46:
	.loc 1 5457 0
	xorl	%edi, %edi
	.loc 1 5456 0
	movb	%al, -13(%ebp)
	.loc 1 5455 0
	leal	1(%esi), %ecx
.LVL47:
	.loc 1 5457 0
	cmpb	%al, %cl
	.loc 1 5459 0
	movb	2(%ebx), %al
	.loc 1 5457 0
	cmove	%edi, %ecx
.LVL48:
	.loc 1 5459 0
	movb	%al, -14(%ebp)
	cmpb	-14(%ebp), %cl
	.loc 1 5453 0
	movl	$-55, %eax
	.loc 1 5459 0
	je	.L30
	.loc 1 5462 0
	testb	%dl, %dl
	je	.L32
	.loc 1 5465 0
	movl	1073796360, %eax
	movl	%esi, %edx
.LVL49:
	movzbl	%dl, %esi
	movb	%al, 4(%ebx,%esi)
	.loc 1 5466 0
	movb	%cl, 3(%ebx)
	.loc 1 5467 0
	incl	%ecx
.LVL50:
	.loc 1 5469 0
	cmpb	%cl, -13(%ebp)
	cmove	%edi, %ecx
.LVL51:
	.loc 1 5472 0
	xorl	%eax, %eax
	.loc 1 5471 0
	cmpb	-14(%ebp), %cl
	je	.L30
.L32:
	.loc 1 5474 0
	movl	$-16, %eax
	jmp	.L30
.LVL52:
.L34:
	.cfi_def_cfa 4, 4
	.cfi_restore 3
	.cfi_restore 5
	.cfi_restore 6
	.cfi_restore 7
	.loc 1 5453 0
	movl	$-55, %eax
.LVL53:
	ret
.LVL54:
.L30:
	.cfi_def_cfa 5, 8
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.loc 1 5475 0
	popl	%edx
	popl	%ebx
	.cfi_restore 3
.LVL55:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE190:
	.size	isr, .-isr
	.section	.text.unlikely.isr
.LCOLDE1:
	.section	.text.isr
.LHOTE1:
	.section	.text.unlikely.rand_init,"ax",@progbits
.LCOLDB2:
	.section	.text.rand_init,"ax",@progbits
.LHOTB2:
	.globl	rand_init
	.type	rand_init, @function
rand_init:
.LFB185:
	.loc 1 5369 0
	.cfi_startproc
.LVL56:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB10:
.LBB11:
	.loc 1 5352 0
	movb	12(%ebp), %cl
.LBE11:
.LBE10:
	.loc 1 5369 0
	movl	8(%ebp), %eax
.LVL57:
.LBB15:
.LBB14:
	.loc 1 5352 0
	leal	-4(%ecx), %edx
	.loc 1 5350 0
	movl	%eax, rng_thr
.LVL58:
	.loc 1 5352 0
	movb	%dl, (%eax)
	.loc 1 5359 0
	movl	16(%ebp), %edx
	.loc 1 5360 0
	movb	$0, 3(%eax)
	movb	$0, 2(%eax)
	.loc 1 5359 0
	movb	%dl, 1(%eax)
	.loc 1 5361 0
	cmpl	$0, rng_isr
	jne	.L39
.LVL59:
.LBB12:
.LBB13:
	.loc 1 5362 0
	movl	$1, 1073796356
.LVL60:
	.loc 1 5363 0
	movl	$0, 1073795328
	.loc 1 5364 0
	movl	$1, 1073795844
	.loc 1 5365 0
	movl	$1, 1073795072
.LVL61:
.L39:
.LBE13:
.LBE12:
.LBE14:
.LBE15:
	.loc 1 5371 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE185:
	.size	rand_init, .-rand_init
	.section	.text.unlikely.rand_init
.LCOLDE2:
	.section	.text.rand_init
.LHOTE2:
	.section	.text.unlikely.rand_isr_init,"ax",@progbits
.LCOLDB3:
	.section	.text.rand_isr_init,"ax",@progbits
.LHOTB3:
	.globl	rand_isr_init
	.type	rand_isr_init, @function
rand_isr_init:
.LFB186:
	.loc 1 5373 0
	.cfi_startproc
.LVL62:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB20:
.LBB21:
	.loc 1 5352 0
	movb	12(%ebp), %cl
.LBE21:
.LBE20:
	.loc 1 5373 0
	movl	8(%ebp), %eax
.LVL63:
.LBB25:
.LBB24:
	.loc 1 5352 0
	leal	-4(%ecx), %edx
	.loc 1 5350 0
	movl	%eax, rng_isr
.LVL64:
	.loc 1 5352 0
	movb	%dl, (%eax)
	.loc 1 5359 0
	movl	16(%ebp), %edx
	.loc 1 5360 0
	movb	$0, 3(%eax)
	movb	$0, 2(%eax)
	.loc 1 5359 0
	movb	%dl, 1(%eax)
	.loc 1 5361 0
	cmpl	$0, rng_thr
	jne	.L42
.LVL65:
.LBB22:
.LBB23:
	.loc 1 5362 0
	movl	$1, 1073796356
.LVL66:
	.loc 1 5363 0
	movl	$0, 1073795328
	.loc 1 5364 0
	movl	$1, 1073795844
	.loc 1 5365 0
	movl	$1, 1073795072
.LVL67:
.L42:
.LBE23:
.LBE22:
.LBE24:
.LBE25:
	.loc 1 5375 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE186:
	.size	rand_isr_init, .-rand_isr_init
	.section	.text.unlikely.rand_isr_init
.LCOLDE3:
	.section	.text.rand_isr_init
.LHOTE3:
	.section	.text.unlikely.rand_get,"ax",@progbits
.LCOLDB4:
	.section	.text.rand_get,"ax",@progbits
.LHOTB4:
	.globl	rand_get
	.type	rand_get, @function
rand_get:
.LFB188:
	.loc 1 5440 0
	.cfi_startproc
.LVL68:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5441 0
	movl	rng_thr, %eax
	.loc 1 5440 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5441 0
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	.loc 1 5442 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5441 0
	jmp	get
.LVL69:
	.cfi_endproc
.LFE188:
	.size	rand_get, .-rand_get
	.section	.text.unlikely.rand_get
.LCOLDE4:
	.section	.text.rand_get
.LHOTE4:
	.section	.text.unlikely.rand_isr_get,"ax",@progbits
.LCOLDB5:
	.section	.text.rand_isr_get,"ax",@progbits
.LHOTB5:
	.globl	rand_isr_get
	.type	rand_isr_get, @function
rand_isr_get:
.LFB189:
	.loc 1 5444 0
	.cfi_startproc
.LVL70:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5445 0
	movl	rng_isr, %eax
	.loc 1 5444 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5445 0
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	.loc 1 5446 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5445 0
	jmp	get
.LVL71:
	.cfi_endproc
.LFE189:
	.size	rand_isr_get, .-rand_isr_get
	.section	.text.unlikely.rand_isr_get
.LCOLDE5:
	.section	.text.rand_isr_get
.LHOTE5:
	.section	.text.unlikely.isr_rand,"ax",@progbits
.LCOLDB6:
	.section	.text.isr_rand,"ax",@progbits
.LHOTB6:
	.globl	isr_rand
	.type	isr_rand, @function
isr_rand:
.LFB191:
	.loc 1 5477 0
	.cfi_startproc
.LVL72:
	.loc 1 5479 0
	movl	1073795328, %eax
	testl	%eax, %eax
	je	.L62
	.loc 1 5477 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB26:
	.loc 1 5481 0
	movl	rng_isr, %eax
	movl	$1, %edx
.LBE26:
	.loc 1 5477 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB27:
	.loc 1 5481 0
	call	isr
.LVL73:
	.loc 1 5484 0
	cmpl	$-16, %eax
	je	.L52
	.loc 1 5485 0
	xorl	%edx, %edx
	cmpl	$-55, %eax
	movl	rng_thr, %eax
.LVL74:
	sete	%dl
	call	isr
.LVL75:
.L52:
	.loc 1 5488 0
	cmpl	$-16, %eax
	.loc 1 5487 0
	movl	$0, 1073795328
	.loc 1 5488 0
	je	.L49
	.loc 1 5489 0
	movl	$1, 1073795076
.L49:
.LBE27:
	.loc 1 5492 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL76:
.L62:
	ret
	.cfi_endproc
.LFE191:
	.size	isr_rand, .-isr_rand
	.section	.text.unlikely.isr_rand
.LCOLDE6:
	.section	.text.isr_rand
.LHOTE6:
	.section	.bss.rng_thr,"aw",@nobits
	.align 4
	.type	rng_thr, @object
	.size	rng_thr, 4
rng_thr:
	.zero	4
	.section	.bss.rng_isr,"aw",@nobits
	.align 4
	.type	rng_isr, @object
	.size	rng_isr, 4
rng_isr:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.get
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x706
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF65
	.byte	0xc
	.long	.LASF66
	.long	.LASF67
	.long	.Ldebug_ranges0+0x78
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x1
	.byte	0x3c
	.long	0x53
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x3d
	.long	0x65
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x1
	.byte	0x4e
	.long	0x48
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x4f
	.long	0x5a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.long	0x8c
	.uleb128 0x6
	.long	0x9e
	.uleb128 0x7
	.long	0xa3
	.long	0xb8
	.uleb128 0x8
	.long	0x97
	.byte	0x3f
	.byte	0
	.uleb128 0x7
	.long	0xa3
	.long	0xc8
	.uleb128 0x8
	.long	0x97
	.byte	0x3e
	.byte	0
	.uleb128 0x7
	.long	0xa3
	.long	0xd8
	.uleb128 0x8
	.long	0x97
	.byte	0x3d
	.byte	0
	.uleb128 0x7
	.long	0xa3
	.long	0xe8
	.uleb128 0x8
	.long	0x97
	.byte	0x7d
	.byte	0
	.uleb128 0x5
	.long	0x81
	.uleb128 0x9
	.value	0x50c
	.byte	0x1
	.value	0x80b
	.long	0x19d
	.uleb128 0xa
	.long	.LASF14
	.byte	0x1
	.value	0x80c
	.long	0x9e
	.byte	0
	.uleb128 0xa
	.long	.LASF15
	.byte	0x1
	.value	0x80d
	.long	0x9e
	.byte	0x4
	.uleb128 0xa
	.long	.LASF16
	.byte	0x1
	.value	0x80e
	.long	0x1a2
	.byte	0x8
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.value	0x80f
	.long	0x9e
	.value	0x100
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.value	0x810
	.long	0x1ac
	.value	0x104
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.value	0x811
	.long	0x9e
	.value	0x200
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.value	0x812
	.long	0x1b6
	.value	0x204
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.value	0x813
	.long	0x9e
	.value	0x304
	.uleb128 0xb
	.long	.LASF22
	.byte	0x1
	.value	0x814
	.long	0x9e
	.value	0x308
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.value	0x815
	.long	0x1c0
	.value	0x30c
	.uleb128 0xb
	.long	.LASF24
	.byte	0x1
	.value	0x816
	.long	0x9e
	.value	0x504
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.value	0x817
	.long	0xa3
	.value	0x508
	.byte	0
	.uleb128 0x5
	.long	0xc8
	.uleb128 0x6
	.long	0x19d
	.uleb128 0x5
	.long	0xb8
	.uleb128 0x6
	.long	0x1a7
	.uleb128 0x5
	.long	0xa8
	.uleb128 0x6
	.long	0x1b1
	.uleb128 0x5
	.long	0xd8
	.uleb128 0x6
	.long	0x1bb
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.value	0x818
	.long	0xed
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.value	0x9d0
	.long	0x7a
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF28
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.value	0x9da
	.long	0x33
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF30
	.uleb128 0xe
	.long	.LASF36
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0xd26
	.long	0x229
	.uleb128 0xf
	.long	.LASF31
	.byte	0
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.uleb128 0xf
	.long	.LASF33
	.byte	0x2
	.uleb128 0xf
	.long	.LASF34
	.byte	0x3
	.uleb128 0xf
	.long	.LASF35
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF37
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0xd2d
	.long	0x259
	.uleb128 0xf
	.long	.LASF38
	.byte	0
	.uleb128 0xf
	.long	.LASF39
	.byte	0x1
	.uleb128 0xf
	.long	.LASF40
	.byte	0x2
	.uleb128 0xf
	.long	.LASF41
	.byte	0x3
	.uleb128 0xf
	.long	.LASF42
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x1e4
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF43
	.uleb128 0x11
	.long	.LASF48
	.byte	0x5
	.byte	0x1
	.value	0x14d3
	.long	0x2b5
	.uleb128 0xa
	.long	.LASF44
	.byte	0x1
	.value	0x14d4
	.long	0x1e4
	.byte	0
	.uleb128 0xa
	.long	.LASF45
	.byte	0x1
	.value	0x14d5
	.long	0x1e4
	.byte	0x1
	.uleb128 0xa
	.long	.LASF46
	.byte	0x1
	.value	0x14d6
	.long	0x1e4
	.byte	0x2
	.uleb128 0xa
	.long	.LASF47
	.byte	0x1
	.value	0x14d7
	.long	0x1e4
	.byte	0x3
	.uleb128 0xa
	.long	.LASF48
	.byte	0x1
	.value	0x14d8
	.long	0x2b5
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	0x1e4
	.long	0x2c5
	.uleb128 0x8
	.long	0x97
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF68
	.byte	0x1
	.value	0x14dc
	.byte	0x1
	.long	0x30d
	.uleb128 0x13
	.string	"rng"
	.byte	0x1
	.value	0x14dc
	.long	0x30d
	.uleb128 0x14
	.long	.LASF49
	.byte	0x1
	.value	0x14dc
	.long	0x259
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.value	0x14dc
	.long	0x1e4
	.uleb128 0x14
	.long	.LASF45
	.byte	0x1
	.value	0x14dc
	.long	0x1e4
	.uleb128 0x15
	.string	"p"
	.byte	0x1
	.value	0x14de
	.long	0x313
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x313
	.uleb128 0x10
	.byte	0x4
	.long	0x266
	.uleb128 0x16
	.string	"get"
	.byte	0x1
	.value	0x1500
	.long	0x1d1
	.long	.LFB187
	.long	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fc
	.uleb128 0x17
	.string	"rng"
	.byte	0x1
	.value	0x1500
	.long	0x313
	.long	.LLST0
	.uleb128 0x18
	.long	.LASF50
	.byte	0x1
	.value	0x1500
	.long	0x1d1
	.long	.LLST1
	.uleb128 0x18
	.long	.LASF48
	.byte	0x1
	.value	0x1500
	.long	0x259
	.long	.LLST2
	.uleb128 0x19
	.long	.LASF46
	.byte	0x1
	.value	0x1502
	.long	0x1e4
	.long	.LLST3
	.uleb128 0x19
	.long	.LASF47
	.byte	0x1
	.value	0x1502
	.long	0x1e4
	.long	.LLST4
	.uleb128 0x19
	.long	.LASF51
	.byte	0x1
	.value	0x1502
	.long	0x1e4
	.long	.LLST5
	.uleb128 0x1a
	.long	.Ldebug_ranges0+0
	.long	0x3c9
	.uleb128 0x1b
	.string	"d"
	.byte	0x1
	.value	0x1507
	.long	0x259
	.long	.LLST6
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1507
	.long	0x259
	.long	.LLST7
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.value	0x1508
	.long	0x1e4
	.long	.LLST8
	.byte	0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1b
	.string	"d"
	.byte	0x1
	.value	0x1519
	.long	0x259
	.long	.LLST9
	.uleb128 0x1b
	.string	"s"
	.byte	0x1
	.value	0x1519
	.long	0x259
	.long	.LLST10
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.value	0x151a
	.long	0x1e4
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"isr"
	.byte	0x1
	.value	0x1547
	.long	0x25
	.long	.LFB190
	.long	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.long	0x447
	.uleb128 0x17
	.string	"rng"
	.byte	0x1
	.value	0x1547
	.long	0x313
	.long	.LLST12
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.value	0x1549
	.long	0x25f
	.long	.LLST13
	.uleb128 0x19
	.long	.LASF47
	.byte	0x1
	.value	0x154b
	.long	0x1e4
	.long	.LLST14
	.byte	0
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.value	0x14f8
	.long	.LFB185
	.long	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.long	0x50d
	.uleb128 0x1e
	.long	.LASF49
	.byte	0x1
	.value	0x14f8
	.long	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF54
	.byte	0x1
	.value	0x14f8
	.long	0x1e4
	.long	.LLST15
	.uleb128 0x18
	.long	.LASF45
	.byte	0x1
	.value	0x14f8
	.long	0x1e4
	.long	.LLST16
	.uleb128 0x1f
	.long	0x2c5
	.long	.LBB10
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x14fa
	.uleb128 0x20
	.long	0x2f6
	.long	.LLST17
	.uleb128 0x20
	.long	0x2ea
	.long	.LLST18
	.uleb128 0x20
	.long	0x2de
	.long	.LLST19
	.uleb128 0x20
	.long	0x2d2
	.long	.LLST20
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x21
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LBB12
	.long	.LBE12-.LBB12
	.uleb128 0x20
	.long	0x2d2
	.long	.LLST21
	.uleb128 0x20
	.long	0x2de
	.long	.LLST22
	.uleb128 0x20
	.long	0x2ea
	.long	.LLST23
	.uleb128 0x20
	.long	0x2f6
	.long	.LLST24
	.uleb128 0x22
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x23
	.long	0x302
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF56
	.byte	0x1
	.value	0x14fc
	.long	.LFB186
	.long	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d3
	.uleb128 0x1e
	.long	.LASF49
	.byte	0x1
	.value	0x14fc
	.long	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF54
	.byte	0x1
	.value	0x14fc
	.long	0x1e4
	.long	.LLST25
	.uleb128 0x18
	.long	.LASF45
	.byte	0x1
	.value	0x14fc
	.long	0x1e4
	.long	.LLST26
	.uleb128 0x1f
	.long	0x2c5
	.long	.LBB20
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0x14fe
	.uleb128 0x20
	.long	0x2f6
	.long	.LLST27
	.uleb128 0x20
	.long	0x2ea
	.long	.LLST28
	.uleb128 0x20
	.long	0x2de
	.long	.LLST29
	.uleb128 0x20
	.long	0x2d2
	.long	.LLST30
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x21
	.long	0x302
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LBB22
	.long	.LBE22-.LBB22
	.uleb128 0x20
	.long	0x2d2
	.long	.LLST31
	.uleb128 0x20
	.long	0x2de
	.long	.LLST32
	.uleb128 0x20
	.long	0x2ea
	.long	.LLST33
	.uleb128 0x20
	.long	0x2f6
	.long	.LLST34
	.uleb128 0x22
	.long	.LBB23
	.long	.LBE23-.LBB23
	.uleb128 0x23
	.long	0x302
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF57
	.byte	0x1
	.value	0x153f
	.long	0x1d1
	.long	.LFB188
	.long	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.long	0x624
	.uleb128 0x1e
	.long	.LASF50
	.byte	0x1
	.value	0x153f
	.long	0x1d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF48
	.byte	0x1
	.value	0x153f
	.long	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LVL69
	.long	0x319
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF58
	.byte	0x1
	.value	0x1543
	.long	0x1d1
	.long	.LFB189
	.long	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.long	0x675
	.uleb128 0x1e
	.long	.LASF50
	.byte	0x1
	.value	0x1543
	.long	0x1d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF48
	.byte	0x1
	.value	0x1543
	.long	0x259
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LVL71
	.long	0x319
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF59
	.byte	0x1
	.value	0x1564
	.long	.LFB191
	.long	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cd
	.uleb128 0x1e
	.long	.LASF60
	.byte	0x1
	.value	0x1564
	.long	0x1f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.value	0x1568
	.long	0x25
	.long	.LLST35
	.uleb128 0x27
	.long	.LVL73
	.long	0x3fc
	.long	0x6c2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.long	.LVL75
	.long	0x3fc
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF61
	.byte	0x1
	.value	0x14da
	.long	0x313
	.uleb128 0x5
	.byte	0x3
	.long	rng_isr
	.uleb128 0x29
	.long	.LASF62
	.byte	0x1
	.value	0x14db
	.long	0x313
	.uleb128 0x5
	.byte	0x3
	.long	rng_thr
	.uleb128 0x2a
	.long	.LASF63
	.byte	0x1
	.value	0x408
	.long	0xe8
	.uleb128 0x2a
	.long	.LASF64
	.byte	0x1
	.value	0xbc2
	.long	0x7a
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
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	.LVL44
	.long	.LFE187
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL11
	.value	0x1
	.byte	0x52
	.long	.LVL11
	.long	.LFE187
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x51
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x56
	.long	.LVL2
	.long	.LFE187
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL9
	.value	0x1
	.byte	0x51
	.long	.LVL9
	.long	.LVL10
	.value	0x2
	.byte	0x70
	.sleb128 2
	.long	.LVL10
	.long	.LVL12
	.value	0x1
	.byte	0x51
	.long	.LVL12
	.long	.LVL16
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	.LVL16
	.long	.LVL23
	.value	0x1
	.byte	0x51
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x51
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x70
	.sleb128 2
	.long	.LVL26
	.long	.LVL33
	.value	0x2
	.byte	0x75
	.sleb128 -24
	.long	.LVL35
	.long	.LVL42
	.value	0x2
	.byte	0x75
	.sleb128 -24
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	.LVL5
	.long	.LVL12
	.value	0x2
	.byte	0x70
	.sleb128 3
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x53
	.long	.LVL17
	.long	.LVL27
	.value	0x2
	.byte	0x70
	.sleb128 3
	.long	.LVL27
	.long	.LVL34
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x52
	.long	.LVL35
	.long	.LVL37
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL37
	.long	.LVL39
	.value	0x2
	.byte	0x75
	.sleb128 -24
	.long	.LVL39
	.long	.LVL41
	.value	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x75
	.sleb128 -24
	.byte	0x94
	.byte	0x1
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	.LVL8
	.long	.LVL16
	.value	0x2
	.byte	0x75
	.sleb128 -17
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	.LVL22
	.long	.LVL24
	.value	0x2
	.byte	0x75
	.sleb128 -17
	.long	.LVL26
	.long	.LVL34
	.value	0x2
	.byte	0x75
	.sleb128 -17
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x53
	.long	.LVL35
	.long	.LVL36
	.value	0x2
	.byte	0x75
	.sleb128 -17
	.long	.LVL37
	.long	.LVL43
	.value	0x2
	.byte	0x75
	.sleb128 -17
	.long	.LVL43
	.long	.LFE187
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL13
	.value	0x7
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL14
	.long	.LVL16
	.value	0x7
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL6
	.long	.LVL12
	.value	0x1
	.byte	0x56
	.long	.LVL12
	.long	.LVL13
	.value	0x7
	.byte	0x75
	.sleb128 -24
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14
	.value	0x9
	.byte	0x75
	.sleb128 -24
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 -24
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x7
	.byte	0x75
	.sleb128 -24
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL6
	.long	.LVL7
	.value	0x8
	.byte	0x70
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST9:
	.long	.LVL27
	.long	.LVL28
	.value	0x7
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL29
	.long	.LVL31
	.value	0x7
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.value	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL18
	.long	.LVL27
	.value	0x2
	.byte	0x75
	.sleb128 -36
	.long	.LVL27
	.long	.LVL28
	.value	0x7
	.byte	0x75
	.sleb128 -36
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.value	0x9
	.byte	0x75
	.sleb128 -36
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 -36
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x7
	.byte	0x75
	.sleb128 -36
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL32
	.long	.LVL38
	.value	0x1
	.byte	0x57
	.long	.LVL38
	.long	.LVL39
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL39
	.long	.LVL40
	.value	0x9
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.value	0x7
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL19
	.long	.LVL20
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL20
	.long	.LVL24
	.value	0x1
	.byte	0x52
	.long	.LVL24
	.long	.LVL25
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.value	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x70
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL45
	.long	.LVL46
	.value	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL52
	.value	0x1
	.byte	0x53
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x50
	.long	.LVL53
	.long	.LVL54
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x53
	.long	.LVL55
	.long	.LFE190
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL45
	.long	.LVL49
	.value	0x1
	.byte	0x52
	.long	.LVL49
	.long	.LVL52
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL52
	.long	.LVL54
	.value	0x1
	.byte	0x52
	.long	.LVL54
	.long	.LFE190
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL47
	.long	.LVL52
	.value	0x1
	.byte	0x51
	.long	.LVL54
	.long	.LFE190
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST15:
	.long	.LVL56
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL60
	.long	.LFE185
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST16:
	.long	.LVL56
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST17:
	.long	.LVL57
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST18:
	.long	.LVL57
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST19:
	.long	.LVL57
	.long	.LVL61
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL57
	.long	.LVL61
	.value	0x6
	.byte	0x3
	.long	rng_thr
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL59
	.long	.LVL61
	.value	0x6
	.byte	0x3
	.long	rng_thr
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL59
	.long	.LVL61
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST23:
	.long	.LVL59
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST24:
	.long	.LVL59
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST25:
	.long	.LVL62
	.long	.LVL66
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL66
	.long	.LFE186
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST26:
	.long	.LVL62
	.long	.LVL66
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST27:
	.long	.LVL63
	.long	.LVL66
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST28:
	.long	.LVL63
	.long	.LVL66
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL66
	.long	.LVL67
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST29:
	.long	.LVL63
	.long	.LVL67
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST30:
	.long	.LVL63
	.long	.LVL67
	.value	0x6
	.byte	0x3
	.long	rng_isr
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL65
	.long	.LVL67
	.value	0x6
	.byte	0x3
	.long	rng_isr
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL65
	.long	.LVL67
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST33:
	.long	.LVL65
	.long	.LVL66
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL66
	.long	.LVL67
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST34:
	.long	.LVL65
	.long	.LVL66
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST35:
	.long	.LVL73
	.long	.LVL74
	.value	0x1
	.byte	0x50
	.long	.LVL75
	.long	.LVL76
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB187
	.long	.LFE187-.LFB187
	.long	.LFB190
	.long	.LFE190-.LFB190
	.long	.LFB185
	.long	.LFE185-.LFB185
	.long	.LFB186
	.long	.LFE186-.LFB186
	.long	.LFB188
	.long	.LFE188-.LFB188
	.long	.LFB189
	.long	.LFE189-.LFB189
	.long	.LFB191
	.long	.LFE191-.LFB191
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
	.long	.LBB4
	.long	.LBE4
	.long	.LBB5
	.long	.LBE5
	.long	0
	.long	0
	.long	.LBB10
	.long	.LBE10
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LBB20
	.long	.LBE20
	.long	.LBB25
	.long	.LBE25
	.long	0
	.long	0
	.long	.LBB26
	.long	.LBE26
	.long	.LBB27
	.long	.LBE27
	.long	0
	.long	0
	.long	.LFB187
	.long	.LFE187
	.long	.LFB190
	.long	.LFE190
	.long	.LFB185
	.long	.LFE185
	.long	.LFB186
	.long	.LFE186
	.long	.LFB188
	.long	.LFE188
	.long	.LFB189
	.long	.LFE189
	.long	.LFB191
	.long	.LFE191
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"_POLL_NUM_TYPES"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF53:
	.string	"store"
.LASF6:
	.string	"__uint32_t"
.LASF57:
	.string	"rand_get"
.LASF25:
	.string	"VALUE"
.LASF20:
	.string	"RESERVED2"
.LASF23:
	.string	"RESERVED3"
.LASF55:
	.string	"rand_init"
.LASF48:
	.string	"rand"
.LASF59:
	.string	"isr_rand"
.LASF22:
	.string	"INTENCLR"
.LASF56:
	.string	"rand_isr_init"
.LASF8:
	.string	"long long int"
.LASF45:
	.string	"threshold"
.LASF30:
	.string	"char"
.LASF40:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF4:
	.string	"long int"
.LASF49:
	.string	"context"
.LASF64:
	.string	"aos_log_level"
.LASF38:
	.string	"_POLL_STATE_NOT_READY"
.LASF32:
	.string	"_POLL_TYPE_SIGNAL"
.LASF28:
	.string	"long double"
.LASF15:
	.string	"TASKS_STOP"
.LASF26:
	.string	"NRF_RNG_Type"
.LASF1:
	.string	"unsigned char"
.LASF31:
	.string	"_POLL_TYPE_IGNORE"
.LASF58:
	.string	"rand_isr_get"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF41:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF50:
	.string	"octets"
.LASF47:
	.string	"last"
.LASF60:
	.string	"param"
.LASF3:
	.string	"short unsigned int"
.LASF33:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF68:
	.string	"init"
.LASF62:
	.string	"rng_thr"
.LASF11:
	.string	"int32_t"
.LASF54:
	.string	"context_len"
.LASF17:
	.string	"EVENTS_VALRDY"
.LASF43:
	.string	"_Bool"
.LASF16:
	.string	"RESERVED0"
.LASF18:
	.string	"RESERVED1"
.LASF14:
	.string	"TASKS_START"
.LASF19:
	.string	"SHORTS"
.LASF7:
	.string	"long unsigned int"
.LASF21:
	.string	"INTENSET"
.LASF39:
	.string	"_POLL_STATE_SIGNALED"
.LASF36:
	.string	"_poll_types_bits"
.LASF44:
	.string	"count"
.LASF5:
	.string	"__int32_t"
.LASF29:
	.string	"u8_t"
.LASF65:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF51:
	.string	"remaining"
.LASF61:
	.string	"rng_isr"
.LASF52:
	.string	"avail"
.LASF37:
	.string	"_poll_states_bits"
.LASF66:
	.string	"src/rand.c"
.LASF67:
	.string	"/home/stone/Documents/pca"
.LASF42:
	.string	"_POLL_NUM_STATES"
.LASF63:
	.string	"ITM_RxBuffer"
.LASF24:
	.string	"CONFIG"
.LASF34:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF46:
	.string	"first"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
