	.file	"k_workqueue.c"
	.text
.Ltext0:
	.section	.text.unlikely.klist_rm_init,"ax",@progbits
.LCOLDB0:
	.section	.text.klist_rm_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.klist_rm_init
.Ltext_cold0:
	.section	.text.klist_rm_init
	.type	klist_rm_init, @function
klist_rm_init:
.LFB10:
	.file 1 "./kernel/rhino/core/include/k_list.h"
	.loc 1 51 0
	.cfi_startproc
.LVL0:
	.loc 1 52 0
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	.loc 1 51 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 52 0
	movl	%ecx, (%edx)
	.loc 1 53 0
	movl	(%eax), %ecx
	.loc 1 51 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 53 0
	movl	%edx, 4(%ecx)
	.loc 1 55 0
	movl	%eax, 4(%eax)
	movl	%eax, (%eax)
	.loc 1 56 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE10:
	.size	klist_rm_init, .-klist_rm_init
	.section	.text.unlikely.klist_rm_init
.LCOLDE0:
	.section	.text.klist_rm_init
.LHOTE0:
	.section	.text.unlikely.worker_task,"ax",@progbits
.LCOLDB1:
	.section	.text.worker_task,"ax",@progbits
.LHOTB1:
	.type	worker_task, @function
worker_task:
.LFB13:
	.file 2 "kernel/rhino/core/k_workqueue.c"
	.loc 2 29 0
	.cfi_startproc
.LVL1:
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
	.loc 2 29 0
	movl	8(%ebp), %esi
.LVL2:
	.loc 2 38 0
	leal	148(%esi), %edi
.LVL3:
.L5:
	pushl	%edx
	pushl	$-1
	pushl	$-1
	pushl	%edi
	call	krhino_sem_take
.LVL4:
	.loc 2 39 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L4
	.loc 2 40 0
	subl	$12, %esp
	pushl	%eax
	call	k_err_proc
.LVL5:
	addl	$16, %esp
.L4:
	.loc 2 43 0
	call	cpu_intrpt_save
.LVL6:
	.loc 2 46 0
	movl	8(%esi), %ebx
	.loc 2 43 0
	movl	%eax, -28(%ebp)
.LVL7:
	.loc 2 47 0
	movl	%ebx, %eax
.LVL8:
	call	klist_rm_init
.LVL9:
	.loc 2 50 0
	movl	-28(%ebp), %edx
	subl	$12, %esp
	.loc 2 48 0
	movl	%ebx, 16(%esi)
	.loc 2 49 0
	movb	$0, 32(%ebx)
	.loc 2 50 0
	pushl	%edx
	call	cpu_intrpt_restore
.LVL10:
	.loc 2 53 0
	popl	%eax
	pushl	12(%ebx)
	call	*8(%ebx)
.LVL11:
	.loc 2 54 0
	call	cpu_intrpt_save
.LVL12:
	.loc 2 56 0
	movl	$0, 16(%esi)
	.loc 2 58 0
	movl	%eax, (%esp)
	call	cpu_intrpt_restore
.LVL13:
	.loc 2 59 0
	addl	$16, %esp
	jmp	.L5
	.cfi_endproc
.LFE13:
	.size	worker_task, .-worker_task
	.section	.text.unlikely.worker_task
.LCOLDE1:
	.section	.text.worker_task
.LHOTE1:
	.section	.text.unlikely.work_timer_cb,"ax",@progbits
.LCOLDB2:
	.section	.text.work_timer_cb,"ax",@progbits
.LHOTB2:
	.type	work_timer_cb, @function
work_timer_cb:
.LFB15:
	.loc 2 116 0
	.cfi_startproc
.LVL14:
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
	.loc 2 116 0
	movl	12(%ebp), %ebx
	.loc 2 120 0
	movl	8(%ebp), %eax
	movl	56(%eax), %esi
.LVL15:
	.loc 2 124 0
	call	cpu_intrpt_save
.LVL16:
	.loc 2 125 0
	cmpl	16(%ebx), %esi
	.loc 2 124 0
	movl	%eax, %edi
.LVL17:
	.loc 2 125 0
	je	.L15
	.loc 2 130 0
	cmpb	$1, 32(%esi)
	jne	.L13
.L15:
	.loc 2 131 0
	movl	%edi, 8(%ebp)
	.loc 2 148 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL18:
	popl	%esi
	.cfi_restore 6
.LVL19:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 2 131 0
	jmp	cpu_intrpt_restore
.LVL20:
.L13:
	.cfi_restore_state
	.loc 2 136 0
	movl	%esi, %eax
.LVL21:
	call	klist_rm_init
.LVL22:
.LBB16:
.LBB17:
	.loc 1 28 0
	movl	12(%ebx), %eax
.LBE17:
.LBE16:
	.loc 2 141 0
	subl	$12, %esp
.LBB20:
.LBB18:
	.loc 1 28 0
	movl	%eax, 4(%esi)
.LBE18:
.LBE20:
	.loc 2 137 0
	leal	8(%ebx), %eax
.LVL23:
	movl	%eax, (%esi)
.LBB21:
.LBB19:
	.loc 1 31 0
	movl	12(%ebx), %eax
.LVL24:
	movl	%esi, (%eax)
.LVL25:
	.loc 1 32 0
	movl	%esi, 12(%ebx)
.LVL26:
.LBE19:
.LBE21:
	.loc 2 139 0
	movl	%ebx, 28(%esi)
	.loc 2 140 0
	movb	$1, 32(%esi)
	.loc 2 143 0
	addl	$148, %ebx
.LVL27:
	.loc 2 141 0
	pushl	%edi
	call	cpu_intrpt_restore
.LVL28:
	.loc 2 143 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
	.loc 2 148 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL29:
	popl	%edi
	.cfi_restore 7
.LVL30:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 2 143 0
	jmp	krhino_sem_give
.LVL31:
	.cfi_endproc
.LFE15:
	.size	work_timer_cb, .-work_timer_cb
	.section	.text.unlikely.work_timer_cb
.LCOLDE2:
	.section	.text.work_timer_cb
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"WORKQUEUE-SEM"
	.section	.text.unlikely.krhino_workqueue_create,"ax",@progbits
.LCOLDB4:
	.section	.text.krhino_workqueue_create,"ax",@progbits
.LHOTB4:
	.globl	krhino_workqueue_create
	.type	krhino_workqueue_create, @function
krhino_workqueue_create:
.LFB14:
	.loc 2 64 0
	.cfi_startproc
.LVL32:
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
	.loc 2 71 0
	cmpl	$0, 12(%ebp)
	.loc 2 64 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %ebx
	movl	%eax, -28(%ebp)
	.loc 2 71 0
	sete	%dl
	cmpl	$0, 20(%ebp)
	sete	%al
	orb	%al, %dl
	jne	.L21
	testl	%ebx, %ebx
	je	.L21
	.loc 2 73 0
	cmpb	$61, -28(%ebp)
	.loc 2 74 0
	movl	$305, %edi
	.loc 2 73 0
	ja	.L17
	.loc 2 77 0
	cmpl	$0, 24(%ebp)
	.loc 2 78 0
	movl	$300, %edi
	.loc 2 77 0
	je	.L17
.LVL33:
.LBB32:
.LBB33:
	.loc 2 13 0
	call	cpu_intrpt_save
.LVL34:
	.loc 2 15 0
	movl	g_workqueue_list_head, %edx
.LVL35:
.L18:
	cmpl	$g_workqueue_list_head, %edx
	je	.L29
	.loc 2 18 0
	cmpl	%edx, %ebx
	jne	.L19
	.loc 2 19 0
	subl	$12, %esp
.LBE33:
.LBE32:
	.loc 2 83 0
	movl	$1100, %edi
.LBB36:
.LBB34:
	.loc 2 19 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL36:
	addl	$16, %esp
	jmp	.L17
.LVL37:
.L19:
	.loc 2 17 0
	movl	(%edx), %edx
.LVL38:
	jmp	.L18
.L29:
	.loc 2 24 0
	subl	$12, %esp
.LBE34:
.LBE36:
.LBB37:
.LBB38:
	.loc 2 91 0
	leal	148(%ebx), %esi
.LBE38:
.LBE37:
.LBB50:
.LBB35:
	.loc 2 24 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL39:
.LBE35:
.LBE50:
.LBB51:
.LBB49:
	.loc 2 87 0
	leal	8(%ebx), %eax
	.loc 2 91 0
	addl	$12, %esp
.LBB39:
.LBB40:
	.loc 1 17 0
	movl	%ebx, (%ebx)
	.loc 1 18 0
	movl	%ebx, 4(%ebx)
.LVL40:
.LBE40:
.LBE39:
	.loc 2 88 0
	movl	$0, 16(%ebx)
.LBB41:
.LBB42:
	.loc 1 17 0
	movl	%eax, 8(%ebx)
	.loc 1 18 0
	movl	%eax, 12(%ebx)
.LVL41:
.LBE42:
.LBE41:
	.loc 2 89 0
	movl	12(%ebp), %eax
	movl	%eax, 20(%ebx)
	.loc 2 91 0
	pushl	$0
	pushl	$.LC3
	pushl	%esi
	call	krhino_sem_create
.LVL42:
	.loc 2 92 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edi
	jne	.L17
	.loc 2 96 0
	call	cpu_intrpt_save
.LVL43:
.LBB43:
.LBB44:
	.loc 1 28 0
	movl	g_workqueue_list_head+4, %edx
.LBE44:
.LBE43:
	.loc 2 98 0
	subl	$12, %esp
.LBB47:
.LBB45:
	.loc 1 29 0
	movl	$g_workqueue_list_head, (%ebx)
	.loc 1 28 0
	movl	%edx, 4(%ebx)
	.loc 1 31 0
	movl	g_workqueue_list_head+4, %edx
	movl	%ebx, (%edx)
.LBE45:
.LBE47:
	.loc 2 98 0
	pushl	%eax
.LBB48:
.LBB46:
	.loc 1 32 0
	movl	%ebx, g_workqueue_list_head+4
.LVL44:
.LBE46:
.LBE48:
	.loc 2 98 0
	call	cpu_intrpt_restore
.LVL45:
	.loc 2 100 0
	popl	%eax
	movzbl	-28(%ebp), %eax
	popl	%edx
	pushl	$1
	pushl	$worker_task
	pushl	24(%ebp)
	pushl	20(%ebp)
	pushl	$0
	pushl	$0
	pushl	%eax
	leal	24(%ebx), %eax
	pushl	%ebx
	pushl	12(%ebp)
	pushl	%eax
	call	krhino_task_create
.LVL46:
	.loc 2 102 0
	addl	$48, %esp
	testl	%eax, %eax
	je	.L17
	movl	%eax, -28(%ebp)
.LVL47:
	.loc 2 103 0
	call	cpu_intrpt_save
.LVL48:
	movl	%eax, %edi
.LVL49:
	.loc 2 104 0
	movl	%ebx, %eax
.LVL50:
	call	klist_rm_init
.LVL51:
	.loc 2 105 0
	subl	$12, %esp
	pushl	%edi
	call	cpu_intrpt_restore
.LVL52:
	.loc 2 106 0
	movl	%esi, (%esp)
	call	krhino_sem_del
.LVL53:
	movl	-28(%ebp), %edx
	addl	$16, %esp
	movl	%edx, %edi
.LVL54:
	jmp	.L17
.LVL55:
.L21:
.LBE49:
.LBE51:
	.loc 2 71 0
	movl	$6, %edi
.L17:
	.loc 2 113 0
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
	.size	krhino_workqueue_create, .-krhino_workqueue_create
	.section	.text.unlikely.krhino_workqueue_create
.LCOLDE4:
	.section	.text.krhino_workqueue_create
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"WORK-TIMER"
	.section	.text.unlikely.krhino_work_init,"ax",@progbits
.LCOLDB6:
	.section	.text.krhino_work_init,"ax",@progbits
.LHOTB6:
	.globl	krhino_work_init
	.type	krhino_work_init, @function
krhino_work_init:
.LFB16:
	.loc 2 152 0
	.cfi_startproc
.LVL56:
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
	.loc 2 152 0
	movl	8(%ebp), %edx
	movl	20(%ebp), %ebx
	movl	24(%ebp), %esi
	.loc 2 159 0
	testl	%edx, %edx
	je	.L32
	cmpl	$0, 12(%ebp)
	je	.L32
	.loc 2 166 0
	xorl	%eax, %eax
	movl	$9, %ecx
	movl	%edx, %edi
	rep stosl
.LVL57:
	.loc 2 169 0
	movl	12(%ebp), %eax
	.loc 2 174 0
	movl	%esi, %ecx
.LBB52:
.LBB53:
	.loc 1 17 0
	movl	%edx, (%edx)
	.loc 1 18 0
	movl	%edx, 4(%edx)
.LVL58:
.LBE53:
.LBE52:
	.loc 2 171 0
	movl	%ebx, 16(%edx)
	movl	%esi, 20(%edx)
	.loc 2 169 0
	movl	%eax, 8(%edx)
	.loc 2 170 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%edx)
	.loc 2 184 0
	xorl	%eax, %eax
	.loc 2 174 0
	orl	%ebx, %ecx
	je	.L31
	.loc 2 175 0
	subl	$12, %esp
	pushl	$0
	pushl	%edx
	addl	$24, %edx
	pushl	$0
	pushl	$0
	pushl	%esi
	pushl	%ebx
	pushl	$work_timer_cb
	pushl	$.LC5
	pushl	%edx
	call	krhino_timer_dyn_create
.LVL59:
	addl	$48, %esp
	jmp	.L31
.LVL60:
.L32:
	.loc 2 160 0
	movl	$6, %eax
.L31:
	.loc 2 185 0
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
	.size	krhino_work_init, .-krhino_work_init
	.section	.text.unlikely.krhino_work_init
.LCOLDE6:
	.section	.text.krhino_work_init
.LHOTE6:
	.section	.text.unlikely.krhino_work_run,"ax",@progbits
.LCOLDB7:
	.section	.text.krhino_work_run,"ax",@progbits
.LHOTB7:
	.globl	krhino_work_run
	.type	krhino_work_run, @function
krhino_work_run:
.LFB17:
	.loc 2 188 0
	.cfi_startproc
.LVL61:
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
	.loc 2 188 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 2 194 0
	testl	%esi, %esi
	je	.L41
	testl	%ebx, %ebx
	je	.L41
.LVL62:
.LBB58:
.LBB59:
	.loc 2 196 0
	call	cpu_intrpt_save
.LVL63:
	movl	%eax, %edi
.LVL64:
	.loc 2 198 0
	movl	20(%ebx), %eax
.LVL65:
	orl	16(%ebx), %eax
	jne	.L38
	.loc 2 199 0
	cmpl	16(%esi), %ebx
	jne	.L39
	.loc 2 200 0
	subl	$12, %esp
	pushl	%edi
	call	cpu_intrpt_restore
.LVL66:
	addl	$16, %esp
	.loc 2 201 0
	movl	$1104, %eax
	jmp	.L37
.L39:
	.loc 2 204 0
	cmpb	$1, 32(%ebx)
	jne	.L40
	.loc 2 205 0
	subl	$12, %esp
	pushl	%edi
	call	cpu_intrpt_restore
.LVL67:
	addl	$16, %esp
	.loc 2 206 0
	movl	$1102, %eax
	jmp	.L37
.L40:
	.loc 2 210 0
	movl	%ebx, %eax
	call	klist_rm_init
.LVL68:
.LBB60:
.LBB61:
	.loc 1 28 0
	movl	12(%esi), %eax
.LBE61:
.LBE60:
	.loc 2 216 0
	subl	$12, %esp
.LBB64:
.LBB62:
	.loc 1 28 0
	movl	%eax, 4(%ebx)
.LBE62:
.LBE64:
	.loc 2 211 0
	leal	8(%esi), %eax
.LVL69:
	movl	%eax, (%ebx)
.LBB65:
.LBB63:
	.loc 1 31 0
	movl	12(%esi), %eax
.LVL70:
	movl	%ebx, (%eax)
.LVL71:
	.loc 1 32 0
	movl	%ebx, 12(%esi)
.LVL72:
.LBE63:
.LBE65:
	.loc 2 213 0
	movl	%esi, 28(%ebx)
	.loc 2 214 0
	movb	$1, 32(%ebx)
	.loc 2 217 0
	addl	$148, %esi
.LVL73:
	.loc 2 216 0
	pushl	%edi
	call	cpu_intrpt_restore
.LVL74:
	.loc 2 217 0
	movl	%esi, 8(%ebp)
.LVL75:
	addl	$16, %esp
.LBE59:
.LBE58:
	.loc 2 232 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL76:
	popl	%esi
	.cfi_restore 6
.LVL77:
	popl	%edi
	.cfi_restore 7
.LVL78:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB68:
.LBB66:
	.loc 2 217 0
	jmp	krhino_sem_give
.LVL79:
.L38:
	.cfi_restore_state
	.loc 2 223 0
	movl	24(%ebx), %eax
	.loc 2 224 0
	subl	$12, %esp
	.loc 2 223 0
	movl	%ebx, 56(%eax)
	.loc 2 224 0
	pushl	%edi
	call	cpu_intrpt_restore
.LVL80:
	.loc 2 225 0
	movl	%esi, 12(%ebp)
	movl	24(%ebx), %eax
	addl	$16, %esp
	movl	%eax, 8(%ebp)
.LBE66:
.LBE68:
	.loc 2 232 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL81:
	popl	%esi
	.cfi_restore 6
.LVL82:
	popl	%edi
	.cfi_restore 7
.LVL83:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB69:
.LBB67:
	.loc 2 225 0
	jmp	krhino_timer_arg_change_auto
.LVL84:
.L41:
	.cfi_restore_state
.LBE67:
.LBE69:
	.loc 2 194 0
	movl	$6, %eax
.L37:
	.loc 2 232 0
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
.LFE17:
	.size	krhino_work_run, .-krhino_work_run
	.section	.text.unlikely.krhino_work_run
.LCOLDE7:
	.section	.text.krhino_work_run
.LHOTE7:
	.section	.text.unlikely.krhino_work_sched,"ax",@progbits
.LCOLDB8:
	.section	.text.krhino_work_sched,"ax",@progbits
.LHOTB8:
	.globl	krhino_work_sched
	.type	krhino_work_sched, @function
krhino_work_sched:
.LFB18:
	.loc 2 235 0
	.cfi_startproc
.LVL85:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 2 236 0
	pushl	8(%ebp)
	pushl	$g_workqueue_default
	call	krhino_work_run
.LVL86:
	.loc 2 237 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	krhino_work_sched, .-krhino_work_sched
	.section	.text.unlikely.krhino_work_sched
.LCOLDE8:
	.section	.text.krhino_work_sched
.LHOTE8:
	.section	.text.unlikely.krhino_work_cancel,"ax",@progbits
.LCOLDB9:
	.section	.text.krhino_work_cancel,"ax",@progbits
.LHOTB9:
	.globl	krhino_work_cancel
	.type	krhino_work_cancel, @function
krhino_work_cancel:
.LFB19:
	.loc 2 240 0
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
	.loc 2 244 0
	movl	$6, %esi
	.loc 2 240 0
	subl	$12, %esp
	.loc 2 240 0
	movl	8(%ebp), %ebx
	.loc 2 244 0
	testl	%ebx, %ebx
	je	.L46
	.loc 2 246 0
	movl	28(%ebx), %edi
.LVL88:
	.loc 2 248 0
	testl	%edi, %edi
	jne	.L47
	.loc 2 249 0
	movl	20(%ebx), %eax
	.loc 2 252 0
	xorl	%esi, %esi
	.loc 2 249 0
	orl	16(%ebx), %eax
	je	.L46
	.loc 2 250 0
	subl	$12, %esp
	pushl	24(%ebx)
	call	krhino_timer_stop
.LVL89:
	addl	$16, %esp
	jmp	.L46
.L47:
	.loc 2 255 0
	call	cpu_intrpt_save
.LVL90:
	.loc 2 256 0
	cmpl	16(%edi), %ebx
	.loc 2 255 0
	movl	%eax, %esi
.LVL91:
	.loc 2 256 0
	jne	.L48
	.loc 2 257 0
	subl	$12, %esp
	.loc 2 258 0
	movl	$1104, %esi
	.loc 2 257 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL92:
	.loc 2 258 0
	addl	$16, %esp
	jmp	.L46
.LVL93:
.L48:
	.loc 2 261 0
	cmpb	$1, 32(%ebx)
	jne	.L49
	.loc 2 262 0
	subl	$12, %esp
	.loc 2 263 0
	movl	$1102, %esi
	.loc 2 262 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL94:
	.loc 2 263 0
	addl	$16, %esp
	jmp	.L46
.LVL95:
.L49:
	.loc 2 266 0
	movl	%ebx, %eax
.LVL96:
	call	klist_rm_init
.LVL97:
	.loc 2 268 0
	subl	$12, %esp
	.loc 2 267 0
	movl	$0, 28(%ebx)
	.loc 2 268 0
	pushl	%esi
	.loc 2 270 0
	xorl	%esi, %esi
.LVL98:
	.loc 2 268 0
	call	cpu_intrpt_restore
.LVL99:
	.loc 2 270 0
	addl	$16, %esp
.LVL100:
.L46:
	.loc 2 271 0
	leal	-12(%ebp), %esp
	movl	%esi, %eax
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
	.size	krhino_work_cancel, .-krhino_work_cancel
	.section	.text.unlikely.krhino_work_cancel
.LCOLDE9:
	.section	.text.krhino_work_cancel
.LHOTE9:
	.section	.rodata.str1.1
.LC10:
	.string	"DEFAULT-WORKQUEUE"
	.section	.text.unlikely.workqueue_init,"ax",@progbits
.LCOLDB11:
	.section	.text.workqueue_init,"ax",@progbits
.LHOTB11:
	.globl	workqueue_init
	.type	workqueue_init, @function
workqueue_init:
.LFB20:
	.loc 2 274 0
	.cfi_startproc
.LVL101:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
.LBB70:
.LBB71:
	.loc 1 17 0
	movl	$g_workqueue_list_head, g_workqueue_list_head
.LBE71:
.LBE70:
	.loc 2 277 0
	pushl	$768
	pushl	$g_workqueue_stack
	pushl	$20
	pushl	$.LC10
	pushl	$g_workqueue_default
.LBB73:
.LBB72:
	.loc 1 18 0
	movl	$g_workqueue_list_head, g_workqueue_list_head+4
.LVL102:
.LBE72:
.LBE73:
	.loc 2 277 0
	call	krhino_workqueue_create
.LVL103:
	.loc 2 280 0
	addl	$32, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	workqueue_init, .-workqueue_init
	.section	.text.unlikely.workqueue_init
.LCOLDE11:
	.section	.text.workqueue_init
.LHOTE11:
	.text
.Letext0:
	.section	.text.unlikely.klist_rm_init
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 7 "./kernel/rhino/core/include/k_err.h"
	.file 8 "./kernel/rhino/core/include/k_sys.h"
	.file 9 "./kernel/rhino/core/include/k_obj.h"
	.file 10 "./kernel/rhino/core/include/k_task.h"
	.file 11 "./kernel/rhino/core/include/k_mutex.h"
	.file 12 "./kernel/rhino/core/include/k_sem.h"
	.file 13 "./kernel/rhino/core/include/k_timer.h"
	.file 14 "./kernel/rhino/core/include/k_workqueue.h"
	.file 15 "./kernel/rhino/core/include/k_internal.h"
	.file 16 "././platform/arch/arm/armv5/./gcc/port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf71
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF217
	.byte	0xc
	.long	.LASF218
	.long	.LASF219
	.long	.Ldebug_ranges0+0xd0
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
	.byte	0x12
	.long	0xb4
	.uleb128 0x3
	.long	.LASF89
	.byte	0x8
	.byte	0x15
	.long	0xb4
	.uleb128 0x9
	.long	.LASF111
	.byte	0x8
	.byte	0x1
	.byte	0x8
	.long	0x2f8
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.byte	0x9
	.long	0x2f8
	.byte	0
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1
	.byte	0xa
	.long	0x2f8
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2d3
	.uleb128 0x3
	.long	.LASF92
	.byte	0x1
	.byte	0xb
	.long	0x2d3
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x8
	.long	0x322
	.uleb128 0x7
	.long	.LASF93
	.byte	0
	.uleb128 0x7
	.long	.LASF94
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF95
	.byte	0x9
	.byte	0xb
	.long	0x309
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0xd
	.long	0x358
	.uleb128 0x7
	.long	.LASF96
	.byte	0
	.uleb128 0x7
	.long	.LASF97
	.byte	0x1
	.uleb128 0x7
	.long	.LASF98
	.byte	0x2
	.uleb128 0x7
	.long	.LASF99
	.byte	0x3
	.uleb128 0x7
	.long	.LASF100
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF101
	.byte	0x9
	.byte	0x13
	.long	0x32d
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x15
	.long	0x3a0
	.uleb128 0x7
	.long	.LASF102
	.byte	0
	.uleb128 0x7
	.long	.LASF103
	.byte	0x1
	.uleb128 0x7
	.long	.LASF104
	.byte	0x2
	.uleb128 0x7
	.long	.LASF105
	.byte	0x3
	.uleb128 0x7
	.long	.LASF106
	.byte	0x4
	.uleb128 0x7
	.long	.LASF107
	.byte	0x5
	.uleb128 0x7
	.long	.LASF108
	.byte	0x6
	.uleb128 0x7
	.long	.LASF109
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF110
	.byte	0x9
	.byte	0x1e
	.long	0x363
	.uleb128 0x9
	.long	.LASF112
	.byte	0x14
	.byte	0x9
	.byte	0x20
	.long	0x3e8
	.uleb128 0xa
	.long	.LASF113
	.byte	0x9
	.byte	0x21
	.long	0x2fe
	.byte	0
	.uleb128 0xa
	.long	.LASF114
	.byte	0x9
	.byte	0x22
	.long	0x3e8
	.byte	0x8
	.uleb128 0xa
	.long	.LASF115
	.byte	0x9
	.byte	0x23
	.long	0x322
	.byte	0xc
	.uleb128 0xa
	.long	.LASF116
	.byte	0x9
	.byte	0x24
	.long	0x3a0
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x3ee
	.uleb128 0xc
	.long	0xcf
	.uleb128 0x3
	.long	.LASF117
	.byte	0x9
	.byte	0x25
	.long	0x3ab
	.uleb128 0xb
	.byte	0x4
	.long	0x2fe
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0x8
	.long	0x441
	.uleb128 0x7
	.long	.LASF118
	.byte	0
	.uleb128 0x7
	.long	.LASF119
	.byte	0x1
	.uleb128 0x7
	.long	.LASF120
	.byte	0x2
	.uleb128 0x7
	.long	.LASF121
	.byte	0x3
	.uleb128 0x7
	.long	.LASF122
	.byte	0x4
	.uleb128 0x7
	.long	.LASF123
	.byte	0x5
	.uleb128 0x7
	.long	.LASF124
	.byte	0x6
	.uleb128 0x7
	.long	.LASF125
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF126
	.byte	0xa
	.byte	0x11
	.long	0x404
	.uleb128 0xd
	.byte	0x7c
	.byte	0xa
	.byte	0x15
	.long	0x5b1
	.uleb128 0xa
	.long	.LASF127
	.byte	0xa
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0xa
	.long	.LASF128
	.byte	0xa
	.byte	0x1a
	.long	0x3e8
	.byte	0x4
	.uleb128 0xa
	.long	.LASF129
	.byte	0xa
	.byte	0x1d
	.long	0x5b1
	.byte	0x8
	.uleb128 0xa
	.long	.LASF130
	.byte	0xa
	.byte	0x20
	.long	0x5c1
	.byte	0x10
	.uleb128 0xa
	.long	.LASF131
	.byte	0xa
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0xa
	.long	.LASF132
	.byte	0xa
	.byte	0x22
	.long	0x2fe
	.byte	0x18
	.uleb128 0xa
	.long	.LASF133
	.byte	0xa
	.byte	0x25
	.long	0xfb
	.byte	0x20
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0x28
	.long	0x61c
	.byte	0x24
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0x2b
	.long	0x2fe
	.byte	0x28
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0x2e
	.long	0x2fe
	.byte	0x30
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0x2f
	.long	0x2c8
	.byte	0x38
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0x30
	.long	0x2c8
	.byte	0x40
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0x31
	.long	0x3fe
	.byte	0x48
	.uleb128 0xe
	.string	"msg"
	.byte	0xa
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0x39
	.long	0x441
	.byte	0x54
	.uleb128 0xa
	.long	.LASF142
	.byte	0xa
	.byte	0x3a
	.long	0x358
	.byte	0x58
	.uleb128 0xa
	.long	.LASF112
	.byte	0xa
	.byte	0x3d
	.long	0x622
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0x40
	.long	0x671
	.byte	0x60
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0xa
	.long	.LASF153
	.byte	0xa
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0xf
	.long	0xc6
	.long	0x5c1
	.uleb128 0x10
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xe5
	.uleb128 0x9
	.long	.LASF154
	.byte	0x2c
	.byte	0xb
	.byte	0x8
	.long	0x61c
	.uleb128 0xa
	.long	.LASF112
	.byte	0xb
	.byte	0x9
	.long	0x3f3
	.byte	0
	.uleb128 0xa
	.long	.LASF155
	.byte	0xb
	.byte	0xa
	.long	0x69e
	.byte	0x14
	.uleb128 0xa
	.long	.LASF134
	.byte	0xb
	.byte	0xb
	.long	0x61c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF156
	.byte	0xb
	.byte	0xc
	.long	0xf0
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF157
	.byte	0xb
	.byte	0xf
	.long	0x2fe
	.byte	0x20
	.uleb128 0xa
	.long	.LASF153
	.byte	0xb
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x5c7
	.uleb128 0xb
	.byte	0x4
	.long	0x3f3
	.uleb128 0x9
	.long	.LASF158
	.byte	0x28
	.byte	0xc
	.byte	0xb
	.long	0x671
	.uleb128 0xa
	.long	.LASF112
	.byte	0xc
	.byte	0xc
	.long	0x3f3
	.byte	0
	.uleb128 0xa
	.long	.LASF159
	.byte	0xc
	.byte	0xd
	.long	0xda
	.byte	0x14
	.uleb128 0xa
	.long	.LASF160
	.byte	0xc
	.byte	0xe
	.long	0xda
	.byte	0x18
	.uleb128 0xa
	.long	.LASF161
	.byte	0xc
	.byte	0x10
	.long	0x2fe
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF153
	.byte	0xc
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x628
	.uleb128 0x3
	.long	.LASF162
	.byte	0xa
	.byte	0x70
	.long	0x44c
	.uleb128 0xb
	.byte	0x4
	.long	0x688
	.uleb128 0x11
	.long	0x693
	.uleb128 0x12
	.long	0xc6
	.byte	0
	.uleb128 0x3
	.long	.LASF163
	.byte	0xc
	.byte	0x13
	.long	0x628
	.uleb128 0xb
	.byte	0x4
	.long	0x677
	.uleb128 0x3
	.long	.LASF164
	.byte	0xd
	.byte	0x13
	.long	0x6af
	.uleb128 0xb
	.byte	0x4
	.long	0x6b5
	.uleb128 0x11
	.long	0x6c5
	.uleb128 0x12
	.long	0xc6
	.uleb128 0x12
	.long	0xc6
	.byte	0
	.uleb128 0xd
	.byte	0x44
	.byte	0xd
	.byte	0x15
	.long	0x769
	.uleb128 0xa
	.long	.LASF165
	.byte	0xd
	.byte	0x16
	.long	0x2fe
	.byte	0
	.uleb128 0xa
	.long	.LASF166
	.byte	0xd
	.byte	0x17
	.long	0x3fe
	.byte	0x8
	.uleb128 0xa
	.long	.LASF114
	.byte	0xd
	.byte	0x18
	.long	0x3e8
	.byte	0xc
	.uleb128 0xe
	.string	"cb"
	.byte	0xd
	.byte	0x19
	.long	0x6a4
	.byte	0x10
	.uleb128 0xa
	.long	.LASF167
	.byte	0xd
	.byte	0x1a
	.long	0xc6
	.byte	0x14
	.uleb128 0xa
	.long	.LASF168
	.byte	0xd
	.byte	0x1b
	.long	0x2bd
	.byte	0x18
	.uleb128 0xa
	.long	.LASF169
	.byte	0xd
	.byte	0x1c
	.long	0x2bd
	.byte	0x20
	.uleb128 0xa
	.long	.LASF170
	.byte	0xd
	.byte	0x1d
	.long	0x2bd
	.byte	0x28
	.uleb128 0xa
	.long	.LASF171
	.byte	0xd
	.byte	0x1e
	.long	0x2bd
	.byte	0x30
	.uleb128 0xa
	.long	.LASF172
	.byte	0xd
	.byte	0x1f
	.long	0xc6
	.byte	0x38
	.uleb128 0xa
	.long	.LASF116
	.byte	0xd
	.byte	0x20
	.long	0x3a0
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF173
	.byte	0xd
	.byte	0x21
	.long	0x9e
	.byte	0x40
	.uleb128 0xa
	.long	.LASF153
	.byte	0xd
	.byte	0x22
	.long	0x9e
	.byte	0x41
	.byte	0
	.uleb128 0x3
	.long	.LASF174
	.byte	0xd
	.byte	0x23
	.long	0x6c5
	.uleb128 0xb
	.byte	0x4
	.long	0x769
	.uleb128 0x3
	.long	.LASF175
	.byte	0xe
	.byte	0xb
	.long	0x682
	.uleb128 0xd
	.byte	0x24
	.byte	0xe
	.byte	0xd
	.long	0x7e1
	.uleb128 0xa
	.long	.LASF176
	.byte	0xe
	.byte	0xe
	.long	0x2fe
	.byte	0
	.uleb128 0xa
	.long	.LASF177
	.byte	0xe
	.byte	0xf
	.long	0x77a
	.byte	0x8
	.uleb128 0xe
	.string	"arg"
	.byte	0xe
	.byte	0x10
	.long	0xc6
	.byte	0xc
	.uleb128 0xe
	.string	"dly"
	.byte	0xe
	.byte	0x11
	.long	0x2c8
	.byte	0x10
	.uleb128 0xa
	.long	.LASF178
	.byte	0xe
	.byte	0x12
	.long	0x774
	.byte	0x18
	.uleb128 0xe
	.string	"wq"
	.byte	0xe
	.byte	0x13
	.long	0xc6
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF179
	.byte	0xe
	.byte	0x14
	.long	0x9e
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF180
	.byte	0xe
	.byte	0x15
	.long	0x785
	.uleb128 0xd
	.byte	0xbc
	.byte	0xe
	.byte	0x17
	.long	0x83d
	.uleb128 0xa
	.long	.LASF181
	.byte	0xe
	.byte	0x18
	.long	0x2fe
	.byte	0
	.uleb128 0xa
	.long	.LASF182
	.byte	0xe
	.byte	0x19
	.long	0x2fe
	.byte	0x8
	.uleb128 0xa
	.long	.LASF183
	.byte	0xe
	.byte	0x1a
	.long	0x83d
	.byte	0x10
	.uleb128 0xa
	.long	.LASF114
	.byte	0xe
	.byte	0x1b
	.long	0x3e8
	.byte	0x14
	.uleb128 0xa
	.long	.LASF184
	.byte	0xe
	.byte	0x1c
	.long	0x677
	.byte	0x18
	.uleb128 0xe
	.string	"sem"
	.byte	0xe
	.byte	0x1d
	.long	0x693
	.byte	0x94
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x7e1
	.uleb128 0x3
	.long	.LASF185
	.byte	0xe
	.byte	0x1e
	.long	0x7ec
	.uleb128 0x13
	.long	.LASF195
	.byte	0x1
	.byte	0xf
	.byte	0x3
	.long	0x866
	.uleb128 0x14
	.long	.LASF186
	.byte	0x1
	.byte	0xf
	.long	0x3fe
	.byte	0
	.uleb128 0x15
	.long	.LASF190
	.byte	0x2
	.byte	0x3e
	.long	0x2b2
	.byte	0x1
	.long	0x8c4
	.uleb128 0x14
	.long	.LASF187
	.byte	0x2
	.byte	0x3e
	.long	0x8c4
	.uleb128 0x14
	.long	.LASF114
	.byte	0x2
	.byte	0x3e
	.long	0x3e8
	.uleb128 0x16
	.string	"pri"
	.byte	0x2
	.byte	0x3f
	.long	0x9e
	.uleb128 0x14
	.long	.LASF188
	.byte	0x2
	.byte	0x3f
	.long	0x5c1
	.uleb128 0x14
	.long	.LASF131
	.byte	0x2
	.byte	0x3f
	.long	0x2c
	.uleb128 0x17
	.long	.LASF189
	.byte	0x2
	.byte	0x41
	.long	0x2c
	.uleb128 0x18
	.string	"ret"
	.byte	0x2
	.byte	0x43
	.long	0x2b2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x843
	.uleb128 0x15
	.long	.LASF191
	.byte	0x2
	.byte	0xbb
	.long	0x2b2
	.byte	0x1
	.long	0x907
	.uleb128 0x14
	.long	.LASF187
	.byte	0x2
	.byte	0xbb
	.long	0x8c4
	.uleb128 0x14
	.long	.LASF192
	.byte	0x2
	.byte	0xbb
	.long	0x83d
	.uleb128 0x17
	.long	.LASF189
	.byte	0x2
	.byte	0xbd
	.long	0x2c
	.uleb128 0x18
	.string	"ret"
	.byte	0x2
	.byte	0xbf
	.long	0x2b2
	.byte	0
	.uleb128 0x19
	.long	.LASF198
	.byte	0x1
	.byte	0x32
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x92a
	.uleb128 0x1a
	.long	.LASF193
	.byte	0x1
	.byte	0x32
	.long	0x3fe
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1b
	.long	.LASF220
	.byte	0x2
	.byte	0x1c
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d2
	.uleb128 0x1c
	.string	"arg"
	.byte	0x2
	.byte	0x1c
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF189
	.byte	0x2
	.byte	0x1e
	.long	0x2c
	.long	.LLST0
	.uleb128 0x1e
	.string	"ret"
	.byte	0x2
	.byte	0x20
	.long	0x2b2
	.long	.LLST1
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x2
	.byte	0x21
	.long	0x83d
	.long	.LLST2
	.uleb128 0x1f
	.long	.LASF194
	.byte	0x2
	.byte	0x22
	.long	0x8c4
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x20
	.long	.LVL4
	.long	0xefb
	.uleb128 0x20
	.long	.LVL5
	.long	0xf06
	.uleb128 0x20
	.long	.LVL6
	.long	0xf11
	.uleb128 0x21
	.long	.LVL9
	.long	0x907
	.long	0x9b6
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL10
	.long	0xf1c
	.uleb128 0x20
	.long	.LVL12
	.long	0xf11
	.uleb128 0x20
	.long	.LVL13
	.long	0xf1c
	.byte	0
	.uleb128 0x13
	.long	.LASF196
	.byte	0x1
	.byte	0x1a
	.byte	0x3
	.long	0x9f5
	.uleb128 0x14
	.long	.LASF197
	.byte	0x1
	.byte	0x1a
	.long	0x3fe
	.uleb128 0x14
	.long	.LASF193
	.byte	0x1
	.byte	0x1a
	.long	0x3fe
	.byte	0
	.uleb128 0x19
	.long	.LASF199
	.byte	0x2
	.byte	0x73
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xabc
	.uleb128 0x1a
	.long	.LASF178
	.byte	0x2
	.byte	0x73
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"arg"
	.byte	0x2
	.byte	0x73
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF189
	.byte	0x2
	.byte	0x75
	.long	0x2c
	.long	.LLST3
	.uleb128 0x18
	.string	"ret"
	.byte	0x2
	.byte	0x77
	.long	0x2b2
	.uleb128 0x1d
	.long	.LASF192
	.byte	0x2
	.byte	0x78
	.long	0x83d
	.long	.LLST4
	.uleb128 0x1e
	.string	"wq"
	.byte	0x2
	.byte	0x7a
	.long	0x8c4
	.long	.LLST5
	.uleb128 0x23
	.long	0x9d2
	.long	.LBB16
	.long	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0x89
	.long	0xa83
	.uleb128 0x24
	.long	0x9e9
	.long	.LLST6
	.uleb128 0x24
	.long	0x9de
	.long	.LLST7
	.byte	0
	.uleb128 0x20
	.long	.LVL16
	.long	0xf11
	.uleb128 0x25
	.long	.LVL20
	.long	0xf1c
	.uleb128 0x21
	.long	.LVL22
	.long	0x907
	.long	0xaa9
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL28
	.long	0xf1c
	.uleb128 0x25
	.long	.LVL31
	.long	0xf27
	.byte	0
	.uleb128 0x26
	.long	.LASF221
	.byte	0x2
	.byte	0x8
	.long	0x2b2
	.byte	0x1
	.long	0xaee
	.uleb128 0x14
	.long	.LASF187
	.byte	0x2
	.byte	0x8
	.long	0x8c4
	.uleb128 0x17
	.long	.LASF189
	.byte	0x2
	.byte	0xa
	.long	0x2c
	.uleb128 0x18
	.string	"pos"
	.byte	0x2
	.byte	0xb
	.long	0x8c4
	.byte	0
	.uleb128 0x27
	.long	0x866
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xc7e
	.uleb128 0x28
	.long	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	0x881
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	0x88c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.long	0x897
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.long	0x8a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x29
	.long	0x8ad
	.uleb128 0x29
	.long	0x8b8
	.uleb128 0x23
	.long	0xabc
	.long	.LBB32
	.long	.Ldebug_ranges0+0x20
	.byte	0x2
	.byte	0x51
	.long	0xb83
	.uleb128 0x24
	.long	0xacc
	.long	.LLST8
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x20
	.uleb128 0x2b
	.long	0xad7
	.long	.LLST9
	.uleb128 0x2b
	.long	0xae2
	.long	.LLST10
	.uleb128 0x20
	.long	.LVL34
	.long	0xf11
	.uleb128 0x20
	.long	.LVL36
	.long	0xf1c
	.uleb128 0x20
	.long	.LVL39
	.long	0xf1c
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x24
	.long	0x8a2
	.long	.LLST11
	.uleb128 0x24
	.long	0x897
	.long	.LLST12
	.uleb128 0x24
	.long	0x88c
	.long	.LLST13
	.uleb128 0x24
	.long	0x881
	.long	.LLST14
	.uleb128 0x24
	.long	0x876
	.long	.LLST15
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x2b
	.long	0x8ad
	.long	.LLST16
	.uleb128 0x2b
	.long	0x8b8
	.long	.LLST17
	.uleb128 0x2c
	.long	0x84e
	.long	.LBB39
	.long	.LBE39-.LBB39
	.byte	0x2
	.byte	0x56
	.long	0xbe9
	.uleb128 0x24
	.long	0x85a
	.long	.LLST18
	.byte	0
	.uleb128 0x2c
	.long	0x84e
	.long	.LBB41
	.long	.LBE41-.LBB41
	.byte	0x2
	.byte	0x57
	.long	0xc06
	.uleb128 0x24
	.long	0x85a
	.long	.LLST19
	.byte	0
	.uleb128 0x23
	.long	0x9d2
	.long	.LBB43
	.long	.Ldebug_ranges0+0x58
	.byte	0x2
	.byte	0x61
	.long	0xc28
	.uleb128 0x24
	.long	0x9e9
	.long	.LLST20
	.uleb128 0x2d
	.long	0x9de
	.byte	0
	.uleb128 0x20
	.long	.LVL42
	.long	0xf32
	.uleb128 0x20
	.long	.LVL43
	.long	0xf11
	.uleb128 0x20
	.long	.LVL45
	.long	0xf1c
	.uleb128 0x20
	.long	.LVL46
	.long	0xf3d
	.uleb128 0x20
	.long	.LVL48
	.long	0xf11
	.uleb128 0x21
	.long	.LVL51
	.long	0x907
	.long	0xc69
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL52
	.long	0xf1c
	.uleb128 0x20
	.long	.LVL53
	.long	0xf48
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF200
	.byte	0x2
	.byte	0x96
	.long	0x2b2
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xd05
	.uleb128 0x1a
	.long	.LASF192
	.byte	0x2
	.byte	0x96
	.long	0x83d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF177
	.byte	0x2
	.byte	0x96
	.long	0x77a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.string	"arg"
	.byte	0x2
	.byte	0x96
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.string	"dly"
	.byte	0x2
	.byte	0x97
	.long	0x2c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.string	"ret"
	.byte	0x2
	.byte	0x99
	.long	0x2b2
	.long	.LLST21
	.uleb128 0x2c
	.long	0x84e
	.long	.LBB52
	.long	.LBE52-.LBB52
	.byte	0x2
	.byte	0xa8
	.long	0xcfb
	.uleb128 0x24
	.long	0x85a
	.long	.LLST22
	.byte	0
	.uleb128 0x20
	.long	.LVL59
	.long	0xf53
	.byte	0
	.uleb128 0x27
	.long	0x8ca
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd8
	.uleb128 0x28
	.long	0x8da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	0x8e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	0x8f0
	.uleb128 0x29
	.long	0x8fb
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x24
	.long	0x8e5
	.long	.LLST23
	.uleb128 0x24
	.long	0x8da
	.long	.LLST24
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x2b
	.long	0x8f0
	.long	.LLST25
	.uleb128 0x29
	.long	0x8fb
	.uleb128 0x23
	.long	0x9d2
	.long	.LBB60
	.long	.Ldebug_ranges0+0x98
	.byte	0x2
	.byte	0xd3
	.long	0xd82
	.uleb128 0x24
	.long	0x9e9
	.long	.LLST26
	.uleb128 0x24
	.long	0x9de
	.long	.LLST27
	.byte	0
	.uleb128 0x20
	.long	.LVL63
	.long	0xf11
	.uleb128 0x20
	.long	.LVL66
	.long	0xf1c
	.uleb128 0x20
	.long	.LVL67
	.long	0xf1c
	.uleb128 0x21
	.long	.LVL68
	.long	0x907
	.long	0xdb1
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL74
	.long	0xf1c
	.uleb128 0x25
	.long	.LVL79
	.long	0xf27
	.uleb128 0x20
	.long	.LVL80
	.long	0xf1c
	.uleb128 0x25
	.long	.LVL84
	.long	0xf5e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF201
	.byte	0x2
	.byte	0xea
	.long	0x2b2
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xe09
	.uleb128 0x1a
	.long	.LASF192
	.byte	0x2
	.byte	0xea
	.long	0x83d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL86
	.long	0x8ca
	.byte	0
	.uleb128 0x2e
	.long	.LASF202
	.byte	0x2
	.byte	0xef
	.long	0x2b2
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xe8f
	.uleb128 0x1a
	.long	.LASF192
	.byte	0x2
	.byte	0xef
	.long	0x83d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF189
	.byte	0x2
	.byte	0xf1
	.long	0x2c
	.long	.LLST28
	.uleb128 0x1e
	.string	"wq"
	.byte	0x2
	.byte	0xf2
	.long	0x8c4
	.long	.LLST29
	.uleb128 0x20
	.long	.LVL89
	.long	0xf69
	.uleb128 0x20
	.long	.LVL90
	.long	0xf11
	.uleb128 0x20
	.long	.LVL92
	.long	0xf1c
	.uleb128 0x20
	.long	.LVL94
	.long	0xf1c
	.uleb128 0x21
	.long	.LVL97
	.long	0x907
	.long	0xe85
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL99
	.long	0xf1c
	.byte	0
	.uleb128 0x2f
	.long	.LASF222
	.byte	0x2
	.value	0x111
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xec9
	.uleb128 0x30
	.long	0x84e
	.long	.LBB70
	.long	.Ldebug_ranges0+0xb8
	.byte	0x2
	.value	0x113
	.long	0xebf
	.uleb128 0x2d
	.long	0x85a
	.byte	0
	.uleb128 0x20
	.long	.LVL103
	.long	0x866
	.byte	0
	.uleb128 0x31
	.long	.LASF203
	.byte	0xf
	.byte	0x51
	.long	0x2fe
	.uleb128 0x31
	.long	.LASF204
	.byte	0xf
	.byte	0x53
	.long	0x843
	.uleb128 0xf
	.long	0xe5
	.long	0xef0
	.uleb128 0x32
	.long	0xbf
	.value	0x2ff
	.byte	0
	.uleb128 0x31
	.long	.LASF205
	.byte	0xf
	.byte	0x54
	.long	0xedf
	.uleb128 0x33
	.long	.LASF206
	.long	.LASF206
	.byte	0xc
	.byte	0x4c
	.uleb128 0x33
	.long	.LASF207
	.long	.LASF207
	.byte	0xf
	.byte	0x9e
	.uleb128 0x33
	.long	.LASF208
	.long	.LASF208
	.byte	0x10
	.byte	0x8
	.uleb128 0x33
	.long	.LASF209
	.long	.LASF209
	.byte	0x10
	.byte	0x9
	.uleb128 0x33
	.long	.LASF210
	.long	.LASF210
	.byte	0xc
	.byte	0x3d
	.uleb128 0x33
	.long	.LASF211
	.long	.LASF211
	.byte	0xc
	.byte	0x1c
	.uleb128 0x33
	.long	.LASF212
	.long	.LASF212
	.byte	0xa
	.byte	0x81
	.uleb128 0x33
	.long	.LASF213
	.long	.LASF213
	.byte	0xc
	.byte	0x23
	.uleb128 0x33
	.long	.LASF214
	.long	.LASF214
	.byte	0xd
	.byte	0x55
	.uleb128 0x33
	.long	.LASF215
	.long	.LASF215
	.byte	0xd
	.byte	0x7e
	.uleb128 0x33
	.long	.LASF216
	.long	.LASF216
	.byte	0xd
	.byte	0x6c
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL12
	.long	.LVL13-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LFE13
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL17
	.long	.LVL20-1
	.value	0x1
	.byte	0x50
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LVL30
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST4:
	.long	.LVL15
	.long	.LVL19
	.value	0x1
	.byte	0x56
	.long	.LVL20
	.long	.LVL29
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST5:
	.long	.LVL15
	.long	.LVL18
	.value	0x1
	.byte	0x53
	.long	.LVL18
	.long	.LVL20
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL20
	.long	.LVL27
	.value	0x1
	.byte	0x53
	.long	.LVL27
	.long	.LFE15
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL22
	.long	.LVL26
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST7:
	.long	.LVL22
	.long	.LVL23
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	.LVL25
	.long	.LVL26
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL33
	.long	.LVL36
	.value	0x1
	.byte	0x53
	.long	.LVL37
	.long	.LVL39
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST9:
	.long	.LVL34
	.long	.LVL36-1
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LVL39-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL35
	.long	.LVL36-1
	.value	0x1
	.byte	0x52
	.long	.LVL37
	.long	.LVL39-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST11:
	.long	.LVL39
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST12:
	.long	.LVL39
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST13:
	.long	.LVL39
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST14:
	.long	.LVL39
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST15:
	.long	.LVL39
	.long	.LVL55
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST16:
	.long	.LVL43
	.long	.LVL45-1
	.value	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x50
	.long	.LVL50
	.long	.LVL54
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST17:
	.long	.LVL42
	.long	.LVL43-1
	.value	0x1
	.byte	0x50
	.long	.LVL43-1
	.long	.LVL46
	.value	0x1
	.byte	0x57
	.long	.LVL46
	.long	.LVL48-1
	.value	0x1
	.byte	0x50
	.long	.LVL48-1
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST18:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST19:
	.long	.LVL40
	.long	.LVL41
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST20:
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST21:
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST22:
	.long	.LVL57
	.long	.LVL58
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST23:
	.long	.LVL62
	.long	.LVL76
	.value	0x1
	.byte	0x53
	.long	.LVL76
	.long	.LVL79
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL79
	.long	.LVL81
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST24:
	.long	.LVL62
	.long	.LVL73
	.value	0x1
	.byte	0x56
	.long	.LVL73
	.long	.LVL75
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL75
	.long	.LVL77
	.value	0x4
	.byte	0x76
	.sleb128 -148
	.byte	0x9f
	.long	.LVL77
	.long	.LVL79-1
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x94
	.byte	0x1c
	.byte	0x9f
	.long	.LVL79
	.long	.LVL82
	.value	0x1
	.byte	0x56
	.long	.LVL82
	.long	.LVL84-1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST25:
	.long	.LVL64
	.long	.LVL65
	.value	0x1
	.byte	0x50
	.long	.LVL65
	.long	.LVL78
	.value	0x1
	.byte	0x57
	.long	.LVL79
	.long	.LVL83
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST26:
	.long	.LVL68
	.long	.LVL72
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL68
	.long	.LVL69
	.value	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x50
	.long	.LVL70
	.long	.LVL71
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	.LVL71
	.long	.LVL72
	.value	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL91
	.long	.LVL92-1
	.value	0x1
	.byte	0x50
	.long	.LVL93
	.long	.LVL94-1
	.value	0x1
	.byte	0x50
	.long	.LVL95
	.long	.LVL96
	.value	0x1
	.byte	0x50
	.long	.LVL96
	.long	.LVL98
	.value	0x1
	.byte	0x56
	.long	.LVL98
	.long	.LVL99-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	0
	.long	0
.LLST29:
	.long	.LVL88
	.long	.LVL100
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB14
	.long	.LFE14-.LFB14
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB16
	.long	.LBE16
	.long	.LBB20
	.long	.LBE20
	.long	.LBB21
	.long	.LBE21
	.long	0
	.long	0
	.long	.LBB32
	.long	.LBE32
	.long	.LBB36
	.long	.LBE36
	.long	.LBB50
	.long	.LBE50
	.long	0
	.long	0
	.long	.LBB37
	.long	.LBE37
	.long	.LBB51
	.long	.LBE51
	.long	0
	.long	0
	.long	.LBB43
	.long	.LBE43
	.long	.LBB47
	.long	.LBE47
	.long	.LBB48
	.long	.LBE48
	.long	0
	.long	0
	.long	.LBB58
	.long	.LBE58
	.long	.LBB68
	.long	.LBE68
	.long	.LBB69
	.long	.LBE69
	.long	0
	.long	0
	.long	.LBB60
	.long	.LBE60
	.long	.LBB64
	.long	.LBE64
	.long	.LBB65
	.long	.LBE65
	.long	0
	.long	0
	.long	.LBB70
	.long	.LBE70
	.long	.LBB73
	.long	.LBE73
	.long	0
	.long	0
	.long	.LFB10
	.long	.LFE10
	.long	.LFB13
	.long	.LFE13
	.long	.LFB15
	.long	.LFE15
	.long	.LFB14
	.long	.LFE14
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"RHINO_NULL_PTR"
.LASF69:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF20:
	.string	"sem_count_t"
.LASF126:
	.string	"task_stat_t"
.LASF164:
	.string	"timer_cb_t"
.LASF23:
	.string	"suspend_nested_t"
.LASF180:
	.string	"kwork_t"
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
.LASF0:
	.string	"unsigned int"
.LASF90:
	.string	"next"
.LASF202:
	.string	"krhino_work_cancel"
.LASF57:
	.string	"RHINO_INV_TASK_STATE"
.LASF187:
	.string	"workqueue"
.LASF191:
	.string	"krhino_work_run"
.LASF42:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF79:
	.string	"RHINO_TRY_AGAIN"
.LASF48:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF58:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF78:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF105:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF72:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF153:
	.string	"mm_alloc_flag"
.LASF35:
	.string	"RHINO_KOBJ_BLK"
.LASF201:
	.string	"krhino_work_sched"
.LASF91:
	.string	"prev"
.LASF63:
	.string	"RHINO_BLK_INV_STATE"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF97:
	.string	"BLK_ABORT"
.LASF196:
	.string	"klist_insert"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF143:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF195:
	.string	"klist_init"
.LASF15:
	.string	"uint32_t"
.LASF134:
	.string	"mutex_list"
.LASF45:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF38:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF159:
	.string	"count"
.LASF207:
	.string	"k_err_proc"
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
.LASF210:
	.string	"krhino_sem_give"
.LASF197:
	.string	"head"
.LASF145:
	.string	"time_total"
.LASF170:
	.string	"init_count"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF121:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF219:
	.string	"/home/stone/Documents/pca"
.LASF165:
	.string	"timer_list"
.LASF4:
	.string	"size_t"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF133:
	.string	"suspend_count"
.LASF138:
	.string	"tick_remain"
.LASF148:
	.string	"pend_option"
.LASF36:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF175:
	.string	"work_handle_t"
.LASF179:
	.string	"work_exit"
.LASF82:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF12:
	.string	"__uint64_t"
.LASF28:
	.string	"RHINO_STOPPED"
.LASF141:
	.string	"task_state"
.LASF64:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF182:
	.string	"work_list"
.LASF188:
	.string	"stack_buf"
.LASF169:
	.string	"remain"
.LASF74:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF73:
	.string	"RHINO_SEM_OVF"
.LASF220:
	.string	"worker_task"
.LASF85:
	.string	"RHINO_TASK_STACK_OVF"
.LASF109:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF29:
	.string	"RHINO_INV_PARAM"
.LASF172:
	.string	"priv"
.LASF96:
	.string	"BLK_FINISH"
.LASF80:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF18:
	.string	"char"
.LASF160:
	.string	"peak_count"
.LASF205:
	.string	"g_workqueue_stack"
.LASF200:
	.string	"krhino_work_init"
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF174:
	.string	"ktimer_t"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF14:
	.string	"uint8_t"
.LASF127:
	.string	"task_stack"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF142:
	.string	"blk_state"
.LASF156:
	.string	"owner_nested"
.LASF199:
	.string	"work_timer_cb"
.LASF1:
	.string	"long long int"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF128:
	.string	"task_name"
.LASF152:
	.string	"b_prio"
.LASF221:
	.string	"workqueue_is_exist"
.LASF137:
	.string	"tick_match"
.LASF168:
	.string	"match"
.LASF99:
	.string	"BLK_DEL"
.LASF98:
	.string	"BLK_TIMEOUT"
.LASF167:
	.string	"timer_cb_arg"
.LASF185:
	.string	"kworkqueue_t"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF120:
	.string	"K_PEND"
.LASF101:
	.string	"blk_state_t"
.LASF83:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF181:
	.string	"workqueue_node"
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
.LASF208:
	.string	"cpu_intrpt_save"
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
.LASF93:
	.string	"BLK_POLICY_PRI"
.LASF215:
	.string	"krhino_timer_arg_change_auto"
.LASF198:
	.string	"klist_rm_init"
.LASF7:
	.string	"short int"
.LASF212:
	.string	"krhino_task_create"
.LASF9:
	.string	"long int"
.LASF173:
	.string	"timer_state"
.LASF130:
	.string	"task_stack_base"
.LASF218:
	.string	"src/k_workqueue.c"
.LASF118:
	.string	"K_SEED"
.LASF183:
	.string	"work_current"
.LASF161:
	.string	"sem_item"
.LASF119:
	.string	"K_RDY"
.LASF162:
	.string	"ktask_t"
.LASF203:
	.string	"g_workqueue_list_head"
.LASF216:
	.string	"krhino_timer_stop"
.LASF16:
	.string	"uint64_t"
.LASF124:
	.string	"K_SLEEP_SUSPENDED"
.LASF192:
	.string	"work"
.LASF76:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF171:
	.string	"round_ticks"
.LASF104:
	.string	"RHINO_MUTEX_OBJ_TYPE"
.LASF5:
	.string	"__uint8_t"
.LASF44:
	.string	"RHINO_RINGBUF_FULL"
.LASF114:
	.string	"name"
.LASF123:
	.string	"K_SLEEP"
.LASF77:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF189:
	.string	"cpsr"
.LASF21:
	.string	"cpu_stack_t"
.LASF50:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF117:
	.string	"blk_obj_t"
.LASF65:
	.string	"RHINO_TIMER_STATE_INV"
.LASF144:
	.string	"time_slice"
.LASF166:
	.string	"to_head"
.LASF17:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF94:
	.string	"BLK_POLICY_FIFO"
.LASF222:
	.string	"workqueue_init"
.LASF102:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF194:
	.string	"queue"
.LASF31:
	.string	"RHINO_INV_ALIGN"
.LASF41:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF49:
	.string	"RHINO_INV_SCHED_WAY"
.LASF55:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF139:
	.string	"tick_head"
.LASF214:
	.string	"krhino_timer_dyn_create"
.LASF190:
	.string	"krhino_workqueue_create"
.LASF154:
	.string	"mutex_s"
.LASF6:
	.string	"unsigned char"
.LASF184:
	.string	"worker"
.LASF10:
	.string	"__uint32_t"
.LASF211:
	.string	"krhino_sem_create"
.LASF217:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF116:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF206:
	.string	"krhino_sem_take"
.LASF204:
	.string	"g_workqueue_default"
.LASF186:
	.string	"list_head"
.LASF22:
	.string	"mutex_nested_t"
.LASF131:
	.string	"stack_size"
.LASF107:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF193:
	.string	"element"
.LASF122:
	.string	"K_PEND_SUSPENDED"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF176:
	.string	"work_node"
.LASF3:
	.string	"signed char"
.LASF88:
	.string	"sys_time_t"
.LASF157:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF177:
	.string	"handle"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF103:
	.string	"RHINO_SEM_OBJ_TYPE"
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
.LASF150:
	.string	"cpu_num"
.LASF178:
	.string	"timer"
.LASF213:
	.string	"krhino_sem_del"
.LASF209:
	.string	"cpu_intrpt_restore"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF140:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF100:
	.string	"BLK_INVALID"
.LASF163:
	.string	"ksem_t"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
