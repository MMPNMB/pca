	.file	"ticker.c"
	.text
.Ltext0:
	.section	.text.unlikely.ticker_init,"ax",@progbits
.LCOLDB0:
	.section	.text.ticker_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ticker_init
.Ltext_cold0:
	.section	.text.ticker_init
	.globl	ticker_init
	.type	ticker_init, @function
ticker_init:
.LFB210:
	.file 1 "src/ticker.c"
	.loc 1 6448 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6491 0
	movl	$1, %eax
	.loc 1 6448 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL1:
	.loc 1 6491 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE210:
	.size	ticker_init, .-ticker_init
	.section	.text.unlikely.ticker_init
.LCOLDE0:
	.section	.text.ticker_init
.LHOTE0:
	.section	.text.unlikely.ticker_is_initialized,"ax",@progbits
.LCOLDB1:
	.section	.text.ticker_is_initialized,"ax",@progbits
.LHOTB1:
	.globl	ticker_is_initialized
	.type	ticker_is_initialized, @function
ticker_is_initialized:
.LFB211:
	.loc 1 6494 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6496 0
	xorl	%eax, %eax
	.loc 1 6494 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6496 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE211:
	.size	ticker_is_initialized, .-ticker_is_initialized
	.section	.text.unlikely.ticker_is_initialized
.LCOLDE1:
	.section	.text.ticker_is_initialized
.LHOTE1:
	.section	.text.unlikely.ticker_trigger,"ax",@progbits
.LCOLDB2:
	.section	.text.ticker_trigger,"ax",@progbits
.LHOTB2:
	.globl	ticker_trigger
	.type	ticker_trigger, @function
ticker_trigger:
.LFB212:
	.loc 1 6498 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6505 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE212:
	.size	ticker_trigger, .-ticker_trigger
	.section	.text.unlikely.ticker_trigger
.LCOLDE2:
	.section	.text.ticker_trigger
.LHOTE2:
	.section	.text.unlikely.ticker_start,"ax",@progbits
.LCOLDB3:
	.section	.text.ticker_start,"ax",@progbits
.LHOTB3:
	.globl	ticker_start
	.type	ticker_start, @function
ticker_start:
.LFB213:
	.loc 1 6511 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL5:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 6516 0
	movzbl	12(%ebp), %edx
.LVL6:
	.loc 1 6511 0
	movl	16(%ebp), %eax
	movl	36(%ebp), %edi
	movl	40(%ebp), %esi
	movl	%eax, -28(%ebp)
	.loc 1 6519 0
	movb	$0, %al
	.loc 1 6517 0
	movzbl	3(,%edx,8), %ebx
	leal	1(%ebx), %ecx
.LVL7:
	.loc 1 6519 0
	cmpb	0(,%edx,8), %cl
	cmovnb	%eax, %ecx
.LVL8:
	.loc 1 6521 0
	cmpb	1(,%edx,8), %cl
	movl	$1, %eax
	je	.L9
	.loc 1 6524 0
	imull	$48, %ebx, %ebx
	addl	4(,%edx,8), %ebx
.LVL9:
	.loc 1 6526 0
	movb	-28(%ebp), %al
	.loc 1 6539 0
	subl	$12, %esp
	.loc 1 6526 0
	movb	%al, 4(%ebx)
	.loc 1 6527 0
	movl	20(%ebp), %eax
	.loc 1 6531 0
	movw	%si, 26(%ebx)
	.loc 1 6525 0
	movl	$3, (%ebx)
	.loc 1 6539 0
	xorl	%esi, %esi
	.loc 1 6532 0
	movw	%di, 24(%ebx)
	.loc 1 6535 0
	movl	$2, 36(%ebx)
	.loc 1 6527 0
	movl	%eax, 8(%ebx)
	.loc 1 6528 0
	movl	24(%ebp), %eax
	movl	%eax, 12(%ebx)
	.loc 1 6529 0
	movl	28(%ebp), %eax
	movl	%eax, 16(%ebx)
	.loc 1 6530 0
	movl	32(%ebp), %eax
	movl	%eax, 20(%ebx)
	.loc 1 6533 0
	movl	44(%ebp), %eax
	movl	%eax, 28(%ebx)
	.loc 1 6534 0
	movl	48(%ebp), %eax
	movl	%eax, 32(%ebx)
	.loc 1 6536 0
	movl	52(%ebp), %eax
	movl	%eax, 40(%ebx)
	.loc 1 6537 0
	movl	56(%ebp), %eax
	movl	%eax, 44(%ebx)
	.loc 1 6538 0
	movb	%cl, 3(,%edx,8)
	.loc 1 6539 0
	pushl	%edx
	call	*%esi
.LVL10:
	addl	$12, %esp
	movzbl	%al, %eax
	pushl	$0
	pushl	$2
	pushl	%eax
	call	*%esi
.LVL11:
	.loc 1 6540 0
	movl	36(%ebx), %eax
	addl	$16, %esp
.LVL12:
.L9:
	.loc 1 6541 0
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
.LFE213:
	.size	ticker_start, .-ticker_start
	.section	.text.unlikely.ticker_start
.LCOLDE3:
	.section	.text.ticker_start
.LHOTE3:
	.section	.text.unlikely.ticker_update,"ax",@progbits
.LCOLDB4:
	.section	.text.ticker_update,"ax",@progbits
.LHOTB4:
	.globl	ticker_update
	.type	ticker_update, @function
ticker_update:
.LFB214:
	.loc 1 6546 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL14:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 6546 0
	movl	16(%ebp), %eax
	.loc 1 6551 0
	movzbl	12(%ebp), %edx
.LVL15:
	.loc 1 6546 0
	movl	20(%ebp), %esi
	movl	36(%ebp), %edi
	movl	%eax, -28(%ebp)
	movl	24(%ebp), %eax
	.loc 1 6552 0
	movzbl	3(,%edx,8), %ebx
	.loc 1 6546 0
	movl	%eax, -32(%ebp)
	movl	28(%ebp), %eax
	.loc 1 6552 0
	leal	1(%ebx), %ecx
.LVL16:
	.loc 1 6554 0
	cmpb	0(,%edx,8), %cl
	.loc 1 6546 0
	movl	%eax, -36(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 1 6554 0
	movb	$0, %al
	cmovnb	%eax, %ecx
.LVL17:
	.loc 1 6556 0
	cmpb	1(,%edx,8), %cl
	movl	$1, %eax
	je	.L16
	.loc 1 6559 0
	imull	$48, %ebx, %ebx
	addl	4(,%edx,8), %ebx
.LVL18:
	.loc 1 6561 0
	movb	-28(%ebp), %al
	.loc 1 6572 0
	subl	$12, %esp
	.loc 1 6561 0
	movb	%al, 4(%ebx)
	.loc 1 6563 0
	movl	-32(%ebp), %eax
	.loc 1 6562 0
	movw	%si, 8(%ebx)
	.loc 1 6560 0
	movl	$4, (%ebx)
	.loc 1 6572 0
	xorl	%esi, %esi
	.loc 1 6566 0
	movw	%di, 16(%ebx)
	.loc 1 6568 0
	movl	$2, 36(%ebx)
	.loc 1 6563 0
	movw	%ax, 10(%ebx)
	.loc 1 6564 0
	movl	-36(%ebp), %eax
	movw	%ax, 12(%ebx)
	.loc 1 6565 0
	movl	-40(%ebp), %eax
	movw	%ax, 14(%ebx)
	.loc 1 6567 0
	movb	-44(%ebp), %al
	movb	%al, 18(%ebx)
	.loc 1 6569 0
	movl	44(%ebp), %eax
	movl	%eax, 40(%ebx)
	.loc 1 6570 0
	movl	48(%ebp), %eax
	movl	%eax, 44(%ebx)
	.loc 1 6571 0
	movb	%cl, 3(,%edx,8)
	.loc 1 6572 0
	pushl	%edx
	call	*%esi
.LVL19:
	addl	$12, %esp
	movzbl	%al, %eax
	pushl	$0
	pushl	$2
	pushl	%eax
	call	*%esi
.LVL20:
	.loc 1 6573 0
	movl	36(%ebx), %eax
	addl	$16, %esp
.LVL21:
.L16:
	.loc 1 6574 0
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
.LFE214:
	.size	ticker_update, .-ticker_update
	.section	.text.unlikely.ticker_update
.LCOLDE4:
	.section	.text.ticker_update
.LHOTE4:
	.section	.text.unlikely.ticker_stop,"ax",@progbits
.LCOLDB5:
	.section	.text.ticker_stop,"ax",@progbits
.LHOTB5:
	.globl	ticker_stop
	.type	ticker_stop, @function
ticker_stop:
.LFB215:
	.loc 1 6577 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6585 0
	movb	$0, %al
	.loc 1 6577 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL23:
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 6582 0
	movzbl	12(%ebp), %edx
.LVL24:
	.loc 1 6577 0
	movl	16(%ebp), %esi
	.loc 1 6583 0
	movzbl	3(,%edx,8), %ebx
	leal	1(%ebx), %ecx
.LVL25:
	.loc 1 6585 0
	cmpb	0(,%edx,8), %cl
	cmovnb	%eax, %ecx
.LVL26:
	.loc 1 6587 0
	cmpb	1(,%edx,8), %cl
	movl	$1, %eax
	je	.L22
	.loc 1 6590 0
	imull	$48, %ebx, %ebx
	addl	4(,%edx,8), %ebx
.LVL27:
	.loc 1 6592 0
	movl	%esi, %eax
	.loc 1 6597 0
	subl	$12, %esp
	xorl	%esi, %esi
	.loc 1 6592 0
	movb	%al, 4(%ebx)
	.loc 1 6594 0
	movl	20(%ebp), %eax
	.loc 1 6591 0
	movl	$5, (%ebx)
	.loc 1 6593 0
	movl	$2, 36(%ebx)
	.loc 1 6594 0
	movl	%eax, 40(%ebx)
	.loc 1 6595 0
	movl	24(%ebp), %eax
	movl	%eax, 44(%ebx)
	.loc 1 6596 0
	movb	%cl, 3(,%edx,8)
	.loc 1 6597 0
	pushl	%edx
	call	*%esi
.LVL28:
	addl	$12, %esp
	movzbl	%al, %eax
	pushl	$0
	pushl	$2
	pushl	%eax
	call	*%esi
.LVL29:
	.loc 1 6598 0
	movl	36(%ebx), %eax
	addl	$16, %esp
.LVL30:
.L22:
	.loc 1 6599 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE215:
	.size	ticker_stop, .-ticker_stop
	.section	.text.unlikely.ticker_stop
.LCOLDE5:
	.section	.text.ticker_stop
.LHOTE5:
	.section	.text.unlikely.ticker_next_slot_get,"ax",@progbits
.LCOLDB6:
	.section	.text.ticker_next_slot_get,"ax",@progbits
.LHOTB6:
	.globl	ticker_next_slot_get
	.type	ticker_next_slot_get, @function
ticker_next_slot_get:
.LFB216:
	.loc 1 6603 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6611 0
	movb	$0, %al
	.loc 1 6603 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL32:
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 6608 0
	movzbl	12(%ebp), %edx
.LVL33:
	.loc 1 6609 0
	movzbl	3(,%edx,8), %ebx
	leal	1(%ebx), %ecx
.LVL34:
	.loc 1 6611 0
	cmpb	0(,%edx,8), %cl
	cmovnb	%eax, %ecx
.LVL35:
	.loc 1 6613 0
	cmpb	1(,%edx,8), %cl
	movl	$1, %eax
	je	.L28
	.loc 1 6616 0
	imull	$48, %ebx, %ebx
	addl	4(,%edx,8), %ebx
.LVL36:
	.loc 1 6619 0
	movl	16(%ebp), %eax
	.loc 1 6626 0
	subl	$12, %esp
	xorl	%esi, %esi
	.loc 1 6619 0
	movl	%eax, 8(%ebx)
	.loc 1 6620 0
	movl	20(%ebp), %eax
	.loc 1 6617 0
	movl	$2, (%ebx)
	.loc 1 6618 0
	movb	$-1, 4(%ebx)
	.loc 1 6622 0
	movl	$2, 36(%ebx)
	.loc 1 6620 0
	movl	%eax, 12(%ebx)
	.loc 1 6621 0
	movl	24(%ebp), %eax
	movl	%eax, 16(%ebx)
	.loc 1 6623 0
	movl	28(%ebp), %eax
	movl	%eax, 40(%ebx)
	.loc 1 6624 0
	movl	32(%ebp), %eax
	movl	%eax, 44(%ebx)
	.loc 1 6625 0
	movb	%cl, 3(,%edx,8)
	.loc 1 6626 0
	pushl	%edx
	call	*%esi
.LVL37:
	addl	$12, %esp
	movzbl	%al, %eax
	pushl	$0
	pushl	$2
	pushl	%eax
	call	*%esi
.LVL38:
	.loc 1 6627 0
	movl	36(%ebx), %eax
	addl	$16, %esp
.LVL39:
.L28:
	.loc 1 6628 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE216:
	.size	ticker_next_slot_get, .-ticker_next_slot_get
	.section	.text.unlikely.ticker_next_slot_get
.LCOLDE6:
	.section	.text.ticker_next_slot_get
.LHOTE6:
	.section	.text.unlikely.ticker_job_idle_get,"ax",@progbits
.LCOLDB7:
	.section	.text.ticker_job_idle_get,"ax",@progbits
.LHOTB7:
	.globl	ticker_job_idle_get
	.type	ticker_job_idle_get, @function
ticker_job_idle_get:
.LFB217:
	.loc 1 6631 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6639 0
	movb	$0, %al
	.loc 1 6631 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL41:
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 6636 0
	movzbl	12(%ebp), %edx
.LVL42:
	.loc 1 6637 0
	movzbl	3(,%edx,8), %ebx
	leal	1(%ebx), %ecx
.LVL43:
	.loc 1 6639 0
	cmpb	0(,%edx,8), %cl
	cmovnb	%eax, %ecx
.LVL44:
	.loc 1 6641 0
	cmpb	1(,%edx,8), %cl
	movl	$1, %eax
	je	.L34
	.loc 1 6644 0
	imull	$48, %ebx, %ebx
	addl	4(,%edx,8), %ebx
.LVL45:
	.loc 1 6648 0
	movl	16(%ebp), %eax
	.loc 1 6651 0
	subl	$12, %esp
	xorl	%esi, %esi
	.loc 1 6648 0
	movl	%eax, 40(%ebx)
	.loc 1 6649 0
	movl	20(%ebp), %eax
	.loc 1 6645 0
	movl	$1, (%ebx)
	.loc 1 6646 0
	movb	$-1, 4(%ebx)
	.loc 1 6647 0
	movl	$2, 36(%ebx)
	.loc 1 6649 0
	movl	%eax, 44(%ebx)
	.loc 1 6650 0
	movb	%cl, 3(,%edx,8)
	.loc 1 6651 0
	pushl	%edx
	call	*%esi
.LVL46:
	addl	$12, %esp
	movzbl	%al, %eax
	pushl	$0
	pushl	$2
	pushl	%eax
	call	*%esi
.LVL47:
	.loc 1 6652 0
	movl	36(%ebx), %eax
	addl	$16, %esp
.LVL48:
.L34:
	.loc 1 6653 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE217:
	.size	ticker_job_idle_get, .-ticker_job_idle_get
	.section	.text.unlikely.ticker_job_idle_get
.LCOLDE7:
	.section	.text.ticker_job_idle_get
.LHOTE7:
	.section	.text.unlikely.ticker_job_sched,"ax",@progbits
.LCOLDB8:
	.section	.text.ticker_job_sched,"ax",@progbits
.LHOTB8:
	.globl	ticker_job_sched
	.type	ticker_job_sched, @function
ticker_job_sched:
.LFB218:
	.loc 1 6655 0
	.cfi_startproc
.LVL49:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL50:
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 6657 0
	xorl	%ebx, %ebx
	.loc 1 6655 0
	subl	$16, %esp
	.loc 1 6657 0
	movzbl	12(%ebp), %eax
	pushl	%eax
	call	*%ebx
.LVL51:
	addl	$12, %esp
	movzbl	%al, %eax
	pushl	$0
	pushl	$2
	pushl	%eax
	call	*%ebx
.LVL52:
	.loc 1 6658 0
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE218:
	.size	ticker_job_sched, .-ticker_job_sched
	.section	.text.unlikely.ticker_job_sched
.LCOLDE8:
	.section	.text.ticker_job_sched
.LHOTE8:
	.section	.text.unlikely.ticker_ticks_now_get,"ax",@progbits
.LCOLDB9:
	.section	.text.ticker_ticks_now_get,"ax",@progbits
.LHOTB9:
	.globl	ticker_ticks_now_get
	.type	ticker_ticks_now_get, @function
ticker_ticks_now_get:
.LFB219:
	.loc 1 6660 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6662 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6661 0
	jmp	cntr_cnt_get
.LVL53:
	.cfi_endproc
.LFE219:
	.size	ticker_ticks_now_get, .-ticker_ticks_now_get
	.section	.text.unlikely.ticker_ticks_now_get
.LCOLDE9:
	.section	.text.ticker_ticks_now_get
.LHOTE9:
	.section	.text.unlikely.ticker_ticks_diff_get,"ax",@progbits
.LCOLDB10:
	.section	.text.ticker_ticks_diff_get,"ax",@progbits
.LHOTB10:
	.globl	ticker_ticks_diff_get
	.type	ticker_ticks_diff_get, @function
ticker_ticks_diff_get:
.LFB220:
	.loc 1 6664 0
	.cfi_startproc
.LVL54:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6665 0
	movl	8(%ebp), %eax
	subl	12(%ebp), %eax
	.loc 1 6666 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6665 0
	andl	$16777215, %eax
	.loc 1 6666 0
	ret
	.cfi_endproc
.LFE220:
	.size	ticker_ticks_diff_get, .-ticker_ticks_diff_get
	.section	.text.unlikely.ticker_ticks_diff_get
.LCOLDE10:
	.section	.text.ticker_ticks_diff_get
.LHOTE10:
	.text
.Letext0:
	.section	.text.unlikely.ticker_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb84
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF105
	.byte	0xc
	.long	.LASF106
	.long	.LASF107
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
	.uleb128 0x3
	.long	.LASF9
	.byte	0x1
	.byte	0x5
	.long	0x4c
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x1
	.byte	0x17
	.long	0x41
	.uleb128 0x3
	.long	.LASF11
	.byte	0x1
	.byte	0x33
	.long	0x2c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x34
	.long	0x3a
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x35
	.long	0x6f
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x6
	.byte	0x4
	.long	0x81
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.value	0x449
	.long	0xcb
	.uleb128 0x6
	.byte	0x4
	.long	0xd1
	.uleb128 0x8
	.long	0xeb
	.uleb128 0x9
	.long	0x97
	.uleb128 0x9
	.long	0x97
	.uleb128 0x9
	.long	0x8c
	.uleb128 0x9
	.long	0xb0
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.value	0x44b
	.long	0xf7
	.uleb128 0x6
	.byte	0x4
	.long	0xfd
	.uleb128 0x8
	.long	0x10d
	.uleb128 0x9
	.long	0x97
	.uleb128 0x9
	.long	0xb0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF19
	.uleb128 0xa
	.long	0x76
	.uleb128 0xb
	.long	.LASF38
	.byte	0x24
	.byte	0x1
	.value	0x14f8
	.long	0x1dd
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.value	0x14f9
	.long	0x81
	.byte	0
	.uleb128 0xd
	.string	"req"
	.byte	0x1
	.value	0x14fa
	.long	0x81
	.byte	0x1
	.uleb128 0xd
	.string	"ack"
	.byte	0x1
	.value	0x14fb
	.long	0x81
	.byte	0x2
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.value	0x14fc
	.long	0x81
	.byte	0x3
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.value	0x14fd
	.long	0x97
	.byte	0x4
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.value	0x14fe
	.long	0x97
	.byte	0x8
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.value	0x14ff
	.long	0xbf
	.byte	0xc
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.value	0x1500
	.long	0xb0
	.byte	0x10
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.value	0x1501
	.long	0x8c
	.byte	0x14
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.value	0x1502
	.long	0x8c
	.byte	0x16
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.value	0x1503
	.long	0x8c
	.byte	0x18
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.value	0x1504
	.long	0x8c
	.byte	0x1a
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.value	0x1505
	.long	0x97
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.value	0x1506
	.long	0x97
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.long	.LASF108
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0x1508
	.long	0x213
	.uleb128 0xf
	.long	.LASF32
	.byte	0
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.uleb128 0xf
	.long	.LASF34
	.byte	0x2
	.uleb128 0xf
	.long	.LASF35
	.byte	0x3
	.uleb128 0xf
	.long	.LASF36
	.byte	0x4
	.uleb128 0xf
	.long	.LASF37
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x1c
	.byte	0x1
	.value	0x1510
	.long	0x289
	.uleb128 0xc
	.long	.LASF40
	.byte	0x1
	.value	0x1511
	.long	0x97
	.byte	0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x1
	.value	0x1512
	.long	0x97
	.byte	0x4
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.value	0x1513
	.long	0x97
	.byte	0x8
	.uleb128 0xc
	.long	.LASF30
	.byte	0x1
	.value	0x1514
	.long	0x97
	.byte	0xc
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.value	0x1515
	.long	0x8c
	.byte	0x10
	.uleb128 0xc
	.long	.LASF27
	.byte	0x1
	.value	0x1516
	.long	0x8c
	.byte	0x12
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.value	0x1517
	.long	0xbf
	.byte	0x14
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.value	0x1518
	.long	0xb0
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	.LASF44
	.byte	0xc
	.byte	0x1
	.value	0x151a
	.long	0x2e5
	.uleb128 0xc
	.long	.LASF45
	.byte	0x1
	.value	0x151b
	.long	0x8c
	.byte	0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x1
	.value	0x151c
	.long	0x8c
	.byte	0x2
	.uleb128 0xc
	.long	.LASF47
	.byte	0x1
	.value	0x151d
	.long	0x8c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF48
	.byte	0x1
	.value	0x151e
	.long	0x8c
	.byte	0x6
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.value	0x151f
	.long	0x8c
	.byte	0x8
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.value	0x1520
	.long	0x81
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	.LASF49
	.byte	0xc
	.byte	0x1
	.value	0x1522
	.long	0x31a
	.uleb128 0xc
	.long	.LASF50
	.byte	0x1
	.value	0x1523
	.long	0xb9
	.byte	0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x1
	.value	0x1524
	.long	0x31a
	.byte	0x4
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.value	0x1525
	.long	0x31a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x97
	.uleb128 0x10
	.byte	0x1c
	.byte	0x1
	.value	0x152a
	.long	0x34e
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.value	0x152b
	.long	0x213
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.value	0x152c
	.long	0x289
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.value	0x152d
	.long	0x2e5
	.byte	0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x30
	.byte	0x1
	.value	0x1527
	.long	0x3a8
	.uleb128 0xd
	.string	"op"
	.byte	0x1
	.value	0x1528
	.long	0x1dd
	.byte	0
	.uleb128 0xd
	.string	"id"
	.byte	0x1
	.value	0x1529
	.long	0x81
	.byte	0x4
	.uleb128 0xc
	.long	.LASF56
	.byte	0x1
	.value	0x152e
	.long	0x320
	.byte	0x8
	.uleb128 0xc
	.long	.LASF57
	.byte	0x1
	.value	0x152f
	.long	0x97
	.byte	0x24
	.uleb128 0xc
	.long	.LASF58
	.byte	0x1
	.value	0x1530
	.long	0xeb
	.byte	0x28
	.uleb128 0xc
	.long	.LASF59
	.byte	0x1
	.value	0x1531
	.long	0xb0
	.byte	0x2c
	.byte	0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x8
	.byte	0x1
	.value	0x1533
	.long	0x3f7
	.uleb128 0xc
	.long	.LASF61
	.byte	0x1
	.value	0x1534
	.long	0x81
	.byte	0
	.uleb128 0xc
	.long	.LASF62
	.byte	0x1
	.value	0x1535
	.long	0x81
	.byte	0x1
	.uleb128 0xc
	.long	.LASF63
	.byte	0x1
	.value	0x1536
	.long	0x81
	.byte	0x2
	.uleb128 0xc
	.long	.LASF64
	.byte	0x1
	.value	0x1537
	.long	0x81
	.byte	0x3
	.uleb128 0xc
	.long	.LASF65
	.byte	0x1
	.value	0x1538
	.long	0x3f7
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x34e
	.uleb128 0xb
	.long	.LASF66
	.byte	0x2c
	.byte	0x1
	.value	0x153a
	.long	0x4db
	.uleb128 0xc
	.long	.LASF67
	.byte	0x1
	.value	0x153b
	.long	0x4db
	.byte	0
	.uleb128 0xc
	.long	.LASF68
	.byte	0x1
	.value	0x153c
	.long	0x4e1
	.byte	0x4
	.uleb128 0xc
	.long	.LASF69
	.byte	0x1
	.value	0x153d
	.long	0x81
	.byte	0x8
	.uleb128 0xc
	.long	.LASF70
	.byte	0x1
	.value	0x153e
	.long	0x81
	.byte	0x9
	.uleb128 0xc
	.long	.LASF71
	.byte	0x1
	.value	0x153f
	.long	0x81
	.byte	0xa
	.uleb128 0xc
	.long	.LASF72
	.byte	0x1
	.value	0x1540
	.long	0x81
	.byte	0xb
	.uleb128 0xc
	.long	.LASF73
	.byte	0x1
	.value	0x1541
	.long	0x4e7
	.byte	0xc
	.uleb128 0xc
	.long	.LASF51
	.byte	0x1
	.value	0x1542
	.long	0x97
	.byte	0x14
	.uleb128 0xc
	.long	.LASF74
	.byte	0x1
	.value	0x1543
	.long	0x81
	.byte	0x18
	.uleb128 0xc
	.long	.LASF75
	.byte	0x1
	.value	0x1544
	.long	0x81
	.byte	0x19
	.uleb128 0xc
	.long	.LASF76
	.byte	0x1
	.value	0x1545
	.long	0x8c
	.byte	0x1a
	.uleb128 0xc
	.long	.LASF77
	.byte	0x1
	.value	0x1546
	.long	0x81
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF78
	.byte	0x1
	.value	0x1547
	.long	0x81
	.byte	0x1d
	.uleb128 0xc
	.long	.LASF79
	.byte	0x1
	.value	0x1548
	.long	0x506
	.byte	0x20
	.uleb128 0xc
	.long	.LASF80
	.byte	0x1
	.value	0x1549
	.long	0x521
	.byte	0x24
	.uleb128 0xc
	.long	.LASF81
	.byte	0x1
	.value	0x154a
	.long	0x532
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x119
	.uleb128 0x6
	.byte	0x4
	.long	0x3a8
	.uleb128 0x12
	.long	0x97
	.long	0x4f7
	.uleb128 0x13
	.long	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x81
	.long	0x506
	.uleb128 0x9
	.long	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x4f7
	.uleb128 0x8
	.long	0x521
	.uleb128 0x9
	.long	0x81
	.uleb128 0x9
	.long	0x81
	.uleb128 0x9
	.long	0x81
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x50c
	.uleb128 0x8
	.long	0x532
	.uleb128 0x9
	.long	0x97
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x527
	.uleb128 0x15
	.long	.LASF86
	.byte	0x1
	.value	0x192e
	.long	0x97
	.long	.LFB210
	.long	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e3
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x192e
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF69
	.byte	0x1
	.value	0x192e
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF67
	.byte	0x1
	.value	0x192e
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.value	0x192f
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF68
	.byte	0x1
	.value	0x192f
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.value	0x192f
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x16
	.long	.LASF65
	.byte	0x1
	.value	0x192f
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x1931
	.long	0x5e3
	.uleb128 0x18
	.long	.LASF91
	.byte	0x1
	.value	0x1932
	.long	0x3f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x17
	.long	.LASF85
	.byte	0x1
	.value	0x1933
	.long	0x4e1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x3fd
	.uleb128 0x15
	.long	.LASF87
	.byte	0x1
	.value	0x195d
	.long	0x10d
	.long	.LFB211
	.long	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.long	0x613
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x195d
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LASF96
	.byte	0x1
	.value	0x1961
	.long	.LFB212
	.long	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.long	0x639
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x1961
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.value	0x196a
	.long	0x97
	.long	.LFB213
	.long	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.long	0x763
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x196a
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x196a
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.value	0x196a
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.value	0x196b
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF41
	.byte	0x1
	.value	0x196b
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF22
	.byte	0x1
	.value	0x196b
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.value	0x196c
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.value	0x196c
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x16
	.long	.LASF27
	.byte	0x1
	.value	0x196c
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x16
	.long	.LASF17
	.byte	0x1
	.value	0x196d
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x16
	.long	.LASF25
	.byte	0x1
	.value	0x196d
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.value	0x196e
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.value	0x196e
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x1970
	.long	0x5e3
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x1971
	.long	0x3f7
	.long	.LLST0
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x1972
	.long	0x4e1
	.long	.LLST1
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.value	0x1973
	.long	0x81
	.long	.LLST2
	.uleb128 0x1b
	.long	.LVL10
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL11
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF92
	.byte	0x1
	.value	0x198e
	.long	0x97
	.long	.LFB214
	.long	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.long	0x86f
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x198e
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x198e
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.value	0x198e
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF45
	.byte	0x1
	.value	0x198f
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF46
	.byte	0x1
	.value	0x198f
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.value	0x1990
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.value	0x1990
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.value	0x1990
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x16
	.long	.LASF21
	.byte	0x1
	.value	0x1991
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.value	0x1991
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.value	0x1991
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x1993
	.long	0x5e3
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x1994
	.long	0x3f7
	.long	.LLST3
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x1995
	.long	0x4e1
	.long	.LLST4
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.value	0x1996
	.long	0x81
	.long	.LLST5
	.uleb128 0x1b
	.long	.LVL19
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL20
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF93
	.byte	0x1
	.value	0x19af
	.long	0x97
	.long	.LFB215
	.long	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.long	0x921
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x19af
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x19af
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.value	0x19af
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.value	0x19b0
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.value	0x19b0
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x19b2
	.long	0x5e3
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x19b3
	.long	0x3f7
	.long	.LLST6
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x19b4
	.long	0x4e1
	.long	.LLST7
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.value	0x19b5
	.long	0x81
	.long	.LLST8
	.uleb128 0x1b
	.long	.LVL28
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL29
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF94
	.byte	0x1
	.value	0x19c8
	.long	0x97
	.long	.LFB216
	.long	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f1
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x19c8
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x19c8
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.value	0x19c8
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.value	0x19c9
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF23
	.byte	0x1
	.value	0x19c9
	.long	0x31a
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.value	0x19ca
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.value	0x19ca
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x19cc
	.long	0x5e3
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x19cd
	.long	0x3f7
	.long	.LLST9
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x19ce
	.long	0x4e1
	.long	.LLST10
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.value	0x19cf
	.long	0x81
	.long	.LLST11
	.uleb128 0x1b
	.long	.LVL37
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL38
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF95
	.byte	0x1
	.value	0x19e5
	.long	0x97
	.long	.LFB217
	.long	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.long	0xa94
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x19e5
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x19e5
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF58
	.byte	0x1
	.value	0x19e6
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.value	0x19e6
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x19e8
	.long	0x5e3
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x19e9
	.long	0x3f7
	.long	.LLST12
	.uleb128 0x1a
	.long	.LASF68
	.byte	0x1
	.value	0x19ea
	.long	0x4e1
	.long	.LLST13
	.uleb128 0x1a
	.long	.LASF64
	.byte	0x1
	.value	0x19eb
	.long	0x81
	.long	.LLST14
	.uleb128 0x1b
	.long	.LVL46
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL47
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LASF97
	.byte	0x1
	.value	0x19fe
	.long	.LFB218
	.long	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.long	0xae5
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.value	0x19fe
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF89
	.byte	0x1
	.value	0x19fe
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF84
	.byte	0x1
	.value	0x1a00
	.long	0x5e3
	.uleb128 0x1b
	.long	.LVL51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.long	.LASF98
	.byte	0x1
	.value	0x1a03
	.long	0x97
	.long	.LFB219
	.long	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.long	0xb09
	.uleb128 0x1c
	.long	.LVL53
	.long	0xb7b
	.byte	0
	.uleb128 0x15
	.long	.LASF99
	.byte	0x1
	.value	0x1a07
	.long	0x97
	.long	.LFB220
	.long	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.long	0xb42
	.uleb128 0x16
	.long	.LASF100
	.byte	0x1
	.value	0x1a07
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF101
	.byte	0x1
	.value	0x1a07
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x12
	.long	0x3fd
	.long	0xb52
	.uleb128 0x13
	.long	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0x17
	.long	.LASF102
	.byte	0x1
	.value	0x154c
	.long	0xb5e
	.uleb128 0x1d
	.long	0xb42
	.uleb128 0x1e
	.long	.LASF103
	.byte	0x1
	.value	0x222
	.long	0x6f
	.uleb128 0x1e
	.long	.LASF104
	.byte	0x1
	.value	0xf31
	.long	0x114
	.uleb128 0x1f
	.long	.LASF109
	.long	.LASF109
	.byte	0x1
	.value	0x43d
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.long	.LVL9
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL6
	.long	.LVL10-1
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	.LVL10-1
	.long	.LFE213
	.value	0xa
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL10-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL18
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL15
	.long	.LVL19-1
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	.LVL19-1
	.long	.LFE214
	.value	0xa
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL16
	.long	.LVL19-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL27
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL28-1
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	.LVL28-1
	.long	.LFE215
	.value	0xa
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL25
	.long	.LVL28-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST9:
	.long	.LVL36
	.long	.LVL39
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST10:
	.long	.LVL33
	.long	.LVL37-1
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	.LVL37-1
	.long	.LFE216
	.value	0xa
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL34
	.long	.LVL37-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST12:
	.long	.LVL45
	.long	.LVL48
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST13:
	.long	.LVL42
	.long	.LVL46-1
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	.LVL46-1
	.long	.LFE217
	.value	0xa
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL43
	.long	.LVL46-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB210
	.long	.LFE210-.LFB210
	.long	.LFB211
	.long	.LFE211-.LFB211
	.long	.LFB212
	.long	.LFE212-.LFB212
	.long	.LFB213
	.long	.LFE213-.LFB213
	.long	.LFB214
	.long	.LFE214-.LFB214
	.long	.LFB215
	.long	.LFE215-.LFB215
	.long	.LFB216
	.long	.LFE216-.LFB216
	.long	.LFB217
	.long	.LFE217-.LFB217
	.long	.LFB218
	.long	.LFE218-.LFB218
	.long	.LFB219
	.long	.LFE219-.LFB219
	.long	.LFB220
	.long	.LFE220-.LFB220
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB210
	.long	.LFE210
	.long	.LFB211
	.long	.LFE211
	.long	.LFB212
	.long	.LFE212
	.long	.LFB213
	.long	.LFE213
	.long	.LFB214
	.long	.LFE214
	.long	.LFB215
	.long	.LFE215
	.long	.LFB216
	.long	.LFE216
	.long	.LFB217
	.long	.LFE217
	.long	.LFB218
	.long	.LFE218
	.long	.LFB219
	.long	.LFE219
	.long	.LFB220
	.long	.LFE220
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"ticker_op_func"
.LASF35:
	.string	"TICKER_USER_OP_TYPE_START"
.LASF73:
	.string	"ticks_elapsed"
.LASF78:
	.string	"worker_trigger"
.LASF26:
	.string	"ticks_to_expire_minus"
.LASF75:
	.string	"ticker_id_slot_previous"
.LASF89:
	.string	"user_id"
.LASF99:
	.string	"ticker_ticks_diff_get"
.LASF15:
	.string	"sizetype"
.LASF91:
	.string	"user_op_"
.LASF65:
	.string	"user_op"
.LASF51:
	.string	"ticks_current"
.LASF94:
	.string	"ticker_next_slot_get"
.LASF41:
	.string	"ticks_first"
.LASF82:
	.string	"instance_index"
.LASF69:
	.string	"count_node"
.LASF39:
	.string	"ticker_user_op_start"
.LASF29:
	.string	"lazy_current"
.LASF108:
	.string	"ticker_user_op_type"
.LASF2:
	.string	"short int"
.LASF60:
	.string	"ticker_user"
.LASF21:
	.string	"force"
.LASF36:
	.string	"TICKER_USER_OP_TYPE_UPDATE"
.LASF66:
	.string	"ticker_instance"
.LASF96:
	.string	"ticker_trigger"
.LASF98:
	.string	"ticker_ticks_now_get"
.LASF32:
	.string	"TICKER_USER_OP_TYPE_NONE"
.LASF90:
	.string	"ticks_anchor"
.LASF77:
	.string	"job_guard"
.LASF58:
	.string	"fp_op_func"
.LASF101:
	.string	"ticks_old"
.LASF37:
	.string	"TICKER_USER_OP_TYPE_STOP"
.LASF22:
	.string	"ticks_periodic"
.LASF24:
	.string	"timeout_func"
.LASF6:
	.string	"long long int"
.LASF97:
	.string	"ticker_job_sched"
.LASF81:
	.string	"fp_cmp_set"
.LASF53:
	.string	"update"
.LASF43:
	.string	"fp_timeout_func"
.LASF4:
	.string	"long int"
.LASF59:
	.string	"op_context"
.LASF25:
	.string	"context"
.LASF103:
	.string	"aos_log_level"
.LASF67:
	.string	"node"
.LASF56:
	.string	"params"
.LASF45:
	.string	"ticks_drift_plus"
.LASF23:
	.string	"ticks_to_expire"
.LASF14:
	.string	"long double"
.LASF107:
	.string	"/home/stone/Documents/pca"
.LASF42:
	.string	"lazy"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"lazy_periodic"
.LASF106:
	.string	"src/ticker.c"
.LASF79:
	.string	"fp_caller_id_get"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF38:
	.string	"ticker_node"
.LASF40:
	.string	"ticks_at_start"
.LASF5:
	.string	"long unsigned int"
.LASF84:
	.string	"instance"
.LASF85:
	.string	"users"
.LASF76:
	.string	"ticks_slot_previous"
.LASF64:
	.string	"last"
.LASF44:
	.string	"ticker_user_op_update"
.LASF48:
	.string	"ticks_slot_minus"
.LASF52:
	.string	"start"
.LASF3:
	.string	"short unsigned int"
.LASF57:
	.string	"status"
.LASF16:
	.string	"char"
.LASF109:
	.string	"cntr_cnt_get"
.LASF13:
	.string	"u32_t"
.LASF80:
	.string	"fp_sched"
.LASF10:
	.string	"int32_t"
.LASF9:
	.string	"__int32_t"
.LASF34:
	.string	"TICKER_USER_OP_TYPE_SLOT_GET"
.LASF100:
	.string	"ticks_now"
.LASF88:
	.string	"ticker_start"
.LASF19:
	.string	"_Bool"
.LASF74:
	.string	"ticker_id_head"
.LASF87:
	.string	"ticker_is_initialized"
.LASF50:
	.string	"ticker_id"
.LASF86:
	.string	"ticker_init"
.LASF93:
	.string	"ticker_stop"
.LASF61:
	.string	"count_user_op"
.LASF72:
	.string	"ticks_elapsed_last"
.LASF104:
	.string	"ITM_RxBuffer"
.LASF55:
	.string	"ticker_user_op"
.LASF27:
	.string	"ticks_slot"
.LASF70:
	.string	"count_user"
.LASF11:
	.string	"u8_t"
.LASF105:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF83:
	.string	"count_op"
.LASF54:
	.string	"slot_get"
.LASF12:
	.string	"u16_t"
.LASF49:
	.string	"ticker_user_op_slot_get"
.LASF17:
	.string	"ticker_timeout_func"
.LASF31:
	.string	"remainder_current"
.LASF47:
	.string	"ticks_slot_plus"
.LASF46:
	.string	"ticks_drift_minus"
.LASF102:
	.string	"_instance"
.LASF95:
	.string	"ticker_job_idle_get"
.LASF8:
	.string	"unsigned int"
.LASF30:
	.string	"remainder_periodic"
.LASF33:
	.string	"TICKER_USER_OP_TYPE_IDLE_GET"
.LASF63:
	.string	"middle"
.LASF68:
	.string	"user"
.LASF92:
	.string	"ticker_update"
.LASF20:
	.string	"next"
.LASF62:
	.string	"first"
.LASF71:
	.string	"ticks_elapsed_first"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
