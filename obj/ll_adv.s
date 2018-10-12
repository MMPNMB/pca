	.file	"ll_adv.c"
	.text
.Ltext0:
	.section	.text.unlikely.ll_adv_set_get,"ax",@progbits
.LCOLDB0:
	.section	.text.ll_adv_set_get,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ll_adv_set_get
.Ltext_cold0:
	.section	.text.ll_adv_set_get
	.globl	ll_adv_set_get
	.type	ll_adv_set_get, @function
ll_adv_set_get:
.LFB174:
	.file 1 "src/ll_adv.c"
	.loc 1 5314 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5316 0
	movl	$ll_adv, %eax
	.loc 1 5314 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5316 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE174:
	.size	ll_adv_set_get, .-ll_adv_set_get
	.section	.text.unlikely.ll_adv_set_get
.LCOLDE0:
	.section	.text.ll_adv_set_get
.LHOTE0:
	.section	.text.unlikely.ll_adv_params_set,"ax",@progbits
.LCOLDB1:
	.section	.text.ll_adv_params_set,"ax",@progbits
.LHOTB1:
	.globl	ll_adv_params_set
	.type	ll_adv_params_set, @function
ll_adv_params_set:
.LFB175:
	.loc 1 5321 0
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
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5321 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edi
	movl	24(%ebp), %esi
	movl	28(%ebp), %ebx
	.loc 1 5322 0
	movb	$0, -33(%ebp)
	movb	$1, -32(%ebp)
	.loc 1 5321 0
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	.loc 1 5322 0
	movb	$6, -31(%ebp)
	movb	$2, -30(%ebp)
	movb	$1, -29(%ebp)
	.loc 1 5321 0
	movl	%eax, -52(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 5329 0
	call	radio_adv_is_enabled
.LVL1:
	testl	%eax, %eax
	movl	%eax, -44(%ebp)
	jne	.L12
	.loc 1 5333 0
	cmpb	$1, -48(%ebp)
	.loc 1 5338 0
	movb	-60(%ebp), %cl
	.loc 1 5333 0
	cmove	%eax, %edi
	.loc 1 5337 0
	movb	ll_adv, %al
	andl	$7, %ebx
	.loc 1 5338 0
	andl	$3, %ecx
	.loc 1 5333 0
	movw	%di, ll_adv+2
	.loc 1 5338 0
	sall	$3, %ecx
	.loc 1 5337 0
	andl	$-32, %eax
	.loc 1 5338 0
	orl	%eax, %ebx
	orl	%ebx, %ecx
	movb	%cl, ll_adv
	.loc 1 5339 0
	call	radio_adv_data_get
.LVL2:
	.loc 1 5340 0
	movzbl	79(%eax), %ecx
	imull	$39, %ecx, %ecx
	addl	%ecx, %eax
.LVL3:
	.loc 1 5341 0
	movzbl	-48(%ebp), %ecx
	movb	(%eax), %bl
	movb	-33(%ebp,%ecx), %cl
	andl	$-16, %ebx
	andl	$15, %ecx
	orl	%ebx, %ecx
	.loc 1 5343 0
	movb	%cl, %dl
	.loc 1 5342 0
	movb	%cl, %bl
	.loc 1 5343 0
	andl	$15, %edx
	.loc 1 5342 0
	andl	$-17, %ebx
	.loc 1 5343 0
	cmpb	$1, %dl
	.loc 1 5342 0
	movb	%bl, (%eax)
	.loc 1 5343 0
	ja	.L7
	.loc 1 5346 0
	orl	$32, %ebx
	movb	%bl, (%eax)
	jmp	.L8
.L7:
	.loc 1 5348 0
	andl	$-49, %ecx
	movb	%cl, (%eax)
.L8:
	.loc 1 5350 0
	movb	-52(%ebp), %bl
	movb	(%eax), %cl
	andl	$1, %ebx
	andl	$-65, %ecx
	movl	%ebx, %edi
	sall	$6, %edi
	orl	%edi, %ecx
	.loc 1 5351 0
	movb	%cl, %dl
	.loc 1 5352 0
	andl	$15, %ecx
	.loc 1 5351 0
	andl	$127, %edx
	.loc 1 5352 0
	decb	%cl
	.loc 1 5351 0
	movb	%dl, (%eax)
	.loc 1 5352 0
	jne	.L9
	.loc 1 5353 0
	movb	-56(%ebp), %cl
	sall	$7, %ecx
	orl	%ecx, %edx
	movb	%dl, (%eax)
	.loc 1 5354 0
	movl	(%esi), %ecx
	movl	%ecx, 8(%eax)
	movw	4(%esi), %dx
	.loc 1 5356 0
	movb	$12, 1(%eax)
	.loc 1 5354 0
	movw	%dx, 12(%eax)
	jmp	.L10
.L9:
	.loc 1 5357 0
	cmpb	$0, 1(%eax)
	jne	.L10
	.loc 1 5358 0
	movb	$6, 1(%eax)
.L10:
	.loc 1 5360 0
	call	radio_scan_data_get
.LVL4:
	.loc 1 5361 0
	movzbl	79(%eax), %edx
	.loc 1 5365 0
	sall	$6, %ebx
	.loc 1 5366 0
	orl	$4, %ebx
	.loc 1 5361 0
	imull	$39, %edx, %edx
	addl	%edx, %eax
.LVL5:
	.loc 1 5367 0
	cmpb	$0, 1(%eax)
	.loc 1 5366 0
	movb	%bl, (%eax)
	.loc 1 5367 0
	jne	.L4
	.loc 1 5368 0
	movb	$6, 1(%eax)
	jmp	.L4
.LVL6:
.L12:
	.loc 1 5330 0
	movl	$12, -44(%ebp)
.L4:
	.loc 1 5371 0
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
	movl	-44(%ebp), %eax
	je	.L11
	call	__stack_chk_fail
.LVL7:
.L11:
	addl	$60, %esp
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
.LFE175:
	.size	ll_adv_params_set, .-ll_adv_params_set
	.section	.text.unlikely.ll_adv_params_set
.LCOLDE1:
	.section	.text.ll_adv_params_set
.LHOTE1:
	.section	.text.unlikely.ll_adv_data_set,"ax",@progbits
.LCOLDB2:
	.section	.text.ll_adv_data_set,"ax",@progbits
.LHOTB2:
	.globl	ll_adv_data_set
	.type	ll_adv_data_set, @function
ll_adv_data_set:
.LFB176:
	.loc 1 5373 0
	.cfi_startproc
.LVL8:
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
	.loc 1 5373 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %esi
	movl	%eax, -32(%ebp)
	.loc 1 5378 0
	call	radio_adv_data_get
.LVL9:
	.loc 1 5379 0
	movzbl	79(%eax), %edi
	.loc 1 5378 0
	movl	%eax, -28(%ebp)
.LVL10:
	.loc 1 5379 0
	movl	%edi, %ebx
	imull	$39, %edi, %edi
	addl	%eax, %edi
.LVL11:
	.loc 1 5380 0
	movb	(%edi), %al
.LVL12:
	movb	%al, %dl
	andl	$15, %edx
	decb	%dl
	je	.L15
	.loc 1 5385 0
	movl	-28(%ebp), %edx
	cmpb	78(%edx), %bl
	jne	.L17
	.loc 1 5386 0
	incl	%ebx
.LVL13:
	.loc 1 5388 0
	movb	$0, %dl
	cmpb	$2, %bl
	cmove	%edx, %ebx
.LVL14:
.L17:
	.loc 1 5393 0
	movzbl	%bl, %edx
	.loc 1 5394 0
	andl	$15, %eax
	.loc 1 5393 0
	imull	$39, %edx, %edx
	addl	-28(%ebp), %edx
.LVL15:
	.loc 1 5394 0
	movb	(%edx), %cl
	andl	$-16, %ecx
	orl	%ecx, %eax
	.loc 1 5395 0
	movb	%al, %cl
	.loc 1 5397 0
	andl	$-49, %eax
	.loc 1 5395 0
	andl	$-17, %ecx
	movb	%cl, (%edx)
	.loc 1 5397 0
	movb	(%edi), %cl
	andl	$32, %ecx
	orl	%eax, %ecx
	movb	%cl, (%edx)
	.loc 1 5401 0
	movb	(%edi), %al
	andl	$-65, %ecx
	andl	$64, %eax
	orl	%ecx, %eax
	movb	%al, (%edx)
	.loc 1 5402 0
	movb	(%edi), %cl
	andl	$127, %eax
	andl	$-128, %ecx
	orl	%ecx, %eax
	.loc 1 5405 0
	movzbl	-32(%ebp), %ecx
	.loc 1 5402 0
	movb	%al, (%edx)
	.loc 1 5403 0
	movl	2(%edi), %eax
	movl	%eax, 2(%edx)
	movw	6(%edi), %ax
	movw	%ax, 6(%edx)
	.loc 1 5405 0
	leal	8(%edx), %eax
	movl	%eax, %edi
.LVL16:
	.loc 1 5406 0
	movb	-32(%ebp), %al
	.loc 1 5405 0
	rep movsb
	.loc 1 5406 0
	addl	$6, %eax
	movb	%al, 1(%edx)
	.loc 1 5407 0
	movl	-28(%ebp), %eax
	movb	%bl, 79(%eax)
.LVL17:
.L15:
	.loc 1 5408 0
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
.LFE176:
	.size	ll_adv_data_set, .-ll_adv_data_set
	.section	.text.unlikely.ll_adv_data_set
.LCOLDE2:
	.section	.text.ll_adv_data_set
.LHOTE2:
	.section	.text.unlikely.ll_scan_data_set,"ax",@progbits
.LCOLDB3:
	.section	.text.ll_scan_data_set,"ax",@progbits
.LHOTB3:
	.globl	ll_scan_data_set
	.type	ll_scan_data_set, @function
ll_scan_data_set:
.LFB177:
	.loc 1 5410 0
	.cfi_startproc
.LVL18:
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
	.loc 1 5410 0
	movl	8(%ebp), %esi
	.loc 1 5415 0
	call	radio_scan_data_get
.LVL19:
	.loc 1 5416 0
	movzbl	79(%eax), %ecx
	.loc 1 5415 0
	movl	%eax, %ebx
.LVL20:
	.loc 1 5416 0
	cmpb	%cl, 78(%eax)
	movb	%cl, %dl
	jne	.L23
	.loc 1 5417 0
	leal	1(%ecx), %edx
.LVL21:
	.loc 1 5419 0
	movb	$0, %al
.LVL22:
	cmpb	$2, %dl
	cmove	%eax, %edx
.LVL23:
.L23:
	.loc 1 5424 0
	imull	$39, %ecx, %ecx
	leal	(%ecx,%ebx), %eax
	movl	%eax, -28(%ebp)
.LVL24:
	.loc 1 5426 0
	movzbl	%dl, %eax
.LVL25:
	imull	$39, %eax, %eax
	addl	%ebx, %eax
.LVL26:
	.loc 1 5427 0
	movzbl	(%eax), %edi
	.loc 1 5435 0
	addl	$8, %eax
.LVL27:
	.loc 1 5427 0
	andl	$-16, %edi
	orl	$4, %edi
	.loc 1 5429 0
	movl	%edi, %ecx
	.loc 1 5430 0
	andl	$4, %edi
	.loc 1 5429 0
	andl	$-49, %ecx
	movb	%cl, -8(%eax)
	.loc 1 5430 0
	movl	-28(%ebp), %ecx
	movb	(%ecx), %cl
	andl	$64, %ecx
	.loc 1 5431 0
	orl	%ecx, %edi
	movl	%edi, %ecx
	.loc 1 5432 0
	leal	6(%esi), %edi
	.loc 1 5431 0
	movb	%cl, -8(%eax)
	.loc 1 5432 0
	movl	%edi, %ecx
	.loc 1 5433 0
	movl	-28(%ebp), %edi
	.loc 1 5432 0
	movb	%cl, -7(%eax)
	.loc 1 5433 0
	movl	2(%edi), %edi
	movl	%edi, -6(%eax)
	movl	-28(%ebp), %edi
	movw	6(%edi), %cx
	movw	%cx, -2(%eax)
	.loc 1 5435 0
	movl	%esi, %ecx
	movl	%eax, %edi
	movl	12(%ebp), %esi
	movzbl	%cl, %ecx
	rep movsb
	.loc 1 5436 0
	movb	%dl, 79(%ebx)
	.loc 1 5437 0
	addl	$28, %esp
	popl	%ebx
	.cfi_restore 3
.LVL28:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE177:
	.size	ll_scan_data_set, .-ll_scan_data_set
	.section	.text.unlikely.ll_scan_data_set
.LCOLDE3:
	.section	.text.ll_scan_data_set
.LHOTE3:
	.section	.text.unlikely.ll_adv_enable,"ax",@progbits
.LCOLDB4:
	.section	.text.ll_adv_enable,"ax",@progbits
.LHOTB4:
	.globl	ll_adv_enable
	.type	ll_adv_enable, @function
ll_adv_enable:
.LFB178:
	.loc 1 5439 0
	.cfi_startproc
.LVL29:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 5446 0
	cmpb	$0, 8(%ebp)
	jne	.L28
	.loc 1 5477 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5447 0
	jmp	radio_adv_disable
.LVL30:
.L28:
	.cfi_restore_state
	.loc 1 5448 0
	call	radio_adv_is_enabled
.LVL31:
	.loc 1 5449 0
	xorl	%edx, %edx
	.loc 1 5448 0
	testl	%eax, %eax
	jne	.L29
	.loc 1 5451 0
	call	radio_adv_data_get
.LVL32:
	movl	%eax, %ebx
.LVL33:
	.loc 1 5452 0
	call	radio_scan_data_get
.LVL34:
	.loc 1 5453 0
	movzbl	79(%ebx), %edx
	imull	$39, %edx, %edx
	addl	%edx, %ebx
.LVL35:
	.loc 1 5455 0
	movzbl	79(%eax), %edx
	imull	$39, %edx, %edx
	leal	(%eax,%edx), %esi
.LVL36:
.LVL37:
.LBB2:
	.loc 1 5465 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	movb	(%ebx), %al
	shrb	$6, %al
	andl	$1, %eax
	pushl	%eax
	call	ll_addr_get
.LVL38:
	.loc 1 5464 0
	movl	(%eax), %edx
	movl	%edx, 2(%ebx)
	movw	4(%eax), %ax
	movw	%ax, 6(%ebx)
	.loc 1 5469 0
	popl	%edx
	popl	%ecx
	pushl	$0
	movb	(%ebx), %al
	shrb	$6, %al
	andl	$1, %eax
	pushl	%eax
	call	ll_addr_get
.LVL39:
	.loc 1 5468 0
	movl	(%eax), %edx
	movl	%edx, 2(%esi)
	movw	4(%eax), %ax
	movw	%ax, 6(%esi)
.LBE2:
	.loc 1 5475 0
	movb	ll_adv, %al
	.loc 1 5474 0
	pushl	$255
	.loc 1 5475 0
	movb	%al, %dl
	.loc 1 5474 0
	andl	$7, %eax
	.loc 1 5475 0
	shrb	$3, %dl
	.loc 1 5474 0
	andl	$3, %edx
	pushl	%edx
	pushl	%eax
	movzwl	ll_adv+2, %eax
	pushl	%eax
	call	radio_adv_enable
.LVL40:
	.loc 1 5476 0
	addl	$32, %esp
	movl	%eax, %edx
.LVL41:
.L29:
	.loc 1 5477 0
	leal	-8(%ebp), %esp
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE178:
	.size	ll_adv_enable, .-ll_adv_enable
	.section	.text.unlikely.ll_adv_enable
.LCOLDE4:
	.section	.text.ll_adv_enable
.LHOTE4:
	.section	.bss.ll_adv,"aw",@nobits
	.align 4
	.type	ll_adv, @object
	.size	ll_adv, 4
ll_adv:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.ll_adv_set_get
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x80b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF106
	.byte	0xc
	.long	.LASF107
	.long	.LASF108
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
	.long	.LASF12
	.byte	0x1
	.byte	0xc
	.long	0x68
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
	.uleb128 0x5
	.long	.LASF13
	.byte	0x1
	.value	0x107
	.long	0x5d
	.uleb128 0x5
	.long	.LASF14
	.byte	0x1
	.value	0x123
	.long	0x48
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1
	.value	0x124
	.long	0x56
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.value	0x125
	.long	0x2c
	.uleb128 0x6
	.long	.LASF22
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0x386
	.long	0xeb
	.uleb128 0x7
	.long	.LASF17
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.uleb128 0x7
	.long	.LASF19
	.byte	0x2
	.uleb128 0x7
	.long	.LASF20
	.byte	0x3
	.uleb128 0x7
	.long	.LASF21
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF23
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0x38d
	.long	0x11b
	.uleb128 0x7
	.long	.LASF24
	.byte	0
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.uleb128 0x7
	.long	.LASF27
	.byte	0x3
	.uleb128 0x7
	.long	.LASF28
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	0x97
	.long	0x12b
	.uleb128 0x9
	.long	0x7d
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	0x97
	.long	0x13b
	.uleb128 0x9
	.long	0x7d
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x97
	.long	0x14b
	.uleb128 0x9
	.long	0x7d
	.byte	0x1e
	.byte	0
	.uleb128 0x8
	.long	0x97
	.long	0x15b
	.uleb128 0x9
	.long	0x7d
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x25
	.byte	0x1
	.value	0x932
	.long	0x183
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.value	0x933
	.long	0x11b
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.value	0x934
	.long	0x13b
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0xc
	.byte	0x1
	.value	0x938
	.long	0x1ab
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.value	0x939
	.long	0x11b
	.byte	0
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.value	0x93a
	.long	0x11b
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x25
	.byte	0x1
	.value	0x93e
	.long	0x1d3
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.value	0x93f
	.long	0x11b
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.value	0x940
	.long	0x13b
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.long	.LASF36
	.byte	0xc
	.byte	0x1
	.value	0x944
	.long	0x1fb
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.value	0x945
	.long	0x11b
	.byte	0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.value	0x946
	.long	0x11b
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.byte	0x16
	.byte	0x1
	.value	0x94d
	.long	0x28d
	.uleb128 0xb
	.long	.LASF38
	.byte	0x1
	.value	0x94e
	.long	0x28d
	.byte	0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x1
	.value	0x94f
	.long	0x12b
	.byte	0x4
	.uleb128 0xb
	.long	.LASF40
	.byte	0x1
	.value	0x950
	.long	0x97
	.byte	0x7
	.uleb128 0xb
	.long	.LASF41
	.byte	0x1
	.value	0x951
	.long	0xa3
	.byte	0x8
	.uleb128 0xb
	.long	.LASF42
	.byte	0x1
	.value	0x952
	.long	0xa3
	.byte	0xa
	.uleb128 0xb
	.long	.LASF43
	.byte	0x1
	.value	0x953
	.long	0xa3
	.byte	0xc
	.uleb128 0xb
	.long	.LASF44
	.byte	0x1
	.value	0x954
	.long	0xa3
	.byte	0xe
	.uleb128 0xb
	.long	.LASF45
	.byte	0x1
	.value	0x955
	.long	0x14b
	.byte	0x10
	.uleb128 0xd
	.string	"hop"
	.byte	0x1
	.value	0x956
	.long	0x97
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.byte	0x15
	.uleb128 0xd
	.string	"sca"
	.byte	0x1
	.value	0x957
	.long	0x97
	.byte	0x1
	.byte	0x3
	.byte	0
	.byte	0x15
	.byte	0
	.uleb128 0x8
	.long	0x97
	.long	0x29d
	.uleb128 0x9
	.long	0x7d
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x22
	.byte	0x1
	.value	0x94a
	.long	0x2d2
	.uleb128 0xb
	.long	.LASF47
	.byte	0x1
	.value	0x94b
	.long	0x11b
	.byte	0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.value	0x94c
	.long	0x11b
	.byte	0x6
	.uleb128 0xb
	.long	.LASF48
	.byte	0x1
	.value	0x95a
	.long	0x1fb
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	.LASF49
	.byte	0x1
	.long	0x48
	.byte	0x1
	.value	0x95e
	.long	0x33e
	.uleb128 0x7
	.long	.LASF50
	.byte	0
	.uleb128 0x7
	.long	.LASF51
	.byte	0x1
	.uleb128 0x7
	.long	.LASF52
	.byte	0x2
	.uleb128 0x7
	.long	.LASF53
	.byte	0x3
	.uleb128 0x7
	.long	.LASF54
	.byte	0x3
	.uleb128 0x7
	.long	.LASF55
	.byte	0x4
	.uleb128 0x7
	.long	.LASF56
	.byte	0x5
	.uleb128 0x7
	.long	.LASF57
	.byte	0x5
	.uleb128 0x7
	.long	.LASF58
	.byte	0x6
	.uleb128 0x7
	.long	.LASF59
	.byte	0x7
	.uleb128 0x7
	.long	.LASF60
	.byte	0x7
	.uleb128 0x7
	.long	.LASF61
	.byte	0x7
	.uleb128 0x7
	.long	.LASF62
	.byte	0x7
	.uleb128 0x7
	.long	.LASF63
	.byte	0x7
	.uleb128 0x7
	.long	.LASF64
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x25
	.byte	0x1
	.value	0x978
	.long	0x384
	.uleb128 0xf
	.long	.LASF65
	.byte	0x1
	.value	0x979
	.long	0x15b
	.uleb128 0xf
	.long	.LASF66
	.byte	0x1
	.value	0x97a
	.long	0x183
	.uleb128 0xf
	.long	.LASF67
	.byte	0x1
	.value	0x97b
	.long	0x1d3
	.uleb128 0xf
	.long	.LASF68
	.byte	0x1
	.value	0x97c
	.long	0x1ab
	.uleb128 0xf
	.long	.LASF69
	.byte	0x1
	.value	0x97d
	.long	0x29d
	.byte	0
	.uleb128 0xa
	.long	.LASF70
	.byte	0x27
	.byte	0x1
	.value	0x971
	.long	0x3ff
	.uleb128 0x10
	.long	.LASF71
	.byte	0x1
	.value	0x972
	.long	0x97
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.string	"rfu"
	.byte	0x1
	.value	0x973
	.long	0x97
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1
	.value	0x974
	.long	0x97
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1
	.value	0x975
	.long	0x97
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1
	.value	0x976
	.long	0x97
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0x977
	.long	0x97
	.byte	0x1
	.byte	0x8
	.byte	0
	.byte	0x1
	.uleb128 0xb
	.long	.LASF75
	.byte	0x1
	.value	0x980
	.long	0x33e
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.long	.LASF76
	.byte	0x50
	.byte	0x1
	.value	0xa53
	.long	0x434
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.value	0xa54
	.long	0x434
	.byte	0
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.value	0xa5b
	.long	0x97
	.byte	0x4e
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.value	0xa5c
	.long	0x97
	.byte	0x4f
	.byte	0
	.uleb128 0x8
	.long	0x97
	.long	0x44a
	.uleb128 0x9
	.long	0x7d
	.byte	0x1
	.uleb128 0x9
	.long	0x7d
	.byte	0x26
	.byte	0
	.uleb128 0x11
	.long	0x8b
	.uleb128 0xa
	.long	.LASF79
	.byte	0x4
	.byte	0x1
	.value	0x14ba
	.long	0x48a
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.value	0x14bb
	.long	0x97
	.byte	0x1
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF80
	.byte	0x1
	.value	0x14bc
	.long	0x97
	.byte	0x1
	.byte	0x2
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x1
	.value	0x14bd
	.long	0xa3
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF109
	.byte	0x1
	.value	0x14c1
	.long	0x4a0
	.long	.LFB174
	.long	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x13
	.byte	0x4
	.long	0x44f
	.uleb128 0x14
	.long	.LASF89
	.byte	0x1
	.value	0x14c5
	.long	0xaf
	.long	.LFB175
	.long	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.long	0x57d
	.uleb128 0x15
	.long	.LASF42
	.byte	0x1
	.value	0x14c5
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF81
	.byte	0x1
	.value	0x14c5
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF82
	.byte	0x1
	.value	0x14c6
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF83
	.byte	0x1
	.value	0x14c6
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x15
	.long	.LASF84
	.byte	0x1
	.value	0x14c7
	.long	0x588
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.long	.LASF45
	.byte	0x1
	.value	0x14c7
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.value	0x14c8
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x16
	.long	.LASF49
	.byte	0x1
	.value	0x14ca
	.long	0x59d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.value	0x14cf
	.long	0x5a2
	.long	.LLST0
	.uleb128 0x18
	.string	"pdu"
	.byte	0x1
	.value	0x14d0
	.long	0x5a8
	.long	.LLST1
	.uleb128 0x19
	.long	.LVL1
	.long	0x7bd
	.uleb128 0x19
	.long	.LVL2
	.long	0x7c9
	.uleb128 0x19
	.long	.LVL4
	.long	0x7d5
	.uleb128 0x19
	.long	.LVL7
	.long	0x7e1
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.long	0x583
	.uleb128 0x1a
	.long	0x97
	.uleb128 0x1a
	.long	0x57d
	.uleb128 0x8
	.long	0x583
	.long	0x59d
	.uleb128 0x9
	.long	0x7d
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.long	0x58d
	.uleb128 0x13
	.byte	0x4
	.long	0x3ff
	.uleb128 0x13
	.byte	0x4
	.long	0x384
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.value	0x14fc
	.long	.LFB176
	.long	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.long	0x62c
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.value	0x14fc
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF30
	.byte	0x1
	.value	0x14fc
	.long	0x588
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.value	0x14fe
	.long	0x5a2
	.long	.LLST2
	.uleb128 0x17
	.long	.LASF85
	.byte	0x1
	.value	0x14ff
	.long	0x5a8
	.long	.LLST3
	.uleb128 0x18
	.string	"pdu"
	.byte	0x1
	.value	0x1500
	.long	0x5a8
	.long	.LLST4
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.value	0x1501
	.long	0x97
	.long	.LLST5
	.uleb128 0x19
	.long	.LVL9
	.long	0x7c9
	.byte	0
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.value	0x1521
	.long	.LFB177
	.long	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a8
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.value	0x1521
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF30
	.byte	0x1
	.value	0x1521
	.long	0x588
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.value	0x1523
	.long	0x5a2
	.long	.LLST6
	.uleb128 0x17
	.long	.LASF85
	.byte	0x1
	.value	0x1524
	.long	0x5a8
	.long	.LLST7
	.uleb128 0x18
	.string	"pdu"
	.byte	0x1
	.value	0x1525
	.long	0x5a8
	.long	.LLST8
	.uleb128 0x16
	.long	.LASF78
	.byte	0x1
	.value	0x1526
	.long	0x97
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x19
	.long	.LVL19
	.long	0x7d5
	.byte	0
	.uleb128 0x14
	.long	.LASF90
	.byte	0x1
	.value	0x153e
	.long	0xaf
	.long	.LFB178
	.long	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.long	0x78c
	.uleb128 0x15
	.long	.LASF91
	.byte	0x1
	.value	0x153e
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.value	0x1540
	.long	0x5a2
	.long	.LLST9
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.value	0x1541
	.long	0x5a2
	.long	.LLST10
	.uleb128 0x1d
	.long	.LASF92
	.byte	0x1
	.value	0x1542
	.long	0x97
	.sleb128 -1
	.uleb128 0x17
	.long	.LASF93
	.byte	0x1
	.value	0x1543
	.long	0x5a8
	.long	.LLST11
	.uleb128 0x17
	.long	.LASF70
	.byte	0x1
	.value	0x1544
	.long	0x5a8
	.long	.LLST12
	.uleb128 0x17
	.long	.LASF94
	.byte	0x1
	.value	0x1545
	.long	0xaf
	.long	.LLST13
	.uleb128 0x1e
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x75e
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.value	0x1554
	.long	0x78c
	.long	.LLST14
	.uleb128 0x19
	.long	.LVL38
	.long	0x7ea
	.uleb128 0x19
	.long	.LVL39
	.long	0x7ea
	.byte	0
	.uleb128 0x1f
	.long	.LVL30
	.long	0x7f6
	.uleb128 0x19
	.long	.LVL31
	.long	0x7bd
	.uleb128 0x19
	.long	.LVL32
	.long	0x7c9
	.uleb128 0x19
	.long	.LVL34
	.long	0x7d5
	.uleb128 0x19
	.long	.LVL40
	.long	0x802
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF96
	.uleb128 0x16
	.long	.LASF97
	.byte	0x1
	.value	0x14c0
	.long	0x44f
	.uleb128 0x5
	.byte	0x3
	.long	ll_adv
	.uleb128 0x20
	.long	.LASF98
	.byte	0x1
	.value	0x2df
	.long	0x2c
	.uleb128 0x20
	.long	.LASF99
	.byte	0x1
	.value	0xed1
	.long	0x44a
	.uleb128 0x21
	.long	.LASF100
	.long	.LASF100
	.byte	0x1
	.value	0xaa7
	.uleb128 0x21
	.long	.LASF101
	.long	.LASF101
	.byte	0x1
	.value	0xaa2
	.uleb128 0x21
	.long	.LASF102
	.long	.LASF102
	.byte	0x1
	.value	0xaa3
	.uleb128 0x22
	.long	.LASF110
	.long	.LASF110
	.uleb128 0x21
	.long	.LASF103
	.long	.LASF103
	.byte	0x1
	.value	0xac3
	.uleb128 0x21
	.long	.LASF104
	.long	.LASF104
	.byte	0x1
	.value	0xaa6
	.uleb128 0x21
	.long	.LASF105
	.long	.LASF105
	.byte	0x1
	.value	0xaa4
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x17
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL10
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LFE176
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST3:
	.long	.LVL11
	.long	.LVL16
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST4:
	.long	.LVL15
	.long	.LVL17
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL13
	.long	.LVL17
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL20
	.long	.LVL22
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL28
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LFE177
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST8:
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LFE177
	.value	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL34
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL33
	.long	.LVL34-1
	.value	0x1
	.byte	0x50
	.long	.LVL34-1
	.long	.LVL35
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL36
	.long	.LVL41
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST12:
	.long	.LVL35
	.long	.LVL41
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST13:
	.long	.LVL40
	.long	.LVL41
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL36
	.long	.LVL41
	.value	0x2
	.byte	0x30
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
	.long	.LFB174
	.long	.LFE174-.LFB174
	.long	.LFB175
	.long	.LFE175-.LFB175
	.long	.LFB176
	.long	.LFE176-.LFB176
	.long	.LFB177
	.long	.LFE177-.LFB177
	.long	.LFB178
	.long	.LFE178-.LFB178
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB174
	.long	.LFE174
	.long	.LFB175
	.long	.LFE175
	.long	.LFB176
	.long	.LFE176
	.long	.LFB177
	.long	.LFE177
	.long	.LFB178
	.long	.LFE178
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF95:
	.string	"priv"
.LASF101:
	.string	"radio_adv_data_get"
.LASF24:
	.string	"_POLL_STATE_NOT_READY"
.LASF64:
	.string	"PDU_ADV_TYPE_AUX_CONNECT_RSP"
.LASF26:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF16:
	.string	"u32_t"
.LASF65:
	.string	"adv_ind"
.LASF100:
	.string	"radio_adv_is_enabled"
.LASF83:
	.string	"direct_addr_type"
.LASF50:
	.string	"PDU_ADV_TYPE_ADV_IND"
.LASF5:
	.string	"short int"
.LASF10:
	.string	"sizetype"
.LASF93:
	.string	"pdu_scan"
.LASF109:
	.string	"ll_adv_set_get"
.LASF81:
	.string	"adv_type"
.LASF39:
	.string	"crc_init"
.LASF30:
	.string	"data"
.LASF67:
	.string	"scan_req"
.LASF107:
	.string	"src/ll_adv.c"
.LASF35:
	.string	"pdu_adv_payload_scan_rsp"
.LASF60:
	.string	"PDU_ADV_TYPE_AUX_ADV_IND"
.LASF40:
	.string	"win_size"
.LASF66:
	.string	"direct_ind"
.LASF91:
	.string	"enable"
.LASF72:
	.string	"chan_sel"
.LASF21:
	.string	"_POLL_NUM_TYPES"
.LASF43:
	.string	"latency"
.LASF57:
	.string	"PDU_ADV_TYPE_AUX_CONNECT_REQ"
.LASF52:
	.string	"PDU_ADV_TYPE_NONCONN_IND"
.LASF88:
	.string	"radio_scan_data"
.LASF49:
	.string	"pdu_adv_type"
.LASF59:
	.string	"PDU_ADV_TYPE_EXT_IND"
.LASF9:
	.string	"long long unsigned int"
.LASF89:
	.string	"ll_adv_params_set"
.LASF82:
	.string	"own_addr_type"
.LASF11:
	.string	"char"
.LASF90:
	.string	"ll_adv_enable"
.LASF7:
	.string	"long int"
.LASF63:
	.string	"PDU_ADV_TYPE_AUX_CHAIN_IND"
.LASF29:
	.string	"addr"
.LASF47:
	.string	"init_addr"
.LASF98:
	.string	"aos_log_level"
.LASF32:
	.string	"pdu_adv_payload_direct_ind"
.LASF18:
	.string	"_POLL_TYPE_SIGNAL"
.LASF38:
	.string	"access_addr"
.LASF69:
	.string	"connect_ind"
.LASF4:
	.string	"unsigned char"
.LASF108:
	.string	"/home/stone/Documents/pca"
.LASF61:
	.string	"PDU_ADV_TYPE_AUX_SCAN_RSP"
.LASF33:
	.string	"adv_addr"
.LASF51:
	.string	"PDU_ADV_TYPE_DIRECT_IND"
.LASF102:
	.string	"radio_scan_data_get"
.LASF17:
	.string	"_POLL_TYPE_IGNORE"
.LASF97:
	.string	"ll_adv"
.LASF103:
	.string	"ll_addr_get"
.LASF3:
	.string	"signed char"
.LASF104:
	.string	"radio_adv_disable"
.LASF71:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF92:
	.string	"rl_idx"
.LASF27:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF55:
	.string	"PDU_ADV_TYPE_SCAN_RSP"
.LASF74:
	.string	"rx_addr"
.LASF80:
	.string	"filter_policy"
.LASF78:
	.string	"last"
.LASF6:
	.string	"short unsigned int"
.LASF94:
	.string	"status"
.LASF62:
	.string	"PDU_ADV_TYPE_AUX_SYNC_IND"
.LASF19:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF42:
	.string	"interval"
.LASF13:
	.string	"int32_t"
.LASF34:
	.string	"tgt_addr"
.LASF70:
	.string	"pdu_adv"
.LASF96:
	.string	"_Bool"
.LASF79:
	.string	"ll_adv_set"
.LASF41:
	.string	"win_offset"
.LASF44:
	.string	"timeout"
.LASF105:
	.string	"radio_adv_enable"
.LASF54:
	.string	"PDU_ADV_TYPE_AUX_SCAN_REQ"
.LASF8:
	.string	"long unsigned int"
.LASF25:
	.string	"_POLL_STATE_SIGNALED"
.LASF87:
	.string	"ll_scan_data_set"
.LASF73:
	.string	"tx_addr"
.LASF76:
	.string	"radio_adv_data"
.LASF22:
	.string	"_poll_types_bits"
.LASF58:
	.string	"PDU_ADV_TYPE_SCAN_IND"
.LASF46:
	.string	"pdu_adv_payload_connect_ind"
.LASF12:
	.string	"__int32_t"
.LASF14:
	.string	"u8_t"
.LASF106:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF53:
	.string	"PDU_ADV_TYPE_SCAN_REQ"
.LASF2:
	.string	"long double"
.LASF15:
	.string	"u16_t"
.LASF86:
	.string	"ll_adv_data_set"
.LASF23:
	.string	"_poll_states_bits"
.LASF45:
	.string	"chan_map"
.LASF56:
	.string	"PDU_ADV_TYPE_CONNECT_IND"
.LASF31:
	.string	"pdu_adv_payload_adv_ind"
.LASF68:
	.string	"scan_rsp"
.LASF28:
	.string	"_POLL_NUM_STATES"
.LASF84:
	.string	"direct_addr"
.LASF37:
	.string	"scan_addr"
.LASF110:
	.string	"__stack_chk_fail"
.LASF99:
	.string	"ITM_RxBuffer"
.LASF85:
	.string	"prev"
.LASF36:
	.string	"pdu_adv_payload_scan_req"
.LASF20:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF75:
	.string	"payload"
.LASF1:
	.string	"long long int"
.LASF77:
	.string	"first"
.LASF48:
	.string	"lldata"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
