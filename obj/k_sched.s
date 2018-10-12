	.file	"k_sched.c"
	.text
.Ltext0:
	.section	.text.unlikely.ready_list_init,"ax",@progbits
.LCOLDB0:
	.section	.text.ready_list_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ready_list_init
.Ltext_cold0:
	.section	.text.ready_list_init
	.type	ready_list_init, @function
ready_list_init:
.LFB16:
	.file 1 "kernel/rhino/core/k_sched.c"
	.loc 1 177 0
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
	.loc 1 178 0
	movzbl	119(%edx), %ecx
	leal	24(%edx), %ebx
.LBB42:
.LBB43:
	.file 2 "./kernel/rhino/core/include/k_bitmap.h"
	.loc 2 35 0
	movl	$1, %esi
.LBE43:
.LBE42:
	.loc 1 178 0
	movl	%ebx, (%eax,%ecx,4)
	.loc 1 179 0
	movzbl	119(%edx), %ecx
	movl	(%eax,%ecx,4), %ecx
.LVL1:
.LBB45:
.LBB46:
	.file 3 "./kernel/rhino/core/include/k_list.h"
	.loc 3 17 0
	movl	%ecx, (%ecx)
	.loc 3 18 0
	movl	%ecx, 4(%ecx)
.LVL2:
.LBE46:
.LBE45:
.LBB47:
.LBB44:
	.loc 2 35 0
	movzbl	119(%edx), %ecx
.LVL3:
	movl	%ecx, %ebx
	notl	%ecx
.LVL4:
	sarl	$5, %ebx
.LVL5:
	sall	%cl, %esi
	orl	%esi, 248(%eax,%ebx,4)
.LVL6:
.LBE44:
.LBE47:
	.loc 1 182 0
	movb	119(%edx), %dl
.LVL7:
	cmpb	256(%eax), %dl
	jnb	.L1
	.loc 1 183 0
	movb	%dl, 256(%eax)
.L1:
	.loc 1 185 0
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
	.size	ready_list_init, .-ready_list_init
	.section	.text.unlikely.ready_list_init
.LCOLDE0:
	.section	.text.ready_list_init
.LHOTE0:
	.section	.text.unlikely._ready_list_add_head,"ax",@progbits
.LCOLDB1:
	.section	.text._ready_list_add_head,"ax",@progbits
.LHOTB1:
	.type	_ready_list_add_head, @function
_ready_list_add_head:
.LFB19:
	.loc 1 203 0
	.cfi_startproc
.LVL8:
.LBB52:
.LBB53:
	.loc 1 189 0
	movzbl	119(%edx), %ecx
.LVL9:
.LBE53:
.LBE52:
	.loc 1 204 0
	cmpl	$0, g_ready_queue(,%ecx,4)
	jne	.L6
	.loc 1 205 0
	jmp	ready_list_init
.LVL10:
.L6:
	.loc 1 209 0
	movl	(%eax,%ecx,4), %ecx
.LVL11:
	.loc 1 203 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LBB54:
.LBB55:
	.loc 3 28 0
	movl	4(%ecx), %esi
.LBE55:
.LBE54:
	.loc 1 209 0
	leal	24(%edx), %ebx
.LVL12:
.LBB57:
.LBB56:
	.loc 3 29 0
	movl	%ecx, 24(%edx)
	.loc 3 28 0
	movl	%esi, 28(%edx)
	.loc 3 31 0
	movl	4(%ecx), %esi
	movl	%ebx, (%esi)
	.loc 3 32 0
	movl	%ebx, 4(%ecx)
.LVL13:
.LBE56:
.LBE57:
	.loc 1 210 0
	movzbl	119(%edx), %edx
.LVL14:
	movl	%ebx, (%eax,%edx,4)
	.loc 1 211 0
	popl	%ebx
	.cfi_restore 3
.LVL15:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	_ready_list_add_head, .-_ready_list_add_head
	.section	.text.unlikely._ready_list_add_head
.LCOLDE1:
	.section	.text._ready_list_add_head
.LHOTE1:
	.section	.text.unlikely._ready_list_add_tail,"ax",@progbits
.LCOLDB2:
	.section	.text._ready_list_add_tail,"ax",@progbits
.LHOTB2:
	.type	_ready_list_add_tail, @function
_ready_list_add_tail:
.LFB18:
	.loc 1 193 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LVL17:
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
.LBB62:
.LBB63:
	.loc 1 189 0
	movzbl	119(%edx), %ebx
.LBE63:
.LBE62:
	.loc 1 194 0
	cmpl	$0, g_ready_queue(,%ebx,4)
	jne	.L9
	.loc 1 200 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 195 0
	jmp	ready_list_init
.LVL18:
.L9:
	.cfi_restore_state
	.loc 1 199 0
	movl	(%eax,%ebx,4), %eax
.LVL19:
	leal	24(%edx), %ecx
.LVL20:
.LBB64:
.LBB65:
	.loc 3 28 0
	movl	4(%eax), %ebx
	.loc 3 29 0
	movl	%eax, 24(%edx)
	.loc 3 28 0
	movl	%ebx, 28(%edx)
	.loc 3 31 0
	movl	4(%eax), %edx
.LVL21:
	movl	%ecx, (%edx)
	.loc 3 32 0
	movl	%ecx, 4(%eax)
.LBE65:
.LBE64:
	.loc 1 200 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	_ready_list_add_tail, .-_ready_list_add_tail
	.section	.text.unlikely._ready_list_add_tail
.LCOLDE2:
	.section	.text._ready_list_add_tail
.LHOTE2:
	.section	.text.unlikely.krhino_sched_disable,"ax",@progbits
.LCOLDB3:
	.section	.text.krhino_sched_disable,"ax",@progbits
.LHOTB3:
	.globl	krhino_sched_disable
	.type	krhino_sched_disable, @function
krhino_sched_disable:
.LFB12:
	.loc 1 34 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 37 0
	call	cpu_intrpt_save
.LVL22:
	.loc 1 39 0
	cmpb	$0, g_intrpt_nested_level
	je	.L12
	.loc 1 39 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL23:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L13
.LVL24:
.L12:
	.loc 1 41 0 is_stmt 1
	movb	g_sched_lock, %dl
	cmpb	$-57, %dl
	jbe	.L14
	.loc 1 42 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL25:
	.loc 1 43 0
	addl	$16, %esp
	movl	$202, %eax
	jmp	.L13
.LVL26:
.L14:
	.loc 1 52 0
	subl	$12, %esp
	.loc 1 50 0
	incl	%edx
	.loc 1 52 0
	pushl	%eax
	.loc 1 50 0
	movb	%dl, g_sched_lock
	.loc 1 52 0
	call	cpu_intrpt_restore
.LVL27:
	.loc 1 54 0
	addl	$16, %esp
	xorl	%eax, %eax
.L13:
	.loc 1 55 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	krhino_sched_disable, .-krhino_sched_disable
	.section	.text.unlikely.krhino_sched_disable
.LCOLDE3:
	.section	.text.krhino_sched_disable
.LHOTE3:
	.section	.text.unlikely.core_sched,"ax",@progbits
.LCOLDB4:
	.section	.text.core_sched,"ax",@progbits
.LHOTB4:
	.globl	core_sched
	.type	core_sched, @function
core_sched:
.LFB14:
	.loc 1 124 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 129 0
	call	cpu_intrpt_save
.LVL28:
	.loc 1 133 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 129 0
	movl	%eax, %ebx
.LVL29:
	.loc 1 133 0
	jne	.L22
	.loc 1 138 0
	cmpb	$0, g_sched_lock
	jne	.L22
.LVL30:
.LBB66:
.LBB67:
	.loc 1 365 0
	movzbl	g_ready_queue+256, %eax
.LVL31:
	.loc 1 367 0
	movl	g_ready_queue(,%eax,4), %eax
	subl	$24, %eax
.LVL32:
.LBE67:
.LBE66:
	.loc 1 146 0
	cmpl	%eax, g_active_task
	je	.L22
	.loc 1 151 0
	movl	%eax, g_preferred_ready_task
	.loc 1 159 0
	call	cpu_task_switch
.LVL33:
.L22:
	.loc 1 161 0
	subl	$12, %esp
	pushl	%ebx
	call	cpu_intrpt_restore
.LVL34:
	addl	$16, %esp
	.loc 1 162 0
	movl	-4(%ebp), %ebx
.LVL35:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	core_sched, .-core_sched
	.section	.text.unlikely.core_sched
.LCOLDE4:
	.section	.text.core_sched
.LHOTE4:
	.section	.text.unlikely.krhino_sched_enable,"ax",@progbits
.LCOLDB5:
	.section	.text.krhino_sched_enable,"ax",@progbits
.LHOTB5:
	.globl	krhino_sched_enable
	.type	krhino_sched_enable, @function
krhino_sched_enable:
.LFB13:
	.loc 1 58 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 61 0
	call	cpu_intrpt_save
.LVL36:
	.loc 1 63 0
	cmpb	$0, g_intrpt_nested_level
	je	.L24
	.loc 1 63 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL37:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L25
.LVL38:
.L24:
	.loc 1 65 0 is_stmt 1
	movb	g_sched_lock, %dl
	testb	%dl, %dl
	jne	.L26
	.loc 1 66 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL39:
	.loc 1 67 0
	addl	$16, %esp
	movl	$201, %eax
	jmp	.L25
.LVL40:
.L26:
	.loc 1 70 0
	decl	%edx
	.loc 1 72 0
	testb	%dl, %dl
	.loc 1 70 0
	movb	%dl, g_sched_lock
	.loc 1 72 0
	je	.L27
	.loc 1 73 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL41:
	.loc 1 74 0
	addl	$16, %esp
	movl	$200, %eax
	jmp	.L25
.LVL42:
.L27:
	.loc 1 81 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL43:
	call	core_sched
.LVL44:
	.loc 1 83 0
	addl	$16, %esp
	xorl	%eax, %eax
.L25:
	.loc 1 84 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	krhino_sched_enable, .-krhino_sched_enable
	.section	.text.unlikely.krhino_sched_enable
.LCOLDE5:
	.section	.text.krhino_sched_enable
.LHOTE5:
	.section	.text.unlikely.runqueue_init,"ax",@progbits
.LCOLDB6:
	.section	.text.runqueue_init,"ax",@progbits
.LHOTB6:
	.globl	runqueue_init
	.type	runqueue_init, @function
runqueue_init:
.LFB15:
	.loc 1 166 0
	.cfi_startproc
.LVL45:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 169 0
	xorl	%eax, %eax
	.loc 1 166 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 166 0
	movl	8(%ebp), %edx
	.loc 1 169 0
	movb	$62, 256(%edx)
.LVL46:
.L30:
	.loc 1 172 0 discriminator 3
	movl	$0, (%edx,%eax)
	addl	$4, %eax
	.loc 1 171 0 discriminator 3
	cmpl	$248, %eax
	jne	.L30
	.loc 1 174 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	runqueue_init, .-runqueue_init
	.section	.text.unlikely.runqueue_init
.LCOLDE6:
	.section	.text.runqueue_init
.LHOTE6:
	.section	.text.unlikely.ready_list_add_head,"ax",@progbits
.LCOLDB7:
	.section	.text.ready_list_add_head,"ax",@progbits
.LHOTB7:
	.globl	ready_list_add_head
	.type	ready_list_add_head, @function
ready_list_add_head:
.LFB20:
	.loc 1 262 0
	.cfi_startproc
.LVL47:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 263 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	.loc 1 264 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 263 0
	jmp	_ready_list_add_head
.LVL48:
	.cfi_endproc
.LFE20:
	.size	ready_list_add_head, .-ready_list_add_head
	.section	.text.unlikely.ready_list_add_head
.LCOLDE7:
	.section	.text.ready_list_add_head
.LHOTE7:
	.section	.text.unlikely.ready_list_add_tail,"ax",@progbits
.LCOLDB8:
	.section	.text.ready_list_add_tail,"ax",@progbits
.LHOTB8:
	.globl	ready_list_add_tail
	.type	ready_list_add_tail, @function
ready_list_add_tail:
.LFB21:
	.loc 1 267 0
	.cfi_startproc
.LVL49:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 268 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	.loc 1 269 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 268 0
	jmp	_ready_list_add_tail
.LVL50:
	.cfi_endproc
.LFE21:
	.size	ready_list_add_tail, .-ready_list_add_tail
	.section	.text.unlikely.ready_list_add_tail
.LCOLDE8:
	.section	.text.ready_list_add_tail
.LHOTE8:
	.section	.text.unlikely.ready_list_add,"ax",@progbits
.LCOLDB9:
	.section	.text.ready_list_add,"ax",@progbits
.LHOTB9:
	.globl	ready_list_add
	.type	ready_list_add, @function
ready_list_add:
.LFB22:
	.loc 1 273 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 275 0
	movl	g_active_task, %ecx
	.loc 1 273 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 273 0
	movl	12(%ebp), %edx
	.loc 1 275 0
	movb	119(%ecx), %cl
	.loc 1 273 0
	movl	8(%ebp), %eax
	.loc 1 275 0
	cmpb	%cl, 119(%edx)
	jne	.L38
.LVL52:
	.loc 1 280 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB68:
.LBB69:
	.loc 1 268 0
	jmp	_ready_list_add_tail
.LVL53:
.L38:
	.cfi_restore_state
.LBE69:
.LBE68:
	.loc 1 280 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB70:
.LBB71:
	.loc 1 263 0
	jmp	_ready_list_add_head
.LVL54:
.LBE71:
.LBE70:
	.cfi_endproc
.LFE22:
	.size	ready_list_add, .-ready_list_add
	.section	.text.unlikely.ready_list_add
.LCOLDE9:
	.section	.text.ready_list_add
.LHOTE9:
	.section	.text.unlikely.ready_list_rm,"ax",@progbits
.LCOLDB10:
	.section	.text.ready_list_rm,"ax",@progbits
.LHOTB10:
	.globl	ready_list_rm
	.type	ready_list_rm, @function
ready_list_rm:
.LFB23:
	.loc 1 283 0
	.cfi_startproc
.LVL55:
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
	.loc 1 283 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	.loc 1 285 0
	movzbl	119(%eax), %ecx
	leal	(%edx,%ecx,4), %ebx
	movb	%cl, -25(%ebp)
.LVL56:
	.loc 1 288 0
	movl	(%ebx), %esi
	movl	(%esi), %edi
	cmpl	%edi, %esi
	je	.L41
	.loc 1 289 0
	leal	24(%eax), %edx
	cmpl	%edx, %esi
	jne	.L42
	.loc 1 290 0
	movl	%edi, (%ebx)
.L42:
.LVL57:
.LBB78:
.LBB79:
	.loc 3 46 0
	movl	28(%eax), %edx
.LVL58:
	movl	24(%eax), %ecx
.LVL59:
	movl	%ecx, (%edx)
	.loc 3 47 0
	movl	24(%eax), %eax
.LVL60:
	movl	%edx, 4(%eax)
	jmp	.L40
.LVL61:
.L41:
.LBE79:
.LBE78:
	.loc 1 298 0
	movl	$0, (%ebx)
.LBB80:
.LBB81:
	.loc 2 46 0
	movl	%ecx, %eax
.LBE81:
.LBE80:
	.loc 1 300 0
	leal	248(%edx), %ebx
.LVL62:
.LBB83:
.LBB82:
	.loc 2 46 0
	notl	%ecx
.LVL63:
	movl	$1, %esi
	sarl	$5, %eax
.LVL64:
	sall	%cl, %esi
	notl	%esi
	andl	%esi, (%ebx,%eax,4)
.LVL65:
.LBE82:
.LBE83:
	.loc 1 304 0
	movb	-25(%ebp), %al
	cmpb	256(%edx), %al
	jne	.L40
	xorl	%eax, %eax
.L44:
.LVL66:
.LBB84:
.LBB85:
	.loc 2 126 0
	movl	(%ebx), %ecx
	testl	%ecx, %ecx
	jne	.L53
	addl	$32, %eax
.LVL67:
	.loc 2 128 0
	addl	$4, %ebx
.LVL68:
	jmp	.L44
.L53:
.LVL69:
	.loc 2 134 0
	testl	$-65536, %ecx
	jne	.L46
	.loc 2 135 0
	sall	$16, %ecx
.LVL70:
	.loc 2 136 0
	addl	$16, %eax
.LVL71:
.L46:
	.loc 2 139 0
	testl	$-16777216, %ecx
	jne	.L47
	.loc 2 140 0
	sall	$8, %ecx
.LVL72:
	.loc 2 141 0
	addl	$8, %eax
.LVL73:
.L47:
	.loc 2 144 0
	testl	$-268435456, %ecx
	jne	.L48
	.loc 2 145 0
	sall	$4, %ecx
.LVL74:
	.loc 2 146 0
	addl	$4, %eax
.LVL75:
.L48:
	.loc 2 149 0
	testl	$-1073741824, %ecx
	jne	.L49
	.loc 2 150 0
	sall	$2, %ecx
.LVL76:
	.loc 2 151 0
	addl	$2, %eax
.LVL77:
.L49:
	.loc 2 155 0
	cmpl	$-2147483648, %ecx
	adcl	$0, %eax
.LVL78:
.LBE85:
.LBE84:
	.loc 1 312 0
	testl	%eax, %eax
	js	.L51
	.loc 1 313 0
	movb	%al, 256(%edx)
	jmp	.L40
.L51:
	.loc 1 315 0
	movl	$1, 8(%ebp)
.LVL79:
	.loc 1 317 0
	addl	$28, %esp
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
	.loc 1 315 0
	jmp	k_err_proc
.LVL80:
.L40:
	.cfi_restore_state
	.loc 1 317 0
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
.LFE23:
	.size	ready_list_rm, .-ready_list_rm
	.section	.text.unlikely.ready_list_rm
.LCOLDE10:
	.section	.text.ready_list_rm
.LHOTE10:
	.section	.text.unlikely.ready_list_head_to_tail,"ax",@progbits
.LCOLDB11:
	.section	.text.ready_list_head_to_tail,"ax",@progbits
.LHOTB11:
	.globl	ready_list_head_to_tail
	.type	ready_list_head_to_tail, @function
ready_list_head_to_tail:
.LFB24:
	.loc 1 320 0
	.cfi_startproc
.LVL81:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movzbl	119(%eax), %eax
	leal	(%edx,%eax,4), %eax
	.loc 1 321 0
	movl	(%eax), %edx
	movl	(%edx), %edx
	movl	%edx, (%eax)
	.loc 1 322 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	ready_list_head_to_tail, .-ready_list_head_to_tail
	.section	.text.unlikely.ready_list_head_to_tail
.LCOLDE11:
	.section	.text.ready_list_head_to_tail
.LHOTE11:
	.section	.text.unlikely.preferred_cpu_ready_task_get,"ax",@progbits
.LCOLDB12:
	.section	.text.preferred_cpu_ready_task_get,"ax",@progbits
.LHOTB12:
	.globl	preferred_cpu_ready_task_get
	.type	preferred_cpu_ready_task_get, @function
preferred_cpu_ready_task_get:
.LFB25:
	.loc 1 364 0
	.cfi_startproc
.LVL82:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 364 0
	movl	8(%ebp), %eax
.LVL83:
	.loc 1 368 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 365 0
	movzbl	256(%eax), %edx
	.loc 1 367 0
	movl	(%eax,%edx,4), %eax
	subl	$24, %eax
	.loc 1 368 0
	ret
	.cfi_endproc
.LFE25:
	.size	preferred_cpu_ready_task_get, .-preferred_cpu_ready_task_get
	.section	.text.unlikely.preferred_cpu_ready_task_get
.LCOLDE12:
	.section	.text.preferred_cpu_ready_task_get
.LHOTE12:
	.section	.text.unlikely.time_slice_update,"ax",@progbits
.LCOLDB13:
	.section	.text.time_slice_update,"ax",@progbits
.LHOTB13:
	.globl	time_slice_update
	.type	time_slice_update, @function
time_slice_update:
.LFB26:
	.loc 1 432 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 439 0
	call	cpu_intrpt_save
.LVL84:
	.loc 1 440 0
	movl	g_active_task, %edx
	.loc 1 442 0
	movzbl	119(%edx), %edx
	movl	g_ready_queue(,%edx,4), %edx
.LVL85:
	.loc 1 445 0
	testl	%edx, %edx
	je	.L69
.LVL86:
	.loc 1 453 0
	cmpb	$0, 93(%edx)
	je	.L69
	.loc 1 460 0
	cmpl	(%edx), %edx
	je	.L69
	.loc 1 465 0
	movl	76(%edx), %ecx
	testl	%ecx, %ecx
	je	.L63
	.loc 1 466 0
	decl	%ecx
	movl	%ecx, 76(%edx)
.LVL87:
.L63:
	.loc 1 470 0
	cmpl	$0, 76(%edx)
	jne	.L69
.LVL88:
.LBB86:
.LBB87:
	.loc 1 321 0
	movzbl	95(%edx), %ecx
	movl	g_ready_queue(,%ecx,4), %ebx
	movl	(%ebx), %ebx
	movl	%ebx, g_ready_queue(,%ecx,4)
.LBE87:
.LBE86:
	.loc 1 479 0
	movl	80(%edx), %ecx
	movl	%ecx, 76(%edx)
.LVL89:
.L69:
	.loc 1 481 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL90:
	addl	$16, %esp
	.loc 1 482 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	time_slice_update, .-time_slice_update
	.section	.text.unlikely.time_slice_update
.LCOLDE13:
	.section	.text.time_slice_update
.LHOTE13:
	.text
.Letext0:
	.section	.text.unlikely.ready_list_init
.Letext_cold0:
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 7 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 8 "./kernel/rhino/core/include/k_err.h"
	.file 9 "./kernel/rhino/core/include/k_sys.h"
	.file 10 "./kernel/rhino/core/include/k_obj.h"
	.file 11 "./kernel/rhino/core/include/k_sched.h"
	.file 12 "./kernel/rhino/core/include/k_task.h"
	.file 13 "./kernel/rhino/core/include/k_mutex.h"
	.file 14 "./kernel/rhino/core/include/k_sem.h"
	.file 15 "./kernel/rhino/core/include/k_internal.h"
	.file 16 "././platform/arch/arm/armv5/./gcc/port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xeda
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF207
	.byte	0xc
	.long	.LASF208
	.long	.LASF209
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x4
	.byte	0xd8
	.long	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x5
	.byte	0x1d
	.long	0x5e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x5
	.byte	0x3f
	.long	0x7e
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x5
	.byte	0x41
	.long	0x90
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0x5b
	.long	0xa2
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x6
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF16
	.byte	0x6
	.byte	0x2c
	.long	0x73
	.uleb128 0x3
	.long	.LASF17
	.byte	0x6
	.byte	0x30
	.long	0x85
	.uleb128 0x3
	.long	.LASF18
	.byte	0x6
	.byte	0x3c
	.long	0x97
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF20
	.uleb128 0x3
	.long	.LASF21
	.byte	0x7
	.byte	0xe
	.long	0xde
	.uleb128 0x3
	.long	.LASF22
	.byte	0x7
	.byte	0xf
	.long	0xbf
	.uleb128 0x3
	.long	.LASF23
	.byte	0x7
	.byte	0x10
	.long	0xbf
	.uleb128 0x3
	.long	.LASF24
	.byte	0x7
	.byte	0x13
	.long	0xbf
	.uleb128 0x3
	.long	.LASF25
	.byte	0x7
	.byte	0x14
	.long	0xa9
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x8
	.long	0x2c8
	.uleb128 0x7
	.long	.LASF26
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x1
	.uleb128 0x7
	.long	.LASF28
	.byte	0x2
	.uleb128 0x7
	.long	.LASF29
	.byte	0x3
	.uleb128 0x7
	.long	.LASF30
	.byte	0x4
	.uleb128 0x7
	.long	.LASF31
	.byte	0x5
	.uleb128 0x7
	.long	.LASF32
	.byte	0x6
	.uleb128 0x7
	.long	.LASF33
	.byte	0x7
	.uleb128 0x7
	.long	.LASF34
	.byte	0x8
	.uleb128 0x7
	.long	.LASF35
	.byte	0x9
	.uleb128 0x7
	.long	.LASF36
	.byte	0xa
	.uleb128 0x7
	.long	.LASF37
	.byte	0xb
	.uleb128 0x7
	.long	.LASF38
	.byte	0xc
	.uleb128 0x7
	.long	.LASF39
	.byte	0xd
	.uleb128 0x7
	.long	.LASF40
	.byte	0x64
	.uleb128 0x7
	.long	.LASF41
	.byte	0x65
	.uleb128 0x7
	.long	.LASF42
	.byte	0x66
	.uleb128 0x7
	.long	.LASF43
	.byte	0x67
	.uleb128 0x7
	.long	.LASF44
	.byte	0x68
	.uleb128 0x7
	.long	.LASF45
	.byte	0x69
	.uleb128 0x7
	.long	.LASF46
	.byte	0x6a
	.uleb128 0x7
	.long	.LASF47
	.byte	0x6b
	.uleb128 0x7
	.long	.LASF48
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF49
	.byte	0xc9
	.uleb128 0x7
	.long	.LASF50
	.byte	0xca
	.uleb128 0x7
	.long	.LASF51
	.byte	0xcb
	.uleb128 0x8
	.long	.LASF52
	.value	0x12c
	.uleb128 0x8
	.long	.LASF53
	.value	0x12d
	.uleb128 0x8
	.long	.LASF54
	.value	0x12e
	.uleb128 0x8
	.long	.LASF55
	.value	0x12f
	.uleb128 0x8
	.long	.LASF56
	.value	0x130
	.uleb128 0x8
	.long	.LASF57
	.value	0x131
	.uleb128 0x8
	.long	.LASF58
	.value	0x132
	.uleb128 0x8
	.long	.LASF59
	.value	0x133
	.uleb128 0x8
	.long	.LASF60
	.value	0x134
	.uleb128 0x8
	.long	.LASF61
	.value	0x190
	.uleb128 0x8
	.long	.LASF62
	.value	0x191
	.uleb128 0x8
	.long	.LASF63
	.value	0x192
	.uleb128 0x8
	.long	.LASF64
	.value	0x193
	.uleb128 0x8
	.long	.LASF65
	.value	0x194
	.uleb128 0x8
	.long	.LASF66
	.value	0x195
	.uleb128 0x8
	.long	.LASF67
	.value	0x1f4
	.uleb128 0x8
	.long	.LASF68
	.value	0x258
	.uleb128 0x8
	.long	.LASF69
	.value	0x2bc
	.uleb128 0x8
	.long	.LASF70
	.value	0x2bd
	.uleb128 0x8
	.long	.LASF71
	.value	0x2be
	.uleb128 0x8
	.long	.LASF72
	.value	0x2bf
	.uleb128 0x8
	.long	.LASF73
	.value	0x2c0
	.uleb128 0x8
	.long	.LASF74
	.value	0x2c1
	.uleb128 0x8
	.long	.LASF75
	.value	0x320
	.uleb128 0x8
	.long	.LASF76
	.value	0x321
	.uleb128 0x8
	.long	.LASF77
	.value	0x384
	.uleb128 0x8
	.long	.LASF78
	.value	0x385
	.uleb128 0x8
	.long	.LASF79
	.value	0x386
	.uleb128 0x8
	.long	.LASF80
	.value	0x3e8
	.uleb128 0x8
	.long	.LASF81
	.value	0x3e9
	.uleb128 0x8
	.long	.LASF82
	.value	0x44c
	.uleb128 0x8
	.long	.LASF83
	.value	0x44d
	.uleb128 0x8
	.long	.LASF84
	.value	0x44e
	.uleb128 0x8
	.long	.LASF85
	.value	0x44f
	.uleb128 0x8
	.long	.LASF86
	.value	0x450
	.uleb128 0x8
	.long	.LASF87
	.value	0x4b0
	.uleb128 0x8
	.long	.LASF88
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF89
	.byte	0x8
	.byte	0x54
	.long	0x11c
	.uleb128 0x3
	.long	.LASF90
	.byte	0x9
	.byte	0x15
	.long	0xca
	.uleb128 0x9
	.long	.LASF112
	.byte	0x8
	.byte	0x3
	.byte	0x8
	.long	0x303
	.uleb128 0xa
	.long	.LASF91
	.byte	0x3
	.byte	0x9
	.long	0x303
	.byte	0
	.uleb128 0xa
	.long	.LASF92
	.byte	0x3
	.byte	0xa
	.long	0x303
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2de
	.uleb128 0x3
	.long	.LASF93
	.byte	0x3
	.byte	0xb
	.long	0x2de
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0x8
	.long	0x32d
	.uleb128 0x7
	.long	.LASF94
	.byte	0
	.uleb128 0x7
	.long	.LASF95
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF96
	.byte	0xa
	.byte	0xb
	.long	0x314
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0xd
	.long	0x363
	.uleb128 0x7
	.long	.LASF97
	.byte	0
	.uleb128 0x7
	.long	.LASF98
	.byte	0x1
	.uleb128 0x7
	.long	.LASF99
	.byte	0x2
	.uleb128 0x7
	.long	.LASF100
	.byte	0x3
	.uleb128 0x7
	.long	.LASF101
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF102
	.byte	0xa
	.byte	0x13
	.long	0x338
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0x15
	.long	0x3ab
	.uleb128 0x7
	.long	.LASF103
	.byte	0
	.uleb128 0x7
	.long	.LASF104
	.byte	0x1
	.uleb128 0x7
	.long	.LASF105
	.byte	0x2
	.uleb128 0x7
	.long	.LASF106
	.byte	0x3
	.uleb128 0x7
	.long	.LASF107
	.byte	0x4
	.uleb128 0x7
	.long	.LASF108
	.byte	0x5
	.uleb128 0x7
	.long	.LASF109
	.byte	0x6
	.uleb128 0x7
	.long	.LASF110
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF111
	.byte	0xa
	.byte	0x1e
	.long	0x36e
	.uleb128 0x9
	.long	.LASF113
	.byte	0x14
	.byte	0xa
	.byte	0x20
	.long	0x3f3
	.uleb128 0xa
	.long	.LASF114
	.byte	0xa
	.byte	0x21
	.long	0x309
	.byte	0
	.uleb128 0xa
	.long	.LASF115
	.byte	0xa
	.byte	0x22
	.long	0x3f3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF116
	.byte	0xa
	.byte	0x23
	.long	0x32d
	.byte	0xc
	.uleb128 0xa
	.long	.LASF117
	.byte	0xa
	.byte	0x24
	.long	0x3ab
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x3f9
	.uleb128 0xc
	.long	0xe5
	.uleb128 0x3
	.long	.LASF118
	.byte	0xa
	.byte	0x25
	.long	0x3b6
	.uleb128 0xd
	.value	0x104
	.byte	0xb
	.byte	0xd
	.long	0x438
	.uleb128 0xa
	.long	.LASF119
	.byte	0xb
	.byte	0xe
	.long	0x438
	.byte	0
	.uleb128 0xa
	.long	.LASF120
	.byte	0xb
	.byte	0xf
	.long	0x44e
	.byte	0xf8
	.uleb128 0xe
	.long	.LASF121
	.byte	0xb
	.byte	0x10
	.long	0xa9
	.value	0x100
	.byte	0
	.uleb128 0xf
	.long	0x448
	.long	0x448
	.uleb128 0x10
	.long	0xd5
	.byte	0x3d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x309
	.uleb128 0xf
	.long	0xbf
	.long	0x45e
	.uleb128 0x10
	.long	0xd5
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF122
	.byte	0xb
	.byte	0x11
	.long	0x409
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xc
	.byte	0x8
	.long	0x4a6
	.uleb128 0x7
	.long	.LASF123
	.byte	0
	.uleb128 0x7
	.long	.LASF124
	.byte	0x1
	.uleb128 0x7
	.long	.LASF125
	.byte	0x2
	.uleb128 0x7
	.long	.LASF126
	.byte	0x3
	.uleb128 0x7
	.long	.LASF127
	.byte	0x4
	.uleb128 0x7
	.long	.LASF128
	.byte	0x5
	.uleb128 0x7
	.long	.LASF129
	.byte	0x6
	.uleb128 0x7
	.long	.LASF130
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF131
	.byte	0xc
	.byte	0x11
	.long	0x469
	.uleb128 0x11
	.byte	0x7c
	.byte	0xc
	.byte	0x15
	.long	0x616
	.uleb128 0xa
	.long	.LASF132
	.byte	0xc
	.byte	0x18
	.long	0xdc
	.byte	0
	.uleb128 0xa
	.long	.LASF133
	.byte	0xc
	.byte	0x1a
	.long	0x3f3
	.byte	0x4
	.uleb128 0xa
	.long	.LASF134
	.byte	0xc
	.byte	0x1d
	.long	0x616
	.byte	0x8
	.uleb128 0xa
	.long	.LASF135
	.byte	0xc
	.byte	0x20
	.long	0x626
	.byte	0x10
	.uleb128 0xa
	.long	.LASF136
	.byte	0xc
	.byte	0x21
	.long	0xbf
	.byte	0x14
	.uleb128 0xa
	.long	.LASF137
	.byte	0xc
	.byte	0x22
	.long	0x309
	.byte	0x18
	.uleb128 0xa
	.long	.LASF138
	.byte	0xc
	.byte	0x25
	.long	0x111
	.byte	0x20
	.uleb128 0xa
	.long	.LASF139
	.byte	0xc
	.byte	0x28
	.long	0x681
	.byte	0x24
	.uleb128 0xa
	.long	.LASF140
	.byte	0xc
	.byte	0x2b
	.long	0x309
	.byte	0x28
	.uleb128 0xa
	.long	.LASF141
	.byte	0xc
	.byte	0x2e
	.long	0x309
	.byte	0x30
	.uleb128 0xa
	.long	.LASF142
	.byte	0xc
	.byte	0x2f
	.long	0x2d3
	.byte	0x38
	.uleb128 0xa
	.long	.LASF143
	.byte	0xc
	.byte	0x30
	.long	0x2d3
	.byte	0x40
	.uleb128 0xa
	.long	.LASF144
	.byte	0xc
	.byte	0x31
	.long	0x448
	.byte	0x48
	.uleb128 0x12
	.string	"msg"
	.byte	0xc
	.byte	0x33
	.long	0xdc
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF145
	.byte	0xc
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF146
	.byte	0xc
	.byte	0x39
	.long	0x4a6
	.byte	0x54
	.uleb128 0xa
	.long	.LASF147
	.byte	0xc
	.byte	0x3a
	.long	0x363
	.byte	0x58
	.uleb128 0xa
	.long	.LASF113
	.byte	0xc
	.byte	0x3d
	.long	0x687
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF148
	.byte	0xc
	.byte	0x40
	.long	0x6d6
	.byte	0x60
	.uleb128 0xa
	.long	.LASF149
	.byte	0xc
	.byte	0x56
	.long	0xbf
	.byte	0x64
	.uleb128 0xa
	.long	.LASF150
	.byte	0xc
	.byte	0x57
	.long	0xbf
	.byte	0x68
	.uleb128 0xa
	.long	.LASF151
	.byte	0xc
	.byte	0x5b
	.long	0xbf
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF152
	.byte	0xc
	.byte	0x5c
	.long	0xdc
	.byte	0x70
	.uleb128 0xa
	.long	.LASF153
	.byte	0xc
	.byte	0x5d
	.long	0xa9
	.byte	0x74
	.uleb128 0xa
	.long	.LASF154
	.byte	0xc
	.byte	0x61
	.long	0xa9
	.byte	0x75
	.uleb128 0xa
	.long	.LASF155
	.byte	0xc
	.byte	0x64
	.long	0xa9
	.byte	0x76
	.uleb128 0xa
	.long	.LASF156
	.byte	0xc
	.byte	0x6c
	.long	0xa9
	.byte	0x77
	.uleb128 0xa
	.long	.LASF157
	.byte	0xc
	.byte	0x6e
	.long	0xa9
	.byte	0x78
	.uleb128 0xa
	.long	.LASF158
	.byte	0xc
	.byte	0x6f
	.long	0xa9
	.byte	0x79
	.byte	0
	.uleb128 0xf
	.long	0xdc
	.long	0x626
	.uleb128 0x10
	.long	0xd5
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xfb
	.uleb128 0x9
	.long	.LASF159
	.byte	0x2c
	.byte	0xd
	.byte	0x8
	.long	0x681
	.uleb128 0xa
	.long	.LASF113
	.byte	0xd
	.byte	0x9
	.long	0x3fe
	.byte	0
	.uleb128 0xa
	.long	.LASF160
	.byte	0xd
	.byte	0xa
	.long	0x6e7
	.byte	0x14
	.uleb128 0xa
	.long	.LASF139
	.byte	0xd
	.byte	0xb
	.long	0x681
	.byte	0x18
	.uleb128 0xa
	.long	.LASF161
	.byte	0xd
	.byte	0xc
	.long	0x106
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF162
	.byte	0xd
	.byte	0xf
	.long	0x309
	.byte	0x20
	.uleb128 0xa
	.long	.LASF158
	.byte	0xd
	.byte	0x12
	.long	0xa9
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x62c
	.uleb128 0xb
	.byte	0x4
	.long	0x3fe
	.uleb128 0x9
	.long	.LASF163
	.byte	0x28
	.byte	0xe
	.byte	0xb
	.long	0x6d6
	.uleb128 0xa
	.long	.LASF113
	.byte	0xe
	.byte	0xc
	.long	0x3fe
	.byte	0
	.uleb128 0xa
	.long	.LASF164
	.byte	0xe
	.byte	0xd
	.long	0xf0
	.byte	0x14
	.uleb128 0xa
	.long	.LASF165
	.byte	0xe
	.byte	0xe
	.long	0xf0
	.byte	0x18
	.uleb128 0xa
	.long	.LASF166
	.byte	0xe
	.byte	0x10
	.long	0x309
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF158
	.byte	0xe
	.byte	0x12
	.long	0xa9
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x68d
	.uleb128 0x3
	.long	.LASF167
	.byte	0xc
	.byte	0x70
	.long	0x4b1
	.uleb128 0xb
	.byte	0x4
	.long	0x6dc
	.uleb128 0xf
	.long	0xa9
	.long	0x6fd
	.uleb128 0x10
	.long	0xd5
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF173
	.byte	0x3
	.byte	0xf
	.byte	0x3
	.long	0x715
	.uleb128 0x14
	.long	.LASF168
	.byte	0x3
	.byte	0xf
	.long	0x448
	.byte	0
	.uleb128 0x15
	.long	.LASF193
	.byte	0x1
	.byte	0xbb
	.long	0xa9
	.byte	0x3
	.long	0x731
	.uleb128 0x14
	.long	.LASF156
	.byte	0x1
	.byte	0xbb
	.long	0xa9
	.byte	0
	.uleb128 0x16
	.long	.LASF210
	.byte	0x10
	.byte	0xf
	.long	0xa9
	.byte	0x3
	.uleb128 0x17
	.long	.LASF170
	.byte	0x1
	.value	0x10a
	.byte	0x1
	.long	0x762
	.uleb128 0x18
	.string	"rq"
	.byte	0x1
	.value	0x10a
	.long	0x762
	.uleb128 0x19
	.long	.LASF169
	.byte	0x1
	.value	0x10a
	.long	0x6e7
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x45e
	.uleb128 0x17
	.long	.LASF171
	.byte	0x1
	.value	0x105
	.byte	0x1
	.long	0x78d
	.uleb128 0x18
	.string	"rq"
	.byte	0x1
	.value	0x105
	.long	0x762
	.uleb128 0x19
	.long	.LASF169
	.byte	0x1
	.value	0x105
	.long	0x6e7
	.byte	0
	.uleb128 0x1a
	.long	.LASF211
	.byte	0x1
	.value	0x16b
	.long	0x6e7
	.byte	0x1
	.long	0x7c2
	.uleb128 0x18
	.string	"rq"
	.byte	0x1
	.value	0x16b
	.long	0x762
	.uleb128 0x19
	.long	.LASF155
	.byte	0x1
	.value	0x16b
	.long	0xa9
	.uleb128 0x1b
	.long	.LASF183
	.byte	0x1
	.value	0x16d
	.long	0x448
	.byte	0
	.uleb128 0x17
	.long	.LASF172
	.byte	0x1
	.value	0x13f
	.byte	0x1
	.long	0x7e7
	.uleb128 0x18
	.string	"rq"
	.byte	0x1
	.value	0x13f
	.long	0x762
	.uleb128 0x19
	.long	.LASF169
	.byte	0x1
	.value	0x13f
	.long	0x6e7
	.byte	0
	.uleb128 0x13
	.long	.LASF174
	.byte	0x2
	.byte	0x21
	.byte	0x3
	.long	0x809
	.uleb128 0x14
	.long	.LASF175
	.byte	0x2
	.byte	0x21
	.long	0x809
	.uleb128 0x1c
	.string	"nr"
	.byte	0x2
	.byte	0x21
	.long	0xb4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xbf
	.uleb128 0x1d
	.long	.LASF179
	.byte	0x1
	.byte	0xb0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x87f
	.uleb128 0x1e
	.string	"rq"
	.byte	0x1
	.byte	0xb0
	.long	0x762
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x1
	.byte	0xb0
	.long	0x6e7
	.long	.LLST0
	.uleb128 0x20
	.long	0x7e7
	.long	.LBB42
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xb4
	.long	0x865
	.uleb128 0x21
	.long	0x7fe
	.long	.LLST1
	.uleb128 0x21
	.long	0x7f3
	.long	.LLST2
	.byte	0
	.uleb128 0x22
	.long	0x6fd
	.long	.LBB45
	.long	.LBE45-.LBB45
	.byte	0x1
	.byte	0xb3
	.uleb128 0x21
	.long	0x709
	.long	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF176
	.byte	0x3
	.byte	0x1a
	.byte	0x3
	.long	0x8a2
	.uleb128 0x14
	.long	.LASF177
	.byte	0x3
	.byte	0x1a
	.long	0x448
	.uleb128 0x14
	.long	.LASF178
	.byte	0x3
	.byte	0x1a
	.long	0x448
	.byte	0
	.uleb128 0x1d
	.long	.LASF180
	.byte	0x1
	.byte	0xca
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x930
	.uleb128 0x23
	.string	"rq"
	.byte	0x1
	.byte	0xca
	.long	0x762
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x1
	.byte	0xca
	.long	0x6e7
	.long	.LLST5
	.uleb128 0x24
	.long	0x715
	.long	.LBB52
	.long	.LBE52-.LBB52
	.byte	0x1
	.byte	0xcc
	.long	0x8f1
	.uleb128 0x21
	.long	0x725
	.long	.LLST6
	.byte	0
	.uleb128 0x20
	.long	0x87f
	.long	.LBB54
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xd1
	.long	0x917
	.uleb128 0x21
	.long	0x896
	.long	.LLST7
	.uleb128 0x21
	.long	0x88b
	.long	.LLST8
	.byte	0
	.uleb128 0x25
	.long	.LVL10
	.long	0x80f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LASF181
	.byte	0x1
	.byte	0xc0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ba
	.uleb128 0x23
	.string	"rq"
	.byte	0x1
	.byte	0xc0
	.long	0x762
	.long	.LLST9
	.uleb128 0x1f
	.long	.LASF169
	.byte	0x1
	.byte	0xc0
	.long	0x6e7
	.long	.LLST10
	.uleb128 0x24
	.long	0x715
	.long	.LBB62
	.long	.LBE62-.LBB62
	.byte	0x1
	.byte	0xc2
	.long	0x97f
	.uleb128 0x21
	.long	0x725
	.long	.LLST11
	.byte	0
	.uleb128 0x24
	.long	0x87f
	.long	.LBB64
	.long	.LBE64-.LBB64
	.byte	0x1
	.byte	0xc7
	.long	0x9a1
	.uleb128 0x27
	.long	0x896
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x27
	.long	0x88b
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x25
	.long	.LVL18
	.long	0x80f
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF186
	.byte	0x1
	.byte	0x21
	.long	0x2c8
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xa07
	.uleb128 0x29
	.long	.LASF182
	.byte	0x1
	.byte	0x23
	.long	0x2c
	.long	.LLST12
	.uleb128 0x2a
	.long	.LVL22
	.long	0xeb1
	.uleb128 0x2a
	.long	.LVL23
	.long	0xebc
	.uleb128 0x2a
	.long	.LVL25
	.long	0xebc
	.uleb128 0x2a
	.long	.LVL27
	.long	0xebc
	.byte	0
	.uleb128 0x2b
	.long	.LASF188
	.byte	0x1
	.byte	0x7b
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa8e
	.uleb128 0x29
	.long	.LASF182
	.byte	0x1
	.byte	0x7d
	.long	0x2c
	.long	.LLST13
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.byte	0x7e
	.long	0xa9
	.uleb128 0x2c
	.long	.LASF185
	.byte	0x1
	.byte	0x7f
	.long	0x6e7
	.uleb128 0x24
	.long	0x78d
	.long	.LBB66
	.long	.LBE66-.LBB66
	.byte	0x1
	.byte	0x8f
	.long	0xa72
	.uleb128 0x21
	.long	0x7a9
	.long	.LLST14
	.uleb128 0x2d
	.long	0x79e
	.uleb128 0x2e
	.long	.LBB67
	.long	.LBE67-.LBB67
	.uleb128 0x2f
	.long	0x7b5
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LVL28
	.long	0xeb1
	.uleb128 0x2a
	.long	.LVL33
	.long	0xec7
	.uleb128 0x2a
	.long	.LVL34
	.long	0xebc
	.byte	0
	.uleb128 0x28
	.long	.LASF187
	.byte	0x1
	.byte	0x39
	.long	0x2c8
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xaed
	.uleb128 0x29
	.long	.LASF182
	.byte	0x1
	.byte	0x3b
	.long	0x2c
	.long	.LLST15
	.uleb128 0x2a
	.long	.LVL36
	.long	0xeb1
	.uleb128 0x2a
	.long	.LVL37
	.long	0xebc
	.uleb128 0x2a
	.long	.LVL39
	.long	0xebc
	.uleb128 0x2a
	.long	.LVL41
	.long	0xebc
	.uleb128 0x2a
	.long	.LVL43
	.long	0xebc
	.uleb128 0x2a
	.long	.LVL44
	.long	0xa07
	.byte	0
	.uleb128 0x2b
	.long	.LASF189
	.byte	0x1
	.byte	0xa5
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1b
	.uleb128 0x1e
	.string	"rq"
	.byte	0x1
	.byte	0xa5
	.long	0x762
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF156
	.byte	0x1
	.byte	0xa7
	.long	0xa9
	.byte	0
	.uleb128 0x30
	.long	0x768
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xb57
	.uleb128 0x27
	.long	0x775
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	0x780
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LVL48
	.long	0x8a2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x73d
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xb93
	.uleb128 0x27
	.long	0x74a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	0x755
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LVL50
	.long	0x930
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF190
	.byte	0x1
	.value	0x110
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xc43
	.uleb128 0x32
	.string	"rq"
	.byte	0x1
	.value	0x110
	.long	0x762
	.long	.LLST16
	.uleb128 0x33
	.long	.LASF169
	.byte	0x1
	.value	0x110
	.long	0x6e7
	.long	.LLST17
	.uleb128 0x34
	.long	0x73d
	.long	.LBB68
	.long	.LBE68-.LBB68
	.byte	0x1
	.value	0x114
	.long	0xc07
	.uleb128 0x21
	.long	0x755
	.long	.LLST18
	.uleb128 0x21
	.long	0x74a
	.long	.LLST19
	.uleb128 0x25
	.long	.LVL53
	.long	0x930
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0x768
	.long	.LBB70
	.long	.LBE70-.LBB70
	.byte	0x1
	.value	0x116
	.uleb128 0x21
	.long	0x780
	.long	.LLST20
	.uleb128 0x21
	.long	0x775
	.long	.LLST21
	.uleb128 0x25
	.long	.LVL54
	.long	0x8a2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LASF191
	.byte	0x3
	.byte	0x2c
	.byte	0x3
	.long	0xc5b
	.uleb128 0x14
	.long	.LASF178
	.byte	0x3
	.byte	0x2c
	.long	0x448
	.byte	0
	.uleb128 0x13
	.long	.LASF192
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.long	0xc7d
	.uleb128 0x14
	.long	.LASF175
	.byte	0x2
	.byte	0x2c
	.long	0x809
	.uleb128 0x1c
	.string	"nr"
	.byte	0x2
	.byte	0x2c
	.long	0xb4
	.byte	0
	.uleb128 0x15
	.long	.LASF194
	.byte	0x2
	.byte	0x79
	.long	0xb4
	.byte	0x3
	.long	0xcae
	.uleb128 0x14
	.long	.LASF175
	.byte	0x2
	.byte	0x79
	.long	0x809
	.uleb128 0x36
	.string	"nr"
	.byte	0x2
	.byte	0x7b
	.long	0xb4
	.uleb128 0x36
	.string	"tmp"
	.byte	0x2
	.byte	0x7c
	.long	0xbf
	.byte	0
	.uleb128 0x31
	.long	.LASF195
	.byte	0x1
	.value	0x11a
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xd87
	.uleb128 0x32
	.string	"rq"
	.byte	0x1
	.value	0x11a
	.long	0x762
	.long	.LLST22
	.uleb128 0x37
	.long	.LASF169
	.byte	0x1
	.value	0x11a
	.long	0x6e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"i"
	.byte	0x1
	.value	0x11c
	.long	0xb4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x39
	.string	"pri"
	.byte	0x1
	.value	0x11d
	.long	0xa9
	.long	.LLST23
	.uleb128 0x34
	.long	0xc43
	.long	.LBB78
	.long	.LBE78-.LBB78
	.byte	0x1
	.value	0x125
	.long	0xd1c
	.uleb128 0x21
	.long	0xc4f
	.long	.LLST24
	.byte	0
	.uleb128 0x3a
	.long	0xc5b
	.long	.LBB80
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x12c
	.long	0xd43
	.uleb128 0x21
	.long	0xc72
	.long	.LLST25
	.uleb128 0x21
	.long	0xc67
	.long	.LLST26
	.byte	0
	.uleb128 0x34
	.long	0xc7d
	.long	.LBB84
	.long	.LBE84-.LBB84
	.byte	0x1
	.value	0x135
	.long	0xd7d
	.uleb128 0x21
	.long	0xc8d
	.long	.LLST27
	.uleb128 0x2e
	.long	.LBB85
	.long	.LBE85-.LBB85
	.uleb128 0x3b
	.long	0xc98
	.long	.LLST28
	.uleb128 0x3b
	.long	0xca2
	.long	.LLST29
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL80
	.long	0xed2
	.byte	0
	.uleb128 0x30
	.long	0x7c2
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xdab
	.uleb128 0x27
	.long	0x7cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	0x7da
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x30
	.long	0x78d
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xde6
	.uleb128 0x27
	.long	0x79e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	0x7a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3d
	.long	0x7b5
	.uleb128 0x11
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x100
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0
	.uleb128 0x31
	.long	.LASF196
	.byte	0x1
	.value	0x1af
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6a
	.uleb128 0x3e
	.long	.LASF182
	.byte	0x1
	.value	0x1b1
	.long	0x2c
	.long	.LLST30
	.uleb128 0x3e
	.long	.LASF169
	.byte	0x1
	.value	0x1b3
	.long	0x6e7
	.long	.LLST31
	.uleb128 0x3e
	.long	.LASF177
	.byte	0x1
	.value	0x1b4
	.long	0x448
	.long	.LLST32
	.uleb128 0x1b
	.long	.LASF197
	.byte	0x1
	.value	0x1b5
	.long	0xa9
	.uleb128 0x34
	.long	0x7c2
	.long	.LBB86
	.long	.LBE86-.LBB86
	.byte	0x1
	.value	0x1dc
	.long	0xe57
	.uleb128 0x2d
	.long	0x7da
	.uleb128 0x2d
	.long	0x7cf
	.byte	0
	.uleb128 0x2a
	.long	.LVL84
	.long	0xeb1
	.uleb128 0x2a
	.long	.LVL90
	.long	0xebc
	.byte	0
	.uleb128 0x3f
	.long	.LASF198
	.byte	0xf
	.byte	0xb
	.long	0x45e
	.uleb128 0x3f
	.long	.LASF199
	.byte	0xf
	.byte	0xe
	.long	0x6ed
	.uleb128 0x3f
	.long	.LASF200
	.byte	0xf
	.byte	0xf
	.long	0x6ed
	.uleb128 0xf
	.long	0x6e7
	.long	0xe9b
	.uleb128 0x10
	.long	0xd5
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	.LASF201
	.byte	0xf
	.byte	0x12
	.long	0xe8b
	.uleb128 0x3f
	.long	.LASF202
	.byte	0xf
	.byte	0x15
	.long	0xe8b
	.uleb128 0x40
	.long	.LASF203
	.long	.LASF203
	.byte	0x10
	.byte	0x8
	.uleb128 0x40
	.long	.LASF204
	.long	.LASF204
	.byte	0x10
	.byte	0x9
	.uleb128 0x40
	.long	.LASF205
	.long	.LASF205
	.byte	0x10
	.byte	0xb
	.uleb128 0x40
	.long	.LASF206
	.long	.LASF206
	.byte	0xf
	.byte	0x9e
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
	.uleb128 0xe
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0xe
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL7
	.value	0x1
	.byte	0x52
	.long	.LVL7
	.long	.LFE16
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.value	0x9
	.byte	0x72
	.sleb128 119
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x51
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	.LVL5
	.long	.LVL6
	.value	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL6
	.value	0x4
	.byte	0x70
	.sleb128 248
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL10-1
	.long	.LVL10
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL10
	.long	.LFE19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL10-1
	.value	0x1
	.byte	0x52
	.long	.LVL10-1
	.long	.LVL10
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL10
	.long	.LVL14
	.value	0x1
	.byte	0x52
	.long	.LVL14
	.long	.LVL15
	.value	0x3
	.byte	0x73
	.sleb128 -24
	.byte	0x9f
	.long	.LVL15
	.long	.LFE19
	.value	0x6
	.byte	0x71
	.sleb128 4
	.byte	0x6
	.byte	0x48
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL8
	.long	.LVL9
	.value	0x3
	.byte	0x72
	.sleb128 119
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL11
	.long	.LVL13
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL18-1
	.value	0x1
	.byte	0x50
	.long	.LVL18-1
	.long	.LVL18
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LFE18
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL16
	.long	.LVL18-1
	.value	0x1
	.byte	0x52
	.long	.LVL18-1
	.long	.LVL18
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL18
	.long	.LVL21
	.value	0x1
	.byte	0x52
	.long	.LVL21
	.long	.LFE18
	.value	0x3
	.byte	0x71
	.sleb128 -24
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL16
	.long	.LVL17
	.value	0x3
	.byte	0x72
	.sleb128 119
	.long	0
	.long	0
.LLST12:
	.long	.LVL22
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL25-1
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LVL27-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL29
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL35
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL30
	.long	.LVL32
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LVL39-1
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL41-1
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL43-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL51
	.long	.LVL53
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL53
	.long	.LVL54-1
	.value	0x1
	.byte	0x50
	.long	.LVL54-1
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST17:
	.long	.LVL51
	.long	.LVL53
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL53
	.long	.LVL54-1
	.value	0x1
	.byte	0x52
	.long	.LVL54-1
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST18:
	.long	.LVL52
	.long	.LVL53
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST19:
	.long	.LVL52
	.long	.LVL53
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL53
	.long	.LVL54-1
	.value	0x1
	.byte	0x52
	.long	.LVL54-1
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST21:
	.long	.LVL53
	.long	.LVL54-1
	.value	0x1
	.byte	0x50
	.long	.LVL54-1
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL55
	.long	.LVL79
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL80
	.long	.LFE23
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST23:
	.long	.LVL56
	.long	.LVL59
	.value	0x1
	.byte	0x51
	.long	.LVL59
	.long	.LVL61
	.value	0x2
	.byte	0x91
	.sleb128 -33
	.long	.LVL61
	.long	.LVL63
	.value	0x1
	.byte	0x51
	.long	.LVL63
	.long	.LFE23
	.value	0x2
	.byte	0x91
	.sleb128 -33
	.long	0
	.long	0
.LLST24:
	.long	.LVL57
	.long	.LVL58
	.value	0x1
	.byte	0x52
	.long	.LVL58
	.long	.LVL60
	.value	0x3
	.byte	0x70
	.sleb128 24
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
	.value	0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL62
	.long	.LVL64
	.value	0x1
	.byte	0x50
	.long	.LVL64
	.long	.LVL65
	.value	0x4
	.byte	0x71
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL62
	.long	.LVL65
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL66
	.long	.LVL78
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST28:
	.long	.LVL66
	.long	.LVL78
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL69
	.long	.LVL78
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST30:
	.long	.LVL84
	.long	.LVL90-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST31:
	.long	.LVL86
	.long	.LVL89
	.value	0x3
	.byte	0x72
	.sleb128 -24
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL85
	.long	.LVL90-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x84
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB15
	.long	.LFE15-.LFB15
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB42
	.long	.LBE42
	.long	.LBB47
	.long	.LBE47
	.long	0
	.long	0
	.long	.LBB54
	.long	.LBE54
	.long	.LBB57
	.long	.LBE57
	.long	0
	.long	0
	.long	.LBB80
	.long	.LBE80
	.long	.LBB83
	.long	.LBE83
	.long	0
	.long	0
	.long	.LFB16
	.long	.LFE16
	.long	.LFB19
	.long	.LFE19
	.long	.LFB18
	.long	.LFE18
	.long	.LFB12
	.long	.LFE12
	.long	.LFB14
	.long	.LFE14
	.long	.LFB13
	.long	.LFE13
	.long	.LFB15
	.long	.LFE15
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.string	"RHINO_NULL_PTR"
.LASF71:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF22:
	.string	"sem_count_t"
.LASF131:
	.string	"task_stat_t"
.LASF184:
	.string	"cur_cpu_num"
.LASF170:
	.string	"ready_list_add_tail"
.LASF25:
	.string	"suspend_nested_t"
.LASF210:
	.string	"cpu_cur_get"
.LASF203:
	.string	"cpu_intrpt_save"
.LASF42:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF27:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF151:
	.string	"pend_flags"
.LASF141:
	.string	"tick_list"
.LASF90:
	.string	"tick_t"
.LASF0:
	.string	"unsigned int"
.LASF91:
	.string	"next"
.LASF59:
	.string	"RHINO_INV_TASK_STATE"
.LASF9:
	.string	"__int32_t"
.LASF44:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF81:
	.string	"RHINO_TRY_AGAIN"
.LASF50:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF60:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF80:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF106:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF74:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF158:
	.string	"mm_alloc_flag"
.LASF37:
	.string	"RHINO_KOBJ_BLK"
.LASF92:
	.string	"prev"
.LASF65:
	.string	"RHINO_BLK_INV_STATE"
.LASF49:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF98:
	.string	"BLK_ABORT"
.LASF197:
	.string	"task_pri"
.LASF171:
	.string	"ready_list_add_head"
.LASF176:
	.string	"klist_insert"
.LASF53:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF148:
	.string	"task_sem_obj"
.LASF56:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF195:
	.string	"ready_list_rm"
.LASF173:
	.string	"klist_init"
.LASF17:
	.string	"uint32_t"
.LASF191:
	.string	"klist_rm"
.LASF139:
	.string	"mutex_list"
.LASF47:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF40:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF164:
	.string	"count"
.LASF206:
	.string	"k_err_proc"
.LASF111:
	.string	"kobj_type_t"
.LASF54:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF14:
	.string	"long long unsigned int"
.LASF96:
	.string	"blk_policy_t"
.LASF72:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF26:
	.string	"RHINO_SUCCESS"
.LASF208:
	.string	"src/k_sched.c"
.LASF177:
	.string	"head"
.LASF150:
	.string	"time_total"
.LASF64:
	.string	"RHINO_BLK_DEL"
.LASF126:
	.string	"K_SUSPENDED"
.LASF62:
	.string	"RHINO_BLK_ABORT"
.LASF209:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"size_t"
.LASF86:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF138:
	.string	"suspend_count"
.LASF143:
	.string	"tick_remain"
.LASF153:
	.string	"pend_option"
.LASF38:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF185:
	.string	"preferred_task"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF122:
	.string	"runqueue_t"
.LASF13:
	.string	"__uint64_t"
.LASF30:
	.string	"RHINO_STOPPED"
.LASF146:
	.string	"task_state"
.LASF121:
	.string	"highest_pri"
.LASF66:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF76:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF75:
	.string	"RHINO_SEM_OVF"
.LASF87:
	.string	"RHINO_TASK_STACK_OVF"
.LASF110:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF31:
	.string	"RHINO_INV_PARAM"
.LASF97:
	.string	"BLK_FINISH"
.LASF82:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF20:
	.string	"char"
.LASF165:
	.string	"peak_count"
.LASF189:
	.string	"runqueue_init"
.LASF69:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF29:
	.string	"RHINO_RUNNING"
.LASF15:
	.string	"uint8_t"
.LASF192:
	.string	"krhino_bitmap_clear"
.LASF132:
	.string	"task_stack"
.LASF36:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF147:
	.string	"blk_state"
.LASF161:
	.string	"owner_nested"
.LASF186:
	.string	"krhino_sched_disable"
.LASF1:
	.string	"long long int"
.LASF63:
	.string	"RHINO_BLK_TIMEOUT"
.LASF133:
	.string	"task_name"
.LASF169:
	.string	"task"
.LASF157:
	.string	"b_prio"
.LASF142:
	.string	"tick_match"
.LASF100:
	.string	"BLK_DEL"
.LASF211:
	.string	"preferred_cpu_ready_task_get"
.LASF99:
	.string	"BLK_TIMEOUT"
.LASF58:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF125:
	.string	"K_PEND"
.LASF102:
	.string	"blk_state_t"
.LASF85:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF45:
	.string	"RHINO_NO_MEM"
.LASF137:
	.string	"task_list"
.LASF77:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF113:
	.string	"blk_obj"
.LASF112:
	.string	"klist_s"
.LASF93:
	.string	"klist_t"
.LASF73:
	.string	"RHINO_QUEUE_FULL"
.LASF152:
	.string	"pend_info"
.LASF114:
	.string	"blk_list"
.LASF68:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF202:
	.string	"g_active_task"
.LASF109:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF156:
	.string	"prio"
.LASF163:
	.string	"sem_s"
.LASF61:
	.string	"RHINO_NO_PEND_WAIT"
.LASF134:
	.string	"user_info"
.LASF2:
	.string	"long double"
.LASF89:
	.string	"kstat_t"
.LASF21:
	.string	"name_t"
.LASF140:
	.string	"task_stats_item"
.LASF41:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF160:
	.string	"mutex_task"
.LASF94:
	.string	"BLK_POLICY_PRI"
.LASF201:
	.string	"g_preferred_ready_task"
.LASF7:
	.string	"short int"
.LASF10:
	.string	"long int"
.LASF135:
	.string	"task_stack_base"
.LASF204:
	.string	"cpu_intrpt_restore"
.LASF123:
	.string	"K_SEED"
.LASF166:
	.string	"sem_item"
.LASF124:
	.string	"K_RDY"
.LASF179:
	.string	"ready_list_init"
.LASF167:
	.string	"ktask_t"
.LASF181:
	.string	"_ready_list_add_tail"
.LASF174:
	.string	"krhino_bitmap_set"
.LASF172:
	.string	"ready_list_head_to_tail"
.LASF183:
	.string	"node"
.LASF18:
	.string	"uint64_t"
.LASF129:
	.string	"K_SLEEP_SUSPENDED"
.LASF78:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF105:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF46:
	.string	"RHINO_RINGBUF_FULL"
.LASF196:
	.string	"time_slice_update"
.LASF115:
	.string	"name"
.LASF119:
	.string	"cur_list_item"
.LASF205:
	.string	"cpu_task_switch"
.LASF128:
	.string	"K_SLEEP"
.LASF79:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF182:
	.string	"cpsr"
.LASF23:
	.string	"cpu_stack_t"
.LASF52:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF118:
	.string	"blk_obj_t"
.LASF67:
	.string	"RHINO_TIMER_STATE_INV"
.LASF149:
	.string	"time_slice"
.LASF19:
	.string	"sizetype"
.LASF12:
	.string	"long unsigned int"
.LASF95:
	.string	"BLK_POLICY_FIFO"
.LASF103:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF16:
	.string	"int32_t"
.LASF33:
	.string	"RHINO_INV_ALIGN"
.LASF43:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF51:
	.string	"RHINO_INV_SCHED_WAY"
.LASF57:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF190:
	.string	"ready_list_add"
.LASF144:
	.string	"tick_head"
.LASF159:
	.string	"mutex_s"
.LASF6:
	.string	"unsigned char"
.LASF175:
	.string	"bitmap"
.LASF11:
	.string	"__uint32_t"
.LASF207:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF180:
	.string	"_ready_list_add_head"
.LASF117:
	.string	"obj_type"
.LASF88:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF188:
	.string	"core_sched"
.LASF35:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF120:
	.string	"task_bit_map"
.LASF193:
	.string	"is_ready_list_empty"
.LASF168:
	.string	"list_head"
.LASF24:
	.string	"mutex_nested_t"
.LASF194:
	.string	"krhino_find_first_bit"
.LASF136:
	.string	"stack_size"
.LASF108:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF178:
	.string	"element"
.LASF198:
	.string	"g_ready_queue"
.LASF187:
	.string	"krhino_sched_enable"
.LASF127:
	.string	"K_PEND_SUSPENDED"
.LASF55:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF3:
	.string	"signed char"
.LASF162:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF48:
	.string	"RHINO_SCHED_DISABLE"
.LASF104:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF154:
	.string	"sched_policy"
.LASF116:
	.string	"blk_policy"
.LASF70:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF130:
	.string	"K_DELETED"
.LASF107:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF200:
	.string	"g_intrpt_nested_level"
.LASF155:
	.string	"cpu_num"
.LASF199:
	.string	"g_sched_lock"
.LASF83:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF145:
	.string	"bq_msg_size"
.LASF34:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF101:
	.string	"BLK_INVALID"
.LASF28:
	.string	"RHINO_SYS_SP_ERR"
.LASF39:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
