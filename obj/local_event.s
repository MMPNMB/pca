	.file	"local_event.c"
	.text
.Ltext0:
	.section	.text.unlikely.event_read_cb,"ax",@progbits
.LCOLDB0:
	.section	.text.event_read_cb,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.event_read_cb
.Ltext_cold0:
	.section	.text.event_read_cb
	.type	event_read_cb, @function
event_read_cb:
.LFB24:
	.file 1 "kernel/yloop/local_event.c"
	.loc 1 73 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 75 0
	leal	-28(%ebp), %esi
	.loc 1 73 0
	subl	$36, %esp
	.loc 1 75 0
	pushl	$16
	pushl	%esi
	pushl	8(%ebp)
	.loc 1 73 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 75 0
	call	aos_read
.LVL1:
	.loc 1 76 0
	addl	$16, %esp
	cmpl	$16, %eax
	jne	.L1
.LVL2:
.LBB11:
.LBB12:
	.loc 1 39 0
	cmpw	$256, -24(%ebp)
	.loc 1 48 0
	movl	g_local_event_list+4, %ebx
	.loc 1 39 0
	jne	.L13
.LVL3:
.LBB13:
	.loc 1 42 0
	subl	$12, %esp
	pushl	-16(%ebp)
	call	*-20(%ebp)
.LVL4:
	addl	$16, %esp
	jmp	.L1
.LVL5:
.L8:
.LBE13:
	.loc 1 49 0
	movl	16(%ebx), %eax
	testw	%ax, %ax
	je	.L6
	.loc 1 50 0
	cmpw	-24(%ebp), %ax
	je	.L6
.L7:
	.loc 1 48 0
	movl	4(%ebx), %ebx
.LVL6:
.L13:
	cmpl	$g_local_event_list, %ebx
	jne	.L8
	jmp	.L1
.L6:
	.loc 1 53 0
	pushl	%eax
	pushl	%eax
	pushl	12(%ebx)
	pushl	%esi
	call	*8(%ebx)
.LVL7:
	addl	$16, %esp
	jmp	.L7
.LVL8:
.L1:
.LBE12:
.LBE11:
	.loc 1 79 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L10
	call	__stack_chk_fail
.LVL9:
.L10:
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
.LFE24:
	.size	event_read_cb, .-event_read_cb
	.section	.text.unlikely.event_read_cb
.LCOLDE0:
	.section	.text.event_read_cb
.LHOTE0:
	.section	.text.unlikely._schedule_call,"ax",@progbits
.LCOLDB1:
	.section	.text._schedule_call,"ax",@progbits
.LHOTB1:
	.type	_schedule_call, @function
_schedule_call:
.LFB30:
	.loc 1 160 0
	.cfi_startproc
.LVL10:
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
	subl	$60, %esp
	.loc 1 160 0
	movl	8(%ebp), %eax
.LVL11:
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 162 0
	testl	%edx, %edx
	.loc 1 163 0
	movl	$-22, %eax
	.loc 1 162 0
	je	.L18
	.loc 1 162 0 discriminator 1
	cmpl	$0, g_main_ctx
	je	.L18
	.loc 1 166 0
	leal	-44(%ebp), %edi
	.loc 1 171 0
	subl	$12, %esp
	.loc 1 166 0
	xorl	%eax, %eax
	movl	%ecx, %ebx
	movl	$4, %ecx
.LVL12:
	rep stosl
	.loc 1 171 0
	pushl	%esi
	.loc 1 166 0
	movw	$256, -40(%ebp)
	movl	%edx, -36(%ebp)
	movl	%ebx, -32(%ebp)
	.loc 1 171 0
	call	aos_loop_get_eventfd
.LVL13:
	.loc 1 172 0
	addl	$16, %esp
	.loc 1 173 0
	testl	%eax, %eax
	cmovs	local_event+4, %eax
.LVL14:
	.loc 1 176 0
	cmpb	$0, -60(%ebp)
	je	.L20
	.loc 1 177 0
	orw	$-32768, -40(%ebp)
.L20:
.LVL15:
.LBB16:
.LBB17:
	.loc 1 59 0
	movl	-40(%ebp), %edx
.LVL16:
	.loc 1 60 0
	movl	%edx, %ecx
	.loc 1 63 0
	andw	$-32768, %dx
.LVL17:
	.loc 1 60 0
	andw	$32767, %cx
.LVL18:
	.loc 1 66 0
	cmpw	$1, %dx
	.loc 1 60 0
	movw	%cx, -40(%ebp)
.LVL19:
	.loc 1 66 0
	sbbl	%edx, %edx
	.loc 1 69 0
	pushl	%ecx
	leal	-44(%ebp), %ecx
.LVL20:
	.loc 1 66 0
	addl	$258, %edx
.LVL21:
	.loc 1 69 0
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	aos_ioctl
.LVL22:
.LBE17:
.LBE16:
	.loc 1 179 0
	addl	$16, %esp
.LVL23:
.L18:
	.loc 1 180 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
	je	.L22
	call	__stack_chk_fail
.LVL24:
.L22:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL25:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	_schedule_call, .-_schedule_call
	.section	.text.unlikely._schedule_call
.LCOLDE1:
	.section	.text._schedule_call
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"/dev/event"
	.section	.text.unlikely.aos_event_service_init,"ax",@progbits
.LCOLDB3:
	.section	.text.aos_event_service_init,"ax",@progbits
.LHOTB3:
	.globl	aos_event_service_init
	.type	aos_event_service_init, @function
aos_event_service_init:
.LFB25:
	.loc 1 82 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 83 0
	pushl	$0
	pushl	$.LC2
	call	aos_open
.LVL26:
	.loc 1 85 0
	addl	$16, %esp
	cmpl	$0, local_event+4
	.loc 1 83 0
	movl	%eax, %ebx
.LVL27:
	.loc 1 85 0
	jns	.L28
	.loc 1 86 0
	movl	%eax, local_event+4
.L28:
.LVL28:
	.loc 1 88 0
	pushl	%eax
	pushl	$0
	pushl	$event_read_cb
	pushl	%ebx
	call	aos_poll_read_fd
.LVL29:
	.loc 1 89 0
	movl	%ebx, (%esp)
	call	aos_loop_set_eventfd
.LVL30:
	.loc 1 92 0
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
.LVL31:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	aos_event_service_init, .-aos_event_service_init
	.section	.text.unlikely.aos_event_service_init
.LCOLDE3:
	.section	.text.aos_event_service_init
.LHOTE3:
	.section	.text.unlikely.aos_event_service_deinit,"ax",@progbits
.LCOLDB4:
	.section	.text.aos_event_service_deinit,"ax",@progbits
.LHOTB4:
	.globl	aos_event_service_deinit
	.type	aos_event_service_deinit, @function
aos_event_service_deinit:
.LFB26:
	.loc 1 95 0
	.cfi_startproc
.LVL32:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 3, -12
	.loc 1 95 0
	movl	8(%ebp), %ebx
	.loc 1 96 0
	pushl	$0
	pushl	$event_read_cb
	pushl	%ebx
	call	aos_cancel_poll_read_fd
.LVL33:
	.loc 1 97 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
	.loc 1 98 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 97 0
	jmp	aos_close
.LVL34:
	.cfi_endproc
.LFE26:
	.size	aos_event_service_deinit, .-aos_event_service_deinit
	.section	.text.unlikely.aos_event_service_deinit
.LCOLDE4:
	.section	.text.aos_event_service_deinit
.LHOTE4:
	.section	.text.unlikely.aos_post_event,"ax",@progbits
.LCOLDB5:
	.section	.text.aos_post_event,"ax",@progbits
.LHOTB5:
	.globl	aos_post_event
	.type	aos_post_event, @function
aos_post_event:
.LFB27:
	.loc 1 101 0
	.cfi_startproc
.LVL35:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 102 0
	movl	$4, %ecx
	.loc 1 101 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 102 0
	leal	-28(%ebp), %edi
	.loc 1 101 0
	subl	$40, %esp
	.loc 1 101 0
	movl	8(%ebp), %edx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 102 0
	rep stosl
	movl	12(%ebp), %eax
	movw	%ax, -22(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -20(%ebp)
.LVL36:
.LBB20:
.LBB21:
	.loc 1 60 0
	movl	%edx, %eax
	.loc 1 63 0
	andw	$-32768, %dx
.LVL37:
	.loc 1 60 0
	andw	$32767, %ax
.LVL38:
	.loc 1 66 0
	cmpw	$1, %dx
	.loc 1 69 0
	leal	-28(%ebp), %edx
.LVL39:
	.loc 1 60 0
	movw	%ax, -24(%ebp)
	.loc 1 66 0
	sbbl	%eax, %eax
	addl	$258, %eax
.LVL40:
	.loc 1 69 0
	pushl	%edx
	pushl	%eax
	pushl	local_event+4
	call	aos_ioctl
.LVL41:
.LBE21:
.LBE20:
	.loc 1 109 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L34
	call	__stack_chk_fail
.LVL42:
.L34:
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	aos_post_event, .-aos_post_event
	.section	.text.unlikely.aos_post_event
.LCOLDE5:
	.section	.text.aos_post_event
.LHOTE5:
	.section	.text.unlikely.aos_register_event_filter,"ax",@progbits
.LCOLDB6:
	.section	.text.aos_register_event_filter,"ax",@progbits
.LHOTB6:
	.globl	aos_register_event_filter
	.type	aos_register_event_filter, @function
aos_register_event_filter:
.LFB28:
	.loc 1 112 0
	.cfi_startproc
.LVL43:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 114 0
	movl	$-22, %eax
	.loc 1 112 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 112 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	.loc 1 113 0
	testl	%ebx, %ebx
	je	.L38
	.loc 1 117 0
	subl	$12, %esp
	pushl	$20
	call	aos_malloc
.LVL44:
	movl	%eax, %edx
.LVL45:
	.loc 1 118 0
	addl	$16, %esp
	.loc 1 119 0
	movl	$-12, %eax
.LVL46:
	.loc 1 118 0
	testl	%edx, %edx
	je	.L38
	.loc 1 124 0
	movl	16(%ebp), %eax
	.loc 1 122 0
	movl	%ebx, 8(%edx)
	.loc 1 123 0
	movw	%si, 16(%edx)
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.file 2 "./include/aos/list.h"
	.loc 2 38 0
	movl	$g_local_event_list, 4(%edx)
.LBE25:
.LBE24:
.LBE23:
.LBE22:
	.loc 1 124 0
	movl	%eax, 12(%edx)
.LVL47:
.LBB32:
.LBB30:
	.loc 2 63 0
	movl	g_local_event_list, %eax
.LVL48:
.LBB28:
.LBB26:
	.loc 2 39 0
	movl	%eax, (%edx)
	.loc 2 41 0
	movl	%edx, 4(%eax)
.LBE26:
.LBE28:
.LBE30:
.LBE32:
	.loc 1 128 0
	xorl	%eax, %eax
.LVL49:
.LBB33:
.LBB31:
.LBB29:
.LBB27:
	.loc 2 42 0
	movl	%edx, g_local_event_list
.LVL50:
.L38:
.LBE27:
.LBE29:
.LBE31:
.LBE33:
	.loc 1 129 0
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
.LFE28:
	.size	aos_register_event_filter, .-aos_register_event_filter
	.section	.text.unlikely.aos_register_event_filter
.LCOLDE6:
	.section	.text.aos_register_event_filter
.LHOTE6:
	.section	.text.unlikely.aos_unregister_event_filter,"ax",@progbits
.LCOLDB7:
	.section	.text.aos_unregister_event_filter,"ax",@progbits
.LHOTB7:
	.globl	aos_unregister_event_filter
	.type	aos_unregister_event_filter, @function
aos_unregister_event_filter:
.LFB29:
	.loc 1 132 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 132 0
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	.loc 1 134 0
	movl	g_local_event_list+4, %eax
.LVL52:
.L43:
	.loc 1 134 0 is_stmt 0 discriminator 1
	cmpl	$g_local_event_list, %eax
	je	.L48
	.loc 1 135 0 is_stmt 1
	cmpw	%dx, 16(%eax)
	jne	.L44
	.loc 1 139 0
	cmpl	%ecx, 8(%eax)
	jne	.L44
	.loc 1 143 0
	movl	16(%ebp), %ebx
	cmpl	%ebx, 12(%eax)
	jne	.L44
.LVL53:
.LBB36:
.LBB37:
	.loc 2 68 0
	movl	(%eax), %ecx
.LVL54:
	.loc 2 69 0
	movl	4(%eax), %edx
.LVL55:
.LBE37:
.LBE36:
	.loc 1 148 0
	subl	$12, %esp
.LBB39:
.LBB38:
	.loc 2 71 0
	movl	%edx, 4(%ecx)
	.loc 2 72 0
	movl	%ecx, (%edx)
.LVL56:
.LBE38:
.LBE39:
	.loc 1 148 0
	pushl	%eax
	call	aos_free
.LVL57:
	.loc 1 149 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L45
.LVL58:
.L44:
	.loc 1 134 0 discriminator 2
	movl	4(%eax), %eax
.LVL59:
	jmp	.L43
.L48:
	.loc 1 152 0
	movl	$-22, %eax
.LVL60:
.L45:
	.loc 1 153 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	aos_unregister_event_filter, .-aos_unregister_event_filter
	.section	.text.unlikely.aos_unregister_event_filter
.LCOLDE7:
	.section	.text.aos_unregister_event_filter
.LHOTE7:
	.section	.text.unlikely.aos_loop_schedule_urgent_call,"ax",@progbits
.LCOLDB8:
	.section	.text.aos_loop_schedule_urgent_call,"ax",@progbits
.LHOTB8:
	.globl	aos_loop_schedule_urgent_call
	.type	aos_loop_schedule_urgent_call, @function
aos_loop_schedule_urgent_call:
.LFB31:
	.loc 1 183 0
	.cfi_startproc
.LVL61:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 183 0
	movl	8(%ebp), %eax
	.loc 1 184 0
	movl	16(%ebp), %ecx
	movl	$1, 8(%ebp)
.LVL62:
	movl	12(%ebp), %edx
	.loc 1 185 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 184 0
	jmp	_schedule_call
.LVL63:
	.cfi_endproc
.LFE31:
	.size	aos_loop_schedule_urgent_call, .-aos_loop_schedule_urgent_call
	.section	.text.unlikely.aos_loop_schedule_urgent_call
.LCOLDE8:
	.section	.text.aos_loop_schedule_urgent_call
.LHOTE8:
	.section	.text.unlikely.aos_loop_schedule_call,"ax",@progbits
.LCOLDB9:
	.section	.text.aos_loop_schedule_call,"ax",@progbits
.LHOTB9:
	.globl	aos_loop_schedule_call
	.type	aos_loop_schedule_call, @function
aos_loop_schedule_call:
.LFB32:
	.loc 1 188 0
	.cfi_startproc
.LVL64:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 188 0
	movl	8(%ebp), %eax
	.loc 1 189 0
	movl	16(%ebp), %ecx
	movl	$0, 8(%ebp)
.LVL65:
	movl	12(%ebp), %edx
	.loc 1 190 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 189 0
	jmp	_schedule_call
.LVL66:
	.cfi_endproc
.LFE32:
	.size	aos_loop_schedule_call, .-aos_loop_schedule_call
	.section	.text.unlikely.aos_loop_schedule_call
.LCOLDE9:
	.section	.text.aos_loop_schedule_call
.LHOTE9:
	.section	.text.unlikely.run_my_work,"ax",@progbits
.LCOLDB10:
	.section	.text.run_my_work,"ax",@progbits
.LHOTB10:
	.type	run_my_work, @function
run_my_work:
.LFB35:
	.loc 1 215 0
	.cfi_startproc
.LVL67:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 215 0
	movl	8(%ebp), %ebx
.LVL68:
	.loc 1 218 0
	pushl	12(%ebx)
	call	*8(%ebx)
.LVL69:
	.loc 1 220 0
	movl	16(%ebx), %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	.L54
	.loc 1 221 0
	pushl	%edx
	pushl	20(%ebx)
	pushl	%eax
	pushl	4(%ebx)
	call	aos_loop_schedule_call
.LVL70:
	addl	$16, %esp
.L54:
.LVL71:
.LBB42:
.LBB43:
	.loc 1 209 0
	subl	$12, %esp
	pushl	(%ebx)
	call	aos_work_destroy
.LVL72:
	.loc 1 210 0
	popl	%eax
	pushl	(%ebx)
	call	aos_free
.LVL73:
	.loc 1 211 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
.LBE43:
.LBE42:
	.loc 1 225 0
	movl	-4(%ebp), %ebx
.LVL74:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
.LBB45:
.LBB44:
	.loc 1 211 0
	jmp	aos_free
.LVL75:
.LBE44:
.LBE45:
	.cfi_endproc
.LFE35:
	.size	run_my_work, .-run_my_work
	.section	.text.unlikely.run_my_work
.LCOLDE10:
	.section	.text.run_my_work
.LHOTE10:
	.section	.text.unlikely.aos_schedule_call,"ax",@progbits
.LCOLDB11:
	.section	.text.aos_schedule_call,"ax",@progbits
.LHOTB11:
	.globl	aos_schedule_call
	.type	aos_schedule_call, @function
aos_schedule_call:
.LFB33:
	.loc 1 193 0
	.cfi_startproc
.LVL76:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 194 0
	xorl	%eax, %eax
	.loc 1 193 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 193 0
	movl	8(%ebp), %edx
	.loc 1 194 0
	movl	12(%ebp), %ecx
	movl	$0, 8(%ebp)
.LVL77:
	.loc 1 195 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 194 0
	jmp	_schedule_call
.LVL78:
	.cfi_endproc
.LFE33:
	.size	aos_schedule_call, .-aos_schedule_call
	.section	.text.unlikely.aos_schedule_call
.LCOLDE11:
	.section	.text.aos_schedule_call
.LHOTE11:
	.section	.text.unlikely.aos_cancel_work,"ax",@progbits
.LCOLDB12:
	.section	.text.aos_cancel_work,"ax",@progbits
.LHOTB12:
	.globl	aos_cancel_work
	.type	aos_cancel_work, @function
aos_cancel_work:
.LFB36:
	.loc 1 228 0
	.cfi_startproc
.LVL79:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 228 0
	movl	8(%ebp), %ebx
.LVL80:
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	.loc 1 231 0
	testl	%ebx, %ebx
	je	.L61
	.loc 1 235 0
	cmpl	%edx, 8(%ebx)
	jne	.L61
	.loc 1 239 0
	cmpl	%eax, 12(%ebx)
	jne	.L61
	.loc 1 243 0
	subl	$12, %esp
	pushl	(%ebx)
	call	aos_work_cancel
.LVL81:
	.loc 1 244 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L61
.LVL82:
.LBB48:
.LBB49:
	.loc 1 209 0
	subl	$12, %esp
	pushl	(%ebx)
	call	aos_work_destroy
.LVL83:
	.loc 1 210 0
	popl	%eax
	pushl	(%ebx)
	call	aos_free
.LVL84:
	.loc 1 211 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
.LBE49:
.LBE48:
	.loc 1 249 0
	movl	-4(%ebp), %ebx
.LVL85:
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
.LBB51:
.LBB50:
	.loc 1 211 0
	jmp	aos_free
.LVL86:
.L61:
	.cfi_restore_state
.LBE50:
.LBE51:
	.loc 1 249 0
	movl	-4(%ebp), %ebx
.LVL87:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	aos_cancel_work, .-aos_cancel_work
	.section	.text.unlikely.aos_cancel_work
.LCOLDE12:
	.section	.text.aos_cancel_work
.LHOTE12:
	.section	.text.unlikely.aos_loop_schedule_work,"ax",@progbits
.LCOLDB13:
	.section	.text.aos_loop_schedule_work,"ax",@progbits
.LHOTB13:
	.globl	aos_loop_schedule_work
	.type	aos_loop_schedule_work, @function
aos_loop_schedule_work:
.LFB37:
	.loc 1 253 0
	.cfi_startproc
.LVL88:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 257 0
	xorl	%eax, %eax
	.loc 1 253 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 253 0
	movl	12(%ebp), %esi
	.loc 1 256 0
	testl	%esi, %esi
	je	.L67
	.loc 1 260 0
	subl	$12, %esp
	pushl	$4
	call	aos_malloc
.LVL89:
	movl	%eax, %edi
.LVL90:
	.loc 1 261 0
	movl	$24, (%esp)
	call	aos_malloc
.LVL91:
	.loc 1 263 0
	addl	$16, %esp
	testl	%edi, %edi
	.loc 1 261 0
	movl	%eax, %ebx
.LVL92:
	.loc 1 263 0
	je	.L70
	testl	%eax, %eax
	jne	.L68
.LVL93:
.L70:
.LDL1:
	.loc 1 285 0
	subl	$12, %esp
	pushl	%edi
	call	aos_free
.LVL94:
	.loc 1 286 0
	movl	%ebx, (%esp)
	call	aos_free
.LVL95:
	.loc 1 287 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L67
.LVL96:
.L68:
	.loc 1 267 0
	movl	%edi, (%eax)
	.loc 1 268 0
	call	aos_current_loop
.LVL97:
	movl	%eax, 4(%ebx)
	.loc 1 270 0
	movl	16(%ebp), %eax
	.loc 1 269 0
	movl	%esi, 8(%ebx)
	.loc 1 270 0
	movl	%eax, 12(%ebx)
	.loc 1 271 0
	movl	20(%ebp), %eax
	movl	%eax, 16(%ebx)
	.loc 1 272 0
	movl	24(%ebp), %eax
	movl	%eax, 20(%ebx)
	.loc 1 274 0
	pushl	8(%ebp)
	pushl	%ebx
	pushl	$run_my_work
	pushl	%edi
	call	aos_work_init
.LVL98:
	.loc 1 275 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L70
	.loc 1 278 0
	subl	$12, %esp
	pushl	%edi
	call	aos_work_sched
.LVL99:
	.loc 1 279 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L70
	movl	%ebx, %eax
.LVL100:
.L67:
	.loc 1 288 0
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
.LFE37:
	.size	aos_loop_schedule_work, .-aos_loop_schedule_work
	.section	.text.unlikely.aos_loop_schedule_work
.LCOLDE13:
	.section	.text.aos_loop_schedule_work
.LHOTE13:
	.section	.data.g_local_event_list,"aw",@progbits
	.align 4
	.type	g_local_event_list, @object
	.size	g_local_event_list, 8
g_local_event_list:
	.long	g_local_event_list
	.long	g_local_event_list
	.section	.data.local_event,"aw",@progbits
	.align 4
	.type	local_event, @object
	.size	local_event, 8
local_event:
	.zero	4
	.long	-1
	.text
.Letext0:
	.section	.text.unlikely.event_read_cb
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "./include/aos/types.h"
	.file 7 "./include/aos/kernel.h"
	.file 8 "./include/aos/yloop.h"
	.file 9 "kernel/yloop/yloop.h"
	.file 10 "./include/aos/log.h"
	.file 11 "./include/aos/vfs.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc92
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF107
	.byte	0xc
	.long	.LASF108
	.long	.LASF109
	.long	.Ldebug_ranges0+0x88
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF4
	.byte	0x3
	.byte	0xd8
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
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
	.uleb128 0x2
	.long	.LASF5
	.byte	0x4
	.byte	0x1d
	.long	0x5e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x2b
	.long	0x77
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x4
	.byte	0x41
	.long	0x90
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x18
	.long	0x53
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x24
	.long	0x6c
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0x30
	.long	0x85
	.uleb128 0x6
	.long	.LASF23
	.byte	0x8
	.byte	0x6
	.byte	0x11
	.long	0xff
	.uleb128 0x7
	.string	"fd"
	.byte	0x6
	.byte	0x12
	.long	0x37
	.byte	0
	.uleb128 0x8
	.long	.LASF19
	.byte	0x6
	.byte	0x13
	.long	0x65
	.byte	0x4
	.uleb128 0x8
	.long	.LASF20
	.byte	0x6
	.byte	0x14
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.byte	0x13
	.long	0x114
	.uleb128 0x7
	.string	"hdl"
	.byte	0x7
	.byte	0x14
	.long	0xa5
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF21
	.byte	0x7
	.byte	0x15
	.long	0xff
	.uleb128 0x2
	.long	.LASF22
	.byte	0x7
	.byte	0x1c
	.long	0x114
	.uleb128 0x6
	.long	.LASF24
	.byte	0x8
	.byte	0x2
	.byte	0x1f
	.long	0x14f
	.uleb128 0x8
	.long	.LASF25
	.byte	0x2
	.byte	0x20
	.long	0x14f
	.byte	0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x2
	.byte	0x21
	.long	0x14f
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x12a
	.uleb128 0x2
	.long	.LASF27
	.byte	0x2
	.byte	0x22
	.long	0x12a
	.uleb128 0x9
	.byte	0x10
	.byte	0x8
	.byte	0x41
	.long	0x1a5
	.uleb128 0x8
	.long	.LASF28
	.byte	0x8
	.byte	0x43
	.long	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF29
	.byte	0x8
	.byte	0x45
	.long	0xb9
	.byte	0x4
	.uleb128 0x8
	.long	.LASF30
	.byte	0x8
	.byte	0x47
	.long	0xb9
	.byte	0x6
	.uleb128 0x8
	.long	.LASF31
	.byte	0x8
	.byte	0x49
	.long	0x90
	.byte	0x8
	.uleb128 0x8
	.long	.LASF32
	.byte	0x8
	.byte	0x4b
	.long	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x8
	.byte	0x4c
	.long	0x160
	.uleb128 0x2
	.long	.LASF34
	.byte	0x8
	.byte	0x4f
	.long	0x1bb
	.uleb128 0xa
	.byte	0x4
	.long	0x1c1
	.uleb128 0xb
	.long	0x1d1
	.uleb128 0xc
	.long	0x1d1
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x1a5
	.uleb128 0x2
	.long	.LASF35
	.byte	0x8
	.byte	0x51
	.long	0x1e2
	.uleb128 0xa
	.byte	0x4
	.long	0x1e8
	.uleb128 0xb
	.long	0x1f3
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x8
	.byte	0x53
	.long	0x1fe
	.uleb128 0xa
	.byte	0x4
	.long	0x204
	.uleb128 0xb
	.long	0x214
	.uleb128 0xc
	.long	0x37
	.uleb128 0xc
	.long	0xa5
	.byte	0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x8
	.byte	0xab
	.long	0xa5
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF38
	.uleb128 0x9
	.byte	0xc
	.byte	0x9
	.byte	0x8
	.long	0x252
	.uleb128 0x8
	.long	.LASF39
	.byte	0x9
	.byte	0x9
	.long	0x37
	.byte	0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x9
	.byte	0xa
	.long	0xa5
	.byte	0x4
	.uleb128 0x7
	.string	"cb"
	.byte	0x9
	.byte	0xb
	.long	0x1f3
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x9
	.byte	0xc
	.long	0x226
	.uleb128 0x9
	.byte	0x18
	.byte	0x9
	.byte	0xe
	.long	0x2c6
	.uleb128 0x8
	.long	.LASF42
	.byte	0x9
	.byte	0xf
	.long	0x155
	.byte	0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x9
	.byte	0x10
	.long	0x2c6
	.byte	0x8
	.uleb128 0x8
	.long	.LASF44
	.byte	0x9
	.byte	0x11
	.long	0x2cc
	.byte	0xc
	.uleb128 0x8
	.long	.LASF45
	.byte	0x9
	.byte	0x12
	.long	0x37
	.byte	0x10
	.uleb128 0x8
	.long	.LASF46
	.byte	0x9
	.byte	0x13
	.long	0xae
	.byte	0x14
	.uleb128 0x8
	.long	.LASF47
	.byte	0x9
	.byte	0x14
	.long	0xae
	.byte	0x15
	.uleb128 0x8
	.long	.LASF48
	.byte	0x9
	.byte	0x15
	.long	0x21f
	.byte	0x16
	.uleb128 0x8
	.long	.LASF49
	.byte	0x9
	.byte	0x16
	.long	0x21f
	.byte	0x17
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0xcf
	.uleb128 0xa
	.byte	0x4
	.long	0x252
	.uleb128 0x2
	.long	.LASF50
	.byte	0x9
	.byte	0x17
	.long	0x25d
	.uleb128 0x9
	.byte	0x14
	.byte	0x1
	.byte	0xd
	.long	0x315
	.uleb128 0x8
	.long	.LASF51
	.byte	0x1
	.byte	0xe
	.long	0x155
	.byte	0
	.uleb128 0x7
	.string	"cb"
	.byte	0x1
	.byte	0xf
	.long	0x1b0
	.byte	0x8
	.uleb128 0x8
	.long	.LASF52
	.byte	0x1
	.byte	0x10
	.long	0xa5
	.byte	0xc
	.uleb128 0x8
	.long	.LASF53
	.byte	0x1
	.byte	0x11
	.long	0xb9
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x1
	.byte	0x12
	.long	0x2dd
	.uleb128 0x9
	.byte	0x8
	.byte	0x1
	.byte	0x14
	.long	0x340
	.uleb128 0x8
	.long	.LASF55
	.byte	0x1
	.byte	0x15
	.long	0xa5
	.byte	0
	.uleb128 0x7
	.string	"fd"
	.byte	0x1
	.byte	0x16
	.long	0x37
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.long	.LASF56
	.byte	0x18
	.byte	0x1
	.byte	0xc6
	.long	0x395
	.uleb128 0x8
	.long	.LASF57
	.byte	0x1
	.byte	0xc7
	.long	0x395
	.byte	0
	.uleb128 0x8
	.long	.LASF58
	.byte	0x1
	.byte	0xc8
	.long	0x214
	.byte	0x4
	.uleb128 0x8
	.long	.LASF59
	.byte	0x1
	.byte	0xc9
	.long	0x1d7
	.byte	0x8
	.uleb128 0x8
	.long	.LASF60
	.byte	0x1
	.byte	0xca
	.long	0xa5
	.byte	0xc
	.uleb128 0x8
	.long	.LASF61
	.byte	0x1
	.byte	0xcb
	.long	0x1d7
	.byte	0x10
	.uleb128 0x8
	.long	.LASF62
	.byte	0x1
	.byte	0xcc
	.long	0xa5
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x11f
	.uleb128 0x2
	.long	.LASF63
	.byte	0x1
	.byte	0xcd
	.long	0x340
	.uleb128 0xd
	.long	.LASF64
	.byte	0x2
	.byte	0x24
	.byte	0x3
	.long	0x3d4
	.uleb128 0xe
	.long	.LASF51
	.byte	0x2
	.byte	0x24
	.long	0x3d4
	.uleb128 0xe
	.long	.LASF25
	.byte	0x2
	.byte	0x24
	.long	0x3d4
	.uleb128 0xe
	.long	.LASF26
	.byte	0x2
	.byte	0x24
	.long	0x3d4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x155
	.uleb128 0xd
	.long	.LASF65
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.long	0x3fd
	.uleb128 0xe
	.long	.LASF51
	.byte	0x2
	.byte	0x3d
	.long	0x3d4
	.uleb128 0xe
	.long	.LASF66
	.byte	0x2
	.byte	0x3d
	.long	0x3d4
	.byte	0
	.uleb128 0xd
	.long	.LASF67
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.long	0x438
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.byte	0x25
	.long	0x1d1
	.uleb128 0xf
	.long	.LASF69
	.byte	0x1
	.byte	0x2f
	.long	0x438
	.uleb128 0x10
	.uleb128 0xf
	.long	.LASF70
	.byte	0x1
	.byte	0x28
	.long	0x1d7
	.uleb128 0x11
	.string	"arg"
	.byte	0x1
	.byte	0x29
	.long	0xa5
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x315
	.uleb128 0x12
	.long	.LASF82
	.byte	0x1
	.byte	0x48
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ea
	.uleb128 0x13
	.string	"fd"
	.byte	0x1
	.byte	0x48
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF71
	.byte	0x1
	.byte	0x48
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x4a
	.long	0x1a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x4b
	.long	0x37
	.long	.LLST0
	.uleb128 0x17
	.long	0x3fd
	.long	.LBB11
	.long	.LBE11-.LBB11
	.byte	0x1
	.byte	0x4d
	.long	0x4d7
	.uleb128 0x18
	.long	0x409
	.long	.LLST1
	.uleb128 0x19
	.long	.LBB12
	.long	.LBE12-.LBB12
	.uleb128 0x1a
	.long	0x414
	.long	.LLST2
	.uleb128 0x19
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x1a
	.long	0x420
	.long	.LLST3
	.uleb128 0x1a
	.long	0x42b
	.long	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL1
	.long	0xbe1
	.uleb128 0x1b
	.long	.LVL9
	.long	0xbec
	.byte	0
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x1
	.byte	0x39
	.long	0x37
	.byte	0x1
	.long	0x526
	.uleb128 0x1d
	.string	"fd"
	.byte	0x1
	.byte	0x39
	.long	0x37
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.byte	0x39
	.long	0x1d1
	.uleb128 0xf
	.long	.LASF72
	.byte	0x1
	.byte	0x3b
	.long	0x21f
	.uleb128 0x11
	.string	"cmd"
	.byte	0x1
	.byte	0x3d
	.long	0x37
	.byte	0
	.uleb128 0x1e
	.long	.LASF111
	.byte	0x1
	.byte	0x9e
	.long	0x37
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f4
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.byte	0x9e
	.long	0x5f4
	.long	.LLST5
	.uleb128 0x20
	.string	"fun"
	.byte	0x1
	.byte	0x9e
	.long	0x1d7
	.long	.LLST6
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0x9e
	.long	0xa5
	.long	.LLST7
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0x9f
	.long	0x21f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0xa6
	.long	0x1a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.string	"fd"
	.byte	0x1
	.byte	0xab
	.long	0x37
	.long	.LLST8
	.uleb128 0x17
	.long	0x4ea
	.long	.LBB16
	.long	.LBE16-.LBB16
	.byte	0x1
	.byte	0xb3
	.long	0x5e1
	.uleb128 0x18
	.long	0x504
	.long	.LLST9
	.uleb128 0x18
	.long	0x4fa
	.long	.LLST10
	.uleb128 0x19
	.long	.LBB17
	.long	.LBE17-.LBB17
	.uleb128 0x1a
	.long	0x50f
	.long	.LLST11
	.uleb128 0x1a
	.long	0x51a
	.long	.LLST12
	.uleb128 0x1b
	.long	.LVL22
	.long	0xbf5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL13
	.long	0xc00
	.uleb128 0x1b
	.long	.LVL24
	.long	0xbec
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x214
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.byte	0x51
	.long	0x37
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x63d
	.uleb128 0x16
	.string	"fd"
	.byte	0x1
	.byte	0x53
	.long	0x37
	.long	.LLST13
	.uleb128 0x1b
	.long	.LVL26
	.long	0xc0b
	.uleb128 0x1b
	.long	.LVL29
	.long	0xc16
	.uleb128 0x1b
	.long	.LVL30
	.long	0xc21
	.byte	0
	.uleb128 0x22
	.long	.LASF85
	.byte	0x1
	.byte	0x5e
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x672
	.uleb128 0x13
	.string	"fd"
	.byte	0x1
	.byte	0x5e
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.long	.LVL33
	.long	0xc2c
	.uleb128 0x23
	.long	.LVL34
	.long	0xc37
	.byte	0
	.uleb128 0x21
	.long	.LASF74
	.byte	0x1
	.byte	0x64
	.long	0x37
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x718
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.byte	0x64
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF30
	.byte	0x1
	.byte	0x64
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF31
	.byte	0x1
	.byte	0x64
	.long	0x90
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x66
	.long	0x1a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.long	0x4ea
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.byte	0x6c
	.long	0x70e
	.uleb128 0x18
	.long	0x504
	.long	.LLST14
	.uleb128 0x18
	.long	0x4fa
	.long	.LLST15
	.uleb128 0x19
	.long	.LBB21
	.long	.LBE21-.LBB21
	.uleb128 0x1a
	.long	0x50f
	.long	.LLST16
	.uleb128 0x1a
	.long	0x51a
	.long	.LLST17
	.uleb128 0x1b
	.long	.LVL41
	.long	0xbf5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL42
	.long	0xbec
	.byte	0
	.uleb128 0x21
	.long	.LASF75
	.byte	0x1
	.byte	0x6f
	.long	0x37
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x7c4
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.byte	0x6f
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"cb"
	.byte	0x1
	.byte	0x6f
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0x6f
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF69
	.byte	0x1
	.byte	0x75
	.long	0x438
	.long	.LLST18
	.uleb128 0x25
	.long	0x3da
	.long	.LBB22
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7e
	.long	0x7ba
	.uleb128 0x18
	.long	0x3f1
	.long	.LLST19
	.uleb128 0x18
	.long	0x3e6
	.long	.LLST20
	.uleb128 0x26
	.long	0x3a6
	.long	.LBB24
	.long	.Ldebug_ranges0+0x20
	.byte	0x2
	.byte	0x3f
	.uleb128 0x18
	.long	0x3c8
	.long	.LLST21
	.uleb128 0x18
	.long	0x3bd
	.long	.LLST22
	.uleb128 0x18
	.long	0x3b2
	.long	.LLST23
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL44
	.long	0xc42
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0x2
	.byte	0x42
	.byte	0x3
	.long	0x7f2
	.uleb128 0xe
	.long	.LASF51
	.byte	0x2
	.byte	0x42
	.long	0x3d4
	.uleb128 0xf
	.long	.LASF25
	.byte	0x2
	.byte	0x44
	.long	0x3d4
	.uleb128 0xf
	.long	.LASF26
	.byte	0x2
	.byte	0x45
	.long	0x3d4
	.byte	0
	.uleb128 0x21
	.long	.LASF77
	.byte	0x1
	.byte	0x83
	.long	0x37
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x882
	.uleb128 0x14
	.long	.LASF29
	.byte	0x1
	.byte	0x83
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.string	"cb"
	.byte	0x1
	.byte	0x83
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF52
	.byte	0x1
	.byte	0x83
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF69
	.byte	0x1
	.byte	0x85
	.long	0x438
	.long	.LLST24
	.uleb128 0x25
	.long	0x7c4
	.long	.LBB36
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x93
	.long	0x878
	.uleb128 0x18
	.long	0x7d0
	.long	.LLST25
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x1a
	.long	0x7db
	.long	.LLST26
	.uleb128 0x1a
	.long	0x7e6
	.long	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL57
	.long	0xc4e
	.byte	0
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.byte	0xb6
	.long	0x37
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e5
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.byte	0xb6
	.long	0x5f4
	.long	.LLST28
	.uleb128 0x13
	.string	"fun"
	.byte	0x1
	.byte	0xb6
	.long	0x1d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"arg"
	.byte	0x1
	.byte	0xb6
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LVL63
	.long	0x526
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF79
	.byte	0x1
	.byte	0xbb
	.long	0x37
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x948
	.uleb128 0x1f
	.long	.LASF58
	.byte	0x1
	.byte	0xbb
	.long	0x5f4
	.long	.LLST29
	.uleb128 0x13
	.string	"fun"
	.byte	0x1
	.byte	0xbb
	.long	0x1d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.string	"arg"
	.byte	0x1
	.byte	0xbb
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	.LVL66
	.long	0x526
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF80
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.long	0x960
	.uleb128 0xe
	.long	.LASF81
	.byte	0x1
	.byte	0xcf
	.long	0x960
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x39b
	.uleb128 0x12
	.long	.LASF83
	.byte	0x1
	.byte	0xd6
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x9da
	.uleb128 0x13
	.string	"arg"
	.byte	0x1
	.byte	0xd6
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF81
	.byte	0x1
	.byte	0xd8
	.long	0x960
	.long	.LLST30
	.uleb128 0x25
	.long	0x948
	.long	.LBB42
	.long	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xe0
	.long	0x9d0
	.uleb128 0x18
	.long	0x954
	.long	.LLST31
	.uleb128 0x1b
	.long	.LVL72
	.long	0xc5a
	.uleb128 0x1b
	.long	.LVL73
	.long	0xc4e
	.uleb128 0x23
	.long	.LVL75
	.long	0xc4e
	.byte	0
	.uleb128 0x1b
	.long	.LVL70
	.long	0x8e5
	.byte	0
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.byte	0xc0
	.long	0x37
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xa2d
	.uleb128 0x20
	.string	"fun"
	.byte	0x1
	.byte	0xc0
	.long	0x1d7
	.long	.LLST32
	.uleb128 0x13
	.string	"arg"
	.byte	0x1
	.byte	0xc0
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LVL78
	.long	0x526
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF86
	.byte	0x1
	.byte	0xe3
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xaca
	.uleb128 0x13
	.string	"w"
	.byte	0x1
	.byte	0xe3
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF59
	.byte	0x1
	.byte	0xe3
	.long	0x1d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0xe3
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF81
	.byte	0x1
	.byte	0xe5
	.long	0x960
	.long	.LLST33
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xf3
	.long	0x37
	.long	.LLST34
	.uleb128 0x25
	.long	0x948
	.long	.LBB48
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xf8
	.long	0xac0
	.uleb128 0x18
	.long	0x954
	.long	.LLST35
	.uleb128 0x1b
	.long	.LVL83
	.long	0xc5a
	.uleb128 0x1b
	.long	.LVL84
	.long	0xc4e
	.uleb128 0x23
	.long	.LVL86
	.long	0xc4e
	.byte	0
	.uleb128 0x1b
	.long	.LVL81
	.long	0xc66
	.byte	0
	.uleb128 0x21
	.long	.LASF87
	.byte	0x1
	.byte	0xfb
	.long	0xa5
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0xba3
	.uleb128 0x13
	.string	"ms"
	.byte	0x1
	.byte	0xfb
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x14
	.long	.LASF59
	.byte	0x1
	.byte	0xfb
	.long	0x1d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0xfb
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.byte	0xfc
	.long	0x1d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.byte	0xfc
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0xfe
	.long	0x37
	.long	.LLST36
	.uleb128 0x2a
	.long	.LASF57
	.byte	0x1
	.value	0x104
	.long	0x395
	.long	.LLST37
	.uleb128 0x2a
	.long	.LASF81
	.byte	0x1
	.value	0x105
	.long	0x960
	.long	.LLST38
	.uleb128 0x2b
	.long	.LASF112
	.byte	0x1
	.value	0x11c
	.long	.LDL1
	.uleb128 0x1b
	.long	.LVL89
	.long	0xc42
	.uleb128 0x1b
	.long	.LVL91
	.long	0xc42
	.uleb128 0x1b
	.long	.LVL94
	.long	0xc4e
	.uleb128 0x1b
	.long	.LVL95
	.long	0xc4e
	.uleb128 0x1b
	.long	.LVL97
	.long	0xc72
	.uleb128 0x1b
	.long	.LVL98
	.long	0xc7d
	.uleb128 0x1b
	.long	.LVL99
	.long	0xc89
	.byte	0
	.uleb128 0x15
	.long	.LASF88
	.byte	0x1
	.byte	0x17
	.long	0x320
	.uleb128 0x5
	.byte	0x3
	.long	local_event
	.uleb128 0x15
	.long	.LASF89
	.byte	0x1
	.byte	0x1b
	.long	0x155
	.uleb128 0x5
	.byte	0x3
	.long	g_local_event_list
	.uleb128 0x2c
	.long	.LASF90
	.byte	0xa
	.byte	0x17
	.long	0x30
	.uleb128 0x2c
	.long	.LASF91
	.byte	0x1
	.byte	0x21
	.long	0xbdb
	.uleb128 0xa
	.byte	0x4
	.long	0x2d2
	.uleb128 0x2d
	.long	.LASF92
	.long	.LASF92
	.byte	0xb
	.byte	0x37
	.uleb128 0x2e
	.long	.LASF113
	.long	.LASF113
	.uleb128 0x2d
	.long	.LASF93
	.long	.LASF93
	.byte	0xb
	.byte	0x4d
	.uleb128 0x2d
	.long	.LASF94
	.long	.LASF94
	.byte	0x9
	.byte	0x1c
	.uleb128 0x2d
	.long	.LASF95
	.long	.LASF95
	.byte	0xb
	.byte	0x23
	.uleb128 0x2d
	.long	.LASF96
	.long	.LASF96
	.byte	0x8
	.byte	0x7f
	.uleb128 0x2d
	.long	.LASF97
	.long	.LASF97
	.byte	0x9
	.byte	0x19
	.uleb128 0x2d
	.long	.LASF98
	.long	.LASF98
	.byte	0x8
	.byte	0x88
	.uleb128 0x2d
	.long	.LASF99
	.long	.LASF99
	.byte	0xb
	.byte	0x2c
	.uleb128 0x2f
	.long	.LASF100
	.long	.LASF100
	.byte	0x7
	.value	0x1e8
	.uleb128 0x2f
	.long	.LASF101
	.long	.LASF101
	.byte	0x7
	.value	0x200
	.uleb128 0x2f
	.long	.LASF102
	.long	.LASF102
	.byte	0x7
	.value	0x1b9
	.uleb128 0x2f
	.long	.LASF103
	.long	.LASF103
	.byte	0x7
	.value	0x1d5
	.uleb128 0x2d
	.long	.LASF104
	.long	.LASF104
	.byte	0x8
	.byte	0xb9
	.uleb128 0x2f
	.long	.LASF105
	.long	.LASF105
	.byte	0x7
	.value	0x1b2
	.uleb128 0x2f
	.long	.LASF106
	.long	.LASF106
	.byte	0x7
	.value	0x1cc
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.long	.LVL1
	.long	.LVL4-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL8
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4-1
	.value	0x2
	.byte	0x91
	.sleb128 -28
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL4-1
	.value	0x2
	.byte	0x91
	.sleb128 -24
	.long	0
	.long	0
.LLST5:
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL25
	.value	0x1
	.byte	0x56
	.long	.LVL25
	.long	.LFE30
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL13-1
	.value	0x1
	.byte	0x52
	.long	.LVL13-1
	.long	.LFE30
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL10
	.long	.LVL12
	.value	0x1
	.byte	0x51
	.long	.LVL12
	.long	.LVL23
	.value	0x1
	.byte	0x53
	.long	.LVL23
	.long	.LFE30
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL22-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL15
	.long	.LVL20
	.value	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.long	.LVL20
	.long	.LVL22-1
	.value	0x1
	.byte	0x51
	.long	.LVL22-1
	.long	.LVL22
	.value	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL15
	.long	.LVL22-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL16
	.long	.LVL17
	.value	0xb
	.byte	0x72
	.sleb128 0
	.byte	0xb
	.value	0x8000
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.value	0xb
	.byte	0x71
	.sleb128 0
	.byte	0xb
	.value	0x8000
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0xd
	.byte	0x91
	.sleb128 -48
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.value	0x8000
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL21
	.long	.LVL22-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST13:
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL36
	.long	.LVL39
	.value	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.long	.LVL39
	.long	.LVL41-1
	.value	0x1
	.byte	0x52
	.long	.LVL41-1
	.long	.LVL41
	.value	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL36
	.long	.LVL41-1
	.value	0x5
	.byte	0x3
	.long	local_event+4
	.long	0
	.long	0
.LLST16:
	.long	.LVL36
	.long	.LVL37
	.value	0xb
	.byte	0x72
	.sleb128 0
	.byte	0xb
	.value	0x8000
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.value	0xb
	.byte	0x70
	.sleb128 0
	.byte	0xb
	.value	0x8000
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	.LVL38
	.long	.LFE27
	.value	0xd
	.byte	0x91
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.value	0x8000
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL40
	.long	.LVL41-1
	.value	0x1
	.byte	0x50
	.long	.LVL41-1
	.long	.LVL41
	.value	0x18
	.byte	0x9
	.byte	0xff
	.byte	0x30
	.byte	0x91
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.value	0x8000
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x23
	.uleb128 0x102
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL45
	.long	.LVL46
	.value	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL50
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST19:
	.long	.LVL47
	.long	.LVL50
	.value	0x6
	.byte	0x3
	.long	g_local_event_list
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL47
	.long	.LVL50
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST21:
	.long	.LVL48
	.long	.LVL50
	.value	0x6
	.byte	0x3
	.long	g_local_event_list
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LVL50
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	0
	.long	0
.LLST23:
	.long	.LVL48
	.long	.LVL50
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST24:
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL52
	.long	.LVL57-1
	.value	0x1
	.byte	0x50
	.long	.LVL58
	.long	.LVL60
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL53
	.long	.LVL56
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL54
	.long	.LVL56
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST27:
	.long	.LVL55
	.long	.LVL56
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST28:
	.long	.LVL61
	.long	.LVL62
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL62
	.long	.LVL63-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL64
	.long	.LVL65
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL65
	.long	.LVL66-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST30:
	.long	.LVL68
	.long	.LVL74
	.value	0x1
	.byte	0x53
	.long	.LVL74
	.long	.LVL75-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST31:
	.long	.LVL71
	.long	.LVL74
	.value	0x1
	.byte	0x53
	.long	.LVL74
	.long	.LVL75-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST32:
	.long	.LVL76
	.long	.LVL77
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL77
	.long	.LVL78-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST33:
	.long	.LVL80
	.long	.LVL85
	.value	0x1
	.byte	0x53
	.long	.LVL85
	.long	.LVL86-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL86
	.long	.LVL87
	.value	0x1
	.byte	0x53
	.long	.LVL87
	.long	.LFE36
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST34:
	.long	.LVL81
	.long	.LVL83-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST35:
	.long	.LVL82
	.long	.LVL85
	.value	0x1
	.byte	0x53
	.long	.LVL85
	.long	.LVL86-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST36:
	.long	.LVL98
	.long	.LVL99-1
	.value	0x1
	.byte	0x50
	.long	.LVL99
	.long	.LVL100
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST37:
	.long	.LVL90
	.long	.LVL91-1
	.value	0x1
	.byte	0x50
	.long	.LVL91-1
	.long	.LVL100
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST38:
	.long	.LVL92
	.long	.LVL93
	.value	0x1
	.byte	0x50
	.long	.LVL93
	.long	.LVL96
	.value	0x1
	.byte	0x53
	.long	.LVL96
	.long	.LVL97-1
	.value	0x1
	.byte	0x50
	.long	.LVL97-1
	.long	.LVL100
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB30
	.long	.LFE30-.LFB30
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
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB22
	.long	.LBE22
	.long	.LBB32
	.long	.LBE32
	.long	.LBB33
	.long	.LBE33
	.long	0
	.long	0
	.long	.LBB24
	.long	.LBE24
	.long	.LBB28
	.long	.LBE28
	.long	.LBB29
	.long	.LBE29
	.long	0
	.long	0
	.long	.LBB36
	.long	.LBE36
	.long	.LBB39
	.long	.LBE39
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB45
	.long	.LBE45
	.long	0
	.long	0
	.long	.LBB48
	.long	.LBE48
	.long	.LBB51
	.long	.LBE51
	.long	0
	.long	0
	.long	.LFB24
	.long	.LFE24
	.long	.LFB30
	.long	.LFE30
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
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB35
	.long	.LFE35
	.long	.LFB33
	.long	.LFE33
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF52:
	.string	"priv"
.LASF106:
	.string	"aos_work_sched"
.LASF93:
	.string	"aos_ioctl"
.LASF57:
	.string	"work"
.LASF100:
	.string	"aos_malloc"
.LASF35:
	.string	"aos_call_t"
.LASF75:
	.string	"aos_register_event_filter"
.LASF111:
	.string	"_schedule_call"
.LASF91:
	.string	"g_main_ctx"
.LASF49:
	.string	"terminate"
.LASF78:
	.string	"aos_loop_schedule_urgent_call"
.LASF56:
	.string	"work_para"
.LASF7:
	.string	"short int"
.LASF4:
	.string	"size_t"
.LASF80:
	.string	"free_wpar"
.LASF14:
	.string	"sizetype"
.LASF46:
	.string	"max_sock"
.LASF58:
	.string	"loop"
.LASF2:
	.string	"long double"
.LASF47:
	.string	"reader_count"
.LASF68:
	.string	"event"
.LASF8:
	.string	"__uint16_t"
.LASF70:
	.string	"handler"
.LASF105:
	.string	"aos_work_init"
.LASF96:
	.string	"aos_poll_read_fd"
.LASF31:
	.string	"value"
.LASF79:
	.string	"aos_loop_schedule_call"
.LASF101:
	.string	"aos_free"
.LASF36:
	.string	"aos_poll_call_t"
.LASF16:
	.string	"uint8_t"
.LASF61:
	.string	"fini_cb"
.LASF113:
	.string	"__stack_chk_fail"
.LASF82:
	.string	"event_read_cb"
.LASF50:
	.string	"yloop_ctx_t"
.LASF34:
	.string	"aos_event_cb"
.LASF60:
	.string	"arg1"
.LASF62:
	.string	"arg2"
.LASF64:
	.string	"__dlist_add"
.LASF41:
	.string	"yloop_sock_t"
.LASF1:
	.string	"long long int"
.LASF42:
	.string	"timeouts"
.LASF65:
	.string	"dlist_add_tail"
.LASF104:
	.string	"aos_current_loop"
.LASF15:
	.string	"char"
.LASF10:
	.string	"long int"
.LASF73:
	.string	"aos_event_service_init"
.LASF86:
	.string	"aos_cancel_work"
.LASF59:
	.string	"action"
.LASF89:
	.string	"g_local_event_list"
.LASF81:
	.string	"wpar"
.LASF92:
	.string	"aos_read"
.LASF90:
	.string	"aos_log_level"
.LASF20:
	.string	"revents"
.LASF51:
	.string	"node"
.LASF67:
	.string	"handle_events"
.LASF66:
	.string	"queue"
.LASF40:
	.string	"private_data"
.LASF110:
	.string	"input_add_event"
.LASF99:
	.string	"aos_close"
.LASF95:
	.string	"aos_open"
.LASF112:
	.string	"err_out"
.LASF6:
	.string	"unsigned char"
.LASF55:
	.string	"handle"
.LASF27:
	.string	"dlist_t"
.LASF97:
	.string	"aos_loop_set_eventfd"
.LASF3:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF18:
	.string	"uint32_t"
.LASF24:
	.string	"dlist_s"
.LASF0:
	.string	"unsigned int"
.LASF103:
	.string	"aos_work_cancel"
.LASF17:
	.string	"uint16_t"
.LASF48:
	.string	"pending_terminate"
.LASF30:
	.string	"code"
.LASF98:
	.string	"aos_cancel_poll_read_fd"
.LASF37:
	.string	"aos_loop_t"
.LASF23:
	.string	"pollfd"
.LASF9:
	.string	"short unsigned int"
.LASF71:
	.string	"param"
.LASF45:
	.string	"eventfd"
.LASF54:
	.string	"event_list_node_t"
.LASF63:
	.string	"work_par_t"
.LASF108:
	.string	"src/local_event.c"
.LASF29:
	.string	"type"
.LASF21:
	.string	"aos_hdl_t"
.LASF84:
	.string	"aos_schedule_call"
.LASF38:
	.string	"_Bool"
.LASF87:
	.string	"aos_loop_schedule_work"
.LASF83:
	.string	"run_my_work"
.LASF69:
	.string	"event_node"
.LASF33:
	.string	"input_event_t"
.LASF43:
	.string	"pollfds"
.LASF76:
	.string	"dlist_del"
.LASF94:
	.string	"aos_loop_get_eventfd"
.LASF74:
	.string	"aos_post_event"
.LASF12:
	.string	"long unsigned int"
.LASF88:
	.string	"local_event"
.LASF11:
	.string	"__uint32_t"
.LASF72:
	.string	"urgent"
.LASF107:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF22:
	.string	"aos_work_t"
.LASF44:
	.string	"readers"
.LASF85:
	.string	"aos_event_service_deinit"
.LASF102:
	.string	"aos_work_destroy"
.LASF19:
	.string	"events"
.LASF28:
	.string	"time"
.LASF109:
	.string	"/home/stone/Documents/pca"
.LASF39:
	.string	"sock"
.LASF77:
	.string	"aos_unregister_event_filter"
.LASF53:
	.string	"type_filter"
.LASF25:
	.string	"prev"
.LASF32:
	.string	"extra"
.LASF26:
	.string	"next"
.LASF5:
	.string	"__uint8_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
