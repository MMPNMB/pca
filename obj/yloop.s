	.file	"yloop.c"
	.text
.Ltext0:
	.section	.text.unlikely.get_context,"ax",@progbits
.LCOLDB0:
	.section	.text.get_context,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.get_context
.Ltext_cold0:
	.section	.text.get_context
	.type	get_context, @function
get_context:
.LFB35:
	.file 1 "kernel/yloop/yloop.c"
	.loc 1 41 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
.LBB34:
.LBB35:
	.loc 1 37 0
	pushl	g_loop_key
	call	aos_task_getspecific
.LVL0:
.LBE35:
.LBE34:
	.loc 1 43 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L2
.LVL1:
.LBB36:
.LBB37:
.LBB38:
	.loc 1 32 0
	pushl	%eax
	pushl	%eax
	pushl	g_main_ctx
	pushl	g_loop_key
	call	aos_task_setspecific
.LVL2:
.LBE38:
.LBE37:
	.loc 1 45 0
	movl	g_main_ctx, %eax
	addl	$16, %esp
.L2:
.LBE36:
	.loc 1 48 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	get_context, .-get_context
	.section	.text.unlikely.get_context
.LCOLDE0:
	.section	.text.get_context
.LHOTE0:
	.section	.text.unlikely.aos_loop_set_eventfd,"ax",@progbits
.LCOLDB1:
	.section	.text.aos_loop_set_eventfd,"ax",@progbits
.LHOTB1:
	.globl	aos_loop_set_eventfd
	.type	aos_loop_set_eventfd, @function
aos_loop_set_eventfd:
.LFB36:
	.loc 1 51 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 52 0
	call	get_context
.LVL4:
	.loc 1 53 0
	movl	8(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 54 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	aos_loop_set_eventfd, .-aos_loop_set_eventfd
	.section	.text.unlikely.aos_loop_set_eventfd
.LCOLDE1:
	.section	.text.aos_loop_set_eventfd
.LHOTE1:
	.section	.text.unlikely.aos_loop_get_eventfd,"ax",@progbits
.LCOLDB2:
	.section	.text.aos_loop_get_eventfd,"ax",@progbits
.LHOTB2:
	.globl	aos_loop_get_eventfd
	.type	aos_loop_get_eventfd, @function
aos_loop_get_eventfd:
.LFB37:
	.loc 1 57 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 57 0
	movl	8(%ebp), %eax
	.loc 1 58 0
	testl	%eax, %eax
	jne	.L8
	.loc 1 58 0 is_stmt 0 discriminator 1
	call	get_context
.LVL6:
.L8:
	.loc 1 59 0 is_stmt 1 discriminator 4
	movl	16(%eax), %eax
.LVL7:
	.loc 1 60 0 discriminator 4
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	aos_loop_get_eventfd, .-aos_loop_get_eventfd
	.section	.text.unlikely.aos_loop_get_eventfd
.LCOLDE2:
	.section	.text.aos_loop_get_eventfd
.LHOTE2:
	.section	.text.unlikely.aos_current_loop,"ax",@progbits
.LCOLDB3:
	.section	.text.aos_current_loop,"ax",@progbits
.LHOTB3:
	.globl	aos_current_loop
	.type	aos_current_loop, @function
aos_current_loop:
.LFB38:
	.loc 1 63 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 65 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 64 0
	jmp	get_context
.LVL8:
	.cfi_endproc
.LFE38:
	.size	aos_current_loop, .-aos_current_loop
	.section	.text.unlikely.aos_current_loop
.LCOLDE3:
	.section	.text.aos_current_loop
.LHOTE3:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"yloop already inited"
.LC5:
	.string	"[%06d]<E> "
.LC6:
	.string	"\r\n"
	.section	.text.unlikely.aos_loop_init,"ax",@progbits
.LCOLDB7:
	.section	.text.aos_loop_init,"ax",@progbits
.LHOTB7:
	.globl	aos_loop_init
	.type	aos_loop_init, @function
aos_loop_init:
.LFB39:
	.loc 1 68 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
.LBB47:
.LBB48:
	.loc 1 37 0
	pushl	g_loop_key
	call	aos_task_getspecific
.LVL9:
.LBE48:
.LBE47:
	.loc 1 71 0
	addl	$16, %esp
	cmpl	$0, g_main_ctx
	jne	.L13
	.loc 1 72 0
	subl	$12, %esp
	pushl	$g_loop_key
	call	aos_task_key_create
.LVL10:
	addl	$16, %esp
	jmp	.L14
.L13:
	.loc 1 73 0
	testl	%eax, %eax
	je	.L14
	.loc 1 74 0
	testb	$2, aos_log_level
	movl	%eax, %ebx
	je	.L15
	.loc 1 74 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL11:
	pushl	%edx
	pushl	$.LC4
	pushl	%eax
	pushl	$.LC5
	call	csp_printf
.LVL12:
	movl	$.LC4, (%esp)
	call	csp_printf
.LVL13:
	movl	$.LC6, (%esp)
	call	csp_printf
.LVL14:
	jmp	.L23
.L14:
	.loc 1 78 0 is_stmt 1
	subl	$12, %esp
	pushl	$24
	call	aos_zalloc
.LVL15:
	.loc 1 79 0
	addl	$16, %esp
	cmpl	$0, g_main_ctx
	.loc 1 78 0
	movl	%eax, %ebx
.LVL16:
	.loc 1 79 0
	jne	.L16
	.loc 1 80 0
	movl	%eax, g_main_ctx
.L16:
.LVL17:
.LBB49:
.LBB50:
	.file 2 "./include/aos/list.h"
	.loc 2 77 0
	movl	%ebx, (%ebx)
	movl	%ebx, 4(%ebx)
.LVL18:
.LVL19:
.LBE50:
.LBE49:
	.loc 1 84 0
	movl	$-1, 16(%ebx)
.LVL20:
.LBB51:
.LBB52:
	.loc 1 32 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	g_loop_key
	call	aos_task_setspecific
.LVL21:
.LBE52:
.LBE51:
	.loc 1 87 0
	call	aos_event_service_init
.LVL22:
.L23:
	.loc 1 89 0
	addl	$16, %esp
.L15:
	.loc 1 90 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE39:
	.size	aos_loop_init, .-aos_loop_init
	.section	.text.unlikely.aos_loop_init
.LCOLDE7:
	.section	.text.aos_loop_init
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"out of memory"
	.section	.text.unlikely.aos_poll_read_fd,"ax",@progbits
.LCOLDB9:
	.section	.text.aos_poll_read_fd,"ax",@progbits
.LHOTB9:
	.globl	aos_poll_read_fd
	.type	aos_poll_read_fd, @function
aos_poll_read_fd:
.LFB40:
	.loc 1 93 0
	.cfi_startproc
.LVL23:
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
	.loc 1 94 0
	call	get_context
.LVL24:
	.loc 1 95 0
	cmpl	$0, 8(%ebp)
	.loc 1 94 0
	movl	%eax, %ebx
.LVL25:
	.loc 1 96 0
	movl	$-22, %eax
.LVL26:
	.loc 1 95 0
	js	.L25
.LVL27:
	.loc 1 103 0
	movzbl	21(%ebx), %eax
	subl	$12, %esp
	leal	1(%eax), %esi
.LVL28:
	movl	%eax, -36(%ebp)
	imull	$12, %esi, %eax
	.loc 1 104 0
	sall	$3, %esi
.LVL29:
	.loc 1 103 0
	pushl	%eax
.LVL30:
	movl	%eax, -40(%ebp)
	call	aos_malloc
.LVL31:
	.loc 1 104 0
	movl	%esi, (%esp)
	.loc 1 103 0
	movl	%eax, -28(%ebp)
.LVL32:
	.loc 1 104 0
	call	aos_malloc
.LVL33:
	.loc 1 106 0
	addl	$16, %esp
	cmpl	$0, -28(%ebp)
	.loc 1 104 0
	movl	%eax, -32(%ebp)
.LVL34:
	.loc 1 106 0
	je	.L31
	testl	%eax, %eax
	jne	.L26
.L31:
	.loc 1 107 0
	testb	$2, aos_log_level
	je	.L28
	.loc 1 107 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL35:
	pushl	%esi
	pushl	$.LC8
	pushl	%eax
	pushl	$.LC5
	call	csp_printf
.LVL36:
	movl	$.LC8, (%esp)
	call	csp_printf
.LVL37:
	movl	$.LC6, (%esp)
	call	csp_printf
.LVL38:
	addl	$16, %esp
.L28:
	.loc 1 108 0 is_stmt 1
	subl	$12, %esp
	pushl	-28(%ebp)
	call	aos_free
.LVL39:
	.loc 1 109 0
	popl	%ebx
.LVL40:
	pushl	-32(%ebp)
	call	aos_free
.LVL41:
	.loc 1 110 0
	addl	$16, %esp
	movl	$-12, %eax
	jmp	.L25
.LVL42:
.L26:
.LVL43:
	.loc 1 113 0
	pushl	%eax
	pushl	$0
	pushl	$3
	pushl	8(%ebp)
	call	aos_fcntl
.LVL44:
	.loc 1 114 0
	addl	$12, %esp
	orb	$64, %ah
.LVL45:
	pushl	%eax
	pushl	$4
	pushl	8(%ebp)
	call	aos_fcntl
.LVL46:
	.loc 1 118 0
	imull	$12, -36(%ebp), %ecx
	.loc 1 116 0
	incb	21(%ebx)
	.loc 1 118 0
	movl	12(%ebx), %esi
	movl	-28(%ebp), %edi
	rep movsb
	.loc 1 119 0
	popl	%edx
	pushl	12(%ebx)
	call	aos_free
.LVL47:
	.loc 1 120 0
	movl	-28(%ebp), %eax
	.loc 1 122 0
	movl	8(%ebx), %esi
	movl	-32(%ebp), %edi
	.loc 1 120 0
	movl	%eax, 12(%ebx)
	.loc 1 122 0
	movl	-36(%ebp), %eax
	leal	0(,%eax,8), %ecx
	rep movsb
	.loc 1 123 0
	popl	%ecx
	pushl	8(%ebx)
	call	aos_free
.LVL48:
	.loc 1 124 0
	movl	-32(%ebp), %eax
	.loc 1 126 0
	movl	-40(%ebp), %edi
	.loc 1 131 0
	addl	$16, %esp
	.loc 1 128 0
	movl	16(%ebp), %edx
	.loc 1 127 0
	movl	8(%ebp), %ecx
	.loc 1 124 0
	movl	%eax, 8(%ebx)
	.loc 1 126 0
	movl	-28(%ebp), %eax
	leal	-12(%eax,%edi), %eax
.LVL49:
	.loc 1 128 0
	movl	%edx, 4(%eax)
	.loc 1 129 0
	movl	12(%ebp), %edx
	.loc 1 127 0
	movl	%ecx, (%eax)
	.loc 1 129 0
	movl	%edx, 8(%eax)
	.loc 1 131 0
	movzbl	20(%ebx), %edx
	.loc 1 135 0
	xorl	%eax, %eax
.LVL50:
	.loc 1 131 0
	cmpl	%edx, %ecx
	jle	.L25
	.loc 1 132 0
	movb	8(%ebp), %dl
	movb	%dl, 20(%ebx)
.LVL51:
.L25:
	.loc 1 136 0
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
	.size	aos_poll_read_fd, .-aos_poll_read_fd
	.section	.text.unlikely.aos_poll_read_fd
.LCOLDE9:
	.section	.text.aos_poll_read_fd
.LHOTE9:
	.section	.text.unlikely.aos_cancel_poll_read_fd,"ax",@progbits
.LCOLDB10:
	.section	.text.aos_cancel_poll_read_fd,"ax",@progbits
.LHOTB10:
	.globl	aos_cancel_poll_read_fd
	.type	aos_cancel_poll_read_fd, @function
aos_cancel_poll_read_fd:
.LFB41:
	.loc 1 139 0
	.cfi_startproc
.LVL52:
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
	.loc 1 140 0
	call	get_context
.LVL53:
	.loc 1 141 0
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	.L36
	movl	%eax, %ebx
	.loc 1 141 0 discriminator 1
	movzbl	21(%eax), %eax
.LVL54:
	xorl	%ecx, %ecx
	testb	%al, %al
	je	.L36
.L38:
.LVL55:
	.loc 1 146 0 discriminator 1
	cmpl	%eax, %ecx
	jge	.L42
	.loc 1 147 0
	imull	$12, %ecx, %esi
	movl	8(%ebp), %edi
	cmpl	%edi, (%edx,%esi)
	jne	.L39
.L42:
	.loc 1 152 0
	cmpl	%eax, %ecx
	jne	.L50
	jmp	.L36
.L39:
	.loc 1 146 0 discriminator 2
	incl	%ecx
.LVL56:
	jmp	.L38
.L50:
	.loc 1 156 0
	leal	-1(%eax), %esi
	cmpl	%esi, %ecx
	je	.L43
	.loc 1 157 0
	leal	1(%ecx), %esi
	subl	%ecx, %eax
	pushl	%edi
	decl	%eax
	imull	$12, %esi, %esi
	imull	$12, %eax, %eax
	pushl	%eax
	leal	(%edx,%esi), %eax
	pushl	%eax
	leal	-12(%edx,%esi), %eax
	pushl	%eax
	call	memmove
.LVL57:
	addl	$16, %esp
.L43:
	.loc 1 162 0
	decb	21(%ebx)
.LVL58:
.L36:
	.loc 1 163 0
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
	.size	aos_cancel_poll_read_fd, .-aos_cancel_poll_read_fd
	.section	.text.unlikely.aos_cancel_poll_read_fd
.LCOLDE10:
	.section	.text.aos_cancel_poll_read_fd
.LHOTE10:
	.section	.text.unlikely.aos_post_delayed_action,"ax",@progbits
.LCOLDB11:
	.section	.text.aos_post_delayed_action,"ax",@progbits
.LHOTB11:
	.globl	aos_post_delayed_action
	.type	aos_post_delayed_action, @function
aos_post_delayed_action:
.LFB42:
	.loc 1 166 0
	.cfi_startproc
.LVL59:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 168 0
	movl	$-22, %eax
	.loc 1 166 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 167 0
	cmpl	$0, 12(%ebp)
	je	.L53
	.loc 1 171 0
	call	get_context
.LVL60:
	.loc 1 172 0
	subl	$12, %esp
	.loc 1 171 0
	movl	%eax, %edi
.LVL61:
	.loc 1 172 0
	pushl	$28
	call	aos_malloc
.LVL62:
	movl	%eax, %esi
.LVL63:
	.loc 1 173 0
	addl	$16, %esp
	.loc 1 174 0
	movl	$-12, %eax
.LVL64:
	.loc 1 173 0
	testl	%esi, %esi
	je	.L53
	.loc 1 177 0
	call	aos_now_ms
.LVL65:
	movl	8(%ebp), %ecx
	movl	%ecx, %ebx
	sarl	$31, %ebx
	addl	%ecx, %eax
	.loc 1 178 0
	movl	16(%ebp), %ecx
	.loc 1 177 0
	adcl	%ebx, %edx
	.loc 1 179 0
	movl	12(%ebp), %ebx
	.loc 1 177 0
	movl	%eax, 8(%esi)
	movl	%edx, 12(%esi)
	.loc 1 178 0
	movl	%ecx, 16(%esi)
	.loc 1 184 0
	movl	4(%edi), %ecx
.LVL66:
	.loc 1 179 0
	movl	%ebx, 20(%esi)
	.loc 1 180 0
	movl	8(%ebp), %ebx
	movl	%ebx, 24(%esi)
.L54:
	.loc 1 184 0 discriminator 1
	cmpl	%edi, %ecx
	je	.L58
	.loc 1 185 0
	cmpl	12(%ecx), %edx
	jg	.L55
	jl	.L61
	cmpl	8(%ecx), %eax
	jnb	.L55
.L61:
	movl	%ecx, %edi
.LVL67:
.L58:
.LBB53:
.LBB54:
	.loc 2 63 0
	movl	(%edi), %eax
.LVL68:
.LBB55:
.LBB56:
	.loc 2 38 0
	movl	%edi, 4(%esi)
	.loc 2 39 0
	movl	%eax, (%esi)
	.loc 2 41 0
	movl	%esi, 4(%eax)
.LBE56:
.LBE55:
.LBE54:
.LBE53:
	.loc 1 192 0
	xorl	%eax, %eax
.LVL69:
.LBB60:
.LBB59:
.LBB58:
.LBB57:
	.loc 2 42 0
	movl	%esi, (%edi)
.LVL70:
.LBE57:
.LBE58:
.LBE59:
.LBE60:
	.loc 1 192 0
	jmp	.L53
.LVL71:
.L55:
	.loc 1 184 0 discriminator 2
	movl	4(%ecx), %ecx
.LVL72:
	jmp	.L54
.LVL73:
.L53:
	.loc 1 193 0
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
	.size	aos_post_delayed_action, .-aos_post_delayed_action
	.section	.text.unlikely.aos_post_delayed_action
.LCOLDE11:
	.section	.text.aos_post_delayed_action
.LHOTE11:
	.section	.text.unlikely.aos_cancel_delayed_action,"ax",@progbits
.LCOLDB12:
	.section	.text.aos_cancel_delayed_action,"ax",@progbits
.LHOTB12:
	.globl	aos_cancel_delayed_action
	.type	aos_cancel_delayed_action, @function
aos_cancel_delayed_action:
.LFB43:
	.loc 1 196 0
	.cfi_startproc
.LVL74:
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
	.loc 1 196 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	.loc 1 197 0
	call	get_context
.LVL75:
	.loc 1 200 0
	movl	4(%eax), %edx
.LVL76:
.L64:
	.loc 1 200 0 is_stmt 0 discriminator 1
	cmpl	%eax, %edx
	je	.L72
	.loc 1 201 0 is_stmt 1
	cmpl	$-1, %ebx
	je	.L65
	.loc 1 201 0 is_stmt 0 discriminator 1
	cmpl	24(%edx), %ebx
	jne	.L66
.L65:
	.loc 1 205 0 is_stmt 1
	cmpl	%esi, 20(%edx)
	jne	.L66
	.loc 1 209 0
	cmpl	%edi, 16(%edx)
	jne	.L66
.LVL77:
.LBB63:
.LBB64:
	.loc 2 68 0
	movl	(%edx), %ecx
.LVL78:
	.loc 2 69 0
	movl	4(%edx), %eax
.LVL79:
	.loc 2 71 0
	movl	%eax, 4(%ecx)
	.loc 2 72 0
	movl	%ecx, (%eax)
.LVL80:
.LBE64:
.LBE63:
	.loc 1 214 0
	movl	%edx, 8(%ebp)
	.loc 1 217 0
	addl	$12, %esp
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
	.loc 1 214 0
	jmp	aos_free
.LVL81:
.L66:
	.cfi_restore_state
	.loc 1 200 0 discriminator 2
	movl	4(%edx), %edx
.LVL82:
	jmp	.L64
.L72:
	.loc 1 217 0
	addl	$12, %esp
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
	.size	aos_cancel_delayed_action, .-aos_cancel_delayed_action
	.section	.text.unlikely.aos_cancel_delayed_action
.LCOLDE12:
	.section	.text.aos_cancel_delayed_action
.LHOTE12:
	.section	.rodata.str1.1
.LC13:
	.string	"aos_poll"
	.section	.text.unlikely.aos_loop_run,"ax",@progbits
.LCOLDB14:
	.section	.text.aos_loop_run,"ax",@progbits
.LHOTB14:
	.globl	aos_loop_run
	.type	aos_loop_run, @function
aos_loop_run:
.LFB44:
	.loc 1 220 0
	.cfi_startproc
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
	.loc 1 221 0
	call	get_context
.LVL83:
	movl	%eax, %ebx
.LVL84:
.L85:
	.loc 1 223 0
	cmpb	$0, 23(%ebx)
	jne	.L89
.LVL85:
.LBB76:
.LBB77:
	.loc 2 88 0 discriminator 1
	movl	4(%ebx), %edi
.LVL86:
.LBE77:
.LBE76:
	.loc 1 223 0 discriminator 1
	cmpl	%edi, %ebx
	je	.L103
.L90:
.LVL87:
.LBB78:
	.loc 1 226 0
	movzbl	21(%ebx), %eax
	movl	%eax, -28(%ebp)
.LVL88:
	.loc 1 225 0
	orl	$-1, %eax
.LVL89:
	.loc 1 229 0
	cmpl	%edi, %ebx
	je	.L75
.LVL90:
.LBB79:
	.loc 1 231 0
	call	aos_now_ms
.LVL91:
	.loc 1 233 0
	cmpl	12(%edi), %edx
	movl	8(%edi), %ecx
	jg	.L92
	jl	.L93
	cmpl	%ecx, %eax
	jnb	.L92
.L93:
	.loc 1 234 0
	subl	%eax, %ecx
	movl	%ecx, %eax
.LVL92:
	jmp	.L75
.LVL93:
.L92:
	.loc 1 236 0
	xorl	%eax, %eax
.LVL94:
.L75:
.LBE79:
	.loc 1 240 0
	xorl	%edx, %edx
.LVL95:
.L77:
	.loc 1 240 0 is_stmt 0 discriminator 1
	cmpl	-28(%ebp), %edx
	jge	.L104
	.loc 1 241 0 is_stmt 1 discriminator 3
	movl	8(%ebx), %ecx
	leal	(%ecx,%edx,8), %edi
	imull	$12, %edx, %ecx
	addl	12(%ebx), %ecx
	.loc 1 240 0 discriminator 3
	incl	%edx
.LVL96:
	.loc 1 241 0 discriminator 3
	movl	(%ecx), %ecx
	.loc 1 242 0 discriminator 3
	movw	$1, 4(%edi)
	.loc 1 241 0 discriminator 3
	movl	%ecx, (%edi)
	jmp	.L77
.L104:
	.loc 1 245 0
	pushl	%esi
	pushl	%eax
	pushl	-28(%ebp)
	pushl	8(%ebx)
	call	aos_poll
.LVL97:
	.loc 1 247 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 245 0
	movl	%eax, %edi
.LVL98:
	.loc 1 247 0
	jns	.L79
	.loc 1 247 0 discriminator 1
	call	__errno
.LVL99:
	.loc 1 247 0 discriminator 1
	cmpl	$4, (%eax)
	je	.L79
	.loc 1 248 0
	testb	$2, aos_log_level
	je	.L73
	.loc 1 248 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL100:
	pushl	%ecx
	pushl	$.LC13
	pushl	%eax
	pushl	$.LC5
	call	csp_printf
.LVL101:
	movl	$.LC13, (%esp)
	call	csp_printf
.LVL102:
	movl	$.LC6, (%esp)
	call	csp_printf
.LVL103:
	addl	$16, %esp
	jmp	.L73
.L79:
.LVL104:
.LBB80:
.LBB81:
	.loc 2 88 0 is_stmt 1
	movl	4(%ebx), %esi
.LVL105:
.LBE81:
.LBE80:
	.loc 1 253 0
	cmpl	%esi, %ebx
	je	.L82
.LVL106:
.LBB82:
	.loc 1 255 0
	call	aos_now_ms
.LVL107:
	.loc 1 257 0
	cmpl	12(%esi), %edx
	jl	.L82
	jg	.L94
	cmpl	8(%esi), %eax
	jb	.L82
.L94:
.LVL108:
.LBB83:
.LBB84:
	.loc 2 68 0
	movl	(%esi), %edx
.LVL109:
	.loc 2 69 0
	movl	4(%esi), %eax
.LVL110:
.LBE84:
.LBE83:
	.loc 1 259 0
	subl	$12, %esp
.LBB86:
.LBB85:
	.loc 2 71 0
	movl	%eax, 4(%edx)
	.loc 2 72 0
	movl	%edx, (%eax)
.LVL111:
.LBE85:
.LBE86:
	.loc 1 259 0
	pushl	16(%esi)
	call	*20(%esi)
.LVL112:
	.loc 1 260 0
	movl	%esi, (%esp)
	call	aos_free
.LVL113:
	addl	$16, %esp
.LVL114:
.L82:
.LBE82:
	.loc 1 264 0
	testl	%edi, %edi
	jle	.L85
	xorl	%edi, %edi
.LVL115:
.L86:
	.loc 1 268 0 discriminator 1
	cmpl	-28(%ebp), %edi
	je	.L85
	.loc 1 269 0
	movl	8(%ebx), %eax
	testb	$1, 6(%eax,%edi,8)
	je	.L87
	.loc 1 270 0
	imull	$12, %edi, %eax
	addl	12(%ebx), %eax
	pushl	%edx
	pushl	%edx
	pushl	4(%eax)
	pushl	(%eax)
	call	*8(%eax)
.LVL116:
	addl	$16, %esp
.L87:
	.loc 1 268 0 discriminator 2
	incl	%edi
.LVL117:
	jmp	.L86
.LVL118:
.L103:
.LBE78:
	.loc 1 224 0
	cmpb	$0, 21(%ebx)
	jne	.L90
.L89:
	.loc 1 277 0
	movb	$0, 23(%ebx)
.L73:
	.loc 1 278 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL119:
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
	.size	aos_loop_run, .-aos_loop_run
	.section	.text.unlikely.aos_loop_run
.LCOLDE14:
	.section	.text.aos_loop_run
.LHOTE14:
	.section	.text.unlikely.aos_loop_exit,"ax",@progbits
.LCOLDB15:
	.section	.text.aos_loop_exit,"ax",@progbits
.LHOTB15:
	.globl	aos_loop_exit
	.type	aos_loop_exit, @function
aos_loop_exit:
.LFB45:
	.loc 1 281 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 282 0
	call	get_context
.LVL120:
	.loc 1 283 0
	movb	$1, 23(%eax)
	.loc 1 284 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE45:
	.size	aos_loop_exit, .-aos_loop_exit
	.section	.text.unlikely.aos_loop_exit
.LCOLDE15:
	.section	.text.aos_loop_exit
.LHOTE15:
	.section	.text.unlikely.aos_loop_destroy,"ax",@progbits
.LCOLDB16:
	.section	.text.aos_loop_destroy,"ax",@progbits
.LHOTB16:
	.globl	aos_loop_destroy
	.type	aos_loop_destroy, @function
aos_loop_destroy:
.LFB46:
	.loc 1 287 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
.LBB96:
.LBB97:
	.loc 1 37 0
	pushl	g_loop_key
	call	aos_task_getspecific
.LVL121:
.LBE97:
.LBE96:
	.loc 1 290 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L107
	.loc 1 294 0
	subl	$12, %esp
	pushl	16(%eax)
	movl	%eax, %ebx
	call	aos_event_service_deinit
.LVL122:
.L116:
.LBB98:
.LBB99:
	.loc 2 88 0
	movl	4(%ebx), %eax
.LBE99:
.LBE98:
.LBB100:
	.loc 1 300 0
	addl	$16, %esp
.LVL123:
.LBE100:
	.loc 1 296 0
	cmpl	%eax, %ebx
	je	.L117
.LVL124:
.LBB105:
.LBB101:
.LBB102:
	.loc 2 68 0
	movl	(%eax), %ecx
.LVL125:
	.loc 2 69 0
	movl	4(%eax), %edx
.LVL126:
.LBE102:
.LBE101:
	.loc 1 300 0
	subl	$12, %esp
.LBB104:
.LBB103:
	.loc 2 71 0
	movl	%edx, 4(%ecx)
	.loc 2 72 0
	movl	%ecx, (%edx)
.LVL127:
.LBE103:
.LBE104:
	.loc 1 300 0
	pushl	%eax
	call	aos_free
.LVL128:
	jmp	.L116
.L117:
.LBE105:
	.loc 1 303 0
	subl	$12, %esp
	pushl	12(%ebx)
	call	aos_free
.LVL129:
	.loc 1 304 0
	popl	%eax
	pushl	8(%ebx)
	call	aos_free
.LVL130:
.LBB106:
.LBB107:
	.loc 1 32 0
	popl	%edx
	popl	%ecx
	pushl	$0
	pushl	g_loop_key
	call	aos_task_setspecific
.LVL131:
.LBE107:
.LBE106:
	.loc 1 307 0
	addl	$16, %esp
	cmpl	%ebx, g_main_ctx
	jne	.L111
	.loc 1 308 0
	movl	$0, g_main_ctx
.L111:
	.loc 1 310 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_free
.LVL132:
	addl	$16, %esp
.L107:
	.loc 1 311 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE46:
	.size	aos_loop_destroy, .-aos_loop_destroy
	.section	.text.unlikely.aos_loop_destroy
.LCOLDE16:
	.section	.text.aos_loop_destroy
.LHOTE16:
	.section	.bss.g_loop_key,"aw",@nobits
	.align 4
	.type	g_loop_key, @object
	.size	g_loop_key, 4
g_loop_key:
	.zero	4
	.globl	g_main_ctx
	.section	.bss.g_main_ctx,"aw",@nobits
	.align 4
	.type	g_main_ctx, @object
	.size	g_main_ctx, 4
g_main_ctx:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.get_context
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "./include/aos/types.h"
	.file 7 "./include/aos/kernel.h"
	.file 8 "./include/aos/yloop.h"
	.file 9 "kernel/yloop/yloop.h"
	.file 10 "./include/aos/internal/log_impl.h"
	.file 11 "./include/aos/log.h"
	.file 12 "./include/aos/vfs.h"
	.file 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc14
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF99
	.byte	0xc
	.long	.LASF100
	.long	.LASF101
	.long	.Ldebug_ranges0+0x78
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF9
	.byte	0x3
	.byte	0x1d
	.long	0x37
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
	.byte	0x4
	.byte	0xd8
	.long	0x6f
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x18
	.long	0x2c
	.uleb128 0x6
	.long	.LASF18
	.byte	0x8
	.byte	0x6
	.byte	0x11
	.long	0xd3
	.uleb128 0x7
	.string	"fd"
	.byte	0x6
	.byte	0x12
	.long	0x68
	.byte	0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x6
	.byte	0x13
	.long	0x3e
	.byte	0x4
	.uleb128 0x8
	.long	.LASF16
	.byte	0x6
	.byte	0x14
	.long	0x3e
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF17
	.byte	0x7
	.byte	0x24
	.long	0x6f
	.uleb128 0x6
	.long	.LASF19
	.byte	0x8
	.byte	0x2
	.byte	0x1f
	.long	0x103
	.uleb128 0x8
	.long	.LASF20
	.byte	0x2
	.byte	0x20
	.long	0x103
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x2
	.byte	0x21
	.long	0x103
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0xde
	.uleb128 0x3
	.long	.LASF22
	.byte	0x2
	.byte	0x22
	.long	0xde
	.uleb128 0xa
	.long	.LASF102
	.byte	0x4
	.long	0x68
	.byte	0xa
	.byte	0x12
	.long	0x14f
	.uleb128 0xb
	.long	.LASF23
	.sleb128 -1
	.uleb128 0xc
	.long	.LASF24
	.byte	0
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.uleb128 0xc
	.long	.LASF26
	.byte	0x2
	.uleb128 0xc
	.long	.LASF27
	.byte	0x3
	.uleb128 0xc
	.long	.LASF28
	.byte	0x4
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x8
	.byte	0x51
	.long	0x15a
	.uleb128 0x9
	.byte	0x4
	.long	0x160
	.uleb128 0xd
	.long	0x16b
	.uleb128 0xe
	.long	0x8f
	.byte	0
	.uleb128 0x3
	.long	.LASF31
	.byte	0x8
	.byte	0x53
	.long	0x176
	.uleb128 0x9
	.byte	0x4
	.long	0x17c
	.uleb128 0xd
	.long	0x18c
	.uleb128 0xe
	.long	0x68
	.uleb128 0xe
	.long	0x8f
	.byte	0
	.uleb128 0x3
	.long	.LASF32
	.byte	0x8
	.byte	0xab
	.long	0x8f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF33
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF34
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF35
	.uleb128 0xf
	.byte	0xc
	.byte	0x9
	.byte	0x8
	.long	0x1d8
	.uleb128 0x8
	.long	.LASF36
	.byte	0x9
	.byte	0x9
	.long	0x68
	.byte	0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x9
	.byte	0xa
	.long	0x8f
	.byte	0x4
	.uleb128 0x7
	.string	"cb"
	.byte	0x9
	.byte	0xb
	.long	0x16b
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.long	.LASF38
	.byte	0x9
	.byte	0xc
	.long	0x1ac
	.uleb128 0xf
	.byte	0x18
	.byte	0x9
	.byte	0xe
	.long	0x24c
	.uleb128 0x8
	.long	.LASF39
	.byte	0x9
	.byte	0xf
	.long	0x109
	.byte	0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x9
	.byte	0x10
	.long	0x24c
	.byte	0x8
	.uleb128 0x8
	.long	.LASF41
	.byte	0x9
	.byte	0x11
	.long	0x252
	.byte	0xc
	.uleb128 0x8
	.long	.LASF42
	.byte	0x9
	.byte	0x12
	.long	0x68
	.byte	0x10
	.uleb128 0x8
	.long	.LASF43
	.byte	0x9
	.byte	0x13
	.long	0x98
	.byte	0x14
	.uleb128 0x8
	.long	.LASF44
	.byte	0x9
	.byte	0x14
	.long	0x98
	.byte	0x15
	.uleb128 0x8
	.long	.LASF45
	.byte	0x9
	.byte	0x15
	.long	0x197
	.byte	0x16
	.uleb128 0x8
	.long	.LASF46
	.byte	0x9
	.byte	0x16
	.long	0x197
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0xa3
	.uleb128 0x9
	.byte	0x4
	.long	0x1d8
	.uleb128 0x3
	.long	.LASF47
	.byte	0x9
	.byte	0x17
	.long	0x1e3
	.uleb128 0x6
	.long	.LASF48
	.byte	0x1c
	.byte	0x1
	.byte	0x12
	.long	0x2aa
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.byte	0x13
	.long	0x109
	.byte	0
	.uleb128 0x8
	.long	.LASF49
	.byte	0x1
	.byte	0x14
	.long	0x5a
	.byte	0x8
	.uleb128 0x8
	.long	.LASF37
	.byte	0x1
	.byte	0x15
	.long	0x8f
	.byte	0x10
	.uleb128 0x7
	.string	"cb"
	.byte	0x1
	.byte	0x16
	.long	0x14f
	.byte	0x14
	.uleb128 0x7
	.string	"ms"
	.byte	0x1
	.byte	0x17
	.long	0x68
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x1
	.byte	0x18
	.long	0x263
	.uleb128 0x10
	.long	.LASF52
	.byte	0x2
	.byte	0x24
	.byte	0x3
	.long	0x2e3
	.uleb128 0x11
	.long	.LASF51
	.byte	0x2
	.byte	0x24
	.long	0x2e3
	.uleb128 0x11
	.long	.LASF20
	.byte	0x2
	.byte	0x24
	.long	0x2e3
	.uleb128 0x11
	.long	.LASF21
	.byte	0x2
	.byte	0x24
	.long	0x2e3
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x109
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.byte	0x28
	.long	0x305
	.byte	0x3
	.long	0x305
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x2a
	.long	0x305
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x258
	.uleb128 0x14
	.long	.LASF59
	.byte	0xa
	.byte	0xd
	.long	0x6f
	.byte	0x3
	.uleb128 0x10
	.long	.LASF53
	.byte	0x2
	.byte	0x4b
	.byte	0x3
	.long	0x32f
	.uleb128 0x11
	.long	.LASF51
	.byte	0x2
	.byte	0x4b
	.long	0x2e3
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.long	0x352
	.uleb128 0x11
	.long	.LASF51
	.byte	0x2
	.byte	0x3d
	.long	0x2e3
	.uleb128 0x11
	.long	.LASF55
	.byte	0x2
	.byte	0x3d
	.long	0x2e3
	.byte	0
	.uleb128 0x12
	.long	.LASF57
	.byte	0x2
	.byte	0x56
	.long	0x68
	.byte	0x3
	.long	0x36e
	.uleb128 0x11
	.long	.LASF58
	.byte	0x2
	.byte	0x56
	.long	0x36e
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x374
	.uleb128 0x15
	.long	0x109
	.uleb128 0x14
	.long	.LASF60
	.byte	0x1
	.byte	0x23
	.long	0x305
	.byte	0x3
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x1e
	.byte	0x3
	.long	0x39d
	.uleb128 0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x1e
	.long	0x305
	.byte	0
	.uleb128 0x17
	.long	0x2e9
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x404
	.uleb128 0x18
	.long	0x2f9
	.uleb128 0x19
	.long	0x379
	.long	.LBB34
	.long	.LBE34-.LBB34
	.byte	0x1
	.byte	0x2a
	.long	0x3d2
	.uleb128 0x1a
	.long	.LVL0
	.long	0xb79
	.byte	0
	.uleb128 0x1b
	.long	.LBB36
	.long	.LBE36-.LBB36
	.uleb128 0x18
	.long	0x2f9
	.uleb128 0x1c
	.long	0x385
	.long	.LBB37
	.long	.LBE37-.LBB37
	.byte	0x1
	.byte	0x2c
	.uleb128 0x1d
	.long	0x391
	.long	.LLST0
	.uleb128 0x1a
	.long	.LVL2
	.long	0xb84
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF70
	.byte	0x1
	.byte	0x32
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x43d
	.uleb128 0x1f
	.string	"fd"
	.byte	0x1
	.byte	0x32
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"ctx"
	.byte	0x1
	.byte	0x34
	.long	0x305
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1a
	.long	.LVL4
	.long	0x2e9
	.byte	0
	.uleb128 0x21
	.long	.LASF63
	.byte	0x1
	.byte	0x38
	.long	0x68
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x47d
	.uleb128 0x22
	.long	.LASF62
	.byte	0x1
	.byte	0x38
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0x3a
	.long	0x305
	.long	.LLST1
	.uleb128 0x1a
	.long	.LVL6
	.long	0x2e9
	.byte	0
	.uleb128 0x21
	.long	.LASF64
	.byte	0x1
	.byte	0x3e
	.long	0x18c
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a0
	.uleb128 0x24
	.long	.LVL8
	.long	0x2e9
	.byte	0
	.uleb128 0x21
	.long	.LASF65
	.byte	0x1
	.byte	0x43
	.long	0x18c
	.long	.LFB39
	.long	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x568
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0x45
	.long	0x305
	.long	.LLST2
	.uleb128 0x19
	.long	0x379
	.long	.LBB47
	.long	.LBE47-.LBB47
	.byte	0x1
	.byte	0x45
	.long	0x4e5
	.uleb128 0x1a
	.long	.LVL9
	.long	0xb79
	.byte	0
	.uleb128 0x19
	.long	0x317
	.long	.LBB49
	.long	.LBE49-.LBB49
	.byte	0x1
	.byte	0x53
	.long	0x502
	.uleb128 0x1d
	.long	0x323
	.long	.LLST3
	.byte	0
	.uleb128 0x19
	.long	0x385
	.long	.LBB51
	.long	.LBE51-.LBB51
	.byte	0x1
	.byte	0x55
	.long	0x528
	.uleb128 0x1d
	.long	0x391
	.long	.LLST4
	.uleb128 0x1a
	.long	.LVL21
	.long	0xb84
	.byte	0
	.uleb128 0x1a
	.long	.LVL10
	.long	0xb8f
	.uleb128 0x1a
	.long	.LVL11
	.long	0xb9a
	.uleb128 0x1a
	.long	.LVL12
	.long	0xba6
	.uleb128 0x1a
	.long	.LVL13
	.long	0xba6
	.uleb128 0x1a
	.long	.LVL14
	.long	0xba6
	.uleb128 0x1a
	.long	.LVL15
	.long	0xbb1
	.uleb128 0x1a
	.long	.LVL22
	.long	0xbbd
	.byte	0
	.uleb128 0x21
	.long	.LASF66
	.byte	0x1
	.byte	0x5c
	.long	0x68
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x66b
	.uleb128 0x22
	.long	.LASF36
	.byte	0x1
	.byte	0x5c
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"cb"
	.byte	0x1
	.byte	0x5c
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF37
	.byte	0x1
	.byte	0x5c
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0x5e
	.long	0x305
	.long	.LLST5
	.uleb128 0x25
	.long	.LASF67
	.byte	0x1
	.byte	0x63
	.long	0x252
	.long	.LLST6
	.uleb128 0x25
	.long	.LASF68
	.byte	0x1
	.byte	0x64
	.long	0x24c
	.long	.LLST7
	.uleb128 0x23
	.string	"cnt"
	.byte	0x1
	.byte	0x65
	.long	0x68
	.long	.LLST8
	.uleb128 0x25
	.long	.LASF69
	.byte	0x1
	.byte	0x71
	.long	0x68
	.long	.LLST9
	.uleb128 0x1a
	.long	.LVL24
	.long	0x2e9
	.uleb128 0x1a
	.long	.LVL31
	.long	0xbc8
	.uleb128 0x1a
	.long	.LVL33
	.long	0xbc8
	.uleb128 0x1a
	.long	.LVL35
	.long	0xb9a
	.uleb128 0x1a
	.long	.LVL36
	.long	0xba6
	.uleb128 0x1a
	.long	.LVL37
	.long	0xba6
	.uleb128 0x1a
	.long	.LVL38
	.long	0xba6
	.uleb128 0x1a
	.long	.LVL39
	.long	0xbd4
	.uleb128 0x1a
	.long	.LVL41
	.long	0xbd4
	.uleb128 0x1a
	.long	.LVL44
	.long	0xbe0
	.uleb128 0x1a
	.long	.LVL46
	.long	0xbe0
	.uleb128 0x1a
	.long	.LVL47
	.long	0xbd4
	.uleb128 0x1a
	.long	.LVL48
	.long	0xbd4
	.byte	0
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.byte	0x8a
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d9
	.uleb128 0x22
	.long	.LASF36
	.byte	0x1
	.byte	0x8a
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF72
	.byte	0x1
	.byte	0x8a
	.long	0x16b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.byte	0x8a
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0x8c
	.long	0x305
	.long	.LLST10
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x91
	.long	0x68
	.long	.LLST11
	.uleb128 0x1a
	.long	.LVL53
	.long	0x2e9
	.uleb128 0x1a
	.long	.LVL57
	.long	0xbeb
	.byte	0
	.uleb128 0x21
	.long	.LASF74
	.byte	0x1
	.byte	0xa5
	.long	0x68
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b5
	.uleb128 0x1f
	.string	"ms"
	.byte	0x1
	.byte	0xa5
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF72
	.byte	0x1
	.byte	0xa5
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF73
	.byte	0x1
	.byte	0xa5
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0xab
	.long	0x305
	.long	.LLST12
	.uleb128 0x25
	.long	.LASF75
	.byte	0x1
	.byte	0xac
	.long	0x7b5
	.long	.LLST13
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.byte	0xb6
	.long	0x7b5
	.long	.LLST14
	.uleb128 0x26
	.long	0x32f
	.long	.LBB53
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xbe
	.long	0x799
	.uleb128 0x1d
	.long	0x346
	.long	.LLST15
	.uleb128 0x1d
	.long	0x33b
	.long	.LLST16
	.uleb128 0x27
	.long	0x2b5
	.long	.LBB55
	.long	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0x3f
	.uleb128 0x1d
	.long	0x2d7
	.long	.LLST17
	.uleb128 0x1d
	.long	0x2cc
	.long	.LLST18
	.uleb128 0x1d
	.long	0x2c1
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL60
	.long	0x2e9
	.uleb128 0x1a
	.long	.LVL62
	.long	0xbc8
	.uleb128 0x1a
	.long	.LVL65
	.long	0xb9a
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x2aa
	.uleb128 0x10
	.long	.LASF76
	.byte	0x2
	.byte	0x42
	.byte	0x3
	.long	0x7e9
	.uleb128 0x11
	.long	.LASF51
	.byte	0x2
	.byte	0x42
	.long	0x2e3
	.uleb128 0x28
	.long	.LASF20
	.byte	0x2
	.byte	0x44
	.long	0x2e3
	.uleb128 0x28
	.long	.LASF21
	.byte	0x2
	.byte	0x45
	.long	0x2e3
	.byte	0
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.byte	0xc3
	.long	.LFB43
	.long	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x890
	.uleb128 0x1f
	.string	"ms"
	.byte	0x1
	.byte	0xc3
	.long	0x68
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"cb"
	.byte	0x1
	.byte	0xc3
	.long	0x14f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF37
	.byte	0x1
	.byte	0xc3
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0xc5
	.long	0x305
	.long	.LLST20
	.uleb128 0x23
	.string	"tmp"
	.byte	0x1
	.byte	0xc6
	.long	0x7b5
	.long	.LLST21
	.uleb128 0x19
	.long	0x7bb
	.long	.LBB63
	.long	.LBE63-.LBB63
	.byte	0x1
	.byte	0xd5
	.long	0x87d
	.uleb128 0x1d
	.long	0x7c7
	.long	.LLST22
	.uleb128 0x1b
	.long	.LBB64
	.long	.LBE64-.LBB64
	.uleb128 0x29
	.long	0x7d2
	.long	.LLST23
	.uleb128 0x29
	.long	0x7dd
	.long	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL75
	.long	0x2e9
	.uleb128 0x24
	.long	.LVL81
	.long	0xbd4
	.byte	0
	.uleb128 0x2a
	.long	.LASF78
	.byte	0x1
	.byte	0xdb
	.long	.LFB44
	.long	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1f
	.uleb128 0x23
	.string	"ctx"
	.byte	0x1
	.byte	0xdd
	.long	0x305
	.long	.LLST25
	.uleb128 0x19
	.long	0x352
	.long	.LBB76
	.long	.LBE76-.LBB76
	.byte	0x1
	.byte	0xe0
	.long	0x8d1
	.uleb128 0x1d
	.long	0x362
	.long	.LLST26
	.byte	0
	.uleb128 0x2b
	.long	.LBB78
	.long	.LBE78-.LBB78
	.long	0xa15
	.uleb128 0x25
	.long	.LASF79
	.byte	0x1
	.byte	0xe1
	.long	0x68
	.long	.LLST27
	.uleb128 0x25
	.long	.LASF41
	.byte	0x1
	.byte	0xe2
	.long	0x68
	.long	.LLST28
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xe3
	.long	0x68
	.long	.LLST29
	.uleb128 0x23
	.string	"res"
	.byte	0x1
	.byte	0xf5
	.long	0x68
	.long	.LLST30
	.uleb128 0x2b
	.long	.LBB79
	.long	.LBE79-.LBB79
	.long	0x94d
	.uleb128 0x23
	.string	"tmo"
	.byte	0x1
	.byte	0xe6
	.long	0x7b5
	.long	.LLST31
	.uleb128 0x23
	.string	"now"
	.byte	0x1
	.byte	0xe7
	.long	0x5a
	.long	.LLST32
	.uleb128 0x1a
	.long	.LVL91
	.long	0xb9a
	.byte	0
	.uleb128 0x19
	.long	0x352
	.long	.LBB80
	.long	.LBE80-.LBB80
	.byte	0x1
	.byte	0xfd
	.long	0x96a
	.uleb128 0x1d
	.long	0x362
	.long	.LLST33
	.byte	0
	.uleb128 0x2b
	.long	.LBB82
	.long	.LBE82-.LBB82
	.long	0x9de
	.uleb128 0x23
	.string	"tmo"
	.byte	0x1
	.byte	0xfe
	.long	0x7b5
	.long	.LLST34
	.uleb128 0x23
	.string	"now"
	.byte	0x1
	.byte	0xff
	.long	0x5a
	.long	.LLST35
	.uleb128 0x2c
	.long	0x7bb
	.long	.LBB83
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x102
	.long	0x9cb
	.uleb128 0x1d
	.long	0x7c7
	.long	.LLST36
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.long	0x7d2
	.long	.LLST37
	.uleb128 0x29
	.long	0x7dd
	.long	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL107
	.long	0xb9a
	.uleb128 0x1a
	.long	.LVL113
	.long	0xbd4
	.byte	0
	.uleb128 0x1a
	.long	.LVL97
	.long	0xbf6
	.uleb128 0x1a
	.long	.LVL99
	.long	0xc01
	.uleb128 0x1a
	.long	.LVL100
	.long	0xb9a
	.uleb128 0x1a
	.long	.LVL101
	.long	0xba6
	.uleb128 0x1a
	.long	.LVL102
	.long	0xba6
	.uleb128 0x1a
	.long	.LVL103
	.long	0xba6
	.byte	0
	.uleb128 0x1a
	.long	.LVL83
	.long	0x2e9
	.byte	0
	.uleb128 0x2e
	.long	.LASF80
	.byte	0x1
	.value	0x118
	.long	.LFB45
	.long	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4d
	.uleb128 0x2f
	.string	"ctx"
	.byte	0x1
	.value	0x11a
	.long	0x305
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1a
	.long	.LVL120
	.long	0x2e9
	.byte	0
	.uleb128 0x2e
	.long	.LASF81
	.byte	0x1
	.value	0x11e
	.long	.LFB46
	.long	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xb4c
	.uleb128 0x30
	.string	"ctx"
	.byte	0x1
	.value	0x120
	.long	0x305
	.uleb128 0x31
	.long	0x379
	.long	.LBB96
	.long	.LBE96-.LBB96
	.byte	0x1
	.value	0x120
	.long	0xa8d
	.uleb128 0x1a
	.long	.LVL121
	.long	0xb79
	.byte	0
	.uleb128 0x31
	.long	0x352
	.long	.LBB98
	.long	.LBE98-.LBB98
	.byte	0x1
	.value	0x128
	.long	0xaa7
	.uleb128 0x32
	.long	0x362
	.byte	0
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x48
	.long	0xb00
	.uleb128 0x34
	.long	.LASF75
	.byte	0x1
	.value	0x129
	.long	0x7b5
	.long	.LLST39
	.uleb128 0x2c
	.long	0x7bb
	.long	.LBB101
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.value	0x12b
	.long	0xaf6
	.uleb128 0x1d
	.long	0x7c7
	.long	.LLST40
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x29
	.long	0x7d2
	.long	.LLST41
	.uleb128 0x29
	.long	0x7dd
	.long	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LVL128
	.long	0xbd4
	.byte	0
	.uleb128 0x31
	.long	0x385
	.long	.LBB106
	.long	.LBE106-.LBB106
	.byte	0x1
	.value	0x132
	.long	0xb27
	.uleb128 0x1d
	.long	0x391
	.long	.LLST43
	.uleb128 0x1a
	.long	.LVL131
	.long	0xb84
	.byte	0
	.uleb128 0x1a
	.long	.LVL122
	.long	0xc0c
	.uleb128 0x1a
	.long	.LVL129
	.long	0xbd4
	.uleb128 0x1a
	.long	.LVL130
	.long	0xbd4
	.uleb128 0x1a
	.long	.LVL132
	.long	0xbd4
	.byte	0
	.uleb128 0x35
	.long	.LASF82
	.byte	0x1
	.byte	0x1c
	.long	0xd3
	.uleb128 0x5
	.byte	0x3
	.long	g_loop_key
	.uleb128 0x36
	.long	.LASF83
	.byte	0xb
	.byte	0x17
	.long	0x6f
	.uleb128 0x37
	.long	.LASF84
	.byte	0x1
	.byte	0x1b
	.long	0x305
	.uleb128 0x5
	.byte	0x3
	.long	g_main_ctx
	.uleb128 0x38
	.long	.LASF85
	.long	.LASF85
	.byte	0x7
	.byte	0x82
	.uleb128 0x38
	.long	.LASF86
	.long	.LASF86
	.byte	0x7
	.byte	0x7b
	.uleb128 0x38
	.long	.LASF87
	.long	.LASF87
	.byte	0x7
	.byte	0x6a
	.uleb128 0x39
	.long	.LASF88
	.long	.LASF88
	.byte	0x7
	.value	0x20e
	.uleb128 0x38
	.long	.LASF89
	.long	.LASF89
	.byte	0xa
	.byte	0x50
	.uleb128 0x39
	.long	.LASF90
	.long	.LASF90
	.byte	0x7
	.value	0x1f1
	.uleb128 0x38
	.long	.LASF91
	.long	.LASF91
	.byte	0x9
	.byte	0x1f
	.uleb128 0x39
	.long	.LASF92
	.long	.LASF92
	.byte	0x7
	.value	0x1e8
	.uleb128 0x39
	.long	.LASF93
	.long	.LASF93
	.byte	0x7
	.value	0x200
	.uleb128 0x38
	.long	.LASF94
	.long	.LASF94
	.byte	0xc
	.byte	0x64
	.uleb128 0x38
	.long	.LASF95
	.long	.LASF95
	.byte	0xd
	.byte	0x1c
	.uleb128 0x38
	.long	.LASF96
	.long	.LASF96
	.byte	0xc
	.byte	0x59
	.uleb128 0x38
	.long	.LASF97
	.long	.LASF97
	.byte	0xe
	.byte	0xf
	.uleb128 0x38
	.long	.LASF98
	.long	.LASF98
	.byte	0x9
	.byte	0x22
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x20
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.long	.LVL2-1
	.value	0x5
	.byte	0x3
	.long	g_main_ctx
	.long	0
	.long	0
.LLST1:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL16
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	.LVL42
	.long	.LVL51
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL32
	.long	.LVL33-1
	.value	0x1
	.byte	0x50
	.long	.LVL33-1
	.long	.LVL49
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x50
	.long	.LVL50
	.long	.LVL51
	.value	0x9
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x3c
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x50
	.long	.LVL35-1
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST8:
	.long	.LVL27
	.long	.LVL28
	.value	0xa
	.byte	0x73
	.sleb128 21
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x56
	.long	.LVL29
	.long	.LVL30
	.value	0xa
	.byte	0x73
	.sleb128 21
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL30
	.long	.LVL51
	.value	0xa
	.byte	0x91
	.sleb128 -44
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x50
	.long	.LVL54
	.long	.LVL58
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL55
	.long	.LVL57-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST12:
	.long	.LVL61
	.long	.LVL62-1
	.value	0x1
	.byte	0x50
	.long	.LVL62-1
	.long	.LVL67
	.value	0x1
	.byte	0x57
	.long	.LVL71
	.long	.LVL73
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST13:
	.long	.LVL63
	.long	.LVL64
	.value	0x1
	.byte	0x50
	.long	.LVL64
	.long	.LVL73
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST14:
	.long	.LVL66
	.long	.LVL73
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST15:
	.long	.LVL67
	.long	.LVL70
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST16:
	.long	.LVL67
	.long	.LVL70
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST17:
	.long	.LVL68
	.long	.LVL70
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST18:
	.long	.LVL68
	.long	.LVL69
	.value	0x1
	.byte	0x50
	.long	.LVL69
	.long	.LVL70
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL68
	.long	.LVL70
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST20:
	.long	.LVL75
	.long	.LVL79
	.value	0x1
	.byte	0x50
	.long	.LVL81
	.long	.LFE43
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST21:
	.long	.LVL76
	.long	.LVL81-1
	.value	0x1
	.byte	0x52
	.long	.LVL81
	.long	.LFE43
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST22:
	.long	.LVL77
	.long	.LVL80
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST23:
	.long	.LVL78
	.long	.LVL80
	.value	0x1
	.byte	0x51
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
	.long	.LVL119
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST26:
	.long	.LVL85
	.long	.LVL86
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL87
	.long	.LVL92
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL92
	.long	.LVL93
	.value	0x1
	.byte	0x50
	.long	.LVL93
	.long	.LVL94
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL94
	.long	.LVL97-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST28:
	.long	.LVL88
	.long	.LVL89
	.value	0x1
	.byte	0x50
	.long	.LVL89
	.long	.LVL118
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	0
	.long	0
.LLST29:
	.long	.LVL94
	.long	.LVL95
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL95
	.long	.LVL97-1
	.value	0x1
	.byte	0x52
	.long	.LVL115
	.long	.LVL118
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST30:
	.long	.LVL98
	.long	.LVL99-1
	.value	0x1
	.byte	0x50
	.long	.LVL99-1
	.long	.LVL115
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST31:
	.long	.LVL90
	.long	.LVL94
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST32:
	.long	.LVL91
	.long	.LVL92
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL93
	.long	.LVL94
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST33:
	.long	.LVL104
	.long	.LVL105
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST34:
	.long	.LVL106
	.long	.LVL114
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST35:
	.long	.LVL107
	.long	.LVL109
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST36:
	.long	.LVL108
	.long	.LVL111
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST37:
	.long	.LVL109
	.long	.LVL111
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST38:
	.long	.LVL110
	.long	.LVL111
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST39:
	.long	.LVL124
	.long	.LVL128-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST40:
	.long	.LVL124
	.long	.LVL127
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST41:
	.long	.LVL125
	.long	.LVL127
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST42:
	.long	.LVL126
	.long	.LVL127
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST43:
	.long	.LVL130
	.long	.LVL131
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x74
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB35
	.long	.LFE35-.LFB35
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
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB53
	.long	.LBE53
	.long	.LBB60
	.long	.LBE60
	.long	0
	.long	0
	.long	.LBB55
	.long	.LBE55
	.long	.LBB58
	.long	.LBE58
	.long	0
	.long	0
	.long	.LBB83
	.long	.LBE83
	.long	.LBB86
	.long	.LBE86
	.long	0
	.long	0
	.long	.LBB100
	.long	.LBE100
	.long	.LBB105
	.long	.LBE105
	.long	0
	.long	0
	.long	.LBB101
	.long	.LBE101
	.long	.LBB104
	.long	.LBE104
	.long	0
	.long	0
	.long	.LFB35
	.long	.LFE35
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
	.long	.LFB45
	.long	.LFE45
	.long	.LFB46
	.long	.LFE46
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"AOS_LL_V_MAX_BIT"
.LASF98:
	.string	"aos_event_service_deinit"
.LASF102:
	.string	"log_level_bit"
.LASF27:
	.string	"AOS_LL_V_INFO_BIT"
.LASF92:
	.string	"aos_malloc"
.LASF32:
	.string	"aos_loop_t"
.LASF74:
	.string	"aos_post_delayed_action"
.LASF84:
	.string	"g_main_ctx"
.LASF46:
	.string	"terminate"
.LASF90:
	.string	"aos_zalloc"
.LASF67:
	.string	"new_sock"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF12:
	.string	"sizetype"
.LASF28:
	.string	"AOS_LL_V_DEBUG_BIT"
.LASF43:
	.string	"max_sock"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"__uint8_t"
.LASF44:
	.string	"reader_count"
.LASF52:
	.string	"__dlist_add"
.LASF86:
	.string	"aos_task_setspecific"
.LASF61:
	.string	"_set_context"
.LASF68:
	.string	"new_loop_pollfds"
.LASF58:
	.string	"head"
.LASF23:
	.string	"AOS_LL_V_NONE_BIT"
.LASF31:
	.string	"aos_poll_call_t"
.LASF14:
	.string	"uint8_t"
.LASF47:
	.string	"yloop_ctx_t"
.LASF41:
	.string	"readers"
.LASF34:
	.string	"float"
.LASF88:
	.string	"aos_now_ms"
.LASF38:
	.string	"yloop_sock_t"
.LASF6:
	.string	"long long int"
.LASF39:
	.string	"timeouts"
.LASF100:
	.string	"src/yloop.c"
.LASF64:
	.string	"aos_current_loop"
.LASF85:
	.string	"aos_task_getspecific"
.LASF60:
	.string	"_get_context"
.LASF4:
	.string	"long int"
.LASF91:
	.string	"aos_event_service_init"
.LASF72:
	.string	"action"
.LASF30:
	.string	"aos_call_t"
.LASF83:
	.string	"aos_log_level"
.LASF16:
	.string	"revents"
.LASF66:
	.string	"aos_poll_read_fd"
.LASF54:
	.string	"dlist_add_tail"
.LASF37:
	.string	"private_data"
.LASF80:
	.string	"aos_loop_exit"
.LASF11:
	.string	"long double"
.LASF56:
	.string	"get_context"
.LASF95:
	.string	"memmove"
.LASF1:
	.string	"unsigned char"
.LASF48:
	.string	"yloop_timeout_s"
.LASF50:
	.string	"yloop_timeout_t"
.LASF22:
	.string	"dlist_t"
.LASF70:
	.string	"aos_loop_set_eventfd"
.LASF0:
	.string	"signed char"
.LASF87:
	.string	"aos_task_key_create"
.LASF19:
	.string	"dlist_s"
.LASF8:
	.string	"unsigned int"
.LASF82:
	.string	"g_loop_key"
.LASF45:
	.string	"pending_terminate"
.LASF5:
	.string	"long unsigned int"
.LASF78:
	.string	"aos_loop_run"
.LASF71:
	.string	"aos_cancel_poll_read_fd"
.LASF94:
	.string	"aos_fcntl"
.LASF18:
	.string	"pollfd"
.LASF57:
	.string	"dlist_empty"
.LASF3:
	.string	"short unsigned int"
.LASF73:
	.string	"param"
.LASF69:
	.string	"status"
.LASF42:
	.string	"eventfd"
.LASF13:
	.string	"char"
.LASF65:
	.string	"aos_loop_init"
.LASF76:
	.string	"dlist_del"
.LASF55:
	.string	"queue"
.LASF59:
	.string	"aos_log_get_level"
.LASF33:
	.string	"_Bool"
.LASF96:
	.string	"aos_poll"
.LASF25:
	.string	"AOS_LL_V_ERROR_BIT"
.LASF75:
	.string	"timeout"
.LASF89:
	.string	"csp_printf"
.LASF40:
	.string	"pollfds"
.LASF77:
	.string	"aos_cancel_delayed_action"
.LASF49:
	.string	"timeout_ms"
.LASF63:
	.string	"aos_loop_get_eventfd"
.LASF53:
	.string	"dlist_init"
.LASF35:
	.string	"double"
.LASF51:
	.string	"node"
.LASF99:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF81:
	.string	"aos_loop_destroy"
.LASF17:
	.string	"aos_task_key_t"
.LASF26:
	.string	"AOS_LL_V_WARN_BIT"
.LASF93:
	.string	"aos_free"
.LASF15:
	.string	"events"
.LASF62:
	.string	"loop"
.LASF101:
	.string	"/home/stone/Documents/pca"
.LASF79:
	.string	"delayed_ms"
.LASF20:
	.string	"prev"
.LASF24:
	.string	"AOS_LL_V_FATAL_BIT"
.LASF21:
	.string	"next"
.LASF97:
	.string	"__errno"
.LASF36:
	.string	"sock"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
