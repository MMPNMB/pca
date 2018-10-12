	.file	"HAL_OS_rhino.c"
	.text
.Ltext0:
	.section	.text.unlikely.task_wrapper,"ax",@progbits
.LCOLDB0:
	.section	.text.task_wrapper,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.task_wrapper
.Ltext_cold0:
	.section	.text.task_wrapper
	.type	task_wrapper, @function
task_wrapper:
.LFB54:
	.file 1 "framework/protocol/linkkit/iotkit/hal-impl/rhino/HAL_OS_rhino.c"
	.loc 1 193 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 193 0
	movl	8(%ebp), %ebx
.LVL1:
	.loc 1 195 0
	testl	%ebx, %ebx
	je	.L1
	.loc 1 196 0
	subl	$12, %esp
	pushl	8(%ebx)
	call	*12(%ebx)
.LVL2:
	.loc 1 197 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
	.loc 1 200 0
	movl	-4(%ebp), %ebx
.LVL3:
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 197 0
	jmp	aos_free
.LVL4:
.L1:
	.cfi_restore_state
	.loc 1 200 0
	movl	-4(%ebp), %ebx
.LVL5:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE54:
	.size	task_wrapper, .-task_wrapper
	.section	.text.unlikely.task_wrapper
.LCOLDE0:
	.section	.text.task_wrapper
.LHOTE0:
	.section	.text.unlikely.HAL_MutexCreate,"ax",@progbits
.LCOLDB1:
	.section	.text.HAL_MutexCreate,"ax",@progbits
.LHOTB1:
	.globl	HAL_MutexCreate
	.type	HAL_MutexCreate, @function
HAL_MutexCreate:
.LFB33:
	.loc 1 27 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	.loc 1 27 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 30 0
	leal	-16(%ebp), %eax
	pushl	%eax
	call	aos_mutex_new
.LVL6:
	.loc 1 31 0
	xorl	%edx, %edx
	.loc 1 30 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 34 0
	cmove	-16(%ebp), %edx
	.loc 1 35 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L7
	call	__stack_chk_fail
.LVL7:
.L7:
	movl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	HAL_MutexCreate, .-HAL_MutexCreate
	.section	.text.unlikely.HAL_MutexCreate
.LCOLDE1:
	.section	.text.HAL_MutexCreate
.LHOTE1:
	.section	.text.unlikely.HAL_MutexDestroy,"ax",@progbits
.LCOLDB2:
	.section	.text.HAL_MutexDestroy,"ax",@progbits
.LHOTB2:
	.globl	HAL_MutexDestroy
	.type	HAL_MutexDestroy, @function
HAL_MutexDestroy:
.LFB34:
	.loc 1 38 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 39 0
	cmpl	$0, 8(%ebp)
	je	.L10
	.loc 1 40 0
	leal	8(%ebp), %eax
.LVL9:
	subl	$12, %esp
	pushl	%eax
	call	aos_mutex_free
.LVL10:
	addl	$16, %esp
.L10:
	.loc 1 42 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL11:
	ret
	.cfi_endproc
.LFE34:
	.size	HAL_MutexDestroy, .-HAL_MutexDestroy
	.section	.text.unlikely.HAL_MutexDestroy
.LCOLDE2:
	.section	.text.HAL_MutexDestroy
.LHOTE2:
	.section	.text.unlikely.HAL_MutexLock,"ax",@progbits
.LCOLDB3:
	.section	.text.HAL_MutexLock,"ax",@progbits
.LHOTB3:
	.globl	HAL_MutexLock
	.type	HAL_MutexLock, @function
HAL_MutexLock:
.LFB35:
	.loc 1 45 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 46 0
	cmpl	$0, 8(%ebp)
	je	.L13
	.loc 1 47 0
	pushl	%eax
	pushl	%eax
	leal	8(%ebp), %eax
.LVL13:
	pushl	$-1
	pushl	%eax
	call	aos_mutex_lock
.LVL14:
	addl	$16, %esp
.L13:
	.loc 1 49 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL15:
	ret
	.cfi_endproc
.LFE35:
	.size	HAL_MutexLock, .-HAL_MutexLock
	.section	.text.unlikely.HAL_MutexLock
.LCOLDE3:
	.section	.text.HAL_MutexLock
.LHOTE3:
	.section	.text.unlikely.HAL_MutexUnlock,"ax",@progbits
.LCOLDB4:
	.section	.text.HAL_MutexUnlock,"ax",@progbits
.LHOTB4:
	.globl	HAL_MutexUnlock
	.type	HAL_MutexUnlock, @function
HAL_MutexUnlock:
.LFB36:
	.loc 1 52 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 53 0
	cmpl	$0, 8(%ebp)
	je	.L16
	.loc 1 54 0
	leal	8(%ebp), %eax
.LVL17:
	subl	$12, %esp
	pushl	%eax
	call	aos_mutex_unlock
.LVL18:
	addl	$16, %esp
.L16:
	.loc 1 56 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL19:
	ret
	.cfi_endproc
.LFE36:
	.size	HAL_MutexUnlock, .-HAL_MutexUnlock
	.section	.text.unlikely.HAL_MutexUnlock
.LCOLDE4:
	.section	.text.HAL_MutexUnlock
.LHOTE4:
	.section	.text.unlikely.HAL_Malloc,"ax",@progbits
.LCOLDB5:
	.section	.text.HAL_Malloc,"ax",@progbits
.LHOTB5:
	.globl	HAL_Malloc
	.type	HAL_Malloc, @function
HAL_Malloc:
.LFB37:
	.loc 1 59 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 61 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 60 0
	jmp	aos_malloc
.LVL21:
	.cfi_endproc
.LFE37:
	.size	HAL_Malloc, .-HAL_Malloc
	.section	.text.unlikely.HAL_Malloc
.LCOLDE5:
	.section	.text.HAL_Malloc
.LHOTE5:
	.section	.text.unlikely.HAL_Free,"ax",@progbits
.LCOLDB6:
	.section	.text.HAL_Free,"ax",@progbits
.LHOTB6:
	.globl	HAL_Free
	.type	HAL_Free, @function
HAL_Free:
.LFB38:
	.loc 1 64 0
	.cfi_startproc
.LVL22:
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
	jmp	aos_free
.LVL23:
	.cfi_endproc
.LFE38:
	.size	HAL_Free, .-HAL_Free
	.section	.text.unlikely.HAL_Free
.LCOLDE6:
	.section	.text.HAL_Free
.LHOTE6:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"this interface is NOT support yet."
	.section	.text.unlikely.aliot_platform_ota_start,"ax",@progbits
.LCOLDB8:
	.section	.text.aliot_platform_ota_start,"ax",@progbits
.LHOTB8:
	.globl	aliot_platform_ota_start
	.type	aliot_platform_ota_start, @function
aliot_platform_ota_start:
.LFB64:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	pushl	$.LC7
	call	printf
	orl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE64:
	.size	aliot_platform_ota_start, .-aliot_platform_ota_start
	.section	.text.unlikely.aliot_platform_ota_start
.LCOLDE8:
	.section	.text.aliot_platform_ota_start
.LHOTE8:
	.section	.text.unlikely.aliot_platform_ota_write,"ax",@progbits
.LCOLDB9:
	.section	.text.aliot_platform_ota_write,"ax",@progbits
.LHOTB9:
	.globl	aliot_platform_ota_write
	.type	aliot_platform_ota_write, @function
aliot_platform_ota_write:
.LFB40:
	.loc 1 75 0
	.cfi_startproc
.LVL24:
	.loc 1 75 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 76 0
	pushl	$.LC7
	call	printf
.LVL25:
	.loc 1 78 0
	orl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	aliot_platform_ota_write, .-aliot_platform_ota_write
	.section	.text.unlikely.aliot_platform_ota_write
.LCOLDE9:
	.section	.text.aliot_platform_ota_write
.LHOTE9:
	.section	.text.unlikely.aliot_platform_ota_finalize,"ax",@progbits
.LCOLDB10:
	.section	.text.aliot_platform_ota_finalize,"ax",@progbits
.LHOTB10:
	.globl	aliot_platform_ota_finalize
	.type	aliot_platform_ota_finalize, @function
aliot_platform_ota_finalize:
.LFB41:
	.loc 1 81 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 82 0
	pushl	$.LC7
	call	printf
.LVL27:
	.loc 1 84 0
	orl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	aliot_platform_ota_finalize, .-aliot_platform_ota_finalize
	.section	.text.unlikely.aliot_platform_ota_finalize
.LCOLDE10:
	.section	.text.aliot_platform_ota_finalize
.LHOTE10:
	.section	.text.unlikely.HAL_UptimeMs,"ax",@progbits
.LCOLDB11:
	.section	.text.HAL_UptimeMs,"ax",@progbits
.LHOTB11:
	.globl	HAL_UptimeMs
	.type	HAL_UptimeMs, @function
HAL_UptimeMs:
.LFB42:
	.loc 1 87 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 89 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 88 0
	jmp	aos_now_ms
.LVL28:
	.cfi_endproc
.LFE42:
	.size	HAL_UptimeMs, .-HAL_UptimeMs
	.section	.text.unlikely.HAL_UptimeMs
.LCOLDE11:
	.section	.text.HAL_UptimeMs
.LHOTE11:
	.section	.text.unlikely.HAL_SleepMs,"ax",@progbits
.LCOLDB12:
	.section	.text.HAL_SleepMs,"ax",@progbits
.LHOTB12:
	.globl	HAL_SleepMs
	.type	HAL_SleepMs, @function
HAL_SleepMs:
.LFB43:
	.loc 1 92 0
	.cfi_startproc
.LVL29:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 94 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 93 0
	jmp	aos_msleep
.LVL30:
	.cfi_endproc
.LFE43:
	.size	HAL_SleepMs, .-HAL_SleepMs
	.section	.text.unlikely.HAL_SleepMs
.LCOLDE12:
	.section	.text.HAL_SleepMs
.LHOTE12:
	.section	.text.unlikely.aliot_platform_time_left,"ax",@progbits
.LCOLDB13:
	.section	.text.aliot_platform_time_left,"ax",@progbits
.LHOTB13:
	.globl	aliot_platform_time_left
	.type	aliot_platform_time_left, @function
aliot_platform_time_left:
.LFB44:
	.loc 1 97 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 97 0
	movl	12(%ebp), %edx
	movl	20(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	.loc 1 100 0
	cmpl	%ebx, %edx
	jb	.L36
	ja	.L37
	cmpl	%ecx, %eax
	jbe	.L36
.L37:
	.loc 1 101 0
	subl	%ecx, %eax
	sbbl	%ebx, %edx
.LVL32:
	jmp	.L34
.LVL33:
.L36:
	.loc 1 103 0
	xorl	%eax, %eax
	xorl	%edx, %edx
.L34:
.LVL34:
	.loc 1 107 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE44:
	.size	aliot_platform_time_left, .-aliot_platform_time_left
	.section	.text.unlikely.aliot_platform_time_left
.LCOLDE13:
	.section	.text.aliot_platform_time_left
.LHOTE13:
	.section	.text.unlikely.HAL_Snprintf,"ax",@progbits
.LCOLDB14:
	.section	.text.HAL_Snprintf,"ax",@progbits
.LHOTB14:
	.globl	HAL_Snprintf
	.type	HAL_Snprintf, @function
HAL_Snprintf:
.LFB45:
	.loc 1 111 0
	.cfi_startproc
.LVL35:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 115 0
	leal	20(%ebp), %eax
.LVL36:
	.loc 1 116 0
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	vsnprintf
.LVL37:
	.loc 1 120 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE45:
	.size	HAL_Snprintf, .-HAL_Snprintf
	.section	.text.unlikely.HAL_Snprintf
.LCOLDE14:
	.section	.text.HAL_Snprintf
.LHOTE14:
	.section	.text.unlikely.HAL_Vsnprintf,"ax",@progbits
.LCOLDB15:
	.section	.text.HAL_Vsnprintf,"ax",@progbits
.LHOTB15:
	.globl	HAL_Vsnprintf
	.type	HAL_Vsnprintf, @function
HAL_Vsnprintf:
.LFB46:
	.loc 1 124 0
	.cfi_startproc
.LVL38:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 126 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 125 0
	jmp	vsnprintf
.LVL39:
	.cfi_endproc
.LFE46:
	.size	HAL_Vsnprintf, .-HAL_Vsnprintf
	.section	.text.unlikely.HAL_Vsnprintf
.LCOLDE15:
	.section	.text.HAL_Vsnprintf
.LHOTE15:
	.section	.text.unlikely.HAL_Printf,"ax",@progbits
.LCOLDB16:
	.section	.text.HAL_Printf,"ax",@progbits
.LHOTB16:
	.globl	HAL_Printf
	.type	HAL_Printf, @function
HAL_Printf:
.LFB47:
	.loc 1 130 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 133 0
	leal	12(%ebp), %eax
.LVL41:
	.loc 1 134 0
	pushl	%eax
	pushl	8(%ebp)
	call	vprintf
.LVL42:
	.loc 1 137 0
	popl	%eax
	.loc 1 137 0
	movl	_impure_ptr, %eax
	.loc 1 137 0
	pushl	8(%eax)
	call	fflush
.LVL43:
	.loc 1 138 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE47:
	.size	HAL_Printf, .-HAL_Printf
	.section	.text.unlikely.HAL_Printf
.LCOLDE16:
	.section	.text.HAL_Printf
.LHOTE16:
	.section	.text.unlikely.HAL_Srandom,"ax",@progbits
.LCOLDB17:
	.section	.text.HAL_Srandom,"ax",@progbits
.LHOTB17:
	.globl	HAL_Srandom
	.type	HAL_Srandom, @function
HAL_Srandom:
.LFB48:
	.loc 1 142 0
	.cfi_startproc
.LVL44:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 145 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 144 0
	jmp	srand
.LVL45:
	.cfi_endproc
.LFE48:
	.size	HAL_Srandom, .-HAL_Srandom
	.section	.text.unlikely.HAL_Srandom
.LCOLDE17:
	.section	.text.HAL_Srandom
.LHOTE17:
	.section	.text.unlikely.HAL_Random,"ax",@progbits
.LCOLDB18:
	.section	.text.HAL_Random,"ax",@progbits
.LHOTB18:
	.globl	HAL_Random
	.type	HAL_Random, @function
HAL_Random:
.LFB49:
	.loc 1 148 0
	.cfi_startproc
.LVL46:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	.loc 1 148 0
	movl	8(%ebp), %ebx
	.loc 1 149 0
	testl	%ebx, %ebx
	je	.L48
	.loc 1 149 0 is_stmt 0 discriminator 1
	call	rand
.LVL47:
	xorl	%edx, %edx
	divl	%ebx
.L48:
	.loc 1 151 0 is_stmt 1 discriminator 4
	movl	%edx, %eax
	popl	%edx
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE49:
	.size	HAL_Random, .-HAL_Random
	.section	.text.unlikely.HAL_Random
.LCOLDE18:
	.section	.text.HAL_Random
.LHOTE18:
	.section	.text.unlikely.HAL_SemaphoreCreate,"ax",@progbits
.LCOLDB19:
	.section	.text.HAL_SemaphoreCreate,"ax",@progbits
.LHOTB19:
	.globl	HAL_SemaphoreCreate
	.type	HAL_SemaphoreCreate, @function
HAL_SemaphoreCreate:
.LFB50:
	.loc 1 156 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 156 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 159 0
	leal	-16(%ebp), %eax
	pushl	$0
	pushl	%eax
	call	aos_sem_new
.LVL48:
	.loc 1 160 0
	xorl	%edx, %edx
	.loc 1 159 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 163 0
	cmove	-16(%ebp), %edx
	.loc 1 164 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L55
	call	__stack_chk_fail
.LVL49:
.L55:
	movl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE50:
	.size	HAL_SemaphoreCreate, .-HAL_SemaphoreCreate
	.section	.text.unlikely.HAL_SemaphoreCreate
.LCOLDE19:
	.section	.text.HAL_SemaphoreCreate
.LHOTE19:
	.section	.text.unlikely.HAL_SemaphoreDestroy,"ax",@progbits
.LCOLDB20:
	.section	.text.HAL_SemaphoreDestroy,"ax",@progbits
.LHOTB20:
	.globl	HAL_SemaphoreDestroy
	.type	HAL_SemaphoreDestroy, @function
HAL_SemaphoreDestroy:
.LFB51:
	.loc 1 167 0
	.cfi_startproc
.LVL50:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 168 0
	leal	8(%ebp), %eax
.LVL51:
	pushl	%eax
	call	aos_sem_free
.LVL52:
	.loc 1 169 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL53:
	ret
	.cfi_endproc
.LFE51:
	.size	HAL_SemaphoreDestroy, .-HAL_SemaphoreDestroy
	.section	.text.unlikely.HAL_SemaphoreDestroy
.LCOLDE20:
	.section	.text.HAL_SemaphoreDestroy
.LHOTE20:
	.section	.text.unlikely.HAL_SemaphorePost,"ax",@progbits
.LCOLDB21:
	.section	.text.HAL_SemaphorePost,"ax",@progbits
.LHOTB21:
	.globl	HAL_SemaphorePost
	.type	HAL_SemaphorePost, @function
HAL_SemaphorePost:
.LFB52:
	.loc 1 172 0
	.cfi_startproc
.LVL54:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 173 0
	leal	8(%ebp), %eax
.LVL55:
	pushl	%eax
	call	aos_sem_signal
.LVL56:
	.loc 1 174 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL57:
	ret
	.cfi_endproc
.LFE52:
	.size	HAL_SemaphorePost, .-HAL_SemaphorePost
	.section	.text.unlikely.HAL_SemaphorePost
.LCOLDE21:
	.section	.text.HAL_SemaphorePost
.LHOTE21:
	.section	.text.unlikely.HAL_SemaphoreWait,"ax",@progbits
.LCOLDB22:
	.section	.text.HAL_SemaphoreWait,"ax",@progbits
.LHOTB22:
	.globl	HAL_SemaphoreWait
	.type	HAL_SemaphoreWait, @function
HAL_SemaphoreWait:
.LFB53:
	.loc 1 177 0
	.cfi_startproc
.LVL58:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 177 0
	movl	12(%ebp), %eax
	.loc 1 178 0
	cmpl	$-1, %eax
	jne	.L63
	.loc 1 179 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	jmp	.L66
.L63:
	.loc 1 181 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
.L66:
	leal	8(%ebp), %eax
.LVL59:
	pushl	%eax
	call	aos_sem_wait
.LVL60:
	addl	$16, %esp
	.loc 1 183 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL61:
	ret
	.cfi_endproc
.LFE53:
	.size	HAL_SemaphoreWait, .-HAL_SemaphoreWait
	.section	.text.unlikely.HAL_SemaphoreWait
.LCOLDE22:
	.section	.text.HAL_SemaphoreWait
.LHOTE22:
	.section	.rodata.str1.1
.LC23:
	.string	"AosThread"
	.section	.text.unlikely.HAL_ThreadCreate,"ax",@progbits
.LCOLDB24:
	.section	.text.HAL_ThreadCreate,"ax",@progbits
.LHOTB24:
	.globl	HAL_ThreadCreate
	.type	HAL_ThreadCreate, @function
HAL_ThreadCreate:
.LFB55:
	.loc 1 210 0
	.cfi_startproc
.LVL62:
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
	.loc 1 210 0
	movl	20(%ebp), %eax
	.loc 1 212 0
	movl	24(%ebp), %edx
	.loc 1 217 0
	testl	%eax, %eax
	.loc 1 212 0
	movl	$0, (%edx)
.LVL63:
	.loc 1 217 0
	je	.L72
	.loc 1 220 0
	movl	16(%eax), %esi
	.loc 1 221 0
	movl	$.LC23, %edx
	.loc 1 218 0
	movl	12(%eax), %ecx
	.loc 1 221 0
	testl	%esi, %esi
	.loc 1 218 0
	movl	%ecx, -28(%ebp)
.LVL64:
	.loc 1 221 0
	cmove	%edx, %esi
.LVL65:
	.loc 1 226 0
	movl	8(%eax), %edx
	.loc 1 227 0
	movl	$4096, %eax
	testl	%edx, %edx
	cmove	%eax, %edx
	jmp	.L68
.LVL66:
.L72:
	.loc 1 215 0
	movl	$0, -28(%ebp)
	.loc 1 221 0
	movl	$.LC23, %esi
	.loc 1 227 0
	movl	$4096, %edx
.LVL67:
.L68:
	.loc 1 233 0
	subl	$12, %esp
	movl	%edx, -32(%ebp)
.LVL68:
	pushl	$16
	call	aos_malloc
.LVL69:
	movl	%eax, %ebx
.LVL70:
	.loc 1 234 0
	addl	$16, %esp
	.loc 1 235 0
	orl	$-1, %eax
.LVL71:
	.loc 1 234 0
	testl	%ebx, %ebx
	je	.L76
	.loc 1 237 0
	xorl	%eax, %eax
	movl	$4, %ecx
	movl	%ebx, %edi
	rep stosl
	.loc 1 239 0
	movl	16(%ebp), %eax
	.loc 1 243 0
	movl	-32(%ebp), %edx
	.loc 1 239 0
	movl	%eax, 8(%ebx)
	.loc 1 240 0
	movl	12(%ebp), %eax
	movl	%eax, 12(%ebx)
	.loc 1 241 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%ebx)
	.loc 1 243 0
	pushl	%eax
	pushl	%eax
	pushl	$32
	pushl	%edx
	pushl	%ebx
	pushl	$task_wrapper
	pushl	%esi
	pushl	%ebx
	call	aos_task_new_ext
.LVL72:
	.loc 1 247 0
	movl	8(%ebp), %edx
	.loc 1 249 0
	addl	$32, %esp
	.loc 1 247 0
	movl	%ebx, (%edx)
.LVL73:
.L76:
	.loc 1 250 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL74:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE55:
	.size	HAL_ThreadCreate, .-HAL_ThreadCreate
	.section	.text.unlikely.HAL_ThreadCreate
.LCOLDE24:
	.section	.text.HAL_ThreadCreate
.LHOTE24:
	.section	.text.unlikely.HAL_ThreadDetach,"ax",@progbits
.LCOLDB25:
	.section	.text.HAL_ThreadDetach,"ax",@progbits
.LHOTB25:
	.globl	HAL_ThreadDetach
	.type	HAL_ThreadDetach, @function
HAL_ThreadDetach:
.LFB56:
	.loc 1 253 0
	.cfi_startproc
.LVL75:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL76:
	.loc 1 255 0
	movl	8(%ebp), %eax
	movl	$1, 4(%eax)
	.loc 1 256 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE56:
	.size	HAL_ThreadDetach, .-HAL_ThreadDetach
	.section	.text.unlikely.HAL_ThreadDetach
.LCOLDE25:
	.section	.text.HAL_ThreadDetach
.LHOTE25:
	.section	.text.unlikely.HAL_ThreadDelete,"ax",@progbits
.LCOLDB26:
	.section	.text.HAL_ThreadDelete,"ax",@progbits
.LHOTB26:
	.globl	HAL_ThreadDelete
	.type	HAL_ThreadDelete, @function
HAL_ThreadDelete:
.LFB57:
	.loc 1 259 0
	.cfi_startproc
.LVL77:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 259 0
	movl	8(%ebp), %eax
	.loc 1 260 0
	testl	%eax, %eax
	je	.L81
	.loc 1 261 0
	subl	$12, %esp
	pushl	%eax
	call	aos_free
.LVL78:
	addl	$16, %esp
.LVL79:
.L81:
	.loc 1 264 0
	movl	$0, 8(%ebp)
	.loc 1 265 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 264 0
	jmp	aos_task_exit
.LVL80:
	.cfi_endproc
.LFE57:
	.size	HAL_ThreadDelete, .-HAL_ThreadDelete
	.section	.text.unlikely.HAL_ThreadDelete
.LCOLDE26:
	.section	.text.HAL_ThreadDelete
.LHOTE26:
	.section	.text.unlikely.HAL_Firmware_Persistence_Start,"ax",@progbits
.LCOLDB27:
	.section	.text.HAL_Firmware_Persistence_Start,"ax",@progbits
.LHOTB27:
	.globl	HAL_Firmware_Persistence_Start
	.type	HAL_Firmware_Persistence_Start, @function
HAL_Firmware_Persistence_Start:
.LFB58:
	.loc 1 271 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 273 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE58:
	.size	HAL_Firmware_Persistence_Start, .-HAL_Firmware_Persistence_Start
	.section	.text.unlikely.HAL_Firmware_Persistence_Start
.LCOLDE27:
	.section	.text.HAL_Firmware_Persistence_Start
.LHOTE27:
	.section	.text.unlikely.HAL_Firmware_Persistence_Write,"ax",@progbits
.LCOLDB28:
	.section	.text.HAL_Firmware_Persistence_Write,"ax",@progbits
.LHOTB28:
	.globl	HAL_Firmware_Persistence_Write
	.type	HAL_Firmware_Persistence_Write, @function
HAL_Firmware_Persistence_Write:
.LFB59:
	.loc 1 276 0
	.cfi_startproc
.LVL81:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 279 0
	xorl	%eax, %eax
	.loc 1 276 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 279 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE59:
	.size	HAL_Firmware_Persistence_Write, .-HAL_Firmware_Persistence_Write
	.section	.text.unlikely.HAL_Firmware_Persistence_Write
.LCOLDE28:
	.section	.text.HAL_Firmware_Persistence_Write
.LHOTE28:
	.section	.text.unlikely.HAL_Firmware_Persistence_Stop,"ax",@progbits
.LCOLDB29:
	.section	.text.HAL_Firmware_Persistence_Stop,"ax",@progbits
.LHOTB29:
	.globl	HAL_Firmware_Persistence_Stop
	.type	HAL_Firmware_Persistence_Stop, @function
HAL_Firmware_Persistence_Stop:
.LFB60:
	.loc 1 282 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 284 0
	xorl	%eax, %eax
	.loc 1 282 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 284 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE60:
	.size	HAL_Firmware_Persistence_Stop, .-HAL_Firmware_Persistence_Stop
	.section	.text.unlikely.HAL_Firmware_Persistence_Stop
.LCOLDE29:
	.section	.text.HAL_Firmware_Persistence_Stop
.LHOTE29:
	.section	.rodata.str1.1
.LC30:
	.string	"alink"
	.section	.text.unlikely.HAL_Config_Write,"ax",@progbits
.LCOLDB31:
	.section	.text.HAL_Config_Write,"ax",@progbits
.LHOTB31:
	.globl	HAL_Config_Write
	.type	HAL_Config_Write, @function
HAL_Config_Write:
.LFB61:
	.loc 1 289 0
	.cfi_startproc
.LVL82:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 289 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 290 0
	testl	%eax, %eax
	je	.L94
	testl	%edx, %edx
	jle	.L94
	.loc 1 294 0
	pushl	$1
	pushl	%edx
	pushl	%eax
	pushl	$.LC30
	call	aos_kv_set
.LVL83:
	addl	$16, %esp
	jmp	.L93
.L94:
	.loc 1 291 0
	orl	$-1, %eax
.L93:
	.loc 1 295 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE61:
	.size	HAL_Config_Write, .-HAL_Config_Write
	.section	.text.unlikely.HAL_Config_Write
.LCOLDE31:
	.section	.text.HAL_Config_Write
.LHOTE31:
	.section	.text.unlikely.HAL_Config_Read,"ax",@progbits
.LCOLDB32:
	.section	.text.HAL_Config_Read,"ax",@progbits
.LHOTB32:
	.globl	HAL_Config_Read
	.type	HAL_Config_Read, @function
HAL_Config_Read:
.LFB62:
	.loc 1 298 0
	.cfi_startproc
.LVL84:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 299 0
	cmpl	$0, 12(%ebp)
	.loc 1 298 0
	movl	8(%ebp), %eax
	.loc 1 299 0
	jle	.L98
	testl	%eax, %eax
	je	.L98
	.loc 1 303 0
	pushl	%edx
	leal	12(%ebp), %edx
.LVL85:
	pushl	%edx
	pushl	%eax
	pushl	$.LC30
	call	aos_kv_get
.LVL86:
	addl	$16, %esp
	jmp	.L97
.L98:
	.loc 1 300 0
	orl	$-1, %eax
.L97:
	.loc 1 304 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE62:
	.size	HAL_Config_Read, .-HAL_Config_Read
	.section	.text.unlikely.HAL_Config_Read
.LCOLDE32:
	.section	.text.HAL_Config_Read
.LHOTE32:
	.text
.Letext0:
	.section	.text.unlikely.task_wrapper
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/lock.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 10 "./include/aos/kernel.h"
	.file 11 "./framework/protocol/linkkit/iotkit/sdk-encap/iot_import.h"
	.file 12 "./include/aos/log.h"
	.file 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h"
	.file 14 "./include/aos/kv.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1240
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF218
	.byte	0xc
	.long	.LASF219
	.long	.LASF220
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
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x41
	.long	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF8
	.byte	0x2
	.byte	0x5b
	.long	0x6c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x28
	.long	0x9e
	.uleb128 0x5
	.byte	0x4
	.long	.LASF221
	.long	0xa8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x2e
	.long	0x93
	.uleb128 0x3
	.long	.LASF16
	.byte	0x6
	.byte	0x7
	.long	0x73
	.uleb128 0x3
	.long	.LASF17
	.byte	0x7
	.byte	0x2c
	.long	0x41
	.uleb128 0x3
	.long	.LASF18
	.byte	0x7
	.byte	0x72
	.long	0x41
	.uleb128 0x6
	.long	.LASF19
	.byte	0x3
	.value	0x165
	.long	0x7a
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.byte	0xa6
	.long	0x106
	.uleb128 0x8
	.long	.LASF20
	.byte	0x7
	.byte	0xa8
	.long	0xdb
	.uleb128 0x8
	.long	.LASF21
	.byte	0x7
	.byte	0xa9
	.long	0x106
	.byte	0
	.uleb128 0x9
	.long	0x2c
	.long	0x116
	.uleb128 0xa
	.long	0x116
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF22
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.byte	0xa3
	.long	0x13e
	.uleb128 0xc
	.long	.LASF23
	.byte	0x7
	.byte	0xa5
	.long	0x73
	.byte	0
	.uleb128 0xc
	.long	.LASF24
	.byte	0x7
	.byte	0xaa
	.long	0xe7
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF25
	.byte	0x7
	.byte	0xab
	.long	0x11d
	.uleb128 0x3
	.long	.LASF26
	.byte	0x7
	.byte	0xaf
	.long	0xba
	.uleb128 0xd
	.byte	0x4
	.uleb128 0x3
	.long	.LASF27
	.byte	0x8
	.byte	0x16
	.long	0x53
	.uleb128 0xe
	.long	.LASF32
	.byte	0x18
	.byte	0x8
	.byte	0x2f
	.long	0x1b4
	.uleb128 0xc
	.long	.LASF28
	.byte	0x8
	.byte	0x31
	.long	0x1b4
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x8
	.byte	0x32
	.long	0x73
	.byte	0x4
	.uleb128 0xc
	.long	.LASF29
	.byte	0x8
	.byte	0x32
	.long	0x73
	.byte	0x8
	.uleb128 0xc
	.long	.LASF30
	.byte	0x8
	.byte	0x32
	.long	0x73
	.byte	0xc
	.uleb128 0xc
	.long	.LASF31
	.byte	0x8
	.byte	0x32
	.long	0x73
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x8
	.byte	0x33
	.long	0x1ba
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x161
	.uleb128 0x9
	.long	0x156
	.long	0x1ca
	.uleb128 0xa
	.long	0x116
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF33
	.byte	0x24
	.byte	0x8
	.byte	0x37
	.long	0x243
	.uleb128 0xc
	.long	.LASF34
	.byte	0x8
	.byte	0x39
	.long	0x73
	.byte	0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x8
	.byte	0x3a
	.long	0x73
	.byte	0x4
	.uleb128 0xc
	.long	.LASF36
	.byte	0x8
	.byte	0x3b
	.long	0x73
	.byte	0x8
	.uleb128 0xc
	.long	.LASF37
	.byte	0x8
	.byte	0x3c
	.long	0x73
	.byte	0xc
	.uleb128 0xc
	.long	.LASF38
	.byte	0x8
	.byte	0x3d
	.long	0x73
	.byte	0x10
	.uleb128 0xc
	.long	.LASF39
	.byte	0x8
	.byte	0x3e
	.long	0x73
	.byte	0x14
	.uleb128 0xc
	.long	.LASF40
	.byte	0x8
	.byte	0x3f
	.long	0x73
	.byte	0x18
	.uleb128 0xc
	.long	.LASF41
	.byte	0x8
	.byte	0x40
	.long	0x73
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF42
	.byte	0x8
	.byte	0x41
	.long	0x73
	.byte	0x20
	.byte	0
	.uleb128 0x11
	.long	.LASF43
	.value	0x108
	.byte	0x8
	.byte	0x4a
	.long	0x283
	.uleb128 0xc
	.long	.LASF44
	.byte	0x8
	.byte	0x4b
	.long	0x283
	.byte	0
	.uleb128 0xc
	.long	.LASF45
	.byte	0x8
	.byte	0x4c
	.long	0x283
	.byte	0x80
	.uleb128 0x12
	.long	.LASF46
	.byte	0x8
	.byte	0x4e
	.long	0x156
	.value	0x100
	.uleb128 0x12
	.long	.LASF47
	.byte	0x8
	.byte	0x51
	.long	0x156
	.value	0x104
	.byte	0
	.uleb128 0x9
	.long	0x154
	.long	0x293
	.uleb128 0xa
	.long	0x116
	.byte	0x1f
	.byte	0
	.uleb128 0x11
	.long	.LASF48
	.value	0x190
	.byte	0x8
	.byte	0x5d
	.long	0x2d1
	.uleb128 0xc
	.long	.LASF28
	.byte	0x8
	.byte	0x5e
	.long	0x2d1
	.byte	0
	.uleb128 0xc
	.long	.LASF49
	.byte	0x8
	.byte	0x5f
	.long	0x73
	.byte	0x4
	.uleb128 0xc
	.long	.LASF50
	.byte	0x8
	.byte	0x61
	.long	0x2d7
	.byte	0x8
	.uleb128 0xc
	.long	.LASF43
	.byte	0x8
	.byte	0x62
	.long	0x243
	.byte	0x88
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x293
	.uleb128 0x9
	.long	0x2e7
	.long	0x2e7
	.uleb128 0xa
	.long	0x116
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x2ed
	.uleb128 0x13
	.uleb128 0xe
	.long	.LASF51
	.byte	0x8
	.byte	0x8
	.byte	0x75
	.long	0x313
	.uleb128 0xc
	.long	.LASF52
	.byte	0x8
	.byte	0x76
	.long	0x313
	.byte	0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x8
	.byte	0x77
	.long	0x73
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x2c
	.uleb128 0xe
	.long	.LASF54
	.byte	0x68
	.byte	0x8
	.byte	0xb5
	.long	0x443
	.uleb128 0xf
	.string	"_p"
	.byte	0x8
	.byte	0xb6
	.long	0x313
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x8
	.byte	0xb7
	.long	0x73
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x8
	.byte	0xb8
	.long	0x73
	.byte	0x8
	.uleb128 0xc
	.long	.LASF55
	.byte	0x8
	.byte	0xb9
	.long	0x33
	.byte	0xc
	.uleb128 0xc
	.long	.LASF56
	.byte	0x8
	.byte	0xba
	.long	0x33
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x8
	.byte	0xbb
	.long	0x2ee
	.byte	0x10
	.uleb128 0xc
	.long	.LASF57
	.byte	0x8
	.byte	0xbc
	.long	0x73
	.byte	0x18
	.uleb128 0xc
	.long	.LASF58
	.byte	0x8
	.byte	0xc3
	.long	0x154
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF59
	.byte	0x8
	.byte	0xc5
	.long	0x59f
	.byte	0x20
	.uleb128 0xc
	.long	.LASF60
	.byte	0x8
	.byte	0xc7
	.long	0x5ce
	.byte	0x24
	.uleb128 0xc
	.long	.LASF61
	.byte	0x8
	.byte	0xca
	.long	0x5f2
	.byte	0x28
	.uleb128 0xc
	.long	.LASF62
	.byte	0x8
	.byte	0xcb
	.long	0x60c
	.byte	0x2c
	.uleb128 0xf
	.string	"_ub"
	.byte	0x8
	.byte	0xce
	.long	0x2ee
	.byte	0x30
	.uleb128 0xf
	.string	"_up"
	.byte	0x8
	.byte	0xcf
	.long	0x313
	.byte	0x38
	.uleb128 0xf
	.string	"_ur"
	.byte	0x8
	.byte	0xd0
	.long	0x73
	.byte	0x3c
	.uleb128 0xc
	.long	.LASF63
	.byte	0x8
	.byte	0xd3
	.long	0x612
	.byte	0x40
	.uleb128 0xc
	.long	.LASF64
	.byte	0x8
	.byte	0xd4
	.long	0x622
	.byte	0x43
	.uleb128 0xf
	.string	"_lb"
	.byte	0x8
	.byte	0xd7
	.long	0x2ee
	.byte	0x44
	.uleb128 0xc
	.long	.LASF65
	.byte	0x8
	.byte	0xda
	.long	0x73
	.byte	0x4c
	.uleb128 0xc
	.long	.LASF66
	.byte	0x8
	.byte	0xdb
	.long	0xc5
	.byte	0x50
	.uleb128 0xc
	.long	.LASF67
	.byte	0x8
	.byte	0xde
	.long	0x461
	.byte	0x54
	.uleb128 0xc
	.long	.LASF68
	.byte	0x8
	.byte	0xe2
	.long	0x149
	.byte	0x58
	.uleb128 0xc
	.long	.LASF69
	.byte	0x8
	.byte	0xe4
	.long	0x13e
	.byte	0x5c
	.uleb128 0xc
	.long	.LASF70
	.byte	0x8
	.byte	0xe5
	.long	0x73
	.byte	0x64
	.byte	0
	.uleb128 0x14
	.long	0x73
	.long	0x461
	.uleb128 0x15
	.long	0x461
	.uleb128 0x15
	.long	0x154
	.uleb128 0x15
	.long	0x599
	.uleb128 0x15
	.long	0x73
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x467
	.uleb128 0x16
	.long	.LASF71
	.value	0x424
	.byte	0x8
	.value	0x239
	.long	0x599
	.uleb128 0x17
	.long	.LASF72
	.byte	0x8
	.value	0x23b
	.long	0x73
	.byte	0
	.uleb128 0x17
	.long	.LASF73
	.byte	0x8
	.value	0x240
	.long	0x679
	.byte	0x4
	.uleb128 0x17
	.long	.LASF74
	.byte	0x8
	.value	0x240
	.long	0x679
	.byte	0x8
	.uleb128 0x17
	.long	.LASF75
	.byte	0x8
	.value	0x240
	.long	0x679
	.byte	0xc
	.uleb128 0x17
	.long	.LASF76
	.byte	0x8
	.value	0x242
	.long	0x73
	.byte	0x10
	.uleb128 0x17
	.long	.LASF77
	.byte	0x8
	.value	0x243
	.long	0x85b
	.byte	0x14
	.uleb128 0x17
	.long	.LASF78
	.byte	0x8
	.value	0x246
	.long	0x73
	.byte	0x30
	.uleb128 0x17
	.long	.LASF79
	.byte	0x8
	.value	0x247
	.long	0x870
	.byte	0x34
	.uleb128 0x17
	.long	.LASF80
	.byte	0x8
	.value	0x249
	.long	0x73
	.byte	0x38
	.uleb128 0x17
	.long	.LASF81
	.byte	0x8
	.value	0x24b
	.long	0x881
	.byte	0x3c
	.uleb128 0x17
	.long	.LASF82
	.byte	0x8
	.value	0x24e
	.long	0x1b4
	.byte	0x40
	.uleb128 0x17
	.long	.LASF83
	.byte	0x8
	.value	0x24f
	.long	0x73
	.byte	0x44
	.uleb128 0x17
	.long	.LASF84
	.byte	0x8
	.value	0x250
	.long	0x1b4
	.byte	0x48
	.uleb128 0x17
	.long	.LASF85
	.byte	0x8
	.value	0x251
	.long	0x887
	.byte	0x4c
	.uleb128 0x17
	.long	.LASF86
	.byte	0x8
	.value	0x254
	.long	0x73
	.byte	0x50
	.uleb128 0x17
	.long	.LASF87
	.byte	0x8
	.value	0x255
	.long	0x599
	.byte	0x54
	.uleb128 0x17
	.long	.LASF88
	.byte	0x8
	.value	0x278
	.long	0x839
	.byte	0x58
	.uleb128 0x18
	.long	.LASF48
	.byte	0x8
	.value	0x27c
	.long	0x2d1
	.value	0x148
	.uleb128 0x18
	.long	.LASF89
	.byte	0x8
	.value	0x27d
	.long	0x293
	.value	0x14c
	.uleb128 0x18
	.long	.LASF90
	.byte	0x8
	.value	0x281
	.long	0x898
	.value	0x2dc
	.uleb128 0x18
	.long	.LASF91
	.byte	0x8
	.value	0x286
	.long	0x63e
	.value	0x2e0
	.uleb128 0x18
	.long	.LASF92
	.byte	0x8
	.value	0x287
	.long	0x8a4
	.value	0x2ec
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0xa8
	.uleb128 0x10
	.byte	0x4
	.long	0x443
	.uleb128 0x14
	.long	0x73
	.long	0x5c3
	.uleb128 0x15
	.long	0x461
	.uleb128 0x15
	.long	0x154
	.uleb128 0x15
	.long	0x5c3
	.uleb128 0x15
	.long	0x73
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x5c9
	.uleb128 0x19
	.long	0xa8
	.uleb128 0x10
	.byte	0x4
	.long	0x5a5
	.uleb128 0x14
	.long	0xd0
	.long	0x5f2
	.uleb128 0x15
	.long	0x461
	.uleb128 0x15
	.long	0x154
	.uleb128 0x15
	.long	0xd0
	.uleb128 0x15
	.long	0x73
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x5d4
	.uleb128 0x14
	.long	0x73
	.long	0x60c
	.uleb128 0x15
	.long	0x461
	.uleb128 0x15
	.long	0x154
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x5f8
	.uleb128 0x9
	.long	0x2c
	.long	0x622
	.uleb128 0xa
	.long	0x116
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0x2c
	.long	0x632
	.uleb128 0xa
	.long	0x116
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	.LASF93
	.byte	0x8
	.value	0x11f
	.long	0x319
	.uleb128 0x1a
	.long	.LASF94
	.byte	0xc
	.byte	0x8
	.value	0x123
	.long	0x673
	.uleb128 0x17
	.long	.LASF28
	.byte	0x8
	.value	0x125
	.long	0x673
	.byte	0
	.uleb128 0x17
	.long	.LASF95
	.byte	0x8
	.value	0x126
	.long	0x73
	.byte	0x4
	.uleb128 0x17
	.long	.LASF96
	.byte	0x8
	.value	0x127
	.long	0x679
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x63e
	.uleb128 0x10
	.byte	0x4
	.long	0x632
	.uleb128 0x1a
	.long	.LASF97
	.byte	0xe
	.byte	0x8
	.value	0x13f
	.long	0x6b4
	.uleb128 0x17
	.long	.LASF98
	.byte	0x8
	.value	0x140
	.long	0x6b4
	.byte	0
	.uleb128 0x17
	.long	.LASF99
	.byte	0x8
	.value	0x141
	.long	0x6b4
	.byte	0x6
	.uleb128 0x17
	.long	.LASF100
	.byte	0x8
	.value	0x142
	.long	0x3a
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.long	0x3a
	.long	0x6c4
	.uleb128 0xa
	.long	0x116
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xcc
	.byte	0x8
	.value	0x259
	.long	0x7c5
	.uleb128 0x17
	.long	.LASF101
	.byte	0x8
	.value	0x25b
	.long	0x7a
	.byte	0
	.uleb128 0x17
	.long	.LASF102
	.byte	0x8
	.value	0x25c
	.long	0x599
	.byte	0x4
	.uleb128 0x17
	.long	.LASF103
	.byte	0x8
	.value	0x25d
	.long	0x7c5
	.byte	0x8
	.uleb128 0x17
	.long	.LASF104
	.byte	0x8
	.value	0x25e
	.long	0x1ca
	.byte	0x24
	.uleb128 0x17
	.long	.LASF105
	.byte	0x8
	.value	0x25f
	.long	0x73
	.byte	0x48
	.uleb128 0x17
	.long	.LASF106
	.byte	0x8
	.value	0x260
	.long	0x6c
	.byte	0x4c
	.uleb128 0x17
	.long	.LASF107
	.byte	0x8
	.value	0x261
	.long	0x67f
	.byte	0x54
	.uleb128 0x17
	.long	.LASF108
	.byte	0x8
	.value	0x262
	.long	0x13e
	.byte	0x64
	.uleb128 0x17
	.long	.LASF109
	.byte	0x8
	.value	0x263
	.long	0x13e
	.byte	0x6c
	.uleb128 0x17
	.long	.LASF110
	.byte	0x8
	.value	0x264
	.long	0x13e
	.byte	0x74
	.uleb128 0x17
	.long	.LASF111
	.byte	0x8
	.value	0x265
	.long	0x7d5
	.byte	0x7c
	.uleb128 0x17
	.long	.LASF112
	.byte	0x8
	.value	0x266
	.long	0x7e5
	.byte	0x84
	.uleb128 0x17
	.long	.LASF113
	.byte	0x8
	.value	0x267
	.long	0x73
	.byte	0x9c
	.uleb128 0x17
	.long	.LASF114
	.byte	0x8
	.value	0x268
	.long	0x13e
	.byte	0xa0
	.uleb128 0x17
	.long	.LASF115
	.byte	0x8
	.value	0x269
	.long	0x13e
	.byte	0xa8
	.uleb128 0x17
	.long	.LASF116
	.byte	0x8
	.value	0x26a
	.long	0x13e
	.byte	0xb0
	.uleb128 0x17
	.long	.LASF117
	.byte	0x8
	.value	0x26b
	.long	0x13e
	.byte	0xb8
	.uleb128 0x17
	.long	.LASF118
	.byte	0x8
	.value	0x26c
	.long	0x13e
	.byte	0xc0
	.uleb128 0x17
	.long	.LASF119
	.byte	0x8
	.value	0x26d
	.long	0x73
	.byte	0xc8
	.byte	0
	.uleb128 0x9
	.long	0xa8
	.long	0x7d5
	.uleb128 0xa
	.long	0x116
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.long	0xa8
	.long	0x7e5
	.uleb128 0xa
	.long	0x116
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.long	0xa8
	.long	0x7f5
	.uleb128 0xa
	.long	0x116
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x8
	.value	0x272
	.long	0x819
	.uleb128 0x17
	.long	.LASF120
	.byte	0x8
	.value	0x275
	.long	0x819
	.byte	0
	.uleb128 0x17
	.long	.LASF121
	.byte	0x8
	.value	0x276
	.long	0x829
	.byte	0x78
	.byte	0
	.uleb128 0x9
	.long	0x313
	.long	0x829
	.uleb128 0xa
	.long	0x116
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.long	0x7a
	.long	0x839
	.uleb128 0xa
	.long	0x116
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x8
	.value	0x257
	.long	0x85b
	.uleb128 0x1d
	.long	.LASF71
	.byte	0x8
	.value	0x26e
	.long	0x6c4
	.uleb128 0x1d
	.long	.LASF122
	.byte	0x8
	.value	0x277
	.long	0x7f5
	.byte	0
	.uleb128 0x9
	.long	0xa8
	.long	0x86b
	.uleb128 0xa
	.long	0x116
	.byte	0x18
	.byte	0
	.uleb128 0x1e
	.long	.LASF222
	.uleb128 0x10
	.byte	0x4
	.long	0x86b
	.uleb128 0x1f
	.long	0x881
	.uleb128 0x15
	.long	0x461
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x876
	.uleb128 0x10
	.byte	0x4
	.long	0x1b4
	.uleb128 0x1f
	.long	0x898
	.uleb128 0x15
	.long	0x73
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x89e
	.uleb128 0x10
	.byte	0x4
	.long	0x88d
	.uleb128 0x9
	.long	0x632
	.long	0x8b4
	.uleb128 0xa
	.long	0x116
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF123
	.byte	0x9
	.byte	0x30
	.long	0x48
	.uleb128 0x3
	.long	.LASF124
	.byte	0x9
	.byte	0x3c
	.long	0x61
	.uleb128 0xb
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0x8df
	.uleb128 0xf
	.string	"hdl"
	.byte	0xa
	.byte	0x14
	.long	0x154
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF125
	.byte	0xa
	.byte	0x15
	.long	0x8ca
	.uleb128 0x3
	.long	.LASF126
	.byte	0xa
	.byte	0x17
	.long	0x8df
	.uleb128 0x3
	.long	.LASF127
	.byte	0xa
	.byte	0x18
	.long	0x8df
	.uleb128 0x3
	.long	.LASF128
	.byte	0xa
	.byte	0x19
	.long	0x8df
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF129
	.uleb128 0x20
	.byte	0x4
	.long	0x73
	.byte	0xb
	.byte	0x39
	.long	0x94f
	.uleb128 0x21
	.long	.LASF130
	.sleb128 -3
	.uleb128 0x21
	.long	.LASF131
	.sleb128 -2
	.uleb128 0x21
	.long	.LASF132
	.sleb128 -1
	.uleb128 0x22
	.long	.LASF133
	.byte	0
	.uleb128 0x22
	.long	.LASF134
	.byte	0x1
	.uleb128 0x22
	.long	.LASF135
	.byte	0x2
	.uleb128 0x22
	.long	.LASF136
	.byte	0x3
	.uleb128 0x22
	.long	.LASF137
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.long	.LASF138
	.byte	0xb
	.byte	0x42
	.long	0x912
	.uleb128 0xe
	.long	.LASF139
	.byte	0x14
	.byte	0xb
	.byte	0x44
	.long	0x9a3
	.uleb128 0xc
	.long	.LASF140
	.byte	0xb
	.byte	0x45
	.long	0x94f
	.byte	0
	.uleb128 0xc
	.long	.LASF141
	.byte	0xb
	.byte	0x46
	.long	0x154
	.byte	0x4
	.uleb128 0xc
	.long	.LASF142
	.byte	0xb
	.byte	0x47
	.long	0x81
	.byte	0x8
	.uleb128 0xc
	.long	.LASF143
	.byte	0xb
	.byte	0x48
	.long	0x73
	.byte	0xc
	.uleb128 0xc
	.long	.LASF144
	.byte	0xb
	.byte	0x49
	.long	0x599
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF145
	.byte	0xb
	.byte	0x4a
	.long	0x95a
	.uleb128 0xb
	.byte	0x10
	.byte	0x1
	.byte	0xb9
	.long	0x9e7
	.uleb128 0xc
	.long	.LASF146
	.byte	0x1
	.byte	0xba
	.long	0x8ea
	.byte	0
	.uleb128 0xc
	.long	.LASF147
	.byte	0x1
	.byte	0xbb
	.long	0x73
	.byte	0x4
	.uleb128 0xf
	.string	"arg"
	.byte	0x1
	.byte	0xbc
	.long	0x154
	.byte	0x8
	.uleb128 0xc
	.long	.LASF148
	.byte	0x1
	.byte	0xbd
	.long	0x9f6
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.long	0x154
	.long	0x9f6
	.uleb128 0x15
	.long	0x154
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x9e7
	.uleb128 0x3
	.long	.LASF149
	.byte	0x1
	.byte	0xbe
	.long	0x9ae
	.uleb128 0x23
	.long	.LASF223
	.byte	0x1
	.byte	0xc0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xa43
	.uleb128 0x24
	.string	"arg"
	.byte	0x1
	.byte	0xc0
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF146
	.byte	0x1
	.byte	0xc2
	.long	0xa43
	.long	.LLST0
	.uleb128 0x26
	.long	.LVL4
	.long	0x1143
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x9fc
	.uleb128 0x27
	.long	.LASF154
	.byte	0x1
	.byte	0x1a
	.long	0x154
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xa83
	.uleb128 0x28
	.long	.LASF150
	.byte	0x1
	.byte	0x1c
	.long	0x8f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LVL6
	.long	0x114f
	.uleb128 0x29
	.long	.LVL7
	.long	0x115a
	.byte	0
	.uleb128 0x2a
	.long	.LASF151
	.byte	0x1
	.byte	0x25
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xab1
	.uleb128 0x2b
	.long	.LASF150
	.byte	0x1
	.byte	0x25
	.long	0x154
	.long	.LLST1
	.uleb128 0x29
	.long	.LVL10
	.long	0x1163
	.byte	0
	.uleb128 0x2a
	.long	.LASF152
	.byte	0x1
	.byte	0x2c
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xadf
	.uleb128 0x2b
	.long	.LASF150
	.byte	0x1
	.byte	0x2c
	.long	0x154
	.long	.LLST2
	.uleb128 0x29
	.long	.LVL14
	.long	0x116e
	.byte	0
	.uleb128 0x2a
	.long	.LASF153
	.byte	0x1
	.byte	0x33
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0d
	.uleb128 0x2b
	.long	.LASF150
	.byte	0x1
	.byte	0x33
	.long	0x154
	.long	.LLST3
	.uleb128 0x29
	.long	.LVL18
	.long	0x1179
	.byte	0
	.uleb128 0x27
	.long	.LASF155
	.byte	0x1
	.byte	0x3a
	.long	0x154
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0xb47
	.uleb128 0x2c
	.long	.LASF156
	.byte	0x1
	.byte	0x3a
	.long	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LVL21
	.long	0x1184
	.uleb128 0x2e
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
	.long	.LASF157
	.byte	0x1
	.byte	0x3f
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xb7d
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.byte	0x3f
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LVL23
	.long	0x1143
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF224
	.byte	0x1
	.byte	0x4a
	.long	0x73
	.byte	0x1
	.long	0xba4
	.uleb128 0x30
	.long	.LASF158
	.byte	0x1
	.byte	0x4a
	.long	0x599
	.uleb128 0x30
	.long	.LASF159
	.byte	0x1
	.byte	0x4a
	.long	0x8b4
	.byte	0
	.uleb128 0x31
	.long	0xb7d
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd1
	.uleb128 0x32
	.long	0xb8d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	0xb98
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LVL25
	.long	0x1190
	.byte	0
	.uleb128 0x27
	.long	.LASF160
	.byte	0x1
	.byte	0x50
	.long	0x73
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xc02
	.uleb128 0x2c
	.long	.LASF161
	.byte	0x1
	.byte	0x50
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LVL27
	.long	0x1190
	.byte	0
	.uleb128 0x27
	.long	.LASF162
	.byte	0x1
	.byte	0x56
	.long	0x8bf
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xc25
	.uleb128 0x26
	.long	.LVL28
	.long	0x119b
	.byte	0
	.uleb128 0x2a
	.long	.LASF163
	.byte	0x1
	.byte	0x5b
	.long	.LFB43
	.long	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0xc5a
	.uleb128 0x24
	.string	"ms"
	.byte	0x1
	.byte	0x5b
	.long	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LVL30
	.long	0x11a7
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF164
	.byte	0x1
	.byte	0x60
	.long	0x8bf
	.long	.LFB44
	.long	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9f
	.uleb128 0x2c
	.long	.LASF165
	.byte	0x1
	.byte	0x60
	.long	0x8bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF166
	.byte	0x1
	.byte	0x60
	.long	0x8bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	.LASF167
	.byte	0x1
	.byte	0x62
	.long	0x8bf
	.long	.LLST4
	.byte	0
	.uleb128 0x27
	.long	.LASF168
	.byte	0x1
	.byte	0x6e
	.long	0x73
	.long	.LFB45
	.long	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0xd08
	.uleb128 0x24
	.string	"str"
	.byte	0x1
	.byte	0x6e
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x6e
	.long	0xd08
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"fmt"
	.byte	0x1
	.byte	0x6e
	.long	0x5c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.uleb128 0x25
	.long	.LASF169
	.byte	0x1
	.byte	0x70
	.long	0xaf
	.long	.LLST5
	.uleb128 0x34
	.string	"rc"
	.byte	0x1
	.byte	0x71
	.long	0x73
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x29
	.long	.LVL37
	.long	0x11b3
	.byte	0
	.uleb128 0x19
	.long	0x73
	.uleb128 0x27
	.long	.LASF170
	.byte	0x1
	.byte	0x7b
	.long	0x73
	.long	.LFB46
	.long	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xd88
	.uleb128 0x24
	.string	"str"
	.byte	0x1
	.byte	0x7b
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0x7b
	.long	0xd08
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF171
	.byte	0x1
	.byte	0x7b
	.long	0x5c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"ap"
	.byte	0x1
	.byte	0x7b
	.long	0xaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LVL39
	.long	0x11b3
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF172
	.byte	0x1
	.byte	0x81
	.long	.LFB47
	.long	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0xdce
	.uleb128 0x24
	.string	"fmt"
	.byte	0x1
	.byte	0x81
	.long	0x5c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.uleb128 0x25
	.long	.LASF169
	.byte	0x1
	.byte	0x83
	.long	0xaf
	.long	.LLST6
	.uleb128 0x29
	.long	.LVL42
	.long	0x11bf
	.uleb128 0x29
	.long	.LVL43
	.long	0x11ca
	.byte	0
	.uleb128 0x2a
	.long	.LASF173
	.byte	0x1
	.byte	0x8d
	.long	.LFB48
	.long	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0xe04
	.uleb128 0x2c
	.long	.LASF174
	.byte	0x1
	.byte	0x8d
	.long	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LVL45
	.long	0x11d5
	.uleb128 0x2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF175
	.byte	0x1
	.byte	0x93
	.long	0x8b4
	.long	.LFB49
	.long	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0xe35
	.uleb128 0x2c
	.long	.LASF176
	.byte	0x1
	.byte	0x93
	.long	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LVL47
	.long	0x11e0
	.byte	0
	.uleb128 0x27
	.long	.LASF177
	.byte	0x1
	.byte	0x9b
	.long	0x154
	.long	.LFB50
	.long	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6f
	.uleb128 0x34
	.string	"sem"
	.byte	0x1
	.byte	0x9d
	.long	0x900
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.long	.LVL48
	.long	0x11eb
	.uleb128 0x29
	.long	.LVL49
	.long	0x115a
	.byte	0
	.uleb128 0x2a
	.long	.LASF178
	.byte	0x1
	.byte	0xa6
	.long	.LFB51
	.long	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xe9d
	.uleb128 0x35
	.string	"sem"
	.byte	0x1
	.byte	0xa6
	.long	0x154
	.long	.LLST7
	.uleb128 0x29
	.long	.LVL52
	.long	0x11f6
	.byte	0
	.uleb128 0x2a
	.long	.LASF179
	.byte	0x1
	.byte	0xab
	.long	.LFB52
	.long	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xecb
	.uleb128 0x35
	.string	"sem"
	.byte	0x1
	.byte	0xab
	.long	0x154
	.long	.LLST8
	.uleb128 0x29
	.long	.LVL56
	.long	0x1201
	.byte	0
	.uleb128 0x27
	.long	.LASF180
	.byte	0x1
	.byte	0xb0
	.long	0x73
	.long	.LFB53
	.long	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xf0c
	.uleb128 0x35
	.string	"sem"
	.byte	0x1
	.byte	0xb0
	.long	0x154
	.long	.LLST9
	.uleb128 0x2b
	.long	.LASF181
	.byte	0x1
	.byte	0xb0
	.long	0x8b4
	.long	.LLST10
	.uleb128 0x29
	.long	.LVL60
	.long	0x120c
	.byte	0
	.uleb128 0x27
	.long	.LASF182
	.byte	0x1
	.byte	0xcc
	.long	0x73
	.long	.LFB55
	.long	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc9
	.uleb128 0x2c
	.long	.LASF183
	.byte	0x1
	.byte	0xcd
	.long	0xfc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.byte	0xce
	.long	0x9f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.string	"arg"
	.byte	0x1
	.byte	0xcf
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.long	.LASF185
	.byte	0x1
	.byte	0xd0
	.long	0xfcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF186
	.byte	0x1
	.byte	0xd1
	.long	0xfd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x36
	.string	"ret"
	.byte	0x1
	.byte	0xd3
	.long	0x73
	.long	.LLST11
	.uleb128 0x25
	.long	.LASF187
	.byte	0x1
	.byte	0xd5
	.long	0x599
	.long	.LLST12
	.uleb128 0x25
	.long	.LASF188
	.byte	0x1
	.byte	0xd6
	.long	0x81
	.long	.LLST13
	.uleb128 0x25
	.long	.LASF143
	.byte	0x1
	.byte	0xd7
	.long	0x73
	.long	.LLST14
	.uleb128 0x25
	.long	.LASF146
	.byte	0x1
	.byte	0xe9
	.long	0xa43
	.long	.LLST15
	.uleb128 0x29
	.long	.LVL69
	.long	0x1184
	.uleb128 0x29
	.long	.LVL72
	.long	0x1217
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x154
	.uleb128 0x10
	.byte	0x4
	.long	0x9a3
	.uleb128 0x10
	.byte	0x4
	.long	0x73
	.uleb128 0x2a
	.long	.LASF189
	.byte	0x1
	.byte	0xfc
	.long	.LFB56
	.long	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x100d
	.uleb128 0x2c
	.long	.LASF183
	.byte	0x1
	.byte	0xfc
	.long	0x154
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF146
	.byte	0x1
	.byte	0xfe
	.long	0xa43
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x37
	.long	.LASF190
	.byte	0x1
	.value	0x102
	.long	.LFB57
	.long	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1046
	.uleb128 0x38
	.long	.LASF183
	.byte	0x1
	.value	0x102
	.long	0x154
	.long	.LLST16
	.uleb128 0x29
	.long	.LVL78
	.long	0x1143
	.uleb128 0x26
	.long	.LVL80
	.long	0x1222
	.byte	0
	.uleb128 0x39
	.long	.LASF225
	.byte	0x1
	.value	0x10e
	.long	.LFB58
	.long	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF191
	.byte	0x1
	.value	0x113
	.long	0x73
	.long	.LFB59
	.long	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1091
	.uleb128 0x3b
	.long	.LASF158
	.byte	0x1
	.value	0x113
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF159
	.byte	0x1
	.value	0x113
	.long	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x3c
	.long	.LASF226
	.byte	0x1
	.value	0x119
	.long	0x73
	.long	.LFB60
	.long	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF192
	.byte	0x1
	.value	0x120
	.long	0x73
	.long	.LFB61
	.long	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x10e9
	.uleb128 0x3b
	.long	.LASF158
	.byte	0x1
	.value	0x120
	.long	0x5c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF159
	.byte	0x1
	.value	0x120
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LVL83
	.long	0x122d
	.byte	0
	.uleb128 0x3a
	.long	.LASF193
	.byte	0x1
	.value	0x129
	.long	0x73
	.long	.LFB62
	.long	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x112c
	.uleb128 0x3b
	.long	.LASF158
	.byte	0x1
	.value	0x129
	.long	0x599
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF159
	.byte	0x1
	.value	0x129
	.long	0x73
	.long	.LLST17
	.uleb128 0x29
	.long	.LVL86
	.long	0x1238
	.byte	0
	.uleb128 0x3d
	.long	.LASF194
	.byte	0x8
	.value	0x2fe
	.long	0x461
	.uleb128 0x3e
	.long	.LASF195
	.byte	0xc
	.byte	0x17
	.long	0x7a
	.uleb128 0x3f
	.long	.LASF196
	.long	.LASF196
	.byte	0xa
	.value	0x200
	.uleb128 0x40
	.long	.LASF197
	.long	.LASF197
	.byte	0xa
	.byte	0x8c
	.uleb128 0x41
	.long	.LASF227
	.long	.LASF227
	.uleb128 0x40
	.long	.LASF198
	.long	.LASF198
	.byte	0xa
	.byte	0x94
	.uleb128 0x40
	.long	.LASF199
	.long	.LASF199
	.byte	0xa
	.byte	0x9e
	.uleb128 0x40
	.long	.LASF200
	.long	.LASF200
	.byte	0xa
	.byte	0xa7
	.uleb128 0x3f
	.long	.LASF201
	.long	.LASF201
	.byte	0xa
	.value	0x1e8
	.uleb128 0x40
	.long	.LASF202
	.long	.LASF202
	.byte	0x5
	.byte	0xc8
	.uleb128 0x3f
	.long	.LASF203
	.long	.LASF203
	.byte	0xa
	.value	0x20e
	.uleb128 0x3f
	.long	.LASF204
	.long	.LASF204
	.byte	0xa
	.value	0x215
	.uleb128 0x3f
	.long	.LASF205
	.long	.LASF205
	.byte	0x5
	.value	0x10c
	.uleb128 0x40
	.long	.LASF206
	.long	.LASF206
	.byte	0x5
	.byte	0xd0
	.uleb128 0x40
	.long	.LASF207
	.long	.LASF207
	.byte	0x5
	.byte	0xc0
	.uleb128 0x40
	.long	.LASF208
	.long	.LASF208
	.byte	0xd
	.byte	0x9a
	.uleb128 0x40
	.long	.LASF209
	.long	.LASF209
	.byte	0xd
	.byte	0x8c
	.uleb128 0x40
	.long	.LASF210
	.long	.LASF210
	.byte	0xa
	.byte	0xbb
	.uleb128 0x40
	.long	.LASF211
	.long	.LASF211
	.byte	0xa
	.byte	0xc3
	.uleb128 0x40
	.long	.LASF212
	.long	.LASF212
	.byte	0xa
	.byte	0xd4
	.uleb128 0x40
	.long	.LASF213
	.long	.LASF213
	.byte	0xa
	.byte	0xcd
	.uleb128 0x40
	.long	.LASF214
	.long	.LASF214
	.byte	0xa
	.byte	0x52
	.uleb128 0x40
	.long	.LASF215
	.long	.LASF215
	.byte	0xa
	.byte	0x5a
	.uleb128 0x40
	.long	.LASF216
	.long	.LASF216
	.byte	0xe
	.byte	0x19
	.uleb128 0x40
	.long	.LASF217
	.long	.LASF217
	.byte	0xe
	.byte	0x28
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.long	.LVL1
	.long	.LVL3
	.value	0x1
	.byte	0x53
	.long	.LVL3
	.long	.LVL4-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	.LVL5
	.long	.LFE54
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL9
	.long	.LVL10-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL10-1
	.long	.LVL11
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL11
	.long	.LFE34
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL12
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL13
	.long	.LVL14-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL14-1
	.long	.LVL15
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL15
	.long	.LFE35
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL17
	.long	.LVL18-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL18-1
	.long	.LVL19
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL19
	.long	.LFE36
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL32
	.long	.LVL33
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL34
	.long	.LFE44
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST5:
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	.LVL37-1
	.long	.LVL37
	.value	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL41
	.long	.LVL42-1
	.value	0x1
	.byte	0x50
	.long	.LVL42-1
	.long	.LVL43
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL50
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL51
	.long	.LVL52-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL52-1
	.long	.LVL53
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL53
	.long	.LFE51
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST8:
	.long	.LVL54
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL55
	.long	.LVL56-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL56-1
	.long	.LVL57
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL57
	.long	.LFE52
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST9:
	.long	.LVL58
	.long	.LVL59
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL59
	.long	.LVL60-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL60-1
	.long	.LVL61
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL61
	.long	.LFE53
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LVL58
	.long	.LVL59
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL59
	.long	.LVL60-1
	.value	0x2
	.byte	0x70
	.sleb128 4
	.long	.LVL60-1
	.long	.LVL61
	.value	0x2
	.byte	0x75
	.sleb128 12
	.long	.LVL61
	.long	.LFE53
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST11:
	.long	.LVL62
	.long	.LVL72
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL72
	.long	.LVL73
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL65
	.long	.LVL66
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST13:
	.long	.LVL68
	.long	.LVL69-1
	.value	0x1
	.byte	0x52
	.long	.LVL69-1
	.long	.LFE55
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST14:
	.long	.LVL63
	.long	.LVL64
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL64
	.long	.LVL66
	.value	0x1
	.byte	0x51
	.long	.LVL66
	.long	.LVL67
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x50
	.long	.LVL71
	.long	.LVL74
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST16:
	.long	.LVL77
	.long	.LVL78
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL78
	.long	.LVL79
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL84
	.long	.LVL85
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL85
	.long	.LVL86-1
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	.LVL86-1
	.long	.LFE62
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xfc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB54
	.long	.LFE54-.LFB54
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
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB54
	.long	.LFE54
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
	.long	.LFB45
	.long	.LFE45
	.long	.LFB46
	.long	.LFE46
	.long	.LFB47
	.long	.LFE47
	.long	.LFB48
	.long	.LFE48
	.long	.LFB49
	.long	.LFE49
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF185:
	.string	"hal_os_thread_param"
.LASF144:
	.string	"name"
.LASF43:
	.string	"_on_exit_args"
.LASF110:
	.string	"_wctomb_state"
.LASF207:
	.string	"fflush"
.LASF107:
	.string	"_r48"
.LASF164:
	.string	"aliot_platform_time_left"
.LASF112:
	.string	"_signal_buf"
.LASF125:
	.string	"aos_hdl_t"
.LASF10:
	.string	"unsigned int"
.LASF57:
	.string	"_lbfsize"
.LASF55:
	.string	"_flags"
.LASF181:
	.string	"timeout_ms"
.LASF157:
	.string	"HAL_Free"
.LASF72:
	.string	"_errno"
.LASF189:
	.string	"HAL_ThreadDetach"
.LASF145:
	.string	"hal_os_thread_param_t"
.LASF16:
	.string	"_LOCK_RECURSIVE_T"
.LASF59:
	.string	"_read"
.LASF114:
	.string	"_mbrlen_state"
.LASF141:
	.string	"stack_addr"
.LASF173:
	.string	"HAL_Srandom"
.LASF74:
	.string	"_stdout"
.LASF18:
	.string	"_fpos_t"
.LASF50:
	.string	"_fns"
.LASF58:
	.string	"_cookie"
.LASF160:
	.string	"aliot_platform_ota_finalize"
.LASF226:
	.string	"HAL_Firmware_Persistence_Stop"
.LASF190:
	.string	"HAL_ThreadDelete"
.LASF32:
	.string	"_Bigint"
.LASF219:
	.string	"src/HAL_OS_rhino.c"
.LASF40:
	.string	"__tm_wday"
.LASF127:
	.string	"aos_mutex_t"
.LASF82:
	.string	"_result"
.LASF176:
	.string	"region"
.LASF123:
	.string	"uint32_t"
.LASF36:
	.string	"__tm_hour"
.LASF152:
	.string	"HAL_MutexLock"
.LASF172:
	.string	"HAL_Printf"
.LASF23:
	.string	"__count"
.LASF225:
	.string	"HAL_Firmware_Persistence_Start"
.LASF150:
	.string	"mutex"
.LASF35:
	.string	"__tm_min"
.LASF194:
	.string	"_impure_ptr"
.LASF120:
	.string	"_nextf"
.LASF97:
	.string	"_rand48"
.LASF195:
	.string	"aos_log_level"
.LASF83:
	.string	"_result_k"
.LASF9:
	.string	"long long unsigned int"
.LASF103:
	.string	"_asctime_buf"
.LASF54:
	.string	"__sFILE"
.LASF31:
	.string	"_wds"
.LASF213:
	.string	"aos_sem_wait"
.LASF149:
	.string	"task_context_t"
.LASF211:
	.string	"aos_sem_free"
.LASF93:
	.string	"__FILE"
.LASF66:
	.string	"_offset"
.LASF216:
	.string	"aos_kv_set"
.LASF220:
	.string	"/home/stone/Documents/pca"
.LASF166:
	.string	"t_now"
.LASF210:
	.string	"aos_sem_new"
.LASF136:
	.string	"os_thread_priority_realtime"
.LASF161:
	.string	"stat"
.LASF77:
	.string	"_emergency"
.LASF171:
	.string	"format"
.LASF193:
	.string	"HAL_Config_Read"
.LASF13:
	.string	"__gnuc_va_list"
.LASF11:
	.string	"size_t"
.LASF208:
	.string	"srand"
.LASF34:
	.string	"__tm_sec"
.LASF203:
	.string	"aos_now_ms"
.LASF41:
	.string	"__tm_yday"
.LASF76:
	.string	"_inc"
.LASF49:
	.string	"_ind"
.LASF148:
	.string	"routine"
.LASF28:
	.string	"_next"
.LASF140:
	.string	"priority"
.LASF116:
	.string	"_mbsrtowcs_state"
.LASF8:
	.string	"__uint64_t"
.LASF126:
	.string	"aos_task_t"
.LASF24:
	.string	"__value"
.LASF133:
	.string	"os_thread_priority_normal"
.LASF84:
	.string	"_p5s"
.LASF118:
	.string	"_wcsrtombs_state"
.LASF108:
	.string	"_mblen_state"
.LASF14:
	.string	"char"
.LASF37:
	.string	"__tm_mday"
.LASF90:
	.string	"_sig_func"
.LASF115:
	.string	"_mbrtowc_state"
.LASF89:
	.string	"_atexit0"
.LASF131:
	.string	"os_thread_priority_low"
.LASF188:
	.string	"ssiz"
.LASF26:
	.string	"_flock_t"
.LASF178:
	.string	"HAL_SemaphoreDestroy"
.LASF175:
	.string	"HAL_Random"
.LASF20:
	.string	"__wch"
.LASF96:
	.string	"_iobs"
.LASF62:
	.string	"_close"
.LASF80:
	.string	"__sdidinit"
.LASF163:
	.string	"HAL_SleepMs"
.LASF209:
	.string	"rand"
.LASF15:
	.string	"va_list"
.LASF73:
	.string	"_stdin"
.LASF105:
	.string	"_gamma_signgam"
.LASF6:
	.string	"long long int"
.LASF202:
	.string	"printf"
.LASF52:
	.string	"_base"
.LASF201:
	.string	"aos_malloc"
.LASF85:
	.string	"_freelist"
.LASF183:
	.string	"thread_handle"
.LASF99:
	.string	"_mult"
.LASF27:
	.string	"__ULong"
.LASF117:
	.string	"_wcrtomb_state"
.LASF56:
	.string	"_file"
.LASF198:
	.string	"aos_mutex_free"
.LASF128:
	.string	"aos_sem_t"
.LASF81:
	.string	"__cleanup"
.LASF162:
	.string	"HAL_UptimeMs"
.LASF25:
	.string	"_mbstate_t"
.LASF158:
	.string	"buffer"
.LASF191:
	.string	"HAL_Firmware_Persistence_Write"
.LASF156:
	.string	"size"
.LASF42:
	.string	"__tm_isdst"
.LASF167:
	.string	"t_left"
.LASF119:
	.string	"_h_errno"
.LASF174:
	.string	"seed"
.LASF137:
	.string	"os_thread_priority_error"
.LASF129:
	.string	"_Bool"
.LASF187:
	.string	"tname"
.LASF143:
	.string	"detach_state"
.LASF147:
	.string	"detached"
.LASF38:
	.string	"__tm_mon"
.LASF169:
	.string	"args"
.LASF12:
	.string	"long double"
.LASF60:
	.string	"_write"
.LASF184:
	.string	"work_routine"
.LASF180:
	.string	"HAL_SemaphoreWait"
.LASF48:
	.string	"_atexit"
.LASF69:
	.string	"_mbstate"
.LASF153:
	.string	"HAL_MutexUnlock"
.LASF212:
	.string	"aos_sem_signal"
.LASF2:
	.string	"short int"
.LASF199:
	.string	"aos_mutex_lock"
.LASF4:
	.string	"long int"
.LASF182:
	.string	"HAL_ThreadCreate"
.LASF186:
	.string	"stack_used"
.LASF159:
	.string	"length"
.LASF227:
	.string	"__stack_chk_fail"
.LASF92:
	.string	"__sf"
.LASF30:
	.string	"_sign"
.LASF214:
	.string	"aos_task_new_ext"
.LASF67:
	.string	"_data"
.LASF21:
	.string	"__wchb"
.LASF124:
	.string	"uint64_t"
.LASF146:
	.string	"task"
.LASF39:
	.string	"__tm_year"
.LASF134:
	.string	"os_thread_priority_aboveNormal"
.LASF104:
	.string	"_localtime_buf"
.LASF122:
	.string	"_unused"
.LASF88:
	.string	"_new"
.LASF130:
	.string	"os_thread_priority_idle"
.LASF86:
	.string	"_cvtlen"
.LASF29:
	.string	"_maxwds"
.LASF111:
	.string	"_l64a_buf"
.LASF139:
	.string	"_hal_os_thread"
.LASF65:
	.string	"_blksize"
.LASF33:
	.string	"__tm"
.LASF68:
	.string	"_lock"
.LASF22:
	.string	"sizetype"
.LASF138:
	.string	"hal_os_thread_priority_t"
.LASF5:
	.string	"long unsigned int"
.LASF95:
	.string	"_niobs"
.LASF19:
	.string	"wint_t"
.LASF204:
	.string	"aos_msleep"
.LASF45:
	.string	"_dso_handle"
.LASF197:
	.string	"aos_mutex_new"
.LASF179:
	.string	"HAL_SemaphorePost"
.LASF87:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF135:
	.string	"os_thread_priority_high"
.LASF7:
	.string	"__uint32_t"
.LASF218:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF113:
	.string	"_getdate_err"
.LASF224:
	.string	"aliot_platform_ota_write"
.LASF177:
	.string	"HAL_SemaphoreCreate"
.LASF100:
	.string	"_add"
.LASF206:
	.string	"vprintf"
.LASF51:
	.string	"__sbuf"
.LASF94:
	.string	"_glue"
.LASF196:
	.string	"aos_free"
.LASF217:
	.string	"aos_kv_get"
.LASF91:
	.string	"__sglue"
.LASF102:
	.string	"_strtok_last"
.LASF109:
	.string	"_mbtowc_state"
.LASF165:
	.string	"t_end"
.LASF79:
	.string	"_locale"
.LASF44:
	.string	"_fnargs"
.LASF0:
	.string	"signed char"
.LASF223:
	.string	"task_wrapper"
.LASF71:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF154:
	.string	"HAL_MutexCreate"
.LASF221:
	.string	"__builtin_va_list"
.LASF155:
	.string	"HAL_Malloc"
.LASF151:
	.string	"HAL_MutexDestroy"
.LASF46:
	.string	"_fntypes"
.LASF53:
	.string	"_size"
.LASF132:
	.string	"os_thread_priority_belowNormal"
.LASF192:
	.string	"HAL_Config_Write"
.LASF142:
	.string	"stack_size"
.LASF17:
	.string	"_off_t"
.LASF64:
	.string	"_nbuf"
.LASF101:
	.string	"_unused_rand"
.LASF200:
	.string	"aos_mutex_unlock"
.LASF78:
	.string	"_unspecified_locale_info"
.LASF70:
	.string	"_flags2"
.LASF47:
	.string	"_is_cxa"
.LASF98:
	.string	"_seed"
.LASF106:
	.string	"_rand_next"
.LASF222:
	.string	"__locale_t"
.LASF61:
	.string	"_seek"
.LASF75:
	.string	"_stderr"
.LASF121:
	.string	"_nmalloc"
.LASF63:
	.string	"_ubuf"
.LASF205:
	.string	"vsnprintf"
.LASF170:
	.string	"HAL_Vsnprintf"
.LASF215:
	.string	"aos_task_exit"
.LASF168:
	.string	"HAL_Snprintf"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
