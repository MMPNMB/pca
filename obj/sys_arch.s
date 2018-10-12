	.file	"sys_arch.c"
	.text
.Ltext0:
	.section	.text.unlikely.sys_sem_new,"ax",@progbits
.LCOLDB0:
	.section	.text.sys_sem_new,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sys_sem_new
.Ltext_cold0:
	.section	.text.sys_sem_new
	.globl	sys_sem_new
	.type	sys_sem_new, @function
sys_sem_new:
.LFB17:
	.file 1 "kernel/protocols/net/port/sys_arch.c"
	.loc 1 57 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 59 0
	movzbl	12(%ebp), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	aos_sem_new
.LVL1:
	.loc 1 64 0
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL2:
	.loc 1 65 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 64 0
	negl	%eax
	.loc 1 65 0
	ret
	.cfi_endproc
.LFE17:
	.size	sys_sem_new, .-sys_sem_new
	.section	.text.unlikely.sys_sem_new
.LCOLDE0:
	.section	.text.sys_sem_new
.LHOTE0:
	.section	.text.unlikely.sys_sem_free,"ax",@progbits
.LCOLDB1:
	.section	.text.sys_sem_free,"ax",@progbits
.LHOTB1:
	.globl	sys_sem_free
	.type	sys_sem_free, @function
sys_sem_free:
.LFB18:
	.loc 1 74 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 74 0
	movl	8(%ebp), %eax
	.loc 1 75 0
	testl	%eax, %eax
	je	.L3
	.loc 1 78 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 76 0
	jmp	aos_sem_free
.LVL4:
.L3:
	.cfi_restore_state
	.loc 1 78 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	sys_sem_free, .-sys_sem_free
	.section	.text.unlikely.sys_sem_free
.LCOLDE1:
	.section	.text.sys_sem_free
.LHOTE1:
	.section	.text.unlikely.sys_sem_signal,"ax",@progbits
.LCOLDB2:
	.section	.text.sys_sem_signal,"ax",@progbits
.LHOTB2:
	.globl	sys_sem_signal
	.type	sys_sem_signal, @function
sys_sem_signal:
.LFB19:
	.loc 1 88 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 90 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 89 0
	jmp	aos_sem_signal
.LVL6:
	.cfi_endproc
.LFE19:
	.size	sys_sem_signal, .-sys_sem_signal
	.section	.text.unlikely.sys_sem_signal
.LCOLDE2:
	.section	.text.sys_sem_signal
.LHOTE2:
	.section	.text.unlikely.sys_mbox_new,"ax",@progbits
.LCOLDB3:
	.section	.text.sys_mbox_new,"ax",@progbits
.LHOTB3:
	.globl	sys_mbox_new
	.type	sys_mbox_new, @function
sys_mbox_new:
.LFB21:
	.loc 1 386 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 390 0
	movl	12(%ebp), %eax
	leal	0(,%eax,4), %ebx
	pushl	%ebx
	call	malloc
.LVL8:
	.loc 1 391 0
	addl	$16, %esp
	testl	%eax, %eax
	movb	$-1, %dl
	je	.L10
	.loc 1 395 0
	pushl	$4
	pushl	%ebx
	pushl	%eax
	pushl	8(%ebp)
	call	aos_queue_new
.LVL9:
	.loc 1 397 0
	addl	$16, %esp
	testl	%eax, %eax
	setne	%dl
	negl	%edx
.LVL10:
.L10:
	.loc 1 401 0
	movb	%dl, %al
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	sys_mbox_new, .-sys_mbox_new
	.section	.text.unlikely.sys_mbox_new
.LCOLDE3:
	.section	.text.sys_mbox_new
.LHOTE3:
	.section	.text.unlikely.sys_mbox_free,"ax",@progbits
.LCOLDB4:
	.section	.text.sys_mbox_free,"ax",@progbits
.LHOTB4:
	.globl	sys_mbox_free
	.type	sys_mbox_free, @function
sys_mbox_free:
.LFB22:
	.loc 1 410 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 410 0
	movl	8(%ebp), %ebx
	.loc 1 413 0
	testl	%ebx, %ebx
	je	.L14
	.loc 1 414 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_queue_buf_ptr
.LVL12:
	.loc 1 415 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L16
.LBB2:
	.loc 1 416 0
	subl	$12, %esp
	pushl	%eax
	call	free
.LVL13:
	addl	$16, %esp
.L16:
.LBE2:
	.loc 1 417 0
	movl	%ebx, 8(%ebp)
	.loc 1 419 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 417 0
	jmp	aos_queue_free
.LVL14:
.L14:
	.cfi_restore_state
	.loc 1 419 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	sys_mbox_free, .-sys_mbox_free
	.section	.text.unlikely.sys_mbox_free
.LCOLDE4:
	.section	.text.sys_mbox_free
.LHOTE4:
	.section	.text.unlikely.sys_mbox_post,"ax",@progbits
.LCOLDB5:
	.section	.text.sys_mbox_post,"ax",@progbits
.LHOTB5:
	.globl	sys_mbox_post
	.type	sys_mbox_post, @function
sys_mbox_post:
.LFB23:
	.loc 1 428 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 429 0
	leal	12(%ebp), %eax
.LVL16:
	pushl	$4
	pushl	%eax
	pushl	8(%ebp)
	call	aos_queue_send
.LVL17:
	.loc 1 430 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	sys_mbox_post, .-sys_mbox_post
	.section	.text.unlikely.sys_mbox_post
.LCOLDE5:
	.section	.text.sys_mbox_post
.LHOTE5:
	.section	.text.unlikely.sys_mbox_trypost,"ax",@progbits
.LCOLDB6:
	.section	.text.sys_mbox_trypost,"ax",@progbits
.LHOTB6:
	.globl	sys_mbox_trypost
	.type	sys_mbox_trypost, @function
sys_mbox_trypost:
.LFB24:
	.loc 1 438 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 439 0
	leal	12(%ebp), %eax
.LVL19:
	pushl	$4
	pushl	%eax
	pushl	8(%ebp)
	call	aos_queue_send
.LVL20:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
	.loc 1 443 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	negl	%eax
	ret
	.cfi_endproc
.LFE24:
	.size	sys_mbox_trypost, .-sys_mbox_trypost
	.section	.text.unlikely.sys_mbox_trypost
.LCOLDE6:
	.section	.text.sys_mbox_trypost
.LHOTE6:
	.section	.text.unlikely.sys_arch_mbox_tryfetch,"ax",@progbits
.LCOLDB7:
	.section	.text.sys_arch_mbox_tryfetch,"ax",@progbits
.LHOTB7:
	.globl	sys_arch_mbox_tryfetch
	.type	sys_arch_mbox_tryfetch, @function
sys_arch_mbox_tryfetch:
.LFB26:
	.loc 1 503 0
	.cfi_startproc
.LVL21:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 503 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 506 0
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	$0
	pushl	8(%ebp)
	call	aos_queue_recv
.LVL22:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	negl	%eax
	.loc 1 511 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L26
	call	__stack_chk_fail
.LVL23:
.L26:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	sys_arch_mbox_tryfetch, .-sys_arch_mbox_tryfetch
	.section	.text.unlikely.sys_arch_mbox_tryfetch
.LCOLDE7:
	.section	.text.sys_arch_mbox_tryfetch
.LHOTE7:
	.section	.text.unlikely.sys_mutex_new,"ax",@progbits
.LCOLDB8:
	.section	.text.sys_mutex_new,"ax",@progbits
.LHOTB8:
	.globl	sys_mutex_new
	.type	sys_mutex_new, @function
sys_mutex_new:
.LFB27:
	.loc 1 520 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 522 0
	pushl	8(%ebp)
	call	aos_mutex_new
.LVL25:
	.loc 1 527 0
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL26:
	.loc 1 528 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 527 0
	negl	%eax
	.loc 1 528 0
	ret
	.cfi_endproc
.LFE27:
	.size	sys_mutex_new, .-sys_mutex_new
	.section	.text.unlikely.sys_mutex_new
.LCOLDE8:
	.section	.text.sys_mutex_new
.LHOTE8:
	.section	.text.unlikely.sys_mutex_lock,"ax",@progbits
.LCOLDB9:
	.section	.text.sys_mutex_lock,"ax",@progbits
.LHOTB9:
	.globl	sys_mutex_lock
	.type	sys_mutex_lock, @function
sys_mutex_lock:
.LFB28:
	.loc 1 534 0
	.cfi_startproc
.LVL27:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 535 0
	pushl	$-1
	pushl	8(%ebp)
	call	aos_mutex_lock
.LVL28:
	.loc 1 536 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	sys_mutex_lock, .-sys_mutex_lock
	.section	.text.unlikely.sys_mutex_lock
.LCOLDE9:
	.section	.text.sys_mutex_lock
.LHOTE9:
	.section	.text.unlikely.sys_mutex_unlock,"ax",@progbits
.LCOLDB10:
	.section	.text.sys_mutex_unlock,"ax",@progbits
.LHOTB10:
	.globl	sys_mutex_unlock
	.type	sys_mutex_unlock, @function
sys_mutex_unlock:
.LFB29:
	.loc 1 541 0
	.cfi_startproc
.LVL29:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 543 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 542 0
	jmp	aos_mutex_unlock
.LVL30:
	.cfi_endproc
.LFE29:
	.size	sys_mutex_unlock, .-sys_mutex_unlock
	.section	.text.unlikely.sys_mutex_unlock
.LCOLDE10:
	.section	.text.sys_mutex_unlock
.LHOTE10:
	.section	.text.unlikely.sys_mutex_free,"ax",@progbits
.LCOLDB11:
	.section	.text.sys_mutex_free,"ax",@progbits
.LHOTB11:
	.globl	sys_mutex_free
	.type	sys_mutex_free, @function
sys_mutex_free:
.LFB30:
	.loc 1 550 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 552 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 551 0
	jmp	aos_mutex_free
.LVL32:
	.cfi_endproc
.LFE30:
	.size	sys_mutex_free, .-sys_mutex_free
	.section	.text.unlikely.sys_mutex_free
.LCOLDE11:
	.section	.text.sys_mutex_free
.LHOTE11:
	.section	.text.unlikely.sys_now,"ax",@progbits
.LCOLDB12:
	.section	.text.sys_now,"ax",@progbits
.LHOTB12:
	.globl	sys_now
	.type	sys_now, @function
sys_now:
.LFB31:
	.loc 1 561 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 562 0
	call	aos_now_ms
.LVL33:
	.loc 1 563 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	sys_now, .-sys_now
	.section	.text.unlikely.sys_now
.LCOLDE12:
	.section	.text.sys_now
.LHOTE12:
	.section	.text.unlikely.sys_arch_sem_wait,"ax",@progbits
.LCOLDB13:
	.section	.text.sys_arch_sem_wait,"ax",@progbits
.LHOTB13:
	.globl	sys_arch_sem_wait
	.type	sys_arch_sem_wait, @function
sys_arch_sem_wait:
.LFB20:
	.loc 1 110 0
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
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 110 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	.loc 1 114 0
	testl	%esi, %esi
	jne	.L39
.L42:
	.loc 1 115 0
	orl	$-1, %eax
	jmp	.L40
.L39:
	.loc 1 117 0
	call	sys_now
.LVL35:
	.loc 1 119 0
	testl	%edi, %edi
	.loc 1 117 0
	movl	%eax, %ebx
.LVL36:
	.loc 1 119 0
	je	.L45
	.loc 1 120 0
	pushl	%edx
	pushl	%edx
	pushl	%edi
	pushl	%esi
	call	aos_sem_wait
.LVL37:
	.loc 1 121 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L42
	.loc 1 122 0
	call	sys_now
.LVL38:
	.loc 1 126 0
	subl	%ebx, %eax
.LVL39:
	jmp	.L40
.LVL40:
.L45:
	.loc 1 131 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	%esi
	call	aos_sem_wait
.LVL41:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L45
	.loc 1 132 0
	call	sys_now
.LVL42:
	.loc 1 137 0
	movl	$1, %edx
	subl	%ebx, %eax
.LVL43:
	cmove	%edx, %eax
.LVL44:
.L40:
	.loc 1 144 0
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
	.size	sys_arch_sem_wait, .-sys_arch_sem_wait
	.section	.text.unlikely.sys_arch_sem_wait
.LCOLDE13:
	.section	.text.sys_arch_sem_wait
.LHOTE13:
	.section	.text.unlikely.sys_arch_mbox_fetch,"ax",@progbits
.LCOLDB14:
	.section	.text.sys_arch_mbox_fetch,"ax",@progbits
.LHOTB14:
	.globl	sys_arch_mbox_fetch
	.type	sys_arch_mbox_fetch, @function
sys_arch_mbox_fetch:
.LFB25:
	.loc 1 462 0
	.cfi_startproc
.LVL45:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 462 0
	movl	8(%ebp), %edi
	movl	12(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 467 0
	testl	%edi, %edi
	jne	.L50
.L53:
	.loc 1 468 0
	orl	$-1, %eax
	jmp	.L51
.L50:
	.loc 1 470 0
	call	sys_now
.LVL46:
	.loc 1 472 0
	cmpl	$0, 16(%ebp)
	.loc 1 470 0
	movl	%eax, %ebx
.LVL47:
	leal	-32(%ebp), %ecx
	.loc 1 472 0
	je	.L57
	.loc 1 474 0
	pushl	%ecx
	pushl	%esi
	pushl	16(%ebp)
	pushl	%edi
	call	aos_queue_recv
.LVL48:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L53
	.loc 1 475 0
	call	sys_now
.LVL49:
	.loc 1 477 0
	subl	%ebx, %eax
.LVL50:
	jmp	.L51
.LVL51:
.L57:
	.loc 1 482 0 discriminator 1
	pushl	%ecx
	pushl	%esi
	pushl	$-1
	pushl	%edi
	movl	%ecx, -44(%ebp)
	call	aos_queue_recv
.LVL52:
	addl	$16, %esp
	testl	%eax, %eax
	movl	-44(%ebp), %ecx
	jne	.L57
	.loc 1 483 0
	call	sys_now
.LVL53:
	.loc 1 487 0
	movl	$1, %edx
	subl	%ebx, %eax
.LVL54:
	cmove	%edx, %eax
.LVL55:
.L51:
	.loc 1 494 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L54
	call	__stack_chk_fail
.LVL56:
.L54:
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
.LFE25:
	.size	sys_arch_mbox_fetch, .-sys_arch_mbox_fetch
	.section	.text.unlikely.sys_arch_mbox_fetch
.LCOLDE14:
	.section	.text.sys_arch_mbox_fetch
.LHOTE14:
	.section	.text.unlikely.sys_jiffies,"ax",@progbits
.LCOLDB15:
	.section	.text.sys_jiffies,"ax",@progbits
.LHOTB15:
	.globl	sys_jiffies
	.type	sys_jiffies, @function
sys_jiffies:
.LFB32:
	.loc 1 572 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 573 0
	call	aos_now
.LVL57:
	.loc 1 574 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	sys_jiffies, .-sys_jiffies
	.section	.text.unlikely.sys_jiffies
.LCOLDE15:
	.section	.text.sys_jiffies
.LHOTE15:
	.section	.text.unlikely.sys_thread_new,"ax",@progbits
.LCOLDB16:
	.section	.text.sys_thread_new,"ax",@progbits
.LHOTB16:
	.globl	sys_thread_new
	.type	sys_thread_new, @function
sys_thread_new:
.LFB33:
	.loc 1 577 0
	.cfi_startproc
.LVL58:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 577 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 580 0
	leal	-16(%ebp), %eax
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	call	aos_task_new_ext
.LVL59:
	.loc 1 583 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	movl	-16(%ebp), %eax
	je	.L64
	call	__stack_chk_fail
.LVL60:
.L64:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	sys_thread_new, .-sys_thread_new
	.section	.text.unlikely.sys_thread_new
.LCOLDE16:
	.section	.text.sys_thread_new
.LHOTE16:
	.section	.text.unlikely.sys_arch_protect,"ax",@progbits
.LCOLDB17:
	.section	.text.sys_arch_protect,"ax",@progbits
.LHOTB17:
	.globl	sys_arch_protect
	.type	sys_arch_protect, @function
sys_arch_protect:
.LFB34:
	.loc 1 600 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 601 0
	pushl	$-1
	pushl	$sys_arch_mutex
	call	aos_mutex_lock
.LVL61:
	.loc 1 603 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	sys_arch_protect, .-sys_arch_protect
	.section	.text.unlikely.sys_arch_protect
.LCOLDE17:
	.section	.text.sys_arch_protect
.LHOTE17:
	.section	.text.unlikely.sys_arch_unprotect,"ax",@progbits
.LCOLDB18:
	.section	.text.sys_arch_unprotect,"ax",@progbits
.LHOTB18:
	.globl	sys_arch_unprotect
	.type	sys_arch_unprotect, @function
sys_arch_unprotect:
.LFB35:
	.loc 1 612 0
	.cfi_startproc
.LVL62:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 613 0
	movl	$sys_arch_mutex, 8(%ebp)
.LVL63:
	.loc 1 614 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 613 0
	jmp	aos_mutex_unlock
.LVL64:
	.cfi_endproc
.LFE35:
	.size	sys_arch_unprotect, .-sys_arch_unprotect
	.section	.text.unlikely.sys_arch_unprotect
.LCOLDE18:
	.section	.text.sys_arch_unprotect
.LHOTE18:
	.section	.text.unlikely.sys_arch_assert,"ax",@progbits
.LCOLDB19:
	.section	.text.sys_arch_assert,"ax",@progbits
.LHOTB19:
	.globl	sys_arch_assert
	.type	sys_arch_assert, @function
sys_arch_assert:
.LFB36:
	.loc 1 621 0
	.cfi_startproc
.LVL65:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 622 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	sys_arch_assert, .-sys_arch_assert
	.section	.text.unlikely.sys_arch_assert
.LCOLDE19:
	.section	.text.sys_arch_assert
.LHOTE19:
	.section	.text.unlikely.net_close,"ax",@progbits
.LCOLDB20:
	.section	.text.net_close,"ax",@progbits
.LHOTB20:
	.globl	net_close
	.type	net_close, @function
net_close:
.LFB37:
	.loc 1 627 0
	.cfi_startproc
.LVL66:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 629 0
	xorl	%eax, %eax
	.loc 1 627 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 629 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	net_close, .-net_close
	.section	.text.unlikely.net_close
.LCOLDE20:
	.section	.text.net_close
.LHOTE20:
	.section	.text.unlikely.sys_init,"ax",@progbits
.LCOLDB21:
	.section	.text.sys_init,"ax",@progbits
.LHOTB21:
	.globl	sys_init
	.type	sys_init, @function
sys_init:
.LFB38:
	.loc 1 637 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 638 0
	pushl	$sys_arch_mutex
	call	aos_mutex_new
.LVL67:
	.loc 1 639 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	sys_init, .-sys_init
	.section	.text.unlikely.sys_init
.LCOLDE21:
	.section	.text.sys_init
.LHOTE21:
	.section	.bss.sys_arch_mutex,"aw",@nobits
	.align 4
	.type	sys_arch_mutex, @object
	.size	sys_arch_mutex, 4
sys_arch_mutex:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.sys_sem_new
.Letext_cold0:
	.file 2 "./include/aos/kernel.h"
	.file 3 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 4 "./kernel/protocols/net/include/lwip/err.h"
	.file 5 "./kernel/protocols/net/port/include/arch/sys_arch.h"
	.file 6 "./kernel/protocols/net/include/lwip/sys.h"
	.file 7 "<built-in>"
	.file 8 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x98f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF107
	.byte	0xc
	.long	.LASF108
	.long	.LASF109
	.long	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x88
	.uleb128 0x6
	.long	0x7b
	.uleb128 0x7
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.long	0xa2
	.uleb128 0x8
	.string	"hdl"
	.byte	0x2
	.byte	0x14
	.long	0x79
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF12
	.byte	0x2
	.byte	0x15
	.long	0x8d
	.uleb128 0x9
	.long	.LASF13
	.byte	0x2
	.byte	0x17
	.long	0xa2
	.uleb128 0x9
	.long	.LASF14
	.byte	0x2
	.byte	0x18
	.long	0xa2
	.uleb128 0x9
	.long	.LASF15
	.byte	0x2
	.byte	0x19
	.long	0xa2
	.uleb128 0x9
	.long	.LASF16
	.byte	0x2
	.byte	0x1a
	.long	0xa2
	.uleb128 0x5
	.byte	0x4
	.long	0xdf
	.uleb128 0xa
	.long	0xea
	.uleb128 0xb
	.long	0x79
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF18
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF19
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.byte	0x31
	.long	0x2c
	.uleb128 0x9
	.long	.LASF21
	.byte	0x3
	.byte	0x32
	.long	0x25
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.byte	0x35
	.long	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x39
	.long	0x10a
	.uleb128 0xc
	.byte	0x4
	.long	0x5d
	.byte	0x4
	.byte	0x3d
	.long	0x19e
	.uleb128 0xd
	.long	.LASF24
	.byte	0
	.uleb128 0xe
	.long	.LASF25
	.sleb128 -1
	.uleb128 0xe
	.long	.LASF26
	.sleb128 -2
	.uleb128 0xe
	.long	.LASF27
	.sleb128 -3
	.uleb128 0xe
	.long	.LASF28
	.sleb128 -4
	.uleb128 0xe
	.long	.LASF29
	.sleb128 -5
	.uleb128 0xe
	.long	.LASF30
	.sleb128 -6
	.uleb128 0xe
	.long	.LASF31
	.sleb128 -7
	.uleb128 0xe
	.long	.LASF32
	.sleb128 -8
	.uleb128 0xe
	.long	.LASF33
	.sleb128 -9
	.uleb128 0xe
	.long	.LASF34
	.sleb128 -10
	.uleb128 0xe
	.long	.LASF35
	.sleb128 -11
	.uleb128 0xe
	.long	.LASF36
	.sleb128 -12
	.uleb128 0xe
	.long	.LASF37
	.sleb128 -13
	.uleb128 0xe
	.long	.LASF38
	.sleb128 -14
	.uleb128 0xe
	.long	.LASF39
	.sleb128 -15
	.uleb128 0xe
	.long	.LASF40
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.byte	0x2e
	.long	0xc3
	.uleb128 0x9
	.long	.LASF42
	.byte	0x5
	.byte	0x33
	.long	0x115
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.byte	0x35
	.long	0xb8
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.byte	0x49
	.long	0xce
	.uleb128 0x9
	.long	.LASF45
	.byte	0x5
	.byte	0x4e
	.long	0x79
	.uleb128 0x9
	.long	.LASF46
	.byte	0x6
	.byte	0x88
	.long	0xd9
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.byte	0x38
	.long	0x120
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x23d
	.uleb128 0x10
	.string	"sem"
	.byte	0x1
	.byte	0x38
	.long	0x23d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.byte	0x38
	.long	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x3a
	.long	0x120
	.long	.LLST0
	.uleb128 0x13
	.long	.LASF48
	.byte	0x1
	.byte	0x3b
	.long	0x5d
	.long	.LLST1
	.uleb128 0x14
	.long	.LVL1
	.long	0x8bc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x19e
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.byte	0x49
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a
	.uleb128 0x16
	.string	"sem"
	.byte	0x1
	.byte	0x49
	.long	0x23d
	.long	.LLST2
	.uleb128 0x17
	.long	.LVL4
	.long	0x8c7
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.byte	0x57
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b0
	.uleb128 0x10
	.string	"sem"
	.byte	0x1
	.byte	0x57
	.long	0x23d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LVL6
	.long	0x8d2
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.value	0x181
	.long	0x120
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c
	.uleb128 0x1a
	.string	"mb"
	.byte	0x1
	.value	0x181
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF53
	.byte	0x1
	.value	0x181
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF54
	.byte	0x1
	.value	0x183
	.long	0x79
	.long	.LLST3
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.value	0x184
	.long	0x120
	.sleb128 -1
	.uleb128 0x1e
	.long	.LASF92
	.byte	0x7
	.byte	0
	.long	0x79
	.long	0x319
	.uleb128 0xb
	.long	0x64
	.byte	0
	.uleb128 0x1c
	.long	.LASF48
	.byte	0x1
	.value	0x18b
	.long	0x5d
	.long	.LLST4
	.uleb128 0x14
	.long	.LVL8
	.long	0x8dd
	.uleb128 0x14
	.long	.LVL9
	.long	0x8e8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1bf
	.uleb128 0x1f
	.long	.LASF55
	.byte	0x1
	.value	0x199
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b1
	.uleb128 0x1a
	.string	"mb"
	.byte	0x1
	.value	0x199
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF56
	.byte	0x1
	.value	0x19b
	.long	0x79
	.long	.LLST5
	.uleb128 0x20
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x39e
	.uleb128 0x21
	.long	.LASF94
	.byte	0x7
	.byte	0
	.long	0x394
	.uleb128 0xb
	.long	0x79
	.byte	0
	.uleb128 0x14
	.long	.LVL13
	.long	0x8f4
	.byte	0
	.uleb128 0x14
	.long	.LVL12
	.long	0x8ff
	.uleb128 0x22
	.long	.LVL14
	.long	0x90b
	.byte	0
	.uleb128 0x1f
	.long	.LASF57
	.byte	0x1
	.value	0x1ab
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ef
	.uleb128 0x1a
	.string	"mb"
	.byte	0x1
	.value	0x1ab
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.value	0x1ab
	.long	0x79
	.long	.LLST6
	.uleb128 0x14
	.long	.LVL17
	.long	0x917
	.byte	0
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.value	0x1b5
	.long	0x120
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x431
	.uleb128 0x1a
	.string	"mb"
	.byte	0x1
	.value	0x1b5
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"msg"
	.byte	0x1
	.value	0x1b5
	.long	0x79
	.long	.LLST7
	.uleb128 0x14
	.long	.LVL20
	.long	0x917
	.byte	0
	.uleb128 0x19
	.long	.LASF59
	.byte	0x1
	.value	0x1f6
	.long	0x115
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x48a
	.uleb128 0x1a
	.string	"mb"
	.byte	0x1
	.value	0x1f6
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"msg"
	.byte	0x1
	.value	0x1f6
	.long	0x48a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x1f8
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LVL22
	.long	0x923
	.uleb128 0x14
	.long	.LVL23
	.long	0x92f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x79
	.uleb128 0x19
	.long	.LASF60
	.byte	0x1
	.value	0x207
	.long	0x120
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e3
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x1
	.value	0x207
	.long	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.value	0x209
	.long	0x120
	.long	.LLST8
	.uleb128 0x1c
	.long	.LASF48
	.byte	0x1
	.value	0x20a
	.long	0x5d
	.long	.LLST9
	.uleb128 0x14
	.long	.LVL25
	.long	0x938
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1b4
	.uleb128 0x1f
	.long	.LASF62
	.byte	0x1
	.value	0x215
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x518
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x1
	.value	0x215
	.long	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LVL28
	.long	0x943
	.byte	0
	.uleb128 0x1f
	.long	.LASF63
	.byte	0x1
	.value	0x21c
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x550
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x1
	.value	0x21c
	.long	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LVL30
	.long	0x94e
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF64
	.byte	0x1
	.value	0x225
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x588
	.uleb128 0x1b
	.long	.LASF61
	.byte	0x1
	.value	0x225
	.long	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LVL32
	.long	0x959
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF65
	.byte	0x1
	.value	0x230
	.long	0x115
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x5ac
	.uleb128 0x14
	.long	.LVL33
	.long	0x964
	.byte	0
	.uleb128 0xf
	.long	.LASF66
	.byte	0x1
	.byte	0x6d
	.long	0x115
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x64b
	.uleb128 0x10
	.string	"sem"
	.byte	0x1
	.byte	0x6d
	.long	0x23d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.long	.LASF67
	.byte	0x1
	.byte	0x6d
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x6f
	.long	0x115
	.long	.LLST10
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.byte	0x6f
	.long	0x115
	.long	.LLST11
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0x6f
	.long	0x115
	.long	.LLST12
	.uleb128 0x12
	.string	"ret"
	.byte	0x1
	.byte	0x70
	.long	0x115
	.long	.LLST13
	.uleb128 0x14
	.long	.LVL35
	.long	0x588
	.uleb128 0x14
	.long	.LVL37
	.long	0x970
	.uleb128 0x14
	.long	.LVL38
	.long	0x588
	.uleb128 0x14
	.long	.LVL41
	.long	0x970
	.uleb128 0x14
	.long	.LVL42
	.long	0x588
	.byte	0
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.value	0x1cd
	.long	0x115
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x717
	.uleb128 0x1a
	.string	"mb"
	.byte	0x1
	.value	0x1cd
	.long	0x33c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.string	"msg"
	.byte	0x1
	.value	0x1cd
	.long	0x48a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF67
	.byte	0x1
	.value	0x1cd
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.value	0x1cf
	.long	0x115
	.long	.LLST14
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.value	0x1cf
	.long	0x115
	.long	.LLST15
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x1
	.value	0x1cf
	.long	0x115
	.long	.LLST16
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.value	0x1d0
	.long	0x115
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.string	"ret"
	.byte	0x1
	.value	0x1d1
	.long	0x115
	.long	.LLST17
	.uleb128 0x14
	.long	.LVL46
	.long	0x588
	.uleb128 0x14
	.long	.LVL48
	.long	0x923
	.uleb128 0x14
	.long	.LVL49
	.long	0x588
	.uleb128 0x14
	.long	.LVL52
	.long	0x923
	.uleb128 0x14
	.long	.LVL53
	.long	0x588
	.uleb128 0x14
	.long	.LVL56
	.long	0x92f
	.byte	0
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.value	0x23b
	.long	0x115
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x73b
	.uleb128 0x14
	.long	.LVL57
	.long	0x97b
	.byte	0
	.uleb128 0x19
	.long	.LASF73
	.byte	0x1
	.value	0x240
	.long	0x1ca
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c2
	.uleb128 0x1b
	.long	.LASF74
	.byte	0x1
	.value	0x240
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF75
	.byte	0x1
	.value	0x240
	.long	0x1d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.value	0x240
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x1
	.value	0x240
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1b
	.long	.LASF77
	.byte	0x1
	.value	0x240
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x26
	.long	.LASF78
	.byte	0x1
	.value	0x242
	.long	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.long	.LVL59
	.long	0x987
	.uleb128 0x14
	.long	.LVL60
	.long	0x92f
	.byte	0
	.uleb128 0x19
	.long	.LASF79
	.byte	0x1
	.value	0x257
	.long	0x1a9
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e6
	.uleb128 0x14
	.long	.LVL61
	.long	0x943
	.byte	0
	.uleb128 0x1f
	.long	.LASF80
	.byte	0x1
	.value	0x263
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x821
	.uleb128 0x27
	.long	.LASF81
	.byte	0x1
	.value	0x263
	.long	0x1a9
	.long	.LLST18
	.uleb128 0x17
	.long	.LVL64
	.long	0x94e
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	sys_arch_mutex
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LASF82
	.byte	0x1
	.value	0x26c
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x856
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.value	0x26c
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF84
	.byte	0x1
	.value	0x26c
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x19
	.long	.LASF85
	.byte	0x1
	.value	0x272
	.long	0x5d
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x880
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.value	0x272
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LASF87
	.byte	0x1
	.value	0x27c
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a0
	.uleb128 0x14
	.long	.LVL67
	.long	0x938
	.byte	0
	.uleb128 0x28
	.long	.LASF88
	.byte	0x1
	.byte	0x2b
	.long	0xb8
	.uleb128 0x5
	.byte	0x3
	.long	sys_arch_mutex
	.uleb128 0x29
	.long	.LASF110
	.byte	0x8
	.byte	0x17
	.long	0x64
	.uleb128 0x2a
	.long	.LASF89
	.long	.LASF89
	.byte	0x2
	.byte	0xbb
	.uleb128 0x2a
	.long	.LASF90
	.long	.LASF90
	.byte	0x2
	.byte	0xc3
	.uleb128 0x2a
	.long	.LASF91
	.long	.LASF91
	.byte	0x2
	.byte	0xd4
	.uleb128 0x2a
	.long	.LASF92
	.long	.LASF92
	.byte	0x7
	.byte	0
	.uleb128 0x2b
	.long	.LASF93
	.long	.LASF93
	.byte	0x2
	.value	0x12b
	.uleb128 0x2a
	.long	.LASF94
	.long	.LASF94
	.byte	0x7
	.byte	0
	.uleb128 0x2b
	.long	.LASF95
	.long	.LASF95
	.byte	0x2
	.value	0x15b
	.uleb128 0x2b
	.long	.LASF96
	.long	.LASF96
	.byte	0x2
	.value	0x132
	.uleb128 0x2b
	.long	.LASF97
	.long	.LASF97
	.byte	0x2
	.value	0x13d
	.uleb128 0x2b
	.long	.LASF98
	.long	.LASF98
	.byte	0x2
	.value	0x149
	.uleb128 0x2c
	.long	.LASF111
	.long	.LASF111
	.uleb128 0x2a
	.long	.LASF99
	.long	.LASF99
	.byte	0x2
	.byte	0x8c
	.uleb128 0x2a
	.long	.LASF100
	.long	.LASF100
	.byte	0x2
	.byte	0x9e
	.uleb128 0x2a
	.long	.LASF101
	.long	.LASF101
	.byte	0x2
	.byte	0xa7
	.uleb128 0x2a
	.long	.LASF102
	.long	.LASF102
	.byte	0x2
	.byte	0x94
	.uleb128 0x2b
	.long	.LASF103
	.long	.LASF103
	.byte	0x2
	.value	0x20e
	.uleb128 0x2a
	.long	.LASF104
	.long	.LASF104
	.byte	0x2
	.byte	0xcd
	.uleb128 0x2b
	.long	.LASF105
	.long	.LASF105
	.byte	0x2
	.value	0x207
	.uleb128 0x2a
	.long	.LASF106
	.long	.LASF106
	.byte	0x2
	.byte	0x52
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x1f
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL4
	.long	.LFE18
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL9-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL15
	.long	.LVL16
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL16
	.long	.LVL17-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL17-1
	.long	.LFE23
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL19
	.long	.LVL20-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL20-1
	.long	.LFE24
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL24
	.long	.LVL25
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x1f
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	.LVL37-1
	.long	.LVL44
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL38
	.long	.LVL39
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL43
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL37
	.long	.LVL38-1
	.value	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LVL39
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL47
	.long	.LVL48-1
	.value	0x1
	.byte	0x50
	.long	.LVL48-1
	.long	.LVL55
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST15:
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x50
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL49
	.long	.LVL50
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51
	.value	0x1
	.byte	0x50
	.long	.LVL53
	.long	.LVL54
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL49
	.long	.LVL50
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL62
	.long	.LVL63
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xc4
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB20
	.long	.LFE20
	.long	.LFB25
	.long	.LFE25
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"sys_mutex_lock"
.LASF50:
	.string	"sys_sem_signal"
.LASF43:
	.string	"sys_mutex_t"
.LASF104:
	.string	"aos_sem_wait"
.LASF68:
	.string	"begin_ms"
.LASF37:
	.string	"ERR_ABRT"
.LASF25:
	.string	"ERR_MEM"
.LASF34:
	.string	"ERR_ISCONN"
.LASF2:
	.string	"short int"
.LASF92:
	.string	"malloc"
.LASF10:
	.string	"sizetype"
.LASF63:
	.string	"sys_mutex_unlock"
.LASF39:
	.string	"ERR_CLSD"
.LASF58:
	.string	"sys_mbox_trypost"
.LASF57:
	.string	"sys_mbox_post"
.LASF44:
	.string	"sys_mbox_t"
.LASF51:
	.string	"sys_sem_new"
.LASF72:
	.string	"sys_jiffies"
.LASF83:
	.string	"file"
.LASF76:
	.string	"stacksize"
.LASF12:
	.string	"aos_hdl_t"
.LASF13:
	.string	"aos_task_t"
.LASF46:
	.string	"lwip_thread_fn"
.LASF110:
	.string	"aos_log_level"
.LASF24:
	.string	"ERR_OK"
.LASF38:
	.string	"ERR_RST"
.LASF84:
	.string	"line"
.LASF94:
	.string	"free"
.LASF29:
	.string	"ERR_INPROGRESS"
.LASF60:
	.string	"sys_mutex_new"
.LASF88:
	.string	"sys_arch_mutex"
.LASF18:
	.string	"float"
.LASF103:
	.string	"aos_now_ms"
.LASF78:
	.string	"task_handle"
.LASF6:
	.string	"long long int"
.LASF54:
	.string	"msg_start"
.LASF82:
	.string	"sys_arch_assert"
.LASF87:
	.string	"sys_init"
.LASF27:
	.string	"ERR_TIMEOUT"
.LASF81:
	.string	"pval"
.LASF4:
	.string	"long int"
.LASF93:
	.string	"aos_queue_new"
.LASF33:
	.string	"ERR_ALREADY"
.LASF89:
	.string	"aos_sem_new"
.LASF80:
	.string	"sys_arch_unprotect"
.LASF52:
	.string	"sys_mbox_new"
.LASF73:
	.string	"sys_thread_new"
.LASF55:
	.string	"sys_mbox_free"
.LASF97:
	.string	"aos_queue_send"
.LASF101:
	.string	"aos_mutex_unlock"
.LASF67:
	.string	"timeout"
.LASF9:
	.string	"long double"
.LASF48:
	.string	"stat"
.LASF28:
	.string	"ERR_RTE"
.LASF49:
	.string	"sys_sem_free"
.LASF90:
	.string	"aos_sem_free"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"ERR_CONN"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF36:
	.string	"ERR_IF"
.LASF5:
	.string	"long unsigned int"
.LASF75:
	.string	"thread"
.LASF102:
	.string	"aos_mutex_free"
.LASF26:
	.string	"ERR_BUF"
.LASF61:
	.string	"mutex"
.LASF56:
	.string	"start"
.LASF3:
	.string	"short unsigned int"
.LASF64:
	.string	"sys_mutex_free"
.LASF23:
	.string	"err_t"
.LASF11:
	.string	"char"
.LASF99:
	.string	"aos_mutex_new"
.LASF21:
	.string	"s8_t"
.LASF66:
	.string	"sys_arch_sem_wait"
.LASF85:
	.string	"net_close"
.LASF106:
	.string	"aos_task_new_ext"
.LASF69:
	.string	"end_ms"
.LASF17:
	.string	"_Bool"
.LASF107:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF74:
	.string	"name"
.LASF31:
	.string	"ERR_WOULDBLOCK"
.LASF79:
	.string	"sys_arch_protect"
.LASF15:
	.string	"aos_sem_t"
.LASF65:
	.string	"sys_now"
.LASF95:
	.string	"aos_queue_buf_ptr"
.LASF71:
	.string	"sys_arch_mbox_fetch"
.LASF19:
	.string	"double"
.LASF14:
	.string	"aos_mutex_t"
.LASF86:
	.string	"sockfd"
.LASF41:
	.string	"sys_sem_t"
.LASF53:
	.string	"size"
.LASF59:
	.string	"sys_arch_mbox_tryfetch"
.LASF47:
	.string	"count"
.LASF108:
	.string	"src/sys_arch.c"
.LASF16:
	.string	"aos_queue_t"
.LASF20:
	.string	"u8_t"
.LASF22:
	.string	"u32_t"
.LASF96:
	.string	"aos_queue_free"
.LASF32:
	.string	"ERR_USE"
.LASF100:
	.string	"aos_mutex_lock"
.LASF105:
	.string	"aos_now"
.LASF70:
	.string	"elapsed_ms"
.LASF109:
	.string	"/home/stone/Documents/pca"
.LASF40:
	.string	"ERR_ARG"
.LASF111:
	.string	"__stack_chk_fail"
.LASF8:
	.string	"unsigned int"
.LASF45:
	.string	"sys_thread_t"
.LASF42:
	.string	"sys_prot_t"
.LASF30:
	.string	"ERR_VAL"
.LASF77:
	.string	"prio"
.LASF91:
	.string	"aos_sem_signal"
.LASF98:
	.string	"aos_queue_recv"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
