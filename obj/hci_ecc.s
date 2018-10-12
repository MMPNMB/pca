	.file	"hci_ecc.c"
	.text
.Ltext0:
	.section	.text.unlikely.sys_memcpy_swap.constprop.3,"ax",@progbits
.LCOLDB0:
	.section	.text.sys_memcpy_swap.constprop.3,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sys_memcpy_swap.constprop.3
.Ltext_cold0:
	.section	.text.sys_memcpy_swap.constprop.3
	.type	sys_memcpy_swap.constprop.3, @function
sys_memcpy_swap.constprop.3:
.LFB92:
	.file 1 "src/hci_ecc.c"
	.loc 1 1284 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$32, %ecx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 1284 0
	movl	%eax, %esi
.LVL1:
.L2:
	.loc 1 1290 0
	movb	-1(%edx,%ecx), %al
	movl	%ecx, %ebx
	negl	%ebx
	.loc 1 1289 0
	decl	%ecx
.LVL2:
	.loc 1 1290 0
	movb	%al, 32(%esi,%ebx)
	.loc 1 1289 0
	jne	.L2
	.loc 1 1292 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL3:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE92:
	.size	sys_memcpy_swap.constprop.3, .-sys_memcpy_swap.constprop.3
	.section	.text.unlikely.sys_memcpy_swap.constprop.3
.LCOLDE0:
	.section	.text.sys_memcpy_swap.constprop.3
.LHOTE0:
	.section	.text.unlikely.ecc_thread,"ax",@progbits
.LCOLDB1:
	.section	.text.ecc_thread,"ax",@progbits
.LHOTB1:
	.type	ecc_thread, @function
ecc_thread:
.LFB81:
	.loc 1 3380 0
	.cfi_startproc
.LVL4:
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
.L7:
	.loc 1 3384 0
	pushl	%esi
	pushl	%esi
	pushl	$-1
	pushl	$cmd_sem
	call	k_sem_take
.LVL5:
.LBB25:
.LBB26:
	.loc 1 850 0
	movl	$flags, (%esp)
	call	atomic_get
.LVL6:
.LBE26:
.LBE25:
	.loc 1 3385 0
	addl	$16, %esp
	testb	$1, %al
	je	.L8
.L22:
.LBB27:
.LBB28:
.LBB29:
.LBB30:
.LBB31:
	.loc 1 3313 0
	pushl	%ebx
	pushl	$curve_secp256r1
	pushl	$ecc
	pushl	$ecc+32
	call	uECC_make_key
.LVL7:
	.loc 1 3314 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L17
.LBE31:
	.loc 1 3318 0
	pushl	%ecx
	pushl	$32
	pushl	$debug_private_key
	pushl	$ecc
	call	memcmp
.LVL8:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L22
	.loc 1 3319 0
	xorl	%ebx, %ebx
	jmp	.L9
.LVL9:
.L17:
.LBB32:
	.loc 1 3316 0
	movb	$31, %bl
.LVL10:
.L9:
.LBE32:
.LBE30:
.LBE29:
	.loc 1 3330 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$1
	call	bt_buf_get_rx
.LVL11:
	.loc 1 3331 0
	leal	8(%eax), %edi
	.loc 1 3330 0
	movl	%eax, %esi
.LVL12:
	.loc 1 3331 0
	popl	%eax
.LVL13:
	popl	%edx
	pushl	$2
	pushl	%edi
	call	net_buf_simple_add
.LVL14:
	.loc 1 3332 0
	movb	$62, (%eax)
	.loc 1 3333 0
	movb	$66, 1(%eax)
	.loc 1 3334 0
	popl	%ecx
	popl	%eax
.LVL15:
	pushl	$1
	pushl	%edi
	call	net_buf_simple_add
.LVL16:
	.loc 1 3335 0
	movb	$8, (%eax)
	.loc 1 3336 0
	popl	%eax
.LVL17:
	popl	%edx
	pushl	$65
	pushl	%edi
	call	net_buf_simple_add
.LVL18:
	.loc 1 3338 0
	addl	$16, %esp
	testb	%bl, %bl
	.loc 1 3337 0
	movb	%bl, (%eax)
	.loc 1 3336 0
	movl	%eax, %edi
.LVL19:
	leal	1(%eax), %ebx
	.loc 1 3338 0
	je	.L11
	.loc 1 3339 0
	movl	$16, %ecx
	xorl	%eax, %eax
.LVL20:
	movl	%ebx, %edi
.LVL21:
	rep stosl
	jmp	.L12
.LVL22:
.L11:
	.loc 1 3341 0
	movl	$ecc+32, %edx
	movl	%ebx, %eax
.LVL23:
	call	sys_memcpy_swap.constprop.3
.LVL24:
	.loc 1 3342 0
	leal	33(%edi), %eax
	movl	$ecc+64, %edx
	call	sys_memcpy_swap.constprop.3
.LVL25:
.L12:
.LBB33:
.LBB34:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-2
	jmp	.L26
.LVL26:
.L8:
.LBE34:
.LBE33:
.LBE28:
.LBE27:
.LBB35:
.LBB36:
	.loc 1 850 0
	subl	$12, %esp
	pushl	$flags
	call	atomic_get
.LVL27:
.LBE36:
.LBE35:
	.loc 1 3387 0
	addl	$16, %esp
	testb	$2, %al
	je	.L7
.LBB37:
.LBB38:
	.loc 1 3354 0
	pushl	%eax
	pushl	%eax
	pushl	$curve_secp256r1
	pushl	$ecc+32
	call	uECC_valid_public_key
.LVL28:
	.loc 1 3355 0
	addl	$16, %esp
	.loc 1 3357 0
	xorl	%edx, %edx
	.loc 1 3355 0
	testl	%eax, %eax
	js	.L14
	.loc 1 3359 0
	pushl	$curve_secp256r1
	pushl	$ecc+32
	pushl	$ecc
	pushl	$ecc+32
	call	uECC_shared_secret
.LVL29:
	addl	$16, %esp
	movl	%eax, %edx
.LVL30:
.L14:
	movl	%edx, -28(%ebp)
.LVL31:
.LVL32:
	.loc 1 3362 0
	pushl	%edx
	pushl	%edx
	pushl	$-1
	pushl	$1
	call	bt_buf_get_rx
.LVL33:
	.loc 1 3363 0
	popl	%ecx
	leal	8(%eax), %ebx
	.loc 1 3362 0
	movl	%eax, %esi
.LVL34:
	.loc 1 3363 0
	popl	%edi
	pushl	$2
	pushl	%ebx
	call	net_buf_simple_add
.LVL35:
	.loc 1 3364 0
	movb	$62, (%eax)
	.loc 1 3365 0
	movb	$34, 1(%eax)
	.loc 1 3366 0
	popl	%eax
.LVL36:
	popl	%edx
	pushl	$1
	pushl	%ebx
	call	net_buf_simple_add
.LVL37:
	.loc 1 3367 0
	movb	$9, (%eax)
	.loc 1 3368 0
	popl	%ecx
	popl	%edi
	pushl	$33
	pushl	%ebx
	call	net_buf_simple_add
.LVL38:
	.loc 1 3369 0
	movl	-28(%ebp), %edx
	addl	$16, %esp
	leal	1(%eax), %ebx
	testl	%edx, %edx
	jne	.L15
.LVL39:
	.loc 1 3370 0
	movb	$31, (%eax)
	.loc 1 3371 0
	movl	$8, %ecx
	movl	%ebx, %edi
	movl	%edx, %eax
.LVL40:
	rep stosl
	jmp	.L16
.LVL41:
.L15:
	.loc 1 3373 0
	movb	$0, (%eax)
	.loc 1 3374 0
	movl	$ecc+32, %edx
	movl	%ebx, %eax
.LVL42:
	call	sys_memcpy_swap.constprop.3
.LVL43:
.L16:
.LBB39:
.LBB40:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-3
.LVL44:
.L26:
	pushl	$flags
	call	atomic_and
.LVL45:
.LBE40:
.LBE39:
	.loc 1 3377 0
	movl	%esi, (%esp)
	call	bt_recv
.LVL46:
	addl	$16, %esp
	jmp	.L7
.LBE38:
.LBE37:
	.cfi_endproc
.LFE81:
	.size	ecc_thread, .-ecc_thread
	.section	.text.unlikely.ecc_thread
.LCOLDE1:
	.section	.text.ecc_thread
.LHOTE1:
	.section	.text.unlikely.send_cmd_status,"ax",@progbits
.LCOLDB2:
	.section	.text.send_cmd_status,"ax",@progbits
.LHOTB2:
	.type	send_cmd_status, @function
send_cmd_status:
.LFB77:
	.loc 1 3293 0
	.cfi_startproc
.LVL47:
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
	movl	%eax, %esi
	subl	$40, %esp
	.loc 1 3293 0
	movl	%edx, -28(%ebp)
	.loc 1 3298 0
	pushl	$-1
	call	bt_buf_get_cmd_complete
.LVL48:
	movl	%eax, %ebx
.LVL49:
.LBB45:
.LBB46:
	.loc 1 3156 0
	movzwl	14(%eax), %eax
.LVL50:
.LBE46:
.LBE45:
	.loc 1 3300 0
	leal	8(%ebx), %edi
.LBB48:
.LBB47:
	.loc 1 3156 0
	leal	19(%ebx,%eax), %eax
	andl	$-4, %eax
	movb	$1, (%eax)
.LVL51:
.LBE47:
.LBE48:
	.loc 1 3300 0
	popl	%eax
	popl	%edx
	pushl	$2
	pushl	%edi
	call	net_buf_simple_add
.LVL52:
	.loc 1 3301 0
	movb	$15, (%eax)
	.loc 1 3302 0
	movb	$4, 1(%eax)
	.loc 1 3303 0
	popl	%ecx
	popl	%eax
.LVL53:
	pushl	$4
	pushl	%edi
	call	net_buf_simple_add
.LVL54:
	.loc 1 3306 0
	movl	-28(%ebp), %edx
	.loc 1 3305 0
	movw	%si, 2(%eax)
	.loc 1 3304 0
	movb	$1, 1(%eax)
	.loc 1 3306 0
	movb	%dl, (%eax)
	.loc 1 3307 0
	movl	%ebx, (%esp)
	call	bt_recv_prio
.LVL55:
	.loc 1 3308 0
	addl	$16, %esp
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL56:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL57:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE77:
	.size	send_cmd_status, .-send_cmd_status
	.section	.text.unlikely.send_cmd_status
.LCOLDE2:
	.section	.text.send_cmd_status
.LHOTE2:
	.section	.text.unlikely.bt_hci_ecc_send,"ax",@progbits
.LCOLDB3:
	.section	.text.bt_hci_ecc_send,"ax",@progbits
.LHOTB3:
	.globl	bt_hci_ecc_send
	.type	bt_hci_ecc_send, @function
bt_hci_ecc_send:
.LFB85:
	.loc 1 3442 0
	.cfi_startproc
.LVL58:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3442 0
	movl	8(%ebp), %ebx
.LBB68:
.LBB69:
	.loc 1 3160 0
	movzwl	14(%ebx), %eax
	leal	19(%ebx,%eax), %eax
	andl	$-4, %eax
.LBE69:
.LBE68:
	.loc 1 3443 0
	cmpb	$0, (%eax)
	jne	.L30
.LBB70:
	.loc 1 3444 0
	movl	8(%ebx), %eax
.LVL59:
	.loc 1 3445 0
	movw	(%eax), %dx
	cmpw	$8229, %dx
	je	.L31
	cmpw	$8230, %dx
	je	.L32
	cmpw	$8193, %dx
	jne	.L30
.LVL60:
.LBB71:
.LBB72:
	.loc 1 3399 0
	andb	$127, 3(%eax)
	.loc 1 3400 0
	andb	$-2, 4(%eax)
	jmp	.L30
.LVL61:
.L31:
.LBE72:
.LBE71:
	.loc 1 3447 0
	leal	8(%ebx), %eax
.LVL62:
	pushl	%esi
.LVL63:
	pushl	%esi
	pushl	$3
	pushl	%eax
	call	net_buf_simple_pull
.LVL64:
.LBB73:
.LBB74:
	.loc 1 3430 0
	movl	%ebx, (%esp)
	call	net_buf_unref
.LVL65:
.LBB75:
.LBB76:
	.loc 1 850 0
	movl	$flags, (%esp)
	call	atomic_get
.LVL66:
.LBE76:
.LBE75:
	.loc 1 3431 0
	addl	$16, %esp
	testb	$2, %al
	je	.L34
.L36:
	.loc 1 3432 0
	movl	$12, %edx
	jmp	.L35
.L34:
.LVL67:
.LBB77:
.LBB78:
	.loc 1 864 0
	pushl	%ecx
	pushl	%ecx
	pushl	$1
	pushl	$flags
	call	atomic_or
.LVL68:
.LBE78:
.LBE77:
	.loc 1 3433 0
	addl	$16, %esp
	testb	$1, %al
	jne	.L36
	.loc 1 3436 0
	subl	$12, %esp
	pushl	$cmd_sem
	call	k_sem_give
.LVL69:
	addl	$16, %esp
	.loc 1 3437 0
	xorl	%edx, %edx
.LVL70:
.L35:
	.loc 1 3439 0
	movl	$8229, %eax
	call	send_cmd_status
.LVL71:
	jmp	.L37
.LVL72:
.L32:
.LBE74:
.LBE73:
	.loc 1 3451 0
	leal	8(%ebx), %eax
.LVL73:
	pushl	%edx
.LVL74:
	pushl	%edx
	pushl	$3
	pushl	%eax
	call	net_buf_simple_pull
.LVL75:
.LBB79:
.LBB80:
.LBB81:
.LBB82:
	.loc 1 850 0
	movl	$flags, (%esp)
	call	atomic_get
.LVL76:
.LBE82:
.LBE81:
	.loc 1 3406 0
	addl	$16, %esp
	testb	$1, %al
	je	.L38
.L40:
	.loc 1 3407 0
	movl	$12, %esi
	jmp	.L39
.L38:
	.loc 1 3410 0
	cmpw	$63, 12(%ebx)
	.loc 1 3411 0
	movl	$18, %esi
	.loc 1 3410 0
	jbe	.L39
.LVL77:
.LBB83:
.LBB84:
	.loc 1 864 0
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	$flags
	call	atomic_or
.LVL78:
.LBE84:
.LBE83:
	.loc 1 3414 0
	addl	$16, %esp
	testb	$2, %al
	jne	.L40
	.loc 1 3418 0
	movl	8(%ebx), %esi
.LVL79:
	.loc 1 3419 0
	movl	$ecc+32, %eax
	movl	%esi, %edx
	call	sys_memcpy_swap.constprop.3
.LVL80:
	.loc 1 3420 0
	leal	32(%esi), %edx
	movl	$ecc+64, %eax
	.loc 1 3422 0
	xorl	%esi, %esi
.LVL81:
	.loc 1 3420 0
	call	sys_memcpy_swap.constprop.3
.LVL82:
	.loc 1 3421 0
	subl	$12, %esp
	pushl	$cmd_sem
	call	k_sem_give
.LVL83:
	addl	$16, %esp
.LVL84:
.L39:
	.loc 1 3424 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL85:
	.loc 1 3425 0
	movl	%esi, %eax
	movzbl	%al, %edx
	movl	$8230, %eax
	call	send_cmd_status
.LVL86:
	addl	$16, %esp
	jmp	.L37
.LVL87:
.L30:
.LBE80:
.LBE79:
.LBE70:
	.loc 1 3461 0
	movl	bt_dev+200, %eax
	movl	%ebx, 8(%ebp)
	movl	12(%eax), %eax
	.loc 1 3462 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL88:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3461 0
	jmp	*%eax
.LVL89:
.L37:
	.cfi_restore_state
	.loc 1 3462 0
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE85:
	.size	bt_hci_ecc_send, .-bt_hci_ecc_send
	.section	.text.unlikely.bt_hci_ecc_send
.LCOLDE3:
	.section	.text.bt_hci_ecc_send
.LHOTE3:
	.section	.text.unlikely.default_CSPRNG,"ax",@progbits
.LCOLDB4:
	.section	.text.default_CSPRNG,"ax",@progbits
.LHOTB4:
	.globl	default_CSPRNG
	.type	default_CSPRNG, @function
default_CSPRNG:
.LFB86:
	.loc 1 3464 0
	.cfi_startproc
.LVL90:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 3465 0
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	bt_rand
.LVL91:
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
	.loc 1 3466 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3465 0
	movzbl	%al, %eax
	.loc 1 3466 0
	ret
	.cfi_endproc
.LFE86:
	.size	default_CSPRNG, .-default_CSPRNG
	.section	.text.unlikely.default_CSPRNG
.LCOLDE4:
	.section	.text.default_CSPRNG
.LHOTE4:
	.section	.text.unlikely.bt_hci_ecc_init,"ax",@progbits
.LCOLDB5:
	.section	.text.bt_hci_ecc_init,"ax",@progbits
.LHOTB5:
	.globl	bt_hci_ecc_init
	.type	bt_hci_ecc_init, @function
bt_hci_ecc_init:
.LFB87:
	.loc 1 3468 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 3469 0
	pushl	$1
	pushl	$0
	pushl	$cmd_sem
	call	k_sem_init
.LVL92:
	.loc 1 3470 0
	popl	%eax
	popl	%edx
	pushl	$0
	pushl	$0
	pushl	$41
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$ecc_thread
	pushl	$1536
	pushl	$ecc_thread_stack
	pushl	$ecc_thread_data
	call	k_thread_create
.LVL93:
	.loc 1 3478 0
	addl	$48, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE87:
	.size	bt_hci_ecc_init, .-bt_hci_ecc_init
	.section	.text.unlikely.bt_hci_ecc_init
.LCOLDE5:
	.section	.text.bt_hci_ecc_init
.LHOTE5:
	.section	.bss.ecc,"aw",@nobits
	.align 32
	.type	ecc, @object
	.size	ecc, 96
ecc:
	.zero	96
	.section	._k_sem.static.cmd_sem,"aw",@progbits
	.align 4
	.type	cmd_sem, @object
	.size	cmd_sem, 12
cmd_sem:
	.zero	12
	.section	.bss.flags,"aw",@nobits
	.align 4
	.type	flags, @object
	.size	flags, 4
flags:
	.zero	4
	.section	.rodata.debug_private_key,"a",@progbits
	.align 32
	.type	debug_private_key, @object
	.size	debug_private_key, 32
debug_private_key:
	.long	-851699011
	.long	1486469286
	.long	-348080231
	.long	1258250363
	.long	-770687152
	.long	1959375843
	.long	-1547346120
	.long	1061811924
	.section	.bss.ecc_thread_stack,"aw",@nobits
	.align 32
	.type	ecc_thread_stack, @object
	.size	ecc_thread_stack, 1536
ecc_thread_stack:
	.zero	1536
	.section	.bss.ecc_thread_data,"aw",@nobits
	.align 4
	.type	ecc_thread_data, @object
	.size	ecc_thread_data, 4
ecc_thread_data:
	.zero	4
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
	.section	.text.unlikely.sys_memcpy_swap.constprop.3
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1649
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF211
	.byte	0xc
	.long	.LASF212
	.long	.LASF213
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF2
	.byte	0x1
	.byte	0x1
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.long	.LASF3
	.byte	0x1
	.byte	0x3
	.long	0x49
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF7
	.byte	0x1
	.byte	0x6
	.long	0x69
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
	.byte	0x15
	.long	0x3e
	.uleb128 0x2
	.long	.LASF14
	.byte	0x1
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.long	.LASF15
	.byte	0x1
	.byte	0x30
	.long	0x85
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF16
	.uleb128 0x2
	.long	.LASF17
	.byte	0x1
	.byte	0x3a
	.long	0x37
	.uleb128 0x2
	.long	.LASF18
	.byte	0x1
	.byte	0x3b
	.long	0x50
	.uleb128 0x2
	.long	.LASF19
	.byte	0x1
	.byte	0x3c
	.long	0x85
	.uleb128 0x2
	.long	.LASF20
	.byte	0x1
	.byte	0x3d
	.long	0x77
	.uleb128 0x5
	.long	.LASF24
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.long	0x104
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x3f
	.long	0x104
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xeb
	.uleb128 0x2
	.long	.LASF21
	.byte	0x1
	.byte	0x41
	.long	0xeb
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0xd7
	.long	0x134
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0xd8
	.long	0x14d
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0xd9
	.long	0x14d
	.byte	0
	.uleb128 0x5
	.long	.LASF25
	.byte	0x8
	.byte	0x1
	.byte	0xd6
	.long	0x14d
	.uleb128 0xa
	.long	0x115
	.byte	0
	.uleb128 0xa
	.long	0x153
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x134
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0xdb
	.long	0x172
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0xdc
	.long	0x14d
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0xdd
	.long	0x14d
	.byte	0
	.uleb128 0x2
	.long	.LASF28
	.byte	0x1
	.byte	0xe0
	.long	0x134
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF29
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF30
	.uleb128 0x7
	.byte	0x4
	.long	0x186
	.uleb128 0xc
	.byte	0x4
	.byte	0x1
	.value	0x1cf
	.long	0x1aa
	.uleb128 0xd
	.string	"hdl"
	.byte	0x1
	.value	0x1d0
	.long	0x184
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.value	0x1d1
	.long	0x193
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.value	0x1d2
	.long	0x1aa
	.uleb128 0xe
	.long	.LASF33
	.byte	0x1
	.value	0x1d4
	.long	0x1aa
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.value	0x1d5
	.long	0x1aa
	.uleb128 0x7
	.byte	0x4
	.long	0x1e0
	.uleb128 0xf
	.long	0x186
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1
	.value	0x2eb
	.long	0xa2
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.value	0x2f2
	.long	0x1ce
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.value	0x2f3
	.long	0x1c2
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.value	0x2f4
	.long	0x1b6
	.uleb128 0xe
	.long	.LASF39
	.byte	0x1
	.value	0x2f5
	.long	0x1e5
	.uleb128 0x10
	.long	.LASF40
	.byte	0xc
	.byte	0x1
	.value	0x301
	.long	0x249
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.value	0x302
	.long	0x249
	.byte	0
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.value	0x303
	.long	0x172
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1f1
	.uleb128 0x10
	.long	.LASF43
	.byte	0xc
	.byte	0x1
	.value	0x310
	.long	0x26a
	.uleb128 0x11
	.long	.LASF41
	.byte	0x1
	.value	0x311
	.long	0x221
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF44
	.byte	0xc
	.byte	0x1
	.value	0x313
	.long	0x292
	.uleb128 0xd
	.string	"sem"
	.byte	0x1
	.value	0x314
	.long	0x1fd
	.byte	0
	.uleb128 0x11
	.long	.LASF42
	.byte	0x1
	.value	0x315
	.long	0x172
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF45
	.byte	0x4
	.byte	0x1
	.value	0x330
	.long	0x2ad
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.value	0x331
	.long	0x209
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x1
	.value	0x333
	.long	0x215
	.uleb128 0xe
	.long	.LASF48
	.byte	0x1
	.value	0x341
	.long	0x7e
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.value	0x342
	.long	0x2b9
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.value	0x375
	.long	0x2dd
	.uleb128 0x7
	.byte	0x4
	.long	0x2e3
	.uleb128 0x12
	.long	0x2ee
	.uleb128 0x13
	.long	0x2ee
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2f4
	.uleb128 0x10
	.long	.LASF51
	.byte	0xc
	.byte	0x1
	.value	0x376
	.long	0x329
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.value	0x377
	.long	0x184
	.byte	0
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.value	0x378
	.long	0x2d1
	.byte	0x4
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.value	0x379
	.long	0x329
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x2b9
	.long	0x339
	.uleb128 0x15
	.long	0x17d
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF60
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0x386
	.long	0x369
	.uleb128 0x17
	.long	.LASF55
	.byte	0
	.uleb128 0x17
	.long	.LASF56
	.byte	0x1
	.uleb128 0x17
	.long	.LASF57
	.byte	0x2
	.uleb128 0x17
	.long	.LASF58
	.byte	0x3
	.uleb128 0x17
	.long	.LASF59
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	.LASF61
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0x38d
	.long	0x399
	.uleb128 0x17
	.long	.LASF62
	.byte	0
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.uleb128 0x17
	.long	.LASF64
	.byte	0x2
	.uleb128 0x17
	.long	.LASF65
	.byte	0x3
	.uleb128 0x17
	.long	.LASF66
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF67
	.byte	0x1
	.value	0x51b
	.long	0x8c
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.value	0x51c
	.long	0x97
	.uleb128 0xe
	.long	.LASF69
	.byte	0x1
	.value	0x51e
	.long	0x85
	.uleb128 0xe
	.long	.LASF70
	.byte	0x1
	.value	0x521
	.long	0x3c9
	.uleb128 0x7
	.byte	0x4
	.long	0x457
	.uleb128 0x10
	.long	.LASF71
	.byte	0xb0
	.byte	0x1
	.value	0x522
	.long	0x457
	.uleb128 0x11
	.long	.LASF72
	.byte	0x1
	.value	0x523
	.long	0x399
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0x1
	.value	0x524
	.long	0x399
	.byte	0x1
	.uleb128 0x11
	.long	.LASF74
	.byte	0x1
	.value	0x525
	.long	0x3a5
	.byte	0x2
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.value	0x526
	.long	0x45c
	.byte	0x4
	.uleb128 0xd
	.string	"n"
	.byte	0x1
	.value	0x527
	.long	0x45c
	.byte	0x24
	.uleb128 0xd
	.string	"G"
	.byte	0x1
	.value	0x528
	.long	0x46c
	.byte	0x44
	.uleb128 0xd
	.string	"b"
	.byte	0x1
	.value	0x529
	.long	0x45c
	.byte	0x84
	.uleb128 0x11
	.long	.LASF75
	.byte	0x1
	.value	0x52a
	.long	0x49c
	.byte	0xa4
	.uleb128 0x11
	.long	.LASF76
	.byte	0x1
	.value	0x52c
	.long	0x4c2
	.byte	0xa8
	.uleb128 0x11
	.long	.LASF77
	.byte	0x1
	.value	0x52d
	.long	0x4d8
	.byte	0xac
	.byte	0
	.uleb128 0xf
	.long	0x3cf
	.uleb128 0x14
	.long	0x3b1
	.long	0x46c
	.uleb128 0x15
	.long	0x17d
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.long	0x3b1
	.long	0x47c
	.uleb128 0x15
	.long	0x17d
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.long	0x496
	.uleb128 0x13
	.long	0x496
	.uleb128 0x13
	.long	0x496
	.uleb128 0x13
	.long	0x496
	.uleb128 0x13
	.long	0x3bd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3b1
	.uleb128 0x7
	.byte	0x4
	.long	0x47c
	.uleb128 0x12
	.long	0x4b7
	.uleb128 0x13
	.long	0x496
	.uleb128 0x13
	.long	0x4b7
	.uleb128 0x13
	.long	0x3bd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x4bd
	.uleb128 0xf
	.long	0x3b1
	.uleb128 0x7
	.byte	0x4
	.long	0x4a2
	.uleb128 0x12
	.long	0x4d8
	.uleb128 0x13
	.long	0x496
	.uleb128 0x13
	.long	0x496
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x4c8
	.uleb128 0x10
	.long	.LASF78
	.byte	0x8
	.byte	0x1
	.value	0x59f
	.long	0x520
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.value	0x5a0
	.long	0x520
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0x5a1
	.long	0xca
	.byte	0x4
	.uleb128 0x11
	.long	.LASF80
	.byte	0x1
	.value	0x5a2
	.long	0xca
	.byte	0x6
	.uleb128 0x11
	.long	.LASF81
	.byte	0x1
	.value	0x5a3
	.long	0x526
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xbf
	.uleb128 0x14
	.long	0xbf
	.long	0x535
	.uleb128 0x18
	.long	0x17d
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.byte	0x1
	.value	0x5d8
	.long	0x557
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.value	0x5d9
	.long	0x10a
	.uleb128 0x1a
	.long	.LASF83
	.byte	0x1
	.value	0x5da
	.long	0x5a5
	.byte	0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x10
	.byte	0x1
	.value	0x5d7
	.long	0x5a5
	.uleb128 0xa
	.long	0x535
	.byte	0
	.uleb128 0xd
	.string	"ref"
	.byte	0x1
	.value	0x5dc
	.long	0xbf
	.byte	0x4
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.value	0x5dd
	.long	0xbf
	.byte	0x5
	.uleb128 0x11
	.long	.LASF85
	.byte	0x1
	.value	0x5de
	.long	0xbf
	.byte	0x6
	.uleb128 0xa
	.long	0x5dc
	.byte	0x8
	.uleb128 0x11
	.long	.LASF81
	.byte	0x1
	.value	0x5e7
	.long	0x5f5
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x557
	.uleb128 0xc
	.byte	0x8
	.byte	0x1
	.value	0x5e0
	.long	0x5dc
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.value	0x5e1
	.long	0x520
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0x5e2
	.long	0xca
	.byte	0x4
	.uleb128 0x11
	.long	.LASF80
	.byte	0x1
	.value	0x5e3
	.long	0xca
	.byte	0x6
	.byte	0
	.uleb128 0x19
	.byte	0x8
	.byte	0x1
	.value	0x5df
	.long	0x5f5
	.uleb128 0x1b
	.long	0x5ab
	.uleb128 0x1c
	.string	"b"
	.byte	0x1
	.value	0x5e5
	.long	0x4de
	.byte	0
	.uleb128 0x14
	.long	0xbf
	.long	0x604
	.uleb128 0x18
	.long	0x17d
	.byte	0
	.uleb128 0xc
	.byte	0x6
	.byte	0x1
	.value	0x618
	.long	0x61b
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0x619
	.long	0x61b
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xbf
	.long	0x62b
	.uleb128 0x15
	.long	0x17d
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	.LASF86
	.byte	0x1
	.value	0x61a
	.long	0x604
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.value	0x61b
	.long	0x659
	.uleb128 0x11
	.long	.LASF87
	.byte	0x1
	.value	0x61c
	.long	0xbf
	.byte	0
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x61d
	.long	0x62b
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF88
	.byte	0x1
	.value	0x61e
	.long	0x637
	.uleb128 0x10
	.long	.LASF89
	.byte	0x2
	.byte	0x1
	.value	0x647
	.long	0x68d
	.uleb128 0xd
	.string	"evt"
	.byte	0x1
	.value	0x648
	.long	0xbf
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0x649
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF90
	.byte	0x3
	.byte	0x1
	.value	0x653
	.long	0x6b5
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.value	0x654
	.long	0xca
	.byte	0
	.uleb128 0x11
	.long	.LASF92
	.byte	0x1
	.value	0x655
	.long	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	0xbf
	.long	0x6c5
	.uleb128 0x15
	.long	0x17d
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.long	0xbf
	.long	0x6d5
	.uleb128 0x15
	.long	0x17d
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.long	.LASF93
	.byte	0x8
	.byte	0x1
	.value	0x7bc
	.long	0x6f0
	.uleb128 0x11
	.long	.LASF94
	.byte	0x1
	.value	0x7bd
	.long	0x6b5
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF95
	.byte	0x40
	.byte	0x1
	.value	0x8c4
	.long	0x70b
	.uleb128 0xd
	.string	"key"
	.byte	0x1
	.value	0x8c5
	.long	0x6c5
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF96
	.byte	0x4
	.byte	0x1
	.value	0xa47
	.long	0x740
	.uleb128 0x11
	.long	.LASF97
	.byte	0x1
	.value	0xa48
	.long	0xbf
	.byte	0
	.uleb128 0x11
	.long	.LASF98
	.byte	0x1
	.value	0xa49
	.long	0xbf
	.byte	0x1
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.value	0xa4a
	.long	0xca
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF99
	.byte	0x1
	.byte	0x1
	.value	0xac7
	.long	0x75b
	.uleb128 0x11
	.long	.LASF100
	.byte	0x1
	.value	0xac8
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF101
	.byte	0x41
	.byte	0x1
	.value	0xb14
	.long	0x783
	.uleb128 0x11
	.long	.LASF97
	.byte	0x1
	.value	0xb15
	.long	0xbf
	.byte	0
	.uleb128 0xd
	.string	"key"
	.byte	0x1
	.value	0xb16
	.long	0x6c5
	.byte	0x1
	.byte	0
	.uleb128 0x10
	.long	.LASF102
	.byte	0x21
	.byte	0x1
	.value	0xb1a
	.long	0x7ab
	.uleb128 0x11
	.long	.LASF97
	.byte	0x1
	.value	0xb1b
	.long	0xbf
	.byte	0
	.uleb128 0x11
	.long	.LASF103
	.byte	0x1
	.value	0xb1c
	.long	0x7ab
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0xbf
	.long	0x7bb
	.uleb128 0x15
	.long	0x17d
	.byte	0x1f
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF104
	.uleb128 0x16
	.long	.LASF105
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc4a
	.long	0x7ec
	.uleb128 0x17
	.long	.LASF106
	.byte	0
	.uleb128 0x17
	.long	.LASF107
	.byte	0x1
	.uleb128 0x17
	.long	.LASF108
	.byte	0x2
	.uleb128 0x17
	.long	.LASF109
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF110
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc6d
	.long	0x834
	.uleb128 0x17
	.long	.LASF111
	.byte	0
	.uleb128 0x17
	.long	.LASF112
	.byte	0x1
	.uleb128 0x17
	.long	.LASF113
	.byte	0x2
	.uleb128 0x17
	.long	.LASF114
	.byte	0x3
	.uleb128 0x17
	.long	.LASF115
	.byte	0x4
	.uleb128 0x17
	.long	.LASF116
	.byte	0x5
	.uleb128 0x17
	.long	.LASF117
	.byte	0x6
	.uleb128 0x17
	.long	.LASF118
	.byte	0x7
	.uleb128 0x17
	.long	.LASF119
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF120
	.byte	0x10
	.byte	0x1
	.value	0xc78
	.long	0x876
	.uleb128 0x11
	.long	.LASF121
	.byte	0x1
	.value	0xc79
	.long	0x1da
	.byte	0
	.uleb128 0xd
	.string	"bus"
	.byte	0x1
	.value	0xc7a
	.long	0x7ec
	.byte	0x4
	.uleb128 0x11
	.long	.LASF122
	.byte	0x1
	.value	0xc7b
	.long	0x87b
	.byte	0x8
	.uleb128 0x11
	.long	.LASF123
	.byte	0x1
	.value	0xc7c
	.long	0x890
	.byte	0xc
	.byte	0
	.uleb128 0x1d
	.long	0x7e
	.uleb128 0x7
	.byte	0x4
	.long	0x876
	.uleb128 0x1e
	.long	0x7e
	.long	0x890
	.uleb128 0x13
	.long	0x5a5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x881
	.uleb128 0x1f
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc89
	.long	0x8f8
	.uleb128 0x17
	.long	.LASF124
	.byte	0
	.uleb128 0x17
	.long	.LASF125
	.byte	0x1
	.uleb128 0x17
	.long	.LASF126
	.byte	0x2
	.uleb128 0x17
	.long	.LASF127
	.byte	0x3
	.uleb128 0x17
	.long	.LASF128
	.byte	0x4
	.uleb128 0x17
	.long	.LASF129
	.byte	0x5
	.uleb128 0x17
	.long	.LASF130
	.byte	0x6
	.uleb128 0x17
	.long	.LASF131
	.byte	0x7
	.uleb128 0x17
	.long	.LASF132
	.byte	0x8
	.uleb128 0x17
	.long	.LASF133
	.byte	0x9
	.uleb128 0x17
	.long	.LASF134
	.byte	0xa
	.uleb128 0x17
	.long	.LASF135
	.byte	0xb
	.uleb128 0x17
	.long	.LASF136
	.byte	0xc
	.uleb128 0x17
	.long	.LASF137
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.long	.LASF138
	.byte	0x24
	.byte	0x1
	.value	0xc99
	.long	0x954
	.uleb128 0x11
	.long	.LASF139
	.byte	0x1
	.value	0xc9a
	.long	0x6b5
	.byte	0
	.uleb128 0x11
	.long	.LASF140
	.byte	0x1
	.value	0xc9b
	.long	0xe0
	.byte	0x8
	.uleb128 0xd
	.string	"mtu"
	.byte	0x1
	.value	0xc9c
	.long	0xca
	.byte	0x10
	.uleb128 0x11
	.long	.LASF141
	.byte	0x1
	.value	0xc9d
	.long	0x26a
	.byte	0x14
	.uleb128 0x11
	.long	.LASF142
	.byte	0x1
	.value	0xc9e
	.long	0xbf
	.byte	0x20
	.uleb128 0x11
	.long	.LASF143
	.byte	0x1
	.value	0xc9f
	.long	0xbf
	.byte	0x21
	.byte	0
	.uleb128 0x10
	.long	.LASF144
	.byte	0xcc
	.byte	0x1
	.value	0xca1
	.long	0xa4b
	.uleb128 0x11
	.long	.LASF145
	.byte	0x1
	.value	0xca2
	.long	0x659
	.byte	0
	.uleb128 0x11
	.long	.LASF146
	.byte	0x1
	.value	0xca3
	.long	0x659
	.byte	0x7
	.uleb128 0x11
	.long	.LASF147
	.byte	0x1
	.value	0xca4
	.long	0xbf
	.byte	0xe
	.uleb128 0x11
	.long	.LASF148
	.byte	0x1
	.value	0xca5
	.long	0xbf
	.byte	0xf
	.uleb128 0x11
	.long	.LASF149
	.byte	0x1
	.value	0xca6
	.long	0xca
	.byte	0x10
	.uleb128 0x11
	.long	.LASF150
	.byte	0x1
	.value	0xca7
	.long	0xca
	.byte	0x12
	.uleb128 0x11
	.long	.LASF151
	.byte	0x1
	.value	0xca8
	.long	0xca
	.byte	0x14
	.uleb128 0x11
	.long	.LASF139
	.byte	0x1
	.value	0xca9
	.long	0xa4b
	.byte	0x16
	.uleb128 0x11
	.long	.LASF152
	.byte	0x1
	.value	0xcaa
	.long	0x6c5
	.byte	0x1e
	.uleb128 0x11
	.long	.LASF153
	.byte	0x1
	.value	0xcab
	.long	0x2f4
	.byte	0x60
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.value	0xcac
	.long	0x329
	.byte	0x6c
	.uleb128 0xd
	.string	"le"
	.byte	0x1
	.value	0xcad
	.long	0x8f8
	.byte	0x70
	.uleb128 0x11
	.long	.LASF154
	.byte	0x1
	.value	0xcae
	.long	0x26a
	.byte	0x94
	.uleb128 0x11
	.long	.LASF155
	.byte	0x1
	.value	0xcaf
	.long	0x5a5
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF156
	.byte	0x1
	.value	0xcb0
	.long	0x24f
	.byte	0xa4
	.uleb128 0x11
	.long	.LASF157
	.byte	0x1
	.value	0xcb1
	.long	0x24f
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF158
	.byte	0x1
	.value	0xcb2
	.long	0x24f
	.byte	0xbc
	.uleb128 0xd
	.string	"drv"
	.byte	0x1
	.value	0xcb3
	.long	0xa61
	.byte	0xc8
	.byte	0
	.uleb128 0x14
	.long	0xbf
	.long	0xa61
	.uleb128 0x15
	.long	0x17d
	.byte	0
	.uleb128 0x15
	.long	0x17d
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xa67
	.uleb128 0xf
	.long	0x834
	.uleb128 0x1f
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xcce
	.long	0xa8c
	.uleb128 0x17
	.long	.LASF159
	.byte	0
	.uleb128 0x17
	.long	.LASF160
	.byte	0x1
	.uleb128 0x17
	.long	.LASF161
	.byte	0x2
	.byte	0
	.uleb128 0x19
	.byte	0x40
	.byte	0x1
	.value	0xcd7
	.long	0xaad
	.uleb128 0x1c
	.string	"pk"
	.byte	0x1
	.value	0xcd8
	.long	0x6c5
	.uleb128 0x1a
	.long	.LASF103
	.byte	0x1
	.value	0xcd9
	.long	0x7ab
	.byte	0
	.uleb128 0xc
	.byte	0x60
	.byte	0x1
	.value	0xcd5
	.long	0xaca
	.uleb128 0x11
	.long	.LASF162
	.byte	0x1
	.value	0xcd6
	.long	0x7ab
	.byte	0
	.uleb128 0xa
	.long	0xa8c
	.byte	0x20
	.byte	0
	.uleb128 0x20
	.long	.LASF164
	.byte	0x1
	.value	0x4d3
	.byte	0x3
	.long	0xafc
	.uleb128 0x21
	.long	.LASF121
	.byte	0x1
	.value	0x4d3
	.long	0x1da
	.uleb128 0x21
	.long	.LASF163
	.byte	0x1
	.value	0x4d3
	.long	0x1da
	.uleb128 0x21
	.long	.LASF80
	.byte	0x1
	.value	0x4d4
	.long	0x85
	.byte	0
	.uleb128 0x20
	.long	.LASF165
	.byte	0x1
	.value	0xd43
	.byte	0x1
	.long	0xb22
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd43
	.long	0x5a5
	.uleb128 0x23
	.string	"cmd"
	.byte	0x1
	.value	0xd45
	.long	0xb22
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x6d5
	.uleb128 0x20
	.long	.LASF166
	.byte	0x1
	.value	0x363
	.byte	0x3
	.long	0xb5a
	.uleb128 0x21
	.long	.LASF167
	.byte	0x1
	.value	0x363
	.long	0xb5a
	.uleb128 0x22
	.string	"bit"
	.byte	0x1
	.value	0x363
	.long	0x7e
	.uleb128 0x24
	.long	.LASF168
	.byte	0x1
	.value	0x365
	.long	0x2c5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2b9
	.uleb128 0x25
	.long	.LASF169
	.byte	0x1
	.value	0x335
	.long	0x18d
	.byte	0x3
	.long	0xb7e
	.uleb128 0x22
	.string	"sym"
	.byte	0x1
	.value	0x335
	.long	0xb7e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2ad
	.uleb128 0x25
	.long	.LASF170
	.byte	0x1
	.value	0x350
	.long	0x7e
	.byte	0x3
	.long	0xbba
	.uleb128 0x21
	.long	.LASF167
	.byte	0x1
	.value	0x350
	.long	0xbba
	.uleb128 0x22
	.string	"bit"
	.byte	0x1
	.value	0x350
	.long	0x7e
	.uleb128 0x23
	.string	"val"
	.byte	0x1
	.value	0x352
	.long	0x2c5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xbc0
	.uleb128 0xf
	.long	0x2b9
	.uleb128 0x25
	.long	.LASF171
	.byte	0x1
	.value	0x35c
	.long	0x7e
	.byte	0x3
	.long	0xc07
	.uleb128 0x21
	.long	.LASF167
	.byte	0x1
	.value	0x35c
	.long	0xb5a
	.uleb128 0x22
	.string	"bit"
	.byte	0x1
	.value	0x35c
	.long	0x7e
	.uleb128 0x24
	.long	.LASF168
	.byte	0x1
	.value	0x35e
	.long	0x2c5
	.uleb128 0x23
	.string	"old"
	.byte	0x1
	.value	0x35f
	.long	0x2c5
	.byte	0
	.uleb128 0x20
	.long	.LASF172
	.byte	0x1
	.value	0x504
	.byte	0x3
	.long	0xc39
	.uleb128 0x22
	.string	"dst"
	.byte	0x1
	.value	0x504
	.long	0x184
	.uleb128 0x22
	.string	"src"
	.byte	0x1
	.value	0x504
	.long	0xc39
	.uleb128 0x21
	.long	.LASF173
	.byte	0x1
	.value	0x504
	.long	0xad
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xc3f
	.uleb128 0x26
	.uleb128 0x20
	.long	.LASF174
	.byte	0x1
	.value	0xc52
	.byte	0x3
	.long	0xc66
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xc52
	.long	0x5a5
	.uleb128 0x21
	.long	.LASF87
	.byte	0x1
	.value	0xc52
	.long	0x7c2
	.byte	0
	.uleb128 0x27
	.long	0xc07
	.long	.LFB92
	.long	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0xc95
	.uleb128 0x28
	.long	0xc14
	.long	.LLST0
	.uleb128 0x28
	.long	0xc20
	.long	.LLST1
	.uleb128 0x28
	.long	0xc2c
	.long	.LLST2
	.byte	0
	.uleb128 0x20
	.long	.LASF175
	.byte	0x1
	.value	0xcf9
	.byte	0x1
	.long	0xcdf
	.uleb128 0x23
	.string	"evt"
	.byte	0x1
	.value	0xcfb
	.long	0xcdf
	.uleb128 0x24
	.long	.LASF176
	.byte	0x1
	.value	0xcfc
	.long	0xce5
	.uleb128 0x23
	.string	"hdr"
	.byte	0x1
	.value	0xcfd
	.long	0xceb
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0xcfe
	.long	0x5a5
	.uleb128 0x24
	.long	.LASF97
	.byte	0x1
	.value	0xcff
	.long	0xbf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x75b
	.uleb128 0x7
	.byte	0x4
	.long	0x740
	.uleb128 0x7
	.byte	0x4
	.long	0x665
	.uleb128 0x25
	.long	.LASF177
	.byte	0x1
	.value	0xced
	.long	0xbf
	.byte	0x1
	.long	0xd10
	.uleb128 0x29
	.uleb128 0x23
	.string	"rc"
	.byte	0x1
	.value	0xcf0
	.long	0x7e
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF178
	.byte	0x1
	.value	0xd13
	.byte	0x1
	.long	0xd5a
	.uleb128 0x23
	.string	"evt"
	.byte	0x1
	.value	0xd15
	.long	0xd5a
	.uleb128 0x24
	.long	.LASF176
	.byte	0x1
	.value	0xd16
	.long	0xce5
	.uleb128 0x23
	.string	"hdr"
	.byte	0x1
	.value	0xd17
	.long	0xceb
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0xd18
	.long	0x5a5
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.value	0xd19
	.long	0x7e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x783
	.uleb128 0x2a
	.long	.LASF214
	.byte	0x1
	.value	0xd33
	.long	.LFB81
	.long	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x102d
	.uleb128 0x2b
	.string	"p1"
	.byte	0x1
	.value	0xd33
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"p2"
	.byte	0x1
	.value	0xd33
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"p3"
	.byte	0x1
	.value	0xd33
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	0xb84
	.long	.LBB25
	.long	.LBE25-.LBB25
	.byte	0x1
	.value	0xd39
	.long	0xde1
	.uleb128 0x28
	.long	0xb95
	.long	.LLST3
	.uleb128 0x28
	.long	0xba1
	.long	.LLST4
	.uleb128 0x2d
	.long	.LBB26
	.long	.LBE26-.LBB26
	.uleb128 0x2e
	.long	0xbad
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.long	.LVL6
	.long	0x1568
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xc95
	.long	.LBB27
	.long	.LBE27-.LBB27
	.byte	0x1
	.value	0xd3a
	.long	0xef7
	.uleb128 0x2d
	.long	.LBB28
	.long	.LBE28-.LBB28
	.uleb128 0x30
	.long	0xca2
	.long	.LLST5
	.uleb128 0x30
	.long	0xcae
	.long	.LLST6
	.uleb128 0x30
	.long	0xcba
	.long	.LLST7
	.uleb128 0x30
	.long	0xcc6
	.long	.LLST8
	.uleb128 0x31
	.long	0xcd2
	.uleb128 0x2c
	.long	0xcf1
	.long	.LBB29
	.long	.LBE29-.LBB29
	.byte	0x1
	.value	0xd01
	.long	0xe61
	.uleb128 0x32
	.long	.Ldebug_ranges0+0
	.long	0xe57
	.uleb128 0x30
	.long	0xd03
	.long	.LLST9
	.uleb128 0x2f
	.long	.LVL7
	.long	0x1574
	.byte	0
	.uleb128 0x2f
	.long	.LVL8
	.long	0x1580
	.byte	0
	.uleb128 0x2c
	.long	0xb28
	.long	.LBB33
	.long	.LBE33-.LBB33
	.byte	0x1
	.value	0xd10
	.long	0xe9b
	.uleb128 0x28
	.long	0xb41
	.long	.LLST10
	.uleb128 0x28
	.long	0xb35
	.long	.LLST11
	.uleb128 0x2d
	.long	.LBB34
	.long	.LBE34-.LBB34
	.uleb128 0x30
	.long	0xb4d
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LVL11
	.long	0x158c
	.uleb128 0x2f
	.long	.LVL14
	.long	0x1598
	.uleb128 0x2f
	.long	.LVL16
	.long	0x1598
	.uleb128 0x2f
	.long	.LVL18
	.long	0x1598
	.uleb128 0x33
	.long	.LVL24
	.long	0xc66
	.long	0xedc
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.long	ecc+32
	.byte	0
	.uleb128 0x35
	.long	.LVL25
	.long	0xc66
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 33
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.long	ecc+64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xb84
	.long	.LBB35
	.long	.LBE35-.LBB35
	.byte	0x1
	.value	0xd3b
	.long	0xf38
	.uleb128 0x28
	.long	0xb95
	.long	.LLST13
	.uleb128 0x28
	.long	0xba1
	.long	.LLST14
	.uleb128 0x2d
	.long	.LBB36
	.long	.LBE36-.LBB36
	.uleb128 0x2e
	.long	0xbad
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.long	.LVL27
	.long	0x1568
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xd10
	.long	.LBB37
	.long	.LBE37-.LBB37
	.byte	0x1
	.value	0xd3c
	.long	0x1023
	.uleb128 0x2d
	.long	.LBB38
	.long	.LBE38-.LBB38
	.uleb128 0x30
	.long	0xd1d
	.long	.LLST15
	.uleb128 0x30
	.long	0xd29
	.long	.LLST16
	.uleb128 0x30
	.long	0xd35
	.long	.LLST17
	.uleb128 0x30
	.long	0xd41
	.long	.LLST18
	.uleb128 0x30
	.long	0xd4d
	.long	.LLST19
	.uleb128 0x2c
	.long	0xb28
	.long	.LBB39
	.long	.LBE39-.LBB39
	.byte	0x1
	.value	0xd30
	.long	0xfc5
	.uleb128 0x28
	.long	0xb41
	.long	.LLST20
	.uleb128 0x28
	.long	0xb35
	.long	.LLST21
	.uleb128 0x2d
	.long	.LBB40
	.long	.LBE40-.LBB40
	.uleb128 0x30
	.long	0xb4d
	.long	.LLST22
	.uleb128 0x2f
	.long	.LVL45
	.long	0x15a4
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LVL28
	.long	0x15b0
	.uleb128 0x2f
	.long	.LVL29
	.long	0x15bc
	.uleb128 0x2f
	.long	.LVL33
	.long	0x158c
	.uleb128 0x2f
	.long	.LVL35
	.long	0x1598
	.uleb128 0x2f
	.long	.LVL37
	.long	0x1598
	.uleb128 0x2f
	.long	.LVL38
	.long	0x1598
	.uleb128 0x33
	.long	.LVL43
	.long	0xc66
	.long	0x1018
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.long	ecc+32
	.byte	0
	.uleb128 0x2f
	.long	.LVL46
	.long	0x15c8
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LVL5
	.long	0x15d4
	.byte	0
	.uleb128 0x25
	.long	.LASF179
	.byte	0x1
	.value	0x607
	.long	0x184
	.byte	0x3
	.long	0x104b
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0x607
	.long	0x5a5
	.byte	0
	.uleb128 0x36
	.long	.LASF215
	.byte	0x1
	.value	0xcdc
	.long	.LFB77
	.long	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x10fd
	.uleb128 0x37
	.long	.LASF91
	.byte	0x1
	.value	0xcdc
	.long	0xca
	.long	.LLST23
	.uleb128 0x37
	.long	.LASF97
	.byte	0x1
	.value	0xcdc
	.long	0xbf
	.long	.LLST24
	.uleb128 0x38
	.string	"evt"
	.byte	0x1
	.value	0xcde
	.long	0x10fd
	.long	.LLST25
	.uleb128 0x38
	.string	"hdr"
	.byte	0x1
	.value	0xcdf
	.long	0xceb
	.long	.LLST26
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0xce0
	.long	0x5a5
	.long	.LLST27
	.uleb128 0x39
	.long	0xc40
	.long	.LBB45
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xce3
	.long	0x10d8
	.uleb128 0x28
	.long	0xc59
	.long	.LLST28
	.uleb128 0x28
	.long	0xc4d
	.long	.LLST29
	.byte	0
	.uleb128 0x2f
	.long	.LVL48
	.long	0x15e0
	.uleb128 0x2f
	.long	.LVL52
	.long	0x1598
	.uleb128 0x2f
	.long	.LVL54
	.long	0x1598
	.uleb128 0x2f
	.long	.LVL55
	.long	0x15ec
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x70b
	.uleb128 0x25
	.long	.LASF180
	.byte	0x1
	.value	0xc56
	.long	0x7c2
	.byte	0x3
	.long	0x1121
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xc56
	.long	0x5a5
	.byte	0
	.uleb128 0x20
	.long	.LASF181
	.byte	0x1
	.value	0xd63
	.byte	0x1
	.long	0x1147
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd63
	.long	0x5a5
	.uleb128 0x24
	.long	.LASF97
	.byte	0x1
	.value	0xd65
	.long	0xbf
	.byte	0
	.uleb128 0x20
	.long	.LASF182
	.byte	0x1
	.value	0xd4a
	.byte	0x1
	.long	0x1181
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd4a
	.long	0x5a5
	.uleb128 0x23
	.string	"cmd"
	.byte	0x1
	.value	0xd4c
	.long	0x1181
	.uleb128 0x24
	.long	.LASF97
	.byte	0x1
	.value	0xd4d
	.long	0xbf
	.uleb128 0x3a
	.long	.LASF216
	.byte	0x1
	.value	0xd5f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x6f0
	.uleb128 0x3b
	.long	.LASF184
	.byte	0x1
	.value	0xd71
	.long	0x7e
	.long	.LFB85
	.long	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x1436
	.uleb128 0x3c
	.string	"buf"
	.byte	0x1
	.value	0xd71
	.long	0x5a5
	.long	.LLST30
	.uleb128 0x2c
	.long	0x1103
	.long	.LBB68
	.long	.LBE68-.LBB68
	.byte	0x1
	.value	0xd73
	.long	0x11cb
	.uleb128 0x3d
	.long	0x1114
	.byte	0
	.uleb128 0x2d
	.long	.LBB70
	.long	.LBE70-.LBB70
	.uleb128 0x3e
	.long	.LASF183
	.byte	0x1
	.value	0xd74
	.long	0x1436
	.long	.LLST31
	.uleb128 0x2c
	.long	0xafc
	.long	.LBB71
	.long	.LBE71-.LBB71
	.byte	0x1
	.value	0xd7f
	.long	0x1215
	.uleb128 0x28
	.long	0xb09
	.long	.LLST32
	.uleb128 0x2d
	.long	.LBB72
	.long	.LBE72-.LBB72
	.uleb128 0x30
	.long	0xb15
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1121
	.long	.LBB73
	.long	.LBE73-.LBB73
	.byte	0x1
	.value	0xd78
	.long	0x12f4
	.uleb128 0x28
	.long	0x112e
	.long	.LLST34
	.uleb128 0x2d
	.long	.LBB74
	.long	.LBE74-.LBB74
	.uleb128 0x30
	.long	0x113a
	.long	.LLST35
	.uleb128 0x2c
	.long	0xb84
	.long	.LBB75
	.long	.LBE75-.LBB75
	.byte	0x1
	.value	0xd67
	.long	0x1285
	.uleb128 0x28
	.long	0xb95
	.long	.LLST36
	.uleb128 0x28
	.long	0xba1
	.long	.LLST37
	.uleb128 0x2d
	.long	.LBB76
	.long	.LBE76-.LBB76
	.uleb128 0x2e
	.long	0xbad
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.long	.LVL66
	.long	0x1568
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xbc5
	.long	.LBB77
	.long	.LBE77-.LBB77
	.byte	0x1
	.value	0xd69
	.long	0x12cf
	.uleb128 0x28
	.long	0xbd6
	.long	.LLST38
	.uleb128 0x28
	.long	0xbe2
	.long	.LLST39
	.uleb128 0x2d
	.long	.LBB78
	.long	.LBE78-.LBB78
	.uleb128 0x30
	.long	0xbee
	.long	.LLST40
	.uleb128 0x2e
	.long	0xbfa
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.long	.LVL68
	.long	0x15f8
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LVL65
	.long	0x1604
	.uleb128 0x2f
	.long	.LVL69
	.long	0x1610
	.uleb128 0x35
	.long	.LVL71
	.long	0x104b
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.value	0x2025
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1147
	.long	.LBB79
	.long	.LBE79-.LBB79
	.byte	0x1
	.value	0xd7c
	.long	0x1422
	.uleb128 0x28
	.long	0x1154
	.long	.LLST41
	.uleb128 0x2d
	.long	.LBB80
	.long	.LBE80-.LBB80
	.uleb128 0x30
	.long	0x1160
	.long	.LLST42
	.uleb128 0x30
	.long	0x116c
	.long	.LLST43
	.uleb128 0x3f
	.long	0x1178
	.long	.L39
	.uleb128 0x2c
	.long	0xb84
	.long	.LBB81
	.long	.LBE81-.LBB81
	.byte	0x1
	.value	0xd4e
	.long	0x1376
	.uleb128 0x28
	.long	0xb95
	.long	.LLST44
	.uleb128 0x28
	.long	0xba1
	.long	.LLST45
	.uleb128 0x2d
	.long	.LBB82
	.long	.LBE82-.LBB82
	.uleb128 0x2e
	.long	0xbad
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.long	.LVL76
	.long	0x1568
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xbc5
	.long	.LBB83
	.long	.LBE83-.LBB83
	.byte	0x1
	.value	0xd56
	.long	0x13c0
	.uleb128 0x28
	.long	0xbd6
	.long	.LLST46
	.uleb128 0x28
	.long	0xbe2
	.long	.LLST47
	.uleb128 0x2d
	.long	.LBB84
	.long	.LBE84-.LBB84
	.uleb128 0x30
	.long	0xbee
	.long	.LLST48
	.uleb128 0x2e
	.long	0xbfa
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.long	.LVL78
	.long	0x15f8
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LVL80
	.long	0xc66
	.long	0x13dd
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	ecc+32
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.long	.LVL82
	.long	0xc66
	.long	0x13f4
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	ecc+64
	.byte	0
	.uleb128 0x2f
	.long	.LVL83
	.long	0x1610
	.uleb128 0x2f
	.long	.LVL85
	.long	0x1604
	.uleb128 0x35
	.long	.LVL86
	.long	0x104b
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.value	0x2026
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LVL64
	.long	0x161c
	.uleb128 0x2f
	.long	.LVL75
	.long	0x161c
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x68d
	.uleb128 0x40
	.long	.LASF217
	.byte	0x1
	.value	0xd87
	.long	0x7e
	.long	.LFB86
	.long	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x147e
	.uleb128 0x2b
	.string	"dst"
	.byte	0x1
	.value	0xd87
	.long	0x520
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0xd87
	.long	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LVL91
	.long	0x1628
	.byte	0
	.uleb128 0x41
	.long	.LASF185
	.byte	0x1
	.value	0xd8b
	.long	.LFB87
	.long	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x14a7
	.uleb128 0x2f
	.long	.LVL92
	.long	0x1634
	.uleb128 0x2f
	.long	.LVL93
	.long	0x1640
	.byte	0
	.uleb128 0x42
	.long	.LASF186
	.byte	0x1
	.value	0x534
	.long	0x457
	.uleb128 0x5
	.byte	0x3
	.long	curve_secp256r1
	.uleb128 0x42
	.long	.LASF187
	.byte	0x1
	.value	0xcc8
	.long	0x292
	.uleb128 0x5
	.byte	0x3
	.long	ecc_thread_data
	.uleb128 0x14
	.long	0x215
	.long	0x14dc
	.uleb128 0x43
	.long	0x17d
	.value	0x17f
	.byte	0
	.uleb128 0x42
	.long	.LASF188
	.byte	0x1
	.value	0xcc9
	.long	0x14cb
	.uleb128 0x5
	.byte	0x3
	.long	ecc_thread_stack
	.uleb128 0x14
	.long	0x14fe
	.long	0x14fe
	.uleb128 0x15
	.long	0x17d
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.long	0xd5
	.uleb128 0x42
	.long	.LASF189
	.byte	0x1
	.value	0xcca
	.long	0x1515
	.uleb128 0x5
	.byte	0x3
	.long	debug_private_key
	.uleb128 0xf
	.long	0x14ee
	.uleb128 0x42
	.long	.LASF54
	.byte	0x1
	.value	0xcd3
	.long	0x329
	.uleb128 0x5
	.byte	0x3
	.long	flags
	.uleb128 0x42
	.long	.LASF190
	.byte	0x1
	.value	0xcd4
	.long	0x26a
	.uleb128 0x5
	.byte	0x3
	.long	cmd_sem
	.uleb128 0x44
	.string	"ecc"
	.byte	0x1
	.value	0xcdb
	.long	0xaad
	.uleb128 0x5
	.byte	0x3
	.long	ecc
	.uleb128 0x45
	.long	.LASF191
	.byte	0x1
	.value	0x222
	.long	0x85
	.uleb128 0x45
	.long	.LASF144
	.byte	0x1
	.value	0xcb5
	.long	0x954
	.uleb128 0x46
	.long	.LASF192
	.long	.LASF192
	.byte	0x1
	.value	0x349
	.uleb128 0x46
	.long	.LASF193
	.long	.LASF193
	.byte	0x1
	.value	0x58e
	.uleb128 0x46
	.long	.LASF194
	.long	.LASF194
	.byte	0x1
	.value	0x2b3
	.uleb128 0x46
	.long	.LASF195
	.long	.LASF195
	.byte	0x1
	.value	0xc50
	.uleb128 0x46
	.long	.LASF196
	.long	.LASF196
	.byte	0x1
	.value	0x5af
	.uleb128 0x46
	.long	.LASF197
	.long	.LASF197
	.byte	0x1
	.value	0x34e
	.uleb128 0x46
	.long	.LASF198
	.long	.LASF198
	.byte	0x1
	.value	0x589
	.uleb128 0x46
	.long	.LASF199
	.long	.LASF199
	.byte	0x1
	.value	0x58f
	.uleb128 0x46
	.long	.LASF200
	.long	.LASF200
	.byte	0x1
	.value	0xc6b
	.uleb128 0x46
	.long	.LASF201
	.long	.LASF201
	.byte	0x1
	.value	0x318
	.uleb128 0x46
	.long	.LASF202
	.long	.LASF202
	.byte	0x1
	.value	0xc51
	.uleb128 0x46
	.long	.LASF203
	.long	.LASF203
	.byte	0x1
	.value	0xc6c
	.uleb128 0x46
	.long	.LASF204
	.long	.LASF204
	.byte	0x1
	.value	0x34c
	.uleb128 0x46
	.long	.LASF205
	.long	.LASF205
	.byte	0x1
	.value	0x604
	.uleb128 0x46
	.long	.LASF206
	.long	.LASF206
	.byte	0x1
	.value	0x319
	.uleb128 0x46
	.long	.LASF207
	.long	.LASF207
	.byte	0x1
	.value	0x5bb
	.uleb128 0x46
	.long	.LASF208
	.long	.LASF208
	.byte	0x1
	.value	0xb88
	.uleb128 0x46
	.long	.LASF209
	.long	.LASF209
	.byte	0x1
	.value	0x317
	.uleb128 0x46
	.long	.LASF210
	.long	.LASF210
	.byte	0x1
	.value	0x33a
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
	.uleb128 0x6
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
	.uleb128 0x17
	.byte	0x1
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x87
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL2
	.value	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x21
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.value	0x8
	.byte	0x76
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.long	.LVL3
	.long	.LFE92
	.value	0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL0
	.value	0x1
	.byte	0x52
	.long	.LVL0
	.long	.LVL1
	.value	0x3
	.byte	0x72
	.sleb128 31
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.value	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.long	.LVL2
	.long	.LFE92
	.value	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	.LVL2
	.long	.LFE92
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.value	0x6
	.byte	0x3
	.long	flags
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x50
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x57
	.long	.LVL21
	.long	.LVL22
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LVL25
	.value	0x1
	.byte	0x57
	.long	.LVL25
	.long	.LVL26
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL26
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL25
	.long	.LVL26
	.value	0x6
	.byte	0x3
	.long	flags
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL26
	.long	.LVL27
	.value	0x6
	.byte	0x3
	.long	flags
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL26
	.long	.LVL27
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL38
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL41
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL41
	.long	.LVL42
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL44
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL37
	.long	.LVL38-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x50
	.long	.LVL35-1
	.long	.LVL44
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST19:
	.long	.LVL28
	.long	.LVL29-1
	.value	0x1
	.byte	0x50
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL32
	.value	0x1
	.byte	0x52
	.long	.LVL32
	.long	.LVL39
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL39
	.long	.LVL41
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL41
	.long	.LVL43
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST20:
	.long	.LVL43
	.long	.LVL44
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL43
	.long	.LVL44
	.value	0x6
	.byte	0x3
	.long	flags
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL43
	.long	.LVL44
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL47
	.long	.LVL48-1
	.value	0x1
	.byte	0x50
	.long	.LVL48-1
	.long	.LFE77
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL47
	.long	.LVL48-1
	.value	0x1
	.byte	0x52
	.long	.LVL48-1
	.long	.LFE77
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL54
	.long	.LVL55-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x50
	.long	.LVL50
	.long	.LVL56
	.value	0x1
	.byte	0x53
	.long	.LVL56
	.long	.LVL57
	.value	0x3
	.byte	0x77
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL49
	.long	.LVL51
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x50
	.long	.LVL50
	.long	.LVL51
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST30:
	.long	.LVL58
	.long	.LVL72
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL72
	.long	.LVL84
	.value	0x1
	.byte	0x53
	.long	.LVL84
	.long	.LVL87
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL87
	.long	.LVL88
	.value	0x1
	.byte	0x53
	.long	.LVL88
	.long	.LVL89-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL89
	.long	.LFE85
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST31:
	.long	.LVL59
	.long	.LVL62
	.value	0x1
	.byte	0x50
	.long	.LVL62
	.long	.LVL63
	.value	0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	.LVL72
	.long	.LVL73
	.value	0x1
	.byte	0x50
	.long	.LVL73
	.long	.LVL74
	.value	0x2
	.byte	0x73
	.sleb128 8
	.long	0
	.long	0
.LLST32:
	.long	.LVL60
	.long	.LVL61
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST33:
	.long	.LVL60
	.long	.LVL61
	.value	0x3
	.byte	0x70
	.sleb128 3
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL64
	.long	.LVL72
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST35:
	.long	.LVL69
	.long	.LVL70
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST36:
	.long	.LVL65
	.long	.LVL66
	.value	0x6
	.byte	0x3
	.long	flags
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL65
	.long	.LVL66
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL67
	.long	.LVL68
	.value	0x6
	.byte	0x3
	.long	flags
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL67
	.long	.LVL68
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL67
	.long	.LVL68
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL75
	.long	.LVL87
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST42:
	.long	.LVL79
	.long	.LVL81
	.value	0x1
	.byte	0x56
	.long	.LVL81
	.long	.LVL82-1
	.value	0x3
	.byte	0x72
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL83
	.long	.LVL84
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL84
	.long	.LVL87
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST44:
	.long	.LVL75
	.long	.LVL76
	.value	0x6
	.byte	0x3
	.long	flags
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL75
	.long	.LVL76
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL77
	.long	.LVL78
	.value	0x6
	.byte	0x3
	.long	flags
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL77
	.long	.LVL78
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL77
	.long	.LVL78
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB81
	.long	.LFE81-.LFB81
	.long	.LFB77
	.long	.LFE77-.LFB77
	.long	.LFB85
	.long	.LFE85-.LFB85
	.long	.LFB86
	.long	.LFE86-.LFB86
	.long	.LFB87
	.long	.LFE87-.LFB87
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB31
	.long	.LBE31
	.long	.LBB32
	.long	.LBE32
	.long	0
	.long	0
	.long	.LBB45
	.long	.LBE45
	.long	.LBB48
	.long	.LBE48
	.long	0
	.long	0
	.long	.LFB92
	.long	.LFE92
	.long	.LFB81
	.long	.LFE81
	.long	.LFB77
	.long	.LFE77
	.long	.LFB85
	.long	.LFE85
	.long	.LFB86
	.long	.LFE86
	.long	.LFB87
	.long	.LFE87
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF197:
	.string	"atomic_and"
.LASF102:
	.string	"bt_hci_evt_le_generate_dhkey_complete"
.LASF98:
	.string	"ncmd"
.LASF161:
	.string	"NUM_FLAGS"
.LASF109:
	.string	"BT_BUF_ACL_IN"
.LASF15:
	.string	"size_t"
.LASF175:
	.string	"emulate_le_p256_public_key_cmd"
.LASF103:
	.string	"dhkey"
.LASF165:
	.string	"clear_ecc_events"
.LASF216:
	.string	"send_status"
.LASF187:
	.string	"ecc_thread_data"
.LASF89:
	.string	"bt_hci_evt_hdr"
.LASF129:
	.string	"BT_DEV_ADVERTISING"
.LASF34:
	.string	"aos_queue_t"
.LASF87:
	.string	"type"
.LASF153:
	.string	"init"
.LASF56:
	.string	"_POLL_TYPE_SIGNAL"
.LASF164:
	.string	"stack_analyze"
.LASF157:
	.string	"rx_prio_queue"
.LASF204:
	.string	"atomic_or"
.LASF10:
	.string	"long long unsigned int"
.LASF93:
	.string	"bt_hci_cp_le_set_event_mask"
.LASF181:
	.string	"le_p256_pub_key"
.LASF188:
	.string	"ecc_thread_stack"
.LASF60:
	.string	"_poll_types_bits"
.LASF198:
	.string	"uECC_valid_public_key"
.LASF2:
	.string	"__int8_t"
.LASF189:
	.string	"debug_private_key"
.LASF47:
	.string	"k_thread_stack_t"
.LASF174:
	.string	"bt_buf_set_type"
.LASF13:
	.string	"int16_t"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF49:
	.string	"atomic_val_t"
.LASF78:
	.string	"net_buf_simple"
.LASF183:
	.string	"chdr"
.LASF17:
	.string	"u8_t"
.LASF55:
	.string	"_POLL_TYPE_IGNORE"
.LASF214:
	.string	"ecc_thread"
.LASF51:
	.string	"k_work"
.LASF42:
	.string	"poll_events"
.LASF33:
	.string	"aos_sem_t"
.LASF127:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF158:
	.string	"cmd_tx_queue"
.LASF70:
	.string	"uECC_Curve"
.LASF67:
	.string	"wordcount_t"
.LASF6:
	.string	"long int"
.LASF185:
	.string	"bt_hci_ecc_init"
.LASF24:
	.string	"_snode"
.LASF41:
	.string	"_queue"
.LASF4:
	.string	"short int"
.LASF191:
	.string	"aos_log_level"
.LASF38:
	.string	"_task_t"
.LASF142:
	.string	"rl_size"
.LASF159:
	.string	"PENDING_PUB_KEY"
.LASF200:
	.string	"bt_recv"
.LASF155:
	.string	"sent_cmd"
.LASF190:
	.string	"cmd_sem"
.LASF115:
	.string	"BT_HCI_DRIVER_BUS_RS232"
.LASF213:
	.string	"/home/stone/Documents/pca"
.LASF124:
	.string	"BT_DEV_ENABLE"
.LASF170:
	.string	"atomic_test_bit"
.LASF177:
	.string	"generate_keys"
.LASF101:
	.string	"bt_hci_evt_le_p256_public_key_complete"
.LASF7:
	.string	"__uint32_t"
.LASF168:
	.string	"mask"
.LASF107:
	.string	"BT_BUF_EVT"
.LASF141:
	.string	"pkts"
.LASF3:
	.string	"__int16_t"
.LASF205:
	.string	"net_buf_unref"
.LASF71:
	.string	"uECC_Curve_t"
.LASF144:
	.string	"bt_dev"
.LASF134:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF11:
	.string	"unsigned int"
.LASF68:
	.string	"bitcount_t"
.LASF21:
	.string	"sys_snode_t"
.LASF50:
	.string	"k_work_handler_t"
.LASF111:
	.string	"BT_HCI_DRIVER_BUS_VIRTUAL"
.LASF108:
	.string	"BT_BUF_ACL_OUT"
.LASF117:
	.string	"BT_HCI_DRIVER_BUS_SDIO"
.LASF8:
	.string	"long unsigned int"
.LASF120:
	.string	"bt_hci_driver"
.LASF19:
	.string	"u32_t"
.LASF20:
	.string	"u64_t"
.LASF121:
	.string	"name"
.LASF194:
	.string	"memcmp"
.LASF126:
	.string	"BT_DEV_ID_STATIC_RANDOM"
.LASF72:
	.string	"num_words"
.LASF95:
	.string	"bt_hci_cp_le_generate_dhkey"
.LASF79:
	.string	"data"
.LASF195:
	.string	"bt_buf_get_rx"
.LASF186:
	.string	"curve_secp256r1"
.LASF59:
	.string	"_POLL_NUM_TYPES"
.LASF85:
	.string	"pool_id"
.LASF32:
	.string	"aos_task_t"
.LASF172:
	.string	"sys_memcpy_swap"
.LASF193:
	.string	"uECC_make_key"
.LASF167:
	.string	"target"
.LASF106:
	.string	"BT_BUF_CMD"
.LASF74:
	.string	"num_n_bits"
.LASF178:
	.string	"emulate_le_generate_dhkey"
.LASF169:
	.string	"K_THREAD_STACK_BUFFER"
.LASF152:
	.string	"supported_commands"
.LASF180:
	.string	"bt_buf_get_type"
.LASF128:
	.string	"BT_DEV_PUB_KEY_BUSY"
.LASF166:
	.string	"atomic_clear_bit"
.LASF207:
	.string	"net_buf_simple_pull"
.LASF139:
	.string	"features"
.LASF53:
	.string	"handler"
.LASF149:
	.string	"hci_revision"
.LASF154:
	.string	"ncmd_sem"
.LASF147:
	.string	"hci_version"
.LASF26:
	.string	"tail"
.LASF29:
	.string	"sizetype"
.LASF63:
	.string	"_POLL_STATE_SIGNALED"
.LASF122:
	.string	"open"
.LASF156:
	.string	"rx_queue"
.LASF196:
	.string	"net_buf_simple_add"
.LASF113:
	.string	"BT_HCI_DRIVER_BUS_PCCARD"
.LASF39:
	.string	"_stack_element_t"
.LASF77:
	.string	"mmod_fast"
.LASF31:
	.string	"aos_hdl_t"
.LASF43:
	.string	"k_fifo"
.LASF150:
	.string	"lmp_subversion"
.LASF215:
	.string	"send_cmd_status"
.LASF83:
	.string	"frags"
.LASF145:
	.string	"id_addr"
.LASF81:
	.string	"__buf"
.LASF105:
	.string	"bt_buf_type"
.LASF61:
	.string	"_poll_states_bits"
.LASF143:
	.string	"rl_entries"
.LASF131:
	.string	"BT_DEV_SCANNING"
.LASF52:
	.string	"_reserved"
.LASF99:
	.string	"bt_hci_evt_le_meta_event"
.LASF148:
	.string	"lmp_version"
.LASF184:
	.string	"bt_hci_ecc_send"
.LASF44:
	.string	"k_sem"
.LASF76:
	.string	"x_side"
.LASF104:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF94:
	.string	"events"
.LASF135:
	.string	"BT_DEV_RPA_VALID"
.LASF82:
	.string	"node"
.LASF217:
	.string	"default_CSPRNG"
.LASF23:
	.string	"next"
.LASF176:
	.string	"meta"
.LASF208:
	.string	"bt_rand"
.LASF58:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF201:
	.string	"k_sem_take"
.LASF151:
	.string	"manufacturer"
.LASF80:
	.string	"size"
.LASF88:
	.string	"bt_addr_le_t"
.LASF65:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF22:
	.string	"head"
.LASF211:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF14:
	.string	"uint32_t"
.LASF203:
	.string	"bt_recv_prio"
.LASF182:
	.string	"le_gen_dhkey"
.LASF69:
	.string	"uECC_word_t"
.LASF16:
	.string	"long double"
.LASF173:
	.string	"length"
.LASF209:
	.string	"k_sem_init"
.LASF30:
	.string	"char"
.LASF192:
	.string	"atomic_get"
.LASF48:
	.string	"atomic_t"
.LASF35:
	.string	"cpu_stack_t"
.LASF146:
	.string	"random_addr"
.LASF25:
	.string	"_dnode"
.LASF116:
	.string	"BT_HCI_DRIVER_BUS_PCI"
.LASF100:
	.string	"subevent"
.LASF206:
	.string	"k_sem_give"
.LASF64:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF119:
	.string	"BT_HCI_DRIVER_BUS_I2C"
.LASF137:
	.string	"BT_DEV_NUM_FLAGS"
.LASF132:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF210:
	.string	"k_thread_create"
.LASF46:
	.string	"task"
.LASF5:
	.string	"short unsigned int"
.LASF40:
	.string	"k_queue"
.LASF57:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF123:
	.string	"send"
.LASF12:
	.string	"int8_t"
.LASF73:
	.string	"num_bytes"
.LASF18:
	.string	"u16_t"
.LASF212:
	.string	"src/hci_ecc.c"
.LASF75:
	.string	"double_jacobian"
.LASF114:
	.string	"BT_HCI_DRIVER_BUS_UART"
.LASF84:
	.string	"net_buf"
.LASF133:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF66:
	.string	"_POLL_NUM_STATES"
.LASF97:
	.string	"status"
.LASF45:
	.string	"k_thread"
.LASF199:
	.string	"uECC_shared_secret"
.LASF96:
	.string	"bt_hci_evt_cmd_status"
.LASF54:
	.string	"flags"
.LASF171:
	.string	"atomic_test_and_set_bit"
.LASF36:
	.string	"_queue_t"
.LASF28:
	.string	"sys_dlist_t"
.LASF92:
	.string	"param_len"
.LASF140:
	.string	"states"
.LASF37:
	.string	"_sem_t"
.LASF86:
	.string	"bt_addr_t"
.LASF162:
	.string	"private_key"
.LASF27:
	.string	"prev"
.LASF179:
	.string	"net_buf_user_data"
.LASF202:
	.string	"bt_buf_get_cmd_complete"
.LASF118:
	.string	"BT_HCI_DRIVER_BUS_SPI"
.LASF130:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF90:
	.string	"bt_hci_cmd_hdr"
.LASF163:
	.string	"stack"
.LASF138:
	.string	"bt_dev_le"
.LASF112:
	.string	"BT_HCI_DRIVER_BUS_USB"
.LASF136:
	.string	"BT_DEV_ID_PENDING"
.LASF62:
	.string	"_POLL_STATE_NOT_READY"
.LASF110:
	.string	"bt_hci_driver_bus"
.LASF91:
	.string	"opcode"
.LASF160:
	.string	"PENDING_DHKEY"
.LASF125:
	.string	"BT_DEV_READY"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
