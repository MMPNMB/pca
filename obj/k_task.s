	.file	"k_task.c"
	.text
.Ltext0:
	.section	.text.unlikely.klist_rm,"ax",@progbits
.LCOLDB0:
	.section	.text.klist_rm,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.klist_rm
.Ltext_cold0:
	.section	.text.klist_rm
	.type	klist_rm, @function
klist_rm:
.LFB9:
	.file 1 "./kernel/rhino/core/include/k_list.h"
	.loc 1 45 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 46 0
	movl	4(%eax), %edx
	movl	(%eax), %ecx
	.loc 1 45 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 46 0
	movl	%ecx, (%edx)
	.loc 1 47 0
	movl	(%eax), %eax
.LVL1:
	movl	%edx, 4(%eax)
	.loc 1 48 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE9:
	.size	klist_rm, .-klist_rm
	.section	.text.unlikely.klist_rm
.LCOLDE0:
	.section	.text.klist_rm
.LHOTE0:
	.section	.text.unlikely.task_mutex_free.isra.1,"ax",@progbits
.LCOLDB1:
	.section	.text.task_mutex_free.isra.1,"ax",@progbits
.LHOTB1:
	.type	task_mutex_free.isra.1, @function
task_mutex_free.isra.1:
.LFB38:
	.file 2 "kernel/rhino/core/k_task.c"
	.loc 2 692 0
	.cfi_startproc
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
	movl	%eax, %ebx
.LVL2:
	subl	$28, %esp
.L4:
.LVL3:
	.loc 2 701 0
	testl	%ebx, %ebx
	je	.L10
.LBB56:
.LBB57:
	.loc 1 23 0
	movl	(%ebx), %esi
.LBE57:
.LBE56:
	.loc 2 702 0
	movl	24(%ebx), %eax
	.loc 2 706 0
	cmpl	%esi, %ebx
	.loc 2 702 0
	movl	%eax, -28(%ebp)
.LVL4:
	.loc 2 706 0
	je	.L5
	.loc 2 707 0
	leal	-24(%esi), %edi
.LVL5:
	.loc 2 710 0
	subl	$12, %esp
	pushl	%edi
	call	pend_task_wakeup
.LVL6:
	.loc 2 714 0
	movl	12(%esi), %eax
	.loc 2 713 0
	movl	%edi, 20(%ebx)
	.loc 2 715 0
	addl	$16, %esp
	.loc 2 714 0
	movl	%eax, 24(%ebx)
	.loc 2 715 0
	movl	%ebx, 12(%esi)
	jmp	.L6
.LVL7:
.L5:
	.loc 2 718 0
	movl	$0, 20(%ebx)
.LVL8:
.L6:
	.loc 2 692 0
	movl	-28(%ebp), %ebx
.LVL9:
	jmp	.L4
.LVL10:
.L10:
	.loc 2 721 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL11:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	task_mutex_free.isra.1, .-task_mutex_free.isra.1
	.section	.text.unlikely.task_mutex_free.isra.1
.LCOLDE1:
	.section	.text.task_mutex_free.isra.1
.LHOTE1:
	.section	.text.unlikely.task_create.part.0,"ax",@progbits
.LCOLDB2:
	.section	.text.task_create.part.0,"ax",@progbits
.LHOTB2:
	.type	task_create.part.0, @function
task_create.part.0:
.LFB37:
	.loc 2 7 0
	.cfi_startproc
.LVL12:
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
	movl	%eax, %ebx
	subl	$44, %esp
	.loc 2 7 0
	movl	8(%ebp), %eax
.LVL13:
	movl	%edx, -44(%ebp)
	movl	%ecx, -48(%ebp)
	movl	24(%ebp), %esi
	movl	%eax, -28(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -40(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	32(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	36(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 2 30 0
	call	cpu_intrpt_save
.LVL14:
	.loc 2 32 0
	cmpb	$0, g_intrpt_nested_level
	je	.L12
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL15:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L13
.LVL16:
.L12:
	.loc 2 35 0
	cmpb	$61, -28(%ebp)
	jne	.L14
	.loc 2 36 0
	movzbl	-36(%ebp), %edx
	cmpb	$0, g_idle_task_spawned(%edx)
	je	.L15
	.loc 2 37 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL17:
	addl	$16, %esp
	.loc 2 38 0
	movl	$308, %eax
	jmp	.L13
.LVL18:
.L15:
	.loc 2 41 0
	movb	$1, g_idle_task_spawned(%edx)
.L14:
	.loc 2 44 0
	subl	$12, %esp
	.loc 2 46 0
	movl	%ebx, %edi
	.loc 2 44 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL19:
	.loc 2 46 0
	xorl	%eax, %eax
	movl	$31, %ecx
	.loc 2 49 0
	addl	$16, %esp
	.loc 2 46 0
	rep stosl
	.loc 2 50 0
	movl	-56(%ebp), %eax
	orl	-40(%ebp), %eax
	movl	$50, %eax
	cmovne	-40(%ebp), %eax
	.loc 2 59 0
	cmpb	$0, -32(%ebp)
	.loc 2 56 0
	movb	$1, 117(%ebx)
	.loc 2 50 0
	movl	%eax, 104(%ebx)
	.loc 2 55 0
	movl	%eax, 100(%ebx)
	.loc 2 59 0
	je	.L18
	.loc 2 60 0
	movl	$1, 84(%ebx)
	jmp	.L19
.L18:
	.loc 2 62 0
	movl	$3, 84(%ebx)
	.loc 2 63 0
	movb	$1, 32(%ebx)
.L19:
	.loc 2 67 0
	movl	20(%ebp), %eax
	.loc 2 70 0
	movl	20(%ebp), %edi
	leal	0(,%esi,4), %ecx
	.loc 2 67 0
	movl	%eax, 16(%ebx)
.LVL20:
	.loc 2 70 0
	xorl	%eax, %eax
.LVL21:
	rep stosb
.LVL22:
	.loc 2 72 0
	movl	-44(%ebp), %eax
	.loc 2 75 0
	movl	%esi, 20(%ebx)
	.loc 2 72 0
	movl	%eax, 4(%ebx)
	.loc 2 73 0
	movb	-28(%ebp), %al
	movb	%al, 119(%ebx)
	.loc 2 74 0
	movb	%al, 120(%ebx)
	.loc 2 76 0
	movb	-52(%ebp), %al
	movb	%al, 121(%ebx)
	.loc 2 77 0
	movb	-36(%ebp), %al
	movb	%al, 118(%ebx)
.LVL23:
	.loc 2 89 0
	movl	16(%ebx), %eax
	movl	$-559038801, (%eax)
.LVL24:
	.loc 2 99 0
	pushl	28(%ebp)
	pushl	-48(%ebp)
	pushl	%esi
	pushl	20(%ebp)
	call	cpu_task_stack_init
.LVL25:
	movl	%eax, (%ebx)
	.loc 2 107 0
	call	cpu_intrpt_save
.LVL26:
	.loc 2 113 0
	addl	$16, %esp
	cmpb	$0, -32(%ebp)
.LBB60:
.LBB61:
	.loc 1 28 0
	movl	g_kobj_list+4, %edx
.LBE61:
.LBE60:
	.loc 2 107 0
	movl	%eax, %esi
.LVL27:
	.loc 2 110 0
	leal	40(%ebx), %eax
.LVL28:
.LBB63:
.LBB62:
	.loc 1 29 0
	movl	$g_kobj_list, 40(%ebx)
	.loc 1 28 0
	movl	%edx, 44(%ebx)
	.loc 1 31 0
	movl	%eax, (%edx)
	.loc 1 32 0
	movl	%eax, g_kobj_list+4
.LVL29:
.LBE62:
.LBE63:
	.loc 2 113 0
	je	.L20
	.loc 2 114 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add_tail
.LVL30:
	.loc 2 116 0
	addl	$16, %esp
	cmpl	$3, g_sys_stat
	jne	.L20
	.loc 2 117 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL31:
	call	core_sched
.LVL32:
	jmp	.L22
.L20:
	.loc 2 122 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL33:
.L22:
	addl	$16, %esp
	.loc 2 123 0
	xorl	%eax, %eax
.LVL34:
.L13:
	.loc 2 124 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL35:
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
	.size	task_create.part.0, .-task_create.part.0
	.section	.text.unlikely.task_create.part.0
.LCOLDE2:
	.section	.text.task_create.part.0
.LHOTE2:
	.section	.text.unlikely.krhino_task_create,"ax",@progbits
.LCOLDB3:
	.section	.text.krhino_task_create,"ax",@progbits
.LHOTB3:
	.globl	krhino_task_create
	.type	krhino_task_create, @function
krhino_task_create:
.LFB13:
	.loc 2 129 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL37:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 2 129 0
	movl	8(%ebp), %eax
	movl	28(%ebp), %ebx
	movl	40(%ebp), %edi
	movl	24(%ebp), %ecx
	movl	12(%ebp), %edx
.LVL38:
	movl	36(%ebp), %esi
	movl	%eax, -28(%ebp)
.LVL39:
	movl	16(%ebp), %eax
	movl	%ebx, -44(%ebp)
.LVL40:
	movl	32(%ebp), %ebx
.LVL41:
.LBB66:
.LBB67:
	.loc 2 20 0
	testl	%edi, %edi
.LBE67:
.LBE66:
	.loc 2 129 0
	movl	%ecx, -48(%ebp)
	movl	%eax, -36(%ebp)
.LVL42:
	movl	20(%ebp), %eax
	movl	%eax, -32(%ebp)
.LVL43:
	movl	44(%ebp), %eax
	movl	%eax, -40(%ebp)
.LVL44:
.LBB70:
.LBB68:
	.loc 2 20 0
	sete	%al
	testl	%ebx, %ebx
	movb	%al, %cl
	sete	%al
	orl	%ecx, %eax
	testl	%edx, %edx
	sete	%cl
	orb	%al, %cl
	jne	.L25
	cmpl	$0, -28(%ebp)
	je	.L25
	.loc 2 22 0
	testl	%esi, %esi
	.loc 2 23 0
	movl	$300, %eax
	.loc 2 22 0
	je	.L24
	.loc 2 26 0
	cmpb	$61, -32(%ebp)
	.loc 2 27 0
	movl	$305, %eax
	.loc 2 26 0
	ja	.L24
	movzbl	-40(%ebp), %eax
	movl	%edi, 28(%ebp)
.LVL45:
	movl	%esi, 24(%ebp)
	movl	-44(%ebp), %edi
.LVL46:
	movl	-48(%ebp), %esi
.LVL47:
	movl	%ebx, 20(%ebp)
.LVL48:
	movl	$0, 40(%ebp)
.LVL49:
	movl	$1, 36(%ebp)
.LVL50:
	movl	%eax, 32(%ebp)
.LVL51:
	movzbl	-32(%ebp), %eax
	movl	%esi, 12(%ebp)
.LVL52:
	movl	%edi, 16(%ebp)
.LVL53:
	movl	-36(%ebp), %ecx
	movl	%eax, 8(%ebp)
.LVL54:
	movl	-28(%ebp), %eax
.LBE68:
.LBE70:
	.loc 2 132 0
	addl	$44, %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL55:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB71:
.LBB69:
	jmp	task_create.part.0
.LVL56:
.L25:
	.cfi_restore_state
	.loc 2 20 0
	movl	$6, %eax
.L24:
.LVL57:
.LBE69:
.LBE71:
	.loc 2 132 0
	addl	$44, %esp
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
	.size	krhino_task_create, .-krhino_task_create
	.section	.text.unlikely.krhino_task_create
.LCOLDE3:
	.section	.text.krhino_task_create
.LHOTE3:
	.section	.text.unlikely.task_dyn_create,"ax",@progbits
.LCOLDB4:
	.section	.text.task_dyn_create,"ax",@progbits
.LHOTB4:
	.globl	task_dyn_create
	.type	task_dyn_create, @function
task_dyn_create:
.LFB14:
	.loc 2 186 0
	.cfi_startproc
.LVL58:
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
	.loc 2 191 0
	movl	$6, %edi
	.loc 2 186 0
	subl	$44, %esp
	.loc 2 186 0
	movl	20(%ebp), %eax
	.loc 2 191 0
	cmpl	$0, 8(%ebp)
	.loc 2 186 0
	movl	28(%ebp), %edx
	movl	%eax, -28(%ebp)
	movl	24(%ebp), %eax
	movl	%edx, -36(%ebp)
	movl	%eax, -40(%ebp)
	movl	40(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	48(%ebp), %eax
	movl	%eax, -44(%ebp)
	.loc 2 191 0
	je	.L31
	.loc 2 193 0
	cmpl	$0, 32(%ebp)
	.loc 2 194 0
	movl	$5, %edi
	.loc 2 193 0
	je	.L31
.LVL59:
.LBB76:
.LBB77:
	.loc 2 197 0
	movl	32(%ebp), %eax
	subl	$12, %esp
	.loc 2 199 0
	movl	$105, %edi
	.loc 2 197 0
	sall	$2, %eax
	pushl	%eax
	call	krhino_mm_alloc
.LVL60:
	.loc 2 198 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 2 197 0
	movl	%eax, %esi
.LVL61:
	.loc 2 198 0
	je	.L31
	.loc 2 202 0
	subl	$12, %esp
	pushl	$124
	call	krhino_mm_alloc
.LVL62:
	.loc 2 203 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 2 202 0
	movl	%eax, %ebx
.LVL63:
	.loc 2 203 0
	jne	.L32
	.loc 2 204 0
	subl	$12, %esp
	pushl	%esi
	call	krhino_mm_free
.LVL64:
	jmp	.L45
.LVL65:
.L32:
.LBB78:
.LBB79:
	.loc 2 19 0
	cmpl	$0, 36(%ebp)
.LBE79:
.LBE78:
	.loc 2 208 0
	movl	8(%ebp), %eax
.LVL66:
	movl	%ebx, (%eax)
.LVL67:
.LBB81:
.LBB80:
	.loc 2 19 0
	je	.L37
.LVL68:
	cmpl	$0, 12(%ebp)
	je	.L37
	.loc 2 26 0
	cmpb	$61, -28(%ebp)
	.loc 2 27 0
	movl	$305, %edi
	.loc 2 26 0
	ja	.L33
	movzbl	-32(%ebp), %eax
	subl	$12, %esp
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	pushl	%eax
	movzbl	-44(%ebp), %eax
	pushl	$2
	pushl	%eax
	movzbl	-28(%ebp), %eax
	pushl	36(%ebp)
	pushl	32(%ebp)
	pushl	%esi
	pushl	-36(%ebp)
	pushl	-40(%ebp)
	pushl	%eax
	movl	%ebx, %eax
	call	task_create.part.0
.LVL69:
	addl	$48, %esp
	movl	%eax, %edi
	jmp	.L33
.L37:
	.loc 2 19 0
	movl	$6, %edi
.L33:
.LVL70:
.LBE80:
.LBE81:
	.loc 2 212 0
	testl	$-5, %edi
	je	.L31
	.loc 2 213 0
	subl	$12, %esp
	pushl	%esi
	call	krhino_mm_free
.LVL71:
	.loc 2 214 0
	movl	%ebx, (%esp)
	call	krhino_mm_free
.LVL72:
	.loc 2 215 0
	movl	8(%ebp), %eax
	movl	$0, (%eax)
.LVL73:
.L45:
	addl	$16, %esp
.LVL74:
.L31:
.LBE77:
.LBE76:
	.loc 2 220 0
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
.LFE14:
	.size	task_dyn_create, .-task_dyn_create
	.section	.text.unlikely.task_dyn_create
.LCOLDE4:
	.section	.text.task_dyn_create
.LHOTE4:
	.section	.text.unlikely.krhino_task_dyn_create,"ax",@progbits
.LCOLDB5:
	.section	.text.krhino_task_dyn_create,"ax",@progbits
.LHOTB5:
	.globl	krhino_task_dyn_create
	.type	krhino_task_dyn_create, @function
krhino_task_dyn_create:
.LFB15:
	.loc 2 225 0
	.cfi_startproc
.LVL75:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 2 226 0
	movzbl	40(%ebp), %eax
	pushl	%eax
	movzbl	20(%ebp), %eax
	pushl	$0
	pushl	$0
	pushl	36(%ebp)
	pushl	32(%ebp)
	pushl	28(%ebp)
	pushl	24(%ebp)
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	task_dyn_create
.LVL76:
	.loc 2 227 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	krhino_task_dyn_create, .-krhino_task_dyn_create
	.section	.text.unlikely.krhino_task_dyn_create
.LCOLDE5:
	.section	.text.krhino_task_dyn_create
.LHOTE5:
	.section	.text.unlikely.krhino_task_sleep,"ax",@progbits
.LCOLDB6:
	.section	.text.krhino_task_sleep,"ax",@progbits
.LHOTB6:
	.globl	krhino_task_sleep
	.type	krhino_task_sleep, @function
krhino_task_sleep:
.LFB16:
	.loc 2 240 0
	.cfi_startproc
.LVL77:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 2 248 0
	movl	$5, %eax
	.loc 2 240 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 2 240 0
	movl	12(%ebp), %edi
	movl	8(%ebp), %esi
	.loc 2 247 0
	movl	%edi, %edx
	orl	%esi, %edx
	je	.L49
	.loc 2 251 0
	call	cpu_intrpt_save
.LVL78:
	.loc 2 253 0
	cmpb	$0, g_intrpt_nested_level
	.loc 2 251 0
	movl	%eax, %ebx
.LVL79:
	.loc 2 253 0
	je	.L50
	.loc 2 253 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL80:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L49
.LVL81:
.L50:
	.loc 2 258 0 is_stmt 1
	cmpb	$0, g_sched_lock
	je	.L51
	.loc 2 259 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL82:
	.loc 2 260 0
	addl	$16, %esp
	movl	$200, %eax
	jmp	.L49
.LVL83:
.L51:
	.loc 2 263 0
	movl	g_active_task, %eax
.LVL84:
	movl	$5, 84(%eax)
	.loc 2 264 0
	pushl	%edx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	call	tick_list_insert
.LVL85:
	.loc 2 265 0
	popl	%ecx
	popl	%esi
	pushl	g_active_task
	pushl	$g_ready_queue
	call	ready_list_rm
.LVL86:
	.loc 2 269 0
	movl	%ebx, (%esp)
	call	cpu_intrpt_restore
.LVL87:
	call	core_sched
.LVL88:
	.loc 2 271 0
	call	cpu_intrpt_save
.LVL89:
	.loc 2 274 0
	popl	%edi
	pushl	g_active_task
	.loc 2 271 0
	movl	%eax, %ebx
.LVL90:
	.loc 2 274 0
	call	pend_state_end_proc
.LVL91:
	movl	%eax, %esi
.LVL92:
	.loc 2 276 0
	movl	%ebx, (%esp)
	call	cpu_intrpt_restore
.LVL93:
	.loc 2 278 0
	addl	$16, %esp
	movl	%esi, %eax
.LVL94:
.L49:
	.loc 2 279 0
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
.LFE16:
	.size	krhino_task_sleep, .-krhino_task_sleep
	.section	.text.unlikely.krhino_task_sleep
.LCOLDE6:
	.section	.text.krhino_task_sleep
.LHOTE6:
	.section	.text.unlikely.krhino_task_yield,"ax",@progbits
.LCOLDB7:
	.section	.text.krhino_task_yield,"ax",@progbits
.LHOTB7:
	.globl	krhino_task_yield
	.type	krhino_task_yield, @function
krhino_task_yield:
.LFB17:
	.loc 2 282 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 2 286 0
	call	cpu_intrpt_save
.LVL95:
	.loc 2 288 0
	pushl	%edx
	pushl	%edx
	.loc 2 286 0
	movl	%eax, %ebx
.LVL96:
	.loc 2 288 0
	pushl	g_active_task
	pushl	$g_ready_queue
	call	ready_list_head_to_tail
.LVL97:
	.loc 2 290 0
	movl	%ebx, (%esp)
	call	cpu_intrpt_restore
.LVL98:
	call	core_sched
.LVL99:
	.loc 2 293 0
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
.LVL100:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	krhino_task_yield, .-krhino_task_yield
	.section	.text.unlikely.krhino_task_yield
.LCOLDE7:
	.section	.text.krhino_task_yield
.LHOTE7:
	.section	.text.unlikely.krhino_cur_task_get,"ax",@progbits
.LCOLDB8:
	.section	.text.krhino_cur_task_get,"ax",@progbits
.LHOTB8:
	.globl	krhino_cur_task_get
	.type	krhino_cur_task_get, @function
krhino_cur_task_get:
.LFB18:
	.loc 2 296 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 2 300 0
	call	cpu_intrpt_save
.LVL101:
	.loc 2 301 0
	movl	g_active_task, %ebx
.LVL102:
	.loc 2 302 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL103:
	.loc 2 305 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL104:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	krhino_cur_task_get, .-krhino_cur_task_get
	.section	.text.unlikely.krhino_cur_task_get
.LCOLDE8:
	.section	.text.krhino_cur_task_get
.LHOTE8:
	.section	.text.unlikely.task_suspend,"ax",@progbits
.LCOLDB9:
	.section	.text.task_suspend,"ax",@progbits
.LHOTB9:
	.globl	task_suspend
	.type	task_suspend, @function
task_suspend:
.LFB19:
	.loc 2 308 0
	.cfi_startproc
.LVL105:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 308 0
	movl	8(%ebp), %ebx
	.loc 2 313 0
	call	cpu_intrpt_save
.LVL106:
	.loc 2 326 0
	cmpl	%ebx, g_active_task
	.loc 2 313 0
	movl	%eax, %esi
.LVL107:
	.loc 2 326 0
	jne	.L60
	.loc 2 327 0
	cmpb	$0, g_sched_lock
	je	.L60
	.loc 2 328 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL108:
	.loc 2 329 0
	addl	$16, %esp
	movl	$200, %eax
	jmp	.L61
.LVL109:
.L60:
	.loc 2 333 0
	movl	84(%ebx), %eax
.LVL110:
	decl	%eax
	cmpl	$5, %eax
	ja	.L62
	jmp	*.L64(,%eax,4)
	.section	.rodata.task_suspend,"a",@progbits
	.align 4
	.align 4
.L64:
	.long	.L63
	.long	.L65
	.long	.L66
	.long	.L66
	.long	.L67
	.long	.L66
	.section	.text.task_suspend
.L63:
	.loc 2 335 0
	movb	$1, 32(%ebx)
	.loc 2 336 0
	movl	$3, 84(%ebx)
	.loc 2 337 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_rm
.LVL111:
	.loc 2 338 0
	addl	$16, %esp
	jmp	.L68
.L67:
	.loc 2 340 0
	movb	$1, 32(%ebx)
	.loc 2 341 0
	movl	$6, 84(%ebx)
	.loc 2 342 0
	jmp	.L68
.L65:
	.loc 2 344 0
	movb	$1, 32(%ebx)
	.loc 2 345 0
	movl	$4, 84(%ebx)
	.loc 2 346 0
	jmp	.L68
.L66:
	.loc 2 350 0
	movb	32(%ebx), %al
	cmpb	$-1, %al
	jne	.L69
	.loc 2 351 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL112:
	.loc 2 352 0
	addl	$16, %esp
	movl	$304, %eax
	jmp	.L61
.L69:
	.loc 2 355 0
	incl	%eax
	movb	%al, 32(%ebx)
	.loc 2 356 0
	jmp	.L68
.L62:
	.loc 2 359 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL113:
	.loc 2 360 0
	addl	$16, %esp
	movl	$307, %eax
	jmp	.L61
.L68:
	.loc 2 365 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL114:
	call	core_sched
.LVL115:
	.loc 2 367 0
	addl	$16, %esp
	xorl	%eax, %eax
.L61:
	.loc 2 368 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL116:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	task_suspend, .-task_suspend
	.section	.text.unlikely.task_suspend
.LCOLDE9:
	.section	.text.task_suspend
.LHOTE9:
	.section	.text.unlikely.krhino_task_suspend,"ax",@progbits
.LCOLDB10:
	.section	.text.krhino_task_suspend,"ax",@progbits
.LHOTB10:
	.globl	krhino_task_suspend
	.type	krhino_task_suspend, @function
krhino_task_suspend:
.LFB20:
	.loc 2 371 0
	.cfi_startproc
.LVL117:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 371 0
	movl	8(%ebp), %edx
	.loc 2 372 0
	testl	%edx, %edx
	je	.L73
	.loc 2 376 0
	cmpb	$61, 119(%edx)
	.loc 2 377 0
	movl	$303, %eax
	.loc 2 376 0
	je	.L72
	.loc 2 381 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 2 380 0
	jmp	task_suspend
.LVL118:
.L73:
	.cfi_restore_state
	.loc 2 373 0
	movl	$6, %eax
.L72:
	.loc 2 381 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	krhino_task_suspend, .-krhino_task_suspend
	.section	.text.unlikely.krhino_task_suspend
.LCOLDE10:
	.section	.text.krhino_task_suspend
.LHOTE10:
	.section	.text.unlikely.task_resume,"ax",@progbits
.LCOLDB11:
	.section	.text.task_resume,"ax",@progbits
.LHOTB11:
	.globl	task_resume
	.type	task_resume, @function
task_resume:
.LFB21:
	.loc 2 384 0
	.cfi_startproc
.LVL119:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 384 0
	movl	8(%ebp), %ebx
	.loc 2 387 0
	call	cpu_intrpt_save
.LVL120:
	movl	%eax, %esi
.LVL121:
	.loc 2 389 0
	movl	84(%ebx), %eax
.LVL122:
	leal	-1(%eax), %edx
	cmpl	$5, %edx
	ja	.L77
	jmp	*.L79(,%edx,4)
	.section	.rodata.task_resume,"a",@progbits
	.align 4
	.align 4
.L79:
	.long	.L78
	.long	.L78
	.long	.L80
	.long	.L81
	.long	.L78
	.long	.L82
	.section	.text.task_resume
.L78:
	.loc 2 393 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL123:
	.loc 2 394 0
	addl	$16, %esp
	movl	$301, %eax
	jmp	.L83
.L80:
	.loc 2 396 0
	movb	32(%ebx), %al
	leal	-1(%eax), %edx
	.loc 2 398 0
	testb	%dl, %dl
	.loc 2 396 0
	movb	%dl, 32(%ebx)
	.loc 2 398 0
	jne	.L85
	.loc 2 400 0
	movl	$1, 84(%ebx)
	.loc 2 401 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add
.LVL124:
	addl	$16, %esp
	jmp	.L85
.L82:
	.loc 2 406 0
	movb	32(%ebx), %al
	leal	-1(%eax), %edx
	.loc 2 408 0
	testb	%dl, %dl
	.loc 2 406 0
	movb	%dl, 32(%ebx)
	.loc 2 408 0
	jne	.L85
	.loc 2 409 0
	movl	$5, 84(%ebx)
	jmp	.L85
.L81:
	.loc 2 414 0
	movb	32(%ebx), %al
	leal	-1(%eax), %edx
	.loc 2 416 0
	testb	%dl, %dl
	.loc 2 414 0
	movb	%dl, 32(%ebx)
	.loc 2 416 0
	jne	.L85
	.loc 2 417 0
	movl	$2, 84(%ebx)
	jmp	.L85
.L77:
	.loc 2 423 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL125:
	.loc 2 424 0
	addl	$16, %esp
	movl	$307, %eax
	jmp	.L83
.L85:
	.loc 2 429 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL126:
	call	core_sched
.LVL127:
	.loc 2 431 0
	addl	$16, %esp
	xorl	%eax, %eax
.L83:
	.loc 2 432 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL128:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	task_resume, .-task_resume
	.section	.text.unlikely.task_resume
.LCOLDE11:
	.section	.text.task_resume
.LHOTE11:
	.section	.text.unlikely.krhino_task_resume,"ax",@progbits
.LCOLDB12:
	.section	.text.krhino_task_resume,"ax",@progbits
.LHOTB12:
	.globl	krhino_task_resume
	.type	krhino_task_resume, @function
krhino_task_resume:
.LFB22:
	.loc 2 435 0
	.cfi_startproc
.LVL129:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 435 0
	movl	8(%ebp), %eax
	.loc 2 436 0
	testl	%eax, %eax
	je	.L88
	.loc 2 439 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 2 438 0
	jmp	task_resume
.LVL130:
.L88:
	.cfi_restore_state
	.loc 2 439 0
	movl	$6, %eax
.LVL131:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	krhino_task_resume, .-krhino_task_resume
	.section	.text.unlikely.krhino_task_resume
.LCOLDE12:
	.section	.text.krhino_task_resume
.LHOTE12:
	.section	.text.unlikely.krhino_task_stack_min_free,"ax",@progbits
.LCOLDB13:
	.section	.text.krhino_task_stack_min_free,"ax",@progbits
.LHOTB13:
	.globl	krhino_task_stack_min_free
	.type	krhino_task_stack_min_free, @function
krhino_task_stack_min_free:
.LFB23:
	.loc 2 442 0
	.cfi_startproc
.LVL132:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 2 442 0
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	.loc 2 447 0
	testl	%ecx, %ecx
	je	.L94
	testl	%edx, %edx
	je	.L94
	.loc 2 449 0
	cmpl	$7, 84(%edx)
	.loc 2 450 0
	movl	$307, %eax
	.loc 2 449 0
	je	.L91
	.loc 2 454 0
	movl	16(%edx), %edx
.LVL133:
	.loc 2 444 0
	xorl	%eax, %eax
.LVL134:
.L92:
	.loc 2 455 0
	cmpl	$0, 4(%edx,%eax,4)
	jne	.L97
	.loc 2 456 0
	incl	%eax
.LVL135:
	jmp	.L92
.LVL136:
.L97:
	.loc 2 466 0
	movl	%eax, (%ecx)
	.loc 2 468 0
	xorl	%eax, %eax
.LVL137:
	jmp	.L91
.LVL138:
.L94:
	.loc 2 447 0
	movl	$6, %eax
.LVL139:
.L91:
	.loc 2 469 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	krhino_task_stack_min_free, .-krhino_task_stack_min_free
	.section	.text.unlikely.krhino_task_stack_min_free
.LCOLDE13:
	.section	.text.krhino_task_stack_min_free
.LHOTE13:
	.section	.text.unlikely.krhino_task_stack_cur_free,"ax",@progbits
.LCOLDB14:
	.section	.text.krhino_task_stack_cur_free,"ax",@progbits
.LHOTB14:
	.globl	krhino_task_stack_cur_free
	.type	krhino_task_stack_cur_free, @function
krhino_task_stack_cur_free:
.LFB24:
	.loc 2 473 0
	.cfi_startproc
.LVL140:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 473 0
	movl	8(%ebp), %ebx
	.loc 2 477 0
	call	cpu_intrpt_save
.LVL141:
	movl	%eax, %esi
.LVL142:
	.loc 2 479 0
	testl	%ebx, %ebx
	je	.L99
	.loc 2 479 0
	cmpl	g_active_task, %ebx
	jne	.L100
.L99:
	.loc 2 480 0
	movl	g_active_task, %ebx
.LVL143:
	.loc 2 481 0
	call	soc_get_cur_sp
.LVL144:
	jmp	.L101
.LVL145:
.L100:
	.loc 2 483 0
	movl	(%ebx), %eax
.LVL146:
.L101:
	.loc 2 486 0
	testl	%eax, %eax
	jne	.L102
	.loc 2 487 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL147:
	.loc 2 488 0
	movl	$2, (%esp)
	call	k_err_proc
.LVL148:
	.loc 2 489 0
	addl	$16, %esp
	movl	$2, %eax
	jmp	.L103
.LVL149:
.L102:
	.loc 2 492 0
	movl	20(%ebx), %ecx
	movl	16(%ebx), %edx
	leal	(%edx,%ecx,4), %edx
	cmpl	%edx, %eax
	jbe	.L104
	.loc 2 493 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL150:
	.loc 2 494 0
	movl	$1200, (%esp)
	call	k_err_proc
.LVL151:
	.loc 2 495 0
	addl	$16, %esp
	movl	$1200, %eax
	jmp	.L103
.LVL152:
.L104:
	.loc 2 498 0
	subl	%eax, %edx
	movl	12(%ebp), %eax
.LVL153:
	.loc 2 501 0
	subl	$12, %esp
	.loc 2 498 0
	shrl	$2, %edx
	movl	%edx, (%eax)
	.loc 2 501 0
	pushl	%esi
	call	cpu_intrpt_restore
.LVL154:
	.loc 2 502 0
	addl	$16, %esp
	xorl	%eax, %eax
.L103:
	.loc 2 503 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL155:
	popl	%esi
	.cfi_restore 6
.LVL156:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	krhino_task_stack_cur_free, .-krhino_task_stack_cur_free
	.section	.text.unlikely.krhino_task_stack_cur_free
.LCOLDE14:
	.section	.text.krhino_task_stack_cur_free
.LHOTE14:
	.section	.text.unlikely.task_pri_change,"ax",@progbits
.LCOLDB15:
	.section	.text.task_pri_change,"ax",@progbits
.LHOTB15:
	.globl	task_pri_change
	.type	task_pri_change, @function
task_pri_change:
.LFB25:
	.loc 2 508 0
	.cfi_startproc
.LVL157:
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
	movl	8(%ebp), %ebx
	movb	12(%ebp), %al
.LVL158:
.L118:
	.loc 2 514 0
	movb	119(%ebx), %dl
	cmpb	%dl, %al
	je	.L115
	.loc 2 515 0
	movl	84(%ebx), %ecx
	cmpl	$6, %ecx
	ja	.L111
	movl	$1, %esi
	sall	%cl, %esi
	movl	%esi, %ecx
	testb	$20, %cl
	jne	.L112
	testb	$104, %cl
	jne	.L113
	andb	$2, %cl
	movb	%al, -9(%ebp)
	je	.L111
	.loc 2 517 0
	pushl	%esi
	pushl	%esi
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_rm
.LVL159:
	.loc 2 520 0
	addl	$16, %esp
	cmpl	g_active_task, %ebx
	.loc 2 518 0
	movb	-9(%ebp), %al
	movb	%al, 119(%ebx)
	.loc 2 520 0
	jne	.L114
	.loc 2 521 0
	pushl	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add_head
.LVL160:
	jmp	.L124
.L114:
	.loc 2 523 0
	pushl	%edx
	pushl	%edx
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add_tail
.LVL161:
.L124:
	addl	$16, %esp
	jmp	.L115
.LVL162:
.L113:
	.loc 2 532 0
	movb	%al, 119(%ebx)
.LVL163:
	.loc 2 534 0
	jmp	.L115
.LVL164:
.L112:
	.loc 2 539 0
	subl	$12, %esp
	.loc 2 538 0
	movb	%al, 119(%ebx)
	movb	%dl, -10(%ebp)
.LVL165:
	.loc 2 539 0
	pushl	%ebx
	.loc 2 538 0
	movb	%al, -9(%ebp)
	.loc 2 539 0
	call	pend_list_reorder
.LVL166:
	.loc 2 541 0
	movl	92(%ebx), %ecx
	addl	$16, %esp
	cmpl	$2, 16(%ecx)
	jne	.L115
.LVL167:
	.loc 2 543 0
	movl	20(%ecx), %esi
.LVL168:
	.loc 2 545 0
	movb	-9(%ebp), %al
	movb	119(%esi), %cl
.LVL169:
	cmpb	119(%ebx), %cl
	ja	.L116
	.loc 2 550 0
	movb	-10(%ebp), %dl
	cmpb	%cl, %dl
	jne	.L115
	.loc 2 552 0
	pushl	%eax
.LVL170:
	pushl	%eax
	pushl	$0
	pushl	%esi
	call	mutex_pri_look
.LVL171:
	.loc 2 554 0
	addl	$16, %esp
	cmpb	119(%esi), %al
	jne	.L116
	jmp	.L115
.LVL172:
.L111:
	.loc 2 569 0
	subl	$12, %esp
	pushl	$307
	call	k_err_proc
.LVL173:
	.loc 2 570 0
	addl	$16, %esp
	movl	$307, %eax
	jmp	.L122
.LVL174:
.L115:
	.loc 2 577 0
	xorl	%eax, %eax
	jmp	.L122
.LVL175:
.L116:
	.loc 2 508 0
	movl	%esi, %ebx
	jmp	.L118
.LVL176:
.L122:
	.loc 2 578 0
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
.LFE25:
	.size	task_pri_change, .-task_pri_change
	.section	.text.unlikely.task_pri_change
.LCOLDE15:
	.section	.text.task_pri_change
.LHOTE15:
	.section	.text.unlikely.krhino_task_pri_change,"ax",@progbits
.LCOLDB16:
	.section	.text.krhino_task_pri_change,"ax",@progbits
.LHOTB16:
	.globl	krhino_task_pri_change
	.type	krhino_task_pri_change, @function
krhino_task_pri_change:
.LFB26:
	.loc 2 581 0
	.cfi_startproc
.LVL177:
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
	.loc 2 581 0
	movl	8(%ebp), %edi
	movl	12(%ebp), %ebx
	.loc 2 588 0
	testl	%edi, %edi
	je	.L129
	cmpl	$0, 16(%ebp)
	je	.L129
	.loc 2 596 0
	cmpb	$60, 119(%edi)
	ja	.L130
	cmpb	$60, %bl
	ja	.L130
	.loc 2 601 0
	cmpl	$7, 84(%edi)
	.loc 2 602 0
	movl	$307, %eax
	.loc 2 601 0
	je	.L126
	.loc 2 605 0
	call	cpu_intrpt_save
.LVL178:
	.loc 2 607 0
	cmpb	$0, g_intrpt_nested_level
	.loc 2 605 0
	movl	%eax, %esi
.LVL179:
	.loc 2 607 0
	je	.L127
	.loc 2 607 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL180:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L126
.LVL181:
.L127:
	.loc 2 610 0 is_stmt 1
	movzbl	%bl, %eax
.LVL182:
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	%edi
	call	mutex_pri_limit
.LVL183:
	.loc 2 615 0
	movb	119(%edi), %cl
	movl	16(%ebp), %edx
	.loc 2 617 0
	movzbl	%al, %eax
	.loc 2 612 0
	movb	%bl, 120(%edi)
.LVL184:
	.loc 2 615 0
	movb	%cl, (%edx)
	.loc 2 617 0
	popl	%ecx
	popl	%ebx
	pushl	%eax
	pushl	%edi
	call	task_pri_change
.LVL185:
	.loc 2 619 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 2 617 0
	movl	%eax, %ebx
.LVL186:
	.loc 2 619 0
	je	.L128
	.loc 2 620 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL187:
	.loc 2 621 0
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L126
.L128:
	.loc 2 626 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL188:
	call	core_sched
.LVL189:
	.loc 2 628 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L126
.LVL190:
.L129:
	.loc 2 588 0
	movl	$6, %eax
	jmp	.L126
.L130:
	.loc 2 597 0
	movl	$306, %eax
.LVL191:
.L126:
	.loc 2 629 0
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
	.size	krhino_task_pri_change, .-krhino_task_pri_change
	.section	.text.unlikely.krhino_task_pri_change
.LCOLDE16:
	.section	.text.krhino_task_pri_change
.LHOTE16:
	.section	.text.unlikely.krhino_task_wait_abort,"ax",@progbits
.LCOLDB17:
	.section	.text.krhino_task_wait_abort,"ax",@progbits
.LHOTB17:
	.globl	krhino_task_wait_abort
	.type	krhino_task_wait_abort, @function
krhino_task_wait_abort:
.LFB27:
	.loc 2 634 0
	.cfi_startproc
.LVL192:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 2 637 0
	movl	$6, %eax
	.loc 2 634 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 634 0
	movl	8(%ebp), %ebx
	.loc 2 637 0
	testl	%ebx, %ebx
	je	.L134
	.loc 2 639 0
	call	cpu_intrpt_save
.LVL193:
	.loc 2 641 0
	cmpb	$0, g_intrpt_nested_level
	.loc 2 639 0
	movl	%eax, %esi
.LVL194:
	.loc 2 641 0
	je	.L135
	.loc 2 641 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL195:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L134
.LVL196:
.L135:
	.loc 2 643 0 is_stmt 1
	movl	84(%ebx), %eax
.LVL197:
	decl	%eax
	cmpl	$5, %eax
	ja	.L136
	jmp	*.L138(,%eax,4)
	.section	.rodata.krhino_task_wait_abort,"a",@progbits
	.align 4
	.align 4
.L138:
	.long	.L137
	.long	.L139
	.long	.L140
	.long	.L139
	.long	.L141
	.long	.L141
	.section	.text.krhino_task_wait_abort
.L140:
	.loc 2 648 0
	movl	$1, 84(%ebx)
	.loc 2 649 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add
.LVL198:
	jmp	.L145
.L141:
	.loc 2 654 0
	subl	$12, %esp
	pushl	%ebx
	call	tick_list_rm
.LVL199:
	.loc 2 655 0
	popl	%ecx
	popl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add
.LVL200:
	.loc 2 656 0
	movl	$1, 84(%ebx)
	.loc 2 657 0
	movl	$1, 88(%ebx)
	jmp	.L145
.L139:
	.loc 2 662 0
	subl	$12, %esp
	pushl	%ebx
	call	tick_list_rm
.LVL201:
	.loc 2 664 0
	leal	24(%ebx), %eax
	call	klist_rm
.LVL202:
	.loc 2 666 0
	popl	%eax
	popl	%edx
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_add
.LVL203:
	.loc 2 667 0
	movl	$1, 84(%ebx)
	.loc 2 668 0
	movl	$1, 88(%ebx)
	.loc 2 670 0
	movl	%ebx, (%esp)
	call	mutex_task_pri_reset
.LVL204:
	.loc 2 671 0
	movl	$0, 92(%ebx)
.L145:
	.loc 2 673 0
	addl	$16, %esp
	jmp	.L137
.L136:
	.loc 2 675 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL205:
	.loc 2 676 0
	addl	$16, %esp
	movl	$307, %eax
	jmp	.L134
.L137:
	.loc 2 685 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL206:
	call	core_sched
.LVL207:
	.loc 2 687 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL208:
.L134:
	.loc 2 688 0
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
.LFE27:
	.size	krhino_task_wait_abort, .-krhino_task_wait_abort
	.section	.text.unlikely.krhino_task_wait_abort
.LCOLDE17:
	.section	.text.krhino_task_wait_abort
.LHOTE17:
	.section	.text.unlikely.krhino_task_del,"ax",@progbits
.LCOLDB18:
	.section	.text.krhino_task_del,"ax",@progbits
.LHOTB18:
	.globl	krhino_task_del
	.type	krhino_task_del, @function
krhino_task_del:
.LFB29:
	.loc 2 724 0
	.cfi_startproc
.LVL209:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 724 0
	movl	8(%ebp), %ebx
	.loc 2 733 0
	call	cpu_intrpt_save
.LVL210:
	.loc 2 736 0
	cmpb	$0, g_intrpt_nested_level
	.loc 2 733 0
	movl	%eax, %esi
.LVL211:
	.loc 2 736 0
	je	.L147
	.loc 2 736 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL212:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L148
.LVL213:
.L147:
	.loc 2 739 0 is_stmt 1
	testl	%ebx, %ebx
	cmove	g_active_task, %ebx
.LVL214:
	.loc 2 742 0
	cmpb	$61, 119(%ebx)
	jne	.L150
	.loc 2 743 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL215:
	.loc 2 744 0
	addl	$16, %esp
	movl	$302, %eax
	jmp	.L148
.LVL216:
.L150:
	.loc 2 747 0
	cmpb	$1, 121(%ebx)
	je	.L151
	.loc 2 748 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL217:
	.loc 2 749 0
	addl	$16, %esp
	movl	$9, %eax
	jmp	.L148
.LVL218:
.L151:
	.loc 2 761 0
	cmpl	g_active_task, %ebx
	jne	.L152
	.loc 2 762 0
	cmpb	$0, g_sched_lock
	je	.L152
	.loc 2 763 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL219:
	.loc 2 764 0
	addl	$16, %esp
	movl	$200, %eax
	jmp	.L148
.LVL220:
.L152:
	.loc 2 769 0
	movl	36(%ebx), %eax
.LVL221:
	call	task_mutex_free.isra.1
.LVL222:
	.loc 2 771 0
	movl	84(%ebx), %eax
	decl	%eax
	cmpl	$5, %eax
	ja	.L153
	jmp	*.L155(,%eax,4)
	.section	.rodata.krhino_task_del,"a",@progbits
	.align 4
	.align 4
.L155:
	.long	.L154
	.long	.L156
	.long	.L157
	.long	.L156
	.long	.L158
	.long	.L158
	.section	.text.krhino_task_del
.L154:
	.loc 2 773 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_rm
.LVL223:
	jmp	.L162
.L157:
	.loc 2 777 0
	movl	$7, 84(%ebx)
	.loc 2 778 0
	jmp	.L159
.L158:
	.loc 2 781 0
	subl	$12, %esp
	pushl	%ebx
	call	tick_list_rm
.LVL224:
.L162:
	.loc 2 782 0
	movl	$7, 84(%ebx)
	jmp	.L161
.L156:
	.loc 2 786 0
	subl	$12, %esp
	pushl	%ebx
	call	tick_list_rm
.LVL225:
	.loc 2 787 0
	leal	24(%ebx), %eax
	call	klist_rm
.LVL226:
	.loc 2 788 0
	movl	$7, 84(%ebx)
	.loc 2 790 0
	movl	%ebx, (%esp)
	call	mutex_task_pri_reset
.LVL227:
.L161:
	.loc 2 791 0
	addl	$16, %esp
	jmp	.L159
.L153:
	.loc 2 793 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL228:
	.loc 2 794 0
	addl	$16, %esp
	movl	$307, %eax
	jmp	.L148
.L159:
	.loc 2 798 0
	leal	40(%ebx), %eax
	call	klist_rm
.LVL229:
	.loc 2 814 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL230:
	call	core_sched
.LVL231:
	.loc 2 816 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL232:
.L148:
	.loc 2 817 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL233:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	krhino_task_del, .-krhino_task_del
	.section	.text.unlikely.krhino_task_del
.LCOLDE18:
	.section	.text.krhino_task_del
.LHOTE18:
	.section	.text.unlikely.krhino_task_dyn_del,"ax",@progbits
.LCOLDB19:
	.section	.text.krhino_task_dyn_del,"ax",@progbits
.LHOTB19:
	.globl	krhino_task_dyn_del
	.type	krhino_task_dyn_del, @function
krhino_task_dyn_del:
.LFB30:
	.loc 2 821 0
	.cfi_startproc
.LVL234:
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
	.loc 2 821 0
	movl	8(%ebp), %ebx
	.loc 2 828 0
	call	cpu_intrpt_save
.LVL235:
	.loc 2 832 0
	cmpb	$0, g_intrpt_nested_level
	.loc 2 828 0
	movl	%eax, %esi
.LVL236:
	.loc 2 832 0
	je	.L164
	.loc 2 832 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL237:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L165
.LVL238:
.L164:
	.loc 2 835 0 is_stmt 1
	testl	%ebx, %ebx
	cmove	g_active_task, %ebx
.LVL239:
	.loc 2 838 0
	cmpb	$61, 119(%ebx)
	jne	.L167
	.loc 2 839 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL240:
	.loc 2 841 0
	addl	$16, %esp
	movl	$302, %eax
	jmp	.L165
.LVL241:
.L167:
	.loc 2 844 0
	cmpb	$2, 121(%ebx)
	je	.L168
	.loc 2 845 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL242:
	.loc 2 847 0
	addl	$16, %esp
	movl	$9, %eax
	jmp	.L165
.LVL243:
.L168:
	.loc 2 859 0
	cmpl	g_active_task, %ebx
	jne	.L169
	.loc 2 860 0
	cmpb	$0, g_sched_lock
	je	.L169
	.loc 2 861 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL244:
	.loc 2 862 0
	addl	$16, %esp
	movl	$200, %eax
	jmp	.L165
.LVL245:
.L169:
	.loc 2 866 0
	cmpl	$7, 84(%ebx)
	jne	.L170
	.loc 2 867 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL246:
	.loc 2 868 0
	addl	$16, %esp
	movl	$307, %eax
	jmp	.L165
.LVL247:
.L170:
	.loc 2 872 0
	movl	16(%ebx), %eax
.LVL248:
.LBB84:
.LBB85:
	.loc 1 28 0
	movl	g_res_list+4, %ecx
.LBE85:
.LBE84:
	.loc 2 883 0
	subl	$12, %esp
	.loc 2 878 0
	incb	g_sched_lock
	.loc 2 879 0
	leal	24(%eax), %edx
.LVL249:
.LBB87:
.LBB86:
	.loc 1 28 0
	movl	%ecx, 28(%eax)
	.loc 1 29 0
	movl	$g_res_list, 24(%eax)
	.loc 1 31 0
	movl	%edx, (%ecx)
	.loc 1 32 0
	movl	%edx, g_res_list+4
.LVL250:
.LBE86:
.LBE87:
	.loc 2 880 0
	movl	%eax, 8(%eax)
	.loc 2 881 0
	movl	%ebx, 12(%eax)
	.loc 2 882 0
	movl	$2, 4(%eax)
	.loc 2 883 0
	pushl	$g_res_sem
	call	krhino_sem_give
.LVL251:
	.loc 2 884 0
	decb	g_sched_lock
	.loc 2 886 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 2 883 0
	movl	%eax, %edi
.LVL252:
	.loc 2 886 0
	je	.L171
	.loc 2 887 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL253:
	.loc 2 888 0
	movl	$2, (%esp)
	call	k_err_proc
.LVL254:
	.loc 2 889 0
	addl	$16, %esp
	movl	%edi, %eax
	jmp	.L165
.L171:
	.loc 2 893 0
	movl	36(%ebx), %eax
	call	task_mutex_free.isra.1
.LVL255:
	.loc 2 895 0
	movl	84(%ebx), %eax
	decl	%eax
	cmpl	$5, %eax
	ja	.L172
	jmp	*.L174(,%eax,4)
	.section	.rodata.krhino_task_dyn_del,"a",@progbits
	.align 4
	.align 4
.L174:
	.long	.L173
	.long	.L175
	.long	.L176
	.long	.L175
	.long	.L177
	.long	.L177
	.section	.text.krhino_task_dyn_del
.L173:
	.loc 2 897 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$g_ready_queue
	call	ready_list_rm
.LVL256:
	jmp	.L180
.L176:
	.loc 2 901 0
	movl	$7, 84(%ebx)
	.loc 2 902 0
	jmp	.L172
.L177:
	.loc 2 905 0
	subl	$12, %esp
	pushl	%ebx
	call	tick_list_rm
.LVL257:
.L180:
	.loc 2 906 0
	movl	$7, 84(%ebx)
	jmp	.L179
.L175:
	.loc 2 910 0
	subl	$12, %esp
	pushl	%ebx
	call	tick_list_rm
.LVL258:
	.loc 2 911 0
	leal	24(%ebx), %eax
	call	klist_rm
.LVL259:
	.loc 2 912 0
	movl	$7, 84(%ebx)
	.loc 2 913 0
	movl	%ebx, (%esp)
	call	mutex_task_pri_reset
.LVL260:
.L179:
	.loc 2 914 0
	addl	$16, %esp
.L172:
	.loc 2 921 0
	leal	40(%ebx), %eax
	call	klist_rm
.LVL261:
	.loc 2 930 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL262:
	call	core_sched
.LVL263:
	.loc 2 932 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL264:
.L165:
	.loc 2 933 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL265:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	krhino_task_dyn_del, .-krhino_task_dyn_del
	.section	.text.unlikely.krhino_task_dyn_del
.LCOLDE19:
	.section	.text.krhino_task_dyn_del
.LHOTE19:
	.section	.text.unlikely.krhino_task_time_slice_set,"ax",@progbits
.LCOLDB20:
	.section	.text.krhino_task_time_slice_set,"ax",@progbits
.LHOTB20:
	.globl	krhino_task_time_slice_set
	.type	krhino_task_time_slice_set, @function
krhino_task_time_slice_set:
.LFB31:
	.loc 2 940 0
	.cfi_startproc
.LVL266:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 2 943 0
	movl	$6, %eax
	.loc 2 940 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 940 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 2 943 0
	testl	%esi, %esi
	je	.L182
	.loc 2 945 0
	call	cpu_intrpt_save
.LVL267:
	.loc 2 947 0
	cmpb	$0, g_intrpt_nested_level
	je	.L183
	.loc 2 947 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL268:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L182
.LVL269:
.L183:
	.loc 2 951 0 is_stmt 1
	testl	%ebx, %ebx
	movl	$50, %edx
	cmove	%edx, %ebx
	.loc 2 959 0
	subl	$12, %esp
	.loc 2 951 0
	movl	%ebx, 104(%esi)
	.loc 2 957 0
	movl	%ebx, 100(%esi)
	.loc 2 959 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL270:
	.loc 2 961 0
	addl	$16, %esp
	xorl	%eax, %eax
.L182:
	.loc 2 962 0
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
.LFE31:
	.size	krhino_task_time_slice_set, .-krhino_task_time_slice_set
	.section	.text.unlikely.krhino_task_time_slice_set
.LCOLDE20:
	.section	.text.krhino_task_time_slice_set
.LHOTE20:
	.section	.text.unlikely.krhino_sched_policy_set,"ax",@progbits
.LCOLDB21:
	.section	.text.krhino_sched_policy_set,"ax",@progbits
.LHOTB21:
	.globl	krhino_sched_policy_set
	.type	krhino_sched_policy_set, @function
krhino_sched_policy_set:
.LFB32:
	.loc 2 965 0
	.cfi_startproc
.LVL271:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 2 968 0
	movl	$6, %eax
	.loc 2 965 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 965 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 2 968 0
	testl	%esi, %esi
	je	.L190
	.loc 2 970 0
	cmpb	$1, %bl
	.loc 2 971 0
	movl	$203, %eax
	.loc 2 970 0
	ja	.L190
	.loc 2 974 0
	call	cpu_intrpt_save
.LVL272:
	.loc 2 976 0
	cmpb	$0, g_intrpt_nested_level
	je	.L191
	.loc 2 976 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL273:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L190
.LVL274:
.L191:
	.loc 2 979 0 is_stmt 1
	subl	$12, %esp
	.loc 2 978 0
	movb	%bl, 117(%esi)
	.loc 2 979 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL275:
	.loc 2 981 0
	addl	$16, %esp
	xorl	%eax, %eax
.L190:
	.loc 2 982 0
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
.LFE32:
	.size	krhino_sched_policy_set, .-krhino_sched_policy_set
	.section	.text.unlikely.krhino_sched_policy_set
.LCOLDE21:
	.section	.text.krhino_sched_policy_set
.LHOTE21:
	.section	.text.unlikely.krhino_sched_policy_get,"ax",@progbits
.LCOLDB22:
	.section	.text.krhino_sched_policy_get,"ax",@progbits
.LHOTB22:
	.globl	krhino_sched_policy_get
	.type	krhino_sched_policy_get, @function
krhino_sched_policy_get:
.LFB33:
	.loc 2 985 0
	.cfi_startproc
.LVL276:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 985 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 2 989 0
	testl	%esi, %esi
	je	.L198
	testl	%ebx, %ebx
	je	.L198
	.loc 2 991 0
	call	cpu_intrpt_save
.LVL277:
	.loc 2 993 0
	cmpb	$0, g_intrpt_nested_level
	je	.L197
	.loc 2 993 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL278:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L196
.LVL279:
.L197:
	.loc 2 995 0 is_stmt 1
	movb	117(%esi), %dl
	.loc 2 996 0
	subl	$12, %esp
	.loc 2 995 0
	movb	%dl, (%ebx)
	.loc 2 996 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL280:
	.loc 2 998 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L196
.LVL281:
.L198:
	.loc 2 989 0
	movl	$6, %eax
.LVL282:
.L196:
	.loc 2 999 0
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
.LFE33:
	.size	krhino_sched_policy_get, .-krhino_sched_policy_get
	.section	.text.unlikely.krhino_sched_policy_get
.LCOLDE22:
	.section	.text.krhino_sched_policy_get
.LHOTE22:
	.section	.text.unlikely.krhino_task_info_set,"ax",@progbits
.LCOLDB23:
	.section	.text.krhino_task_info_set,"ax",@progbits
.LHOTB23:
	.globl	krhino_task_info_set
	.type	krhino_task_info_set, @function
krhino_task_info_set:
.LFB34:
	.loc 2 1004 0
	.cfi_startproc
.LVL283:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 2 1007 0
	movl	$6, %eax
	.loc 2 1004 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 2 1004 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 2 1007 0
	testl	%ebx, %ebx
	je	.L201
	.loc 2 1009 0
	cmpl	$1, %esi
	.loc 2 1010 0
	movl	$5, %eax
	.loc 2 1009 0
	ja	.L201
	.loc 2 1013 0
	call	cpu_intrpt_save
.LVL284:
	.loc 2 1014 0
	movl	16(%ebp), %edx
	.loc 2 1015 0
	subl	$12, %esp
	.loc 2 1014 0
	movl	%edx, 8(%ebx,%esi,4)
	.loc 2 1015 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL285:
	.loc 2 1017 0
	addl	$16, %esp
	xorl	%eax, %eax
.L201:
	.loc 2 1018 0
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
.LFE34:
	.size	krhino_task_info_set, .-krhino_task_info_set
	.section	.text.unlikely.krhino_task_info_set
.LCOLDE23:
	.section	.text.krhino_task_info_set
.LHOTE23:
	.section	.text.unlikely.krhino_task_info_get,"ax",@progbits
.LCOLDB24:
	.section	.text.krhino_task_info_get,"ax",@progbits
.LHOTB24:
	.globl	krhino_task_info_get
	.type	krhino_task_info_get, @function
krhino_task_info_get:
.LFB35:
	.loc 2 1021 0
	.cfi_startproc
.LVL286:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 2 1021 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %ebx
	movl	16(%ebp), %edx
	.loc 2 1023 0
	testl	%ecx, %ecx
	je	.L207
	testl	%edx, %edx
	je	.L207
	.loc 2 1025 0
	cmpl	$1, %ebx
	.loc 2 1026 0
	movl	$5, %eax
	.loc 2 1025 0
	ja	.L206
	.loc 2 1029 0
	movl	8(%ecx,%ebx,4), %eax
	movl	%eax, (%edx)
	.loc 2 1031 0
	xorl	%eax, %eax
	jmp	.L206
.L207:
	.loc 2 1023 0
	movl	$6, %eax
.L206:
	.loc 2 1032 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	krhino_task_info_get, .-krhino_task_info_get
	.section	.text.unlikely.krhino_task_info_get
.LCOLDE24:
	.section	.text.krhino_task_info_get
.LHOTE24:
	.section	.text.unlikely.krhino_task_deathbed,"ax",@progbits
.LCOLDB25:
	.section	.text.krhino_task_deathbed,"ax",@progbits
.LHOTB25:
	.globl	krhino_task_deathbed
	.type	krhino_task_deathbed, @function
krhino_task_deathbed:
.LFB36:
	.loc 2 1036 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 2 1040 0
	call	krhino_cur_task_get
.LVL287:
	.loc 2 1042 0
	cmpb	$2, 121(%eax)
	jne	.L211
	.loc 2 1045 0
	subl	$12, %esp
	pushl	$0
	call	krhino_task_dyn_del
.LVL288:
	jmp	.L214
.LVL289:
.L211:
	.loc 2 1048 0
	subl	$12, %esp
	pushl	$0
	call	krhino_task_del
.LVL290:
.L214:
	addl	$16, %esp
	.loc 2 1056 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	krhino_task_deathbed, .-krhino_task_deathbed
	.section	.text.unlikely.krhino_task_deathbed
.LCOLDE25:
	.section	.text.krhino_task_deathbed
.LHOTE25:
	.text
.Letext0:
	.section	.text.unlikely.klist_rm
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 7 "./kernel/rhino/core/include/k_err.h"
	.file 8 "./kernel/rhino/core/include/k_sys.h"
	.file 9 "./kernel/rhino/core/include/k_obj.h"
	.file 10 "./kernel/rhino/core/include/k_sched.h"
	.file 11 "./kernel/rhino/core/include/k_task.h"
	.file 12 "./kernel/rhino/core/include/k_mutex.h"
	.file 13 "./kernel/rhino/core/include/k_sem.h"
	.file 14 "./kernel/rhino/core/include/k_internal.h"
	.file 15 "././platform/arch/arm/armv5/./gcc/port.h"
	.file 16 "./kernel/rhino/core/include/k_mm.h"
	.file 17 "./kernel/rhino/core/include/k_soc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1ab2
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF263
	.byte	0xc
	.long	.LASF264
	.long	.LASF265
	.long	.Ldebug_ranges0+0x68
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
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
	.byte	0x4
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x4
	.byte	0x41
	.long	0x85
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x5b
	.long	0x97
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x30
	.long	0x7a
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x3c
	.long	0x8c
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x6
	.byte	0xe
	.long	0xc8
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0xf
	.long	0xa9
	.uleb128 0x3
	.long	.LASF21
	.byte	0x6
	.byte	0x10
	.long	0xa9
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0x13
	.long	0xa9
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0x14
	.long	0x9e
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x7
	.byte	0x8
	.long	0x2b2
	.uleb128 0x7
	.long	.LASF24
	.byte	0
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.uleb128 0x7
	.long	.LASF26
	.byte	0x2
	.uleb128 0x7
	.long	.LASF27
	.byte	0x3
	.uleb128 0x7
	.long	.LASF28
	.byte	0x4
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.uleb128 0x7
	.long	.LASF30
	.byte	0x6
	.uleb128 0x7
	.long	.LASF31
	.byte	0x7
	.uleb128 0x7
	.long	.LASF32
	.byte	0x8
	.uleb128 0x7
	.long	.LASF33
	.byte	0x9
	.uleb128 0x7
	.long	.LASF34
	.byte	0xa
	.uleb128 0x7
	.long	.LASF35
	.byte	0xb
	.uleb128 0x7
	.long	.LASF36
	.byte	0xc
	.uleb128 0x7
	.long	.LASF37
	.byte	0xd
	.uleb128 0x7
	.long	.LASF38
	.byte	0x64
	.uleb128 0x7
	.long	.LASF39
	.byte	0x65
	.uleb128 0x7
	.long	.LASF40
	.byte	0x66
	.uleb128 0x7
	.long	.LASF41
	.byte	0x67
	.uleb128 0x7
	.long	.LASF42
	.byte	0x68
	.uleb128 0x7
	.long	.LASF43
	.byte	0x69
	.uleb128 0x7
	.long	.LASF44
	.byte	0x6a
	.uleb128 0x7
	.long	.LASF45
	.byte	0x6b
	.uleb128 0x7
	.long	.LASF46
	.byte	0xc8
	.uleb128 0x7
	.long	.LASF47
	.byte	0xc9
	.uleb128 0x7
	.long	.LASF48
	.byte	0xca
	.uleb128 0x7
	.long	.LASF49
	.byte	0xcb
	.uleb128 0x8
	.long	.LASF50
	.value	0x12c
	.uleb128 0x8
	.long	.LASF51
	.value	0x12d
	.uleb128 0x8
	.long	.LASF52
	.value	0x12e
	.uleb128 0x8
	.long	.LASF53
	.value	0x12f
	.uleb128 0x8
	.long	.LASF54
	.value	0x130
	.uleb128 0x8
	.long	.LASF55
	.value	0x131
	.uleb128 0x8
	.long	.LASF56
	.value	0x132
	.uleb128 0x8
	.long	.LASF57
	.value	0x133
	.uleb128 0x8
	.long	.LASF58
	.value	0x134
	.uleb128 0x8
	.long	.LASF59
	.value	0x190
	.uleb128 0x8
	.long	.LASF60
	.value	0x191
	.uleb128 0x8
	.long	.LASF61
	.value	0x192
	.uleb128 0x8
	.long	.LASF62
	.value	0x193
	.uleb128 0x8
	.long	.LASF63
	.value	0x194
	.uleb128 0x8
	.long	.LASF64
	.value	0x195
	.uleb128 0x8
	.long	.LASF65
	.value	0x1f4
	.uleb128 0x8
	.long	.LASF66
	.value	0x258
	.uleb128 0x8
	.long	.LASF67
	.value	0x2bc
	.uleb128 0x8
	.long	.LASF68
	.value	0x2bd
	.uleb128 0x8
	.long	.LASF69
	.value	0x2be
	.uleb128 0x8
	.long	.LASF70
	.value	0x2bf
	.uleb128 0x8
	.long	.LASF71
	.value	0x2c0
	.uleb128 0x8
	.long	.LASF72
	.value	0x2c1
	.uleb128 0x8
	.long	.LASF73
	.value	0x320
	.uleb128 0x8
	.long	.LASF74
	.value	0x321
	.uleb128 0x8
	.long	.LASF75
	.value	0x384
	.uleb128 0x8
	.long	.LASF76
	.value	0x385
	.uleb128 0x8
	.long	.LASF77
	.value	0x386
	.uleb128 0x8
	.long	.LASF78
	.value	0x3e8
	.uleb128 0x8
	.long	.LASF79
	.value	0x3e9
	.uleb128 0x8
	.long	.LASF80
	.value	0x44c
	.uleb128 0x8
	.long	.LASF81
	.value	0x44d
	.uleb128 0x8
	.long	.LASF82
	.value	0x44e
	.uleb128 0x8
	.long	.LASF83
	.value	0x44f
	.uleb128 0x8
	.long	.LASF84
	.value	0x450
	.uleb128 0x8
	.long	.LASF85
	.value	0x4b0
	.uleb128 0x8
	.long	.LASF86
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF87
	.byte	0x7
	.byte	0x54
	.long	0x106
	.uleb128 0x3
	.long	.LASF88
	.byte	0x8
	.byte	0x15
	.long	0xb4
	.uleb128 0x9
	.long	.LASF110
	.byte	0x8
	.byte	0x1
	.byte	0x8
	.long	0x2ed
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1
	.byte	0x9
	.long	0x2ed
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.byte	0xa
	.long	0x2ed
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2c8
	.uleb128 0x3
	.long	.LASF91
	.byte	0x1
	.byte	0xb
	.long	0x2c8
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x8
	.long	0x317
	.uleb128 0x7
	.long	.LASF92
	.byte	0
	.uleb128 0x7
	.long	.LASF93
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF94
	.byte	0x9
	.byte	0xb
	.long	0x2fe
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0xd
	.long	0x34d
	.uleb128 0x7
	.long	.LASF95
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0x1
	.uleb128 0x7
	.long	.LASF97
	.byte	0x2
	.uleb128 0x7
	.long	.LASF98
	.byte	0x3
	.uleb128 0x7
	.long	.LASF99
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF100
	.byte	0x9
	.byte	0x13
	.long	0x322
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x15
	.long	0x395
	.uleb128 0x7
	.long	.LASF101
	.byte	0
	.uleb128 0x7
	.long	.LASF102
	.byte	0x1
	.uleb128 0x7
	.long	.LASF103
	.byte	0x2
	.uleb128 0x7
	.long	.LASF104
	.byte	0x3
	.uleb128 0x7
	.long	.LASF105
	.byte	0x4
	.uleb128 0x7
	.long	.LASF106
	.byte	0x5
	.uleb128 0x7
	.long	.LASF107
	.byte	0x6
	.uleb128 0x7
	.long	.LASF108
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF109
	.byte	0x9
	.byte	0x1e
	.long	0x358
	.uleb128 0x9
	.long	.LASF111
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.long	0x3dd
	.uleb128 0xa
	.long	.LASF112
	.byte	0x9
	.byte	0x21
	.long	0x2f3
	.byte	0
	.uleb128 0xa
	.long	.LASF113
	.byte	0x9
	.byte	0x22
	.long	0x3dd
	.byte	0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0x9
	.byte	0x23
	.long	0x317
	.byte	0xc
	.uleb128 0xa
	.long	.LASF115
	.byte	0x9
	.byte	0x24
	.long	0x395
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x3e3
	.uleb128 0xc
	.long	0xcf
	.uleb128 0x3
	.long	.LASF116
	.byte	0x9
	.byte	0x25
	.long	0x3a0
	.uleb128 0xd
	.byte	0x38
	.byte	0x9
	.byte	0x27
	.long	0x450
	.uleb128 0xa
	.long	.LASF117
	.byte	0x9
	.byte	0x28
	.long	0x2f3
	.byte	0
	.uleb128 0xa
	.long	.LASF118
	.byte	0x9
	.byte	0x29
	.long	0x2f3
	.byte	0x8
	.uleb128 0xa
	.long	.LASF119
	.byte	0x9
	.byte	0x2c
	.long	0x2f3
	.byte	0x10
	.uleb128 0xa
	.long	.LASF120
	.byte	0x9
	.byte	0x30
	.long	0x2f3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF121
	.byte	0x9
	.byte	0x34
	.long	0x2f3
	.byte	0x20
	.uleb128 0xa
	.long	.LASF122
	.byte	0x9
	.byte	0x38
	.long	0x2f3
	.byte	0x28
	.uleb128 0xa
	.long	.LASF123
	.byte	0x9
	.byte	0x3c
	.long	0x2f3
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.long	.LASF124
	.byte	0x9
	.byte	0x3e
	.long	0x3f3
	.uleb128 0xe
	.value	0x104
	.byte	0xa
	.byte	0xd
	.long	0x48a
	.uleb128 0xa
	.long	.LASF125
	.byte	0xa
	.byte	0xe
	.long	0x48a
	.byte	0
	.uleb128 0xa
	.long	.LASF126
	.byte	0xa
	.byte	0xf
	.long	0x4a0
	.byte	0xf8
	.uleb128 0xf
	.long	.LASF127
	.byte	0xa
	.byte	0x10
	.long	0x9e
	.value	0x100
	.byte	0
	.uleb128 0x10
	.long	0x49a
	.long	0x49a
	.uleb128 0x11
	.long	0xbf
	.byte	0x3d
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2f3
	.uleb128 0x10
	.long	0xa9
	.long	0x4b0
	.uleb128 0x11
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF128
	.byte	0xa
	.byte	0x11
	.long	0x45b
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x8
	.long	0x4f8
	.uleb128 0x7
	.long	.LASF129
	.byte	0
	.uleb128 0x7
	.long	.LASF130
	.byte	0x1
	.uleb128 0x7
	.long	.LASF131
	.byte	0x2
	.uleb128 0x7
	.long	.LASF132
	.byte	0x3
	.uleb128 0x7
	.long	.LASF133
	.byte	0x4
	.uleb128 0x7
	.long	.LASF134
	.byte	0x5
	.uleb128 0x7
	.long	.LASF135
	.byte	0x6
	.uleb128 0x7
	.long	.LASF136
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF137
	.byte	0xb
	.byte	0x11
	.long	0x4bb
	.uleb128 0xd
	.byte	0x7c
	.byte	0xb
	.byte	0x15
	.long	0x668
	.uleb128 0xa
	.long	.LASF138
	.byte	0xb
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0xa
	.long	.LASF139
	.byte	0xb
	.byte	0x1a
	.long	0x3dd
	.byte	0x4
	.uleb128 0xa
	.long	.LASF140
	.byte	0xb
	.byte	0x1d
	.long	0x668
	.byte	0x8
	.uleb128 0xa
	.long	.LASF141
	.byte	0xb
	.byte	0x20
	.long	0x678
	.byte	0x10
	.uleb128 0xa
	.long	.LASF142
	.byte	0xb
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0xa
	.long	.LASF143
	.byte	0xb
	.byte	0x22
	.long	0x2f3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF144
	.byte	0xb
	.byte	0x25
	.long	0xfb
	.byte	0x20
	.uleb128 0xa
	.long	.LASF145
	.byte	0xb
	.byte	0x28
	.long	0x6d3
	.byte	0x24
	.uleb128 0xa
	.long	.LASF146
	.byte	0xb
	.byte	0x2b
	.long	0x2f3
	.byte	0x28
	.uleb128 0xa
	.long	.LASF147
	.byte	0xb
	.byte	0x2e
	.long	0x2f3
	.byte	0x30
	.uleb128 0xa
	.long	.LASF148
	.byte	0xb
	.byte	0x2f
	.long	0x2bd
	.byte	0x38
	.uleb128 0xa
	.long	.LASF149
	.byte	0xb
	.byte	0x30
	.long	0x2bd
	.byte	0x40
	.uleb128 0xa
	.long	.LASF150
	.byte	0xb
	.byte	0x31
	.long	0x49a
	.byte	0x48
	.uleb128 0x12
	.string	"msg"
	.byte	0xb
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF151
	.byte	0xb
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF152
	.byte	0xb
	.byte	0x39
	.long	0x4f8
	.byte	0x54
	.uleb128 0xa
	.long	.LASF153
	.byte	0xb
	.byte	0x3a
	.long	0x34d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF111
	.byte	0xb
	.byte	0x3d
	.long	0x6d9
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF154
	.byte	0xb
	.byte	0x40
	.long	0x728
	.byte	0x60
	.uleb128 0xa
	.long	.LASF155
	.byte	0xb
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0xa
	.long	.LASF156
	.byte	0xb
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF157
	.byte	0xb
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF158
	.byte	0xb
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0xa
	.long	.LASF159
	.byte	0xb
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0xa
	.long	.LASF160
	.byte	0xb
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0xa
	.long	.LASF161
	.byte	0xb
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0xa
	.long	.LASF162
	.byte	0xb
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0xa
	.long	.LASF163
	.byte	0xb
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0xa
	.long	.LASF164
	.byte	0xb
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0x10
	.long	0xc6
	.long	0x678
	.uleb128 0x11
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xe5
	.uleb128 0x9
	.long	.LASF165
	.byte	0x2c
	.byte	0xc
	.byte	0x8
	.long	0x6d3
	.uleb128 0xa
	.long	.LASF111
	.byte	0xc
	.byte	0x9
	.long	0x3e8
	.byte	0
	.uleb128 0xa
	.long	.LASF166
	.byte	0xc
	.byte	0xa
	.long	0x76c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF145
	.byte	0xc
	.byte	0xb
	.long	0x6d3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF167
	.byte	0xc
	.byte	0xc
	.long	0xf0
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF168
	.byte	0xc
	.byte	0xf
	.long	0x2f3
	.byte	0x20
	.uleb128 0xa
	.long	.LASF164
	.byte	0xc
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x67e
	.uleb128 0xb
	.byte	0x4
	.long	0x3e8
	.uleb128 0x9
	.long	.LASF169
	.byte	0x28
	.byte	0xd
	.byte	0xb
	.long	0x728
	.uleb128 0xa
	.long	.LASF111
	.byte	0xd
	.byte	0xc
	.long	0x3e8
	.byte	0
	.uleb128 0xa
	.long	.LASF170
	.byte	0xd
	.byte	0xd
	.long	0xda
	.byte	0x14
	.uleb128 0xa
	.long	.LASF171
	.byte	0xd
	.byte	0xe
	.long	0xda
	.byte	0x18
	.uleb128 0xa
	.long	.LASF172
	.byte	0xd
	.byte	0x10
	.long	0x2f3
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF164
	.byte	0xd
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x6df
	.uleb128 0x3
	.long	.LASF173
	.byte	0xb
	.byte	0x70
	.long	0x503
	.uleb128 0x3
	.long	.LASF174
	.byte	0xb
	.byte	0x72
	.long	0x744
	.uleb128 0xb
	.byte	0x4
	.long	0x74a
	.uleb128 0x13
	.long	0x755
	.uleb128 0x14
	.long	0xc6
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x9e
	.uleb128 0xb
	.byte	0x4
	.long	0xc6
	.uleb128 0x3
	.long	.LASF175
	.byte	0xd
	.byte	0x13
	.long	0x6df
	.uleb128 0xb
	.byte	0x4
	.long	0x72e
	.uleb128 0x3
	.long	.LASF176
	.byte	0xc
	.byte	0x13
	.long	0x67e
	.uleb128 0x10
	.long	0x9e
	.long	0x78d
	.uleb128 0x11
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x1c
	.byte	0xe
	.byte	0x73
	.long	0x7ba
	.uleb128 0x12
	.string	"cnt"
	.byte	0xe
	.byte	0x74
	.long	0x2c
	.byte	0
	.uleb128 0x12
	.string	"res"
	.byte	0xe
	.byte	0x75
	.long	0x7ba
	.byte	0x4
	.uleb128 0xa
	.long	.LASF177
	.byte	0xe
	.byte	0x76
	.long	0x2f3
	.byte	0x14
	.byte	0
	.uleb128 0x10
	.long	0xc6
	.long	0x7ca
	.uleb128 0x11
	.long	0xbf
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF178
	.byte	0xe
	.byte	0x77
	.long	0x78d
	.uleb128 0x15
	.long	.LASF266
	.byte	0xf
	.byte	0xf
	.long	0x9e
	.byte	0x3
	.uleb128 0x16
	.long	.LASF186
	.byte	0x2
	.byte	0x7
	.long	0x2b2
	.byte	0x1
	.long	0x895
	.uleb128 0x17
	.long	.LASF179
	.byte	0x2
	.byte	0x7
	.long	0x76c
	.uleb128 0x17
	.long	.LASF113
	.byte	0x2
	.byte	0x7
	.long	0x3dd
	.uleb128 0x18
	.string	"arg"
	.byte	0x2
	.byte	0x7
	.long	0xc6
	.uleb128 0x17
	.long	.LASF162
	.byte	0x2
	.byte	0x8
	.long	0x9e
	.uleb128 0x17
	.long	.LASF180
	.byte	0x2
	.byte	0x8
	.long	0x2bd
	.uleb128 0x17
	.long	.LASF181
	.byte	0x2
	.byte	0x8
	.long	0x678
	.uleb128 0x17
	.long	.LASF142
	.byte	0x2
	.byte	0x9
	.long	0x2c
	.uleb128 0x17
	.long	.LASF182
	.byte	0x2
	.byte	0x9
	.long	0x739
	.uleb128 0x17
	.long	.LASF183
	.byte	0x2
	.byte	0x9
	.long	0x9e
	.uleb128 0x17
	.long	.LASF164
	.byte	0x2
	.byte	0xa
	.long	0x9e
	.uleb128 0x17
	.long	.LASF161
	.byte	0x2
	.byte	0xa
	.long	0x9e
	.uleb128 0x17
	.long	.LASF184
	.byte	0x2
	.byte	0xa
	.long	0x9e
	.uleb128 0x19
	.long	.LASF185
	.byte	0x2
	.byte	0xc
	.long	0x2c
	.uleb128 0x1a
	.string	"tmp"
	.byte	0x2
	.byte	0xe
	.long	0x678
	.uleb128 0x1a
	.string	"i"
	.byte	0x2
	.byte	0xf
	.long	0x9e
	.byte	0
	.uleb128 0x16
	.long	.LASF187
	.byte	0x1
	.byte	0x15
	.long	0x9e
	.byte	0x3
	.long	0x8b1
	.uleb128 0x17
	.long	.LASF188
	.byte	0x1
	.byte	0x15
	.long	0x49a
	.byte	0
	.uleb128 0x1b
	.long	.LASF195
	.byte	0x2
	.value	0x2b4
	.byte	0x1
	.long	0x8fb
	.uleb128 0x1c
	.long	.LASF179
	.byte	0x2
	.value	0x2b4
	.long	0x76c
	.uleb128 0x1d
	.long	.LASF189
	.byte	0x2
	.value	0x2b6
	.long	0x8fb
	.uleb128 0x1d
	.long	.LASF190
	.byte	0x2
	.value	0x2b7
	.long	0x8fb
	.uleb128 0x1d
	.long	.LASF191
	.byte	0x2
	.value	0x2b8
	.long	0x76c
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x2
	.value	0x2b9
	.long	0x49a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x772
	.uleb128 0x1e
	.long	.LASF267
	.byte	0x2
	.byte	0xb7
	.long	0x2b2
	.byte	0x1
	.long	0x9a1
	.uleb128 0x17
	.long	.LASF179
	.byte	0x2
	.byte	0xb7
	.long	0x9a1
	.uleb128 0x17
	.long	.LASF113
	.byte	0x2
	.byte	0xb7
	.long	0x3dd
	.uleb128 0x18
	.string	"arg"
	.byte	0x2
	.byte	0xb7
	.long	0xc6
	.uleb128 0x18
	.string	"pri"
	.byte	0x2
	.byte	0xb8
	.long	0x9e
	.uleb128 0x17
	.long	.LASF180
	.byte	0x2
	.byte	0xb8
	.long	0x2bd
	.uleb128 0x17
	.long	.LASF193
	.byte	0x2
	.byte	0xb8
	.long	0x2c
	.uleb128 0x17
	.long	.LASF182
	.byte	0x2
	.byte	0xb8
	.long	0x739
	.uleb128 0x17
	.long	.LASF161
	.byte	0x2
	.byte	0xb9
	.long	0x9e
	.uleb128 0x17
	.long	.LASF184
	.byte	0x2
	.byte	0xb9
	.long	0x9e
	.uleb128 0x17
	.long	.LASF183
	.byte	0x2
	.byte	0xb9
	.long	0x9e
	.uleb128 0x1a
	.string	"ret"
	.byte	0x2
	.byte	0xbb
	.long	0x2b2
	.uleb128 0x19
	.long	.LASF138
	.byte	0x2
	.byte	0xbc
	.long	0x678
	.uleb128 0x19
	.long	.LASF194
	.byte	0x2
	.byte	0xbd
	.long	0x76c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x76c
	.uleb128 0x1f
	.long	.LASF268
	.byte	0x1
	.byte	0x2c
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x9cc
	.uleb128 0x20
	.long	.LASF198
	.byte	0x1
	.byte	0x2c
	.long	0x49a
	.long	.LLST0
	.byte	0
	.uleb128 0x21
	.long	0x8b1
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xa33
	.uleb128 0x22
	.long	0x8be
	.uleb128 0x6
	.byte	0xfa
	.long	0x8be
	.byte	0x9f
	.uleb128 0x23
	.long	0x8ca
	.long	.LLST1
	.uleb128 0x23
	.long	0x8d6
	.long	.LLST2
	.uleb128 0x23
	.long	0x8e2
	.long	.LLST3
	.uleb128 0x23
	.long	0x8ee
	.long	.LLST4
	.uleb128 0x24
	.long	0x895
	.long	.LBB56
	.long	.LBE56-.LBB56
	.byte	0x2
	.value	0x2c2
	.long	0xa29
	.uleb128 0x25
	.long	0x8a5
	.byte	0
	.uleb128 0x26
	.long	.LVL6
	.long	0x19c3
	.byte	0
	.uleb128 0x27
	.long	.LASF196
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.long	0xa56
	.uleb128 0x17
	.long	.LASF197
	.byte	0x1
	.byte	0x1a
	.long	0x49a
	.uleb128 0x17
	.long	.LASF198
	.byte	0x1
	.byte	0x1a
	.long	0x49a
	.byte	0
	.uleb128 0x21
	.long	0x7e1
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0xb65
	.uleb128 0x28
	.long	0x7f1
	.long	.LLST5
	.uleb128 0x28
	.long	0x7fc
	.long	.LLST6
	.uleb128 0x28
	.long	0x807
	.long	.LLST7
	.uleb128 0x22
	.long	0x812
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	0x81d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	0x828
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.long	0x833
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	0x83e
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x22
	.long	0x849
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x22
	.long	0x854
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x22
	.long	0x85f
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x23
	.long	0x875
	.long	.LLST8
	.uleb128 0x23
	.long	0x880
	.long	.LLST9
	.uleb128 0x23
	.long	0x88b
	.long	.LLST10
	.uleb128 0x28
	.long	0x86a
	.long	.LLST11
	.uleb128 0x29
	.long	0xa33
	.long	.LBB60
	.long	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0x6e
	.long	0xb0a
	.uleb128 0x28
	.long	0xa4a
	.long	.LLST12
	.uleb128 0x25
	.long	0xa3f
	.byte	0
	.uleb128 0x26
	.long	.LVL14
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL15
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL17
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL19
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL25
	.long	0x19e4
	.uleb128 0x26
	.long	.LVL26
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL30
	.long	0x19ef
	.uleb128 0x26
	.long	.LVL31
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL32
	.long	0x19fa
	.uleb128 0x26
	.long	.LVL33
	.long	0x19d9
	.byte	0
	.uleb128 0x2a
	.long	.LASF199
	.byte	0x2
	.byte	0x7e
	.long	0x2b2
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb6
	.uleb128 0x20
	.long	.LASF179
	.byte	0x2
	.byte	0x7e
	.long	0x76c
	.long	.LLST13
	.uleb128 0x20
	.long	.LASF113
	.byte	0x2
	.byte	0x7e
	.long	0x3dd
	.long	.LLST14
	.uleb128 0x2b
	.string	"arg"
	.byte	0x2
	.byte	0x7e
	.long	0xc6
	.long	.LLST15
	.uleb128 0x20
	.long	.LASF162
	.byte	0x2
	.byte	0x7f
	.long	0x9e
	.long	.LLST16
	.uleb128 0x20
	.long	.LASF180
	.byte	0x2
	.byte	0x7f
	.long	0x2bd
	.long	.LLST17
	.uleb128 0x20
	.long	.LASF181
	.byte	0x2
	.byte	0x7f
	.long	0x678
	.long	.LLST18
	.uleb128 0x20
	.long	.LASF142
	.byte	0x2
	.byte	0x80
	.long	0x2c
	.long	.LLST19
	.uleb128 0x20
	.long	.LASF182
	.byte	0x2
	.byte	0x80
	.long	0x739
	.long	.LLST20
	.uleb128 0x2c
	.long	.LASF183
	.byte	0x2
	.byte	0x80
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x2d
	.long	0x7e1
	.long	.LBB66
	.long	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0x82
	.uleb128 0x28
	.long	0x86a
	.long	.LLST21
	.uleb128 0x28
	.long	0x85f
	.long	.LLST21
	.uleb128 0x28
	.long	0x854
	.long	.LLST23
	.uleb128 0x28
	.long	0x849
	.long	.LLST24
	.uleb128 0x28
	.long	0x83e
	.long	.LLST25
	.uleb128 0x28
	.long	0x833
	.long	.LLST26
	.uleb128 0x28
	.long	0x828
	.long	.LLST27
	.uleb128 0x28
	.long	0x81d
	.long	.LLST28
	.uleb128 0x28
	.long	0x812
	.long	.LLST29
	.uleb128 0x28
	.long	0x807
	.long	.LLST30
	.uleb128 0x28
	.long	0x7fc
	.long	.LLST31
	.uleb128 0x28
	.long	0x7f1
	.long	.LLST32
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x2f
	.long	0x875
	.uleb128 0x2f
	.long	0x880
	.uleb128 0x30
	.long	0x88b
	.byte	0
	.uleb128 0x31
	.long	.LVL56
	.long	0xa56
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x33
	.long	0x86a
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x901
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xe9c
	.uleb128 0x22
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	0x91c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	0x927
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x22
	.long	0x932
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.long	0x93d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x22
	.long	0x948
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x22
	.long	0x953
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x22
	.long	0x95e
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x22
	.long	0x969
	.uleb128 0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x22
	.long	0x974
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x2f
	.long	0x97f
	.uleb128 0x2f
	.long	0x98a
	.uleb128 0x2f
	.long	0x995
	.uleb128 0x34
	.long	.LBB76
	.long	.LBE76-.LBB76
	.uleb128 0x28
	.long	0x974
	.long	.LLST33
	.uleb128 0x28
	.long	0x969
	.long	.LLST34
	.uleb128 0x28
	.long	0x95e
	.long	.LLST35
	.uleb128 0x28
	.long	0x953
	.long	.LLST36
	.uleb128 0x28
	.long	0x948
	.long	.LLST37
	.uleb128 0x28
	.long	0x93d
	.long	.LLST38
	.uleb128 0x28
	.long	0x932
	.long	.LLST39
	.uleb128 0x28
	.long	0x927
	.long	.LLST40
	.uleb128 0x28
	.long	0x91c
	.long	.LLST41
	.uleb128 0x28
	.long	0x911
	.long	.LLST42
	.uleb128 0x34
	.long	.LBB77
	.long	.LBE77-.LBB77
	.uleb128 0x2f
	.long	0x97f
	.uleb128 0x23
	.long	0x98a
	.long	.LLST43
	.uleb128 0x23
	.long	0x995
	.long	.LLST44
	.uleb128 0x29
	.long	0x7e1
	.long	.LBB78
	.long	.Ldebug_ranges0+0x38
	.byte	0x2
	.byte	0xd2
	.long	0xe6c
	.uleb128 0x28
	.long	0x86a
	.long	.LLST45
	.uleb128 0x28
	.long	0x85f
	.long	.LLST46
	.uleb128 0x28
	.long	0x854
	.long	.LLST47
	.uleb128 0x28
	.long	0x849
	.long	.LLST48
	.uleb128 0x28
	.long	0x83e
	.long	.LLST49
	.uleb128 0x28
	.long	0x833
	.long	.LLST50
	.uleb128 0x28
	.long	0x828
	.long	.LLST51
	.uleb128 0x28
	.long	0x81d
	.long	.LLST52
	.uleb128 0x28
	.long	0x812
	.long	.LLST53
	.uleb128 0x28
	.long	0x807
	.long	.LLST54
	.uleb128 0x28
	.long	0x7fc
	.long	.LLST55
	.uleb128 0x28
	.long	0x7f1
	.long	.LLST56
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x38
	.uleb128 0x2f
	.long	0x875
	.uleb128 0x2f
	.long	0x880
	.uleb128 0x23
	.long	0x88b
	.long	.LLST57
	.uleb128 0x35
	.long	.LVL69
	.long	0xa56
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x33
	.long	0x86a
	.uleb128 0x4
	.byte	0x91
	.sleb128 36
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LVL60
	.long	0x1a05
	.uleb128 0x26
	.long	.LVL62
	.long	0x1a05
	.uleb128 0x26
	.long	.LVL64
	.long	0x1a10
	.uleb128 0x26
	.long	.LVL71
	.long	0x1a10
	.uleb128 0x26
	.long	.LVL72
	.long	0x1a10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF200
	.byte	0x2
	.byte	0xde
	.long	0x2b2
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xf2f
	.uleb128 0x2c
	.long	.LASF179
	.byte	0x2
	.byte	0xde
	.long	0x9a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF113
	.byte	0x2
	.byte	0xde
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"arg"
	.byte	0x2
	.byte	0xde
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"pri"
	.byte	0x2
	.byte	0xdf
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LASF180
	.byte	0x2
	.byte	0xdf
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2c
	.long	.LASF193
	.byte	0x2
	.byte	0xdf
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x2c
	.long	.LASF182
	.byte	0x2
	.byte	0xe0
	.long	0x739
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x2c
	.long	.LASF183
	.byte	0x2
	.byte	0xe0
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x26
	.long	.LVL76
	.long	0x901
	.byte	0
	.uleb128 0x2a
	.long	.LASF201
	.byte	0x2
	.byte	0xef
	.long	0x2b2
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xfda
	.uleb128 0x2c
	.long	.LASF180
	.byte	0x2
	.byte	0xef
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF185
	.byte	0x2
	.byte	0xf1
	.long	0x2c
	.long	.LLST58
	.uleb128 0x19
	.long	.LASF202
	.byte	0x2
	.byte	0xf3
	.long	0x9e
	.uleb128 0x38
	.string	"ret"
	.byte	0x2
	.byte	0xf5
	.long	0x2b2
	.long	.LLST59
	.uleb128 0x26
	.long	.LVL78
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL80
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL82
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL85
	.long	0x1a1b
	.uleb128 0x26
	.long	.LVL86
	.long	0x1a26
	.uleb128 0x26
	.long	.LVL87
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL88
	.long	0x19fa
	.uleb128 0x26
	.long	.LVL89
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL91
	.long	0x1a31
	.uleb128 0x26
	.long	.LVL93
	.long	0x19d9
	.byte	0
	.uleb128 0x39
	.long	.LASF203
	.byte	0x2
	.value	0x119
	.long	0x2b2
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1029
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x11b
	.long	0x2c
	.long	.LLST60
	.uleb128 0x26
	.long	.LVL95
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL97
	.long	0x1a3c
	.uleb128 0x26
	.long	.LVL98
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL99
	.long	0x19fa
	.byte	0
	.uleb128 0x39
	.long	.LASF204
	.byte	0x2
	.value	0x127
	.long	0x76c
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1076
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x129
	.long	0x2c
	.long	.LLST61
	.uleb128 0x3a
	.long	.LASF179
	.byte	0x2
	.value	0x12a
	.long	0x76c
	.long	.LLST62
	.uleb128 0x26
	.long	.LVL101
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL103
	.long	0x19d9
	.byte	0
	.uleb128 0x39
	.long	.LASF205
	.byte	0x2
	.value	0x133
	.long	0x2b2
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x10fb
	.uleb128 0x3b
	.long	.LASF179
	.byte	0x2
	.value	0x133
	.long	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x135
	.long	0x2c
	.long	.LLST63
	.uleb128 0x1d
	.long	.LASF202
	.byte	0x2
	.value	0x137
	.long	0x9e
	.uleb128 0x26
	.long	.LVL106
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL108
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL111
	.long	0x1a26
	.uleb128 0x26
	.long	.LVL112
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL113
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL114
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL115
	.long	0x19fa
	.byte	0
	.uleb128 0x39
	.long	.LASF206
	.byte	0x2
	.value	0x172
	.long	0x2b2
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1138
	.uleb128 0x3c
	.long	.LASF179
	.byte	0x2
	.value	0x172
	.long	0x76c
	.long	.LLST64
	.uleb128 0x31
	.long	.LVL118
	.long	0x1076
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF207
	.byte	0x2
	.value	0x17f
	.long	0x2b2
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x11a8
	.uleb128 0x3b
	.long	.LASF179
	.byte	0x2
	.value	0x17f
	.long	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x181
	.long	0x2c
	.long	.LLST65
	.uleb128 0x26
	.long	.LVL120
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL123
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL124
	.long	0x1a47
	.uleb128 0x26
	.long	.LVL125
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL126
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL127
	.long	0x19fa
	.byte	0
	.uleb128 0x39
	.long	.LASF208
	.byte	0x2
	.value	0x1b2
	.long	0x2b2
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e5
	.uleb128 0x3c
	.long	.LASF179
	.byte	0x2
	.value	0x1b2
	.long	0x76c
	.long	.LLST66
	.uleb128 0x31
	.long	.LVL130
	.long	0x1138
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF209
	.byte	0x2
	.value	0x1b9
	.long	0x2b2
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1240
	.uleb128 0x3c
	.long	.LASF179
	.byte	0x2
	.value	0x1b9
	.long	0x76c
	.long	.LLST67
	.uleb128 0x3c
	.long	.LASF210
	.byte	0x2
	.value	0x1b9
	.long	0x1240
	.long	.LLST68
	.uleb128 0x3a
	.long	.LASF138
	.byte	0x2
	.value	0x1bb
	.long	0x678
	.long	.LLST69
	.uleb128 0x3a
	.long	.LASF211
	.byte	0x2
	.value	0x1bc
	.long	0x2c
	.long	.LLST70
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2c
	.uleb128 0x39
	.long	.LASF212
	.byte	0x2
	.value	0x1d8
	.long	0x2b2
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x12de
	.uleb128 0x3c
	.long	.LASF179
	.byte	0x2
	.value	0x1d8
	.long	0x76c
	.long	.LLST71
	.uleb128 0x3b
	.long	.LASF210
	.byte	0x2
	.value	0x1d8
	.long	0x1240
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x1da
	.long	0x2c
	.long	.LLST72
	.uleb128 0x3d
	.string	"sp"
	.byte	0x2
	.value	0x1db
	.long	0x2c
	.long	.LLST73
	.uleb128 0x26
	.long	.LVL141
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL144
	.long	0x1a52
	.uleb128 0x26
	.long	.LVL147
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL148
	.long	0x1a5d
	.uleb128 0x26
	.long	.LVL150
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL151
	.long	0x1a5d
	.uleb128 0x26
	.long	.LVL154
	.long	0x19d9
	.byte	0
	.uleb128 0x39
	.long	.LASF213
	.byte	0x2
	.value	0x1fb
	.long	0x2b2
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x137f
	.uleb128 0x3c
	.long	.LASF179
	.byte	0x2
	.value	0x1fb
	.long	0x76c
	.long	.LLST74
	.uleb128 0x3c
	.long	.LASF214
	.byte	0x2
	.value	0x1fb
	.long	0x9e
	.long	.LLST75
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x2
	.value	0x1fd
	.long	0x9e
	.long	.LLST76
	.uleb128 0x3a
	.long	.LASF216
	.byte	0x2
	.value	0x1fe
	.long	0x8fb
	.long	.LLST77
	.uleb128 0x3a
	.long	.LASF166
	.byte	0x2
	.value	0x1ff
	.long	0x76c
	.long	.LLST78
	.uleb128 0x26
	.long	.LVL159
	.long	0x1a26
	.uleb128 0x26
	.long	.LVL160
	.long	0x1a68
	.uleb128 0x26
	.long	.LVL161
	.long	0x19ef
	.uleb128 0x26
	.long	.LVL166
	.long	0x1a73
	.uleb128 0x26
	.long	.LVL171
	.long	0x1a7e
	.uleb128 0x26
	.long	.LVL173
	.long	0x1a5d
	.byte	0
	.uleb128 0x39
	.long	.LASF217
	.byte	0x2
	.value	0x244
	.long	0x2b2
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1437
	.uleb128 0x3b
	.long	.LASF179
	.byte	0x2
	.value	0x244
	.long	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"pri"
	.byte	0x2
	.value	0x244
	.long	0x9e
	.long	.LLST79
	.uleb128 0x3b
	.long	.LASF215
	.byte	0x2
	.value	0x244
	.long	0x755
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x246
	.long	0x2c
	.long	.LLST80
	.uleb128 0x3a
	.long	.LASF218
	.byte	0x2
	.value	0x248
	.long	0x9e
	.long	.LLST81
	.uleb128 0x3a
	.long	.LASF219
	.byte	0x2
	.value	0x249
	.long	0x2b2
	.long	.LLST82
	.uleb128 0x26
	.long	.LVL178
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL180
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL183
	.long	0x1a89
	.uleb128 0x26
	.long	.LVL185
	.long	0x12de
	.uleb128 0x26
	.long	.LVL187
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL188
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL189
	.long	0x19fa
	.byte	0
	.uleb128 0x39
	.long	.LASF220
	.byte	0x2
	.value	0x279
	.long	0x2b2
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e8
	.uleb128 0x3b
	.long	.LASF179
	.byte	0x2
	.value	0x279
	.long	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x27b
	.long	0x2c
	.long	.LLST83
	.uleb128 0x26
	.long	.LVL193
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL195
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL198
	.long	0x1a47
	.uleb128 0x26
	.long	.LVL199
	.long	0x1a94
	.uleb128 0x26
	.long	.LVL200
	.long	0x1a47
	.uleb128 0x26
	.long	.LVL201
	.long	0x1a94
	.uleb128 0x3f
	.long	.LVL202
	.long	0x9a7
	.long	0x14ba
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.uleb128 0x26
	.long	.LVL203
	.long	0x1a47
	.uleb128 0x26
	.long	.LVL204
	.long	0x1a9f
	.uleb128 0x26
	.long	.LVL205
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL206
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL207
	.long	0x19fa
	.byte	0
	.uleb128 0x39
	.long	.LASF221
	.byte	0x2
	.value	0x2d3
	.long	0x2b2
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d9
	.uleb128 0x3c
	.long	.LASF179
	.byte	0x2
	.value	0x2d3
	.long	0x76c
	.long	.LLST84
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x2d5
	.long	0x2c
	.long	.LLST85
	.uleb128 0x1d
	.long	.LASF202
	.byte	0x2
	.value	0x2d7
	.long	0x9e
	.uleb128 0x26
	.long	.LVL210
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL212
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL215
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL217
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL219
	.long	0x19d9
	.uleb128 0x3f
	.long	.LVL222
	.long	0x9cc
	.long	0x1571
	.uleb128 0x33
	.long	0x8be
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.long	.LVL223
	.long	0x1a26
	.uleb128 0x26
	.long	.LVL224
	.long	0x1a94
	.uleb128 0x26
	.long	.LVL225
	.long	0x1a94
	.uleb128 0x3f
	.long	.LVL226
	.long	0x9a7
	.long	0x15a0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.uleb128 0x26
	.long	.LVL227
	.long	0x1a9f
	.uleb128 0x26
	.long	.LVL228
	.long	0x19d9
	.uleb128 0x3f
	.long	.LVL229
	.long	0x9a7
	.long	0x15c6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 40
	.byte	0
	.uleb128 0x26
	.long	.LVL230
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL231
	.long	0x19fa
	.byte	0
	.uleb128 0x39
	.long	.LASF222
	.byte	0x2
	.value	0x334
	.long	0x2b2
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1728
	.uleb128 0x3c
	.long	.LASF179
	.byte	0x2
	.value	0x334
	.long	0x76c
	.long	.LLST86
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x336
	.long	0x2c
	.long	.LLST87
	.uleb128 0x3d
	.string	"ret"
	.byte	0x2
	.value	0x338
	.long	0x2b2
	.long	.LLST88
	.uleb128 0x1d
	.long	.LASF202
	.byte	0x2
	.value	0x339
	.long	0x9e
	.uleb128 0x3a
	.long	.LASF223
	.byte	0x2
	.value	0x33a
	.long	0x1728
	.long	.LLST89
	.uleb128 0x40
	.long	0xa33
	.long	.LBB84
	.long	.Ldebug_ranges0+0x50
	.byte	0x2
	.value	0x36f
	.long	0x1662
	.uleb128 0x28
	.long	0xa4a
	.long	.LLST90
	.uleb128 0x25
	.long	0xa3f
	.byte	0
	.uleb128 0x26
	.long	.LVL235
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL237
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL240
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL242
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL244
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL246
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL251
	.long	0x1aaa
	.uleb128 0x26
	.long	.LVL253
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL254
	.long	0x1a5d
	.uleb128 0x3f
	.long	.LVL255
	.long	0x9cc
	.long	0x16c9
	.uleb128 0x33
	.long	0x8be
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.long	.LVL256
	.long	0x1a26
	.uleb128 0x26
	.long	.LVL257
	.long	0x1a94
	.uleb128 0x26
	.long	.LVL258
	.long	0x1a94
	.uleb128 0x3f
	.long	.LVL259
	.long	0x9a7
	.long	0x16f8
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.byte	0
	.uleb128 0x26
	.long	.LVL260
	.long	0x1a9f
	.uleb128 0x3f
	.long	.LVL261
	.long	0x9a7
	.long	0x1715
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 40
	.byte	0
	.uleb128 0x26
	.long	.LVL262
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL263
	.long	0x19fa
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x7ca
	.uleb128 0x39
	.long	.LASF224
	.byte	0x2
	.value	0x3ab
	.long	0x2b2
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x1792
	.uleb128 0x3b
	.long	.LASF179
	.byte	0x2
	.value	0x3ab
	.long	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF225
	.byte	0x2
	.value	0x3ab
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x3ad
	.long	0x2c
	.long	.LLST91
	.uleb128 0x26
	.long	.LVL267
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL268
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL270
	.long	0x19d9
	.byte	0
	.uleb128 0x39
	.long	.LASF226
	.byte	0x2
	.value	0x3c4
	.long	0x2b2
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x17f6
	.uleb128 0x3b
	.long	.LASF179
	.byte	0x2
	.value	0x3c4
	.long	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF227
	.byte	0x2
	.value	0x3c4
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x3c6
	.long	0x2c
	.long	.LLST92
	.uleb128 0x26
	.long	.LVL272
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL273
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL275
	.long	0x19d9
	.byte	0
	.uleb128 0x39
	.long	.LASF228
	.byte	0x2
	.value	0x3d8
	.long	0x2b2
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x185c
	.uleb128 0x3c
	.long	.LASF179
	.byte	0x2
	.value	0x3d8
	.long	0x76c
	.long	.LLST93
	.uleb128 0x3c
	.long	.LASF227
	.byte	0x2
	.value	0x3d8
	.long	0x755
	.long	.LLST94
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x3da
	.long	0x2c
	.long	.LLST95
	.uleb128 0x26
	.long	.LVL277
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL278
	.long	0x19d9
	.uleb128 0x26
	.long	.LVL280
	.long	0x19d9
	.byte	0
	.uleb128 0x39
	.long	.LASF229
	.byte	0x2
	.value	0x3eb
	.long	0x2b2
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x18c6
	.uleb128 0x3b
	.long	.LASF179
	.byte	0x2
	.value	0x3eb
	.long	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x41
	.string	"idx"
	.byte	0x2
	.value	0x3eb
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF230
	.byte	0x2
	.value	0x3eb
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3a
	.long	.LASF185
	.byte	0x2
	.value	0x3ed
	.long	0x2c
	.long	.LLST96
	.uleb128 0x26
	.long	.LVL284
	.long	0x19ce
	.uleb128 0x26
	.long	.LVL285
	.long	0x19d9
	.byte	0
	.uleb128 0x39
	.long	.LASF231
	.byte	0x2
	.value	0x3fc
	.long	0x2b2
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x190e
	.uleb128 0x3b
	.long	.LASF179
	.byte	0x2
	.value	0x3fc
	.long	0x76c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x41
	.string	"idx"
	.byte	0x2
	.value	0x3fc
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF230
	.byte	0x2
	.value	0x3fc
	.long	0x75b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x42
	.long	.LASF269
	.byte	0x2
	.value	0x40b
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1950
	.uleb128 0x3a
	.long	.LASF179
	.byte	0x2
	.value	0x40e
	.long	0x76c
	.long	.LLST97
	.uleb128 0x26
	.long	.LVL287
	.long	0x1029
	.uleb128 0x26
	.long	.LVL288
	.long	0x15d9
	.uleb128 0x26
	.long	.LVL290
	.long	0x14e8
	.byte	0
	.uleb128 0x43
	.long	.LASF232
	.byte	0xe
	.byte	0x8
	.long	0x2b2
	.uleb128 0x43
	.long	.LASF233
	.byte	0xe
	.byte	0x9
	.long	0x77d
	.uleb128 0x43
	.long	.LASF234
	.byte	0xe
	.byte	0xb
	.long	0x4b0
	.uleb128 0x43
	.long	.LASF235
	.byte	0xe
	.byte	0xe
	.long	0x77d
	.uleb128 0x43
	.long	.LASF236
	.byte	0xe
	.byte	0xf
	.long	0x77d
	.uleb128 0x10
	.long	0x76c
	.long	0x1997
	.uleb128 0x11
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	.LASF237
	.byte	0xe
	.byte	0x15
	.long	0x1987
	.uleb128 0x43
	.long	.LASF238
	.byte	0xe
	.byte	0x21
	.long	0x450
	.uleb128 0x43
	.long	.LASF239
	.byte	0xe
	.byte	0x4a
	.long	0x761
	.uleb128 0x43
	.long	.LASF240
	.byte	0xe
	.byte	0x4b
	.long	0x2f3
	.uleb128 0x44
	.long	.LASF241
	.long	.LASF241
	.byte	0xe
	.byte	0x88
	.uleb128 0x44
	.long	.LASF242
	.long	.LASF242
	.byte	0xf
	.byte	0x8
	.uleb128 0x44
	.long	.LASF243
	.long	.LASF243
	.byte	0xf
	.byte	0x9
	.uleb128 0x44
	.long	.LASF244
	.long	.LASF244
	.byte	0xf
	.byte	0xd
	.uleb128 0x44
	.long	.LASF245
	.long	.LASF245
	.byte	0xe
	.byte	0x80
	.uleb128 0x44
	.long	.LASF246
	.long	.LASF246
	.byte	0xe
	.byte	0x7b
	.uleb128 0x44
	.long	.LASF247
	.long	.LASF247
	.byte	0x10
	.byte	0x8d
	.uleb128 0x44
	.long	.LASF248
	.long	.LASF248
	.byte	0x10
	.byte	0x93
	.uleb128 0x44
	.long	.LASF249
	.long	.LASF249
	.byte	0xe
	.byte	0x95
	.uleb128 0x44
	.long	.LASF250
	.long	.LASF250
	.byte	0xe
	.byte	0x81
	.uleb128 0x44
	.long	.LASF251
	.long	.LASF251
	.byte	0xe
	.byte	0x8c
	.uleb128 0x44
	.long	.LASF252
	.long	.LASF252
	.byte	0xe
	.byte	0x82
	.uleb128 0x44
	.long	.LASF253
	.long	.LASF253
	.byte	0xe
	.byte	0x7e
	.uleb128 0x44
	.long	.LASF254
	.long	.LASF254
	.byte	0x11
	.byte	0x25
	.uleb128 0x44
	.long	.LASF255
	.long	.LASF255
	.byte	0xe
	.byte	0x9e
	.uleb128 0x44
	.long	.LASF256
	.long	.LASF256
	.byte	0xe
	.byte	0x7f
	.uleb128 0x44
	.long	.LASF257
	.long	.LASF257
	.byte	0xe
	.byte	0x87
	.uleb128 0x44
	.long	.LASF258
	.long	.LASF258
	.byte	0xe
	.byte	0x9a
	.uleb128 0x44
	.long	.LASF259
	.long	.LASF259
	.byte	0xe
	.byte	0x98
	.uleb128 0x44
	.long	.LASF260
	.long	.LASF260
	.byte	0xe
	.byte	0x94
	.uleb128 0x44
	.long	.LASF261
	.long	.LASF261
	.byte	0xe
	.byte	0x99
	.uleb128 0x44
	.long	.LASF262
	.long	.LASF262
	.byte	0xd
	.byte	0x3d
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x2b
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LFE9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x53
	.long	.LVL4
	.long	.LVL6-1
	.value	0x1
	.byte	0x50
	.long	.LVL6-1
	.long	.LVL7
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL10
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL7
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL35
	.value	0x1
	.byte	0x53
	.long	.LVL35
	.long	.LFE37
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL14-1
	.value	0x1
	.byte	0x52
	.long	.LVL14-1
	.long	.LFE37
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL14-1
	.value	0x1
	.byte	0x51
	.long	.LVL14-1
	.long	.LFE37
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL15-1
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LVL19-1
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL34
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x57
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL23
	.long	.LVL24
	.value	0x6
	.byte	0x73
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25-1
	.value	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL23
	.long	.LVL24
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL24
	.long	.LVL34
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL12
	.long	.LVL23
	.value	0x6
	.byte	0xfa
	.long	0x86a
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL36
	.long	.LVL54
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL56
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST14:
	.long	.LVL36
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL56
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST15:
	.long	.LVL36
	.long	.LVL53
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL56
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST16:
	.long	.LVL36
	.long	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL56
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST17:
	.long	.LVL36
	.long	.LVL45
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	.LVL56
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST18:
	.long	.LVL36
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 24
	.long	.LVL56
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 24
	.long	0
	.long	0
.LLST19:
	.long	.LVL36
	.long	.LVL50
	.value	0x2
	.byte	0x91
	.sleb128 28
	.long	.LVL56
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 28
	.long	0
	.long	0
.LLST20:
	.long	.LVL36
	.long	.LVL49
	.value	0x2
	.byte	0x91
	.sleb128 32
	.long	.LVL56
	.long	.LFE13
	.value	0x2
	.byte	0x91
	.sleb128 32
	.long	0
	.long	0
.LLST21:
	.long	.LVL41
	.long	.LVL57
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL41
	.long	.LVL57
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL41
	.long	.LVL44
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0
	.long	0
.LLST25:
	.long	.LVL41
	.long	.LVL46
	.value	0x1
	.byte	0x57
	.long	.LVL46
	.long	.LVL49
	.value	0x2
	.byte	0x91
	.sleb128 32
	.long	.LVL49
	.long	.LVL56-1
	.value	0x2
	.byte	0x91
	.sleb128 20
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST26:
	.long	.LVL41
	.long	.LVL47
	.value	0x1
	.byte	0x56
	.long	.LVL47
	.long	.LVL56-1
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST27:
	.long	.LVL41
	.long	.LVL55
	.value	0x1
	.byte	0x53
	.long	.LVL55
	.long	.LVL56-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST28:
	.long	.LVL38
	.long	.LVL40
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST29:
	.long	.LVL38
	.long	.LVL43
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST30:
	.long	.LVL38
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST31:
	.long	.LVL38
	.long	.LVL56-1
	.value	0x1
	.byte	0x52
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST32:
	.long	.LVL37
	.long	.LVL39
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST33:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST34:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 36
	.long	0
	.long	0
.LLST35:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST36:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 28
	.long	0
	.long	0
.LLST37:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 24
	.long	0
	.long	0
.LLST38:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0
	.long	0
.LLST39:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST40:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST41:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST42:
	.long	.LVL59
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST43:
	.long	.LVL61
	.long	.LVL62-1
	.value	0x1
	.byte	0x50
	.long	.LVL62-1
	.long	.LVL74
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST44:
	.long	.LVL63
	.long	.LVL64-1
	.value	0x1
	.byte	0x50
	.long	.LVL64-1
	.long	.LVL65
	.value	0x1
	.byte	0x53
	.long	.LVL65
	.long	.LVL66
	.value	0x1
	.byte	0x50
	.long	.LVL66
	.long	.LVL74
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST45:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 36
	.long	0
	.long	0
.LLST46:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST47:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST49:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 28
	.long	0
	.long	0
.LLST50:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 24
	.long	0
	.long	0
.LLST51:
	.long	.LVL67
	.long	.LVL70
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST52:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 -48
	.long	0
	.long	0
.LLST53:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST54:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST55:
	.long	.LVL67
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST56:
	.long	.LVL67
	.long	.LVL68
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL68
	.long	.LVL70
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST57:
	.long	.LVL67
	.long	.LVL73
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL79
	.long	.LVL80-1
	.value	0x1
	.byte	0x50
	.long	.LVL80-1
	.long	.LVL81
	.value	0x1
	.byte	0x53
	.long	.LVL81
	.long	.LVL82-1
	.value	0x1
	.byte	0x50
	.long	.LVL82-1
	.long	.LVL83
	.value	0x1
	.byte	0x53
	.long	.LVL83
	.long	.LVL84
	.value	0x1
	.byte	0x50
	.long	.LVL84
	.long	.LVL90
	.value	0x1
	.byte	0x53
	.long	.LVL90
	.long	.LVL91-1
	.value	0x1
	.byte	0x50
	.long	.LVL91-1
	.long	.LVL94
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST59:
	.long	.LVL92
	.long	.LVL93-1
	.value	0x1
	.byte	0x50
	.long	.LVL93-1
	.long	.LVL94
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST60:
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
.LLST61:
	.long	.LVL101
	.long	.LVL103-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST62:
	.long	.LVL102
	.long	.LVL104
	.value	0x1
	.byte	0x53
	.long	.LVL104
	.long	.LFE18
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST63:
	.long	.LVL107
	.long	.LVL108-1
	.value	0x1
	.byte	0x50
	.long	.LVL108-1
	.long	.LVL109
	.value	0x1
	.byte	0x56
	.long	.LVL109
	.long	.LVL110
	.value	0x1
	.byte	0x50
	.long	.LVL110
	.long	.LVL116
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST64:
	.long	.LVL117
	.long	.LVL118
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL118
	.long	.LFE20
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST65:
	.long	.LVL121
	.long	.LVL122
	.value	0x1
	.byte	0x50
	.long	.LVL122
	.long	.LVL128
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST66:
	.long	.LVL129
	.long	.LVL130
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL130
	.long	.LVL131
	.value	0x1
	.byte	0x50
	.long	.LVL131
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST67:
	.long	.LVL132
	.long	.LVL138
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL138
	.long	.LVL139
	.value	0x1
	.byte	0x52
	.long	.LVL139
	.long	.LFE23
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST68:
	.long	.LVL132
	.long	.LVL138
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL138
	.long	.LFE23
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST69:
	.long	.LVL133
	.long	.LVL134
	.value	0x3
	.byte	0x72
	.sleb128 4
	.byte	0x9f
	.long	.LVL134
	.long	.LVL135
	.value	0x8
	.byte	0x70
	.sleb128 2
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL135
	.long	.LVL136
	.value	0x8
	.byte	0x70
	.sleb128 1
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL136
	.long	.LVL137
	.value	0x8
	.byte	0x70
	.sleb128 2
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL137
	.long	.LVL138
	.value	0xc
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.byte	0x32
	.byte	0x24
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST70:
	.long	.LVL132
	.long	.LVL134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL134
	.long	.LVL137
	.value	0x1
	.byte	0x50
	.long	.LVL137
	.long	.LVL138
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.long	.LVL138
	.long	.LVL139
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST71:
	.long	.LVL140
	.long	.LVL143
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL143
	.long	.LVL145
	.value	0x1
	.byte	0x53
	.long	.LVL145
	.long	.LVL146
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL146
	.long	.LVL155
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST72:
	.long	.LVL142
	.long	.LVL144-1
	.value	0x1
	.byte	0x50
	.long	.LVL144-1
	.long	.LVL145
	.value	0x1
	.byte	0x56
	.long	.LVL145
	.long	.LVL146
	.value	0x1
	.byte	0x50
	.long	.LVL146
	.long	.LVL156
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST73:
	.long	.LVL140
	.long	.LVL144
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL144
	.long	.LVL145
	.value	0x1
	.byte	0x50
	.long	.LVL145
	.long	.LVL146
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL146
	.long	.LVL147-1
	.value	0x1
	.byte	0x50
	.long	.LVL149
	.long	.LVL150-1
	.value	0x1
	.byte	0x50
	.long	.LVL152
	.long	.LVL153
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST74:
	.long	.LVL157
	.long	.LVL158
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL158
	.long	.LVL163
	.value	0x1
	.byte	0x53
	.long	.LVL163
	.long	.LVL164
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL164
	.long	.LVL174
	.value	0x1
	.byte	0x53
	.long	.LVL174
	.long	.LVL175
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL175
	.long	.LVL176
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST75:
	.long	.LVL157
	.long	.LVL158
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL158
	.long	.LVL159-1
	.value	0x1
	.byte	0x50
	.long	.LVL159-1
	.long	.LVL162
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL162
	.long	.LVL166-1
	.value	0x1
	.byte	0x50
	.long	.LVL166-1
	.long	.LVL171
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	.LVL171
	.long	.LVL173-1
	.value	0x1
	.byte	0x50
	.long	.LVL175
	.long	.LVL176
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST76:
	.long	.LVL165
	.long	.LVL172
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	.LVL175
	.long	.LVL176
	.value	0x2
	.byte	0x91
	.sleb128 -18
	.long	0
	.long	0
.LLST77:
	.long	.LVL167
	.long	.LVL169
	.value	0x1
	.byte	0x51
	.long	.LVL169
	.long	.LVL170
	.value	0x3
	.byte	0x73
	.sleb128 92
	.long	0
	.long	0
.LLST78:
	.long	.LVL168
	.long	.LVL172
	.value	0x1
	.byte	0x56
	.long	.LVL175
	.long	.LVL176
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST79:
	.long	.LVL177
	.long	.LVL184
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL190
	.long	.LVL191
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST80:
	.long	.LVL179
	.long	.LVL180-1
	.value	0x1
	.byte	0x50
	.long	.LVL180-1
	.long	.LVL181
	.value	0x1
	.byte	0x56
	.long	.LVL181
	.long	.LVL182
	.value	0x1
	.byte	0x50
	.long	.LVL182
	.long	.LVL190
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST81:
	.long	.LVL183
	.long	.LVL185-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST82:
	.long	.LVL186
	.long	.LVL187-1
	.value	0x1
	.byte	0x50
	.long	.LVL187-1
	.long	.LVL190
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST83:
	.long	.LVL194
	.long	.LVL195-1
	.value	0x1
	.byte	0x50
	.long	.LVL195-1
	.long	.LVL196
	.value	0x1
	.byte	0x56
	.long	.LVL196
	.long	.LVL197
	.value	0x1
	.byte	0x50
	.long	.LVL197
	.long	.LVL208
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST84:
	.long	.LVL209
	.long	.LVL214
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL214
	.long	.LVL232
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST85:
	.long	.LVL211
	.long	.LVL212-1
	.value	0x1
	.byte	0x50
	.long	.LVL212-1
	.long	.LVL213
	.value	0x1
	.byte	0x56
	.long	.LVL213
	.long	.LVL215-1
	.value	0x1
	.byte	0x50
	.long	.LVL215-1
	.long	.LVL216
	.value	0x1
	.byte	0x56
	.long	.LVL216
	.long	.LVL217-1
	.value	0x1
	.byte	0x50
	.long	.LVL217-1
	.long	.LVL218
	.value	0x1
	.byte	0x56
	.long	.LVL218
	.long	.LVL219-1
	.value	0x1
	.byte	0x50
	.long	.LVL219-1
	.long	.LVL220
	.value	0x1
	.byte	0x56
	.long	.LVL220
	.long	.LVL221
	.value	0x1
	.byte	0x50
	.long	.LVL221
	.long	.LVL233
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST86:
	.long	.LVL234
	.long	.LVL239
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL239
	.long	.LVL264
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST87:
	.long	.LVL236
	.long	.LVL237-1
	.value	0x1
	.byte	0x50
	.long	.LVL237-1
	.long	.LVL238
	.value	0x1
	.byte	0x56
	.long	.LVL238
	.long	.LVL240-1
	.value	0x1
	.byte	0x50
	.long	.LVL240-1
	.long	.LVL241
	.value	0x1
	.byte	0x56
	.long	.LVL241
	.long	.LVL242-1
	.value	0x1
	.byte	0x50
	.long	.LVL242-1
	.long	.LVL243
	.value	0x1
	.byte	0x56
	.long	.LVL243
	.long	.LVL244-1
	.value	0x1
	.byte	0x50
	.long	.LVL244-1
	.long	.LVL245
	.value	0x1
	.byte	0x56
	.long	.LVL245
	.long	.LVL246-1
	.value	0x1
	.byte	0x50
	.long	.LVL246-1
	.long	.LVL247
	.value	0x1
	.byte	0x56
	.long	.LVL247
	.long	.LVL248
	.value	0x1
	.byte	0x50
	.long	.LVL248
	.long	.LVL265
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST88:
	.long	.LVL252
	.long	.LVL253-1
	.value	0x1
	.byte	0x50
	.long	.LVL253-1
	.long	.LVL264
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST89:
	.long	.LVL248
	.long	.LVL251-1
	.value	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST90:
	.long	.LVL249
	.long	.LVL250
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST91:
	.long	.LVL267
	.long	.LVL268-1
	.value	0x1
	.byte	0x50
	.long	.LVL269
	.long	.LVL270-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST92:
	.long	.LVL272
	.long	.LVL273-1
	.value	0x1
	.byte	0x50
	.long	.LVL274
	.long	.LVL275-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST93:
	.long	.LVL276
	.long	.LVL281
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL281
	.long	.LVL282
	.value	0x1
	.byte	0x56
	.long	.LVL282
	.long	.LFE33
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST94:
	.long	.LVL276
	.long	.LVL281
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL281
	.long	.LVL282
	.value	0x1
	.byte	0x53
	.long	.LVL282
	.long	.LFE33
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST95:
	.long	.LVL277
	.long	.LVL278-1
	.value	0x1
	.byte	0x50
	.long	.LVL279
	.long	.LVL280-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST96:
	.long	.LVL284
	.long	.LVL285-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST97:
	.long	.LVL287
	.long	.LVL288-1
	.value	0x1
	.byte	0x50
	.long	.LVL289
	.long	.LVL290-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xe4
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
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
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB60
	.long	.LBE60
	.long	.LBB63
	.long	.LBE63
	.long	0
	.long	0
	.long	.LBB66
	.long	.LBE66
	.long	.LBB70
	.long	.LBE70
	.long	.LBB71
	.long	.LBE71
	.long	0
	.long	0
	.long	.LBB78
	.long	.LBE78
	.long	.LBB81
	.long	.LBE81
	.long	0
	.long	0
	.long	.LBB84
	.long	.LBE84
	.long	.LBB87
	.long	.LBE87
	.long	0
	.long	0
	.long	.LFB9
	.long	.LFE9
	.long	.LFB38
	.long	.LFE38
	.long	.LFB37
	.long	.LFE37
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
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
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF209:
	.string	"krhino_task_stack_min_free"
.LASF30:
	.string	"RHINO_NULL_PTR"
.LASF69:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF20:
	.string	"sem_count_t"
.LASF137:
	.string	"task_stat_t"
.LASF202:
	.string	"cur_cpu_num"
.LASF247:
	.string	"krhino_mm_alloc"
.LASF245:
	.string	"ready_list_add_tail"
.LASF260:
	.string	"tick_list_rm"
.LASF23:
	.string	"suspend_nested_t"
.LASF266:
	.string	"cpu_cur_get"
.LASF242:
	.string	"cpu_intrpt_save"
.LASF40:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF25:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF157:
	.string	"pend_flags"
.LASF147:
	.string	"tick_list"
.LASF244:
	.string	"cpu_task_stack_init"
.LASF88:
	.string	"tick_t"
.LASF218:
	.string	"pri_limit"
.LASF0:
	.string	"unsigned int"
.LASF89:
	.string	"next"
.LASF251:
	.string	"pend_state_end_proc"
.LASF269:
	.string	"krhino_task_deathbed"
.LASF57:
	.string	"RHINO_INV_TASK_STATE"
.LASF221:
	.string	"krhino_task_del"
.LASF42:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF118:
	.string	"mutex_head"
.LASF79:
	.string	"RHINO_TRY_AGAIN"
.LASF48:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF174:
	.string	"task_entry_t"
.LASF58:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF78:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF104:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF72:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF210:
	.string	"free"
.LASF164:
	.string	"mm_alloc_flag"
.LASF35:
	.string	"RHINO_KOBJ_BLK"
.LASF90:
	.string	"prev"
.LASF63:
	.string	"RHINO_BLK_INV_STATE"
.LASF241:
	.string	"pend_task_wakeup"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF96:
	.string	"BLK_ABORT"
.LASF186:
	.string	"task_create"
.LASF206:
	.string	"krhino_task_suspend"
.LASF256:
	.string	"ready_list_add_head"
.LASF196:
	.string	"klist_insert"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF188:
	.string	"list"
.LASF154:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF250:
	.string	"ready_list_rm"
.LASF211:
	.string	"free_stk"
.LASF15:
	.string	"uint32_t"
.LASF268:
	.string	"klist_rm"
.LASF145:
	.string	"mutex_list"
.LASF45:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF189:
	.string	"mutex"
.LASF217:
	.string	"krhino_task_pri_change"
.LASF38:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF170:
	.string	"count"
.LASF229:
	.string	"krhino_task_info_set"
.LASF109:
	.string	"kobj_type_t"
.LASF254:
	.string	"soc_get_cur_sp"
.LASF52:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF243:
	.string	"cpu_intrpt_restore"
.LASF94:
	.string	"blk_policy_t"
.LASF214:
	.string	"new_pri"
.LASF70:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF24:
	.string	"RHINO_SUCCESS"
.LASF262:
	.string	"krhino_sem_give"
.LASF197:
	.string	"head"
.LASF191:
	.string	"next_task"
.LASF156:
	.string	"time_total"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF132:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF265:
	.string	"/home/stone/Documents/pca"
.LASF267:
	.string	"task_dyn_create"
.LASF239:
	.string	"g_res_sem"
.LASF225:
	.string	"slice"
.LASF4:
	.string	"size_t"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF144:
	.string	"suspend_count"
.LASF149:
	.string	"tick_remain"
.LASF159:
	.string	"pend_option"
.LASF36:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF190:
	.string	"next_mutex"
.LASF177:
	.string	"res_list"
.LASF82:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF128:
	.string	"runqueue_t"
.LASF12:
	.string	"__uint64_t"
.LASF28:
	.string	"RHINO_STOPPED"
.LASF152:
	.string	"task_state"
.LASF208:
	.string	"krhino_task_resume"
.LASF127:
	.string	"highest_pri"
.LASF64:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF181:
	.string	"stack_buf"
.LASF74:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF73:
	.string	"RHINO_SEM_OVF"
.LASF219:
	.string	"error"
.LASF180:
	.string	"ticks"
.LASF85:
	.string	"RHINO_TASK_STACK_OVF"
.LASF108:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF119:
	.string	"mblkpool_head"
.LASF29:
	.string	"RHINO_INV_PARAM"
.LASF205:
	.string	"task_suspend"
.LASF194:
	.string	"task_obj"
.LASF95:
	.string	"BLK_FINISH"
.LASF80:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF18:
	.string	"char"
.LASF171:
	.string	"peak_count"
.LASF207:
	.string	"task_resume"
.LASF249:
	.string	"tick_list_insert"
.LASF228:
	.string	"krhino_sched_policy_get"
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF14:
	.string	"uint8_t"
.LASF203:
	.string	"krhino_task_yield"
.LASF138:
	.string	"task_stack"
.LASF232:
	.string	"g_sys_stat"
.LASF257:
	.string	"pend_list_reorder"
.LASF212:
	.string	"krhino_task_stack_cur_free"
.LASF231:
	.string	"krhino_task_info_get"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF153:
	.string	"blk_state"
.LASF261:
	.string	"mutex_task_pri_reset"
.LASF220:
	.string	"krhino_task_wait_abort"
.LASF167:
	.string	"owner_nested"
.LASF1:
	.string	"long long int"
.LASF233:
	.string	"g_idle_task_spawned"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF139:
	.string	"task_name"
.LASF179:
	.string	"task"
.LASF223:
	.string	"res_free"
.LASF163:
	.string	"b_prio"
.LASF123:
	.string	"buf_queue_head"
.LASF148:
	.string	"tick_match"
.LASF98:
	.string	"BLK_DEL"
.LASF224:
	.string	"krhino_task_time_slice_set"
.LASF97:
	.string	"BLK_TIMEOUT"
.LASF258:
	.string	"mutex_pri_look"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF131:
	.string	"K_PEND"
.LASF100:
	.string	"blk_state_t"
.LASF192:
	.string	"blk_list_head"
.LASF195:
	.string	"task_mutex_free"
.LASF83:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF43:
	.string	"RHINO_NO_MEM"
.LASF143:
	.string	"task_list"
.LASF230:
	.string	"info"
.LASF75:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF111:
	.string	"blk_obj"
.LASF187:
	.string	"is_klist_empty"
.LASF110:
	.string	"klist_s"
.LASF91:
	.string	"klist_t"
.LASF193:
	.string	"stack"
.LASF71:
	.string	"RHINO_QUEUE_FULL"
.LASF158:
	.string	"pend_info"
.LASF112:
	.string	"blk_list"
.LASF66:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF237:
	.string	"g_active_task"
.LASF107:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF162:
	.string	"prio"
.LASF169:
	.string	"sem_s"
.LASF59:
	.string	"RHINO_NO_PEND_WAIT"
.LASF140:
	.string	"user_info"
.LASF2:
	.string	"long double"
.LASF87:
	.string	"kstat_t"
.LASF19:
	.string	"name_t"
.LASF146:
	.string	"task_stats_item"
.LASF39:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF166:
	.string	"mutex_task"
.LASF92:
	.string	"BLK_POLICY_PRI"
.LASF204:
	.string	"krhino_cur_task_get"
.LASF7:
	.string	"short int"
.LASF178:
	.string	"res_free_t"
.LASF199:
	.string	"krhino_task_create"
.LASF176:
	.string	"kmutex_t"
.LASF9:
	.string	"long int"
.LASF141:
	.string	"task_stack_base"
.LASF122:
	.string	"event_head"
.LASF129:
	.string	"K_SEED"
.LASF172:
	.string	"sem_item"
.LASF130:
	.string	"K_RDY"
.LASF215:
	.string	"old_pri"
.LASF124:
	.string	"kobj_list_t"
.LASF173:
	.string	"ktask_t"
.LASF121:
	.string	"queue_head"
.LASF252:
	.string	"ready_list_head_to_tail"
.LASF16:
	.string	"uint64_t"
.LASF135:
	.string	"K_SLEEP_SUSPENDED"
.LASF76:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF103:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF44:
	.string	"RHINO_RINGBUF_FULL"
.LASF113:
	.string	"name"
.LASF125:
	.string	"cur_list_item"
.LASF134:
	.string	"K_SLEEP"
.LASF77:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF185:
	.string	"cpsr"
.LASF21:
	.string	"cpu_stack_t"
.LASF50:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF116:
	.string	"blk_obj_t"
.LASF259:
	.string	"mutex_pri_limit"
.LASF65:
	.string	"RHINO_TIMER_STATE_INV"
.LASF155:
	.string	"time_slice"
.LASF17:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF93:
	.string	"BLK_POLICY_FIFO"
.LASF200:
	.string	"krhino_task_dyn_create"
.LASF101:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF226:
	.string	"krhino_sched_policy_set"
.LASF31:
	.string	"RHINO_INV_ALIGN"
.LASF41:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF49:
	.string	"RHINO_INV_SCHED_WAY"
.LASF55:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF253:
	.string	"ready_list_add"
.LASF150:
	.string	"tick_head"
.LASF165:
	.string	"mutex_s"
.LASF182:
	.string	"entry"
.LASF222:
	.string	"krhino_task_dyn_del"
.LASF213:
	.string	"task_pri_change"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF263:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF117:
	.string	"task_head"
.LASF115:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF246:
	.string	"core_sched"
.LASF264:
	.string	"src/k_task.c"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF126:
	.string	"task_bit_map"
.LASF22:
	.string	"mutex_nested_t"
.LASF142:
	.string	"stack_size"
.LASF106:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF198:
	.string	"element"
.LASF234:
	.string	"g_ready_queue"
.LASF120:
	.string	"sem_head"
.LASF238:
	.string	"g_kobj_list"
.LASF133:
	.string	"K_PEND_SUSPENDED"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF216:
	.string	"mutex_tmp"
.LASF3:
	.string	"signed char"
.LASF168:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF240:
	.string	"g_res_list"
.LASF184:
	.string	"cpu_binded"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF102:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF227:
	.string	"policy"
.LASF160:
	.string	"sched_policy"
.LASF248:
	.string	"krhino_mm_free"
.LASF114:
	.string	"blk_policy"
.LASF68:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF136:
	.string	"K_DELETED"
.LASF105:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF201:
	.string	"krhino_task_sleep"
.LASF236:
	.string	"g_intrpt_nested_level"
.LASF161:
	.string	"cpu_num"
.LASF235:
	.string	"g_sched_lock"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF151:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF183:
	.string	"autorun"
.LASF99:
	.string	"BLK_INVALID"
.LASF255:
	.string	"k_err_proc"
.LASF175:
	.string	"ksem_t"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
