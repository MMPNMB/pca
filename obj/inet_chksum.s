	.file	"inet_chksum.c"
	.text
.Ltext0:
	.section	.text.unlikely.lwip_standard_chksum,"ax",@progbits
.LCOLDB0:
	.section	.text.lwip_standard_chksum,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.lwip_standard_chksum
.Ltext_cold0:
	.section	.text.lwip_standard_chksum
	.globl	lwip_standard_chksum
	.type	lwip_standard_chksum, @function
lwip_standard_chksum:
.LFB17:
	.file 1 "kernel/protocols/net/core/inet_chksum.c"
	.loc 1 135 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 135 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 138 0
	movw	$0, -14(%ebp)
.LVL2:
	.loc 1 140 0
	movl	%edx, %ecx
	andl	$1, %ecx
.LVL3:
	.loc 1 143 0
	testl	%ebx, %ebx
	jle	.L2
	testb	%cl, %cl
	je	.L2
.LVL4:
	.loc 1 144 0
	movb	(%edx), %al
	.loc 1 145 0
	decl	%ebx
.LVL5:
	.loc 1 144 0
	incl	%edx
.LVL6:
	movb	%al, -13(%ebp)
.LVL7:
.L2:
	.loc 1 139 0
	xorl	%eax, %eax
.LVL8:
.L3:
	.loc 1 150 0
	cmpl	$1, %ebx
	jle	.L16
	.loc 1 151 0
	addl	$2, %edx
.LVL9:
	movzwl	-2(%edx), %esi
	.loc 1 152 0
	subl	$2, %ebx
.LVL10:
	.loc 1 151 0
	addl	%esi, %eax
.LVL11:
	jmp	.L3
.L16:
	.loc 1 156 0
	jne	.L5
	.loc 1 157 0
	movb	(%edx), %dl
.LVL12:
	movb	%dl, -14(%ebp)
.L5:
	.loc 1 161 0
	movzwl	-14(%ebp), %edx
	addl	%edx, %eax
.LVL13:
	.loc 1 165 0
	movl	%eax, %edx
	movzwl	%ax, %eax
.LVL14:
	shrl	$16, %edx
.LVL15:
	addl	%eax, %edx
.LVL16:
	.loc 1 166 0
	movl	%edx, %eax
	movzwl	%dx, %edx
.LVL17:
	shrl	$16, %eax
.LVL18:
	addl	%edx, %eax
.LVL19:
	.loc 1 169 0
	testl	%ecx, %ecx
	je	.L6
	.loc 1 170 0
	movl	%eax, %edx
	movzbl	%ah, %eax
.LVL20:
	sall	$8, %edx
.LVL21:
	movzwl	%dx, %edx
	orl	%edx, %eax
.LVL22:
.L6:
	.loc 1 174 0
	movl	-12(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L7
	call	__stack_chk_fail
.LVL23:
.L7:
	addl	$16, %esp
	popl	%ebx
	.cfi_restore 3
.LVL24:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	lwip_standard_chksum, .-lwip_standard_chksum
	.section	.text.unlikely.lwip_standard_chksum
.LCOLDE0:
	.section	.text.lwip_standard_chksum
.LHOTE0:
	.section	.text.unlikely.inet_chksum_pseudo,"ax",@progbits
.LCOLDB1:
	.section	.text.inet_chksum_pseudo,"ax",@progbits
.LHOTB1:
	.globl	inet_chksum_pseudo
	.type	inet_chksum_pseudo, @function
inet_chksum_pseudo:
.LFB19:
	.loc 1 313 0
	.cfi_startproc
.LVL25:
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
	.loc 1 313 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edi
	movl	16(%ebp), %esi
	movl	%eax, -28(%ebp)
	.loc 1 317 0
	movl	20(%ebp), %eax
	movl	(%eax), %ebx
.LVL26:
	.loc 1 318 0
	movzwl	%bx, %eax
.LVL27:
	.loc 1 319 0
	shrl	$16, %ebx
.LVL28:
	addl	%eax, %ebx
.LVL29:
	.loc 1 320 0
	movl	24(%ebp), %eax
	movl	(%eax), %eax
.LVL30:
	.loc 1 321 0
	movzwl	%ax, %edx
	.loc 1 322 0
	shrl	$16, %eax
.LVL31:
	.loc 1 321 0
	addl	%edx, %ebx
.LVL32:
	.loc 1 322 0
	addl	%ebx, %eax
.LVL33:
	.loc 1 324 0
	movl	%eax, %edx
	movzwl	%ax, %eax
.LVL34:
	shrl	$16, %edx
.LVL35:
	addl	%eax, %edx
.LVL36:
	.loc 1 325 0
	movl	%edx, %ebx
	movzwl	%dx, %edx
.LVL37:
	shrl	$16, %ebx
.LVL38:
	addl	%edx, %ebx
.LVL39:
.LBB4:
.LBB5:
	.loc 1 264 0
	xorl	%edx, %edx
.LVL40:
.L18:
	.loc 1 267 0
	testl	%edi, %edi
	je	.L29
	.loc 1 270 0
	pushl	%eax
	pushl	%eax
	movzwl	10(%edi), %eax
	movb	%dl, -29(%ebp)
	pushl	%eax
	pushl	4(%edi)
	call	lwip_standard_chksum
.LVL41:
	movzwl	%ax, %eax
	.loc 1 275 0
	addl	$16, %esp
	movb	-29(%ebp), %dl
	.loc 1 270 0
	addl	%eax, %ebx
.LVL42:
	.loc 1 274 0
	movl	%ebx, %eax
	movzwl	%bx, %ebx
.LVL43:
	shrl	$16, %eax
.LVL44:
	addl	%eax, %ebx
.LVL45:
	.loc 1 275 0
	testb	$1, 10(%edi)
	je	.L19
	.loc 1 276 0
	movb	$1, %al
	subl	%edx, %eax
	movb	%al, %dl
.LVL46:
	.loc 1 277 0
	movl	%ebx, %eax
.LVL47:
	movzbl	%bh, %ebx
.LVL48:
	sall	$8, %eax
.LVL49:
	movzwl	%ax, %eax
	orl	%eax, %ebx
.LVL50:
.L19:
	.loc 1 267 0
	movl	(%edi), %edi
.LVL51:
	jmp	.L18
.L29:
	.loc 1 282 0
	testb	%dl, %dl
	je	.L21
	.loc 1 283 0
	movl	%ebx, %edx
.LVL52:
	movzbl	%bh, %ebx
.LVL53:
	sall	$8, %edx
.LVL54:
	movzwl	%dx, %edx
	orl	%edx, %ebx
.LVL55:
.L21:
	.loc 1 286 0
	movzbl	-28(%ebp), %edi
.LVL56:
	subl	$12, %esp
	.loc 1 287 0
	movzwl	%si, %esi
	.loc 1 286 0
	pushl	%edi
	call	lwip_htons
.LVL57:
	.loc 1 287 0
	movl	%esi, (%esp)
	.loc 1 286 0
	movzwl	%ax, %edi
.LVL58:
	.loc 1 287 0
	call	lwip_htons
.LVL59:
	movzwl	%ax, %eax
.LBE5:
.LBE4:
	.loc 1 328 0
	leal	-12(%ebp), %esp
.LBB7:
.LBB6:
	.loc 1 287 0
	addl	%edi, %eax
	addl	%eax, %ebx
.LVL60:
	.loc 1 291 0
	movl	%ebx, %eax
	movzwl	%bx, %ebx
.LVL61:
	shrl	$16, %eax
.LVL62:
	addl	%eax, %ebx
.LVL63:
	.loc 1 292 0
	movl	%ebx, %eax
	shrl	$16, %eax
.LBE6:
.LBE7:
	.loc 1 327 0
	addl	%ebx, %eax
	notl	%eax
	.loc 1 328 0
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
	.size	inet_chksum_pseudo, .-inet_chksum_pseudo
	.section	.text.unlikely.inet_chksum_pseudo
.LCOLDE1:
	.section	.text.inet_chksum_pseudo
.LHOTE1:
	.section	.text.unlikely.ip_chksum_pseudo,"ax",@progbits
.LCOLDB2:
	.section	.text.ip_chksum_pseudo,"ax",@progbits
.LHOTB2:
	.globl	ip_chksum_pseudo
	.type	ip_chksum_pseudo, @function
ip_chksum_pseudo:
.LFB20:
	.loc 1 382 0
	.cfi_startproc
.LVL64:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 393 0
	movzwl	16(%ebp), %eax
	movl	%eax, 16(%ebp)
.LVL65:
	movzbl	12(%ebp), %eax
.LVL66:
	movl	%eax, 12(%ebp)
.LVL67:
	.loc 1 396 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 393 0
	jmp	inet_chksum_pseudo
.LVL68:
	.cfi_endproc
.LFE20:
	.size	ip_chksum_pseudo, .-ip_chksum_pseudo
	.section	.text.unlikely.ip_chksum_pseudo
.LCOLDE2:
	.section	.text.ip_chksum_pseudo
.LHOTE2:
	.section	.text.unlikely.inet_chksum_pseudo_partial,"ax",@progbits
.LCOLDB3:
	.section	.text.inet_chksum_pseudo_partial,"ax",@progbits
.LHOTB3:
	.globl	inet_chksum_pseudo_partial
	.type	inet_chksum_pseudo_partial, @function
inet_chksum_pseudo_partial:
.LFB22:
	.loc 1 459 0
	.cfi_startproc
.LVL69:
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
	.loc 1 459 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %esi
	movl	20(%ebp), %edi
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 463 0
	movl	24(%ebp), %eax
	movl	(%eax), %ecx
.LVL70:
	.loc 1 466 0
	movl	28(%ebp), %eax
	.loc 1 464 0
	movzwl	%cx, %edx
.LVL71:
	.loc 1 465 0
	shrl	$16, %ecx
.LVL72:
	addl	%edx, %ecx
.LVL73:
	.loc 1 466 0
	movl	(%eax), %edx
.LVL74:
	.loc 1 467 0
	movzwl	%dx, %eax
	.loc 1 468 0
	shrl	$16, %edx
.LVL75:
	.loc 1 467 0
	addl	%ecx, %eax
.LVL76:
.LBB10:
.LBB11:
	.loc 1 404 0
	xorl	%ecx, %ecx
.LBE11:
.LBE10:
	.loc 1 468 0
	addl	%edx, %eax
.LVL77:
	.loc 1 470 0
	movl	%eax, %ebx
	movzwl	%ax, %edx
	shrl	$16, %ebx
	addl	%ebx, %edx
.LVL78:
	.loc 1 471 0
	movl	%edx, %eax
	movzwl	%dx, %ebx
	shrl	$16, %eax
	addl	%eax, %ebx
.LVL79:
.L33:
.LBB14:
.LBB12:
	.loc 1 408 0
	testl	%esi, %esi
	je	.L38
	testw	%di, %di
	je	.L38
	.loc 1 411 0
	movw	10(%esi), %dx
.LVL80:
	.loc 1 415 0
	pushl	%eax
	pushl	%eax
	movb	%cl, -37(%ebp)
	cmpw	%di, %dx
	cmova	%edi, %edx
.LVL81:
	movzwl	%dx, %eax
	movl	%edx, -36(%ebp)
	pushl	%eax
	pushl	4(%esi)
	call	lwip_standard_chksum
.LVL82:
	.loc 1 416 0
	movl	-36(%ebp), %edx
	.loc 1 415 0
	movzwl	%ax, %eax
	.loc 1 421 0
	addl	$16, %esp
	.loc 1 415 0
	addl	%eax, %ebx
.LVL83:
	.loc 1 421 0
	movb	-37(%ebp), %cl
	.loc 1 416 0
	subl	%edx, %edi
.LVL84:
	.loc 1 420 0
	movl	%ebx, %edx
	movzwl	%bx, %ebx
.LVL85:
	shrl	$16, %edx
.LVL86:
	addl	%edx, %ebx
.LVL87:
	.loc 1 421 0
	testb	$1, 10(%esi)
	je	.L34
	.loc 1 423 0
	movl	%ebx, %edx
	.loc 1 422 0
	movb	$1, %al
	.loc 1 423 0
	movzbl	%bh, %ebx
.LVL88:
	sall	$8, %edx
.LVL89:
	.loc 1 422 0
	subl	%ecx, %eax
	.loc 1 423 0
	movzwl	%dx, %edx
	.loc 1 422 0
	movb	%al, %cl
.LVL90:
	.loc 1 423 0
	orl	%edx, %ebx
.LVL91:
.L34:
	.loc 1 408 0
	movl	(%esi), %esi
.LVL92:
	jmp	.L33
.LVL93:
.L38:
	.loc 1 428 0
	testb	%cl, %cl
	je	.L37
	.loc 1 429 0
	movl	%ebx, %edx
	movzbl	%bh, %ebx
.LVL94:
	sall	$8, %edx
.LVL95:
	movzwl	%dx, %edx
	orl	%edx, %ebx
.LVL96:
.L37:
	.loc 1 432 0
	movzbl	-28(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	lwip_htons
.LVL97:
	movzwl	%ax, %esi
.LVL98:
	.loc 1 433 0
	movzwl	-32(%ebp), %eax
	movl	%eax, (%esp)
	call	lwip_htons
.LVL99:
	movzwl	%ax, %eax
.LBE12:
.LBE14:
	.loc 1 474 0
	leal	-12(%ebp), %esp
.LBB15:
.LBB13:
	.loc 1 433 0
	addl	%esi, %eax
	addl	%eax, %ebx
.LVL100:
	.loc 1 437 0
	movl	%ebx, %eax
	movzwl	%bx, %ebx
.LVL101:
	shrl	$16, %eax
.LVL102:
	addl	%eax, %ebx
.LVL103:
	.loc 1 438 0
	movl	%ebx, %eax
	shrl	$16, %eax
.LBE13:
.LBE15:
	.loc 1 473 0
	addl	%ebx, %eax
	notl	%eax
	.loc 1 474 0
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
	.size	inet_chksum_pseudo_partial, .-inet_chksum_pseudo_partial
	.section	.text.unlikely.inet_chksum_pseudo_partial
.LCOLDE3:
	.section	.text.inet_chksum_pseudo_partial
.LHOTE3:
	.section	.text.unlikely.ip_chksum_pseudo_partial,"ax",@progbits
.LCOLDB4:
	.section	.text.ip_chksum_pseudo_partial,"ax",@progbits
.LHOTB4:
	.globl	ip_chksum_pseudo_partial
	.type	ip_chksum_pseudo_partial, @function
ip_chksum_pseudo_partial:
.LFB23:
	.loc 1 529 0
	.cfi_startproc
.LVL104:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 540 0
	movzwl	20(%ebp), %eax
	movl	%eax, 20(%ebp)
.LVL105:
	movzwl	16(%ebp), %eax
.LVL106:
	movl	%eax, 16(%ebp)
.LVL107:
	movzbl	12(%ebp), %eax
.LVL108:
	movl	%eax, 12(%ebp)
.LVL109:
	.loc 1 543 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 540 0
	jmp	inet_chksum_pseudo_partial
.LVL110:
	.cfi_endproc
.LFE23:
	.size	ip_chksum_pseudo_partial, .-ip_chksum_pseudo_partial
	.section	.text.unlikely.ip_chksum_pseudo_partial
.LCOLDE4:
	.section	.text.ip_chksum_pseudo_partial
.LHOTE4:
	.section	.text.unlikely.inet_chksum,"ax",@progbits
.LCOLDB5:
	.section	.text.inet_chksum,"ax",@progbits
.LHOTB5:
	.globl	inet_chksum
	.type	inet_chksum, @function
inet_chksum:
.LFB24:
	.loc 1 557 0
	.cfi_startproc
.LVL111:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 558 0
	movzwl	12(%ebp), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	lwip_standard_chksum
.LVL112:
	.loc 1 559 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 558 0
	notl	%eax
	.loc 1 559 0
	ret
	.cfi_endproc
.LFE24:
	.size	inet_chksum, .-inet_chksum
	.section	.text.unlikely.inet_chksum
.LCOLDE5:
	.section	.text.inet_chksum
.LHOTE5:
	.section	.text.unlikely.inet_chksum_pbuf,"ax",@progbits
.LCOLDB6:
	.section	.text.inet_chksum_pbuf,"ax",@progbits
.LHOTB6:
	.globl	inet_chksum_pbuf
	.type	inet_chksum_pbuf, @function
inet_chksum_pbuf:
.LFB25:
	.loc 1 570 0
	.cfi_startproc
.LVL113:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 576 0
	xorl	%edx, %edx
	.loc 1 570 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 575 0
	xorl	%ebx, %ebx
	.loc 1 570 0
	subl	$16, %esp
	.loc 1 570 0
	movl	8(%ebp), %esi
.LVL114:
.L54:
	.loc 1 577 0 discriminator 1
	testl	%esi, %esi
	je	.L65
	.loc 1 578 0
	pushl	%eax
	pushl	%eax
	movzwl	10(%esi), %eax
	movb	%dl, -9(%ebp)
	pushl	%eax
	pushl	4(%esi)
	call	lwip_standard_chksum
.LVL115:
	movzwl	%ax, %eax
	.loc 1 580 0
	addl	$16, %esp
	movb	-9(%ebp), %dl
	.loc 1 578 0
	addl	%eax, %ebx
.LVL116:
	.loc 1 579 0
	movl	%ebx, %eax
	movzwl	%bx, %ebx
.LVL117:
	shrl	$16, %eax
.LVL118:
	addl	%eax, %ebx
.LVL119:
	.loc 1 580 0
	testb	$1, 10(%esi)
	je	.L55
	.loc 1 582 0
	movl	%ebx, %ecx
	.loc 1 581 0
	movb	$1, %al
	.loc 1 582 0
	movzbl	%bh, %ebx
.LVL120:
	sall	$8, %ecx
.LVL121:
	.loc 1 581 0
	subl	%edx, %eax
	.loc 1 582 0
	movzwl	%cx, %ecx
	.loc 1 581 0
	movb	%al, %dl
.LVL122:
	.loc 1 582 0
	orl	%ecx, %ebx
.LVL123:
.L55:
	.loc 1 577 0 discriminator 2
	movl	(%esi), %esi
.LVL124:
	jmp	.L54
.L65:
	.loc 1 586 0
	testb	%dl, %dl
	je	.L57
	.loc 1 587 0
	movl	%ebx, %edx
.LVL125:
	movzbl	%bh, %ebx
.LVL126:
	sall	$8, %edx
.LVL127:
	movzwl	%dx, %edx
	orl	%edx, %ebx
.LVL128:
.L57:
	.loc 1 590 0
	leal	-8(%ebp), %esp
	.loc 1 589 0
	movl	%ebx, %eax
	notl	%eax
	.loc 1 590 0
	popl	%ebx
	.cfi_restore 3
.LVL129:
	popl	%esi
	.cfi_restore 6
.LVL130:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	inet_chksum_pbuf, .-inet_chksum_pbuf
	.section	.text.unlikely.inet_chksum_pbuf
.LCOLDE6:
	.section	.text.inet_chksum_pbuf
.LHOTE6:
	.text
.Letext0:
	.section	.text.unlikely.lwip_standard_chksum
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 5 "./kernel/protocols/net/include/lwip/arch.h"
	.file 6 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 7 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 8 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 9 "./include/aos/log.h"
	.file 10 "./kernel/protocols/net/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6cd
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF48
	.byte	0xc
	.long	.LASF49
	.long	.LASF50
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
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0xca
	.long	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x48
	.long	0x72
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF14
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF15
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x31
	.long	0x48
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x33
	.long	0x56
	.uleb128 0x4
	.long	.LASF18
	.byte	0x4
	.byte	0x34
	.long	0x4f
	.uleb128 0x4
	.long	.LASF19
	.byte	0x4
	.byte	0x35
	.long	0x64
	.uleb128 0x4
	.long	.LASF20
	.byte	0x5
	.byte	0x46
	.long	0x8d
	.uleb128 0x6
	.long	.LASF27
	.byte	0x10
	.byte	0x6
	.byte	0x9d
	.long	0x13e
	.uleb128 0x7
	.long	.LASF21
	.byte	0x6
	.byte	0x9f
	.long	0x13e
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x6
	.byte	0xa2
	.long	0x84
	.byte	0x4
	.uleb128 0x7
	.long	.LASF23
	.byte	0x6
	.byte	0xab
	.long	0xb1
	.byte	0x8
	.uleb128 0x8
	.string	"len"
	.byte	0x6
	.byte	0xae
	.long	0xb1
	.byte	0xa
	.uleb128 0x7
	.long	.LASF24
	.byte	0x6
	.byte	0xb1
	.long	0xa6
	.byte	0xc
	.uleb128 0x7
	.long	.LASF25
	.byte	0x6
	.byte	0xb4
	.long	0xa6
	.byte	0xd
	.uleb128 0x8
	.string	"ref"
	.byte	0x6
	.byte	0xc2
	.long	0xb1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0xdd
	.uleb128 0x9
	.byte	0x4
	.long	0x14a
	.uleb128 0xa
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF26
	.uleb128 0x6
	.long	.LASF28
	.byte	0x4
	.byte	0x7
	.byte	0x35
	.long	0x16b
	.uleb128 0x7
	.long	.LASF29
	.byte	0x7
	.byte	0x36
	.long	0xc7
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF30
	.byte	0x7
	.byte	0x49
	.long	0x152
	.uleb128 0x4
	.long	.LASF31
	.byte	0x8
	.byte	0xe1
	.long	0x16b
	.uleb128 0xb
	.long	.LASF36
	.byte	0x1
	.byte	0x86
	.long	0xb1
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x207
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0x86
	.long	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x86
	.long	0x25
	.long	.LLST0
	.uleb128 0xe
	.string	"pb"
	.byte	0x1
	.byte	0x88
	.long	0x207
	.long	.LLST1
	.uleb128 0xe
	.string	"ps"
	.byte	0x1
	.byte	0x89
	.long	0x212
	.long	.LLST2
	.uleb128 0xf
	.string	"t"
	.byte	0x1
	.byte	0x8a
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0xe
	.string	"sum"
	.byte	0x1
	.byte	0x8b
	.long	0xc7
	.long	.LLST3
	.uleb128 0xe
	.string	"odd"
	.byte	0x1
	.byte	0x8c
	.long	0x25
	.long	.LLST4
	.uleb128 0x10
	.long	.LVL23
	.long	0x6bc
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x20d
	.uleb128 0x11
	.long	0xa6
	.uleb128 0x9
	.byte	0x4
	.long	0x218
	.uleb128 0x11
	.long	0xb1
	.uleb128 0x12
	.long	.LASF40
	.byte	0x1
	.value	0x105
	.long	0xb1
	.byte	0x1
	.long	0x273
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.value	0x105
	.long	0x13e
	.uleb128 0x14
	.long	.LASF33
	.byte	0x1
	.value	0x105
	.long	0xa6
	.uleb128 0x14
	.long	.LASF34
	.byte	0x1
	.value	0x105
	.long	0xb1
	.uleb128 0x13
	.string	"acc"
	.byte	0x1
	.value	0x105
	.long	0xc7
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.value	0x107
	.long	0x13e
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.value	0x108
	.long	0xa6
	.byte	0
	.uleb128 0x17
	.long	.LASF37
	.byte	0x1
	.value	0x137
	.long	0xb1
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x35f
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x137
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF33
	.byte	0x1
	.value	0x137
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.value	0x137
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.value	0x138
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x19
	.long	.LASF38
	.byte	0x1
	.value	0x138
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.string	"acc"
	.byte	0x1
	.value	0x13a
	.long	0xc7
	.long	.LLST5
	.uleb128 0x1b
	.long	.LASF29
	.byte	0x1
	.value	0x13b
	.long	0xc7
	.long	.LLST6
	.uleb128 0x1c
	.long	0x21d
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x147
	.uleb128 0x1d
	.long	0x250
	.long	.LLST7
	.uleb128 0x1d
	.long	0x244
	.long	.LLST8
	.uleb128 0x1d
	.long	0x238
	.long	.LLST9
	.uleb128 0x1d
	.long	0x22e
	.long	.LLST10
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0
	.uleb128 0x1f
	.long	0x25c
	.long	.LLST11
	.uleb128 0x1f
	.long	0x266
	.long	.LLST12
	.uleb128 0x10
	.long	.LVL41
	.long	0x181
	.uleb128 0x10
	.long	.LVL57
	.long	0x6c5
	.uleb128 0x10
	.long	.LVL59
	.long	0x6c5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x365
	.uleb128 0x11
	.long	0x16b
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.value	0x17c
	.long	0xb1
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f2
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x17c
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF33
	.byte	0x1
	.value	0x17c
	.long	0xa6
	.long	.LLST13
	.uleb128 0x20
	.long	.LASF34
	.byte	0x1
	.value	0x17c
	.long	0xb1
	.long	.LLST14
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.value	0x17d
	.long	0x3f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x19
	.long	.LASF38
	.byte	0x1
	.value	0x17d
	.long	0x3f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x21
	.long	.LVL68
	.long	0x273
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x3f8
	.uleb128 0x11
	.long	0x176
	.uleb128 0x12
	.long	.LASF41
	.byte	0x1
	.value	0x190
	.long	0xb1
	.byte	0x1
	.long	0x46b
	.uleb128 0x13
	.string	"p"
	.byte	0x1
	.value	0x190
	.long	0x13e
	.uleb128 0x14
	.long	.LASF33
	.byte	0x1
	.value	0x190
	.long	0xa6
	.uleb128 0x14
	.long	.LASF34
	.byte	0x1
	.value	0x190
	.long	0xb1
	.uleb128 0x14
	.long	.LASF42
	.byte	0x1
	.value	0x191
	.long	0xb1
	.uleb128 0x13
	.string	"acc"
	.byte	0x1
	.value	0x191
	.long	0xc7
	.uleb128 0x15
	.string	"q"
	.byte	0x1
	.value	0x193
	.long	0x13e
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.value	0x194
	.long	0xa6
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.value	0x195
	.long	0xb1
	.byte	0
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.value	0x1c9
	.long	0xb1
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x578
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x1c9
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF33
	.byte	0x1
	.value	0x1c9
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF34
	.byte	0x1
	.value	0x1c9
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF42
	.byte	0x1
	.value	0x1ca
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.value	0x1ca
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.long	.LASF38
	.byte	0x1
	.value	0x1ca
	.long	0x35f
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1a
	.string	"acc"
	.byte	0x1
	.value	0x1cc
	.long	0xc7
	.long	.LLST15
	.uleb128 0x1b
	.long	.LASF29
	.byte	0x1
	.value	0x1cd
	.long	0xc7
	.long	.LLST16
	.uleb128 0x1c
	.long	0x3fd
	.long	.LBB10
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x1d9
	.uleb128 0x1d
	.long	0x43c
	.long	.LLST17
	.uleb128 0x1d
	.long	0x430
	.long	.LLST18
	.uleb128 0x1d
	.long	0x424
	.long	.LLST19
	.uleb128 0x1d
	.long	0x418
	.long	.LLST20
	.uleb128 0x1d
	.long	0x40e
	.long	.LLST21
	.uleb128 0x1e
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1f
	.long	0x448
	.long	.LLST22
	.uleb128 0x1f
	.long	0x452
	.long	.LLST23
	.uleb128 0x1f
	.long	0x45e
	.long	.LLST24
	.uleb128 0x10
	.long	.LVL82
	.long	0x181
	.uleb128 0x10
	.long	.LVL97
	.long	0x6c5
	.uleb128 0x10
	.long	.LVL99
	.long	0x6c5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF45
	.byte	0x1
	.value	0x20f
	.long	0xb1
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x610
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x20f
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF33
	.byte	0x1
	.value	0x20f
	.long	0xa6
	.long	.LLST25
	.uleb128 0x20
	.long	.LASF34
	.byte	0x1
	.value	0x20f
	.long	0xb1
	.long	.LLST26
	.uleb128 0x20
	.long	.LASF42
	.byte	0x1
	.value	0x210
	.long	0xb1
	.long	.LLST27
	.uleb128 0x18
	.string	"src"
	.byte	0x1
	.value	0x210
	.long	0x3f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.long	.LASF38
	.byte	0x1
	.value	0x210
	.long	0x3f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x21
	.long	.LVL110
	.long	0x46b
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF46
	.byte	0x1
	.value	0x22c
	.long	0xb1
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x652
	.uleb128 0x19
	.long	.LASF32
	.byte	0x1
	.value	0x22c
	.long	0x144
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.value	0x22c
	.long	0xb1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.long	.LVL112
	.long	0x181
	.byte	0
	.uleb128 0x17
	.long	.LASF47
	.byte	0x1
	.value	0x239
	.long	0xb1
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b1
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.value	0x239
	.long	0x13e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"acc"
	.byte	0x1
	.value	0x23b
	.long	0xc7
	.long	.LLST28
	.uleb128 0x1a
	.string	"q"
	.byte	0x1
	.value	0x23c
	.long	0x13e
	.long	.LLST29
	.uleb128 0x1b
	.long	.LASF35
	.byte	0x1
	.value	0x23d
	.long	0xa6
	.long	.LLST30
	.uleb128 0x10
	.long	.LVL115
	.long	0x181
	.byte	0
	.uleb128 0x23
	.long	.LASF51
	.byte	0x9
	.byte	0x17
	.long	0x2c
	.uleb128 0x24
	.long	.LASF52
	.long	.LASF52
	.uleb128 0x25
	.long	.LASF53
	.long	.LASF53
	.byte	0xa
	.byte	0x56
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x34
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
	.uleb128 0xf
	.uleb128 0x34
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL5
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	.LVL10
	.long	.LVL11
	.value	0x3
	.byte	0x73
	.sleb128 2
	.byte	0x9f
	.long	.LVL11
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL4
	.value	0x1
	.byte	0x52
	.long	.LVL4
	.long	.LVL6
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL12
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL14
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x52
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x52
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x50
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x52
	.long	.LVL22
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LFE17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL23-1
	.value	0x1
	.byte	0x51
	.long	.LVL23-1
	.long	.LVL23
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL23
	.long	.LFE17
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST5:
	.long	.LVL27
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LVL33
	.value	0x1
	.byte	0x53
	.long	.LVL33
	.long	.LVL34
	.value	0x1
	.byte	0x50
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x52
	.long	.LVL35
	.long	.LVL36
	.value	0xa
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x52
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x53
	.long	.LVL38
	.long	.LVL39
	.value	0x27
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x22
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x40
	.byte	0x25
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL26
	.long	.LVL28
	.value	0x1
	.byte	0x53
	.long	.LVL28
	.long	.LVL30
	.value	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL40
	.value	0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.long	0
	.long	0
.LLST7:
	.long	.LVL39
	.long	.LVL43
	.value	0x1
	.byte	0x53
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	.LVL45
	.long	.LVL48
	.value	0x1
	.byte	0x53
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL50
	.long	.LVL53
	.value	0x1
	.byte	0x53
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x52
	.long	.LVL55
	.long	.LVL58
	.value	0x1
	.byte	0x53
	.long	.LVL58
	.long	.LVL60
	.value	0xa
	.byte	0x77
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x53
	.long	.LVL61
	.long	.LVL62
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL39
	.long	.LVL63
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL39
	.long	.LVL63
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST10:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x57
	.long	.LVL40
	.long	.LVL63
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL39
	.long	.LVL56
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST12:
	.long	.LVL39
	.long	.LVL40
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41-1
	.value	0x1
	.byte	0x52
	.long	.LVL41-1
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 -37
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x50
	.long	.LVL47
	.long	.LVL52
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST13:
	.long	.LVL64
	.long	.LVL67
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL67
	.long	.LVL68-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL64
	.long	.LVL65
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL65
	.long	.LVL66
	.value	0x1
	.byte	0x50
	.long	.LVL66
	.long	.LVL68-1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST15:
	.long	.LVL71
	.long	.LVL73
	.value	0x1
	.byte	0x52
	.long	.LVL73
	.long	.LVL76
	.value	0x1
	.byte	0x51
	.long	.LVL76
	.long	.LVL78
	.value	0x1
	.byte	0x50
	.long	.LVL78
	.long	.LVL79
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST16:
	.long	.LVL70
	.long	.LVL72
	.value	0x1
	.byte	0x51
	.long	.LVL72
	.long	.LVL74
	.value	0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.long	.LVL74
	.long	.LVL75
	.value	0x1
	.byte	0x52
	.long	.LVL75
	.long	.LVL79
	.value	0x3
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.long	0
	.long	0
.LLST17:
	.long	.LVL79
	.long	.LVL85
	.value	0x1
	.byte	0x53
	.long	.LVL85
	.long	.LVL86
	.value	0x1
	.byte	0x52
	.long	.LVL87
	.long	.LVL88
	.value	0x1
	.byte	0x53
	.long	.LVL88
	.long	.LVL89
	.value	0x1
	.byte	0x52
	.long	.LVL91
	.long	.LVL94
	.value	0x1
	.byte	0x53
	.long	.LVL94
	.long	.LVL95
	.value	0x1
	.byte	0x52
	.long	.LVL96
	.long	.LVL98
	.value	0x1
	.byte	0x53
	.long	.LVL98
	.long	.LVL100
	.value	0xa
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL100
	.long	.LVL101
	.value	0x1
	.byte	0x53
	.long	.LVL101
	.long	.LVL102
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL79
	.long	.LVL103
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST19:
	.long	.LVL79
	.long	.LVL103
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST20:
	.long	.LVL79
	.long	.LVL103
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST21:
	.long	.LVL79
	.long	.LVL103
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL79
	.long	.LVL98
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST23:
	.long	.LVL79
	.long	.LVL82-1
	.value	0x1
	.byte	0x51
	.long	.LVL82-1
	.long	.LVL90
	.value	0x2
	.byte	0x91
	.sleb128 -45
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x50
	.long	.LVL91
	.long	.LVL97-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST24:
	.long	.LVL80
	.long	.LVL82-1
	.value	0x1
	.byte	0x52
	.long	.LVL82-1
	.long	.LVL93
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST25:
	.long	.LVL104
	.long	.LVL109
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL109
	.long	.LVL110-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL104
	.long	.LVL107
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL107
	.long	.LVL108
	.value	0x1
	.byte	0x50
	.long	.LVL108
	.long	.LVL110-1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST27:
	.long	.LVL104
	.long	.LVL105
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL105
	.long	.LVL106
	.value	0x1
	.byte	0x50
	.long	.LVL106
	.long	.LVL110-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST28:
	.long	.LVL113
	.long	.LVL114
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL114
	.long	.LVL117
	.value	0x1
	.byte	0x53
	.long	.LVL117
	.long	.LVL118
	.value	0x1
	.byte	0x50
	.long	.LVL119
	.long	.LVL120
	.value	0x1
	.byte	0x53
	.long	.LVL120
	.long	.LVL121
	.value	0x1
	.byte	0x51
	.long	.LVL123
	.long	.LVL126
	.value	0x1
	.byte	0x53
	.long	.LVL126
	.long	.LVL127
	.value	0x1
	.byte	0x52
	.long	.LVL128
	.long	.LVL129
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST29:
	.long	.LVL114
	.long	.LVL130
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST30:
	.long	.LVL113
	.long	.LVL114
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL114
	.long	.LVL115-1
	.value	0x1
	.byte	0x52
	.long	.LVL115-1
	.long	.LVL122
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL122
	.long	.LVL123
	.value	0x1
	.byte	0x50
	.long	.LVL123
	.long	.LVL125
	.value	0x1
	.byte	0x52
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
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
	.long	.LBB10
	.long	.LBE10
	.long	.LBB14
	.long	.LBE14
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"dest"
.LASF5:
	.string	"short int"
.LASF10:
	.string	"sizetype"
.LASF39:
	.string	"ip_chksum_pseudo"
.LASF18:
	.string	"s16_t"
.LASF20:
	.string	"mem_ptr_t"
.LASF43:
	.string	"chklen"
.LASF13:
	.string	"uintptr_t"
.LASF41:
	.string	"inet_cksum_pseudo_partial_base"
.LASF49:
	.string	"src/inet_chksum.c"
.LASF35:
	.string	"swapped"
.LASF14:
	.string	"float"
.LASF36:
	.string	"lwip_standard_chksum"
.LASF1:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF31:
	.string	"ip_addr_t"
.LASF29:
	.string	"addr"
.LASF51:
	.string	"aos_log_level"
.LASF33:
	.string	"proto"
.LASF4:
	.string	"unsigned char"
.LASF2:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF25:
	.string	"flags"
.LASF9:
	.string	"long long unsigned int"
.LASF47:
	.string	"inet_chksum_pbuf"
.LASF24:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF48:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF37:
	.string	"inet_chksum_pseudo"
.LASF53:
	.string	"lwip_htons"
.LASF46:
	.string	"inet_chksum"
.LASF6:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF26:
	.string	"_Bool"
.LASF34:
	.string	"proto_len"
.LASF28:
	.string	"ip4_addr"
.LASF8:
	.string	"long unsigned int"
.LASF12:
	.string	"__uintptr_t"
.LASF30:
	.string	"ip4_addr_t"
.LASF16:
	.string	"u8_t"
.LASF19:
	.string	"u32_t"
.LASF42:
	.string	"chksum_len"
.LASF17:
	.string	"u16_t"
.LASF44:
	.string	"inet_chksum_pseudo_partial"
.LASF32:
	.string	"dataptr"
.LASF23:
	.string	"tot_len"
.LASF50:
	.string	"/home/stone/Documents/pca"
.LASF15:
	.string	"double"
.LASF52:
	.string	"__stack_chk_fail"
.LASF45:
	.string	"ip_chksum_pseudo_partial"
.LASF40:
	.string	"inet_cksum_pseudo_base"
.LASF22:
	.string	"payload"
.LASF21:
	.string	"next"
.LASF27:
	.string	"pbuf"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
