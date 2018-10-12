	.file	"mico_rhino.c"
	.text
.Ltext0:
	.section	.text.unlikely.timmer_wrapper,"ax",@progbits
.LCOLDB0:
	.section	.text.timmer_wrapper,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.timmer_wrapper
.Ltext_cold0:
	.section	.text.timmer_wrapper
	.type	timmer_wrapper, @function
timmer_wrapper:
.LFB40:
	.file 1 "kernel/vcall/mico/mico_rhino.c"
	.loc 1 362 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 362 0
	movl	12(%ebp), %edx
.LVL1:
	.loc 1 367 0
	movl	4(%edx), %eax
	testl	%eax, %eax
	je	.L1
	.loc 1 368 0
	movl	8(%edx), %edx
	movl	%edx, 8(%ebp)
.LVL2:
	.loc 1 370 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 368 0
	jmp	*%eax
.LVL3:
.L1:
	.cfi_restore_state
	.loc 1 370 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	timmer_wrapper, .-timmer_wrapper
	.section	.text.unlikely.timmer_wrapper
.LCOLDE0:
	.section	.text.timmer_wrapper
.LHOTE0:
	.section	.text.unlikely.mico_rtos_create_thread,"ax",@progbits
.LCOLDB1:
	.section	.text.mico_rtos_create_thread,"ax",@progbits
.LHOTB1:
	.globl	mico_rtos_create_thread
	.type	mico_rtos_create_thread, @function
mico_rtos_create_thread:
.LFB15:
	.loc 1 19 0
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
	.loc 1 19 0
	movl	8(%ebp), %esi
	movl	16(%ebp), %edx
	movl	%gs:20, %ebx
	movl	%ebx, -28(%ebp)
	xorl	%ebx, %ebx
	movl	20(%ebp), %edi
	movl	24(%ebp), %eax
	.loc 1 23 0
	testl	%esi, %esi
	.loc 1 19 0
	movl	28(%ebp), %ecx
	movzbl	12(%ebp), %ebx
	.loc 1 23 0
	jne	.L6
	.loc 1 24 0
	subl	$12, %esp
	shrl	$2, %eax
	pushl	$1
	pushl	%edi
	pushl	%eax
	leal	-32(%ebp), %eax
	pushl	$0
	pushl	$0
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	jmp	.L10
.L6:
	.loc 1 26 0
	subl	$12, %esp
	shrl	$2, %eax
	pushl	$1
	pushl	%edi
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%esi
.L10:
	call	krhino_task_dyn_create
.LVL5:
	addl	$48, %esp
	testl	%eax, %eax
	setne	%al
.LVL6:
	movzbl	%al, %eax
	negl	%eax
	.loc 1 34 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L8
	call	__stack_chk_fail
.LVL7:
.L8:
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
.LFE15:
	.size	mico_rtos_create_thread, .-mico_rtos_create_thread
	.section	.text.unlikely.mico_rtos_create_thread
.LCOLDE1:
	.section	.text.mico_rtos_create_thread
.LHOTE1:
	.section	.text.unlikely.mico_rtos_delete_thread,"ax",@progbits
.LCOLDB2:
	.section	.text.mico_rtos_delete_thread,"ax",@progbits
.LHOTB2:
	.globl	mico_rtos_delete_thread
	.type	mico_rtos_delete_thread, @function
mico_rtos_delete_thread:
.LFB16:
	.loc 1 37 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 37 0
	movl	8(%ebp), %eax
	.loc 1 40 0
	testl	%eax, %eax
	jne	.L12
	.loc 1 41 0
	subl	$12, %esp
	pushl	$0
	jmp	.L15
.L12:
	.loc 1 43 0
	subl	$12, %esp
	pushl	(%eax)
.L15:
	call	krhino_task_dyn_del
.LVL9:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL10:
	.loc 1 51 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE16:
	.size	mico_rtos_delete_thread, .-mico_rtos_delete_thread
	.section	.text.unlikely.mico_rtos_delete_thread
.LCOLDE2:
	.section	.text.mico_rtos_delete_thread
.LHOTE2:
	.section	.text.unlikely.mico_rtos_suspend_thread,"ax",@progbits
.LCOLDB3:
	.section	.text.mico_rtos_suspend_thread,"ax",@progbits
.LHOTB3:
	.globl	mico_rtos_suspend_thread
	.type	mico_rtos_suspend_thread, @function
mico_rtos_suspend_thread:
.LFB17:
	.loc 1 54 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 54 0
	movl	8(%ebp), %eax
	.loc 1 55 0
	testl	%eax, %eax
	jne	.L17
	.loc 1 56 0
	call	krhino_cur_task_get
.LVL12:
	jmp	.L19
.L17:
	.loc 1 59 0
	movl	(%eax), %eax
.L19:
	movl	%eax, 8(%ebp)
	.loc 1 61 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 59 0
	jmp	krhino_task_suspend
.LVL13:
	.cfi_endproc
.LFE17:
	.size	mico_rtos_suspend_thread, .-mico_rtos_suspend_thread
	.section	.text.unlikely.mico_rtos_suspend_thread
.LCOLDE3:
	.section	.text.mico_rtos_suspend_thread
.LHOTE3:
	.section	.text.unlikely.mico_rtos_suspend_all_thread,"ax",@progbits
.LCOLDB4:
	.section	.text.mico_rtos_suspend_all_thread,"ax",@progbits
.LHOTB4:
	.globl	mico_rtos_suspend_all_thread
	.type	mico_rtos_suspend_all_thread, @function
mico_rtos_suspend_all_thread:
.LFB18:
	.loc 1 64 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 66 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 65 0
	jmp	krhino_sched_disable
.LVL14:
	.cfi_endproc
.LFE18:
	.size	mico_rtos_suspend_all_thread, .-mico_rtos_suspend_all_thread
	.section	.text.unlikely.mico_rtos_suspend_all_thread
.LCOLDE4:
	.section	.text.mico_rtos_suspend_all_thread
.LHOTE4:
	.section	.text.unlikely.mico_rtos_resume_all_thread,"ax",@progbits
.LCOLDB5:
	.section	.text.mico_rtos_resume_all_thread,"ax",@progbits
.LHOTB5:
	.globl	mico_rtos_resume_all_thread
	.type	mico_rtos_resume_all_thread, @function
mico_rtos_resume_all_thread:
.LFB19:
	.loc 1 69 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 72 0
	call	krhino_sched_enable
.LVL15:
	testl	%eax, %eax
	.loc 1 79 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	setne	%al
.LVL16:
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE19:
	.size	mico_rtos_resume_all_thread, .-mico_rtos_resume_all_thread
	.section	.text.unlikely.mico_rtos_resume_all_thread
.LCOLDE5:
	.section	.text.mico_rtos_resume_all_thread
.LHOTE5:
	.section	.text.unlikely.mico_rtos_thread_join,"ax",@progbits
.LCOLDB6:
	.section	.text.mico_rtos_thread_join,"ax",@progbits
.LHOTB6:
	.globl	mico_rtos_thread_join
	.type	mico_rtos_thread_join, @function
mico_rtos_thread_join:
.LFB20:
	.loc 1 82 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 84 0
	xorl	%eax, %eax
	.loc 1 82 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 84 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	mico_rtos_thread_join, .-mico_rtos_thread_join
	.section	.text.unlikely.mico_rtos_thread_join
.LCOLDE6:
	.section	.text.mico_rtos_thread_join
.LHOTE6:
	.section	.text.unlikely.mico_rtos_thread_force_awake,"ax",@progbits
.LCOLDB7:
	.section	.text.mico_rtos_thread_force_awake,"ax",@progbits
.LHOTB7:
	.globl	mico_rtos_thread_force_awake
	.type	mico_rtos_thread_force_awake, @function
mico_rtos_thread_force_awake:
.LFB21:
	.loc 1 88 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 91 0
	movl	8(%ebp), %eax
	pushl	(%eax)
	call	krhino_task_wait_abort
.LVL19:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL20:
	.loc 1 98 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE21:
	.size	mico_rtos_thread_force_awake, .-mico_rtos_thread_force_awake
	.section	.text.unlikely.mico_rtos_thread_force_awake
.LCOLDE7:
	.section	.text.mico_rtos_thread_force_awake
.LHOTE7:
	.section	.text.unlikely.mico_rtos_is_current_thread,"ax",@progbits
.LCOLDB8:
	.section	.text.mico_rtos_is_current_thread,"ax",@progbits
.LHOTB8:
	.globl	mico_rtos_is_current_thread
	.type	mico_rtos_is_current_thread, @function
mico_rtos_is_current_thread:
.LFB22:
	.loc 1 102 0
	.cfi_startproc
.LVL21:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 105 0
	movl	8(%ebp), %eax
	movl	(%eax), %ebx
.LVL22:
	.loc 1 107 0
	call	krhino_cur_task_get
.LVL23:
	.loc 1 112 0
	popl	%edx
	cmpl	%eax, %ebx
	sete	%al
	popl	%ebx
	.cfi_restore 3
.LVL24:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	mico_rtos_is_current_thread, .-mico_rtos_is_current_thread
	.section	.text.unlikely.mico_rtos_is_current_thread
.LCOLDE8:
	.section	.text.mico_rtos_is_current_thread
.LHOTE8:
	.section	.text.unlikely.mico_rtos_delay_milliseconds,"ax",@progbits
.LCOLDB9:
	.section	.text.mico_rtos_delay_milliseconds,"ax",@progbits
.LHOTB9:
	.globl	mico_rtos_delay_milliseconds
	.type	mico_rtos_delay_milliseconds, @function
mico_rtos_delay_milliseconds:
.LFB23:
	.loc 1 115 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 118 0
	xorl	%edx, %edx
	.loc 1 115 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 118 0
	movl	8(%ebp), %eax
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL26:
	.loc 1 119 0
	popl	%edx
	.loc 1 120 0
	testl	%eax, %eax
	movl	$1, %edx
	.loc 1 119 0
	popl	%ecx
	.loc 1 120 0
	cmove	%edx, %eax
.LVL27:
	.loc 1 123 0
	xorl	%edx, %edx
	pushl	%edx
	pushl	%eax
	call	krhino_task_sleep
.LVL28:
	.loc 1 126 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	mico_rtos_delay_milliseconds, .-mico_rtos_delay_milliseconds
	.section	.text.unlikely.mico_rtos_delay_milliseconds
.LCOLDE9:
	.section	.text.mico_rtos_delay_milliseconds
.LHOTE9:
	.section	.text.unlikely.mico_rtos_print_thread_status,"ax",@progbits
.LCOLDB10:
	.section	.text.mico_rtos_print_thread_status,"ax",@progbits
.LHOTB10:
	.globl	mico_rtos_print_thread_status
	.type	mico_rtos_print_thread_status, @function
mico_rtos_print_thread_status:
.LFB24:
	.loc 1 129 0
	.cfi_startproc
.LVL29:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 129 0
	movl	8(%ebp), %eax
	.loc 1 130 0
	movb	$110, (%eax)
	.loc 1 131 0
	movb	$0, 1(%eax)
	.loc 1 136 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	mico_rtos_print_thread_status, .-mico_rtos_print_thread_status
	.section	.text.unlikely.mico_rtos_print_thread_status
.LCOLDE10:
	.section	.text.mico_rtos_print_thread_status
.LHOTE10:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC11:
	.string	"sema"
	.section	.text.unlikely.mico_rtos_init_semaphore,"ax",@progbits
.LCOLDB12:
	.section	.text.mico_rtos_init_semaphore,"ax",@progbits
.LHOTB12:
	.globl	mico_rtos_init_semaphore
	.type	mico_rtos_init_semaphore, @function
mico_rtos_init_semaphore:
.LFB25:
	.loc 1 139 0
	.cfi_startproc
.LVL30:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 142 0
	pushl	$0
	pushl	$.LC11
	pushl	8(%ebp)
	call	krhino_sem_dyn_create
.LVL31:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL32:
	.loc 1 149 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE25:
	.size	mico_rtos_init_semaphore, .-mico_rtos_init_semaphore
	.section	.text.unlikely.mico_rtos_init_semaphore
.LCOLDE12:
	.section	.text.mico_rtos_init_semaphore
.LHOTE12:
	.section	.text.unlikely.mico_rtos_set_semaphore,"ax",@progbits
.LCOLDB13:
	.section	.text.mico_rtos_set_semaphore,"ax",@progbits
.LHOTB13:
	.globl	mico_rtos_set_semaphore
	.type	mico_rtos_set_semaphore, @function
mico_rtos_set_semaphore:
.LFB26:
	.loc 1 152 0
	.cfi_startproc
.LVL33:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 155 0
	movl	8(%ebp), %eax
	pushl	(%eax)
	call	krhino_sem_give
.LVL34:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL35:
	.loc 1 162 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE26:
	.size	mico_rtos_set_semaphore, .-mico_rtos_set_semaphore
	.section	.text.unlikely.mico_rtos_set_semaphore
.LCOLDE13:
	.section	.text.mico_rtos_set_semaphore
.LHOTE13:
	.section	.text.unlikely.mico_rtos_get_semaphore,"ax",@progbits
.LCOLDB14:
	.section	.text.mico_rtos_get_semaphore,"ax",@progbits
.LHOTB14:
	.globl	mico_rtos_get_semaphore
	.type	mico_rtos_get_semaphore, @function
mico_rtos_get_semaphore:
.LFB27:
	.loc 1 165 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 165 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %ebx
	.loc 1 169 0
	cmpl	$-1, %eax
	jne	.L40
	.loc 1 170 0
	pushl	%ecx
	pushl	$-1
	pushl	$-1
	jmp	.L43
.L40:
	.loc 1 173 0
	pushl	%edx
	pushl	%edx
	xorl	%edx, %edx
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL37:
	.loc 1 174 0
	addl	$12, %esp
	pushl	%edx
	pushl	%eax
.LVL38:
.L43:
	pushl	(%ebx)
	call	krhino_sem_take
.LVL39:
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 182 0
	movl	-4(%ebp), %ebx
	setne	%al
.LVL40:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE27:
	.size	mico_rtos_get_semaphore, .-mico_rtos_get_semaphore
	.section	.text.unlikely.mico_rtos_get_semaphore
.LCOLDE14:
	.section	.text.mico_rtos_get_semaphore
.LHOTE14:
	.section	.text.unlikely.mico_rtos_deinit_semaphore,"ax",@progbits
.LCOLDB15:
	.section	.text.mico_rtos_deinit_semaphore,"ax",@progbits
.LHOTB15:
	.globl	mico_rtos_deinit_semaphore
	.type	mico_rtos_deinit_semaphore, @function
mico_rtos_deinit_semaphore:
.LFB28:
	.loc 1 185 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 188 0
	movl	8(%ebp), %eax
	pushl	(%eax)
	call	krhino_sem_dyn_del
.LVL42:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL43:
	.loc 1 195 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE28:
	.size	mico_rtos_deinit_semaphore, .-mico_rtos_deinit_semaphore
	.section	.text.unlikely.mico_rtos_deinit_semaphore
.LCOLDE15:
	.section	.text.mico_rtos_deinit_semaphore
.LHOTE15:
	.section	.rodata.str1.1
.LC16:
	.string	"mutex"
	.section	.text.unlikely.mico_rtos_init_mutex,"ax",@progbits
.LCOLDB17:
	.section	.text.mico_rtos_init_mutex,"ax",@progbits
.LHOTB17:
	.globl	mico_rtos_init_mutex
	.type	mico_rtos_init_mutex, @function
mico_rtos_init_mutex:
.LFB29:
	.loc 1 198 0
	.cfi_startproc
.LVL44:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 201 0
	pushl	$.LC16
	pushl	8(%ebp)
	call	krhino_mutex_dyn_create
.LVL45:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL46:
	.loc 1 208 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE29:
	.size	mico_rtos_init_mutex, .-mico_rtos_init_mutex
	.section	.text.unlikely.mico_rtos_init_mutex
.LCOLDE17:
	.section	.text.mico_rtos_init_mutex
.LHOTE17:
	.section	.text.unlikely.mico_rtos_lock_mutex,"ax",@progbits
.LCOLDB18:
	.section	.text.mico_rtos_lock_mutex,"ax",@progbits
.LHOTB18:
	.globl	mico_rtos_lock_mutex
	.type	mico_rtos_lock_mutex, @function
mico_rtos_lock_mutex:
.LFB30:
	.loc 1 211 0
	.cfi_startproc
.LVL47:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 214 0
	movl	8(%ebp), %eax
	pushl	$-1
	pushl	$-1
	pushl	(%eax)
	call	krhino_mutex_lock
.LVL48:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL49:
	.loc 1 221 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE30:
	.size	mico_rtos_lock_mutex, .-mico_rtos_lock_mutex
	.section	.text.unlikely.mico_rtos_lock_mutex
.LCOLDE18:
	.section	.text.mico_rtos_lock_mutex
.LHOTE18:
	.section	.text.unlikely.mico_rtos_unlock_mutex,"ax",@progbits
.LCOLDB19:
	.section	.text.mico_rtos_unlock_mutex,"ax",@progbits
.LHOTB19:
	.globl	mico_rtos_unlock_mutex
	.type	mico_rtos_unlock_mutex, @function
mico_rtos_unlock_mutex:
.LFB31:
	.loc 1 224 0
	.cfi_startproc
.LVL50:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 227 0
	movl	8(%ebp), %eax
	pushl	(%eax)
	call	krhino_mutex_unlock
.LVL51:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL52:
	.loc 1 234 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE31:
	.size	mico_rtos_unlock_mutex, .-mico_rtos_unlock_mutex
	.section	.text.unlikely.mico_rtos_unlock_mutex
.LCOLDE19:
	.section	.text.mico_rtos_unlock_mutex
.LHOTE19:
	.section	.text.unlikely.mico_rtos_deinit_mutex,"ax",@progbits
.LCOLDB20:
	.section	.text.mico_rtos_deinit_mutex,"ax",@progbits
.LHOTB20:
	.globl	mico_rtos_deinit_mutex
	.type	mico_rtos_deinit_mutex, @function
mico_rtos_deinit_mutex:
.LFB32:
	.loc 1 237 0
	.cfi_startproc
.LVL53:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 240 0
	movl	8(%ebp), %eax
	pushl	(%eax)
	call	krhino_mutex_dyn_del
.LVL54:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL55:
	.loc 1 247 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE32:
	.size	mico_rtos_deinit_mutex, .-mico_rtos_deinit_mutex
	.section	.text.unlikely.mico_rtos_deinit_mutex
.LCOLDE20:
	.section	.text.mico_rtos_deinit_mutex
.LHOTE20:
	.section	.rodata.str1.1
.LC21:
	.string	"default_queue"
	.section	.text.unlikely.mico_rtos_init_queue,"ax",@progbits
.LCOLDB22:
	.section	.text.mico_rtos_init_queue,"ax",@progbits
.LHOTB22:
	.globl	mico_rtos_init_queue
	.type	mico_rtos_init_queue, @function
mico_rtos_init_queue:
.LFB33:
	.loc 1 250 0
	.cfi_startproc
.LVL56:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 254 0
	movl	$.LC21, %edx
	.loc 1 250 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 250 0
	movl	12(%ebp), %ecx
	movl	16(%ebp), %eax
	.loc 1 254 0
	testl	%ecx, %ecx
	cmove	%edx, %ecx
.LVL57:
	.loc 1 257 0
	cmpl	$127, %eax
	movl	$1, %edx
	jbe	.L56
	.loc 1 257 0 is_stmt 0 discriminator 1
	cmpl	$16383, %eax
	movl	$2, %edx
	jbe	.L56
	.loc 1 257 0 discriminator 3
	cmpl	$4194304, %eax
	sbbl	%edx, %edx
	andl	$-2, %edx
	addl	$5, %edx
.L56:
	.loc 1 257 0 discriminator 12
	pushl	%eax
	addl	%edx, %eax
	imull	20(%ebp), %eax
	pushl	%eax
	pushl	%ecx
	pushl	8(%ebp)
	call	krhino_buf_queue_dyn_create
.LVL58:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL59:
	.loc 1 264 0 is_stmt 1 discriminator 12
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE33:
	.size	mico_rtos_init_queue, .-mico_rtos_init_queue
	.section	.text.unlikely.mico_rtos_init_queue
.LCOLDE22:
	.section	.text.mico_rtos_init_queue
.LHOTE22:
	.section	.text.unlikely.mico_rtos_push_to_queue,"ax",@progbits
.LCOLDB23:
	.section	.text.mico_rtos_push_to_queue,"ax",@progbits
.LHOTB23:
	.globl	mico_rtos_push_to_queue
	.type	mico_rtos_push_to_queue, @function
mico_rtos_push_to_queue:
.LFB34:
	.loc 1 268 0
	.cfi_startproc
.LVL60:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 270 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
.LVL61:
	.loc 1 274 0
	pushl	52(%eax)
	pushl	12(%ebp)
	pushl	%eax
	call	krhino_buf_queue_send
.LVL62:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL63:
	.loc 1 281 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE34:
	.size	mico_rtos_push_to_queue, .-mico_rtos_push_to_queue
	.section	.text.unlikely.mico_rtos_push_to_queue
.LCOLDE23:
	.section	.text.mico_rtos_push_to_queue
.LHOTE23:
	.section	.text.unlikely.timed_event_handler,"ax",@progbits
.LCOLDB24:
	.section	.text.timed_event_handler,"ax",@progbits
.LHOTB24:
	.type	timed_event_handler, @function
timed_event_handler:
.LFB53:
	.loc 1 552 0
	.cfi_startproc
.LVL64:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	.loc 1 552 0
	movl	8(%ebp), %eax
	movl	%gs:20, %ecx
	movl	%ecx, -12(%ebp)
	xorl	%ecx, %ecx
.LVL65:
	.loc 1 556 0
	movl	(%eax), %edx
	movl	%edx, -20(%ebp)
	.loc 1 557 0
	movl	4(%eax), %edx
	.loc 1 559 0
	pushl	$0
	.loc 1 557 0
	movl	%edx, -16(%ebp)
	.loc 1 559 0
	leal	-20(%ebp), %edx
	pushl	%edx
	movl	20(%eax), %eax
.LVL66:
	addl	$4, %eax
	pushl	%eax
	call	mico_rtos_push_to_queue
.LVL67:
	.loc 1 560 0
	addl	$16, %esp
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L64
	call	__stack_chk_fail
.LVL68:
.L64:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE53:
	.size	timed_event_handler, .-timed_event_handler
	.section	.text.unlikely.timed_event_handler
.LCOLDE24:
	.section	.text.timed_event_handler
.LHOTE24:
	.section	.text.unlikely.mico_rtos_pop_from_queue,"ax",@progbits
.LCOLDB25:
	.section	.text.mico_rtos_pop_from_queue,"ax",@progbits
.LHOTB25:
	.globl	mico_rtos_pop_from_queue
	.type	mico_rtos_pop_from_queue, @function
mico_rtos_pop_from_queue:
.LFB35:
	.loc 1 284 0
	.cfi_startproc
.LVL69:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 288 0
	xorl	%edx, %edx
	.loc 1 284 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 284 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 288 0
	movl	16(%ebp), %eax
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL70:
	leal	-16(%ebp), %ecx
	movl	%ecx, (%esp)
	pushl	%esi
	pushl	%edx
	pushl	%eax
	pushl	(%ebx)
	call	krhino_buf_queue_recv
.LVL71:
	addl	$32, %esp
	testl	%eax, %eax
	setne	%al
.LVL72:
	movzbl	%al, %eax
	negl	%eax
	.loc 1 295 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L67
	call	__stack_chk_fail
.LVL73:
.L67:
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
.LFE35:
	.size	mico_rtos_pop_from_queue, .-mico_rtos_pop_from_queue
	.section	.text.unlikely.mico_rtos_pop_from_queue
.LCOLDE25:
	.section	.text.mico_rtos_pop_from_queue
.LHOTE25:
	.section	.text.unlikely.worker_thread_main,"ax",@progbits
.LCOLDB26:
	.section	.text.worker_thread_main,"ax",@progbits
.LHOTB26:
	.type	worker_thread_main, @function
worker_thread_main:
.LFB49:
	.loc 1 491 0
	.cfi_startproc
.LVL74:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LBB2:
	.loc 1 498 0
	leal	-20(%ebp), %esi
.LBE2:
	.loc 1 491 0
	subl	$16, %esp
	.loc 1 491 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL75:
.LBB3:
	.loc 1 498 0
	movl	8(%ebp), %eax
	leal	4(%eax), %ebx
.L71:
	pushl	%eax
	pushl	$-1
	pushl	%esi
	pushl	%ebx
	call	mico_rtos_pop_from_queue
.LVL76:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L71
	.loc 1 500 0
	subl	$12, %esp
	pushl	-16(%ebp)
	call	*-20(%ebp)
.LVL77:
	addl	$16, %esp
.LBE3:
	.loc 1 502 0
	jmp	.L71
	.cfi_endproc
.LFE49:
	.size	worker_thread_main, .-worker_thread_main
	.section	.text.unlikely.worker_thread_main
.LCOLDE26:
	.section	.text.worker_thread_main
.LHOTE26:
	.section	.text.unlikely.mico_rtos_deinit_queue,"ax",@progbits
.LCOLDB27:
	.section	.text.mico_rtos_deinit_queue,"ax",@progbits
.LHOTB27:
	.globl	mico_rtos_deinit_queue
	.type	mico_rtos_deinit_queue, @function
mico_rtos_deinit_queue:
.LFB36:
	.loc 1 298 0
	.cfi_startproc
.LVL78:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 301 0
	movl	8(%ebp), %eax
	pushl	(%eax)
	call	krhino_buf_queue_dyn_del
.LVL79:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL80:
	.loc 1 308 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE36:
	.size	mico_rtos_deinit_queue, .-mico_rtos_deinit_queue
	.section	.text.unlikely.mico_rtos_deinit_queue
.LCOLDE27:
	.section	.text.mico_rtos_deinit_queue
.LHOTE27:
	.section	.text.unlikely.mico_rtos_is_queue_empty,"ax",@progbits
.LCOLDB28:
	.section	.text.mico_rtos_is_queue_empty,"ax",@progbits
.LHOTB28:
	.globl	mico_rtos_is_queue_empty
	.type	mico_rtos_is_queue_empty, @function
mico_rtos_is_queue_empty:
.LFB37:
	.loc 1 312 0
	.cfi_startproc
.LVL81:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 316 0
	movl	8(%ebp), %eax
	movl	(%eax), %ebx
.LVL82:
	.loc 1 318 0
	call	cpu_intrpt_save
.LVL83:
	.loc 1 320 0
	cmpl	$0, 56(%ebx)
	sete	%bl
.LVL84:
	.loc 1 327 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL85:
	.loc 1 330 0
	movb	%bl, %al
	movl	-4(%ebp), %ebx
.LVL86:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	mico_rtos_is_queue_empty, .-mico_rtos_is_queue_empty
	.section	.text.unlikely.mico_rtos_is_queue_empty
.LCOLDE28:
	.section	.text.mico_rtos_is_queue_empty
.LHOTE28:
	.section	.text.unlikely.mico_rtos_is_queue_full,"ax",@progbits
.LCOLDB29:
	.section	.text.mico_rtos_is_queue_full,"ax",@progbits
.LHOTB29:
	.globl	mico_rtos_is_queue_full
	.type	mico_rtos_is_queue_full, @function
mico_rtos_is_queue_full:
.LFB38:
	.loc 1 333 0
	.cfi_startproc
.LVL87:
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
	.loc 1 342 0
	movl	$1, %edi
	.loc 1 333 0
	subl	$12, %esp
	.loc 1 337 0
	movl	8(%ebp), %eax
	movl	(%eax), %ebx
.LVL88:
	.loc 1 340 0
	call	cpu_intrpt_save
.LVL89:
	movl	%eax, %esi
.LVL90:
	.loc 1 342 0
	movl	52(%ebx), %ecx
	movl	28(%ebx), %eax
.LVL91:
	subl	24(%ebx), %eax
	cmpl	$127, %ecx
	jbe	.L79
	.loc 1 342 0 is_stmt 0 discriminator 1
	cmpl	$16383, %ecx
	movl	$2, %edi
	jbe	.L79
	.loc 1 342 0 discriminator 3
	cmpl	$4194304, %ecx
	sbbl	%edi, %edi
	andl	$-2, %edi
	addl	$5, %edi
.L79:
.LVL92:
	.loc 1 344 0 is_stmt 1 discriminator 12
	addl	%edi, %ecx
.LVL93:
	xorl	%edx, %edx
	divl	%ecx
.LVL94:
	cmpl	56(%ebx), %eax
	sete	%bl
.LVL95:
	.loc 1 351 0 discriminator 12
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL96:
	.loc 1 354 0 discriminator 12
	leal	-12(%ebp), %esp
	movb	%bl, %al
	popl	%ebx
	.cfi_restore 3
.LVL97:
	popl	%esi
	.cfi_restore 6
.LVL98:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	mico_rtos_is_queue_full, .-mico_rtos_is_queue_full
	.section	.text.unlikely.mico_rtos_is_queue_full
.LCOLDE29:
	.section	.text.mico_rtos_is_queue_full
.LHOTE29:
	.section	.text.unlikely.mico_rtos_get_time,"ax",@progbits
.LCOLDB30:
	.section	.text.mico_rtos_get_time,"ax",@progbits
.LHOTB30:
	.globl	mico_rtos_get_time
	.type	mico_rtos_get_time, @function
mico_rtos_get_time:
.LFB39:
	.loc 1 357 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 358 0
	call	krhino_sys_tick_get
.LVL99:
	pushl	%ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	krhino_ticks_to_ms
.LVL100:
	.loc 1 359 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE39:
	.size	mico_rtos_get_time, .-mico_rtos_get_time
	.section	.text.unlikely.mico_rtos_get_time
.LCOLDE30:
	.section	.text.mico_rtos_get_time
.LHOTE30:
	.section	.rodata.str1.1
.LC31:
	.string	"timer"
	.section	.text.unlikely.mico_init_timer,"ax",@progbits
.LCOLDB32:
	.section	.text.mico_init_timer,"ax",@progbits
.LHOTB32:
	.globl	mico_init_timer
	.type	mico_init_timer, @function
mico_init_timer:
.LFB41:
	.loc 1 373 0
	.cfi_startproc
.LVL101:
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
	.loc 1 379 0
	xorl	%edi, %edi
	.loc 1 373 0
	subl	$36, %esp
	.loc 1 373 0
	movl	8(%ebp), %ebx
	.loc 1 376 0
	movl	16(%ebp), %eax
	.loc 1 379 0
	movl	12(%ebp), %esi
	.loc 1 376 0
	movl	%eax, 4(%ebx)
	.loc 1 377 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%ebx)
	.loc 1 379 0
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL102:
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	popl	%eax
	popl	%edx
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL103:
	movl	$0, (%esp)
	pushl	%ebx
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	pushl	%edx
	pushl	%eax
	pushl	$timmer_wrapper
	pushl	$.LC31
	pushl	%ebx
	call	krhino_timer_dyn_create
.LVL104:
	addl	$48, %esp
	testl	%eax, %eax
	setne	%al
.LVL105:
	.loc 1 387 0
	leal	-12(%ebp), %esp
	movzbl	%al, %eax
	popl	%ebx
	.cfi_restore 3
	negl	%eax
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
	.size	mico_init_timer, .-mico_init_timer
	.section	.text.unlikely.mico_init_timer
.LCOLDE32:
	.section	.text.mico_init_timer
.LHOTE32:
	.section	.text.unlikely.mico_rtos_init_oneshot_timer,"ax",@progbits
.LCOLDB33:
	.section	.text.mico_rtos_init_oneshot_timer,"ax",@progbits
.LHOTB33:
	.globl	mico_rtos_init_oneshot_timer
	.type	mico_rtos_init_oneshot_timer, @function
mico_rtos_init_oneshot_timer:
.LFB42:
	.loc 1 390 0
	.cfi_startproc
.LVL106:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 396 0
	xorl	%edx, %edx
	.loc 1 390 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 390 0
	movl	8(%ebp), %ebx
	.loc 1 393 0
	movl	16(%ebp), %eax
	movl	%eax, 4(%ebx)
	.loc 1 394 0
	movl	20(%ebp), %eax
	movl	%eax, 8(%ebx)
	.loc 1 396 0
	movl	12(%ebp), %eax
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL107:
	movl	$0, (%esp)
	pushl	%ebx
	pushl	$0
	pushl	$0
	pushl	%edx
	pushl	%eax
	pushl	$timmer_wrapper
	pushl	$.LC31
	pushl	%ebx
	call	krhino_timer_dyn_create
.LVL108:
	addl	$48, %esp
	testl	%eax, %eax
	.loc 1 404 0
	movl	-4(%ebp), %ebx
	setne	%al
.LVL109:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE42:
	.size	mico_rtos_init_oneshot_timer, .-mico_rtos_init_oneshot_timer
	.section	.text.unlikely.mico_rtos_init_oneshot_timer
.LCOLDE33:
	.section	.text.mico_rtos_init_oneshot_timer
.LHOTE33:
	.section	.text.unlikely.mico_start_timer,"ax",@progbits
.LCOLDB34:
	.section	.text.mico_start_timer,"ax",@progbits
.LHOTB34:
	.globl	mico_start_timer
	.type	mico_start_timer, @function
mico_start_timer:
.LFB43:
	.loc 1 408 0
	.cfi_startproc
.LVL110:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 411 0
	movl	8(%ebp), %eax
	pushl	(%eax)
	call	krhino_timer_start
.LVL111:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL112:
	.loc 1 418 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE43:
	.size	mico_start_timer, .-mico_start_timer
	.section	.text.unlikely.mico_start_timer
.LCOLDE34:
	.section	.text.mico_start_timer
.LHOTE34:
	.section	.text.unlikely.mico_stop_timer,"ax",@progbits
.LCOLDB35:
	.section	.text.mico_stop_timer,"ax",@progbits
.LHOTB35:
	.globl	mico_stop_timer
	.type	mico_stop_timer, @function
mico_stop_timer:
.LFB44:
	.loc 1 421 0
	.cfi_startproc
.LVL113:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 424 0
	movl	8(%ebp), %eax
	pushl	(%eax)
	call	krhino_timer_stop
.LVL114:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL115:
	.loc 1 432 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE44:
	.size	mico_stop_timer, .-mico_stop_timer
	.section	.text.unlikely.mico_stop_timer
.LCOLDE35:
	.section	.text.mico_stop_timer
.LHOTE35:
	.section	.text.unlikely.mico_reload_timer,"ax",@progbits
.LCOLDB36:
	.section	.text.mico_reload_timer,"ax",@progbits
.LHOTB36:
	.globl	mico_reload_timer
	.type	mico_reload_timer, @function
mico_reload_timer:
.LFB45:
	.loc 1 436 0
	.cfi_startproc
.LVL116:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 436 0
	movl	8(%ebp), %ebx
	.loc 1 440 0
	pushl	(%ebx)
	call	krhino_timer_stop
.LVL117:
	.loc 1 442 0
	popl	%eax
	pushl	(%ebx)
	call	krhino_timer_start
.LVL118:
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 449 0
	movl	-4(%ebp), %ebx
	setne	%al
.LVL119:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE45:
	.size	mico_reload_timer, .-mico_reload_timer
	.section	.text.unlikely.mico_reload_timer
.LCOLDE36:
	.section	.text.mico_reload_timer
.LHOTE36:
	.section	.text.unlikely.mico_deinit_timer,"ax",@progbits
.LCOLDB37:
	.section	.text.mico_deinit_timer,"ax",@progbits
.LHOTB37:
	.globl	mico_deinit_timer
	.type	mico_deinit_timer, @function
mico_deinit_timer:
.LFB46:
	.loc 1 452 0
	.cfi_startproc
.LVL120:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 452 0
	movl	8(%ebp), %ebx
	.loc 1 456 0
	pushl	(%ebx)
	call	krhino_timer_stop
.LVL121:
	.loc 1 457 0
	popl	%eax
	pushl	(%ebx)
	call	krhino_timer_dyn_del
.LVL122:
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 464 0
	movl	-4(%ebp), %ebx
	setne	%al
.LVL123:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE46:
	.size	mico_deinit_timer, .-mico_deinit_timer
	.section	.text.unlikely.mico_deinit_timer
.LCOLDE37:
	.section	.text.mico_deinit_timer
.LHOTE37:
	.section	.text.unlikely.mico_is_timer_running,"ax",@progbits
.LCOLDB38:
	.section	.text.mico_is_timer_running,"ax",@progbits
.LHOTB38:
	.globl	mico_is_timer_running
	.type	mico_is_timer_running, @function
mico_is_timer_running:
.LFB47:
	.loc 1 467 0
	.cfi_startproc
.LVL124:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL125:
	.loc 1 472 0
	movl	8(%ebp), %eax
	.loc 1 478 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 472 0
	movl	(%eax), %eax
	cmpb	$1, 64(%eax)
	sete	%al
	.loc 1 478 0
	ret
	.cfi_endproc
.LFE47:
	.size	mico_is_timer_running, .-mico_is_timer_running
	.section	.text.unlikely.mico_is_timer_running
.LCOLDE38:
	.section	.text.mico_is_timer_running
.LHOTE38:
	.section	.text.unlikely.mico_rtos_is_timer_init,"ax",@progbits
.LCOLDB39:
	.section	.text.mico_rtos_is_timer_init,"ax",@progbits
.LHOTB39:
	.globl	mico_rtos_is_timer_init
	.type	mico_rtos_is_timer_init, @function
mico_rtos_is_timer_init:
.LFB48:
	.loc 1 481 0
	.cfi_startproc
.LVL126:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 481 0
	movl	8(%ebp), %edx
	.loc 1 482 0
	testl	%edx, %edx
	je	.L101
	.loc 1 484 0
	cmpl	$0, (%edx)
	setne	%al
.L101:
	.loc 1 488 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE48:
	.size	mico_rtos_is_timer_init, .-mico_rtos_is_timer_init
	.section	.text.unlikely.mico_rtos_is_timer_init
.LCOLDE39:
	.section	.text.mico_rtos_is_timer_init
.LHOTE39:
	.section	.rodata.str1.1
.LC40:
	.string	"worker queue"
.LC41:
	.string	"worker thread"
	.section	.text.unlikely.mico_rtos_create_worker_thread,"ax",@progbits
.LCOLDB42:
	.section	.text.mico_rtos_create_worker_thread,"ax",@progbits
.LHOTB42:
	.globl	mico_rtos_create_worker_thread
	.type	mico_rtos_create_worker_thread, @function
mico_rtos_create_worker_thread:
.LFB50:
	.loc 1 506 0
	.cfi_startproc
.LVL127:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 507 0
	xorl	%eax, %eax
	movl	$2, %ecx
	.loc 1 506 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 506 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 507 0
	movl	%ebx, %edi
	rep stosl
	.loc 1 509 0
	leal	4(%ebx), %edi
	pushl	20(%ebp)
	pushl	$8
	pushl	$.LC40
	pushl	%edi
	call	mico_rtos_init_queue
.LVL128:
	movl	%eax, %edx
	addl	$16, %esp
	.loc 1 511 0
	orl	$-1, %eax
	.loc 1 509 0
	testl	%edx, %edx
	jne	.L106
	.loc 1 514 0
	pushl	%eax
	pushl	%eax
	movl	%esi, %eax
	movzbl	%al, %esi
	pushl	%ebx
	pushl	16(%ebp)
	pushl	$worker_thread_main
	pushl	$.LC41
	pushl	%esi
	pushl	%ebx
	call	mico_rtos_create_thread
.LVL129:
	addl	$32, %esp
	testl	%eax, %eax
	je	.L106
	.loc 1 516 0
	subl	$12, %esp
	pushl	%edi
	call	mico_rtos_deinit_queue
.LVL130:
	.loc 1 517 0
	addl	$16, %esp
	orl	$-1, %eax
.L106:
	.loc 1 521 0
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
.LFE50:
	.size	mico_rtos_create_worker_thread, .-mico_rtos_create_worker_thread
	.section	.text.unlikely.mico_rtos_create_worker_thread
.LCOLDE42:
	.section	.text.mico_rtos_create_worker_thread
.LHOTE42:
	.section	.text.unlikely.mico_rtos_delete_worker_thread,"ax",@progbits
.LCOLDB43:
	.section	.text.mico_rtos_delete_worker_thread,"ax",@progbits
.LHOTB43:
	.globl	mico_rtos_delete_worker_thread
	.type	mico_rtos_delete_worker_thread, @function
mico_rtos_delete_worker_thread:
.LFB51:
	.loc 1 524 0
	.cfi_startproc
.LVL131:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 524 0
	movl	8(%ebp), %ebx
	.loc 1 525 0
	pushl	%ebx
	call	mico_rtos_delete_thread
.LVL132:
	addl	$16, %esp
	orl	$-1, %edx
	testl	%eax, %eax
	jne	.L113
	.loc 1 530 0
	subl	$12, %esp
	addl	$4, %ebx
	pushl	%ebx
	call	mico_rtos_deinit_queue
.LVL133:
	xorl	%edx, %edx
	addl	$16, %esp
	testl	%eax, %eax
	setne	%dl
	negl	%edx
.L113:
	.loc 1 536 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE51:
	.size	mico_rtos_delete_worker_thread, .-mico_rtos_delete_worker_thread
	.section	.text.unlikely.mico_rtos_delete_worker_thread
.LCOLDE43:
	.section	.text.mico_rtos_delete_worker_thread
.LHOTE43:
	.section	.text.unlikely.mico_rtos_send_asynchronous_event,"ax",@progbits
.LCOLDB44:
	.section	.text.mico_rtos_send_asynchronous_event,"ax",@progbits
.LHOTB44:
	.globl	mico_rtos_send_asynchronous_event
	.type	mico_rtos_send_asynchronous_event, @function
mico_rtos_send_asynchronous_event:
.LFB52:
	.loc 1 539 0
	.cfi_startproc
.LVL134:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 539 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	movl	16(%ebp), %ecx
	movl	$-6718, %eax
	.loc 1 542 0
	cmpl	$0, (%edx)
	je	.L118
	.loc 1 548 0
	pushl	%eax
	leal	-20(%ebp), %eax
	addl	$4, %edx
	pushl	$0
	.loc 1 545 0
	movl	%ebx, -20(%ebp)
	.loc 1 548 0
	pushl	%eax
	pushl	%edx
	.loc 1 546 0
	movl	%ecx, -16(%ebp)
	.loc 1 548 0
	call	mico_rtos_push_to_queue
.LVL135:
	addl	$16, %esp
.L118:
	.loc 1 549 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L119
	call	__stack_chk_fail
.LVL136:
.L119:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE52:
	.size	mico_rtos_send_asynchronous_event, .-mico_rtos_send_asynchronous_event
	.section	.text.unlikely.mico_rtos_send_asynchronous_event
.LCOLDE44:
	.section	.text.mico_rtos_send_asynchronous_event
.LHOTE44:
	.section	.text.unlikely.mico_rtos_register_timed_event,"ax",@progbits
.LCOLDB45:
	.section	.text.mico_rtos_register_timed_event,"ax",@progbits
.LHOTB45:
	.globl	mico_rtos_register_timed_event
	.type	mico_rtos_register_timed_event, @function
mico_rtos_register_timed_event:
.LFB54:
	.loc 1 563 0
	.cfi_startproc
.LVL137:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 565 0
	movl	$-6718, %eax
	.loc 1 563 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 563 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %ebx
	.loc 1 564 0
	cmpl	$0, (%esi)
	je	.L124
	.loc 1 567 0
	leal	8(%ebx), %edi
	pushl	%ebx
	pushl	$timed_event_handler
	pushl	20(%ebp)
	pushl	%edi
	call	mico_init_timer
.LVL138:
	movl	%eax, %edx
	addl	$16, %esp
	.loc 1 569 0
	orl	$-1, %eax
	.loc 1 567 0
	testl	%edx, %edx
	jne	.L124
	.loc 1 572 0
	movl	16(%ebp), %eax
	.loc 1 576 0
	subl	$12, %esp
	.loc 1 573 0
	movl	%esi, 20(%ebx)
	.loc 1 572 0
	movl	%eax, (%ebx)
	.loc 1 574 0
	movl	24(%ebp), %eax
	movl	%eax, 4(%ebx)
	.loc 1 576 0
	pushl	%edi
	call	mico_start_timer
.LVL139:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L124
	.loc 1 578 0
	subl	$12, %esp
	pushl	%edi
	call	mico_deinit_timer
.LVL140:
	.loc 1 579 0
	addl	$16, %esp
	orl	$-1, %eax
.L124:
	.loc 1 583 0
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
.LFE54:
	.size	mico_rtos_register_timed_event, .-mico_rtos_register_timed_event
	.section	.text.unlikely.mico_rtos_register_timed_event
.LCOLDE45:
	.section	.text.mico_rtos_register_timed_event
.LHOTE45:
	.section	.text.unlikely.mico_rtos_deregister_timed_event,"ax",@progbits
.LCOLDB46:
	.section	.text.mico_rtos_deregister_timed_event,"ax",@progbits
.LHOTB46:
	.globl	mico_rtos_deregister_timed_event
	.type	mico_rtos_deregister_timed_event, @function
mico_rtos_deregister_timed_event:
.LFB55:
	.loc 1 586 0
	.cfi_startproc
.LVL141:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 587 0
	movl	8(%ebp), %eax
	addl	$8, %eax
	pushl	%eax
	call	mico_deinit_timer
.LVL142:
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
	.loc 1 594 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movzbl	%al, %eax
	negl	%eax
	ret
	.cfi_endproc
.LFE55:
	.size	mico_rtos_deregister_timed_event, .-mico_rtos_deregister_timed_event
	.section	.text.unlikely.mico_rtos_deregister_timed_event
.LCOLDE46:
	.section	.text.mico_rtos_deregister_timed_event
.LHOTE46:
	.text
.Letext0:
	.section	.text.unlikely.timmer_wrapper
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 6 "./kernel/rhino/core/include/k_err.h"
	.file 7 "./kernel/rhino/core/include/k_sys.h"
	.file 8 "./kernel/rhino/core/include/k_list.h"
	.file 9 "./kernel/rhino/core/include/k_obj.h"
	.file 10 "./kernel/rhino/core/include/k_task.h"
	.file 11 "./kernel/rhino/core/include/k_mutex.h"
	.file 12 "./kernel/rhino/core/include/k_sem.h"
	.file 13 "./kernel/rhino/core/include/k_ringbuf.h"
	.file 14 "./kernel/rhino/core/include/k_buf_queue.h"
	.file 15 "./kernel/rhino/core/include/k_timer.h"
	.file 16 "./kernel/vcall/./mico/include/common.h"
	.file 17 "./kernel/vcall/./mico/include/mico_rtos.h"
	.file 18 "./kernel/rhino/core/include/k_sched.h"
	.file 19 "./kernel/rhino/core/include/k_time.h"
	.file 20 "././platform/arch/arm/armv5/./gcc/port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1830
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF300
	.byte	0xc
	.long	.LASF301
	.long	.LASF302
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.long	.LASF4
	.byte	0x2
	.byte	0xd8
	.long	0x25
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF5
	.byte	0x3
	.byte	0x1d
	.long	0x5e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF6
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
	.uleb128 0x4
	.long	.LASF10
	.byte	0x3
	.byte	0x41
	.long	0x85
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x5b
	.long	0x97
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.long	0x53
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x30
	.long	0x7a
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x3c
	.long	0x8c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xce
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x6
	.byte	0x4
	.long	0xdb
	.uleb128 0x7
	.long	0xce
	.uleb128 0x4
	.long	.LASF19
	.byte	0x5
	.byte	0xe
	.long	0xce
	.uleb128 0x4
	.long	.LASF20
	.byte	0x5
	.byte	0xf
	.long	0xa9
	.uleb128 0x4
	.long	.LASF21
	.byte	0x5
	.byte	0x10
	.long	0xa9
	.uleb128 0x4
	.long	.LASF22
	.byte	0x5
	.byte	0x13
	.long	0xa9
	.uleb128 0x4
	.long	.LASF23
	.byte	0x5
	.byte	0x14
	.long	0x9e
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0x6
	.byte	0x8
	.long	0x2c3
	.uleb128 0x9
	.long	.LASF24
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.uleb128 0x9
	.long	.LASF26
	.byte	0x2
	.uleb128 0x9
	.long	.LASF27
	.byte	0x3
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.uleb128 0x9
	.long	.LASF30
	.byte	0x6
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.uleb128 0x9
	.long	.LASF32
	.byte	0x8
	.uleb128 0x9
	.long	.LASF33
	.byte	0x9
	.uleb128 0x9
	.long	.LASF34
	.byte	0xa
	.uleb128 0x9
	.long	.LASF35
	.byte	0xb
	.uleb128 0x9
	.long	.LASF36
	.byte	0xc
	.uleb128 0x9
	.long	.LASF37
	.byte	0xd
	.uleb128 0x9
	.long	.LASF38
	.byte	0x64
	.uleb128 0x9
	.long	.LASF39
	.byte	0x65
	.uleb128 0x9
	.long	.LASF40
	.byte	0x66
	.uleb128 0x9
	.long	.LASF41
	.byte	0x67
	.uleb128 0x9
	.long	.LASF42
	.byte	0x68
	.uleb128 0x9
	.long	.LASF43
	.byte	0x69
	.uleb128 0x9
	.long	.LASF44
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6b
	.uleb128 0x9
	.long	.LASF46
	.byte	0xc8
	.uleb128 0x9
	.long	.LASF47
	.byte	0xc9
	.uleb128 0x9
	.long	.LASF48
	.byte	0xca
	.uleb128 0x9
	.long	.LASF49
	.byte	0xcb
	.uleb128 0xa
	.long	.LASF50
	.value	0x12c
	.uleb128 0xa
	.long	.LASF51
	.value	0x12d
	.uleb128 0xa
	.long	.LASF52
	.value	0x12e
	.uleb128 0xa
	.long	.LASF53
	.value	0x12f
	.uleb128 0xa
	.long	.LASF54
	.value	0x130
	.uleb128 0xa
	.long	.LASF55
	.value	0x131
	.uleb128 0xa
	.long	.LASF56
	.value	0x132
	.uleb128 0xa
	.long	.LASF57
	.value	0x133
	.uleb128 0xa
	.long	.LASF58
	.value	0x134
	.uleb128 0xa
	.long	.LASF59
	.value	0x190
	.uleb128 0xa
	.long	.LASF60
	.value	0x191
	.uleb128 0xa
	.long	.LASF61
	.value	0x192
	.uleb128 0xa
	.long	.LASF62
	.value	0x193
	.uleb128 0xa
	.long	.LASF63
	.value	0x194
	.uleb128 0xa
	.long	.LASF64
	.value	0x195
	.uleb128 0xa
	.long	.LASF65
	.value	0x1f4
	.uleb128 0xa
	.long	.LASF66
	.value	0x258
	.uleb128 0xa
	.long	.LASF67
	.value	0x2bc
	.uleb128 0xa
	.long	.LASF68
	.value	0x2bd
	.uleb128 0xa
	.long	.LASF69
	.value	0x2be
	.uleb128 0xa
	.long	.LASF70
	.value	0x2bf
	.uleb128 0xa
	.long	.LASF71
	.value	0x2c0
	.uleb128 0xa
	.long	.LASF72
	.value	0x2c1
	.uleb128 0xa
	.long	.LASF73
	.value	0x320
	.uleb128 0xa
	.long	.LASF74
	.value	0x321
	.uleb128 0xa
	.long	.LASF75
	.value	0x384
	.uleb128 0xa
	.long	.LASF76
	.value	0x385
	.uleb128 0xa
	.long	.LASF77
	.value	0x386
	.uleb128 0xa
	.long	.LASF78
	.value	0x3e8
	.uleb128 0xa
	.long	.LASF79
	.value	0x3e9
	.uleb128 0xa
	.long	.LASF80
	.value	0x44c
	.uleb128 0xa
	.long	.LASF81
	.value	0x44d
	.uleb128 0xa
	.long	.LASF82
	.value	0x44e
	.uleb128 0xa
	.long	.LASF83
	.value	0x44f
	.uleb128 0xa
	.long	.LASF84
	.value	0x450
	.uleb128 0xa
	.long	.LASF85
	.value	0x4b0
	.uleb128 0xa
	.long	.LASF86
	.value	0x4b1
	.byte	0
	.uleb128 0x4
	.long	.LASF87
	.byte	0x6
	.byte	0x54
	.long	0x117
	.uleb128 0x4
	.long	.LASF88
	.byte	0x7
	.byte	0x12
	.long	0xb4
	.uleb128 0x4
	.long	.LASF89
	.byte	0x7
	.byte	0x15
	.long	0xb4
	.uleb128 0xb
	.long	.LASF111
	.byte	0x8
	.byte	0x8
	.byte	0x8
	.long	0x309
	.uleb128 0xc
	.long	.LASF90
	.byte	0x8
	.byte	0x9
	.long	0x309
	.byte	0
	.uleb128 0xc
	.long	.LASF91
	.byte	0x8
	.byte	0xa
	.long	0x309
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2e4
	.uleb128 0x4
	.long	.LASF92
	.byte	0x8
	.byte	0xb
	.long	0x2e4
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0x9
	.byte	0x8
	.long	0x333
	.uleb128 0x9
	.long	.LASF93
	.byte	0
	.uleb128 0x9
	.long	.LASF94
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF95
	.byte	0x9
	.byte	0xb
	.long	0x31a
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0x9
	.byte	0xd
	.long	0x369
	.uleb128 0x9
	.long	.LASF96
	.byte	0
	.uleb128 0x9
	.long	.LASF97
	.byte	0x1
	.uleb128 0x9
	.long	.LASF98
	.byte	0x2
	.uleb128 0x9
	.long	.LASF99
	.byte	0x3
	.uleb128 0x9
	.long	.LASF100
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF101
	.byte	0x9
	.byte	0x13
	.long	0x33e
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0x9
	.byte	0x15
	.long	0x3b1
	.uleb128 0x9
	.long	.LASF102
	.byte	0
	.uleb128 0x9
	.long	.LASF103
	.byte	0x1
	.uleb128 0x9
	.long	.LASF104
	.byte	0x2
	.uleb128 0x9
	.long	.LASF105
	.byte	0x3
	.uleb128 0x9
	.long	.LASF106
	.byte	0x4
	.uleb128 0x9
	.long	.LASF107
	.byte	0x5
	.uleb128 0x9
	.long	.LASF108
	.byte	0x6
	.uleb128 0x9
	.long	.LASF109
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF110
	.byte	0x9
	.byte	0x1e
	.long	0x374
	.uleb128 0xb
	.long	.LASF112
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.long	0x3f9
	.uleb128 0xc
	.long	.LASF113
	.byte	0x9
	.byte	0x21
	.long	0x30f
	.byte	0
	.uleb128 0xc
	.long	.LASF114
	.byte	0x9
	.byte	0x22
	.long	0x3f9
	.byte	0x8
	.uleb128 0xc
	.long	.LASF115
	.byte	0x9
	.byte	0x23
	.long	0x333
	.byte	0xc
	.uleb128 0xc
	.long	.LASF116
	.byte	0x9
	.byte	0x24
	.long	0x3b1
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x3ff
	.uleb128 0x7
	.long	0xe0
	.uleb128 0x4
	.long	.LASF117
	.byte	0x9
	.byte	0x25
	.long	0x3bc
	.uleb128 0x6
	.byte	0x4
	.long	0x30f
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0xa
	.byte	0x8
	.long	0x452
	.uleb128 0x9
	.long	.LASF118
	.byte	0
	.uleb128 0x9
	.long	.LASF119
	.byte	0x1
	.uleb128 0x9
	.long	.LASF120
	.byte	0x2
	.uleb128 0x9
	.long	.LASF121
	.byte	0x3
	.uleb128 0x9
	.long	.LASF122
	.byte	0x4
	.uleb128 0x9
	.long	.LASF123
	.byte	0x5
	.uleb128 0x9
	.long	.LASF124
	.byte	0x6
	.uleb128 0x9
	.long	.LASF125
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF126
	.byte	0xa
	.byte	0x11
	.long	0x415
	.uleb128 0xd
	.byte	0x7c
	.byte	0xa
	.byte	0x15
	.long	0x5c2
	.uleb128 0xc
	.long	.LASF127
	.byte	0xa
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0xc
	.long	.LASF128
	.byte	0xa
	.byte	0x1a
	.long	0x3f9
	.byte	0x4
	.uleb128 0xc
	.long	.LASF129
	.byte	0xa
	.byte	0x1d
	.long	0x5c2
	.byte	0x8
	.uleb128 0xc
	.long	.LASF130
	.byte	0xa
	.byte	0x20
	.long	0x5d2
	.byte	0x10
	.uleb128 0xc
	.long	.LASF131
	.byte	0xa
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0xc
	.long	.LASF132
	.byte	0xa
	.byte	0x22
	.long	0x30f
	.byte	0x18
	.uleb128 0xc
	.long	.LASF133
	.byte	0xa
	.byte	0x25
	.long	0x10c
	.byte	0x20
	.uleb128 0xc
	.long	.LASF134
	.byte	0xa
	.byte	0x28
	.long	0x62d
	.byte	0x24
	.uleb128 0xc
	.long	.LASF135
	.byte	0xa
	.byte	0x2b
	.long	0x30f
	.byte	0x28
	.uleb128 0xc
	.long	.LASF136
	.byte	0xa
	.byte	0x2e
	.long	0x30f
	.byte	0x30
	.uleb128 0xc
	.long	.LASF137
	.byte	0xa
	.byte	0x2f
	.long	0x2d9
	.byte	0x38
	.uleb128 0xc
	.long	.LASF138
	.byte	0xa
	.byte	0x30
	.long	0x2d9
	.byte	0x40
	.uleb128 0xc
	.long	.LASF139
	.byte	0xa
	.byte	0x31
	.long	0x40f
	.byte	0x48
	.uleb128 0xe
	.string	"msg"
	.byte	0xa
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0xc
	.long	.LASF140
	.byte	0xa
	.byte	0x36
	.long	0x33
	.byte	0x50
	.uleb128 0xc
	.long	.LASF141
	.byte	0xa
	.byte	0x39
	.long	0x452
	.byte	0x54
	.uleb128 0xc
	.long	.LASF142
	.byte	0xa
	.byte	0x3a
	.long	0x369
	.byte	0x58
	.uleb128 0xc
	.long	.LASF112
	.byte	0xa
	.byte	0x3d
	.long	0x633
	.byte	0x5c
	.uleb128 0xc
	.long	.LASF143
	.byte	0xa
	.byte	0x40
	.long	0x682
	.byte	0x60
	.uleb128 0xc
	.long	.LASF144
	.byte	0xa
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0xc
	.long	.LASF145
	.byte	0xa
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0xc
	.long	.LASF146
	.byte	0xa
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0xc
	.long	.LASF147
	.byte	0xa
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0xc
	.long	.LASF148
	.byte	0xa
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0xc
	.long	.LASF149
	.byte	0xa
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0xc
	.long	.LASF150
	.byte	0xa
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0xc
	.long	.LASF151
	.byte	0xa
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0xc
	.long	.LASF152
	.byte	0xa
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0xc
	.long	.LASF153
	.byte	0xa
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0xf
	.long	0xc6
	.long	0x5d2
	.uleb128 0x10
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xf6
	.uleb128 0xb
	.long	.LASF154
	.byte	0x2c
	.byte	0xb
	.byte	0x8
	.long	0x62d
	.uleb128 0xc
	.long	.LASF112
	.byte	0xb
	.byte	0x9
	.long	0x404
	.byte	0
	.uleb128 0xc
	.long	.LASF155
	.byte	0xb
	.byte	0xa
	.long	0x7a8
	.byte	0x14
	.uleb128 0xc
	.long	.LASF134
	.byte	0xb
	.byte	0xb
	.long	0x62d
	.byte	0x18
	.uleb128 0xc
	.long	.LASF156
	.byte	0xb
	.byte	0xc
	.long	0x101
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF157
	.byte	0xb
	.byte	0xf
	.long	0x30f
	.byte	0x20
	.uleb128 0xc
	.long	.LASF153
	.byte	0xb
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d8
	.uleb128 0x6
	.byte	0x4
	.long	0x404
	.uleb128 0xb
	.long	.LASF158
	.byte	0x28
	.byte	0xc
	.byte	0xb
	.long	0x682
	.uleb128 0xc
	.long	.LASF112
	.byte	0xc
	.byte	0xc
	.long	0x404
	.byte	0
	.uleb128 0xc
	.long	.LASF159
	.byte	0xc
	.byte	0xd
	.long	0xeb
	.byte	0x14
	.uleb128 0xc
	.long	.LASF160
	.byte	0xc
	.byte	0xe
	.long	0xeb
	.byte	0x18
	.uleb128 0xc
	.long	.LASF161
	.byte	0xc
	.byte	0x10
	.long	0x30f
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF153
	.byte	0xc
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x639
	.uleb128 0x4
	.long	.LASF162
	.byte	0xa
	.byte	0x70
	.long	0x45d
	.uleb128 0x4
	.long	.LASF163
	.byte	0xa
	.byte	0x72
	.long	0x69e
	.uleb128 0x6
	.byte	0x4
	.long	0x6a4
	.uleb128 0x11
	.long	0x6af
	.uleb128 0x12
	.long	0xc6
	.byte	0
	.uleb128 0xd
	.byte	0x1c
	.byte	0xd
	.byte	0x21
	.long	0x70c
	.uleb128 0xe
	.string	"buf"
	.byte	0xd
	.byte	0x22
	.long	0x70c
	.byte	0
	.uleb128 0xe
	.string	"end"
	.byte	0xd
	.byte	0x23
	.long	0x70c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF164
	.byte	0xd
	.byte	0x24
	.long	0x70c
	.byte	0x8
	.uleb128 0xc
	.long	.LASF165
	.byte	0xd
	.byte	0x25
	.long	0x70c
	.byte	0xc
	.uleb128 0xc
	.long	.LASF166
	.byte	0xd
	.byte	0x26
	.long	0x33
	.byte	0x10
	.uleb128 0xc
	.long	.LASF167
	.byte	0xd
	.byte	0x27
	.long	0x33
	.byte	0x14
	.uleb128 0xc
	.long	.LASF168
	.byte	0xd
	.byte	0x28
	.long	0x33
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x9e
	.uleb128 0x4
	.long	.LASF169
	.byte	0xd
	.byte	0x29
	.long	0x6af
	.uleb128 0xd
	.byte	0x50
	.byte	0xe
	.byte	0x8
	.long	0x792
	.uleb128 0xc
	.long	.LASF112
	.byte	0xe
	.byte	0x9
	.long	0x404
	.byte	0
	.uleb128 0xe
	.string	"buf"
	.byte	0xe
	.byte	0xa
	.long	0xc6
	.byte	0x14
	.uleb128 0xc
	.long	.LASF170
	.byte	0xe
	.byte	0xb
	.long	0x712
	.byte	0x18
	.uleb128 0xc
	.long	.LASF171
	.byte	0xe
	.byte	0xc
	.long	0x33
	.byte	0x34
	.uleb128 0xc
	.long	.LASF172
	.byte	0xe
	.byte	0xd
	.long	0x33
	.byte	0x38
	.uleb128 0xc
	.long	.LASF173
	.byte	0xe
	.byte	0xe
	.long	0x33
	.byte	0x3c
	.uleb128 0xc
	.long	.LASF174
	.byte	0xe
	.byte	0xf
	.long	0x33
	.byte	0x40
	.uleb128 0xc
	.long	.LASF175
	.byte	0xe
	.byte	0x11
	.long	0x30f
	.byte	0x44
	.uleb128 0xc
	.long	.LASF153
	.byte	0xe
	.byte	0x13
	.long	0x9e
	.byte	0x4c
	.byte	0
	.uleb128 0x4
	.long	.LASF176
	.byte	0xe
	.byte	0x14
	.long	0x71d
	.uleb128 0x4
	.long	.LASF177
	.byte	0xc
	.byte	0x13
	.long	0x639
	.uleb128 0x6
	.byte	0x4
	.long	0x688
	.uleb128 0x4
	.long	.LASF178
	.byte	0xb
	.byte	0x13
	.long	0x5d8
	.uleb128 0x4
	.long	.LASF179
	.byte	0xf
	.byte	0x13
	.long	0x7c4
	.uleb128 0x6
	.byte	0x4
	.long	0x7ca
	.uleb128 0x11
	.long	0x7da
	.uleb128 0x12
	.long	0xc6
	.uleb128 0x12
	.long	0xc6
	.byte	0
	.uleb128 0xd
	.byte	0x44
	.byte	0xf
	.byte	0x15
	.long	0x87e
	.uleb128 0xc
	.long	.LASF180
	.byte	0xf
	.byte	0x16
	.long	0x30f
	.byte	0
	.uleb128 0xc
	.long	.LASF181
	.byte	0xf
	.byte	0x17
	.long	0x40f
	.byte	0x8
	.uleb128 0xc
	.long	.LASF114
	.byte	0xf
	.byte	0x18
	.long	0x3f9
	.byte	0xc
	.uleb128 0xe
	.string	"cb"
	.byte	0xf
	.byte	0x19
	.long	0x7b9
	.byte	0x10
	.uleb128 0xc
	.long	.LASF182
	.byte	0xf
	.byte	0x1a
	.long	0xc6
	.byte	0x14
	.uleb128 0xc
	.long	.LASF183
	.byte	0xf
	.byte	0x1b
	.long	0x2ce
	.byte	0x18
	.uleb128 0xc
	.long	.LASF184
	.byte	0xf
	.byte	0x1c
	.long	0x2ce
	.byte	0x20
	.uleb128 0xc
	.long	.LASF185
	.byte	0xf
	.byte	0x1d
	.long	0x2ce
	.byte	0x28
	.uleb128 0xc
	.long	.LASF186
	.byte	0xf
	.byte	0x1e
	.long	0x2ce
	.byte	0x30
	.uleb128 0xc
	.long	.LASF187
	.byte	0xf
	.byte	0x1f
	.long	0xc6
	.byte	0x38
	.uleb128 0xc
	.long	.LASF116
	.byte	0xf
	.byte	0x20
	.long	0x3b1
	.byte	0x3c
	.uleb128 0xc
	.long	.LASF188
	.byte	0xf
	.byte	0x21
	.long	0x9e
	.byte	0x40
	.uleb128 0xc
	.long	.LASF153
	.byte	0xf
	.byte	0x22
	.long	0x9e
	.byte	0x41
	.byte	0
	.uleb128 0x4
	.long	.LASF189
	.byte	0xf
	.byte	0x23
	.long	0x7da
	.uleb128 0x6
	.byte	0x4
	.long	0x87e
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0xf
	.byte	0x2f
	.long	0x8a8
	.uleb128 0x9
	.long	.LASF190
	.byte	0
	.uleb128 0x9
	.long	.LASF191
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF192
	.byte	0x10
	.byte	0x5d
	.long	0xa9
	.uleb128 0x4
	.long	.LASF193
	.byte	0x10
	.byte	0x62
	.long	0x2c
	.uleb128 0x4
	.long	.LASF194
	.byte	0x11
	.byte	0x2c
	.long	0xc6
	.uleb128 0x4
	.long	.LASF195
	.byte	0x11
	.byte	0x2d
	.long	0xc6
	.uleb128 0x4
	.long	.LASF196
	.byte	0x11
	.byte	0x2e
	.long	0xc6
	.uleb128 0x4
	.long	.LASF197
	.byte	0x11
	.byte	0x2f
	.long	0xc6
	.uleb128 0x4
	.long	.LASF198
	.byte	0x11
	.byte	0x31
	.long	0x69e
	.uleb128 0x4
	.long	.LASF199
	.byte	0x11
	.byte	0x32
	.long	0x900
	.uleb128 0x6
	.byte	0x4
	.long	0x906
	.uleb128 0x13
	.long	0x8b3
	.long	0x915
	.uleb128 0x12
	.long	0xc6
	.byte	0
	.uleb128 0xd
	.byte	0xc
	.byte	0x11
	.byte	0x34
	.long	0x942
	.uleb128 0xc
	.long	.LASF200
	.byte	0x11
	.byte	0x36
	.long	0xc6
	.byte	0
	.uleb128 0xc
	.long	.LASF201
	.byte	0x11
	.byte	0x37
	.long	0x8ea
	.byte	0x4
	.uleb128 0xe
	.string	"arg"
	.byte	0x11
	.byte	0x38
	.long	0xc6
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.long	.LASF202
	.byte	0x11
	.byte	0x39
	.long	0x915
	.uleb128 0xd
	.byte	0x8
	.byte	0x11
	.byte	0x3b
	.long	0x96e
	.uleb128 0xc
	.long	.LASF203
	.byte	0x11
	.byte	0x3d
	.long	0x8d4
	.byte	0
	.uleb128 0xc
	.long	.LASF204
	.byte	0x11
	.byte	0x3e
	.long	0x8df
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF205
	.byte	0x11
	.byte	0x3f
	.long	0x94d
	.uleb128 0xd
	.byte	0x18
	.byte	0x11
	.byte	0x41
	.long	0x9b2
	.uleb128 0xc
	.long	.LASF201
	.byte	0x11
	.byte	0x43
	.long	0x8f5
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x11
	.byte	0x44
	.long	0xc6
	.byte	0x4
	.uleb128 0xc
	.long	.LASF206
	.byte	0x11
	.byte	0x45
	.long	0x942
	.byte	0x8
	.uleb128 0xc
	.long	.LASF203
	.byte	0x11
	.byte	0x46
	.long	0x9b2
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x96e
	.uleb128 0x4
	.long	.LASF207
	.byte	0x11
	.byte	0x47
	.long	0x979
	.uleb128 0x4
	.long	.LASF208
	.byte	0x11
	.byte	0x49
	.long	0xa9
	.uleb128 0x4
	.long	.LASF209
	.byte	0x11
	.byte	0x4a
	.long	0x9d9
	.uleb128 0x6
	.byte	0x4
	.long	0x9df
	.uleb128 0x11
	.long	0x9ea
	.uleb128 0x12
	.long	0x9c3
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.byte	0xc
	.long	0xa0b
	.uleb128 0xc
	.long	.LASF201
	.byte	0x1
	.byte	0xe
	.long	0x8f5
	.byte	0
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0xf
	.long	0xc6
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF210
	.byte	0x1
	.byte	0x10
	.long	0x9ea
	.uleb128 0x14
	.long	.LASF303
	.byte	0x1
	.value	0x169
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5d
	.uleb128 0x15
	.long	.LASF206
	.byte	0x1
	.value	0x169
	.long	0xc6
	.long	.LLST0
	.uleb128 0x16
	.string	"arg"
	.byte	0x1
	.value	0x169
	.long	0xc6
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF212
	.byte	0x1
	.value	0x16d
	.long	0xa5d
	.long	.LLST2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x942
	.uleb128 0x18
	.long	.LASF214
	.byte	0x1
	.byte	0x12
	.long	0x8b3
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb00
	.uleb128 0x19
	.long	.LASF203
	.byte	0x1
	.byte	0x12
	.long	0xb00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF211
	.byte	0x1
	.byte	0x12
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LASF114
	.byte	0x1
	.byte	0x12
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF201
	.byte	0x1
	.byte	0x12
	.long	0x9ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x19
	.long	.LASF131
	.byte	0x1
	.byte	0x12
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.string	"arg"
	.byte	0x1
	.byte	0x12
	.long	0x9c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x14
	.long	0x2c3
	.long	.LLST3
	.uleb128 0x1c
	.long	.LASF213
	.byte	0x1
	.byte	0x15
	.long	0x7a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.long	.LVL5
	.long	0x16eb
	.uleb128 0x1d
	.long	.LVL7
	.long	0x16f6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x8d4
	.uleb128 0x18
	.long	.LASF215
	.byte	0x1
	.byte	0x24
	.long	0x8b3
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xb46
	.uleb128 0x19
	.long	.LASF203
	.byte	0x1
	.byte	0x24
	.long	0xb00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x26
	.long	0x2c3
	.long	.LLST4
	.uleb128 0x1d
	.long	.LVL9
	.long	0x16ff
	.byte	0
	.uleb128 0x1e
	.long	.LASF216
	.byte	0x1
	.byte	0x35
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xb7c
	.uleb128 0x19
	.long	.LASF203
	.byte	0x1
	.byte	0x35
	.long	0xb00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL12
	.long	0x170a
	.uleb128 0x1f
	.long	.LVL13
	.long	0x1715
	.byte	0
	.uleb128 0x1e
	.long	.LASF217
	.byte	0x1
	.byte	0x3f
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xb9b
	.uleb128 0x1f
	.long	.LVL14
	.long	0x1720
	.byte	0
	.uleb128 0x18
	.long	.LASF218
	.byte	0x1
	.byte	0x44
	.long	0x73
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xbcd
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x46
	.long	0x2c3
	.long	.LLST5
	.uleb128 0x1d
	.long	.LVL15
	.long	0x172b
	.byte	0
	.uleb128 0x18
	.long	.LASF219
	.byte	0x1
	.byte	0x51
	.long	0x8b3
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf5
	.uleb128 0x19
	.long	.LASF203
	.byte	0x1
	.byte	0x51
	.long	0xb00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x18
	.long	.LASF220
	.byte	0x1
	.byte	0x57
	.long	0x8b3
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xc35
	.uleb128 0x19
	.long	.LASF203
	.byte	0x1
	.byte	0x57
	.long	0xb00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x59
	.long	0x2c3
	.long	.LLST6
	.uleb128 0x1d
	.long	.LVL19
	.long	0x1736
	.byte	0
	.uleb128 0x18
	.long	.LASF221
	.byte	0x1
	.byte	0x65
	.long	0xc73
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xc73
	.uleb128 0x19
	.long	.LASF203
	.byte	0x1
	.byte	0x65
	.long	0xb00
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"t"
	.byte	0x1
	.byte	0x67
	.long	0x7a8
	.long	.LLST7
	.uleb128 0x1d
	.long	.LVL23
	.long	0x170a
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF222
	.uleb128 0x18
	.long	.LASF223
	.byte	0x1
	.byte	0x72
	.long	0x8b3
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc3
	.uleb128 0x19
	.long	.LASF224
	.byte	0x1
	.byte	0x72
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF225
	.byte	0x1
	.byte	0x74
	.long	0xa9
	.long	.LLST8
	.uleb128 0x1d
	.long	.LVL26
	.long	0x1741
	.uleb128 0x1d
	.long	.LVL28
	.long	0x174c
	.byte	0
	.uleb128 0x18
	.long	.LASF226
	.byte	0x1
	.byte	0x80
	.long	0x8b3
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf9
	.uleb128 0x19
	.long	.LASF227
	.byte	0x1
	.byte	0x80
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF228
	.byte	0x1
	.byte	0x80
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x18
	.long	.LASF229
	.byte	0x1
	.byte	0x8a
	.long	0x8b3
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xd47
	.uleb128 0x19
	.long	.LASF230
	.byte	0x1
	.byte	0x8a
	.long	0xd47
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF159
	.byte	0x1
	.byte	0x8a
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x8c
	.long	0x2c3
	.long	.LLST9
	.uleb128 0x1d
	.long	.LVL31
	.long	0x1757
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x8be
	.uleb128 0x18
	.long	.LASF231
	.byte	0x1
	.byte	0x97
	.long	0x8b3
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xd8d
	.uleb128 0x19
	.long	.LASF230
	.byte	0x1
	.byte	0x97
	.long	0xd47
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x99
	.long	0x2c3
	.long	.LLST10
	.uleb128 0x1d
	.long	.LVL34
	.long	0x1762
	.byte	0
	.uleb128 0x18
	.long	.LASF232
	.byte	0x1
	.byte	0xa4
	.long	0x8b3
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xdf3
	.uleb128 0x19
	.long	.LASF230
	.byte	0x1
	.byte	0xa4
	.long	0xd47
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF233
	.byte	0x1
	.byte	0xa4
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xa6
	.long	0x2c3
	.long	.LLST11
	.uleb128 0x20
	.long	.LASF225
	.byte	0x1
	.byte	0xa7
	.long	0x2d9
	.long	.LLST12
	.uleb128 0x1d
	.long	.LVL37
	.long	0x1741
	.uleb128 0x1d
	.long	.LVL39
	.long	0x176d
	.byte	0
	.uleb128 0x18
	.long	.LASF234
	.byte	0x1
	.byte	0xb8
	.long	0x8b3
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xe33
	.uleb128 0x19
	.long	.LASF230
	.byte	0x1
	.byte	0xb8
	.long	0xd47
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xba
	.long	0x2c3
	.long	.LLST13
	.uleb128 0x1d
	.long	.LVL42
	.long	0x1778
	.byte	0
	.uleb128 0x18
	.long	.LASF235
	.byte	0x1
	.byte	0xc5
	.long	0x8b3
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xe73
	.uleb128 0x19
	.long	.LASF236
	.byte	0x1
	.byte	0xc5
	.long	0xe73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xc7
	.long	0x2c3
	.long	.LLST14
	.uleb128 0x1d
	.long	.LVL45
	.long	0x1783
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x8c9
	.uleb128 0x18
	.long	.LASF237
	.byte	0x1
	.byte	0xd2
	.long	0x8b3
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xeb9
	.uleb128 0x19
	.long	.LASF236
	.byte	0x1
	.byte	0xd2
	.long	0xe73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xd4
	.long	0x2c3
	.long	.LLST15
	.uleb128 0x1d
	.long	.LVL48
	.long	0x178e
	.byte	0
	.uleb128 0x18
	.long	.LASF238
	.byte	0x1
	.byte	0xdf
	.long	0x8b3
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xef9
	.uleb128 0x19
	.long	.LASF236
	.byte	0x1
	.byte	0xdf
	.long	0xe73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xe1
	.long	0x2c3
	.long	.LLST16
	.uleb128 0x1d
	.long	.LVL51
	.long	0x1799
	.byte	0
	.uleb128 0x18
	.long	.LASF239
	.byte	0x1
	.byte	0xec
	.long	0x8b3
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xf39
	.uleb128 0x19
	.long	.LASF236
	.byte	0x1
	.byte	0xec
	.long	0xe73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xee
	.long	0x2c3
	.long	.LLST17
	.uleb128 0x1d
	.long	.LVL54
	.long	0x17a4
	.byte	0
	.uleb128 0x18
	.long	.LASF240
	.byte	0x1
	.byte	0xf9
	.long	0x8b3
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xfa4
	.uleb128 0x19
	.long	.LASF241
	.byte	0x1
	.byte	0xf9
	.long	0xfa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF114
	.byte	0x1
	.byte	0xf9
	.long	0xd5
	.long	.LLST18
	.uleb128 0x19
	.long	.LASF242
	.byte	0x1
	.byte	0xf9
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	.LASF243
	.byte	0x1
	.byte	0xf9
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xfb
	.long	0x2c3
	.long	.LLST19
	.uleb128 0x1d
	.long	.LVL58
	.long	0x17af
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x8df
	.uleb128 0x22
	.long	.LASF244
	.byte	0x1
	.value	0x10b
	.long	0x8b3
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x1019
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x10b
	.long	0xfa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF245
	.byte	0x1
	.value	0x10b
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF233
	.byte	0x1
	.value	0x10b
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x10d
	.long	0x2c3
	.long	.LLST20
	.uleb128 0x24
	.string	"q"
	.byte	0x1
	.value	0x10e
	.long	0x1019
	.long	.LLST21
	.uleb128 0x1d
	.long	.LVL62
	.long	0x17ba
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x792
	.uleb128 0x25
	.long	.LASF304
	.byte	0x1
	.value	0x227
	.long	.LFB53
	.long	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x1076
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x227
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF246
	.byte	0x1
	.value	0x229
	.long	0x1076
	.long	.LLST22
	.uleb128 0x27
	.long	.LASF245
	.byte	0x1
	.value	0x22a
	.long	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.long	.LVL67
	.long	0xfaa
	.uleb128 0x1d
	.long	.LVL68
	.long	0x16f6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x9b8
	.uleb128 0x22
	.long	.LASF247
	.byte	0x1
	.value	0x11b
	.long	0x8b3
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x10fe
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x11b
	.long	0xfa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF245
	.byte	0x1
	.value	0x11b
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF233
	.byte	0x1
	.value	0x11b
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x11d
	.long	0x2c3
	.long	.LLST23
	.uleb128 0x27
	.long	.LASF248
	.byte	0x1
	.value	0x11e
	.long	0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LVL70
	.long	0x1741
	.uleb128 0x1d
	.long	.LVL71
	.long	0x17c5
	.uleb128 0x1d
	.long	.LVL73
	.long	0x16f6
	.byte	0
	.uleb128 0x28
	.long	.LASF305
	.byte	0x1
	.value	0x1ea
	.long	.LFB49
	.long	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x1151
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x1ea
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF249
	.byte	0x1
	.value	0x1ec
	.long	0x9b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0
	.uleb128 0x27
	.long	.LASF245
	.byte	0x1
	.value	0x1f0
	.long	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.long	.LVL76
	.long	0x107c
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF250
	.byte	0x1
	.value	0x129
	.long	0x8b3
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1194
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x129
	.long	0xfa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x12b
	.long	0x2c3
	.long	.LLST24
	.uleb128 0x1d
	.long	.LVL79
	.long	0x17d0
	.byte	0
	.uleb128 0x22
	.long	.LASF251
	.byte	0x1
	.value	0x137
	.long	0xc73
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x11fe
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x137
	.long	0xfa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x139
	.long	0xc73
	.long	.LLST25
	.uleb128 0x17
	.long	.LASF252
	.byte	0x1
	.value	0x13a
	.long	0x33
	.long	.LLST26
	.uleb128 0x24
	.string	"q"
	.byte	0x1
	.value	0x13c
	.long	0x1019
	.long	.LLST27
	.uleb128 0x1d
	.long	.LVL83
	.long	0x17db
	.uleb128 0x1d
	.long	.LVL85
	.long	0x17e6
	.byte	0
	.uleb128 0x22
	.long	.LASF253
	.byte	0x1
	.value	0x14c
	.long	0xc73
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1278
	.uleb128 0x23
	.long	.LASF241
	.byte	0x1
	.value	0x14c
	.long	0xfa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x14e
	.long	0xc73
	.long	.LLST28
	.uleb128 0x17
	.long	.LASF252
	.byte	0x1
	.value	0x14f
	.long	0x33
	.long	.LLST29
	.uleb128 0x24
	.string	"q"
	.byte	0x1
	.value	0x151
	.long	0x1019
	.long	.LLST30
	.uleb128 0x17
	.long	.LASF254
	.byte	0x1
	.value	0x152
	.long	0xa9
	.long	.LLST31
	.uleb128 0x1d
	.long	.LVL89
	.long	0x17db
	.uleb128 0x1d
	.long	.LVL96
	.long	0x17e6
	.byte	0
	.uleb128 0x22
	.long	.LASF255
	.byte	0x1
	.value	0x164
	.long	0x8a8
	.long	.LFB39
	.long	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a5
	.uleb128 0x1d
	.long	.LVL99
	.long	0x17f1
	.uleb128 0x1d
	.long	.LVL100
	.long	0x17fc
	.byte	0
	.uleb128 0x22
	.long	.LASF256
	.byte	0x1
	.value	0x174
	.long	0x8b3
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1327
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.value	0x174
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF257
	.byte	0x1
	.value	0x174
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x174
	.long	0x8ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x174
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x176
	.long	0x2c3
	.long	.LLST32
	.uleb128 0x1d
	.long	.LVL102
	.long	0x1741
	.uleb128 0x1d
	.long	.LVL103
	.long	0x1741
	.uleb128 0x1d
	.long	.LVL104
	.long	0x1807
	.byte	0
	.uleb128 0x22
	.long	.LASF258
	.byte	0x1
	.value	0x185
	.long	0x8b3
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a0
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.value	0x185
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF257
	.byte	0x1
	.value	0x185
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x185
	.long	0x8ea
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x185
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x187
	.long	0x2c3
	.long	.LLST33
	.uleb128 0x1d
	.long	.LVL107
	.long	0x1741
	.uleb128 0x1d
	.long	.LVL108
	.long	0x1807
	.byte	0
	.uleb128 0x22
	.long	.LASF259
	.byte	0x1
	.value	0x197
	.long	0x8b3
	.long	.LFB43
	.long	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x13e3
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.value	0x197
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x199
	.long	0x2c3
	.long	.LLST34
	.uleb128 0x1d
	.long	.LVL111
	.long	0x1812
	.byte	0
	.uleb128 0x22
	.long	.LASF260
	.byte	0x1
	.value	0x1a4
	.long	0x8b3
	.long	.LFB44
	.long	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x1426
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.value	0x1a4
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x1a6
	.long	0x2c3
	.long	.LLST35
	.uleb128 0x1d
	.long	.LVL114
	.long	0x181d
	.byte	0
	.uleb128 0x22
	.long	.LASF261
	.byte	0x1
	.value	0x1b3
	.long	0x8b3
	.long	.LFB45
	.long	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x1472
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.value	0x1b3
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x1b5
	.long	0x2c3
	.long	.LLST36
	.uleb128 0x1d
	.long	.LVL117
	.long	0x181d
	.uleb128 0x1d
	.long	.LVL118
	.long	0x1812
	.byte	0
	.uleb128 0x22
	.long	.LASF262
	.byte	0x1
	.value	0x1c3
	.long	0x8b3
	.long	.LFB46
	.long	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x14be
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.value	0x1c3
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.value	0x1c5
	.long	0x2c3
	.long	.LLST37
	.uleb128 0x1d
	.long	.LVL121
	.long	0x181d
	.uleb128 0x1d
	.long	.LVL122
	.long	0x1828
	.byte	0
	.uleb128 0x22
	.long	.LASF263
	.byte	0x1
	.value	0x1d2
	.long	0xc73
	.long	.LFB47
	.long	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x14f6
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.value	0x1d2
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"t"
	.byte	0x1
	.value	0x1d4
	.long	0x889
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.long	.LASF264
	.byte	0x1
	.value	0x1e0
	.long	0xc73
	.long	.LFB48
	.long	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x1520
	.uleb128 0x23
	.long	.LASF206
	.byte	0x1
	.value	0x1e0
	.long	0xa5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LASF265
	.byte	0x1
	.value	0x1f9
	.long	0x8b3
	.long	.LFB50
	.long	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1592
	.uleb128 0x23
	.long	.LASF249
	.byte	0x1
	.value	0x1f9
	.long	0x9b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF211
	.byte	0x1
	.value	0x1f9
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF131
	.byte	0x1
	.value	0x1f9
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	.LASF266
	.byte	0x1
	.value	0x1f9
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.long	.LVL128
	.long	0xf39
	.uleb128 0x1d
	.long	.LVL129
	.long	0xa63
	.uleb128 0x1d
	.long	.LVL130
	.long	0x1151
	.byte	0
	.uleb128 0x22
	.long	.LASF267
	.byte	0x1
	.value	0x20b
	.long	0x8b3
	.long	.LFB51
	.long	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x15ce
	.uleb128 0x23
	.long	.LASF249
	.byte	0x1
	.value	0x20b
	.long	0x9b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL132
	.long	0xb06
	.uleb128 0x1d
	.long	.LVL133
	.long	0x1151
	.byte	0
	.uleb128 0x22
	.long	.LASF268
	.byte	0x1
	.value	0x21a
	.long	0x8b3
	.long	.LFB52
	.long	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x1637
	.uleb128 0x23
	.long	.LASF249
	.byte	0x1
	.value	0x21a
	.long	0x9b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x21a
	.long	0x8f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x21a
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF245
	.byte	0x1
	.value	0x21c
	.long	0xa0b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1d
	.long	.LVL135
	.long	0xfaa
	.uleb128 0x1d
	.long	.LVL136
	.long	0x16f6
	.byte	0
	.uleb128 0x22
	.long	.LASF269
	.byte	0x1
	.value	0x232
	.long	0x8b3
	.long	.LFB54
	.long	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x16b8
	.uleb128 0x23
	.long	.LASF246
	.byte	0x1
	.value	0x232
	.long	0x1076
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF249
	.byte	0x1
	.value	0x232
	.long	0x9b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF201
	.byte	0x1
	.value	0x232
	.long	0x8f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.long	.LASF257
	.byte	0x1
	.value	0x232
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x232
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.long	.LVL138
	.long	0x12a5
	.uleb128 0x1d
	.long	.LVL139
	.long	0x13a0
	.uleb128 0x1d
	.long	.LVL140
	.long	0x1472
	.byte	0
	.uleb128 0x22
	.long	.LASF270
	.byte	0x1
	.value	0x249
	.long	0x8b3
	.long	.LFB55
	.long	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x16eb
	.uleb128 0x23
	.long	.LASF246
	.byte	0x1
	.value	0x249
	.long	0x1076
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL142
	.long	0x1472
	.byte	0
	.uleb128 0x2b
	.long	.LASF271
	.long	.LASF271
	.byte	0xa
	.byte	0x9d
	.uleb128 0x2c
	.long	.LASF306
	.long	.LASF306
	.uleb128 0x2b
	.long	.LASF272
	.long	.LASF272
	.byte	0xa
	.byte	0xb6
	.uleb128 0x2b
	.long	.LASF273
	.long	.LASF273
	.byte	0xa
	.byte	0xcc
	.uleb128 0x2b
	.long	.LASF274
	.long	.LASF274
	.byte	0xa
	.byte	0xd4
	.uleb128 0x2b
	.long	.LASF275
	.long	.LASF275
	.byte	0x12
	.byte	0x17
	.uleb128 0x2b
	.long	.LASF276
	.long	.LASF276
	.byte	0x12
	.byte	0x1d
	.uleb128 0x2b
	.long	.LASF277
	.long	.LASF277
	.byte	0xa
	.byte	0xfe
	.uleb128 0x2b
	.long	.LASF278
	.long	.LASF278
	.byte	0x13
	.byte	0x1f
	.uleb128 0x2b
	.long	.LASF279
	.long	.LASF279
	.byte	0xa
	.byte	0xc0
	.uleb128 0x2b
	.long	.LASF280
	.long	.LASF280
	.byte	0xc
	.byte	0x2d
	.uleb128 0x2b
	.long	.LASF281
	.long	.LASF281
	.byte	0xc
	.byte	0x3d
	.uleb128 0x2b
	.long	.LASF282
	.long	.LASF282
	.byte	0xc
	.byte	0x4c
	.uleb128 0x2b
	.long	.LASF283
	.long	.LASF283
	.byte	0xc
	.byte	0x35
	.uleb128 0x2b
	.long	.LASF284
	.long	.LASF284
	.byte	0xb
	.byte	0x2b
	.uleb128 0x2b
	.long	.LASF285
	.long	.LASF285
	.byte	0xb
	.byte	0x3b
	.uleb128 0x2b
	.long	.LASF286
	.long	.LASF286
	.byte	0xb
	.byte	0x42
	.uleb128 0x2b
	.long	.LASF287
	.long	.LASF287
	.byte	0xb
	.byte	0x32
	.uleb128 0x2b
	.long	.LASF288
	.long	.LASF288
	.byte	0xe
	.byte	0x48
	.uleb128 0x2b
	.long	.LASF289
	.long	.LASF289
	.byte	0xe
	.byte	0x5a
	.uleb128 0x2b
	.long	.LASF290
	.long	.LASF290
	.byte	0xe
	.byte	0x65
	.uleb128 0x2b
	.long	.LASF291
	.long	.LASF291
	.byte	0xe
	.byte	0x50
	.uleb128 0x2b
	.long	.LASF292
	.long	.LASF292
	.byte	0x14
	.byte	0x8
	.uleb128 0x2b
	.long	.LASF293
	.long	.LASF293
	.byte	0x14
	.byte	0x9
	.uleb128 0x2b
	.long	.LASF294
	.long	.LASF294
	.byte	0x13
	.byte	0x18
	.uleb128 0x2b
	.long	.LASF295
	.long	.LASF295
	.byte	0x13
	.byte	0x26
	.uleb128 0x2b
	.long	.LASF296
	.long	.LASF296
	.byte	0xf
	.byte	0x55
	.uleb128 0x2b
	.long	.LASF297
	.long	.LASF297
	.byte	0xf
	.byte	0x65
	.uleb128 0x2b
	.long	.LASF298
	.long	.LASF298
	.byte	0xf
	.byte	0x6c
	.uleb128 0x2b
	.long	.LASF299
	.long	.LASF299
	.byte	0xf
	.byte	0x5d
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x17
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2116
	.uleb128 0x19
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
	.uleb128 0xb
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
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL3
	.long	.LFE40
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL3
	.long	.LFE40
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL3
	.long	.LFE40
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
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
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL26
	.long	.LVL28-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL31
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL37
	.long	.LVL38
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST13:
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL45
	.long	.LVL46
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL56
	.long	.LVL57
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL57
	.long	.LVL58-1
	.value	0x1
	.byte	0x51
	.long	.LVL58-1
	.long	.LFE33
	.value	0x13
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x3
	.long	.LC21
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST20:
	.long	.LVL62
	.long	.LVL63
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST21:
	.long	.LVL61
	.long	.LVL62-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST22:
	.long	.LVL65
	.long	.LVL66
	.value	0x1
	.byte	0x50
	.long	.LVL66
	.long	.LFE53
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST23:
	.long	.LVL71
	.long	.LVL72
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST24:
	.long	.LVL79
	.long	.LVL80
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL84
	.long	.LVL86
	.value	0x1
	.byte	0x53
	.long	.LVL86
	.long	.LFE37
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL83
	.long	.LVL85-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL82
	.long	.LVL84
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST28:
	.long	.LVL95
	.long	.LVL97
	.value	0x1
	.byte	0x53
	.long	.LVL97
	.long	.LFE38
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x50
	.long	.LVL91
	.long	.LVL98
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST30:
	.long	.LVL88
	.long	.LVL95
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST31:
	.long	.LVL92
	.long	.LVL93
	.value	0xf
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x77
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.long	.LVL93
	.long	.LVL94
	.value	0x10
	.byte	0x70
	.sleb128 0
	.byte	0xf7
	.uleb128 0x25
	.byte	0x77
	.sleb128 0
	.byte	0x73
	.sleb128 52
	.byte	0x6
	.byte	0x22
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.long	.LVL94
	.long	.LVL96-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST32:
	.long	.LVL104
	.long	.LVL105
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST33:
	.long	.LVL108
	.long	.LVL109
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST34:
	.long	.LVL111
	.long	.LVL112
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST35:
	.long	.LVL114
	.long	.LVL115
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST36:
	.long	.LVL118
	.long	.LVL119
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST37:
	.long	.LVL122
	.long	.LVL123
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x15c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
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
	.long	.LFB25
	.long	.LFE25-.LFB25
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
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
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
	.long	.LFB40
	.long	.LFE40
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
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
	.long	.LFB25
	.long	.LFE25
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
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB53
	.long	.LFE53
	.long	.LFB35
	.long	.LFE35
	.long	.LFB49
	.long	.LFE49
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB39
	.long	.LFE39
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
	.long	.LFB44
	.long	.LFE44
	.long	.LFB45
	.long	.LFE45
	.long	.LFB46
	.long	.LFE46
	.long	.LFB47
	.long	.LFE47
	.long	.LFB48
	.long	.LFE48
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"RHINO_NULL_PTR"
.LASF278:
	.string	"krhino_ms_to_ticks"
.LASF69:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF20:
	.string	"sem_count_t"
.LASF126:
	.string	"task_stat_t"
.LASF306:
	.string	"__stack_chk_fail"
.LASF191:
	.string	"TIMER_ACTIVE"
.LASF193:
	.string	"OSStatus"
.LASF179:
	.string	"timer_cb_t"
.LASF23:
	.string	"suspend_nested_t"
.LASF173:
	.string	"peak_num"
.LASF245:
	.string	"message"
.LASF273:
	.string	"krhino_cur_task_get"
.LASF292:
	.string	"cpu_intrpt_save"
.LASF254:
	.string	"max_msg_num"
.LASF40:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF25:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF146:
	.string	"pend_flags"
.LASF136:
	.string	"tick_list"
.LASF89:
	.string	"tick_t"
.LASF255:
	.string	"mico_rtos_get_time"
.LASF0:
	.string	"unsigned int"
.LASF303:
	.string	"timmer_wrapper"
.LASF90:
	.string	"next"
.LASF260:
	.string	"mico_stop_timer"
.LASF168:
	.string	"blk_size"
.LASF224:
	.string	"num_ms"
.LASF57:
	.string	"RHINO_INV_TASK_STATE"
.LASF226:
	.string	"mico_rtos_print_thread_status"
.LASF202:
	.string	"mico_timer_t"
.LASF42:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF190:
	.string	"TIMER_DEACTIVE"
.LASF233:
	.string	"timeout_ms"
.LASF213:
	.string	"task_tmp"
.LASF79:
	.string	"RHINO_TRY_AGAIN"
.LASF48:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF163:
	.string	"task_entry_t"
.LASF58:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF78:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF105:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF227:
	.string	"pcWriteBuffer"
.LASF72:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF153:
	.string	"mm_alloc_flag"
.LASF35:
	.string	"RHINO_KOBJ_BLK"
.LASF91:
	.string	"prev"
.LASF63:
	.string	"RHINO_BLK_INV_STATE"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF97:
	.string	"BLK_ABORT"
.LASF166:
	.string	"freesize"
.LASF274:
	.string	"krhino_task_suspend"
.LASF205:
	.string	"mico_worker_thread_t"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF280:
	.string	"krhino_sem_dyn_create"
.LASF215:
	.string	"mico_rtos_delete_thread"
.LASF143:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF15:
	.string	"uint32_t"
.LASF134:
	.string	"mutex_list"
.LASF45:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF236:
	.string	"mutex"
.LASF38:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF159:
	.string	"count"
.LASF287:
	.string	"krhino_mutex_dyn_del"
.LASF235:
	.string	"mico_rtos_init_mutex"
.LASF110:
	.string	"kobj_type_t"
.LASF52:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF95:
	.string	"blk_policy_t"
.LASF70:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF24:
	.string	"RHINO_SUCCESS"
.LASF281:
	.string	"krhino_sem_give"
.LASF164:
	.string	"head"
.LASF145:
	.string	"time_total"
.LASF256:
	.string	"mico_init_timer"
.LASF210:
	.string	"mico_event_message_t"
.LASF185:
	.string	"init_count"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF121:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF249:
	.string	"worker_thread"
.LASF302:
	.string	"/home/stone/Documents/pca"
.LASF240:
	.string	"mico_rtos_init_queue"
.LASF204:
	.string	"event_queue"
.LASF180:
	.string	"timer_list"
.LASF175:
	.string	"buf_queue_item"
.LASF4:
	.string	"size_t"
.LASF231:
	.string	"mico_rtos_set_semaphore"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF133:
	.string	"suspend_count"
.LASF196:
	.string	"mico_thread_t"
.LASF138:
	.string	"tick_remain"
.LASF148:
	.string	"pend_option"
.LASF36:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF222:
	.string	"_Bool"
.LASF248:
	.string	"msg_len"
.LASF170:
	.string	"ringbuf"
.LASF82:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF12:
	.string	"__uint64_t"
.LASF28:
	.string	"RHINO_STOPPED"
.LASF141:
	.string	"task_state"
.LASF247:
	.string	"mico_rtos_pop_from_queue"
.LASF64:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF184:
	.string	"remain"
.LASF74:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF73:
	.string	"RHINO_SEM_OVF"
.LASF192:
	.string	"mico_time_t"
.LASF232:
	.string	"mico_rtos_get_semaphore"
.LASF225:
	.string	"ticks"
.LASF171:
	.string	"max_msg_size"
.LASF85:
	.string	"RHINO_TASK_STACK_OVF"
.LASF109:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF29:
	.string	"RHINO_INV_PARAM"
.LASF187:
	.string	"priv"
.LASF96:
	.string	"BLK_FINISH"
.LASF80:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF18:
	.string	"char"
.LASF160:
	.string	"peak_count"
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF212:
	.string	"timer_arg"
.LASF189:
	.string	"ktimer_t"
.LASF284:
	.string	"krhino_mutex_dyn_create"
.LASF286:
	.string	"krhino_mutex_unlock"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF258:
	.string	"mico_rtos_init_oneshot_timer"
.LASF237:
	.string	"mico_rtos_lock_mutex"
.LASF14:
	.string	"uint8_t"
.LASF295:
	.string	"krhino_ticks_to_ms"
.LASF127:
	.string	"task_stack"
.LASF259:
	.string	"mico_start_timer"
.LASF220:
	.string	"mico_rtos_thread_force_awake"
.LASF253:
	.string	"mico_rtos_is_queue_full"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF142:
	.string	"blk_state"
.LASF277:
	.string	"krhino_task_wait_abort"
.LASF156:
	.string	"owner_nested"
.LASF169:
	.string	"k_ringbuf_t"
.LASF275:
	.string	"krhino_sched_disable"
.LASF1:
	.string	"long long int"
.LASF270:
	.string	"mico_rtos_deregister_timed_event"
.LASF297:
	.string	"krhino_timer_start"
.LASF269:
	.string	"mico_rtos_register_timed_event"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF128:
	.string	"task_name"
.LASF195:
	.string	"mico_mutex_t"
.LASF208:
	.string	"mico_thread_arg_t"
.LASF152:
	.string	"b_prio"
.LASF198:
	.string	"timer_handler_t"
.LASF137:
	.string	"tick_match"
.LASF183:
	.string	"match"
.LASF217:
	.string	"mico_rtos_suspend_all_thread"
.LASF99:
	.string	"BLK_DEL"
.LASF214:
	.string	"mico_rtos_create_thread"
.LASF98:
	.string	"BLK_TIMEOUT"
.LASF174:
	.string	"min_free_buf_size"
.LASF182:
	.string	"timer_cb_arg"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF120:
	.string	"K_PEND"
.LASF101:
	.string	"blk_state_t"
.LASF290:
	.string	"krhino_buf_queue_recv"
.LASF83:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF43:
	.string	"RHINO_NO_MEM"
.LASF132:
	.string	"task_list"
.LASF75:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF112:
	.string	"blk_obj"
.LASF111:
	.string	"klist_s"
.LASF92:
	.string	"klist_t"
.LASF71:
	.string	"RHINO_QUEUE_FULL"
.LASF147:
	.string	"pend_info"
.LASF113:
	.string	"blk_list"
.LASF66:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF291:
	.string	"krhino_buf_queue_dyn_del"
.LASF108:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF151:
	.string	"prio"
.LASF158:
	.string	"sem_s"
.LASF59:
	.string	"RHINO_NO_PEND_WAIT"
.LASF129:
	.string	"user_info"
.LASF197:
	.string	"mico_queue_t"
.LASF2:
	.string	"long double"
.LASF87:
	.string	"kstat_t"
.LASF19:
	.string	"name_t"
.LASF135:
	.string	"task_stats_item"
.LASF39:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF155:
	.string	"mutex_task"
.LASF203:
	.string	"thread"
.LASF246:
	.string	"event_object"
.LASF93:
	.string	"BLK_POLICY_PRI"
.LASF194:
	.string	"mico_semaphore_t"
.LASF250:
	.string	"mico_rtos_deinit_queue"
.LASF262:
	.string	"mico_deinit_timer"
.LASF7:
	.string	"short int"
.LASF272:
	.string	"krhino_task_dyn_del"
.LASF178:
	.string	"kmutex_t"
.LASF294:
	.string	"krhino_sys_tick_get"
.LASF9:
	.string	"long int"
.LASF188:
	.string	"timer_state"
.LASF130:
	.string	"task_stack_base"
.LASF293:
	.string	"cpu_intrpt_restore"
.LASF118:
	.string	"K_SEED"
.LASF161:
	.string	"sem_item"
.LASF119:
	.string	"K_RDY"
.LASF211:
	.string	"priority"
.LASF162:
	.string	"ktask_t"
.LASF223:
	.string	"mico_rtos_delay_milliseconds"
.LASF298:
	.string	"krhino_timer_stop"
.LASF16:
	.string	"uint64_t"
.LASF124:
	.string	"K_SLEEP_SUSPENDED"
.LASF267:
	.string	"mico_rtos_delete_worker_thread"
.LASF229:
	.string	"mico_rtos_init_semaphore"
.LASF239:
	.string	"mico_rtos_deinit_mutex"
.LASF76:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF244:
	.string	"mico_rtos_push_to_queue"
.LASF218:
	.string	"mico_rtos_resume_all_thread"
.LASF186:
	.string	"round_ticks"
.LASF268:
	.string	"mico_rtos_send_asynchronous_event"
.LASF301:
	.string	"src/mico_rhino.c"
.LASF219:
	.string	"mico_rtos_thread_join"
.LASF261:
	.string	"mico_reload_timer"
.LASF104:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF44:
	.string	"RHINO_RINGBUF_FULL"
.LASF114:
	.string	"name"
.LASF251:
	.string	"mico_rtos_is_queue_empty"
.LASF230:
	.string	"semaphore"
.LASF123:
	.string	"K_SLEEP"
.LASF77:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF252:
	.string	"cpsr"
.LASF21:
	.string	"cpu_stack_t"
.LASF50:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF117:
	.string	"blk_obj_t"
.LASF176:
	.string	"kbuf_queue_t"
.LASF65:
	.string	"RHINO_TIMER_STATE_INV"
.LASF144:
	.string	"time_slice"
.LASF181:
	.string	"to_head"
.LASF17:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF94:
	.string	"BLK_POLICY_FIFO"
.LASF271:
	.string	"krhino_task_dyn_create"
.LASF102:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF241:
	.string	"queue"
.LASF31:
	.string	"RHINO_INV_ALIGN"
.LASF41:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF49:
	.string	"RHINO_INV_SCHED_WAY"
.LASF55:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF266:
	.string	"event_queue_size"
.LASF264:
	.string	"mico_rtos_is_timer_init"
.LASF139:
	.string	"tick_head"
.LASF296:
	.string	"krhino_timer_dyn_create"
.LASF243:
	.string	"number_of_messages"
.LASF154:
	.string	"mutex_s"
.LASF299:
	.string	"krhino_timer_dyn_del"
.LASF167:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF201:
	.string	"function"
.LASF289:
	.string	"krhino_buf_queue_send"
.LASF300:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF116:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF165:
	.string	"tail"
.LASF265:
	.string	"mico_rtos_create_worker_thread"
.LASF228:
	.string	"xWriteBufferLen"
.LASF282:
	.string	"krhino_sem_take"
.LASF22:
	.string	"mutex_nested_t"
.LASF131:
	.string	"stack_size"
.LASF107:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF221:
	.string	"mico_rtos_is_current_thread"
.LASF285:
	.string	"krhino_mutex_lock"
.LASF276:
	.string	"krhino_sched_enable"
.LASF122:
	.string	"K_PEND_SUSPENDED"
.LASF238:
	.string	"mico_rtos_unlock_mutex"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF209:
	.string	"mico_thread_function_t"
.LASF3:
	.string	"signed char"
.LASF88:
	.string	"sys_time_t"
.LASF157:
	.string	"mutex_item"
.LASF207:
	.string	"mico_timed_event_t"
.LASF8:
	.string	"short unsigned int"
.LASF305:
	.string	"worker_thread_main"
.LASF304:
	.string	"timed_event_handler"
.LASF200:
	.string	"handle"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF103:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF199:
	.string	"event_handler_t"
.LASF149:
	.string	"sched_policy"
.LASF115:
	.string	"blk_policy"
.LASF68:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF125:
	.string	"K_DELETED"
.LASF106:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF279:
	.string	"krhino_task_sleep"
.LASF150:
	.string	"cpu_num"
.LASF206:
	.string	"timer"
.LASF263:
	.string	"mico_is_timer_running"
.LASF216:
	.string	"mico_rtos_suspend_thread"
.LASF257:
	.string	"time_ms"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF288:
	.string	"krhino_buf_queue_dyn_create"
.LASF140:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF100:
	.string	"BLK_INVALID"
.LASF283:
	.string	"krhino_sem_dyn_del"
.LASF242:
	.string	"message_size"
.LASF172:
	.string	"cur_num"
.LASF234:
	.string	"mico_rtos_deinit_semaphore"
.LASF177:
	.string	"ksem_t"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
