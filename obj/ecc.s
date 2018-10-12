	.file	"ecc.c"
	.text
.Ltext0:
	.section	.text.unlikely.uECC_vli_add,"ax",@progbits
.LCOLDB0:
	.section	.text.uECC_vli_add,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.uECC_vli_add
.Ltext_cold0:
	.section	.text.uECC_vli_add
	.type	uECC_vli_add, @function
uECC_vli_add:
.LFB14:
	.file 1 "src/ecc.c"
	.loc 1 515 0
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
	movl	%eax, %edi
	subl	$12, %esp
	.loc 1 515 0
	movb	8(%ebp), %al
.LVL1:
	movl	%ecx, -24(%ebp)
	.loc 1 518 0
	movb	$0, -13(%ebp)
	.loc 1 515 0
	movb	%al, -14(%ebp)
	.loc 1 516 0
	xorl	%eax, %eax
.LVL2:
.L2:
	.loc 1 518 0 discriminator 1
	movb	-14(%ebp), %bl
	cmpb	%bl, -13(%ebp)
	jge	.L6
.LBB13:
	.loc 1 519 0 discriminator 3
	movsbl	-13(%ebp), %esi
	movl	-24(%ebp), %ecx
	movl	(%edx,%esi,4), %ebx
	addl	(%ecx,%esi,4), %ebx
.LBB14:
.LBB15:
	.loc 1 498 0 discriminator 3
	xorl	%ecx, %ecx
.LBE15:
.LBE14:
	.loc 1 519 0 discriminator 3
	addl	%eax, %ebx
.LVL3:
.LBB18:
.LBB16:
	.loc 1 498 0 discriminator 3
	cmpl	%ebx, (%edx,%esi,4)
	sete	%cl
	imull	%ecx, %eax
.LVL4:
	movl	%eax, -20(%ebp)
	xorl	%eax, %eax
	cmpl	%ebx, (%edx,%esi,4)
	seta	%al
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	%ebx, (%edx,%esi,4)
.LBE16:
.LBE18:
	.loc 1 522 0 discriminator 3
	movl	%ebx, (%edi,%esi,4)
.LVL5:
.LBB19:
.LBB17:
	.loc 1 498 0 discriminator 3
	setne	%al
	incb	-13(%ebp)
.LVL6:
	imull	%ecx, %eax
	orl	-20(%ebp), %eax
.LVL7:
	jmp	.L2
.LVL8:
.L6:
.LBE17:
.LBE19:
.LBE13:
	.loc 1 525 0
	addl	$12, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL9:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	uECC_vli_add, .-uECC_vli_add
	.section	.text.unlikely.uECC_vli_add
.LCOLDE0:
	.section	.text.uECC_vli_add
.LHOTE0:
	.section	.text.unlikely.uECC_vli_rshift1,"ax",@progbits
.LCOLDB1:
	.section	.text.uECC_vli_rshift1,"ax",@progbits
.LHOTB1:
	.type	uECC_vli_rshift1, @function
uECC_vli_rshift1:
.LFB16:
	.loc 1 535 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movsbl	%dl, %edx
	.loc 1 537 0
	xorl	%ecx, %ecx
	leal	(%eax,%edx,4), %edx
.LVL11:
	.loc 1 535 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LVL12:
.L8:
	.loc 1 539 0
	cmpl	%edx, %eax
	jnb	.L11
.LBB20:
	.loc 1 540 0
	movl	-4(%edx), %ebx
.LVL13:
	subl	$4, %edx
.LVL14:
	.loc 1 541 0
	movl	%ebx, %esi
	.loc 1 542 0
	sall	$31, %ebx
.LVL15:
	.loc 1 541 0
	shrl	%esi
.LVL16:
	orl	%esi, %ecx
.LVL17:
	movl	%ecx, (%edx)
.LVL18:
	.loc 1 542 0
	movl	%ebx, %ecx
.LVL19:
	jmp	.L8
.LVL20:
.L11:
.LBE20:
	.loc 1 544 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	uECC_vli_rshift1, .-uECC_vli_rshift1
	.section	.text.unlikely.uECC_vli_rshift1
.LCOLDE1:
	.section	.text.uECC_vli_rshift1
.LHOTE1:
	.section	.text.unlikely.vli_modInv_update,"ax",@progbits
.LCOLDB2:
	.section	.text.vli_modInv_update,"ax",@progbits
.LHOTB2:
	.type	vli_modInv_update, @function
vli_modInv_update:
.LFB25:
	.loc 1 663 0
	.cfi_startproc
.LVL21:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movsbl	%cl, %esi
	.loc 1 665 0
	testb	$1, (%eax)
	.loc 1 663 0
	movl	%eax, %ebx
.LVL22:
	.loc 1 665 0
	je	.L13
	.loc 1 666 0
	pushl	%esi
	movl	%edx, %ecx
.LVL23:
	movl	%eax, %edx
.LVL24:
	call	uECC_vli_add
.LVL25:
	movl	%eax, %edi
.LVL26:
	popl	%eax
.LVL27:
.L13:
	.loc 1 668 0
	movl	%esi, %edx
	movl	%ebx, %eax
	call	uECC_vli_rshift1
.LVL28:
	.loc 1 669 0
	testl	%edi, %edi
	je	.L12
.LVL29:
.LBB23:
.LBB24:
	.loc 1 670 0
	orl	$-2147483648, -4(%ebx,%esi,4)
.LVL30:
.L12:
.LBE24:
.LBE23:
	.loc 1 672 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL31:
	popl	%esi
	.cfi_restore 6
.LVL32:
	popl	%edi
	.cfi_restore 7
.LVL33:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	vli_modInv_update, .-vli_modInv_update
	.section	.text.unlikely.vli_modInv_update
.LCOLDE2:
	.section	.text.vli_modInv_update
.LHOTE2:
	.section	.text.unlikely.uECC_vli_mult,"ax",@progbits
.LCOLDB3:
	.section	.text.uECC_vli_mult,"ax",@progbits
.LHOTB3:
	.type	uECC_vli_mult, @function
uECC_vli_mult:
.LFB18:
	.loc 1 557 0
	.cfi_startproc
.LVL34:
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
	.loc 1 562 0
	xorl	%esi, %esi
	.loc 1 559 0
	xorl	%ebx, %ebx
	.loc 1 557 0
	subl	$60, %esp
	.loc 1 557 0
	movl	%eax, -36(%ebp)
	movl	8(%ebp), %eax
.LVL35:
	movl	%edx, -56(%ebp)
	movl	%ecx, -68(%ebp)
	.loc 1 558 0
	movl	$0, -20(%ebp)
	.loc 1 557 0
	movl	%eax, -40(%ebp)
	movb	-40(%ebp), %al
	movb	%al, -22(%ebp)
.LVL36:
.L23:
	movl	%esi, %eax
	.loc 1 562 0 discriminator 1
	cmpb	-22(%ebp), %al
	movb	%al, -23(%ebp)
.LVL37:
	jge	.L36
	movl	$0, -52(%ebp)
	movb	$0, -21(%ebp)
.LVL38:
.L26:
	.loc 1 564 0 discriminator 3
	movsbl	-21(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	%esi, %edx
.LBB29:
.LBB30:
	.loc 1 549 0 discriminator 3
	movl	%ebx, -44(%ebp)
.LBE30:
.LBE29:
	.loc 1 564 0 discriminator 3
	subl	%eax, %edx
	movl	(%ecx,%eax,4), %eax
.LVL39:
.LBB33:
.LBB31:
	.loc 1 548 0 discriminator 3
	movl	-68(%ebp), %ecx
	mull	(%ecx,%edx,4)
.LVL40:
	.loc 1 551 0 discriminator 3
	movl	$1, %ecx
	.loc 1 548 0 discriminator 3
	movl	%eax, -32(%ebp)
.LVL41:
	.loc 1 549 0 discriminator 3
	movl	-20(%ebp), %eax
	.loc 1 548 0 discriminator 3
	movl	%edx, -28(%ebp)
.LVL42:
	.loc 1 550 0 discriminator 3
	movl	-28(%ebp), %edx
	.loc 1 549 0 discriminator 3
	movl	%eax, -48(%ebp)
.LVL43:
	.loc 1 550 0 discriminator 3
	movl	-32(%ebp), %eax
	addl	-48(%ebp), %eax
	adcl	-44(%ebp), %edx
.LVL44:
	.loc 1 551 0 discriminator 3
	cmpl	%edx, -28(%ebp)
	ja	.L24
	jb	.L25
	cmpl	%eax, -32(%ebp)
	ja	.L24
.L25:
	xorl	%ecx, %ecx
.L24:
	incb	-21(%ebp)
.LVL45:
	addl	%ecx, -52(%ebp)
.LVL46:
	.loc 1 552 0 discriminator 3
	movl	%edx, %ebx
.LVL47:
.LBE31:
.LBE33:
	.loc 1 563 0 discriminator 3
	movb	-21(%ebp), %cl
	cmpb	%cl, -23(%ebp)
.LBB34:
.LBB32:
	.loc 1 553 0 discriminator 3
	movl	%eax, -20(%ebp)
.LVL48:
.LBE32:
.LBE34:
	.loc 1 563 0 discriminator 3
	jge	.L26
.LVL49:
	.loc 1 566 0 discriminator 2
	movl	-36(%ebp), %edi
	movl	%edx, -20(%ebp)
	movl	-52(%ebp), %ebx
	movl	%eax, (%edi,%esi,4)
.LVL50:
	incl	%esi
.LVL51:
	jmp	.L23
.LVL52:
.L36:
	.loc 1 571 0
	movsbl	-40(%ebp), %eax
.LVL53:
	xorl	%esi, %esi
.LVL54:
	leal	-1(%eax,%eax), %eax
	movl	%eax, -52(%ebp)
.LVL55:
.L28:
	movb	-22(%ebp), %al
	addl	%esi, %eax
	movb	%al, -21(%ebp)
.LVL56:
	.loc 1 571 0 is_stmt 0 discriminator 1
	movsbl	%al, %eax
.LVL57:
	cmpl	-52(%ebp), %eax
	movl	%eax, -48(%ebp)
	jge	.L37
	leal	1(%esi), %eax
	.loc 1 572 0 is_stmt 1
	movl	$0, -32(%ebp)
	movl	%eax, %edi
.LVL58:
.L29:
	.loc 1 572 0 is_stmt 0 discriminator 1
	movb	-22(%ebp), %dl
	movl	%edi, %eax
	cmpb	%dl, %al
	jge	.L38
	.loc 1 573 0 is_stmt 1 discriminator 3
	movl	-56(%ebp), %ecx
	movl	-48(%ebp), %edx
	movl	%edi, %eax
	movsbl	%al, %eax
.LBB35:
.LBB36:
	.loc 1 549 0 discriminator 3
	movl	%ebx, -60(%ebp)
	.loc 1 550 0 discriminator 3
	movl	-60(%ebp), %ebx
.LBE36:
.LBE35:
	.loc 1 573 0 discriminator 3
	subl	%eax, %edx
	movl	(%ecx,%eax,4), %eax
.LVL59:
.LBB38:
.LBB37:
	.loc 1 548 0 discriminator 3
	movl	-68(%ebp), %ecx
	mull	(%ecx,%edx,4)
.LVL60:
	.loc 1 549 0 discriminator 3
	movl	-20(%ebp), %ecx
	.loc 1 551 0 discriminator 3
	movl	$1, -20(%ebp)
.LVL61:
	.loc 1 549 0 discriminator 3
	movl	%ecx, -64(%ebp)
.LVL62:
	.loc 1 550 0 discriminator 3
	movl	-64(%ebp), %ecx
	addl	%eax, %ecx
.LVL63:
	adcl	%edx, %ebx
.LVL64:
	.loc 1 551 0 discriminator 3
	cmpl	%ebx, %edx
	ja	.L30
	jb	.L31
	cmpl	%ecx, %eax
	ja	.L30
.L31:
	movl	$0, -20(%ebp)
.L30:
.LVL65:
	movl	%edi, %eax
.LVL66:
	movl	-20(%ebp), %edx
.LVL67:
	.loc 1 553 0 discriminator 3
	movl	%ecx, -20(%ebp)
.LVL68:
	incl	%eax
.LVL69:
	.loc 1 551 0 discriminator 3
	addl	%edx, -32(%ebp)
.LVL70:
	movl	%eax, %edi
.LVL71:
	jmp	.L29
.LVL72:
.L38:
.LBE37:
.LBE38:
	.loc 1 575 0 discriminator 2
	movsbl	-21(%ebp), %eax
.LVL73:
	movl	-20(%ebp), %edx
	incl	%esi
	movl	-36(%ebp), %edi
.LVL74:
	movl	%ebx, -20(%ebp)
.LVL75:
	movl	-32(%ebp), %ebx
.LVL76:
	movl	%edx, (%edi,%eax,4)
.LVL77:
	jmp	.L28
.LVL78:
.L37:
	.loc 1 580 0
	movsbl	-40(%ebp), %eax
	movl	-20(%ebp), %esi
	movl	-36(%ebp), %ebx
.LVL79:
	movl	%esi, -4(%ebx,%eax,8)
.LVL80:
	.loc 1 581 0
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
.LFE18:
	.size	uECC_vli_mult, .-uECC_vli_mult
	.section	.text.unlikely.uECC_vli_mult
.LCOLDE3:
	.section	.text.uECC_vli_mult
.LHOTE3:
	.section	.text.unlikely.uECC_set_rng,"ax",@progbits
.LCOLDB4:
	.section	.text.uECC_set_rng,"ax",@progbits
.LHOTB4:
	.globl	uECC_set_rng
	.type	uECC_set_rng, @function
uECC_set_rng:
.LFB0:
	.loc 1 405 0
	.cfi_startproc
.LVL81:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 406 0
	movl	8(%ebp), %eax
	.loc 1 407 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 406 0
	movl	%eax, g_rng_function
	.loc 1 407 0
	ret
	.cfi_endproc
.LFE0:
	.size	uECC_set_rng, .-uECC_set_rng
	.section	.text.unlikely.uECC_set_rng
.LCOLDE4:
	.section	.text.uECC_set_rng
.LHOTE4:
	.section	.text.unlikely.uECC_get_rng,"ax",@progbits
.LCOLDB5:
	.section	.text.uECC_get_rng,"ax",@progbits
.LHOTB5:
	.globl	uECC_get_rng
	.type	uECC_get_rng, @function
uECC_get_rng:
.LFB1:
	.loc 1 409 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 411 0
	movl	g_rng_function, %eax
	.loc 1 409 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 411 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	uECC_get_rng, .-uECC_get_rng
	.section	.text.unlikely.uECC_get_rng
.LCOLDE5:
	.section	.text.uECC_get_rng
.LHOTE5:
	.section	.text.unlikely.uECC_curve_private_key_size,"ax",@progbits
.LCOLDB6:
	.section	.text.uECC_curve_private_key_size,"ax",@progbits
.LHOTB6:
	.globl	uECC_curve_private_key_size
	.type	uECC_curve_private_key_size, @function
uECC_curve_private_key_size:
.LFB2:
	.loc 1 413 0
	.cfi_startproc
.LVL82:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 414 0
	movl	$8, %ecx
	.loc 1 413 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 414 0
	movl	8(%ebp), %eax
	.loc 1 415 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 414 0
	movswl	2(%eax), %eax
	addl	$7, %eax
	cltd
	idivl	%ecx
	.loc 1 415 0
	ret
	.cfi_endproc
.LFE2:
	.size	uECC_curve_private_key_size, .-uECC_curve_private_key_size
	.section	.text.unlikely.uECC_curve_private_key_size
.LCOLDE6:
	.section	.text.uECC_curve_private_key_size
.LHOTE6:
	.section	.text.unlikely.uECC_curve_public_key_size,"ax",@progbits
.LCOLDB7:
	.section	.text.uECC_curve_public_key_size,"ax",@progbits
.LHOTB7:
	.globl	uECC_curve_public_key_size
	.type	uECC_curve_public_key_size, @function
uECC_curve_public_key_size:
.LFB3:
	.loc 1 417 0
	.cfi_startproc
.LVL83:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 418 0
	movl	8(%ebp), %eax
	.loc 1 419 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 418 0
	movsbl	1(%eax), %eax
	addl	%eax, %eax
	.loc 1 419 0
	ret
	.cfi_endproc
.LFE3:
	.size	uECC_curve_public_key_size, .-uECC_curve_public_key_size
	.section	.text.unlikely.uECC_curve_public_key_size
.LCOLDE7:
	.section	.text.uECC_curve_public_key_size
.LHOTE7:
	.section	.text.unlikely.uECC_vli_clear,"ax",@progbits
.LCOLDB8:
	.section	.text.uECC_vli_clear,"ax",@progbits
.LHOTB8:
	.globl	uECC_vli_clear
	.type	uECC_vli_clear, @function
uECC_vli_clear:
.LFB4:
	.loc 1 421 0
	.cfi_startproc
.LVL84:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 423 0
	xorl	%eax, %eax
	.loc 1 421 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 421 0
	movl	8(%ebp), %ecx
	movb	12(%ebp), %dl
.LVL85:
.L48:
	.loc 1 423 0 discriminator 1
	cmpb	%dl, %al
	jge	.L51
	.loc 1 424 0 discriminator 3
	movsbl	%al, %ebx
	incl	%eax
.LVL86:
	movl	$0, (%ecx,%ebx,4)
	jmp	.L48
.LVL87:
.L51:
	.loc 1 426 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	uECC_vli_clear, .-uECC_vli_clear
	.section	.text.unlikely.uECC_vli_clear
.LCOLDE8:
	.section	.text.uECC_vli_clear
.LHOTE8:
	.section	.text.unlikely.uECC_vli_isZero,"ax",@progbits
.LCOLDB9:
	.section	.text.uECC_vli_isZero,"ax",@progbits
.LHOTB9:
	.globl	uECC_vli_isZero
	.type	uECC_vli_isZero, @function
uECC_vli_isZero:
.LFB5:
	.loc 1 428 0
	.cfi_startproc
.LVL88:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 431 0
	xorl	%eax, %eax
	.loc 1 429 0
	xorl	%edx, %edx
	.loc 1 428 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 428 0
	movb	12(%ebp), %cl
.LVL89:
.L53:
	.loc 1 431 0 discriminator 1
	cmpb	%cl, %al
	jge	.L56
	.loc 1 432 0 discriminator 3
	movl	8(%ebp), %esi
	movsbl	%al, %ebx
	incl	%eax
.LVL90:
	orl	(%esi,%ebx,4), %edx
.LVL91:
	jmp	.L53
.LVL92:
.L56:
	.loc 1 434 0
	xorl	%eax, %eax
.LVL93:
	testl	%edx, %edx
	.loc 1 435 0
	popl	%ebx
	.cfi_restore 3
	.loc 1 434 0
	sete	%al
	.loc 1 435 0
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	uECC_vli_isZero, .-uECC_vli_isZero
	.section	.text.unlikely.uECC_vli_isZero
.LCOLDE9:
	.section	.text.uECC_vli_isZero
.LHOTE9:
	.section	.text.unlikely.uECC_vli_testBit,"ax",@progbits
.LCOLDB10:
	.section	.text.uECC_vli_testBit,"ax",@progbits
.LHOTB10:
	.globl	uECC_vli_testBit
	.type	uECC_vli_testBit, @function
uECC_vli_testBit:
.LFB6:
	.loc 1 437 0
	.cfi_startproc
.LVL94:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 438 0
	movl	$1, %eax
	.loc 1 437 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 437 0
	movl	12(%ebp), %ecx
	.loc 1 438 0
	movl	%ecx, %edx
	sall	%cl, %eax
	movl	8(%ebp), %ecx
	sarw	$5, %dx
	movswl	%dx, %edx
	andl	(%ecx,%edx,4), %eax
	.loc 1 440 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	uECC_vli_testBit, .-uECC_vli_testBit
	.section	.text.unlikely.uECC_vli_testBit
.LCOLDE10:
	.section	.text.uECC_vli_testBit
.LHOTE10:
	.section	.text.unlikely.uECC_vli_numBits,"ax",@progbits
.LCOLDB11:
	.section	.text.uECC_vli_numBits,"ax",@progbits
.LHOTB11:
	.globl	uECC_vli_numBits
	.type	uECC_vli_numBits, @function
uECC_vli_numBits:
.LFB8:
	.loc 1 451 0
	.cfi_startproc
.LVL95:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB41:
.LBB42:
	.loc 1 445 0
	movb	12(%ebp), %al
.LBE42:
.LBE41:
	.loc 1 451 0
	movl	8(%ebp), %ecx
.LVL96:
.LBB45:
.LBB43:
	.loc 1 445 0
	leal	-1(%eax), %edx
.LVL97:
.L60:
	testb	%dl, %dl
	jns	.L61
.L65:
.LVL98:
.LBE43:
.LBE45:
	.loc 1 456 0
	xorl	%eax, %eax
	.loc 1 455 0
	incb	%dl
	je	.L62
	.loc 1 458 0
	movsbl	%dl, %eax
	movl	-4(%ecx,%eax,4), %eax
.LVL99:
	.loc 1 459 0
	xorl	%ecx, %ecx
	jmp	.L66
.LVL100:
.L61:
.LBB46:
.LBB44:
	.loc 1 445 0
	movsbl	%dl, %eax
	cmpl	$0, (%ecx,%eax,4)
	jne	.L65
	decl	%edx
.LVL101:
	jmp	.L60
.LVL102:
.L66:
.LBE44:
.LBE46:
	.loc 1 459 0 discriminator 1
	testl	%eax, %eax
	je	.L72
	.loc 1 460 0 discriminator 3
	shrl	%eax
.LVL103:
	.loc 1 459 0 discriminator 3
	incl	%ecx
.LVL104:
	jmp	.L66
.L72:
	.loc 1 462 0
	movsbw	%dl, %ax
.LVL105:
	decl	%eax
	sall	$5, %eax
	addl	%ecx, %eax
.LVL106:
.L62:
	.loc 1 463 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	uECC_vli_numBits, .-uECC_vli_numBits
	.section	.text.unlikely.uECC_vli_numBits
.LCOLDE11:
	.section	.text.uECC_vli_numBits
.LHOTE11:
	.section	.text.unlikely.uECC_vli_set,"ax",@progbits
.LCOLDB12:
	.section	.text.uECC_vli_set,"ax",@progbits
.LHOTB12:
	.globl	uECC_vli_set
	.type	uECC_vli_set, @function
uECC_vli_set:
.LFB9:
	.loc 1 466 0
	.cfi_startproc
.LVL107:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 468 0
	xorl	%eax, %eax
	.loc 1 466 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	movb	16(%ebp), %cl
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 466 0
	movl	12(%ebp), %ebx
.LVL108:
.L74:
	.loc 1 468 0 discriminator 1
	cmpb	%cl, %al
	jge	.L77
	.loc 1 469 0 discriminator 3
	movsbl	%al, %edx
	movl	8(%ebp), %esi
	incl	%eax
.LVL109:
	movl	(%ebx,%edx,4), %edi
	movl	%edi, (%esi,%edx,4)
	jmp	.L74
.LVL110:
.L77:
	.loc 1 471 0
	popl	%ebx
	.cfi_restore 3
.LVL111:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	uECC_vli_set, .-uECC_vli_set
	.section	.text.unlikely.uECC_vli_set
.LCOLDE12:
	.section	.text.uECC_vli_set
.LHOTE12:
	.section	.text.unlikely.uECC_vli_cmp_unsafe,"ax",@progbits
.LCOLDB13:
	.section	.text.uECC_vli_cmp_unsafe,"ax",@progbits
.LHOTB13:
	.globl	uECC_vli_cmp_unsafe
	.type	uECC_vli_cmp_unsafe, @function
uECC_vli_cmp_unsafe:
.LFB10:
	.loc 1 475 0
	.cfi_startproc
.LVL112:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 475 0
	movl	8(%ebp), %ecx
	.loc 1 477 0
	movb	16(%ebp), %al
.L85:
	decl	%eax
.LVL113:
	.loc 1 477 0 is_stmt 0 discriminator 2
	testb	%al, %al
	js	.L86
	.loc 1 478 0 is_stmt 1
	movl	12(%ebp), %ebx
	movsbl	%al, %edx
	movl	(%ebx,%edx,4), %ebx
	cmpl	%ebx, (%ecx,%edx,4)
	ja	.L82
	.loc 1 480 0
	jnb	.L85
	.loc 1 481 0
	movb	$-1, %al
.LVL114:
	jmp	.L80
.LVL115:
.L86:
	.loc 1 484 0
	xorl	%eax, %eax
.LVL116:
	jmp	.L80
.LVL117:
.L82:
	.loc 1 479 0
	movb	$1, %al
.LVL118:
.L80:
	.loc 1 485 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	uECC_vli_cmp_unsafe, .-uECC_vli_cmp_unsafe
	.section	.text.unlikely.uECC_vli_cmp_unsafe
.LCOLDE13:
	.section	.text.uECC_vli_cmp_unsafe
.LHOTE13:
	.section	.text.unlikely.uECC_vli_equal,"ax",@progbits
.LCOLDB14:
	.section	.text.uECC_vli_equal,"ax",@progbits
.LHOTB14:
	.globl	uECC_vli_equal
	.type	uECC_vli_equal, @function
uECC_vli_equal:
.LFB11:
	.loc 1 488 0
	.cfi_startproc
.LVL119:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 489 0
	xorl	%edx, %edx
	.loc 1 488 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.loc 1 491 0
	movb	16(%ebp), %al
	.loc 1 488 0
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 488 0
	movl	8(%ebp), %ebx
	.loc 1 491 0
	decl	%eax
.LVL120:
.L88:
	.loc 1 491 0 is_stmt 0 discriminator 1
	testb	%al, %al
	js	.L91
	.loc 1 492 0 is_stmt 1 discriminator 3
	movl	12(%ebp), %edi
	movsbl	%al, %esi
	decl	%eax
.LVL121:
	movl	(%ebx,%esi,4), %ecx
	xorl	(%edi,%esi,4), %ecx
	orl	%ecx, %edx
.LVL122:
	jmp	.L88
.LVL123:
.L91:
	.loc 1 494 0
	xorl	%eax, %eax
.LVL124:
	testl	%edx, %edx
	.loc 1 495 0
	popl	%ebx
	.cfi_restore 3
.LVL125:
	.loc 1 494 0
	setne	%al
	.loc 1 495 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE11:
	.size	uECC_vli_equal, .-uECC_vli_equal
	.section	.text.unlikely.uECC_vli_equal
.LCOLDE14:
	.section	.text.uECC_vli_equal
.LHOTE14:
	.section	.text.unlikely.cond_set,"ax",@progbits
.LCOLDB15:
	.section	.text.cond_set,"ax",@progbits
.LHOTB15:
	.globl	cond_set
	.type	cond_set, @function
cond_set:
.LFB12:
	.loc 1 497 0
	.cfi_startproc
.LVL126:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 498 0
	xorl	%eax, %eax
	.loc 1 497 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 497 0
	movl	16(%ebp), %edx
	.loc 1 498 0
	testl	%edx, %edx
	sete	%al
	imull	8(%ebp), %edx
	imull	12(%ebp), %eax
	.loc 1 499 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 498 0
	orl	%edx, %eax
	.loc 1 499 0
	ret
	.cfi_endproc
.LFE12:
	.size	cond_set, .-cond_set
	.section	.text.unlikely.cond_set
.LCOLDE15:
	.section	.text.cond_set
.LHOTE15:
	.section	.text.unlikely.uECC_vli_sub,"ax",@progbits
.LCOLDB16:
	.section	.text.uECC_vli_sub,"ax",@progbits
.LHOTB16:
	.globl	uECC_vli_sub
	.type	uECC_vli_sub, @function
uECC_vli_sub:
.LFB13:
	.loc 1 502 0
	.cfi_startproc
.LVL127:
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
	.loc 1 502 0
	movb	20(%ebp), %al
	.loc 1 505 0
	movb	$0, -13(%ebp)
	.loc 1 502 0
	movb	%al, -14(%ebp)
	.loc 1 503 0
	xorl	%eax, %eax
.LVL128:
.L95:
	.loc 1 505 0 discriminator 1
	movb	-14(%ebp), %bl
	cmpb	%bl, -13(%ebp)
	jge	.L98
.LBB47:
	.loc 1 506 0 discriminator 3
	movsbl	-13(%ebp), %esi
	movl	12(%ebp), %ecx
	movl	16(%ebp), %edi
	movl	(%ecx,%esi,4), %ebx
.LBB48:
.LBB49:
	.loc 1 498 0 discriminator 3
	xorl	%ecx, %ecx
.LBE49:
.LBE48:
	.loc 1 506 0 discriminator 3
	movl	%ebx, %edx
	subl	(%edi,%esi,4), %edx
	subl	%eax, %edx
.LVL129:
.LBB52:
.LBB50:
	.loc 1 498 0 discriminator 3
	cmpl	%edx, %ebx
	sete	%cl
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	imull	%edi, %eax
.LVL130:
	cmpl	%edx, %ebx
	setb	%cl
	cmpl	%edx, %ebx
	setne	%bl
.LVL131:
	movl	%ecx, %edi
	incb	-13(%ebp)
.LVL132:
	movzbl	%bl, %ebx
	imull	%ebx, %edi
.LBE50:
.LBE52:
	.loc 1 509 0 discriminator 3
	movl	8(%ebp), %ebx
.LBB53:
.LBB51:
	.loc 1 498 0 discriminator 3
	orl	%edi, %eax
.LVL133:
.LBE51:
.LBE53:
	.loc 1 509 0 discriminator 3
	movl	%edx, (%ebx,%esi,4)
.LVL134:
	jmp	.L95
.LVL135:
.L98:
.LBE47:
	.loc 1 512 0
	popl	%edx
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
.LFE13:
	.size	uECC_vli_sub, .-uECC_vli_sub
	.section	.text.unlikely.uECC_vli_sub
.LCOLDE16:
	.section	.text.uECC_vli_sub
.LHOTE16:
	.section	.text.unlikely.vli_mmod_fast_secp256r1,"ax",@progbits
.LCOLDB17:
	.section	.text.vli_mmod_fast_secp256r1,"ax",@progbits
.LHOTB17:
	.globl	vli_mmod_fast_secp256r1
	.type	vli_mmod_fast_secp256r1, @function
vli_mmod_fast_secp256r1:
.LFB30:
	.loc 1 768 0
	.cfi_startproc
.LVL136:
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
	.loc 1 778 0
	leal	-60(%ebp), %edi
	.loc 1 768 0
	subl	$76, %esp
	.loc 1 768 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	.loc 1 771 0
	pushl	$8
	.loc 1 768 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 771 0
	pushl	%ebx
	pushl	%esi
	call	uECC_vli_set
.LVL137:
	.loc 1 773 0
	movl	44(%ebx), %eax
	.loc 1 778 0
	movl	%edi, %ecx
	movl	%edi, %edx
	.loc 1 772 0
	movl	$0, -52(%ebp)
	movl	$0, -56(%ebp)
	movl	$0, -60(%ebp)
	.loc 1 773 0
	movl	%eax, -48(%ebp)
	.loc 1 774 0
	movl	48(%ebx), %eax
	movl	%eax, -44(%ebp)
	.loc 1 775 0
	movl	52(%ebx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 776 0
	movl	56(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 777 0
	movl	60(%ebx), %eax
	.loc 1 778 0
	pushl	$8
	.loc 1 777 0
	movl	%eax, -32(%ebp)
	.loc 1 778 0
	movl	%edi, %eax
	call	uECC_vli_add
.LVL138:
	.loc 1 779 0
	pushl	$8
	movl	%edi, %ecx
	.loc 1 778 0
	movl	%eax, -76(%ebp)
.LVL139:
	.loc 1 779 0
	movl	%esi, %edx
	movl	%esi, %eax
.LVL140:
	call	uECC_vli_add
.LVL141:
	addl	-76(%ebp), %eax
	.loc 1 785 0
	movl	%edi, %ecx
	movl	%edi, %edx
	.loc 1 784 0
	movl	$0, -32(%ebp)
	.loc 1 779 0
	movl	%eax, -76(%ebp)
.LVL142:
	.loc 1 780 0
	movl	48(%ebx), %eax
.LVL143:
	movl	%eax, -48(%ebp)
	.loc 1 781 0
	movl	52(%ebx), %eax
	movl	%eax, -44(%ebp)
	.loc 1 782 0
	movl	56(%ebx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 783 0
	movl	60(%ebx), %eax
	.loc 1 785 0
	pushl	$8
	.loc 1 783 0
	movl	%eax, -36(%ebp)
	.loc 1 785 0
	movl	%edi, %eax
	call	uECC_vli_add
.LVL144:
	addl	-76(%ebp), %eax
	.loc 1 786 0
	pushl	$8
	movl	%edi, %ecx
	movl	%esi, %edx
	.loc 1 785 0
	movl	%eax, -76(%ebp)
.LVL145:
	.loc 1 786 0
	movl	%esi, %eax
.LVL146:
	call	uECC_vli_add
.LVL147:
	addl	-76(%ebp), %eax
	.loc 1 793 0
	movl	%edi, %ecx
	movl	%esi, %edx
	.loc 1 790 0
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	.loc 1 786 0
	movl	%eax, -76(%ebp)
.LVL148:
	.loc 1 787 0
	movl	32(%ebx), %eax
.LVL149:
	movl	%eax, -60(%ebp)
	.loc 1 788 0
	movl	36(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 789 0
	movl	40(%ebx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 791 0
	movl	56(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 792 0
	movl	60(%ebx), %eax
	.loc 1 793 0
	pushl	$8
	.loc 1 792 0
	movl	%eax, -32(%ebp)
	.loc 1 793 0
	movl	%esi, %eax
	call	uECC_vli_add
.LVL150:
	addl	-76(%ebp), %eax
	.loc 1 798 0
	movl	56(%ebx), %edx
	.loc 1 802 0
	addl	$32, %esp
	movl	%edi, %ecx
	.loc 1 798 0
	movl	%edx, -44(%ebp)
	.loc 1 799 0
	movl	60(%ebx), %edx
	.loc 1 793 0
	movl	%eax, -76(%ebp)
.LVL151:
	.loc 1 794 0
	movl	36(%ebx), %eax
.LVL152:
	.loc 1 799 0
	movl	%edx, -40(%ebp)
	.loc 1 802 0
	movl	%esi, %edx
	.loc 1 794 0
	movl	%eax, -60(%ebp)
	.loc 1 795 0
	movl	40(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 796 0
	movl	44(%ebx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 797 0
	movl	52(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 800 0
	movl	%eax, -36(%ebp)
	.loc 1 801 0
	movl	32(%ebx), %eax
	.loc 1 802 0
	pushl	$8
	.loc 1 801 0
	movl	%eax, -32(%ebp)
	.loc 1 802 0
	movl	%esi, %eax
	call	uECC_vli_add
.LVL153:
	addl	-76(%ebp), %eax
	.loc 1 806 0
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	movl	$0, -48(%ebp)
	.loc 1 802 0
	movl	%eax, -76(%ebp)
.LVL154:
	.loc 1 803 0
	movl	44(%ebx), %eax
.LVL155:
	movl	%eax, -60(%ebp)
	.loc 1 804 0
	movl	48(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 805 0
	movl	52(%ebx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 807 0
	movl	32(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 808 0
	movl	40(%ebx), %eax
	.loc 1 809 0
	pushl	$8
	pushl	%edi
	pushl	%esi
	pushl	%esi
	.loc 1 808 0
	movl	%eax, -32(%ebp)
	.loc 1 809 0
	call	uECC_vli_sub
.LVL156:
	movl	-76(%ebp), %ecx
	.loc 1 814 0
	movl	$0, -40(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 809 0
	subl	%eax, %ecx
	.loc 1 810 0
	movl	48(%ebx), %eax
	.loc 1 809 0
	movl	%ecx, -76(%ebp)
.LVL157:
	.loc 1 810 0
	movl	%eax, -60(%ebp)
	.loc 1 811 0
	movl	52(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 812 0
	movl	56(%ebx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 813 0
	movl	60(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 815 0
	movl	36(%ebx), %eax
	movl	%eax, -36(%ebp)
	.loc 1 816 0
	movl	44(%ebx), %eax
	.loc 1 817 0
	pushl	$8
	pushl	%edi
	pushl	%esi
	pushl	%esi
	.loc 1 816 0
	movl	%eax, -32(%ebp)
	.loc 1 817 0
	call	uECC_vli_sub
.LVL158:
	movl	-76(%ebp), %ecx
	.loc 1 826 0
	addl	$36, %esp
	.loc 1 824 0
	movl	$0, -36(%ebp)
	.loc 1 817 0
	subl	%eax, %ecx
	.loc 1 818 0
	movl	52(%ebx), %eax
	.loc 1 817 0
	movl	%ecx, -76(%ebp)
.LVL159:
	.loc 1 818 0
	movl	%eax, -60(%ebp)
	.loc 1 819 0
	movl	56(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 820 0
	movl	60(%ebx), %eax
	movl	%eax, -52(%ebp)
	.loc 1 821 0
	movl	32(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 822 0
	movl	36(%ebx), %eax
	movl	%eax, -44(%ebp)
	.loc 1 823 0
	movl	40(%ebx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 825 0
	movl	48(%ebx), %eax
	.loc 1 826 0
	pushl	$8
	pushl	%edi
	pushl	%esi
	pushl	%esi
	.loc 1 825 0
	movl	%eax, -32(%ebp)
	.loc 1 826 0
	call	uECC_vli_sub
.LVL160:
	movl	-76(%ebp), %edx
	.loc 1 829 0
	movl	$0, -52(%ebp)
	.loc 1 833 0
	movl	$0, -36(%ebp)
	.loc 1 826 0
	subl	%eax, %edx
	.loc 1 827 0
	movl	56(%ebx), %eax
	.loc 1 826 0
	movl	%edx, -76(%ebp)
.LVL161:
	.loc 1 827 0
	movl	%eax, -60(%ebp)
	.loc 1 828 0
	movl	60(%ebx), %eax
	movl	%eax, -56(%ebp)
	.loc 1 830 0
	movl	36(%ebx), %eax
	movl	%eax, -48(%ebp)
	.loc 1 831 0
	movl	40(%ebx), %eax
	movl	%eax, -44(%ebp)
	.loc 1 832 0
	movl	44(%ebx), %eax
	movl	%eax, -40(%ebp)
	.loc 1 834 0
	movl	52(%ebx), %eax
	.loc 1 835 0
	pushl	$8
	pushl	%edi
	pushl	%esi
	pushl	%esi
	.loc 1 834 0
	movl	%eax, -32(%ebp)
	.loc 1 835 0
	call	uECC_vli_sub
.LVL162:
	.loc 1 836 0
	movl	-76(%ebp), %edi
	addl	$32, %esp
	subl	%eax, %edi
.LVL163:
	jns	.L101
.L102:
	.loc 1 838 0 discriminator 1
	pushl	$8
	movl	%esi, %edx
	movl	$curve_secp256r1+4, %ecx
	movl	%esi, %eax
	call	uECC_vli_add
.LVL164:
	.loc 1 840 0 discriminator 1
	addl	%eax, %edi
.LVL165:
	popl	%edx
	js	.L102
	jmp	.L99
.L108:
	.loc 1 843 0 discriminator 1
	pushl	$8
	pushl	%esi
	pushl	$curve_secp256r1+4
	call	uECC_vli_cmp_unsafe
.LVL166:
	addl	$12, %esp
	.loc 1 842 0 discriminator 1
	decb	%al
	je	.L99
.L103:
	.loc 1 844 0
	pushl	$8
	pushl	$curve_secp256r1+4
	pushl	%esi
	pushl	%esi
	call	uECC_vli_sub
.LVL167:
	addl	$16, %esp
	subl	%eax, %edi
.LVL168:
.L101:
	.loc 1 842 0
	testl	%edi, %edi
	je	.L108
	jmp	.L103
.L99:
	.loc 1 847 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L105
	call	__stack_chk_fail
.LVL169:
.L105:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL170:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	vli_mmod_fast_secp256r1, .-vli_mmod_fast_secp256r1
	.section	.text.unlikely.vli_mmod_fast_secp256r1
.LCOLDE17:
	.section	.text.vli_mmod_fast_secp256r1
.LHOTE17:
	.section	.text.unlikely.uECC_vli_cmp,"ax",@progbits
.LCOLDB18:
	.section	.text.uECC_vli_cmp,"ax",@progbits
.LHOTB18:
	.globl	uECC_vli_cmp
	.type	uECC_vli_cmp, @function
uECC_vli_cmp:
.LFB15:
	.loc 1 528 0
	.cfi_startproc
.LVL171:
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
	.loc 1 530 0
	leal	-60(%ebp), %ebx
	.loc 1 528 0
	subl	$60, %esp
	.loc 1 530 0
	movsbl	16(%ebp), %esi
	.loc 1 528 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 530 0
	pushl	%esi
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	%ebx
	call	uECC_vli_sub
.LVL172:
	.loc 1 531 0
	pushl	%esi
	pushl	%ebx
	.loc 1 530 0
	movl	%eax, %edi
.LVL173:
	.loc 1 531 0
	call	uECC_vli_isZero
.LVL174:
	.loc 1 532 0
	addl	$24, %esp
	testl	%eax, %eax
	sete	%al
.LVL175:
	testl	%edi, %edi
	setne	%dl
	addl	%edx, %edx
	subl	%edx, %eax
	.loc 1 533 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L110
	call	__stack_chk_fail
.LVL176:
.L110:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL177:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	uECC_vli_cmp, .-uECC_vli_cmp
	.section	.text.unlikely.uECC_vli_cmp
.LCOLDE18:
	.section	.text.uECC_vli_cmp
.LHOTE18:
	.section	.text.unlikely.uECC_vli_modAdd,"ax",@progbits
.LCOLDB19:
	.section	.text.uECC_vli_modAdd,"ax",@progbits
.LHOTB19:
	.globl	uECC_vli_modAdd
	.type	uECC_vli_modAdd, @function
uECC_vli_modAdd:
.LFB19:
	.loc 1 585 0
	.cfi_startproc
.LVL178:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 586 0
	movsbl	24(%ebp), %esi
	.loc 1 585 0
	pushl	%ebx
	.cfi_offset 3, -20
	.loc 1 585 0
	movl	8(%ebp), %ebx
	.loc 1 586 0
	movl	12(%ebp), %edx
	movl	16(%ebp), %ecx
	.loc 1 585 0
	movl	20(%ebp), %edi
	.loc 1 586 0
	pushl	%esi
	movl	%ebx, %eax
	call	uECC_vli_add
.LVL179:
	.loc 1 587 0
	testl	%eax, %eax
	popl	%edx
	jne	.L113
	.loc 1 587 0 is_stmt 0 discriminator 1
	pushl	%esi
	pushl	%ebx
	pushl	%edi
	call	uECC_vli_cmp_unsafe
.LVL180:
	addl	$12, %esp
	decb	%al
	je	.L112
.L113:
	.loc 1 588 0 is_stmt 1
	movl	%esi, 20(%ebp)
	movl	%edi, 16(%ebp)
	movl	%ebx, 12(%ebp)
	movl	%ebx, 8(%ebp)
	.loc 1 590 0
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
	.loc 1 588 0
	jmp	uECC_vli_sub
.LVL181:
.L112:
	.cfi_restore_state
	.loc 1 590 0
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
.LFE19:
	.size	uECC_vli_modAdd, .-uECC_vli_modAdd
	.section	.text.unlikely.uECC_vli_modAdd
.LCOLDE19:
	.section	.text.uECC_vli_modAdd
.LHOTE19:
	.section	.text.unlikely.uECC_vli_modSub,"ax",@progbits
.LCOLDB20:
	.section	.text.uECC_vli_modSub,"ax",@progbits
.LHOTB20:
	.globl	uECC_vli_modSub
	.type	uECC_vli_modSub, @function
uECC_vli_modSub:
.LFB20:
	.loc 1 594 0
	.cfi_startproc
.LVL182:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 595 0
	movsbl	24(%ebp), %esi
	.loc 1 594 0
	pushl	%ebx
	.cfi_offset 3, -20
	.loc 1 594 0
	movl	8(%ebp), %ebx
	movl	20(%ebp), %edi
	.loc 1 595 0
	pushl	%esi
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	%ebx
	call	uECC_vli_sub
.LVL183:
	.loc 1 596 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L116
	.loc 1 597 0
	movl	%esi, 8(%ebp)
	.loc 1 599 0
	leal	-12(%ebp), %esp
	.loc 1 597 0
	movl	%edi, %ecx
	movl	%ebx, %edx
	movl	%ebx, %eax
.LVL184:
	.loc 1 599 0
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
	.loc 1 597 0
	jmp	uECC_vli_add
.LVL185:
.L116:
	.cfi_restore_state
	.loc 1 599 0
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
.LFE20:
	.size	uECC_vli_modSub, .-uECC_vli_modSub
	.section	.text.unlikely.uECC_vli_modSub
.LCOLDE20:
	.section	.text.uECC_vli_modSub
.LHOTE20:
	.section	.text.unlikely.uECC_vli_mmod,"ax",@progbits
.LCOLDB21:
	.section	.text.uECC_vli_mmod,"ax",@progbits
.LHOTB21:
	.globl	uECC_vli_mmod
	.type	uECC_vli_mmod, @function
uECC_vli_mmod:
.LFB21:
	.loc 1 602 0
	.cfi_startproc
.LVL186:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$188, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 602 0
	movl	8(%ebp), %eax
	movl	20(%ebp), %edx
	movl	16(%ebp), %esi
	movl	%eax, -188(%ebp)
	.loc 1 608 0
	movsbl	%dl, %ebx
	.loc 1 602 0
	movb	%dl, -176(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 605 0
	leal	-92(%ebp), %eax
	.loc 1 608 0
	pushl	%ebx
	pushl	%esi
	movl	%edx, -172(%ebp)
	.loc 1 605 0
	movl	%eax, -164(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -160(%ebp)
	.loc 1 608 0
	call	uECC_vli_numBits
.LVL187:
	popl	%edx
	.loc 1 607 0
	movl	-172(%ebp), %edx
	.loc 1 608 0
	popl	%ecx
	.loc 1 609 0
	movl	$32, %ecx
	.loc 1 607 0
	movsbw	%dl, %dx
	sall	$6, %edx
	subl	%eax, %edx
	movw	%dx, -172(%ebp)
.LVL188:
	.loc 1 609 0
	movl	%edx, %eax
	sarw	$15, %dx
.LVL189:
	idivw	%cx
.LVL190:
	.loc 1 612 0
	movsbl	%al, %edi
	leal	-156(%ebp), %eax
	.loc 1 609 0
	movl	%edx, -184(%ebp)
.LVL191:
	.loc 1 612 0
	pushl	%edi
	pushl	%eax
	movl	%eax, -180(%ebp)
	call	uECC_vli_clear
.LVL192:
	.loc 1 613 0
	popl	%eax
	popl	%edx
	movl	-184(%ebp), %edx
	movl	-180(%ebp), %eax
	testw	%dx, %dx
	jle	.L120
	.loc 1 614 0
	movsbl	-176(%ebp), %ecx
	leal	(%eax,%edi,4), %eax
	.loc 1 613 0
	xorl	%edi, %edi
	movl	%eax, -180(%ebp)
	xorl	%eax, %eax
	.loc 1 614 0
	movl	%ecx, -184(%ebp)
.LVL193:
	.loc 1 615 0
	movswl	%dx, %ecx
	movl	%ecx, -176(%ebp)
.LVL194:
.L121:
	.loc 1 614 0 discriminator 1
	cmpl	-184(%ebp), %eax
	jnb	.L123
	.loc 1 615 0 discriminator 3
	movl	(%esi,%eax,4), %edx
	movb	-176(%ebp), %cl
	sall	%cl, %edx
	movl	-180(%ebp), %ecx
	orl	%edx, %edi
.LVL195:
	movl	%edi, (%ecx,%eax,4)
	.loc 1 616 0 discriminator 3
	movl	$32, %ecx
	subl	-176(%ebp), %ecx
	movl	(%esi,%eax,4), %edi
	.loc 1 614 0 discriminator 3
	incl	%eax
.LVL196:
	.loc 1 616 0 discriminator 3
	shrl	%cl, %edi
.LVL197:
	jmp	.L121
.LVL198:
.L120:
	.loc 1 619 0
	leal	(%eax,%edi,4), %eax
	pushl	%ebx
	pushl	%esi
	pushl	%eax
	call	uECC_vli_set
.LVL199:
	addl	$12, %esp
.LVL200:
.L123:
	leal	(%ebx,%ebx), %eax
	movl	%eax, -192(%ebp)
.LBB54:
	.loc 1 635 0 discriminator 1
	leal	-156(%ebp), %eax
	leal	(%eax,%ebx,4), %esi
	.loc 1 632 0 discriminator 1
	movl	%eax, -200(%ebp)
	.loc 1 635 0 discriminator 1
	movl	%esi, -184(%ebp)
	movl	$1, %esi
.LVL201:
.L124:
.LBE54:
	.loc 1 621 0 discriminator 1
	cmpw	$0, -172(%ebp)
	js	.L127
.LBB58:
.LBB55:
	.loc 1 629 0 discriminator 1
	movl	$1, %eax
.LBE55:
.LBE58:
	movb	$0, -180(%ebp)
	xorl	%edi, %edi
.LBB59:
.LBB56:
	subl	%esi, %eax
	movl	%eax, -196(%ebp)
.L128:
.LVL202:
.LBE56:
	.loc 1 624 0 discriminator 1
	movsbl	-180(%ebp), %edx
	cmpl	-192(%ebp), %edx
	jge	.L131
.LBB57:
	.loc 1 625 0
	movl	-164(%ebp,%esi,4), %eax
	movl	(%eax,%edx,4), %ecx
	movl	%ecx, %eax
	subl	-156(%ebp,%edx,4), %eax
	subl	%edi, %eax
	.loc 1 626 0
	cmpl	%eax, %ecx
	.loc 1 625 0
	movl	%eax, -176(%ebp)
.LVL203:
	.loc 1 627 0
	setb	%al
.LVL204:
	cmpl	-176(%ebp), %ecx
	movzbl	%al, %eax
	cmovne	%eax, %edi
.LVL205:
	.loc 1 629 0
	movl	-196(%ebp), %eax
	incb	-180(%ebp)
.LVL206:
	movl	-164(%ebp,%eax,4), %ecx
	movl	-176(%ebp), %eax
	movl	%eax, (%ecx,%edx,4)
	jmp	.L128
.LVL207:
.L131:
.LBE57:
	.loc 1 631 0 discriminator 2
	xorl	%eax, %eax
	cmpl	%edi, %esi
	.loc 1 632 0 discriminator 2
	movl	%ebx, %edx
	.loc 1 631 0 discriminator 2
	sete	%al
	movl	%eax, %esi
.LVL208:
	.loc 1 632 0 discriminator 2
	movl	-200(%ebp), %eax
.LVL209:
	call	uECC_vli_rshift1
.LVL210:
	.loc 1 633 0 discriminator 2
	movl	-156(%ebp,%ebx,4), %eax
	.loc 1 635 0 discriminator 2
	movl	%ebx, %edx
	.loc 1 633 0 discriminator 2
	sall	$31, %eax
	orl	%eax, -160(%ebp,%ebx,4)
	.loc 1 635 0 discriminator 2
	movl	-184(%ebp), %eax
	call	uECC_vli_rshift1
.LVL211:
	decw	-172(%ebp)
.LVL212:
	jmp	.L124
.LVL213:
.L127:
.LBE59:
	.loc 1 637 0
	pushl	%ebx
	pushl	-164(%ebp,%esi,4)
	pushl	-188(%ebp)
	call	uECC_vli_set
.LVL214:
	.loc 1 638 0
	addl	$12, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L129
	call	__stack_chk_fail
.LVL215:
.L129:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL216:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	uECC_vli_mmod, .-uECC_vli_mmod
	.section	.text.unlikely.uECC_vli_mmod
.LCOLDE21:
	.section	.text.uECC_vli_mmod
.LHOTE21:
	.section	.text.unlikely.uECC_vli_modMult,"ax",@progbits
.LCOLDB22:
	.section	.text.uECC_vli_modMult,"ax",@progbits
.LHOTB22:
	.globl	uECC_vli_modMult
	.type	uECC_vli_modMult, @function
uECC_vli_modMult:
.LFB22:
	.loc 1 642 0
	.cfi_startproc
.LVL217:
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
	.loc 1 644 0
	leal	-92(%ebp), %ebx
	.loc 1 642 0
	subl	$112, %esp
	.loc 1 644 0
	movsbl	24(%ebp), %esi
	.loc 1 642 0
	movl	8(%ebp), %eax
	.loc 1 644 0
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	.loc 1 642 0
	movl	20(%ebp), %edi
	movl	%eax, -108(%ebp)
	.loc 1 644 0
	pushl	%esi
	.loc 1 642 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 644 0
	movl	%ebx, %eax
	call	uECC_vli_mult
.LVL218:
	.loc 1 645 0
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%ebx
	pushl	-108(%ebp)
	call	uECC_vli_mmod
.LVL219:
	.loc 1 646 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L133
	call	__stack_chk_fail
.LVL220:
.L133:
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
.LFE22:
	.size	uECC_vli_modMult, .-uECC_vli_modMult
	.section	.text.unlikely.uECC_vli_modMult
.LCOLDE22:
	.section	.text.uECC_vli_modMult
.LHOTE22:
	.section	.text.unlikely.uECC_vli_modMult_fast,"ax",@progbits
.LCOLDB23:
	.section	.text.uECC_vli_modMult_fast,"ax",@progbits
.LHOTB23:
	.globl	uECC_vli_modMult_fast
	.type	uECC_vli_modMult_fast, @function
uECC_vli_modMult_fast:
.LFB23:
	.loc 1 649 0
	.cfi_startproc
.LVL221:
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
	.loc 1 651 0
	leal	-92(%ebp), %esi
	.loc 1 649 0
	subl	$96, %esp
	.loc 1 649 0
	movl	20(%ebp), %ebx
	movl	8(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 651 0
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movsbl	(%ebx), %eax
	pushl	%eax
	movl	%esi, %eax
	call	uECC_vli_mult
.LVL222:
	.loc 1 652 0
	pushl	%esi
	pushl	%edi
	call	*172(%ebx)
.LVL223:
	.loc 1 653 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L136
	call	__stack_chk_fail
.LVL224:
.L136:
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
.LFE23:
	.size	uECC_vli_modMult_fast, .-uECC_vli_modMult_fast
	.section	.text.unlikely.uECC_vli_modMult_fast
.LCOLDE23:
	.section	.text.uECC_vli_modMult_fast
.LHOTE23:
	.section	.text.unlikely.uECC_vli_modSquare_fast,"ax",@progbits
.LCOLDB24:
	.section	.text.uECC_vli_modSquare_fast,"ax",@progbits
.LHOTB24:
	.type	uECC_vli_modSquare_fast, @function
uECC_vli_modSquare_fast:
.LFB24:
	.loc 1 657 0
	.cfi_startproc
.LVL225:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 658 0
	pushl	%ecx
	pushl	%edx
	pushl	%edx
	pushl	%eax
	call	uECC_vli_modMult_fast
.LVL226:
	.loc 1 659 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	uECC_vli_modSquare_fast, .-uECC_vli_modSquare_fast
	.section	.text.unlikely.uECC_vli_modSquare_fast
.LCOLDE24:
	.section	.text.uECC_vli_modSquare_fast
.LHOTE24:
	.section	.text.unlikely.double_jacobian_default,"ax",@progbits
.LCOLDB25:
	.section	.text.double_jacobian_default,"ax",@progbits
.LHOTB25:
	.globl	double_jacobian_default
	.type	double_jacobian_default, @function
double_jacobian_default:
.LFB27:
	.loc 1 717 0
	.cfi_startproc
.LVL227:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL228:
	pushl	%edi
.LVL229:
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 717 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %esi
	movl	8(%ebp), %ebx
	movl	%eax, -116(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 721 0
	movl	-112(%ebp), %eax
	movsbl	(%eax), %edi
	pushl	%edi
	pushl	%esi
	call	uECC_vli_isZero
.LVL230:
	testl	%eax, %eax
	popl	%edx
	popl	%ecx
	jne	.L140
	.loc 1 724 0
	movl	-112(%ebp), %ecx
	movl	-116(%ebp), %edx
	leal	-92(%ebp), %eax
	call	uECC_vli_modSquare_fast
.LVL231:
	.loc 1 725 0
	leal	-92(%ebp), %eax
	pushl	-112(%ebp)
	pushl	%eax
	leal	-60(%ebp), %eax
	pushl	%ebx
	pushl	%eax
	call	uECC_vli_modMult_fast
.LVL232:
	.loc 1 726 0
	leal	-92(%ebp), %edx
	movl	-112(%ebp), %ecx
	movl	%edx, %eax
	call	uECC_vli_modSquare_fast
.LVL233:
	.loc 1 727 0
	pushl	-112(%ebp)
	pushl	%esi
	pushl	-116(%ebp)
	pushl	-116(%ebp)
	call	uECC_vli_modMult_fast
.LVL234:
	.loc 1 728 0
	movl	-112(%ebp), %ecx
	movl	%esi, %edx
	addl	$32, %esp
	movl	%esi, %eax
	call	uECC_vli_modSquare_fast
.LVL235:
	.loc 1 729 0
	movl	-112(%ebp), %eax
	subl	$12, %esp
	pushl	%edi
	addl	$4, %eax
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	pushl	%ebx
	movl	%eax, -108(%ebp)
	call	uECC_vli_modAdd
.LVL236:
	.loc 1 730 0
	addl	$20, %esp
	pushl	%edi
	pushl	-108(%ebp)
	pushl	%esi
	pushl	%esi
	pushl	%esi
	call	uECC_vli_modAdd
.LVL237:
	.loc 1 731 0
	addl	$20, %esp
	pushl	%edi
	pushl	-108(%ebp)
	pushl	%esi
	pushl	%ebx
	pushl	%esi
	call	uECC_vli_modSub
.LVL238:
	.loc 1 732 0
	addl	$32, %esp
	pushl	-112(%ebp)
	pushl	%esi
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modMult_fast
.LVL239:
	.loc 1 733 0
	movl	%edi, (%esp)
	pushl	-108(%ebp)
	pushl	%ebx
	pushl	%ebx
	pushl	%esi
	call	uECC_vli_modAdd
.LVL240:
	.loc 1 734 0
	addl	$20, %esp
	pushl	%edi
	pushl	-108(%ebp)
	pushl	%esi
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modAdd
.LVL241:
	.loc 1 735 0
	addl	$32, %esp
	testb	$1, (%ebx)
	je	.L142
.LBB60:
	.loc 1 736 0
	subl	$12, %esp
	movl	-108(%ebp), %ecx
	movl	%ebx, %edx
	pushl	%edi
	movl	%ebx, %eax
	call	uECC_vli_add
.LVL242:
	.loc 1 737 0
	movl	%edi, %edx
	.loc 1 736 0
	movl	%eax, -120(%ebp)
.LVL243:
	.loc 1 737 0
	movl	%ebx, %eax
.LVL244:
	call	uECC_vli_rshift1
.LVL245:
	.loc 1 738 0
	movl	-120(%ebp), %eax
.LBE60:
	addl	$16, %esp
.LBB61:
	sall	$31, %eax
	orl	%eax, -4(%ebx,%edi,4)
.LBE61:
	jmp	.L143
.LVL246:
.L142:
	.loc 1 740 0
	movl	%edi, %edx
	movl	%ebx, %eax
	call	uECC_vli_rshift1
.LVL247:
.L143:
	.loc 1 742 0
	movl	-112(%ebp), %ecx
	movl	%ebx, %edx
	movl	%esi, %eax
	call	uECC_vli_modSquare_fast
.LVL248:
	.loc 1 743 0
	leal	-60(%ebp), %eax
	subl	$12, %esp
	pushl	%edi
	pushl	-108(%ebp)
	pushl	%eax
	pushl	%esi
	pushl	%esi
	movl	%eax, -120(%ebp)
	call	uECC_vli_modSub
.LVL249:
	.loc 1 744 0
	movl	-120(%ebp), %eax
	addl	$20, %esp
	pushl	%edi
	pushl	-108(%ebp)
	pushl	%eax
	pushl	%esi
	pushl	%esi
	call	uECC_vli_modSub
.LVL250:
	.loc 1 745 0
	movl	-120(%ebp), %eax
	addl	$20, %esp
	pushl	%edi
	pushl	-108(%ebp)
	pushl	%esi
	pushl	%eax
	pushl	%eax
	call	uECC_vli_modSub
.LVL251:
	.loc 1 746 0
	movl	-120(%ebp), %eax
	addl	$32, %esp
	pushl	-112(%ebp)
	pushl	%eax
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modMult_fast
.LVL252:
	.loc 1 747 0
	leal	-92(%ebp), %eax
	movl	%edi, (%esp)
	pushl	-108(%ebp)
	pushl	%eax
	pushl	%ebx
	pushl	%eax
	movl	%eax, -108(%ebp)
	call	uECC_vli_modSub
.LVL253:
	.loc 1 748 0
	addl	$28, %esp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	call	uECC_vli_set
.LVL254:
	.loc 1 749 0
	addl	$12, %esp
	pushl	%edi
	pushl	-116(%ebp)
	pushl	%esi
	call	uECC_vli_set
.LVL255:
	.loc 1 750 0
	movl	-108(%ebp), %eax
	addl	$12, %esp
	pushl	%edi
	pushl	%eax
	pushl	-116(%ebp)
	call	uECC_vli_set
.LVL256:
	addl	$16, %esp
.L140:
	.loc 1 751 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L145
	call	__stack_chk_fail
.LVL257:
.L145:
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
.LFE27:
	.size	double_jacobian_default, .-double_jacobian_default
	.section	.text.unlikely.double_jacobian_default
.LCOLDE25:
	.section	.text.double_jacobian_default
.LHOTE25:
	.section	.text.unlikely.x_side_default,"ax",@progbits
.LCOLDB26:
	.section	.text.x_side_default,"ax",@progbits
.LHOTB26:
	.globl	x_side_default
	.type	x_side_default, @function
x_side_default:
.LFB28:
	.loc 1 755 0
	.cfi_startproc
.LVL258:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 756 0
	movl	$8, %ecx
	.loc 1 755 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 756 0
	leal	-60(%ebp), %edi
	.loc 1 755 0
	subl	$76, %esp
	.loc 1 755 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %esi
	movl	8(%ebp), %ebx
	movl	%eax, -76(%ebp)
	.loc 1 758 0
	movl	-76(%ebp), %edx
	.loc 1 755 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 756 0
	rep stosl
	.loc 1 757 0
	movb	(%esi), %al
	.loc 1 758 0
	movl	%esi, %ecx
	.loc 1 756 0
	movl	$3, -60(%ebp)
	.loc 1 757 0
	movb	%al, -80(%ebp)
.LVL259:
	.loc 1 758 0
	movl	%ebx, %eax
.LVL260:
	call	uECC_vli_modSquare_fast
.LVL261:
	.loc 1 759 0
	movsbl	-80(%ebp), %edi
	leal	4(%esi), %eax
	leal	-60(%ebp), %edx
	subl	$12, %esp
	movl	%eax, -80(%ebp)
.LVL262:
	pushl	%edi
	pushl	%eax
	pushl	%edx
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modSub
.LVL263:
	.loc 1 760 0
	addl	$32, %esp
	pushl	%esi
	pushl	-76(%ebp)
	.loc 1 761 0
	addl	$132, %esi
	.loc 1 760 0
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modMult_fast
.LVL264:
	.loc 1 761 0
	movl	-80(%ebp), %eax
	movl	%edi, (%esp)
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modAdd
.LVL265:
	.loc 1 762 0
	addl	$32, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L148
	call	__stack_chk_fail
.LVL266:
.L148:
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
.LFE28:
	.size	x_side_default, .-x_side_default
	.section	.text.unlikely.x_side_default
.LCOLDE26:
	.section	.text.x_side_default
.LHOTE26:
	.section	.text.unlikely.XYcZ_addC,"ax",@progbits
.LCOLDB27:
	.section	.text.XYcZ_addC,"ax",@progbits
.LHOTB27:
	.type	XYcZ_addC, @function
XYcZ_addC:
.LFB35:
	.loc 1 904 0
	.cfi_startproc
.LVL267:
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
	movl	%ecx, %edi
	subl	$140, %esp
	.loc 1 904 0
	movl	%eax, -144(%ebp)
	movl	8(%ebp), %eax
.LVL268:
	movl	%edx, -152(%ebp)
	movl	%eax, -148(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -140(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL269:
	.loc 1 909 0
	movl	-140(%ebp), %eax
	movsbl	(%eax), %ebx
	leal	4(%eax), %esi
	leal	-124(%ebp), %eax
	pushl	%ebx
.LVL270:
	pushl	%esi
	pushl	-144(%ebp)
	pushl	%ecx
	pushl	%eax
	call	uECC_vli_modSub
.LVL271:
	.loc 1 910 0
	leal	-124(%ebp), %edx
	movl	-140(%ebp), %ecx
	addl	$20, %esp
	movl	%edx, %eax
	call	uECC_vli_modSquare_fast
.LVL272:
	.loc 1 911 0
	leal	-124(%ebp), %eax
	pushl	-140(%ebp)
	pushl	%eax
	pushl	-144(%ebp)
	pushl	-144(%ebp)
	call	uECC_vli_modMult_fast
.LVL273:
	.loc 1 912 0
	leal	-124(%ebp), %eax
	pushl	-140(%ebp)
	pushl	%eax
	pushl	%edi
	pushl	%edi
	call	uECC_vli_modMult_fast
.LVL274:
	.loc 1 913 0
	leal	-124(%ebp), %eax
	addl	$20, %esp
	pushl	%ebx
	pushl	%esi
	pushl	-152(%ebp)
	pushl	-148(%ebp)
	pushl	%eax
	call	uECC_vli_modAdd
.LVL275:
	.loc 1 914 0
	addl	$20, %esp
	pushl	%ebx
	pushl	%esi
	pushl	-152(%ebp)
	pushl	-148(%ebp)
	pushl	-148(%ebp)
	call	uECC_vli_modSub
.LVL276:
	.loc 1 915 0
	leal	-92(%ebp), %eax
	addl	$20, %esp
	pushl	%ebx
	pushl	%esi
	pushl	-144(%ebp)
	pushl	%edi
	pushl	%eax
	call	uECC_vli_modSub
.LVL277:
	.loc 1 916 0
	leal	-92(%ebp), %eax
	addl	$32, %esp
	pushl	-140(%ebp)
	pushl	%eax
	pushl	-152(%ebp)
	pushl	-152(%ebp)
	call	uECC_vli_modMult_fast
.LVL278:
	.loc 1 917 0
	leal	-92(%ebp), %eax
	movl	%ebx, (%esp)
	pushl	%esi
	pushl	%edi
	pushl	-144(%ebp)
	pushl	%eax
	call	uECC_vli_modAdd
.LVL279:
	.loc 1 918 0
	movl	-140(%ebp), %ecx
	movl	-148(%ebp), %edx
	addl	$32, %esp
	movl	%edi, %eax
	call	uECC_vli_modSquare_fast
.LVL280:
	.loc 1 919 0
	leal	-92(%ebp), %eax
	subl	$12, %esp
	pushl	%ebx
	pushl	%esi
	pushl	%eax
	pushl	%edi
	pushl	%edi
	call	uECC_vli_modSub
.LVL281:
	.loc 1 920 0
	addl	$20, %esp
	pushl	%ebx
	pushl	%esi
	pushl	%edi
	leal	-60(%ebp), %edi
.LVL282:
	pushl	-144(%ebp)
.LVL283:
	pushl	%edi
.LVL284:
	call	uECC_vli_modSub
.LVL285:
	.loc 1 921 0
	addl	$32, %esp
	pushl	-140(%ebp)
	pushl	%edi
	pushl	-148(%ebp)
	pushl	-148(%ebp)
	call	uECC_vli_modMult_fast
.LVL286:
	.loc 1 922 0
	movl	%ebx, (%esp)
	pushl	%esi
	pushl	-152(%ebp)
	pushl	-148(%ebp)
	pushl	-148(%ebp)
	call	uECC_vli_modSub
.LVL287:
	.loc 1 923 0
	movl	-140(%ebp), %ecx
	leal	-124(%ebp), %edx
	addl	$32, %esp
	movl	%edi, %eax
	call	uECC_vli_modSquare_fast
.LVL288:
	.loc 1 924 0
	leal	-92(%ebp), %eax
	subl	$12, %esp
	pushl	%ebx
	pushl	%esi
	pushl	%eax
	pushl	%edi
	pushl	%edi
	call	uECC_vli_modSub
.LVL289:
	.loc 1 925 0
	leal	-92(%ebp), %eax
	addl	$20, %esp
	pushl	%ebx
	pushl	%esi
	pushl	-144(%ebp)
	pushl	%edi
	pushl	%eax
	call	uECC_vli_modSub
.LVL290:
	.loc 1 926 0
	leal	-124(%ebp), %eax
	addl	$32, %esp
	pushl	-140(%ebp)
	pushl	%eax
	leal	-92(%ebp), %eax
	pushl	%eax
	pushl	%eax
	call	uECC_vli_modMult_fast
.LVL291:
	.loc 1 927 0
	leal	-92(%ebp), %eax
	movl	%ebx, (%esp)
	pushl	%esi
	pushl	-152(%ebp)
	pushl	%eax
	pushl	-152(%ebp)
	call	uECC_vli_modSub
.LVL292:
	.loc 1 928 0
	addl	$28, %esp
	pushl	%ebx
	pushl	%edi
	pushl	-144(%ebp)
	call	uECC_vli_set
.LVL293:
	.loc 1 929 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L151
	call	__stack_chk_fail
.LVL294:
.L151:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL295:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	XYcZ_addC, .-XYcZ_addC
	.section	.text.unlikely.XYcZ_addC
.LCOLDE27:
	.section	.text.XYcZ_addC
.LHOTE27:
	.section	.text.unlikely.uECC_vli_modInv,"ax",@progbits
.LCOLDB28:
	.section	.text.uECC_vli_modInv,"ax",@progbits
.LHOTB28:
	.globl	uECC_vli_modInv
	.type	uECC_vli_modInv, @function
uECC_vli_modInv:
.LFB26:
	.loc 1 675 0
	.cfi_startproc
.LVL296:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$172, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 675 0
	movl	8(%ebp), %eax
	.loc 1 679 0
	movsbl	20(%ebp), %ebx
	.loc 1 675 0
	movl	12(%ebp), %esi
	movl	%eax, -180(%ebp)
	movl	16(%ebp), %eax
	.loc 1 679 0
	pushl	%ebx
	pushl	%esi
	.loc 1 675 0
	movl	%eax, -172(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 679 0
	call	uECC_vli_isZero
.LVL297:
	testl	%eax, %eax
	popl	%ecx
	popl	%edi
	je	.L154
	.loc 1 680 0
	pushl	%ebx
	pushl	-180(%ebp)
	call	uECC_vli_clear
.LVL298:
	.loc 1 681 0
	popl	%eax
	popl	%edx
	jmp	.L153
.L154:
	.loc 1 683 0
	leal	-156(%ebp), %edi
	pushl	%ebx
	pushl	%esi
	.loc 1 684 0
	leal	-124(%ebp), %esi
	.loc 1 683 0
	pushl	%edi
	call	uECC_vli_set
.LVL299:
	.loc 1 684 0
	pushl	%ebx
	pushl	-172(%ebp)
	pushl	%esi
	call	uECC_vli_set
.LVL300:
	.loc 1 685 0
	leal	-92(%ebp), %eax
	pushl	%ebx
	pushl	%eax
	call	uECC_vli_clear
.LVL301:
	.loc 1 687 0
	leal	-60(%ebp), %eax
	addl	$32, %esp
	.loc 1 686 0
	movl	$1, -92(%ebp)
	.loc 1 687 0
	pushl	%ebx
	pushl	%eax
	call	uECC_vli_clear
.LVL302:
	.loc 1 688 0
	popl	%ecx
	popl	%eax
	movl	%edi, -176(%ebp)
.L156:
	pushl	%ebx
	pushl	%esi
	pushl	-176(%ebp)
	call	uECC_vli_cmp_unsafe
.LVL303:
	addl	$12, %esp
.LVL304:
	testb	%al, %al
	je	.L168
	.loc 1 689 0
	testb	$1, -156(%ebp)
	jne	.L157
	.loc 1 690 0
	movl	-176(%ebp), %eax
.LVL305:
	movl	%ebx, %edx
	call	uECC_vli_rshift1
.LVL306:
	.loc 1 691 0
	movl	%ebx, %ecx
	movl	-172(%ebp), %edx
	leal	-92(%ebp), %eax
	jmp	.L166
.LVL307:
.L157:
	.loc 1 692 0
	testb	$1, -124(%ebp)
	leal	-60(%ebp), %edi
	jne	.L159
	.loc 1 693 0
	movl	%ebx, %edx
	movl	%esi, %eax
.LVL308:
	call	uECC_vli_rshift1
.LVL309:
	.loc 1 694 0
	movl	-172(%ebp), %edx
	movl	%ebx, %ecx
	movl	%edi, %eax
.L166:
	call	vli_modInv_update
.LVL310:
	jmp	.L156
.LVL311:
.L159:
	.loc 1 695 0
	testb	%al, %al
	jle	.L160
	.loc 1 696 0
	pushl	%ebx
	pushl	%esi
	pushl	-176(%ebp)
	pushl	-176(%ebp)
	call	uECC_vli_sub
.LVL312:
	.loc 1 697 0
	movl	-176(%ebp), %eax
	movl	%ebx, %edx
	call	uECC_vli_rshift1
.LVL313:
	.loc 1 698 0
	pushl	%ebx
	pushl	%edi
	leal	-92(%ebp), %edi
	pushl	%edi
	call	uECC_vli_cmp_unsafe
.LVL314:
	addl	$28, %esp
	testb	%al, %al
	jns	.L161
	.loc 1 699 0
	movl	-172(%ebp), %ecx
	pushl	%ebx
	movl	%edi, %edx
	movl	%edi, %eax
	call	uECC_vli_add
.LVL315:
	popl	%edx
.L161:
	.loc 1 701 0
	leal	-60(%ebp), %eax
	pushl	%ebx
	leal	-92(%ebp), %edi
	pushl	%eax
	jmp	.L167
.LVL316:
.L160:
	.loc 1 704 0
	pushl	%ebx
	pushl	-176(%ebp)
	pushl	%esi
	pushl	%esi
	call	uECC_vli_sub
.LVL317:
	.loc 1 705 0
	movl	%ebx, %edx
	movl	%esi, %eax
	call	uECC_vli_rshift1
.LVL318:
	.loc 1 706 0
	leal	-92(%ebp), %eax
	pushl	%ebx
	pushl	%eax
	pushl	%edi
	call	uECC_vli_cmp_unsafe
.LVL319:
	addl	$28, %esp
	testb	%al, %al
	jns	.L162
	.loc 1 707 0
	movl	-172(%ebp), %ecx
	pushl	%ebx
	movl	%edi, %edx
	movl	%edi, %eax
	call	uECC_vli_add
.LVL320:
	popl	%eax
.L162:
	.loc 1 709 0
	leal	-92(%ebp), %eax
	pushl	%ebx
	leal	-60(%ebp), %edi
	pushl	%eax
.L167:
	pushl	%edi
	pushl	%edi
	call	uECC_vli_sub
.LVL321:
	.loc 1 710 0
	movl	-172(%ebp), %edx
	movl	%ebx, %ecx
	movl	%edi, %eax
	call	vli_modInv_update
.LVL322:
	addl	$16, %esp
	jmp	.L156
.LVL323:
.L168:
	.loc 1 713 0
	leal	-92(%ebp), %eax
.LVL324:
	pushl	%ebx
	pushl	%eax
	pushl	-180(%ebp)
	call	uECC_vli_set
.LVL325:
	addl	$12, %esp
.L153:
	.loc 1 714 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L164
	call	__stack_chk_fail
.LVL326:
.L164:
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
.LFE26:
	.size	uECC_vli_modInv, .-uECC_vli_modInv
	.section	.text.unlikely.uECC_vli_modInv
.LCOLDE28:
	.section	.text.uECC_vli_modInv
.LHOTE28:
	.section	.text.unlikely.uECC_secp256r1,"ax",@progbits
.LCOLDB29:
	.section	.text.uECC_secp256r1,"ax",@progbits
.LHOTB29:
	.globl	uECC_secp256r1
	.type	uECC_secp256r1, @function
uECC_secp256r1:
.LFB29:
	.loc 1 764 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 766 0
	movl	$curve_secp256r1, %eax
	.loc 1 764 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 766 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	uECC_secp256r1, .-uECC_secp256r1
	.section	.text.unlikely.uECC_secp256r1
.LCOLDE29:
	.section	.text.uECC_secp256r1
.LHOTE29:
	.section	.text.unlikely.EccPoint_isZero,"ax",@progbits
.LCOLDB30:
	.section	.text.EccPoint_isZero,"ax",@progbits
.LHOTB30:
	.globl	EccPoint_isZero
	.type	EccPoint_isZero, @function
EccPoint_isZero:
.LFB31:
	.loc 1 849 0
	.cfi_startproc
.LVL327:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 850 0
	movl	12(%ebp), %eax
	movb	(%eax), %al
	addl	%eax, %eax
	movsbl	%al, %eax
	movl	%eax, 12(%ebp)
.LVL328:
	.loc 1 851 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 850 0
	jmp	uECC_vli_isZero
.LVL329:
	.cfi_endproc
.LFE31:
	.size	EccPoint_isZero, .-EccPoint_isZero
	.section	.text.unlikely.EccPoint_isZero
.LCOLDE30:
	.section	.text.EccPoint_isZero
.LHOTE30:
	.section	.text.unlikely.apply_z,"ax",@progbits
.LCOLDB31:
	.section	.text.apply_z,"ax",@progbits
.LHOTB31:
	.globl	apply_z
	.type	apply_z, @function
apply_z:
.LFB32:
	.loc 1 854 0
	.cfi_startproc
.LVL330:
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
	.loc 1 856 0
	leal	-60(%ebp), %ebx
	.loc 1 854 0
	subl	$76, %esp
	.loc 1 854 0
	movl	12(%ebp), %eax
	movl	20(%ebp), %esi
	movl	8(%ebp), %edi
	movl	%eax, -76(%ebp)
	movl	16(%ebp), %eax
	.loc 1 856 0
	movl	%esi, %ecx
	.loc 1 854 0
	movl	%eax, -80(%ebp)
	.loc 1 856 0
	movl	-80(%ebp), %edx
	.loc 1 854 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 856 0
	movl	%ebx, %eax
	call	uECC_vli_modSquare_fast
.LVL331:
	.loc 1 857 0
	pushl	%esi
	pushl	%ebx
	pushl	%edi
	pushl	%edi
	call	uECC_vli_modMult_fast
.LVL332:
	.loc 1 858 0
	pushl	%esi
	pushl	-80(%ebp)
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modMult_fast
.LVL333:
	.loc 1 859 0
	addl	$32, %esp
	pushl	%esi
	pushl	%ebx
	pushl	-76(%ebp)
	pushl	-76(%ebp)
	call	uECC_vli_modMult_fast
.LVL334:
	.loc 1 860 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L174
	call	__stack_chk_fail
.LVL335:
.L174:
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
.LFE32:
	.size	apply_z, .-apply_z
	.section	.text.unlikely.apply_z
.LCOLDE31:
	.section	.text.apply_z
.LHOTE31:
	.section	.text.unlikely.XYcZ_add,"ax",@progbits
.LCOLDB32:
	.section	.text.XYcZ_add,"ax",@progbits
.LHOTB32:
	.globl	XYcZ_add
	.type	XYcZ_add, @function
XYcZ_add:
.LFB34:
	.loc 1 883 0
	.cfi_startproc
.LVL336:
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
	.loc 1 886 0
	leal	-60(%ebp), %ebx
	.loc 1 883 0
	subl	$92, %esp
	.loc 1 883 0
	movl	8(%ebp), %eax
	movl	16(%ebp), %esi
	movl	%eax, -88(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL337:
	.loc 1 886 0
	movl	-76(%ebp), %eax
	movsbl	(%eax), %edi
	addl	$4, %eax
	movl	%eax, -80(%ebp)
	pushl	%edi
.LVL338:
	pushl	%eax
	pushl	-88(%ebp)
	pushl	%esi
	pushl	%ebx
	call	uECC_vli_modSub
.LVL339:
	.loc 1 887 0
	movl	-76(%ebp), %ecx
	addl	$20, %esp
	movl	%ebx, %edx
	movl	%ebx, %eax
	call	uECC_vli_modSquare_fast
.LVL340:
	.loc 1 888 0
	pushl	-76(%ebp)
	pushl	%ebx
	pushl	-88(%ebp)
	pushl	-88(%ebp)
	call	uECC_vli_modMult_fast
.LVL341:
	.loc 1 889 0
	pushl	-76(%ebp)
	pushl	%ebx
	pushl	%esi
	pushl	%esi
	call	uECC_vli_modMult_fast
.LVL342:
	.loc 1 890 0
	addl	$20, %esp
	pushl	%edi
	pushl	-80(%ebp)
	pushl	-92(%ebp)
	pushl	-84(%ebp)
	pushl	-84(%ebp)
	call	uECC_vli_modSub
.LVL343:
	.loc 1 891 0
	movl	-76(%ebp), %ecx
	movl	-84(%ebp), %edx
	movl	%ebx, %eax
	addl	$32, %esp
	call	uECC_vli_modSquare_fast
.LVL344:
	.loc 1 892 0
	subl	$12, %esp
	pushl	%edi
	pushl	-80(%ebp)
	pushl	-88(%ebp)
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modSub
.LVL345:
	.loc 1 893 0
	addl	$20, %esp
	pushl	%edi
	pushl	-80(%ebp)
	pushl	%esi
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modSub
.LVL346:
	.loc 1 894 0
	addl	$20, %esp
	pushl	%edi
	pushl	-80(%ebp)
	pushl	-88(%ebp)
	pushl	%esi
	pushl	%esi
	call	uECC_vli_modSub
.LVL347:
	.loc 1 895 0
	addl	$32, %esp
	pushl	-76(%ebp)
	pushl	%esi
	pushl	-92(%ebp)
	pushl	-92(%ebp)
	call	uECC_vli_modMult_fast
.LVL348:
	.loc 1 896 0
	movl	%edi, (%esp)
	pushl	-80(%ebp)
	pushl	%ebx
	pushl	-88(%ebp)
	pushl	%esi
	call	uECC_vli_modSub
.LVL349:
	.loc 1 897 0
	addl	$32, %esp
	pushl	-76(%ebp)
	pushl	%esi
	pushl	-84(%ebp)
	pushl	-84(%ebp)
	call	uECC_vli_modMult_fast
.LVL350:
	.loc 1 898 0
	movl	%edi, (%esp)
	pushl	-80(%ebp)
	pushl	-92(%ebp)
	pushl	-84(%ebp)
	pushl	-84(%ebp)
	call	uECC_vli_modSub
.LVL351:
	.loc 1 899 0
	addl	$28, %esp
	pushl	%edi
	pushl	%ebx
	pushl	%esi
	call	uECC_vli_set
.LVL352:
	.loc 1 900 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L177
	call	__stack_chk_fail
.LVL353:
.L177:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL354:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	XYcZ_add, .-XYcZ_add
	.section	.text.unlikely.XYcZ_add
.LCOLDE32:
	.section	.text.XYcZ_add
.LHOTE32:
	.section	.text.unlikely.EccPoint_mult,"ax",@progbits
.LCOLDB33:
	.section	.text.EccPoint_mult,"ax",@progbits
.LHOTB33:
	.globl	EccPoint_mult
	.type	EccPoint_mult, @function
EccPoint_mult:
.LFB36:
	.loc 1 934 0
	.cfi_startproc
.LVL355:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$236, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 934 0
	movl	8(%ebp), %eax
	movl	28(%ebp), %edi
.LVL356:
	movl	20(%ebp), %ebx
	movl	%eax, -236(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -216(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -232(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -208(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 941 0
	movsbl	(%edi), %eax
	pushl	%eax
.LVL357:
	movl	%eax, -204(%ebp)
	leal	-124(%ebp), %eax
.LVL358:
	pushl	-216(%ebp)
.LVL359:
	pushl	%eax
.LVL360:
	call	uECC_vli_set
.LVL361:
	.loc 1 942 0
	movl	-204(%ebp), %eax
	pushl	-204(%ebp)
	sall	$2, %eax
	movl	%eax, -220(%ebp)
	movl	-216(%ebp), %eax
	addl	-220(%ebp), %eax
	pushl	%eax
	movl	%eax, -224(%ebp)
	leal	-60(%ebp), %eax
	pushl	%eax
	call	uECC_vli_set
.LVL362:
.LBB66:
.LBB67:
	.loc 1 868 0
	addl	$24, %esp
	testl	%ebx, %ebx
	movsbl	(%edi), %esi
	leal	-188(%ebp), %eax
	je	.L180
	.loc 1 869 0
	pushl	%esi
.LVL363:
	pushl	%ebx
	pushl	%eax
	call	uECC_vli_set
.LVL364:
	addl	$12, %esp
	jmp	.L181
.LVL365:
.L180:
	.loc 1 871 0
	pushl	%esi
.LVL366:
	pushl	%eax
	call	uECC_vli_clear
.LVL367:
	.loc 1 872 0
	popl	%ecx
	popl	%ebx
.LVL368:
	movl	$1, -188(%ebp)
.L181:
	.loc 1 874 0
	leal	-124(%ebp), %edx
.LVL369:
	leal	-156(%ebp), %eax
.LVL370:
	pushl	%esi
	.loc 1 876 0
	leal	-188(%ebp), %ebx
	.loc 1 874 0
	pushl	%edx
	pushl	%eax
	movl	%edx, -212(%ebp)
	call	uECC_vli_set
.LVL371:
	.loc 1 875 0
	pushl	%esi
	leal	-92(%ebp), %eax
.LVL372:
	leal	-60(%ebp), %esi
.LVL373:
	pushl	%esi
.LVL374:
	pushl	%eax
.LVL375:
	call	uECC_vli_set
.LVL376:
	.loc 1 876 0
	movl	-212(%ebp), %edx
	addl	$24, %esp
	pushl	%edi
	pushl	%ebx
	pushl	%esi
	pushl	%edx
	call	apply_z
.LVL377:
	.loc 1 877 0
	movl	-212(%ebp), %edx
	pushl	%edi
	pushl	%ebx
	pushl	%esi
	pushl	%edx
	call	*164(%edi)
.LVL378:
	.loc 1 878 0
	leal	-92(%ebp), %eax
.LVL379:
	addl	$32, %esp
	pushl	%edi
	pushl	%ebx
	pushl	%eax
	leal	-156(%ebp), %eax
.LVL380:
	pushl	%eax
.LVL381:
	call	apply_z
.LVL382:
.LBE67:
.LBE66:
	.loc 1 944 0
	movl	-208(%ebp), %eax
	addl	$16, %esp
	subl	$2, %eax
	movw	%ax, -208(%ebp)
.LVL383:
	.loc 1 946 0
	leal	-92(%ebp), %eax
.LVL384:
	movl	%eax, -240(%ebp)
	leal	-156(%ebp), %eax
	movl	%eax, -244(%ebp)
.LVL385:
.L182:
	.loc 1 944 0 discriminator 1
	cmpw	$0, -208(%ebp)
	jle	.L186
	.loc 1 945 0 discriminator 3
	movswl	-208(%ebp), %eax
	pushl	%ebx
	pushl	%ebx
	.loc 1 946 0 discriminator 3
	movl	$1, %ebx
	.loc 1 945 0 discriminator 3
	pushl	%eax
	pushl	-232(%ebp)
	call	uECC_vli_testBit
.LVL386:
	testl	%eax, %eax
	.loc 1 946 0 discriminator 3
	movl	-240(%ebp), %ecx
	.loc 1 945 0 discriminator 3
	sete	%al
	movzbl	%al, %eax
.LVL387:
	popl	%esi
	.loc 1 946 0 discriminator 3
	subl	%eax, %ebx
	.loc 1 945 0 discriminator 3
	popl	%edx
	.loc 1 946 0 discriminator 3
	movl	%eax, %edx
	sall	$5, %ebx
	movl	%ecx, %eax
.LVL388:
	sall	$5, %edx
.LVL389:
	addl	%ebx, %eax
	addl	-244(%ebp), %ebx
	leal	(%ecx,%edx), %esi
	addl	-244(%ebp), %edx
	pushl	%edi
	movl	%eax, -228(%ebp)
	pushl	%esi
	movl	%edx, %ecx
	movl	%edx, -212(%ebp)
	movl	%eax, %edx
	movl	%ebx, %eax
	call	XYcZ_addC
.LVL390:
	.loc 1 947 0 discriminator 3
	movl	%edi, (%esp)
	pushl	-228(%ebp)
	pushl	%ebx
	pushl	%esi
	pushl	-212(%ebp)
	call	XYcZ_add
.LVL391:
	decw	-208(%ebp)
.LVL392:
	addl	$32, %esp
	jmp	.L182
.L186:
	movl	-232(%ebp), %eax
	.loc 1 950 0
	leal	-92(%ebp), %esi
	.loc 1 951 0
	leal	-188(%ebp), %ebx
	movl	(%eax), %edx
	andl	$1, %edx
	xorl	$1, %edx
.LVL393:
	.loc 1 950 0
	movl	%edx, %eax
	sall	$5, %eax
	leal	(%esi,%eax), %ecx
	movl	%ecx, -228(%ebp)
	leal	-156(%ebp), %ecx
	addl	%ecx, %eax
	movl	%eax, -232(%ebp)
	movl	$1, %eax
	subl	%edx, %eax
.LVL394:
	pushl	%edx
	pushl	%edx
	sall	$5, %eax
	pushl	%edi
	pushl	-228(%ebp)
	leal	(%esi,%eax), %ecx
	movl	%ecx, -208(%ebp)
.LVL395:
	leal	-156(%ebp), %ecx
	movl	-208(%ebp), %edx
	addl	%ecx, %eax
	movl	-232(%ebp), %ecx
	movl	%eax, -212(%ebp)
	call	XYcZ_addC
.LVL396:
	.loc 1 951 0
	leal	4(%edi), %edx
	leal	-156(%ebp), %eax
	popl	%ecx
	pushl	-204(%ebp)
	pushl	%edx
	pushl	%eax
	leal	-124(%ebp), %eax
	movl	%edx, -240(%ebp)
	pushl	%eax
	pushl	%ebx
	call	uECC_vli_modSub
.LVL397:
	.loc 1 952 0
	addl	$32, %esp
	pushl	%edi
	pushl	-208(%ebp)
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modMult_fast
.LVL398:
	.loc 1 953 0
	pushl	%edi
	pushl	-216(%ebp)
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modMult_fast
.LVL399:
	.loc 1 954 0
	movl	-240(%ebp), %edx
	addl	$32, %esp
	pushl	-204(%ebp)
	pushl	%edx
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modInv
.LVL400:
	.loc 1 955 0
	pushl	%edi
	pushl	-224(%ebp)
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modMult_fast
.LVL401:
	.loc 1 956 0
	addl	$32, %esp
	pushl	%edi
	pushl	-212(%ebp)
	pushl	%ebx
	pushl	%ebx
	call	uECC_vli_modMult_fast
.LVL402:
	.loc 1 957 0
	movl	%edi, (%esp)
	pushl	-208(%ebp)
	pushl	-212(%ebp)
	pushl	-228(%ebp)
	pushl	-232(%ebp)
	call	XYcZ_add
.LVL403:
	.loc 1 958 0
	leal	-156(%ebp), %eax
	addl	$32, %esp
	pushl	%edi
	pushl	%ebx
	pushl	%esi
	pushl	%eax
	call	apply_z
.LVL404:
	.loc 1 959 0
	leal	-156(%ebp), %eax
	addl	$12, %esp
	pushl	-204(%ebp)
	pushl	%eax
	pushl	-236(%ebp)
	call	uECC_vli_set
.LVL405:
	.loc 1 960 0
	movl	-236(%ebp), %eax
	addl	-220(%ebp), %eax
	addl	$12, %esp
	pushl	-204(%ebp)
	pushl	%esi
	pushl	%eax
	call	uECC_vli_set
.LVL406:
	.loc 1 961 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L184
	call	__stack_chk_fail
.LVL407:
.L184:
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
.LFE36:
	.size	EccPoint_mult, .-EccPoint_mult
	.section	.text.unlikely.EccPoint_mult
.LCOLDE33:
	.section	.text.EccPoint_mult
.LHOTE33:
	.section	.text.unlikely.regularize_k,"ax",@progbits
.LCOLDB34:
	.section	.text.regularize_k,"ax",@progbits
.LHOTB34:
	.globl	regularize_k
	.type	regularize_k, @function
regularize_k:
.LFB37:
	.loc 1 964 0
	.cfi_startproc
.LVL408:
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
	pushl	%ebx
	.loc 1 967 0
	movl	$32, %esi
	.loc 1 964 0
	movl	20(%ebp), %ecx
	.loc 1 965 0
	movswl	2(%ecx), %edi
.LVL409:
	.loc 1 967 0
	leal	31(%edi), %eax
	cltd
	idivl	%esi
	movl	8(%ebp), %edx
	movsbl	%al, %ebx
	leal	36(%ecx), %eax
	pushl	%ebx
.LVL410:
	movl	%eax, -16(%ebp)
	movl	%eax, %ecx
	movl	12(%ebp), %eax
	call	uECC_vli_add
.LVL411:
	testl	%eax, %eax
	popl	%esi
	movl	$1, %esi
	jne	.L188
	.loc 1 967 0 is_stmt 0 discriminator 2
	movl	%ebx, %eax
	xorl	%esi, %esi
	sall	$5, %eax
	cmpl	%eax, %edi
	jge	.L188
	.loc 1 969 0 is_stmt 1
	pushl	%edi
	pushl	12(%ebp)
	call	uECC_vli_testBit
.LVL412:
	popl	%edx
	.loc 1 967 0
	testl	%eax, %eax
	.loc 1 969 0
	popl	%ecx
	.loc 1 967 0
	setne	%al
	movzbl	%al, %eax
	movl	%eax, %esi
.L188:
.LVL413:
	.loc 1 970 0 discriminator 5
	movl	-16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	pushl	%ebx
	call	uECC_vli_add
.LVL414:
	.loc 1 972 0 discriminator 5
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL415:
	popl	%edi
	.cfi_restore 7
.LVL416:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	regularize_k, .-regularize_k
	.section	.text.unlikely.regularize_k
.LCOLDE34:
	.section	.text.regularize_k
.LHOTE34:
	.section	.text.unlikely.EccPoint_compute_public_key,"ax",@progbits
.LCOLDB35:
	.section	.text.EccPoint_compute_public_key,"ax",@progbits
.LHOTB35:
	.globl	EccPoint_compute_public_key
	.type	EccPoint_compute_public_key, @function
EccPoint_compute_public_key:
.LFB38:
	.loc 1 976 0
	.cfi_startproc
.LVL417:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.loc 1 979 0
	leal	-44(%ebp), %edx
	.loc 1 976 0
	subl	$80, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 976 0
	movl	16(%ebp), %ebx
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 979 0
	leal	-76(%ebp), %eax
	movl	%edx, -80(%ebp)
	.loc 1 981 0
	pushl	%ebx
	pushl	%edx
	pushl	%eax
	pushl	12(%ebp)
	.loc 1 979 0
	movl	%eax, -84(%ebp)
	.loc 1 981 0
	call	regularize_k
.LVL418:
	.loc 1 982 0
	popl	%edx
	popl	%ecx
	movw	2(%ebx), %cx
	testl	%eax, %eax
	pushl	%ebx
	sete	%al
.LVL419:
	movzbl	%al, %eax
	leal	1(%ecx), %edx
	movswl	%dx, %edx
	pushl	%edx
	pushl	$0
	pushl	-84(%ebp,%eax,4)
	leal	68(%ebx), %eax
	pushl	%eax
	pushl	%esi
	call	EccPoint_mult
.LVL420:
	.loc 1 983 0
	addl	$24, %esp
	pushl	%ebx
	pushl	%esi
	call	EccPoint_isZero
.LVL421:
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
	.loc 1 987 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L193
	call	__stack_chk_fail
.LVL422:
.L193:
	leal	-8(%ebp), %esp
	movzbl	%al, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	EccPoint_compute_public_key, .-EccPoint_compute_public_key
	.section	.text.unlikely.EccPoint_compute_public_key
.LCOLDE35:
	.section	.text.EccPoint_compute_public_key
.LHOTE35:
	.section	.text.unlikely.uECC_vli_nativeToBytes,"ax",@progbits
.LCOLDB36:
	.section	.text.uECC_vli_nativeToBytes,"ax",@progbits
.LHOTB36:
	.globl	uECC_vli_nativeToBytes
	.type	uECC_vli_nativeToBytes, @function
uECC_vli_nativeToBytes:
.LFB39:
	.loc 1 990 0
	.cfi_startproc
.LVL423:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%edx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 992 0
	xorl	%edx, %edx
	.loc 1 990 0
	movl	12(%ebp), %esi
.LBB68:
	.loc 1 993 0
	leal	-1(%esi), %edi
.LVL424:
.L196:
.LBE68:
	.loc 1 992 0 discriminator 1
	movsbl	%dl, %eax
	cmpl	%esi, %eax
	jge	.L199
.LBB69:
	.loc 1 993 0 discriminator 3
	movl	%edi, %ecx
	incl	%edx
.LVL425:
	subl	%eax, %ecx
.LVL426:
	.loc 1 994 0 discriminator 3
	movl	%ecx, %ebx
	andl	$3, %ecx
.LVL427:
	sall	$3, %ecx
	shrl	$2, %ebx
.LVL428:
	movl	%ecx, -16(%ebp)
	movl	16(%ebp), %ecx
	movl	(%ecx,%ebx,4), %ebx
	movb	-16(%ebp), %cl
	shrl	%cl, %ebx
	movl	8(%ebp), %ecx
	movb	%bl, (%ecx,%eax)
	jmp	.L196
.LVL429:
.L199:
.LBE69:
	.loc 1 996 0
	popl	%eax
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
.LFE39:
	.size	uECC_vli_nativeToBytes, .-uECC_vli_nativeToBytes
	.section	.text.unlikely.uECC_vli_nativeToBytes
.LCOLDE36:
	.section	.text.uECC_vli_nativeToBytes
.LHOTE36:
	.section	.text.unlikely.uECC_vli_bytesToNative,"ax",@progbits
.LCOLDB37:
	.section	.text.uECC_vli_bytesToNative,"ax",@progbits
.LHOTB37:
	.globl	uECC_vli_bytesToNative
	.type	uECC_vli_bytesToNative, @function
uECC_vli_bytesToNative:
.LFB40:
	.loc 1 999 0
	.cfi_startproc
.LVL430:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 1001 0
	movl	$4, %ecx
	.loc 1 999 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.loc 1 1001 0
	movl	16(%ebp), %eax
	.loc 1 999 0
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 1001 0
	addl	$3, %eax
	cltd
	idivl	%ecx
	movsbl	%al, %eax
	pushl	%eax
	pushl	8(%ebp)
	call	uECC_vli_clear
.LVL431:
	.loc 1 1002 0
	popl	%eax
.LBB70:
	.loc 1 1003 0
	movl	16(%ebp), %edi
.LBE70:
	.loc 1 1002 0
	xorl	%eax, %eax
	popl	%edx
.LBB71:
	.loc 1 1003 0
	decl	%edi
.LVL432:
.L201:
.LBE71:
	.loc 1 1002 0 discriminator 1
	movsbl	%al, %edx
	cmpl	%edx, 16(%ebp)
	jle	.L204
.LBB72:
	.loc 1 1004 0 discriminator 3
	movl	12(%ebp), %ebx
	.loc 1 1003 0 discriminator 3
	movl	%edi, %ecx
	incl	%eax
.LVL433:
	subl	%edx, %ecx
.LVL434:
	.loc 1 1004 0 discriminator 3
	movl	%ecx, %esi
	andl	$3, %ecx
.LVL435:
	movzbl	(%ebx,%edx), %edx
	movl	8(%ebp), %ebx
	andl	$-4, %esi
.LVL436:
	sall	$3, %ecx
	sall	%cl, %edx
	orl	%edx, (%ebx,%esi)
	jmp	.L201
.LVL437:
.L204:
.LBE72:
	.loc 1 1007 0
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
.LFE40:
	.size	uECC_vli_bytesToNative, .-uECC_vli_bytesToNative
	.section	.text.unlikely.uECC_vli_bytesToNative
.LCOLDE37:
	.section	.text.uECC_vli_bytesToNative
.LHOTE37:
	.section	.text.unlikely.uECC_generate_random_int,"ax",@progbits
.LCOLDB38:
	.section	.text.uECC_generate_random_int,"ax",@progbits
.LHOTB38:
	.globl	uECC_generate_random_int
	.type	uECC_generate_random_int, @function
uECC_generate_random_int:
.LFB41:
	.loc 1 1010 0
	.cfi_startproc
.LVL438:
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
	.loc 1 1010 0
	movl	16(%ebp), %ecx
	.loc 1 1013 0
	movsbl	%cl, %ebx
	movl	%ecx, -28(%ebp)
	pushl	%ebx
	pushl	12(%ebp)
	call	uECC_vli_numBits
.LVL439:
	.loc 1 1014 0
	cmpl	$0, g_rng_function
	movl	-28(%ebp), %ecx
	.loc 1 1013 0
	popl	%esi
	popl	%edi
.LVL440:
	.loc 1 1014 0
	jne	.L206
.LVL441:
.L208:
	.loc 1 1015 0
	xorl	%eax, %eax
	jmp	.L207
.LVL442:
.L206:
	.loc 1 1021 0
	movl	8(%ebp), %edx
	.loc 1 1022 0
	movsbw	%cl, %cx
	.loc 1 1018 0
	leal	0(,%ebx,4), %esi
	.loc 1 1022 0
	sall	$5, %ecx
	movl	$64, -28(%ebp)
	subl	%eax, %ecx
	orl	$-1, %eax
.LVL443:
	shrl	%cl, %eax
	.loc 1 1021 0
	leal	-4(%edx,%esi), %edi
	.loc 1 1022 0
	movl	%eax, -32(%ebp)
.L210:
.LVL444:
	.loc 1 1018 0
	pushl	%ecx
	pushl	%ecx
	pushl	%esi
	pushl	8(%ebp)
	call	*g_rng_function
.LVL445:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L208
	.loc 1 1021 0
	movl	-32(%ebp), %eax
	andl	%eax, (%edi)
	.loc 1 1023 0
	pushl	%edx
	pushl	%edx
	pushl	%ebx
	pushl	8(%ebp)
	call	uECC_vli_isZero
.LVL446:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L209
.L211:
.LVL447:
	.loc 1 1017 0
	decl	-28(%ebp)
.LVL448:
	jne	.L210
	jmp	.L208
.LVL449:
.L209:
	.loc 1 1024 0 discriminator 1
	pushl	%eax
	pushl	%ebx
	pushl	8(%ebp)
	pushl	12(%ebp)
	call	uECC_vli_cmp
.LVL450:
	.loc 1 1023 0 discriminator 1
	addl	$16, %esp
	decb	%al
	jne	.L211
	.loc 1 1025 0
	movl	$1, %eax
.LVL451:
.L207:
	.loc 1 1029 0
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
.LFE41:
	.size	uECC_generate_random_int, .-uECC_generate_random_int
	.section	.text.unlikely.uECC_generate_random_int
.LCOLDE38:
	.section	.text.uECC_generate_random_int
.LHOTE38:
	.section	.text.unlikely.uECC_valid_point,"ax",@progbits
.LCOLDB39:
	.section	.text.uECC_valid_point,"ax",@progbits
.LHOTB39:
	.globl	uECC_valid_point
	.type	uECC_valid_point, @function
uECC_valid_point:
.LFB42:
	.loc 1 1031 0
	.cfi_startproc
.LVL452:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 1031 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 1034 0
	movsbl	(%esi), %ebx
.LVL453:
	.loc 1 1035 0
	pushl	%esi
	pushl	%edi
	call	EccPoint_isZero
.LVL454:
	popl	%edx
	movl	%eax, %edx
	.loc 1 1036 0
	orl	$-1, %eax
	.loc 1 1035 0
	testl	%edx, %edx
	popl	%ecx
	jne	.L218
	.loc 1 1038 0
	leal	4(%esi), %ecx
	pushl	%ebx
	pushl	%edi
	pushl	%ecx
	movl	%ecx, -112(%ebp)
	call	uECC_vli_cmp_unsafe
.LVL455:
	movb	%al, %dl
	addl	$12, %esp
	.loc 1 1040 0
	movl	$-2, %eax
	.loc 1 1038 0
	decb	%dl
	jne	.L218
	.loc 1 1039 0 discriminator 1
	movl	-112(%ebp), %ecx
	leal	(%edi,%ebx,4), %edx
	pushl	%ebx
	pushl	%edx
	movl	%edx, -108(%ebp)
	pushl	%ecx
	call	uECC_vli_cmp_unsafe
.LVL456:
	movb	%al, %cl
	addl	$12, %esp
	.loc 1 1040 0 discriminator 1
	movl	$-2, %eax
	.loc 1 1038 0 discriminator 1
	decb	%cl
	jne	.L218
	.loc 1 1042 0
	movl	-108(%ebp), %edx
	leal	-92(%ebp), %eax
	movl	%esi, %ecx
	call	uECC_vli_modSquare_fast
.LVL457:
	.loc 1 1043 0
	pushl	%eax
	pushl	%esi
	pushl	%edi
	leal	-60(%ebp), %edi
	pushl	%edi
	call	*168(%esi)
.LVL458:
	.loc 1 1044 0
	leal	-92(%ebp), %eax
	addl	$12, %esp
	pushl	%ebx
	pushl	%edi
	pushl	%eax
	call	uECC_vli_equal
.LVL459:
	addl	$16, %esp
	.loc 1 1046 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	notl	%eax
	andl	$-3, %eax
.L218:
	.loc 1 1047 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
.LVL460:
	je	.L219
	call	__stack_chk_fail
.LVL461:
.L219:
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
.LFE42:
	.size	uECC_valid_point, .-uECC_valid_point
	.section	.text.unlikely.uECC_valid_point
.LCOLDE39:
	.section	.text.uECC_valid_point
.LHOTE39:
	.section	.text.unlikely.uECC_valid_public_key,"ax",@progbits
.LCOLDB40:
	.section	.text.uECC_valid_public_key,"ax",@progbits
.LHOTB40:
	.globl	uECC_valid_public_key
	.type	uECC_valid_public_key, @function
uECC_valid_public_key:
.LFB43:
	.loc 1 1049 0
	.cfi_startproc
.LVL462:
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
	.loc 1 1051 0
	leal	-92(%ebp), %esi
	.loc 1 1049 0
	subl	$92, %esp
	.loc 1 1049 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 1051 0
	movsbl	1(%ebx), %eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	call	uECC_vli_bytesToNative
.LVL463:
	.loc 1 1052 0
	movsbl	1(%ebx), %eax
	pushl	%eax
	addl	%edi, %eax
	pushl	%eax
	movsbl	(%ebx), %eax
	leal	(%esi,%eax,4), %eax
	pushl	%eax
	call	uECC_vli_bytesToNative
.LVL464:
	.loc 1 1056 0
	leal	68(%ebx), %eax
	pushl	$16
	pushl	%eax
	pushl	%esi
	call	uECC_vli_cmp_unsafe
.LVL465:
	movb	%al, %dl
	addl	$36, %esp
	movl	$-4, %eax
	testb	%dl, %dl
	je	.L226
	.loc 1 1059 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%esi
	call	uECC_valid_point
.LVL466:
	addl	$16, %esp
.L226:
	.loc 1 1060 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L227
	call	__stack_chk_fail
.LVL467:
.L227:
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
.LFE43:
	.size	uECC_valid_public_key, .-uECC_valid_public_key
	.section	.text.unlikely.uECC_valid_public_key
.LCOLDE40:
	.section	.text.uECC_valid_public_key
.LHOTE40:
	.section	.text.unlikely.uECC_compute_public_key,"ax",@progbits
.LCOLDB41:
	.section	.text.uECC_compute_public_key,"ax",@progbits
.LHOTB41:
	.globl	uECC_compute_public_key
	.type	uECC_compute_public_key, @function
uECC_compute_public_key:
.LFB44:
	.loc 1 1063 0
	.cfi_startproc
.LVL468:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 1066 0
	movl	$8, %ecx
	.loc 1 1063 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 1066 0
	leal	-124(%ebp), %esi
	.loc 1 1063 0
	subl	$140, %esp
	.loc 1 1063 0
	movl	16(%ebp), %ebx
	movl	12(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 1066 0
	movswl	2(%ebx), %eax
	addl	$7, %eax
	cltd
	idivl	%ecx
	pushl	%eax
	pushl	8(%ebp)
	pushl	%esi
	call	uECC_vli_bytesToNative
.LVL469:
	.loc 1 1070 0
	movswl	2(%ebx), %eax
	movl	$32, %ecx
	addl	$31, %eax
	cltd
	idivl	%ecx
	movsbl	%al, %edx
	pushl	%edx
	pushl	%esi
	movl	%edx, -140(%ebp)
	call	uECC_vli_isZero
.LVL470:
	addl	$20, %esp
	testl	%eax, %eax
	movl	-140(%ebp), %edx
	je	.L232
.L234:
	.loc 1 1071 0
	xorl	%eax, %eax
	jmp	.L233
.L232:
	.loc 1 1073 0
	leal	36(%ebx), %eax
	pushl	%ecx
	pushl	%edx
	pushl	%esi
	pushl	%eax
	call	uECC_vli_cmp
.LVL471:
	addl	$16, %esp
	decb	%al
	jne	.L234
	.loc 1 1076 0
	pushl	%edx
	pushl	%ebx
	pushl	%esi
	leal	-92(%ebp), %esi
	pushl	%esi
	call	EccPoint_compute_public_key
.LVL472:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L234
	.loc 1 1079 0
	pushl	%eax
	pushl	%esi
	movsbl	1(%ebx), %eax
	pushl	%eax
	pushl	%edi
	call	uECC_vli_nativeToBytes
.LVL473:
	.loc 1 1080 0
	movsbl	(%ebx), %eax
	addl	$12, %esp
	leal	(%esi,%eax,4), %eax
	pushl	%eax
	movsbl	1(%ebx), %eax
	addl	%eax, %edi
	pushl	%eax
	pushl	%edi
	call	uECC_vli_nativeToBytes
.LVL474:
	.loc 1 1083 0
	addl	$16, %esp
	movl	$1, %eax
.L233:
	.loc 1 1084 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L235
	call	__stack_chk_fail
.LVL475:
.L235:
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
.LFE44:
	.size	uECC_compute_public_key, .-uECC_compute_public_key
	.section	.text.unlikely.uECC_compute_public_key
.LCOLDE41:
	.section	.text.uECC_compute_public_key
.LHOTE41:
	.section	.data.g_rng_function,"aw",@progbits
	.align 4
	.type	g_rng_function, @object
	.size	g_rng_function, 4
g_rng_function:
	.long	default_CSPRNG
	.section	.rodata.curve_secp256r1,"a",@progbits
	.align 32
	.type	curve_secp256r1, @object
	.size	curve_secp256r1, 176
curve_secp256r1:
	.byte	8
	.byte	32
	.value	256
	.long	-1
	.long	-1
	.long	-1
	.long	0
	.long	0
	.long	0
	.long	1
	.long	-1
	.long	-60611247
	.long	-205927742
	.long	-1491624316
	.long	-1125713235
	.long	-1
	.long	-1
	.long	0
	.long	-1
	.long	-661077354
	.long	-190760635
	.long	770388896
	.long	1996717441
	.long	1671708914
	.long	-121837851
	.long	-517193145
	.long	1796723186
	.long	935285237
	.long	-877248408
	.long	1798397646
	.long	734933847
	.long	2081398294
	.long	-1897403574
	.long	-31817829
	.long	1340293858
	.long	668098635
	.long	1003371582
	.long	-866930442
	.long	1696401072
	.long	1989707452
	.long	-1276396203
	.long	-1439001625
	.long	1522939352
	.long	double_jacobian_default
	.long	x_side_default
	.long	vli_mmod_fast_secp256r1
	.text
.Letext0:
	.section	.text.unlikely.uECC_vli_add
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2146
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF122
	.byte	0xc
	.long	.LASF123
	.long	.LASF124
	.long	.Ldebug_ranges0+0x128
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x1
	.byte	0x1
	.long	0x3e
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x2
	.long	0x50
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1
	.byte	0x3
	.long	0x62
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x8
	.long	0x25
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x13
	.long	0x33
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x14
	.long	0x45
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x15
	.long	0x57
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x1a
	.long	0x85
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x2f
	.long	0x97
	.uleb128 0x3
	.long	.LASF18
	.byte	0x1
	.byte	0x30
	.long	0xad
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1
	.byte	0x31
	.long	0x97
	.uleb128 0x3
	.long	.LASF20
	.byte	0x1
	.byte	0x32
	.long	0x2c
	.uleb128 0x3
	.long	.LASF21
	.byte	0x1
	.byte	0x33
	.long	0xb8
	.uleb128 0x3
	.long	.LASF22
	.byte	0x1
	.byte	0x35
	.long	0x105
	.uleb128 0x5
	.byte	0x4
	.long	0x188
	.uleb128 0x6
	.long	.LASF125
	.byte	0xb0
	.byte	0x1
	.byte	0x36
	.long	0x188
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0x37
	.long	0xc3
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.byte	0x38
	.long	0xc3
	.byte	0x1
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0x39
	.long	0xce
	.byte	0x2
	.uleb128 0x8
	.string	"p"
	.byte	0x1
	.byte	0x3a
	.long	0x18d
	.byte	0x4
	.uleb128 0x8
	.string	"n"
	.byte	0x1
	.byte	0x3b
	.long	0x18d
	.byte	0x24
	.uleb128 0x8
	.string	"G"
	.byte	0x1
	.byte	0x3c
	.long	0x1a4
	.byte	0x44
	.uleb128 0x8
	.string	"b"
	.byte	0x1
	.byte	0x3d
	.long	0x18d
	.byte	0x84
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.byte	0x3e
	.long	0x1d4
	.byte	0xa4
	.uleb128 0x7
	.long	.LASF27
	.byte	0x1
	.byte	0x40
	.long	0x1fa
	.byte	0xa8
	.uleb128 0x7
	.long	.LASF28
	.byte	0x1
	.byte	0x41
	.long	0x210
	.byte	0xac
	.byte	0
	.uleb128 0x9
	.long	0x10b
	.uleb128 0xa
	.long	0xe4
	.long	0x19d
	.uleb128 0xb
	.long	0x19d
	.byte	0x7
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF29
	.uleb128 0xa
	.long	0xe4
	.long	0x1b4
	.uleb128 0xb
	.long	0x19d
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0x1ce
	.uleb128 0xd
	.long	0x1ce
	.uleb128 0xd
	.long	0x1ce
	.uleb128 0xd
	.long	0x1ce
	.uleb128 0xd
	.long	0xfa
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xe4
	.uleb128 0x5
	.byte	0x4
	.long	0x1b4
	.uleb128 0xc
	.long	0x1ef
	.uleb128 0xd
	.long	0x1ce
	.uleb128 0xd
	.long	0x1ef
	.uleb128 0xd
	.long	0xfa
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1f5
	.uleb128 0x9
	.long	0xe4
	.uleb128 0x5
	.byte	0x4
	.long	0x1da
	.uleb128 0xc
	.long	0x210
	.uleb128 0xd
	.long	0x1ce
	.uleb128 0xd
	.long	0x1ce
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x200
	.uleb128 0x3
	.long	.LASF30
	.byte	0x1
	.byte	0x6b
	.long	0x221
	.uleb128 0x5
	.byte	0x4
	.long	0x227
	.uleb128 0xe
	.long	0x90
	.long	0x23b
	.uleb128 0xd
	.long	0x23b
	.uleb128 0xd
	.long	0x2c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xa2
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF31
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF32
	.uleb128 0xf
	.long	.LASF36
	.byte	0x1
	.value	0x1f0
	.long	0xe4
	.byte	0x1
	.long	0x285
	.uleb128 0x10
	.long	.LASF33
	.byte	0x1
	.value	0x1f0
	.long	0xe4
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.value	0x1f0
	.long	0xe4
	.uleb128 0x10
	.long	.LASF35
	.byte	0x1
	.value	0x1f0
	.long	0x2c
	.byte	0
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.value	0x294
	.byte	0x1
	.long	0x2c2
	.uleb128 0x12
	.string	"uv"
	.byte	0x1
	.value	0x294
	.long	0x1ce
	.uleb128 0x12
	.string	"mod"
	.byte	0x1
	.value	0x295
	.long	0x1ef
	.uleb128 0x10
	.long	.LASF23
	.byte	0x1
	.value	0x296
	.long	0xc3
	.uleb128 0x13
	.long	.LASF41
	.byte	0x1
	.value	0x298
	.long	0xe4
	.byte	0
	.uleb128 0xf
	.long	.LASF37
	.byte	0x1
	.value	0x1b4
	.long	0xe4
	.byte	0x1
	.long	0x2ec
	.uleb128 0x12
	.string	"vli"
	.byte	0x1
	.value	0x1b4
	.long	0x1ef
	.uleb128 0x12
	.string	"bit"
	.byte	0x1
	.value	0x1b4
	.long	0xce
	.byte	0
	.uleb128 0x14
	.long	.LASF126
	.byte	0x1
	.value	0x201
	.long	0xe4
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b8
	.uleb128 0x15
	.long	.LASF38
	.byte	0x1
	.value	0x201
	.long	0x1ce
	.long	.LLST0
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x201
	.long	0x1ef
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x15
	.long	.LASF40
	.byte	0x1
	.value	0x202
	.long	0x1ef
	.long	.LLST1
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x202
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x204
	.long	0xe4
	.long	.LLST2
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x205
	.long	0xc3
	.long	.LLST3
	.uleb128 0x19
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x18
	.string	"sum"
	.byte	0x1
	.value	0x207
	.long	0xe4
	.long	.LLST4
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.value	0x208
	.long	0xe4
	.long	.LLST5
	.uleb128 0x1a
	.long	0x24f
	.long	.LBB14
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x209
	.uleb128 0x1b
	.long	0x278
	.long	.LLST6
	.uleb128 0x1b
	.long	0x26c
	.long	.LLST7
	.uleb128 0x1b
	.long	0x260
	.long	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF45
	.byte	0x1
	.value	0x216
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x427
	.uleb128 0x1d
	.string	"vli"
	.byte	0x1
	.value	0x216
	.long	0x1ce
	.long	.LLST9
	.uleb128 0x15
	.long	.LASF23
	.byte	0x1
	.value	0x216
	.long	0xc3
	.long	.LLST10
	.uleb128 0x1e
	.string	"end"
	.byte	0x1
	.value	0x218
	.long	0x1ce
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x219
	.long	0xe4
	.long	.LLST11
	.uleb128 0x19
	.long	.LBB20
	.long	.LBE20-.LBB20
	.uleb128 0x17
	.long	.LASF42
	.byte	0x1
	.value	0x21c
	.long	0xe4
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x285
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ca
	.uleb128 0x1b
	.long	0x292
	.long	.LLST13
	.uleb128 0x1b
	.long	0x29d
	.long	.LLST14
	.uleb128 0x1b
	.long	0x2a9
	.long	.LLST15
	.uleb128 0x20
	.long	0x2b5
	.long	.LLST16
	.uleb128 0x21
	.long	.LBB23
	.long	.LBE23-.LBB23
	.long	0x492
	.uleb128 0x1b
	.long	0x29d
	.long	.LLST17
	.uleb128 0x22
	.long	0x2a9
	.uleb128 0x1b
	.long	0x292
	.long	.LLST18
	.uleb128 0x19
	.long	.LBB24
	.long	.LBE24-.LBB24
	.uleb128 0x23
	.long	0x2b5
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LVL25
	.long	0x2ec
	.long	0x4b3
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x26
	.long	.LVL28
	.long	0x3b8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.value	0x221
	.byte	0x1
	.long	0x523
	.uleb128 0x12
	.string	"a"
	.byte	0x1
	.value	0x221
	.long	0xe4
	.uleb128 0x12
	.string	"b"
	.byte	0x1
	.value	0x221
	.long	0xe4
	.uleb128 0x12
	.string	"r0"
	.byte	0x1
	.value	0x221
	.long	0x1ce
	.uleb128 0x12
	.string	"r1"
	.byte	0x1
	.value	0x222
	.long	0x1ce
	.uleb128 0x12
	.string	"r2"
	.byte	0x1
	.value	0x222
	.long	0x1ce
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.value	0x224
	.long	0xef
	.uleb128 0x27
	.string	"r01"
	.byte	0x1
	.value	0x225
	.long	0xef
	.byte	0
	.uleb128 0x1c
	.long	.LASF46
	.byte	0x1
	.value	0x22b
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x672
	.uleb128 0x15
	.long	.LASF38
	.byte	0x1
	.value	0x22b
	.long	0x1ce
	.long	.LLST19
	.uleb128 0x15
	.long	.LASF39
	.byte	0x1
	.value	0x22b
	.long	0x1ef
	.long	.LLST20
	.uleb128 0x15
	.long	.LASF40
	.byte	0x1
	.value	0x22c
	.long	0x1ef
	.long	.LLST21
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x22c
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"r0"
	.byte	0x1
	.value	0x22e
	.long	0xe4
	.long	.LLST22
	.uleb128 0x18
	.string	"r1"
	.byte	0x1
	.value	0x22f
	.long	0xe4
	.long	.LLST23
	.uleb128 0x18
	.string	"r2"
	.byte	0x1
	.value	0x230
	.long	0xe4
	.long	.LLST24
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x231
	.long	0xc3
	.long	.LLST25
	.uleb128 0x18
	.string	"k"
	.byte	0x1
	.value	0x231
	.long	0xc3
	.long	.LLST26
	.uleb128 0x28
	.long	0x4ca
	.long	.LBB29
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.value	0x234
	.long	0x61b
	.uleb128 0x1b
	.long	0x501
	.long	.LLST27
	.uleb128 0x1b
	.long	0x4f6
	.long	.LLST28
	.uleb128 0x1b
	.long	0x4eb
	.long	.LLST29
	.uleb128 0x1b
	.long	0x4e1
	.long	.LLST30
	.uleb128 0x1b
	.long	0x4d7
	.long	.LLST31
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x20
	.uleb128 0x20
	.long	0x50c
	.long	.LLST32
	.uleb128 0x20
	.long	0x516
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x4ca
	.long	.LBB35
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.value	0x23d
	.uleb128 0x1b
	.long	0x501
	.long	.LLST34
	.uleb128 0x1b
	.long	0x4f6
	.long	.LLST35
	.uleb128 0x1b
	.long	0x4eb
	.long	.LLST36
	.uleb128 0x1b
	.long	0x4e1
	.long	.LLST37
	.uleb128 0x1b
	.long	0x4d7
	.long	.LLST38
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x20
	.long	0x50c
	.long	.LLST39
	.uleb128 0x20
	.long	0x516
	.long	.LLST40
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF51
	.byte	0x1
	.value	0x194
	.long	.LFB0
	.long	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x698
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.value	0x194
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LASF89
	.byte	0x1
	.value	0x198
	.long	0x216
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF49
	.byte	0x1
	.value	0x19c
	.long	0x90
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d8
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x19c
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2c
	.long	.LASF50
	.byte	0x1
	.value	0x1a0
	.long	0x90
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x702
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x1a0
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.long	.LASF52
	.byte	0x1
	.value	0x1a4
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x746
	.uleb128 0x1d
	.string	"vli"
	.byte	0x1
	.value	0x1a4
	.long	0x1ce
	.long	.LLST41
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x1a4
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1a6
	.long	0xc3
	.long	.LLST42
	.byte	0
	.uleb128 0x2c
	.long	.LASF53
	.byte	0x1
	.value	0x1ab
	.long	0xe4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x79d
	.uleb128 0x2d
	.string	"vli"
	.byte	0x1
	.value	0x1ab
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x1ab
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.value	0x1ad
	.long	0xe4
	.long	.LLST43
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1ae
	.long	0xc3
	.long	.LLST44
	.byte	0
	.uleb128 0x1f
	.long	0x2c2
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c1
	.uleb128 0x2e
	.long	0x2d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	0x2df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x2f
	.long	.LASF127
	.byte	0x1
	.value	0x1b9
	.long	0xc3
	.byte	0x1
	.long	0x7f5
	.uleb128 0x12
	.string	"vli"
	.byte	0x1
	.value	0x1b9
	.long	0x1ef
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.value	0x1ba
	.long	0x7f5
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x1bc
	.long	0xc3
	.byte	0
	.uleb128 0x9
	.long	0xc3
	.uleb128 0x2c
	.long	.LASF56
	.byte	0x1
	.value	0x1c1
	.long	0xce
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x890
	.uleb128 0x1d
	.string	"vli"
	.byte	0x1
	.value	0x1c1
	.long	0x1ef
	.long	.LLST45
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.value	0x1c2
	.long	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1c4
	.long	0xe4
	.long	.LLST46
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.value	0x1c5
	.long	0xe4
	.long	.LLST47
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.value	0x1c6
	.long	0xc3
	.uleb128 0x1a
	.long	0x7c1
	.long	.LBB41
	.long	.Ldebug_ranges0+0x58
	.byte	0x1
	.value	0x1c6
	.uleb128 0x1b
	.long	0x7de
	.long	.LLST48
	.uleb128 0x1b
	.long	0x7d2
	.long	.LLST49
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x58
	.uleb128 0x20
	.long	0x7ea
	.long	.LLST50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF59
	.byte	0x1
	.value	0x1d0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e3
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.value	0x1d0
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"src"
	.byte	0x1
	.value	0x1d0
	.long	0x1ef
	.long	.LLST51
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x1d1
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1d3
	.long	0xc3
	.long	.LLST52
	.byte	0
	.uleb128 0x2c
	.long	.LASF61
	.byte	0x1
	.value	0x1d8
	.long	0xd9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x93a
	.uleb128 0x15
	.long	.LASF39
	.byte	0x1
	.value	0x1d8
	.long	0x1ef
	.long	.LLST53
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x1d9
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x1da
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1dc
	.long	0xc3
	.long	.LLST54
	.byte	0
	.uleb128 0x2c
	.long	.LASF62
	.byte	0x1
	.value	0x1e6
	.long	0xe4
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a1
	.uleb128 0x15
	.long	.LASF39
	.byte	0x1
	.value	0x1e6
	.long	0x1ef
	.long	.LLST55
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x1e6
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x1e7
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.value	0x1e9
	.long	0xe4
	.long	.LLST56
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1ea
	.long	0xc3
	.long	.LLST57
	.byte	0
	.uleb128 0x1f
	.long	0x24f
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cd
	.uleb128 0x2e
	.long	0x260
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	0x26c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.long	0x278
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2c
	.long	.LASF64
	.byte	0x1
	.value	0x1f4
	.long	0xe4
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa98
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x1f4
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x1f4
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x1f5
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x1f5
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x1f7
	.long	0xe4
	.long	.LLST58
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x1f8
	.long	0xc3
	.long	.LLST59
	.uleb128 0x19
	.long	.LBB47
	.long	.LBE47-.LBB47
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.value	0x1fa
	.long	0xe4
	.long	.LLST60
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.value	0x1fb
	.long	0xe4
	.long	.LLST61
	.uleb128 0x1a
	.long	0x24f
	.long	.LBB48
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.value	0x1fc
	.uleb128 0x1b
	.long	0x278
	.long	.LLST62
	.uleb128 0x1b
	.long	0x26c
	.long	.LLST63
	.uleb128 0x1b
	.long	0x260
	.long	.LLST64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF66
	.byte	0x1
	.value	0x2ff
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xc18
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x2ff
	.long	0xc18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.value	0x2ff
	.long	0xc18
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.string	"tmp"
	.byte	0x1
	.value	0x301
	.long	0xc1e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x302
	.long	0x90
	.long	.LLST65
	.uleb128 0x30
	.long	.LVL137
	.long	0x890
	.uleb128 0x24
	.long	.LVL138
	.long	0x2ec
	.long	0xb15
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL141
	.long	0x2ec
	.long	0xb35
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL144
	.long	0x2ec
	.long	0xb55
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL147
	.long	0x2ec
	.long	0xb75
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL150
	.long	0x2ec
	.long	0xb95
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL153
	.long	0x2ec
	.long	0xbb5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	.LVL156
	.long	0x9cd
	.uleb128 0x30
	.long	.LVL158
	.long	0x9cd
	.uleb128 0x30
	.long	.LVL160
	.long	0x9cd
	.uleb128 0x30
	.long	.LVL162
	.long	0x9cd
	.uleb128 0x24
	.long	.LVL164
	.long	0x2ec
	.long	0xbfc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.long	curve_secp256r1+4
	.byte	0
	.uleb128 0x30
	.long	.LVL166
	.long	0x8e3
	.uleb128 0x30
	.long	.LVL167
	.long	0x9cd
	.uleb128 0x30
	.long	.LVL169
	.long	0x2140
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x2c
	.uleb128 0xa
	.long	0x2c
	.long	0xc2e
	.uleb128 0xb
	.long	0x19d
	.byte	0x7
	.byte	0
	.uleb128 0x2c
	.long	.LASF68
	.byte	0x1
	.value	0x20e
	.long	0xd9
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc1
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x20e
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x20e
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x20f
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.string	"tmp"
	.byte	0x1
	.value	0x211
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x18
	.string	"neg"
	.byte	0x1
	.value	0x212
	.long	0xe4
	.long	.LLST66
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.value	0x213
	.long	0xe4
	.long	.LLST67
	.uleb128 0x30
	.long	.LVL172
	.long	0x9cd
	.uleb128 0x30
	.long	.LVL174
	.long	0x746
	.uleb128 0x30
	.long	.LVL176
	.long	0x2140
	.byte	0
	.uleb128 0x2a
	.long	.LASF70
	.byte	0x1
	.value	0x246
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xd68
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x246
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x246
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x247
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"mod"
	.byte	0x1
	.value	0x247
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x248
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x24a
	.long	0xe4
	.long	.LLST68
	.uleb128 0x24
	.long	.LVL179
	.long	0x2ec
	.long	0xd55
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL180
	.long	0x8e3
	.uleb128 0x31
	.long	.LVL181
	.long	0x9cd
	.byte	0
	.uleb128 0x2a
	.long	.LASF71
	.byte	0x1
	.value	0x24f
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xdf4
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x24f
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x24f
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x250
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"mod"
	.byte	0x1
	.value	0x250
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x251
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.value	0x253
	.long	0xe4
	.long	.LLST69
	.uleb128 0x30
	.long	.LVL183
	.long	0x9cd
	.uleb128 0x32
	.long	.LVL185
	.long	0x2ec
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF73
	.byte	0x1
	.value	0x258
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xf68
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x258
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.value	0x258
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"mod"
	.byte	0x1
	.value	0x259
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x259
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF74
	.byte	0x1
	.value	0x25b
	.long	0x1a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1e
	.string	"tmp"
	.byte	0x1
	.value	0x25c
	.long	0x1a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x25d
	.long	0xf68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x17
	.long	.LASF75
	.byte	0x1
	.value	0x25e
	.long	0xe4
	.long	.LLST70
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.value	0x25f
	.long	0xce
	.long	.LLST71
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.value	0x261
	.long	0xc3
	.long	.LLST72
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.value	0x262
	.long	0xc3
	.long	.LLST73
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x263
	.long	0xe4
	.long	.LLST74
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x98
	.long	0xf3a
	.uleb128 0x17
	.long	.LASF65
	.byte	0x1
	.value	0x26e
	.long	0xe4
	.long	.LLST75
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x26f
	.long	0xc3
	.long	.LLST76
	.uleb128 0x34
	.long	.Ldebug_ranges0+0xb8
	.long	0xf05
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.value	0x271
	.long	0xe4
	.long	.LLST77
	.byte	0
	.uleb128 0x24
	.long	.LVL210
	.long	0x3b8
	.long	0xf21
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -208
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.long	.LVL211
	.long	0x3b8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -192
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LVL187
	.long	0x7fa
	.uleb128 0x30
	.long	.LVL192
	.long	0x702
	.uleb128 0x30
	.long	.LVL199
	.long	0x890
	.uleb128 0x30
	.long	.LVL214
	.long	0x890
	.uleb128 0x30
	.long	.LVL215
	.long	0x2140
	.byte	0
	.uleb128 0xa
	.long	0x1ce
	.long	0xf78
	.uleb128 0xb
	.long	0x19d
	.byte	0x1
	.byte	0
	.uleb128 0x2a
	.long	.LASF79
	.byte	0x1
	.value	0x27f
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x101e
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x27f
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x27f
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x280
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"mod"
	.byte	0x1
	.value	0x280
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x281
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.long	.LASF67
	.byte	0x1
	.value	0x283
	.long	0x1a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.long	.LVL218
	.long	0x523
	.long	0x100b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL219
	.long	0xdf4
	.uleb128 0x30
	.long	.LVL220
	.long	0x2140
	.byte	0
	.uleb128 0x35
	.long	.LASF80
	.byte	0x1
	.value	0x287
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ac
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x287
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.value	0x287
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.value	0x288
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x288
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF67
	.byte	0x1
	.value	0x28a
	.long	0x1a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x24
	.long	.LVL222
	.long	0x523
	.long	0x10a2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL224
	.long	0x2140
	.byte	0
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x1
	.value	0x28e
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x10fc
	.uleb128 0x15
	.long	.LASF38
	.byte	0x1
	.value	0x28e
	.long	0x1ce
	.long	.LLST78
	.uleb128 0x15
	.long	.LASF39
	.byte	0x1
	.value	0x28f
	.long	0x1ef
	.long	.LLST79
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.value	0x290
	.long	0xfa
	.long	.LLST80
	.uleb128 0x30
	.long	.LVL226
	.long	0x101e
	.byte	0
	.uleb128 0x2a
	.long	.LASF82
	.byte	0x1
	.value	0x2cb
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1313
	.uleb128 0x2d
	.string	"X1"
	.byte	0x1
	.value	0x2cb
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"Y1"
	.byte	0x1
	.value	0x2cb
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"Z1"
	.byte	0x1
	.value	0x2cc
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x2cc
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.string	"t4"
	.byte	0x1
	.value	0x2ce
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1e
	.string	"t5"
	.byte	0x1
	.value	0x2cf
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF23
	.byte	0x1
	.value	0x2d0
	.long	0xc3
	.long	.LLST81
	.uleb128 0x34
	.long	.Ldebug_ranges0+0xd8
	.long	0x11cb
	.uleb128 0x17
	.long	.LASF83
	.byte	0x1
	.value	0x2e0
	.long	0xe4
	.long	.LLST82
	.uleb128 0x24
	.long	.LVL242
	.long	0x2ec
	.long	0x11b4
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x6
	.byte	0
	.uleb128 0x26
	.long	.LVL245
	.long	0x3b8
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LVL230
	.long	0x746
	.uleb128 0x24
	.long	.LVL231
	.long	0x10ac
	.long	0x11f7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL232
	.long	0x101e
	.uleb128 0x24
	.long	.LVL233
	.long	0x10ac
	.long	0x1224
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL234
	.long	0x101e
	.uleb128 0x24
	.long	.LVL235
	.long	0x10ac
	.long	0x124f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL236
	.long	0xcc1
	.uleb128 0x30
	.long	.LVL237
	.long	0xcc1
	.uleb128 0x30
	.long	.LVL238
	.long	0xd68
	.uleb128 0x30
	.long	.LVL239
	.long	0x101e
	.uleb128 0x30
	.long	.LVL240
	.long	0xcc1
	.uleb128 0x30
	.long	.LVL241
	.long	0xcc1
	.uleb128 0x24
	.long	.LVL247
	.long	0x3b8
	.long	0x129f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL248
	.long	0x10ac
	.long	0x12c1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL249
	.long	0xd68
	.uleb128 0x30
	.long	.LVL250
	.long	0xd68
	.uleb128 0x30
	.long	.LVL251
	.long	0xd68
	.uleb128 0x30
	.long	.LVL252
	.long	0x101e
	.uleb128 0x30
	.long	.LVL253
	.long	0xd68
	.uleb128 0x30
	.long	.LVL254
	.long	0x890
	.uleb128 0x30
	.long	.LVL255
	.long	0x890
	.uleb128 0x30
	.long	.LVL256
	.long	0x890
	.uleb128 0x30
	.long	.LVL257
	.long	0x2140
	.byte	0
	.uleb128 0x2a
	.long	.LASF84
	.byte	0x1
	.value	0x2f0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b9
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x2f0
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"x"
	.byte	0x1
	.value	0x2f1
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x2f2
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.string	"_3"
	.byte	0x1
	.value	0x2f4
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF23
	.byte	0x1
	.value	0x2f5
	.long	0xc3
	.long	.LLST83
	.uleb128 0x24
	.long	.LVL261
	.long	0x10ac
	.long	0x1394
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	.LVL263
	.long	0xd68
	.uleb128 0x30
	.long	.LVL264
	.long	0x101e
	.uleb128 0x30
	.long	.LVL265
	.long	0xcc1
	.uleb128 0x30
	.long	.LVL266
	.long	0x2140
	.byte	0
	.uleb128 0x1c
	.long	.LASF85
	.byte	0x1
	.value	0x385
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1564
	.uleb128 0x1d
	.string	"X1"
	.byte	0x1
	.value	0x385
	.long	0x1ce
	.long	.LLST84
	.uleb128 0x1d
	.string	"Y1"
	.byte	0x1
	.value	0x385
	.long	0x1ce
	.long	.LLST85
	.uleb128 0x1d
	.string	"X2"
	.byte	0x1
	.value	0x386
	.long	0x1ce
	.long	.LLST86
	.uleb128 0x2d
	.string	"Y2"
	.byte	0x1
	.value	0x386
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x387
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.string	"t5"
	.byte	0x1
	.value	0x389
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1e
	.string	"t6"
	.byte	0x1
	.value	0x38a
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1e
	.string	"t7"
	.byte	0x1
	.value	0x38b
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF23
	.byte	0x1
	.value	0x38c
	.long	0xc3
	.long	.LLST87
	.uleb128 0x30
	.long	.LVL271
	.long	0xd68
	.uleb128 0x24
	.long	.LVL272
	.long	0x10ac
	.long	0x1483
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL273
	.long	0x101e
	.uleb128 0x30
	.long	.LVL274
	.long	0x101e
	.uleb128 0x30
	.long	.LVL275
	.long	0xcc1
	.uleb128 0x30
	.long	.LVL276
	.long	0xd68
	.uleb128 0x30
	.long	.LVL277
	.long	0xd68
	.uleb128 0x30
	.long	.LVL278
	.long	0x101e
	.uleb128 0x30
	.long	.LVL279
	.long	0xcc1
	.uleb128 0x24
	.long	.LVL280
	.long	0x10ac
	.long	0x14e6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -156
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL281
	.long	0xd68
	.uleb128 0x30
	.long	.LVL285
	.long	0xd68
	.uleb128 0x30
	.long	.LVL286
	.long	0x101e
	.uleb128 0x30
	.long	.LVL287
	.long	0xd68
	.uleb128 0x24
	.long	.LVL288
	.long	0x10ac
	.long	0x152d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL289
	.long	0xd68
	.uleb128 0x30
	.long	.LVL290
	.long	0xd68
	.uleb128 0x30
	.long	.LVL291
	.long	0x101e
	.uleb128 0x30
	.long	.LVL292
	.long	0xd68
	.uleb128 0x30
	.long	.LVL293
	.long	0x890
	.uleb128 0x30
	.long	.LVL294
	.long	0x2140
	.byte	0
	.uleb128 0x2a
	.long	.LASF86
	.byte	0x1
	.value	0x2a1
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1758
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x2a1
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF87
	.byte	0x1
	.value	0x2a1
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"mod"
	.byte	0x1
	.value	0x2a2
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x2a2
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.string	"a"
	.byte	0x1
	.value	0x2a4
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1e
	.string	"b"
	.byte	0x1
	.value	0x2a4
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x1e
	.string	"u"
	.byte	0x1
	.value	0x2a5
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1e
	.string	"v"
	.byte	0x1
	.value	0x2a5
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.value	0x2a6
	.long	0xd9
	.long	.LLST88
	.uleb128 0x30
	.long	.LVL297
	.long	0x746
	.uleb128 0x30
	.long	.LVL298
	.long	0x702
	.uleb128 0x30
	.long	.LVL299
	.long	0x890
	.uleb128 0x30
	.long	.LVL300
	.long	0x890
	.uleb128 0x30
	.long	.LVL301
	.long	0x702
	.uleb128 0x30
	.long	.LVL302
	.long	0x702
	.uleb128 0x30
	.long	.LVL303
	.long	0x8e3
	.uleb128 0x24
	.long	.LVL306
	.long	0x3b8
	.long	0x1659
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.long	.LVL309
	.long	0x3b8
	.long	0x1673
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	.LVL310
	.long	0x285
	.uleb128 0x30
	.long	.LVL312
	.long	0x9cd
	.uleb128 0x24
	.long	.LVL313
	.long	0x3b8
	.long	0x16a1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -184
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	.LVL314
	.long	0x8e3
	.uleb128 0x24
	.long	.LVL315
	.long	0x2ec
	.long	0x16cc
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -180
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL317
	.long	0x9cd
	.uleb128 0x24
	.long	.LVL318
	.long	0x3b8
	.long	0x16ef
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	.LVL319
	.long	0x8e3
	.uleb128 0x24
	.long	.LVL320
	.long	0x2ec
	.long	0x171a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -180
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL321
	.long	0x9cd
	.uleb128 0x24
	.long	.LVL322
	.long	0x285
	.long	0x1745
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -180
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	.LVL325
	.long	0x890
	.uleb128 0x30
	.long	.LVL326
	.long	0x2140
	.byte	0
	.uleb128 0x2b
	.long	.LASF90
	.byte	0x1
	.value	0x2fb
	.long	0xfa
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF91
	.byte	0x1
	.value	0x350
	.long	0xe4
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x17ba
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.value	0x350
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.value	0x350
	.long	0xfa
	.long	.LLST89
	.uleb128 0x32
	.long	.LVL329
	.long	0x746
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF93
	.byte	0x1
	.value	0x354
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x185d
	.uleb128 0x2d
	.string	"X1"
	.byte	0x1
	.value	0x354
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"Y1"
	.byte	0x1
	.value	0x354
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"Z"
	.byte	0x1
	.value	0x354
	.long	0x185d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x355
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.string	"t1"
	.byte	0x1
	.value	0x357
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x24
	.long	.LVL331
	.long	0x10ac
	.long	0x1838
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	.LVL332
	.long	0x101e
	.uleb128 0x30
	.long	.LVL333
	.long	0x101e
	.uleb128 0x30
	.long	.LVL334
	.long	0x101e
	.uleb128 0x30
	.long	.LVL335
	.long	0x2140
	.byte	0
	.uleb128 0x9
	.long	0x1ef
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x1
	.value	0x370
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x199a
	.uleb128 0x2d
	.string	"X1"
	.byte	0x1
	.value	0x370
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"Y1"
	.byte	0x1
	.value	0x370
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"X2"
	.byte	0x1
	.value	0x371
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.string	"Y2"
	.byte	0x1
	.value	0x371
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x372
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.string	"t5"
	.byte	0x1
	.value	0x374
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF23
	.byte	0x1
	.value	0x375
	.long	0xc3
	.long	.LLST90
	.uleb128 0x30
	.long	.LVL339
	.long	0xd68
	.uleb128 0x24
	.long	.LVL340
	.long	0x10ac
	.long	0x1909
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL341
	.long	0x101e
	.uleb128 0x30
	.long	.LVL342
	.long	0x101e
	.uleb128 0x30
	.long	.LVL343
	.long	0xd68
	.uleb128 0x24
	.long	.LVL344
	.long	0x10ac
	.long	0x1948
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL345
	.long	0xd68
	.uleb128 0x30
	.long	.LVL346
	.long	0xd68
	.uleb128 0x30
	.long	.LVL347
	.long	0xd68
	.uleb128 0x30
	.long	.LVL348
	.long	0x101e
	.uleb128 0x30
	.long	.LVL349
	.long	0xd68
	.uleb128 0x30
	.long	.LVL350
	.long	0x101e
	.uleb128 0x30
	.long	.LVL351
	.long	0xd68
	.uleb128 0x30
	.long	.LVL352
	.long	0x890
	.uleb128 0x30
	.long	.LVL353
	.long	0x2140
	.byte	0
	.uleb128 0x11
	.long	.LASF95
	.byte	0x1
	.value	0x35d
	.byte	0x1
	.long	0x1a02
	.uleb128 0x12
	.string	"X1"
	.byte	0x1
	.value	0x35d
	.long	0x1ce
	.uleb128 0x12
	.string	"Y1"
	.byte	0x1
	.value	0x35d
	.long	0x1ce
	.uleb128 0x12
	.string	"X2"
	.byte	0x1
	.value	0x35e
	.long	0x1ce
	.uleb128 0x12
	.string	"Y2"
	.byte	0x1
	.value	0x35e
	.long	0x1ce
	.uleb128 0x10
	.long	.LASF96
	.byte	0x1
	.value	0x35f
	.long	0x185d
	.uleb128 0x10
	.long	.LASF48
	.byte	0x1
	.value	0x360
	.long	0xfa
	.uleb128 0x27
	.string	"z"
	.byte	0x1
	.value	0x362
	.long	0x18d
	.uleb128 0x13
	.long	.LASF23
	.byte	0x1
	.value	0x363
	.long	0xc3
	.byte	0
	.uleb128 0x35
	.long	.LASF97
	.byte	0x1
	.value	0x3a2
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3a
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x3a2
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.value	0x3a2
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF98
	.byte	0x1
	.value	0x3a3
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF96
	.byte	0x1
	.value	0x3a4
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF99
	.byte	0x1
	.value	0x3a5
	.long	0xce
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x3a5
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1e
	.string	"Rx"
	.byte	0x1
	.value	0x3a7
	.long	0x1c3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x1e
	.string	"Ry"
	.byte	0x1
	.value	0x3a8
	.long	0x1c3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1e
	.string	"z"
	.byte	0x1
	.value	0x3a9
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x3aa
	.long	0xce
	.long	.LLST91
	.uleb128 0x18
	.string	"nb"
	.byte	0x1
	.value	0x3ab
	.long	0xe4
	.long	.LLST92
	.uleb128 0x17
	.long	.LASF23
	.byte	0x1
	.value	0x3ac
	.long	0xc3
	.long	.LLST93
	.uleb128 0x36
	.long	0x199a
	.long	.LBB66
	.long	.LBE66-.LBB66
	.byte	0x1
	.value	0x3af
	.long	0x1b68
	.uleb128 0x1b
	.long	0x19df
	.long	.LLST94
	.uleb128 0x1b
	.long	0x19d3
	.long	.LLST95
	.uleb128 0x1b
	.long	0x19c8
	.long	.LLST96
	.uleb128 0x1b
	.long	0x19bd
	.long	.LLST97
	.uleb128 0x1b
	.long	0x19b2
	.long	.LLST98
	.uleb128 0x1b
	.long	0x19a7
	.long	.LLST99
	.uleb128 0x19
	.long	.LBB67
	.long	.LBE67-.LBB67
	.uleb128 0x37
	.long	0x19eb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x20
	.long	0x19f5
	.long	.LLST100
	.uleb128 0x30
	.long	.LVL364
	.long	0x890
	.uleb128 0x30
	.long	.LVL367
	.long	0x702
	.uleb128 0x30
	.long	.LVL371
	.long	0x890
	.uleb128 0x30
	.long	.LVL376
	.long	0x890
	.uleb128 0x30
	.long	.LVL377
	.long	0x17ba
	.uleb128 0x30
	.long	.LVL382
	.long	0x17ba
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LVL361
	.long	0x890
	.uleb128 0x30
	.long	.LVL362
	.long	0x890
	.uleb128 0x30
	.long	.LVL386
	.long	0x2c2
	.uleb128 0x24
	.long	.LVL390
	.long	0x13b9
	.long	0x1ba7
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -236
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -220
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL391
	.long	0x1862
	.uleb128 0x24
	.long	.LVL396
	.long	0x13b9
	.long	0x1bd6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -220
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -216
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -240
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL397
	.long	0xd68
	.uleb128 0x30
	.long	.LVL398
	.long	0x101e
	.uleb128 0x30
	.long	.LVL399
	.long	0x101e
	.uleb128 0x30
	.long	.LVL400
	.long	0x1564
	.uleb128 0x30
	.long	.LVL401
	.long	0x101e
	.uleb128 0x30
	.long	.LVL402
	.long	0x101e
	.uleb128 0x30
	.long	.LVL403
	.long	0x1862
	.uleb128 0x30
	.long	.LVL404
	.long	0x17ba
	.uleb128 0x30
	.long	.LVL405
	.long	0x890
	.uleb128 0x30
	.long	.LVL406
	.long	0x890
	.uleb128 0x30
	.long	.LVL407
	.long	0x2140
	.byte	0
	.uleb128 0xa
	.long	0xe4
	.long	0x1c50
	.uleb128 0xb
	.long	0x19d
	.byte	0x1
	.uleb128 0xb
	.long	0x19d
	.byte	0x7
	.byte	0
	.uleb128 0x2c
	.long	.LASF100
	.byte	0x1
	.value	0x3c2
	.long	0xe4
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d1e
	.uleb128 0x2d
	.string	"k"
	.byte	0x1
	.value	0x3c2
	.long	0x185d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"k0"
	.byte	0x1
	.value	0x3c2
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"k1"
	.byte	0x1
	.value	0x3c3
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x3c3
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.long	.LASF101
	.byte	0x1
	.value	0x3c5
	.long	0xc3
	.long	.LLST101
	.uleb128 0x17
	.long	.LASF25
	.byte	0x1
	.value	0x3c6
	.long	0xce
	.long	.LLST102
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x3c7
	.long	0xe4
	.long	.LLST103
	.uleb128 0x24
	.long	.LVL411
	.long	0x2ec
	.long	0x1cf5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x30
	.long	.LVL412
	.long	0x2c2
	.uleb128 0x26
	.long	.LVL414
	.long	0x2ec
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF102
	.byte	0x1
	.value	0x3cd
	.long	0xe4
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1dc8
	.uleb128 0x16
	.long	.LASF38
	.byte	0x1
	.value	0x3cd
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF103
	.byte	0x1
	.value	0x3ce
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x3cf
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF104
	.byte	0x1
	.value	0x3d1
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x33
	.long	.LASF105
	.byte	0x1
	.value	0x3d2
	.long	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.string	"p2"
	.byte	0x1
	.value	0x3d3
	.long	0xf68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x17
	.long	.LASF41
	.byte	0x1
	.value	0x3d4
	.long	0xe4
	.long	.LLST104
	.uleb128 0x30
	.long	.LVL418
	.long	0x1c50
	.uleb128 0x30
	.long	.LVL420
	.long	0x1a02
	.uleb128 0x30
	.long	.LVL421
	.long	0x176e
	.uleb128 0x30
	.long	.LVL422
	.long	0x2140
	.byte	0
	.uleb128 0x2a
	.long	.LASF106
	.byte	0x1
	.value	0x3dc
	.long	.LFB39
	.long	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e2e
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.value	0x3dc
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF24
	.byte	0x1
	.value	0x3dc
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF108
	.byte	0x1
	.value	0x3dd
	.long	0x1e2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x3df
	.long	0xc3
	.long	.LLST105
	.uleb128 0x29
	.long	.Ldebug_ranges0+0xf0
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.value	0x3e1
	.long	0x2c
	.long	.LLST106
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1e34
	.uleb128 0x9
	.long	0x2c
	.uleb128 0x2a
	.long	.LASF109
	.byte	0x1
	.value	0x3e5
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eac
	.uleb128 0x16
	.long	.LASF108
	.byte	0x1
	.value	0x3e5
	.long	0xc18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF107
	.byte	0x1
	.value	0x3e5
	.long	0x1eac
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF24
	.byte	0x1
	.value	0x3e6
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x3e8
	.long	0xc3
	.long	.LLST107
	.uleb128 0x34
	.long	.Ldebug_ranges0+0x108
	.long	0x1ea2
	.uleb128 0x18
	.string	"b"
	.byte	0x1
	.value	0x3eb
	.long	0x2c
	.long	.LLST108
	.byte	0
	.uleb128 0x30
	.long	.LVL431
	.long	0x702
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1eb2
	.uleb128 0x9
	.long	0xa2
	.uleb128 0x38
	.long	.LASF110
	.byte	0x1
	.value	0x3f0
	.long	0x90
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f47
	.uleb128 0x16
	.long	.LASF111
	.byte	0x1
	.value	0x3f0
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"top"
	.byte	0x1
	.value	0x3f0
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x3f1
	.long	0xc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF112
	.byte	0x1
	.value	0x3f3
	.long	0xe4
	.sleb128 -1
	.uleb128 0x17
	.long	.LASF113
	.byte	0x1
	.value	0x3f4
	.long	0xe4
	.long	.LLST109
	.uleb128 0x17
	.long	.LASF99
	.byte	0x1
	.value	0x3f5
	.long	0xce
	.long	.LLST110
	.uleb128 0x30
	.long	.LVL439
	.long	0x7fa
	.uleb128 0x30
	.long	.LVL446
	.long	0x746
	.uleb128 0x30
	.long	.LVL450
	.long	0xc2e
	.byte	0
	.uleb128 0x38
	.long	.LASF114
	.byte	0x1
	.value	0x406
	.long	0x90
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2000
	.uleb128 0x16
	.long	.LASF92
	.byte	0x1
	.value	0x406
	.long	0x1ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x406
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF104
	.byte	0x1
	.value	0x408
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x33
	.long	.LASF105
	.byte	0x1
	.value	0x409
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.long	.LASF23
	.byte	0x1
	.value	0x40a
	.long	0xc3
	.long	.LLST111
	.uleb128 0x30
	.long	.LVL454
	.long	0x176e
	.uleb128 0x30
	.long	.LVL455
	.long	0x8e3
	.uleb128 0x30
	.long	.LVL456
	.long	0x8e3
	.uleb128 0x24
	.long	.LVL457
	.long	0x10ac
	.long	0x1fed
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -116
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	.LVL459
	.long	0x93a
	.uleb128 0x30
	.long	.LVL461
	.long	0x2140
	.byte	0
	.uleb128 0x2c
	.long	.LASF115
	.byte	0x1
	.value	0x418
	.long	0x90
	.long	.LFB43
	.long	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2076
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.value	0x418
	.long	0x1eac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x418
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	.LASF117
	.byte	0x1
	.value	0x41a
	.long	0x1a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LVL463
	.long	0x1e39
	.uleb128 0x30
	.long	.LVL464
	.long	0x1e39
	.uleb128 0x30
	.long	.LVL465
	.long	0x8e3
	.uleb128 0x30
	.long	.LVL466
	.long	0x1f47
	.uleb128 0x30
	.long	.LVL467
	.long	0x2140
	.byte	0
	.uleb128 0x2c
	.long	.LASF118
	.byte	0x1
	.value	0x425
	.long	0x90
	.long	.LFB44
	.long	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x211d
	.uleb128 0x16
	.long	.LASF103
	.byte	0x1
	.value	0x425
	.long	0x1eac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.value	0x425
	.long	0x23b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x426
	.long	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF119
	.byte	0x1
	.value	0x428
	.long	0x18d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x33
	.long	.LASF117
	.byte	0x1
	.value	0x429
	.long	0x1a4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x30
	.long	.LVL469
	.long	0x1e39
	.uleb128 0x30
	.long	.LVL470
	.long	0x746
	.uleb128 0x30
	.long	.LVL471
	.long	0xc2e
	.uleb128 0x30
	.long	.LVL472
	.long	0x1d1e
	.uleb128 0x30
	.long	.LVL473
	.long	0x1dc8
	.uleb128 0x30
	.long	.LVL474
	.long	0x1dc8
	.uleb128 0x30
	.long	.LVL475
	.long	0x2140
	.byte	0
	.uleb128 0x3a
	.long	.LASF120
	.byte	0x1
	.byte	0x48
	.long	0x188
	.uleb128 0x5
	.byte	0x3
	.long	curve_secp256r1
	.uleb128 0x33
	.long	.LASF121
	.byte	0x1
	.value	0x193
	.long	0x216
	.uleb128 0x5
	.byte	0x3
	.long	g_rng_function
	.uleb128 0x3b
	.long	.LASF128
	.long	.LASF128
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.long	.LVL9
	.value	0x1
	.byte	0x57
	.long	.LVL9
	.long	.LFE14
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.value	0x1
	.byte	0x51
	.long	.LVL2
	.long	.LFE14
	.value	0x2
	.byte	0x91
	.sleb128 -32
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LFE14
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 -21
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x56
	.long	.LVL8
	.long	.LFE14
	.value	0x2
	.byte	0x91
	.sleb128 -21
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL3
	.long	.LVL5
	.value	0x17
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL3
	.long	.LVL5
	.value	0xf
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL10
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL11
	.value	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0xd
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL12
	.long	.LVL14
	.value	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.long	.LVL14
	.long	.LVL20
	.value	0x1
	.byte	0x52
	.long	.LVL20
	.long	.LFE16
	.value	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x52
	.long	.LVL11
	.long	.LFE16
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL10
	.long	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL12
	.long	.LVL17
	.value	0x1
	.byte	0x51
	.long	.LVL19
	.long	.LFE16
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST12:
	.long	.LVL13
	.long	.LVL15
	.value	0x1
	.byte	0x53
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x56
	.long	.LVL16
	.long	.LVL18
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL21
	.long	.LVL25-1
	.value	0x1
	.byte	0x50
	.long	.LVL25-1
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	.LVL31
	.long	.LFE25
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL21
	.long	.LVL24
	.value	0x1
	.byte	0x52
	.long	.LVL24
	.long	.LVL25-1
	.value	0x1
	.byte	0x51
	.long	.LVL25-1
	.long	.LFE25
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL21
	.long	.LVL23
	.value	0x1
	.byte	0x51
	.long	.LVL23
	.long	.LVL32
	.value	0x1
	.byte	0x56
	.long	.LVL32
	.long	.LFE25
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL22
	.long	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LVL33
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST17:
	.long	.LVL29
	.long	.LVL30
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST19:
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST20:
	.long	.LVL34
	.long	.LVL36
	.value	0x1
	.byte	0x52
	.long	.LVL36
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0
	.long	0
.LLST21:
	.long	.LVL34
	.long	.LVL36
	.value	0x1
	.byte	0x51
	.long	.LVL36
	.long	.LFE18
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	0
	.long	0
.LLST22:
	.long	.LVL34
	.long	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL49
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x50
	.long	.LVL50
	.long	.LVL52
	.value	0x1
	.byte	0x52
	.long	.LVL52
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	.LVL56
	.long	.LVL61
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	.LVL61
	.long	.LVL63
	.value	0x1
	.byte	0x51
	.long	.LVL63
	.long	.LVL68
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL72
	.long	.LVL75
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	.LVL78
	.long	.LVL80
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	0
	.long	0
.LLST23:
	.long	.LVL34
	.long	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL49
	.value	0x1
	.byte	0x53
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x52
	.long	.LVL50
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL52
	.long	.LVL64
	.value	0x1
	.byte	0x53
	.long	.LVL64
	.long	.LVL65
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL72
	.long	.LVL76
	.value	0x1
	.byte	0x53
	.long	.LVL76
	.long	.LVL77
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	.LVL77
	.long	.LVL79
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST24:
	.long	.LVL34
	.long	.LVL38
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL38
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL48
	.long	.LVL50
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL50
	.long	.LVL58
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL58
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL72
	.long	.LVL77
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL77
	.long	.LVL80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL38
	.long	.LVL45
	.value	0x2
	.byte	0x91
	.sleb128 -29
	.long	.LVL48
	.long	.LVL52
	.value	0x1
	.byte	0x51
	.long	.LVL58
	.long	.LVL68
	.value	0x1
	.byte	0x57
	.long	.LVL68
	.long	.LVL69
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL69
	.long	.LVL71
	.value	0x3
	.byte	0x77
	.sleb128 1
	.byte	0x9f
	.long	.LVL72
	.long	.LVL73
	.value	0x1
	.byte	0x50
	.long	.LVL73
	.long	.LVL74
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST26:
	.long	.LVL34
	.long	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LVL50
	.value	0x1
	.byte	0x56
	.long	.LVL50
	.long	.LVL51
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52
	.value	0x7
	.byte	0x91
	.sleb128 -31
	.byte	0x94
	.byte	0x1
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x50
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x56
	.long	.LVL54
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 -31
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x50
	.long	.LVL57
	.long	.LVL77
	.value	0x2
	.byte	0x91
	.sleb128 -29
	.long	.LVL78
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 -29
	.long	0
	.long	0
.LLST27:
	.long	.LVL39
	.long	.LVL48
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1430
	.sleb128 0
	.long	0
	.long	0
.LLST28:
	.long	.LVL39
	.long	.LVL48
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1415
	.sleb128 0
	.long	0
	.long	0
.LLST29:
	.long	.LVL39
	.long	.LVL48
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1400
	.sleb128 0
	.long	0
	.long	0
.LLST30:
	.long	.LVL39
	.long	.LVL41
	.value	0xa
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x22
	.long	0
	.long	0
.LLST31:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL45
	.value	0xe
	.byte	0x91
	.sleb128 -29
	.byte	0x94
	.byte	0x1
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.long	0
	.long	0
.LLST32:
	.long	.LVL42
	.long	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST33:
	.long	.LVL42
	.long	.LVL43
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	.LVL44
	.long	.LVL48
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST34:
	.long	.LVL59
	.long	.LVL68
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1430
	.sleb128 0
	.long	0
	.long	0
.LLST35:
	.long	.LVL59
	.long	.LVL68
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1415
	.sleb128 0
	.long	0
	.long	0
.LLST36:
	.long	.LVL59
	.long	.LVL68
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1400
	.sleb128 0
	.long	0
	.long	0
.LLST37:
	.long	.LVL59
	.long	.LVL67
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x22
	.long	.LVL67
	.long	.LVL68
	.value	0x11
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x22
	.long	0
	.long	0
.LLST38:
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x50
	.long	.LVL60
	.long	.LVL68
	.value	0xc
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.long	0
	.long	0
.LLST39:
	.long	.LVL60
	.long	.LVL66
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL66
	.long	.LVL67
	.value	0x21
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68
	.value	0x29
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -64
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1e
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL60
	.long	.LVL62
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST41:
	.long	.LVL84
	.long	.LVL87
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL87
	.long	.LFE4
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST42:
	.long	.LVL84
	.long	.LVL85
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.value	0x1
	.byte	0x50
	.long	.LVL86
	.long	.LVL87
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.long	.LVL87
	.long	.LFE4
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST43:
	.long	.LVL88
	.long	.LVL89
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL89
	.long	.LFE5
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST44:
	.long	.LVL88
	.long	.LVL89
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL89
	.long	.LVL90
	.value	0x1
	.byte	0x50
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x53
	.long	.LVL92
	.long	.LVL93
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST45:
	.long	.LVL95
	.long	.LVL100
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL100
	.long	.LVL102
	.value	0x1
	.byte	0x51
	.long	.LVL102
	.long	.LFE8
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST46:
	.long	.LVL99
	.long	.LVL100
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL102
	.long	.LVL106
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST47:
	.long	.LVL99
	.long	.LVL100
	.value	0x1
	.byte	0x50
	.long	.LVL102
	.long	.LVL105
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST48:
	.long	.LVL96
	.long	.LVL98
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL100
	.long	.LVL102
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST49:
	.long	.LVL96
	.long	.LVL98
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL100
	.long	.LVL102
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST50:
	.long	.LVL97
	.long	.LVL98
	.value	0x1
	.byte	0x52
	.long	.LVL100
	.long	.LVL101
	.value	0x1
	.byte	0x52
	.long	.LVL101
	.long	.LVL102
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL107
	.long	.LVL110
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL110
	.long	.LVL111
	.value	0x1
	.byte	0x53
	.long	.LVL111
	.long	.LFE9
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST52:
	.long	.LVL107
	.long	.LVL108
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL108
	.long	.LVL109
	.value	0x1
	.byte	0x50
	.long	.LVL109
	.long	.LVL110
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.long	.LVL110
	.long	.LFE9
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST53:
	.long	.LVL112
	.long	.LVL115
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL115
	.long	.LFE10
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST54:
	.long	.LVL113
	.long	.LVL114
	.value	0x1
	.byte	0x50
	.long	.LVL114
	.long	.LVL115
	.value	0x1
	.byte	0x52
	.long	.LVL115
	.long	.LVL116
	.value	0x1
	.byte	0x50
	.long	.LVL117
	.long	.LVL118
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST55:
	.long	.LVL119
	.long	.LVL123
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL123
	.long	.LVL125
	.value	0x1
	.byte	0x53
	.long	.LVL125
	.long	.LFE11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST56:
	.long	.LVL119
	.long	.LVL120
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL120
	.long	.LFE11
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST57:
	.long	.LVL120
	.long	.LVL121
	.value	0x1
	.byte	0x50
	.long	.LVL121
	.long	.LVL122
	.value	0x1
	.byte	0x56
	.long	.LVL123
	.long	.LVL124
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST58:
	.long	.LVL127
	.long	.LVL128
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL128
	.long	.LVL130
	.value	0x1
	.byte	0x50
	.long	.LVL135
	.long	.LFE13
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST59:
	.long	.LVL127
	.long	.LVL128
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL128
	.long	.LVL132
	.value	0x2
	.byte	0x91
	.sleb128 -21
	.long	.LVL132
	.long	.LVL133
	.value	0x1
	.byte	0x56
	.long	.LVL135
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 -21
	.long	0
	.long	0
.LLST60:
	.long	.LVL129
	.long	.LVL135
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST61:
	.long	.LVL129
	.long	.LVL131
	.value	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL131
	.long	.LVL134
	.value	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL129
	.long	.LVL131
	.value	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL131
	.long	.LVL133
	.value	0x10
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL129
	.long	.LVL130
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST64:
	.long	.LVL129
	.long	.LVL131
	.value	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL131
	.long	.LVL133
	.value	0x18
	.byte	0x76
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x22
	.byte	0x6
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL139
	.long	.LVL140
	.value	0x1
	.byte	0x50
	.long	.LVL140
	.long	.LVL142
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL142
	.long	.LVL143
	.value	0x1
	.byte	0x50
	.long	.LVL143
	.long	.LVL145
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL145
	.long	.LVL146
	.value	0x1
	.byte	0x50
	.long	.LVL146
	.long	.LVL148
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL148
	.long	.LVL149
	.value	0x1
	.byte	0x50
	.long	.LVL149
	.long	.LVL151
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL151
	.long	.LVL152
	.value	0x1
	.byte	0x50
	.long	.LVL152
	.long	.LVL154
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL154
	.long	.LVL155
	.value	0x1
	.byte	0x50
	.long	.LVL155
	.long	.LVL157
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL157
	.long	.LVL158-1
	.value	0x1
	.byte	0x51
	.long	.LVL158-1
	.long	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL159
	.long	.LVL160-1
	.value	0x1
	.byte	0x51
	.long	.LVL160-1
	.long	.LVL161
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL161
	.long	.LVL162-1
	.value	0x1
	.byte	0x52
	.long	.LVL162-1
	.long	.LVL162
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL162
	.long	.LVL163
	.value	0x8
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL163
	.long	.LVL164
	.value	0x1
	.byte	0x57
	.long	.LVL164
	.long	.LVL165
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL165
	.long	.LVL170
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST66:
	.long	.LVL173
	.long	.LVL174-1
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL174-1
	.long	.LVL177
	.value	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST67:
	.long	.LVL174
	.long	.LVL175
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST68:
	.long	.LVL179
	.long	.LVL180-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST69:
	.long	.LVL183
	.long	.LVL184
	.value	0x1
	.byte	0x50
	.long	.LVL185
	.long	.LFE20
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST70:
	.long	.LVL194
	.long	.LVL196
	.value	0x1
	.byte	0x50
	.long	.LVL196
	.long	.LVL197
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL197
	.long	.LVL198
	.value	0x1
	.byte	0x50
	.long	.LVL201
	.long	.LVL208
	.value	0x1
	.byte	0x56
	.long	.LVL208
	.long	.LVL209
	.value	0x1
	.byte	0x50
	.long	.LVL209
	.long	.LVL216
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST71:
	.long	.LVL188
	.long	.LVL189
	.value	0x1
	.byte	0x52
	.long	.LVL189
	.long	.LVL190
	.value	0x1
	.byte	0x50
	.long	.LVL190
	.long	.LVL211
	.value	0x3
	.byte	0x91
	.sleb128 -180
	.long	.LVL211
	.long	.LVL212
	.value	0x8
	.byte	0x91
	.sleb128 -180
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL212
	.long	.LFE21
	.value	0x3
	.byte	0x91
	.sleb128 -180
	.long	0
	.long	0
.LLST72:
	.long	.LVL191
	.long	.LVL192-1
	.value	0x9
	.byte	0x91
	.sleb128 -180
	.byte	0x94
	.byte	0x2
	.byte	0x71
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.long	.LVL192-1
	.long	.LVL201
	.value	0x9
	.byte	0x91
	.sleb128 -180
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x1b
	.byte	0x9f
	.long	0
	.long	0
.LLST73:
	.long	.LVL191
	.long	.LVL193
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.long	.LVL198
	.long	.LVL200
	.value	0x3
	.byte	0x91
	.sleb128 -192
	.long	0
	.long	0
.LLST74:
	.long	.LVL191
	.long	.LVL194
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL194
	.long	.LVL195
	.value	0x1
	.byte	0x57
	.long	.LVL197
	.long	.LVL198
	.value	0x1
	.byte	0x57
	.long	.LVL198
	.long	.LVL200
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL202
	.long	.LVL213
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST76:
	.long	.LVL202
	.long	.LVL205
	.value	0x3
	.byte	0x91
	.sleb128 -188
	.long	.LVL205
	.long	.LVL206
	.value	0x8
	.byte	0x91
	.sleb128 -188
	.byte	0x94
	.byte	0x1
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL206
	.long	.LVL213
	.value	0x3
	.byte	0x91
	.sleb128 -188
	.long	0
	.long	0
.LLST77:
	.long	.LVL203
	.long	.LVL204
	.value	0x1
	.byte	0x50
	.long	.LVL204
	.long	.LVL207
	.value	0x3
	.byte	0x91
	.sleb128 -184
	.long	0
	.long	0
.LLST78:
	.long	.LVL225
	.long	.LVL226-1
	.value	0x1
	.byte	0x50
	.long	.LVL226-1
	.long	.LFE24
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL225
	.long	.LVL226-1
	.value	0x1
	.byte	0x52
	.long	.LVL226-1
	.long	.LFE24
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL225
	.long	.LVL226-1
	.value	0x1
	.byte	0x51
	.long	.LVL226-1
	.long	.LFE24
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL228
	.long	.LVL229
	.value	0x4
	.byte	0x91
	.sleb128 -120
	.byte	0x6
	.long	0
	.long	0
.LLST82:
	.long	.LVL243
	.long	.LVL244
	.value	0x1
	.byte	0x50
	.long	.LVL244
	.long	.LVL246
	.value	0x3
	.byte	0x91
	.sleb128 -128
	.long	0
	.long	0
.LLST83:
	.long	.LVL259
	.long	.LVL260
	.value	0x1
	.byte	0x50
	.long	.LVL260
	.long	.LVL261-1
	.value	0x2
	.byte	0x71
	.sleb128 0
	.long	.LVL261-1
	.long	.LVL262
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0
	.long	0
.LLST84:
	.long	.LVL267
	.long	.LVL268
	.value	0x1
	.byte	0x50
	.long	.LVL268
	.long	.LFE35
	.value	0x3
	.byte	0x91
	.sleb128 -152
	.long	0
	.long	0
.LLST85:
	.long	.LVL267
	.long	.LVL271-1
	.value	0x1
	.byte	0x52
	.long	.LVL271-1
	.long	.LFE35
	.value	0x3
	.byte	0x91
	.sleb128 -160
	.long	0
	.long	0
.LLST86:
	.long	.LVL267
	.long	.LVL271-1
	.value	0x1
	.byte	0x51
	.long	.LVL271-1
	.long	.LVL282
	.value	0x1
	.byte	0x57
	.long	.LVL282
	.long	.LVL283
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL283
	.long	.LVL284
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL284
	.long	.LVL285-1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL285-1
	.long	.LFE35
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST87:
	.long	.LVL269
	.long	.LVL270
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL270
	.long	.LVL295
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST88:
	.long	.LVL304
	.long	.LVL305
	.value	0x1
	.byte	0x50
	.long	.LVL307
	.long	.LVL308
	.value	0x1
	.byte	0x50
	.long	.LVL311
	.long	.LVL312-1
	.value	0x1
	.byte	0x50
	.long	.LVL316
	.long	.LVL317-1
	.value	0x1
	.byte	0x50
	.long	.LVL323
	.long	.LVL324
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST89:
	.long	.LVL327
	.long	.LVL328
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST90:
	.long	.LVL337
	.long	.LVL338
	.value	0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.long	.LVL338
	.long	.LVL354
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST91:
	.long	.LVL383
	.long	.LVL384
	.value	0x1
	.byte	0x50
	.long	.LVL384
	.long	.LVL391
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	.LVL391
	.long	.LVL392
	.value	0x8
	.byte	0x91
	.sleb128 -216
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL392
	.long	.LVL395
	.value	0x3
	.byte	0x91
	.sleb128 -216
	.long	0
	.long	0
.LLST92:
	.long	.LVL387
	.long	.LVL388
	.value	0x1
	.byte	0x50
	.long	.LVL388
	.long	.LVL389
	.value	0x1
	.byte	0x52
	.long	.LVL393
	.long	.LVL394
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST93:
	.long	.LVL356
	.long	.LVL357
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL357
	.long	.LVL358
	.value	0x1
	.byte	0x50
	.long	.LVL358
	.long	.LVL359
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL359
	.long	.LVL360
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL360
	.long	.LVL361-1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL361-1
	.long	.LFE36
	.value	0x3
	.byte	0x91
	.sleb128 -212
	.long	0
	.long	0
.LLST94:
	.long	.LVL362
	.long	.LVL382
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST95:
	.long	.LVL362
	.long	.LVL368
	.value	0x1
	.byte	0x53
	.long	.LVL368
	.long	.LVL382
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST96:
	.long	.LVL362
	.long	.LVL372
	.value	0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x9f
	.long	.LVL372
	.long	.LVL376-1
	.value	0x1
	.byte	0x50
	.long	.LVL376-1
	.long	.LVL379
	.value	0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x9f
	.long	.LVL379
	.long	.LVL380
	.value	0x1
	.byte	0x50
	.long	.LVL380
	.long	.LVL381
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL381
	.long	.LVL382-1
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL382-1
	.long	.LVL382
	.value	0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL362
	.long	.LVL370
	.value	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x9f
	.long	.LVL370
	.long	.LVL371-1
	.value	0x1
	.byte	0x50
	.long	.LVL371-1
	.long	.LVL380
	.value	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x9f
	.long	.LVL380
	.long	.LVL382-1
	.value	0x1
	.byte	0x50
	.long	.LVL382-1
	.long	.LVL382
	.value	0x4
	.byte	0x91
	.sleb128 -164
	.byte	0x9f
	.long	0
	.long	0
.LLST98:
	.long	.LVL362
	.long	.LVL373
	.value	0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x9f
	.long	.LVL373
	.long	.LVL382
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST99:
	.long	.LVL362
	.long	.LVL369
	.value	0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x9f
	.long	.LVL369
	.long	.LVL371-1
	.value	0x1
	.byte	0x52
	.long	.LVL371-1
	.long	.LVL382
	.value	0x3
	.byte	0x91
	.sleb128 -220
	.long	0
	.long	0
.LLST100:
	.long	.LVL362
	.long	.LVL363
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL363
	.long	.LVL365
	.value	0x1
	.byte	0x56
	.long	.LVL365
	.long	.LVL366
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL366
	.long	.LVL373
	.value	0x1
	.byte	0x56
	.long	.LVL373
	.long	.LVL374
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL374
	.long	.LVL375
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL375
	.long	.LVL376-1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	0
	.long	0
.LLST101:
	.long	.LVL409
	.long	.LVL416
	.value	0x6
	.byte	0x77
	.sleb128 31
	.byte	0x8
	.byte	0x20
	.byte	0x1b
	.byte	0x9f
	.long	0
	.long	0
.LLST102:
	.long	.LVL409
	.long	.LVL410
	.value	0x2
	.byte	0x71
	.sleb128 2
	.long	.LVL410
	.long	.LVL416
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST103:
	.long	.LVL413
	.long	.LVL415
	.value	0x1
	.byte	0x56
	.long	.LVL415
	.long	.LFE37
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST104:
	.long	.LVL418
	.long	.LVL419
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST105:
	.long	.LVL423
	.long	.LVL424
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL424
	.long	.LVL425
	.value	0x1
	.byte	0x52
	.long	.LVL425
	.long	.LVL426
	.value	0x1
	.byte	0x50
	.long	.LVL429
	.long	.LFE39
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST106:
	.long	.LVL426
	.long	.LVL427
	.value	0x1
	.byte	0x51
	.long	.LVL427
	.long	.LVL428
	.value	0x1
	.byte	0x53
	.long	.LVL428
	.long	.LVL429
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST107:
	.long	.LVL431
	.long	.LVL432
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL432
	.long	.LVL433
	.value	0x1
	.byte	0x50
	.long	.LVL433
	.long	.LVL434
	.value	0x1
	.byte	0x52
	.long	.LVL437
	.long	.LFE40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST108:
	.long	.LVL434
	.long	.LVL435
	.value	0x1
	.byte	0x51
	.long	.LVL435
	.long	.LVL436
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST109:
	.long	.LVL444
	.long	.LVL447
	.value	0x7
	.byte	0x8
	.byte	0x40
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL447
	.long	.LVL448
	.value	0x7
	.byte	0x8
	.byte	0x41
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	.LVL449
	.long	.LVL451
	.value	0x7
	.byte	0x8
	.byte	0x40
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST110:
	.long	.LVL440
	.long	.LVL441
	.value	0x1
	.byte	0x50
	.long	.LVL442
	.long	.LVL443
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST111:
	.long	.LVL453
	.long	.LVL460
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x164
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB0
	.long	.LFE0-.LFB0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB14
	.long	.LBE14
	.long	.LBB18
	.long	.LBE18
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LBB29
	.long	.LBE29
	.long	.LBB33
	.long	.LBE33
	.long	.LBB34
	.long	.LBE34
	.long	0
	.long	0
	.long	.LBB35
	.long	.LBE35
	.long	.LBB38
	.long	.LBE38
	.long	0
	.long	0
	.long	.LBB41
	.long	.LBE41
	.long	.LBB45
	.long	.LBE45
	.long	.LBB46
	.long	.LBE46
	.long	0
	.long	0
	.long	.LBB48
	.long	.LBE48
	.long	.LBB52
	.long	.LBE52
	.long	.LBB53
	.long	.LBE53
	.long	0
	.long	0
	.long	.LBB54
	.long	.LBE54
	.long	.LBB58
	.long	.LBE58
	.long	.LBB59
	.long	.LBE59
	.long	0
	.long	0
	.long	.LBB55
	.long	.LBE55
	.long	.LBB56
	.long	.LBE56
	.long	.LBB57
	.long	.LBE57
	.long	0
	.long	0
	.long	.LBB60
	.long	.LBE60
	.long	.LBB61
	.long	.LBE61
	.long	0
	.long	0
	.long	.LBB68
	.long	.LBE68
	.long	.LBB69
	.long	.LBE69
	.long	0
	.long	0
	.long	.LBB70
	.long	.LBE70
	.long	.LBB71
	.long	.LBE71
	.long	.LBB72
	.long	.LBE72
	.long	0
	.long	0
	.long	.LFB14
	.long	.LFE14
	.long	.LFB16
	.long	.LFE16
	.long	.LFB25
	.long	.LFE25
	.long	.LFB18
	.long	.LFE18
	.long	.LFB0
	.long	.LFE0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB30
	.long	.LFE30
	.long	.LFB15
	.long	.LFE15
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB35
	.long	.LFE35
	.long	.LFB26
	.long	.LFE26
	.long	.LFB29
	.long	.LFE29
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB34
	.long	.LFE34
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
	.long	.LFB44
	.long	.LFE44
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"scalar"
.LASF118:
	.string	"uECC_compute_public_key"
.LASF73:
	.string	"uECC_vli_mmod"
.LASF83:
	.string	"l_carry"
.LASF16:
	.string	"uint64_t"
.LASF58:
	.string	"num_digits"
.LASF22:
	.string	"uECC_Curve"
.LASF4:
	.string	"__uint8_t"
.LASF106:
	.string	"uECC_vli_nativeToBytes"
.LASF0:
	.string	"long long unsigned int"
.LASF63:
	.string	"diff"
.LASF115:
	.string	"uECC_valid_public_key"
.LASF3:
	.string	"__int8_t"
.LASF82:
	.string	"double_jacobian_default"
.LASF105:
	.string	"tmp2"
.LASF44:
	.string	"muladd"
.LASF104:
	.string	"tmp1"
.LASF40:
	.string	"right"
.LASF15:
	.string	"int16_t"
.LASF11:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF114:
	.string	"uECC_valid_point"
.LASF93:
	.string	"apply_z"
.LASF57:
	.string	"digit"
.LASF91:
	.string	"EccPoint_isZero"
.LASF55:
	.string	"max_words"
.LASF21:
	.string	"uECC_dword_t"
.LASF35:
	.string	"cond"
.LASF96:
	.string	"initial_Z"
.LASF54:
	.string	"bits"
.LASF9:
	.string	"long int"
.LASF100:
	.string	"regularize_k"
.LASF95:
	.string	"XYcZ_initial_double"
.LASF46:
	.string	"uECC_vli_mult"
.LASF67:
	.string	"product"
.LASF33:
	.string	"p_true"
.LASF124:
	.string	"/home/stone/Documents/pca"
.LASF56:
	.string	"uECC_vli_numBits"
.LASF80:
	.string	"uECC_vli_modMult_fast"
.LASF49:
	.string	"uECC_curve_private_key_size"
.LASF19:
	.string	"cmpresult_t"
.LASF6:
	.string	"__int16_t"
.LASF125:
	.string	"uECC_Curve_t"
.LASF42:
	.string	"temp"
.LASF69:
	.string	"equal"
.LASF90:
	.string	"uECC_secp256r1"
.LASF121:
	.string	"g_rng_function"
.LASF1:
	.string	"unsigned int"
.LASF18:
	.string	"bitcount_t"
.LASF43:
	.string	"vli_modInv_update"
.LASF92:
	.string	"point"
.LASF10:
	.string	"long unsigned int"
.LASF50:
	.string	"uECC_curve_public_key_size"
.LASF72:
	.string	"l_borrow"
.LASF89:
	.string	"uECC_get_rng"
.LASF23:
	.string	"num_words"
.LASF8:
	.string	"short unsigned int"
.LASF119:
	.string	"_private"
.LASF84:
	.string	"x_side_default"
.LASF79:
	.string	"uECC_vli_modMult"
.LASF62:
	.string	"uECC_vli_equal"
.LASF25:
	.string	"num_n_bits"
.LASF101:
	.string	"num_n_words"
.LASF47:
	.string	"rng_function"
.LASF94:
	.string	"XYcZ_add"
.LASF34:
	.string	"p_false"
.LASF111:
	.string	"random"
.LASF81:
	.string	"uECC_vli_modSquare_fast"
.LASF29:
	.string	"sizetype"
.LASF31:
	.string	"long double"
.LASF30:
	.string	"uECC_RNG_Function"
.LASF107:
	.string	"bytes"
.LASF74:
	.string	"mod_multiple"
.LASF127:
	.string	"vli_numDigits"
.LASF28:
	.string	"mmod_fast"
.LASF60:
	.string	"dest"
.LASF76:
	.string	"shift"
.LASF12:
	.string	"__uint64_t"
.LASF52:
	.string	"uECC_vli_clear"
.LASF109:
	.string	"uECC_vli_bytesToNative"
.LASF41:
	.string	"carry"
.LASF27:
	.string	"x_side"
.LASF5:
	.string	"unsigned char"
.LASF113:
	.string	"tries"
.LASF7:
	.string	"short int"
.LASF77:
	.string	"word_shift"
.LASF66:
	.string	"vli_mmod_fast_secp256r1"
.LASF71:
	.string	"uECC_vli_modSub"
.LASF70:
	.string	"uECC_vli_modAdd"
.LASF87:
	.string	"input"
.LASF128:
	.string	"__stack_chk_fail"
.LASF108:
	.string	"native"
.LASF122:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF97:
	.string	"EccPoint_mult"
.LASF20:
	.string	"uECC_word_t"
.LASF45:
	.string	"uECC_vli_rshift1"
.LASF32:
	.string	"char"
.LASF37:
	.string	"uECC_vli_testBit"
.LASF116:
	.string	"public_key"
.LASF123:
	.string	"src/ecc.c"
.LASF75:
	.string	"index"
.LASF36:
	.string	"cond_set"
.LASF120:
	.string	"curve_secp256r1"
.LASF61:
	.string	"uECC_vli_cmp_unsafe"
.LASF86:
	.string	"uECC_vli_modInv"
.LASF68:
	.string	"uECC_vli_cmp"
.LASF88:
	.string	"cmpResult"
.LASF13:
	.string	"int8_t"
.LASF51:
	.string	"uECC_set_rng"
.LASF24:
	.string	"num_bytes"
.LASF65:
	.string	"borrow"
.LASF26:
	.string	"double_jacobian"
.LASF112:
	.string	"mask"
.LASF85:
	.string	"XYcZ_addC"
.LASF53:
	.string	"uECC_vli_isZero"
.LASF59:
	.string	"uECC_vli_set"
.LASF14:
	.string	"uint8_t"
.LASF48:
	.string	"curve"
.LASF102:
	.string	"EccPoint_compute_public_key"
.LASF103:
	.string	"private_key"
.LASF78:
	.string	"bit_shift"
.LASF110:
	.string	"uECC_generate_random_int"
.LASF17:
	.string	"wordcount_t"
.LASF99:
	.string	"num_bits"
.LASF64:
	.string	"uECC_vli_sub"
.LASF39:
	.string	"left"
.LASF38:
	.string	"result"
.LASF126:
	.string	"uECC_vli_add"
.LASF117:
	.string	"_public"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
