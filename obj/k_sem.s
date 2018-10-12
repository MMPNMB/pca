	.file	"k_sem.c"
	.text
.Ltext0:
	.section	.text.unlikely.sem_give,"ax",@progbits
.LCOLDB0:
	.section	.text.sem_give,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sem_give
.Ltext_cold0:
	.section	.text.sem_give
	.type	sem_give, @function
sem_give:
.LFB17:
	.file 1 "kernel/rhino/core/k_sem.c"
	.loc 1 156 0
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
	movl	%eax, %ebx
	subl	$16, %esp
	.loc 1 156 0
	movl	%edx, -12(%ebp)
	.loc 1 167 0
	call	cpu_intrpt_save
.LVL1:
	.loc 1 169 0
	cmpl	$1, 16(%ebx)
	.loc 1 167 0
	movl	%eax, %esi
.LVL2:
	.loc 1 169 0
	movl	-12(%ebp), %edx
	je	.L2
	.loc 1 170 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL3:
	.loc 1 171 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L3
.LVL4:
.L2:
.LBB30:
.LBB31:
	.file 2 "./kernel/rhino/core/include/k_list.h"
	.loc 2 23 0
	movl	(%ebx), %eax
.LVL5:
.LBE31:
.LBE30:
	.loc 1 179 0
	cmpl	%eax, %ebx
	jne	.L4
	.loc 1 180 0
	movl	20(%ebx), %edx
	cmpl	$-1, %edx
	jne	.L5
	.loc 1 183 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL6:
	.loc 1 185 0
	addl	$16, %esp
	movl	$800, %eax
	jmp	.L3
.L5:
	.loc 1 189 0
	incl	%edx
	.loc 1 191 0
	cmpl	24(%ebx), %edx
	.loc 1 189 0
	movl	%edx, 20(%ebx)
	.loc 1 191 0
	jbe	.L6
	.loc 1 192 0
	movl	%edx, 24(%ebx)
.L6:
	.loc 1 196 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL7:
	jmp	.L14
.L4:
	.loc 1 201 0
	testb	%dl, %dl
	je	.L16
.L11:
.LVL8:
.LBB32:
.LBB33:
	.loc 2 23 0
	movl	(%ebx), %eax
.LVL9:
.LBE33:
.LBE32:
	.loc 1 202 0
	cmpl	%eax, %ebx
	je	.L10
	.loc 1 207 0
	subl	$12, %esp
	subl	$24, %eax
	pushl	%eax
	call	pend_task_wakeup
.LVL10:
	addl	$16, %esp
	jmp	.L11
.L16:
	.loc 1 216 0
	subl	$12, %esp
	subl	$24, %eax
	pushl	%eax
	call	pend_task_wakeup
.LVL11:
	addl	$16, %esp
.L10:
	.loc 1 219 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL12:
	call	core_sched
.LVL13:
.L14:
	.loc 1 221 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL14:
.L3:
	.loc 1 222 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL15:
	popl	%esi
	.cfi_restore 6
.LVL16:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	sem_give, .-sem_give
	.section	.text.unlikely.sem_give
.LCOLDE0:
	.section	.text.sem_give
.LHOTE0:
	.section	.text.unlikely.krhino_sem_create,"ax",@progbits
.LCOLDB1:
	.section	.text.krhino_sem_create,"ax",@progbits
.LHOTB1:
	.globl	krhino_sem_create
	.type	krhino_sem_create, @function
krhino_sem_create:
.LFB13:
	.loc 1 40 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 40 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %ebx
.LVL18:
	movl	16(%ebp), %edx
.LVL19:
.LBB42:
.LBB43:
	.loc 1 14 0
	testl	%eax, %eax
	je	.L19
	testl	%ebx, %ebx
	je	.L19
.LVL20:
.LBB44:
.LBB45:
	.loc 1 20 0
	movl	%edx, 20(%ebx)
	.loc 1 21 0
	movl	%edx, 24(%ebx)
.LBB46:
.LBB47:
	.loc 2 17 0
	movl	%ebx, (%ebx)
	.loc 2 18 0
	movl	%ebx, 4(%ebx)
.LVL21:
.LBE47:
.LBE46:
	.loc 1 22 0
	movl	%eax, 8(%ebx)
	.loc 1 23 0
	movl	$0, 12(%ebx)
	.loc 1 24 0
	movb	$1, 36(%ebx)
	.loc 1 27 0
	call	cpu_intrpt_save
.LVL22:
.LBB48:
.LBB49:
	.loc 2 28 0
	movl	g_kobj_list+28, %ecx
	.loc 2 29 0
	movl	$g_kobj_list+24, 28(%ebx)
.LBE49:
.LBE48:
	.loc 1 28 0
	leal	28(%ebx), %edx
.LVL23:
	.loc 1 29 0
	subl	$12, %esp
.LBB52:
.LBB50:
	.loc 2 28 0
	movl	%ecx, 32(%ebx)
	.loc 2 31 0
	movl	g_kobj_list+28, %ecx
	movl	%edx, (%ecx)
.LVL24:
.LBE50:
.LBE52:
	.loc 1 29 0
	pushl	%eax
.LBB53:
.LBB51:
	.loc 2 32 0
	movl	%edx, g_kobj_list+28
.LVL25:
.LBE51:
.LBE53:
	.loc 1 29 0
	call	cpu_intrpt_restore
.LVL26:
	.loc 1 32 0
	movl	$1, 16(%ebx)
.LVL27:
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L18
.LVL28:
.L19:
.LBE45:
.LBE44:
	.loc 1 14 0
	movl	$6, %eax
.LVL29:
.L18:
.LBE43:
.LBE42:
	.loc 1 42 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	krhino_sem_create, .-krhino_sem_create
	.section	.text.unlikely.krhino_sem_create
.LCOLDE1:
	.section	.text.krhino_sem_create
.LHOTE1:
	.section	.text.unlikely.krhino_sem_del,"ax",@progbits
.LCOLDB2:
	.section	.text.krhino_sem_del,"ax",@progbits
.LHOTB2:
	.globl	krhino_sem_del
	.type	krhino_sem_del, @function
krhino_sem_del:
.LFB14:
	.loc 1 45 0
	.cfi_startproc
.LVL30:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 50 0
	movl	$6, %eax
	.loc 1 45 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 45 0
	movl	8(%ebp), %ebx
	.loc 1 50 0
	testl	%ebx, %ebx
	je	.L22
	.loc 1 52 0
	call	cpu_intrpt_save
.LVL31:
	.loc 1 54 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 52 0
	movl	%eax, %esi
.LVL32:
	.loc 1 54 0
	je	.L23
	.loc 1 54 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL33:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L22
.LVL34:
.L23:
	.loc 1 56 0 is_stmt 1
	cmpl	$1, 16(%ebx)
	je	.L24
	.loc 1 57 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL35:
	.loc 1 58 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L22
.LVL36:
.L24:
	.loc 1 61 0
	cmpb	$1, 36(%ebx)
	je	.L25
	.loc 1 62 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL37:
	.loc 1 63 0
	addl	$16, %esp
	movl	$9, %eax
	jmp	.L22
.LVL38:
.L25:
	.loc 1 67 0
	movl	$0, 16(%ebx)
.LVL39:
.L26:
.LBB58:
.LBB59:
	.loc 2 23 0
	movl	(%ebx), %eax
.LVL40:
.LBE59:
.LBE58:
	.loc 1 70 0
	cmpl	%eax, %ebx
	je	.L31
	.loc 1 71 0
	subl	$12, %esp
	subl	$24, %eax
	pushl	%eax
	call	pend_task_rm
.LVL41:
	addl	$16, %esp
	jmp	.L26
.L31:
.LVL42:
.LBB60:
.LBB61:
	.loc 2 46 0
	movl	32(%ebx), %eax
	movl	28(%ebx), %edx
.LBE61:
.LBE60:
	.loc 1 79 0
	subl	$12, %esp
.LBB63:
.LBB62:
	.loc 2 46 0
	movl	%edx, (%eax)
	.loc 2 47 0
	movl	28(%ebx), %edx
	movl	%eax, 4(%edx)
.LVL43:
.LBE62:
.LBE63:
	.loc 1 79 0
	pushl	%esi
	call	cpu_intrpt_restore
.LVL44:
	call	core_sched
.LVL45:
	.loc 1 81 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL46:
.L22:
	.loc 1 82 0
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
.LFE14:
	.size	krhino_sem_del, .-krhino_sem_del
	.section	.text.unlikely.krhino_sem_del
.LCOLDE2:
	.section	.text.krhino_sem_del
.LHOTE2:
	.section	.text.unlikely.krhino_sem_dyn_create,"ax",@progbits
.LCOLDB3:
	.section	.text.krhino_sem_dyn_create,"ax",@progbits
.LHOTB3:
	.globl	krhino_sem_dyn_create
	.type	krhino_sem_dyn_create, @function
krhino_sem_dyn_create:
.LFB15:
	.loc 1 87 0
	.cfi_startproc
.LVL47:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 91 0
	movl	$6, %eax
	.loc 1 87 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 91 0
	cmpl	$0, 8(%ebp)
	.loc 1 87 0
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	.loc 1 91 0
	je	.L37
	.loc 1 93 0
	subl	$12, %esp
	pushl	$40
	call	krhino_mm_alloc
.LVL48:
	movl	%eax, %ebx
.LVL49:
	.loc 1 95 0
	addl	$16, %esp
	.loc 1 96 0
	movl	$105, %eax
.LVL50:
	.loc 1 95 0
	testl	%ebx, %ebx
	je	.L37
.LVL51:
.LBB72:
.LBB73:
	.loc 1 14 0
	testl	%esi, %esi
	je	.L34
.LVL52:
.LBB74:
.LBB75:
	.loc 1 22 0
	movl	%esi, 8(%ebx)
.LBB76:
.LBB77:
	.loc 2 17 0
	movl	%ebx, (%ebx)
	.loc 2 18 0
	movl	%ebx, 4(%ebx)
.LVL53:
.LBE77:
.LBE76:
	.loc 1 20 0
	movl	%edi, 20(%ebx)
	.loc 1 21 0
	movl	%edi, 24(%ebx)
	.loc 1 23 0
	movl	$0, 12(%ebx)
	.loc 1 24 0
	movb	$2, 36(%ebx)
	.loc 1 27 0
	call	cpu_intrpt_save
.LVL54:
.LBB78:
.LBB79:
	.loc 2 28 0
	movl	g_kobj_list+28, %esi
.LVL55:
	.loc 2 29 0
	movl	$g_kobj_list+24, 28(%ebx)
.LBE79:
.LBE78:
	.loc 1 28 0
	leal	28(%ebx), %ecx
.LVL56:
	.loc 1 29 0
	subl	$12, %esp
.LBB82:
.LBB80:
	.loc 2 28 0
	movl	%esi, 32(%ebx)
	.loc 2 31 0
	movl	g_kobj_list+28, %esi
	movl	%ecx, (%esi)
.LVL57:
.LBE80:
.LBE82:
	.loc 1 29 0
	pushl	%eax
.LBB83:
.LBB81:
	.loc 2 32 0
	movl	%ecx, g_kobj_list+28
.LVL58:
.LBE81:
.LBE83:
	.loc 1 29 0
	call	cpu_intrpt_restore
.LVL59:
.LBE75:
.LBE74:
.LBE73:
.LBE72:
	.loc 1 106 0
	movl	8(%ebp), %eax
.LBB88:
.LBB86:
.LBB85:
.LBB84:
	.loc 1 32 0
	movl	$1, 16(%ebx)
.LVL60:
.LBE84:
.LBE85:
.LBE86:
.LBE88:
	.loc 1 108 0
	addl	$16, %esp
	.loc 1 106 0
	movl	%ebx, (%eax)
	.loc 1 108 0
	xorl	%eax, %eax
	jmp	.L37
.LVL61:
.L34:
	.loc 1 102 0
	subl	$12, %esp
	pushl	%ebx
	call	krhino_mm_free
.LVL62:
	.loc 1 103 0
	addl	$16, %esp
.LBB89:
.LBB87:
	.loc 1 14 0
	movl	$6, %eax
.LVL63:
.L37:
.LBE87:
.LBE89:
	.loc 1 109 0
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
	.size	krhino_sem_dyn_create, .-krhino_sem_dyn_create
	.section	.text.unlikely.krhino_sem_dyn_create
.LCOLDE3:
	.section	.text.krhino_sem_dyn_create
.LHOTE3:
	.section	.text.unlikely.krhino_sem_dyn_del,"ax",@progbits
.LCOLDB4:
	.section	.text.krhino_sem_dyn_del,"ax",@progbits
.LHOTB4:
	.globl	krhino_sem_dyn_del
	.type	krhino_sem_dyn_del, @function
krhino_sem_dyn_del:
.LFB16:
	.loc 1 112 0
	.cfi_startproc
.LVL64:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 117 0
	movl	$6, %eax
	.loc 1 112 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 112 0
	movl	8(%ebp), %ebx
	.loc 1 117 0
	testl	%ebx, %ebx
	je	.L42
	.loc 1 119 0
	call	cpu_intrpt_save
.LVL65:
	.loc 1 121 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 119 0
	movl	%eax, %esi
.LVL66:
	.loc 1 121 0
	je	.L43
	.loc 1 121 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL67:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L42
.LVL68:
.L43:
	.loc 1 123 0 is_stmt 1
	cmpl	$1, 16(%ebx)
	je	.L44
	.loc 1 124 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL69:
	.loc 1 125 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L42
.LVL70:
.L44:
	.loc 1 128 0
	cmpb	$2, 36(%ebx)
	je	.L45
	.loc 1 129 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL71:
	.loc 1 130 0
	addl	$16, %esp
	movl	$9, %eax
	jmp	.L42
.LVL72:
.L45:
	.loc 1 134 0
	movl	$0, 16(%ebx)
.LVL73:
.L46:
.LBB94:
.LBB95:
	.loc 2 23 0
	movl	(%ebx), %eax
.LVL74:
.LBE95:
.LBE94:
	.loc 1 137 0
	cmpl	%eax, %ebx
	je	.L51
	.loc 1 138 0
	subl	$12, %esp
	subl	$24, %eax
	pushl	%eax
	call	pend_task_rm
.LVL75:
	addl	$16, %esp
	jmp	.L46
.L51:
.LVL76:
.LBB96:
.LBB97:
	.loc 2 46 0
	movl	32(%ebx), %eax
	movl	28(%ebx), %edx
.LBE97:
.LBE96:
	.loc 1 146 0
	subl	$12, %esp
.LBB99:
.LBB98:
	.loc 2 46 0
	movl	%edx, (%eax)
	.loc 2 47 0
	movl	28(%ebx), %edx
	movl	%eax, 4(%edx)
.LVL77:
.LBE98:
.LBE99:
	.loc 1 146 0
	pushl	%esi
	call	cpu_intrpt_restore
.LVL78:
	call	core_sched
.LVL79:
	.loc 1 148 0
	movl	%ebx, (%esp)
	call	krhino_mm_free
.LVL80:
	.loc 1 150 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL81:
.L42:
	.loc 1 151 0
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
.LFE16:
	.size	krhino_sem_dyn_del, .-krhino_sem_dyn_del
	.section	.text.unlikely.krhino_sem_dyn_del
.LCOLDE4:
	.section	.text.krhino_sem_dyn_del
.LHOTE4:
	.section	.text.unlikely.krhino_sem_give,"ax",@progbits
.LCOLDB5:
	.section	.text.krhino_sem_give,"ax",@progbits
.LHOTB5:
	.globl	krhino_sem_give
	.type	krhino_sem_give, @function
krhino_sem_give:
.LFB18:
	.loc 1 225 0
	.cfi_startproc
.LVL82:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 225 0
	movl	8(%ebp), %eax
	.loc 1 226 0
	testl	%eax, %eax
	je	.L53
	.loc 1 229 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 228 0
	xorl	%edx, %edx
	jmp	sem_give
.LVL83:
.L53:
	.cfi_restore_state
	.loc 1 229 0
	movl	$6, %eax
.LVL84:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	krhino_sem_give, .-krhino_sem_give
	.section	.text.unlikely.krhino_sem_give
.LCOLDE5:
	.section	.text.krhino_sem_give
.LHOTE5:
	.section	.text.unlikely.krhino_sem_give_all,"ax",@progbits
.LCOLDB6:
	.section	.text.krhino_sem_give_all,"ax",@progbits
.LHOTB6:
	.globl	krhino_sem_give_all
	.type	krhino_sem_give_all, @function
krhino_sem_give_all:
.LFB19:
	.loc 1 232 0
	.cfi_startproc
.LVL85:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 232 0
	movl	8(%ebp), %eax
	.loc 1 233 0
	testl	%eax, %eax
	je	.L56
	.loc 1 236 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 235 0
	movl	$1, %edx
	jmp	sem_give
.LVL86:
.L56:
	.cfi_restore_state
	.loc 1 236 0
	movl	$6, %eax
.LVL87:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	krhino_sem_give_all, .-krhino_sem_give_all
	.section	.text.unlikely.krhino_sem_give_all
.LCOLDE6:
	.section	.text.krhino_sem_give_all
.LHOTE6:
	.section	.text.unlikely.krhino_sem_take,"ax",@progbits
.LCOLDB7:
	.section	.text.krhino_sem_take,"ax",@progbits
.LHOTB7:
	.globl	krhino_sem_take
	.type	krhino_sem_take, @function
krhino_sem_take:
.LFB20:
	.loc 1 239 0
	.cfi_startproc
.LVL88:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 245 0
	movl	$6, %eax
	.loc 1 239 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 239 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	.loc 1 245 0
	testl	%edx, %edx
	movl	%edx, -28(%ebp)
	je	.L59
	.loc 1 247 0
	call	cpu_intrpt_save
.LVL89:
	.loc 1 249 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 247 0
	movl	%eax, %ebx
.LVL90:
	.loc 1 249 0
	movl	-28(%ebp), %edx
	je	.L60
	.loc 1 249 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL91:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L59
.LVL92:
.L60:
	.loc 1 251 0 is_stmt 1
	cmpl	$1, 16(%edx)
	je	.L61
	.loc 1 252 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL93:
	.loc 1 253 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L59
.LVL94:
.L61:
	.loc 1 258 0
	movl	20(%edx), %eax
.LVL95:
	testl	%eax, %eax
	je	.L62
	.loc 1 259 0
	decl	%eax
	.loc 1 262 0
	subl	$12, %esp
	.loc 1 259 0
	movl	%eax, 20(%edx)
	.loc 1 262 0
	pushl	%ebx
	call	cpu_intrpt_restore
.LVL96:
	.loc 1 264 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L59
.L62:
	.loc 1 268 0
	movl	%edi, %eax
	orl	%esi, %eax
	jne	.L63
	.loc 1 269 0
	subl	$12, %esp
	pushl	%ebx
	call	cpu_intrpt_restore
.LVL97:
	.loc 1 270 0
	addl	$16, %esp
	movl	$400, %eax
	jmp	.L59
.L63:
	.loc 1 273 0
	cmpb	$0, g_sched_lock
	je	.L64
	.loc 1 274 0
	subl	$12, %esp
	pushl	%ebx
	call	cpu_intrpt_restore
.LVL98:
	.loc 1 275 0
	addl	$16, %esp
	movl	$200, %eax
	jmp	.L59
.L64:
	.loc 1 278 0
	pushl	%edi
	pushl	%esi
	pushl	g_active_task
	pushl	%edx
	call	pend_to_blk_obj
.LVL99:
	.loc 1 282 0
	movl	%ebx, (%esp)
	call	cpu_intrpt_restore
.LVL100:
	call	core_sched
.LVL101:
	.loc 1 284 0
	call	cpu_intrpt_save
.LVL102:
	movl	%eax, %ebx
.LVL103:
	.loc 1 286 0
	popl	%eax
.LVL104:
	pushl	g_active_task
	call	pend_state_end_proc
.LVL105:
	movl	%eax, %esi
.LVL106:
	.loc 1 288 0
	movl	%ebx, (%esp)
	call	cpu_intrpt_restore
.LVL107:
	.loc 1 290 0
	addl	$16, %esp
	movl	%esi, %eax
.LVL108:
.L59:
	.loc 1 291 0
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
	.size	krhino_sem_take, .-krhino_sem_take
	.section	.text.unlikely.krhino_sem_take
.LCOLDE7:
	.section	.text.krhino_sem_take
.LHOTE7:
	.section	.text.unlikely.krhino_sem_count_set,"ax",@progbits
.LCOLDB8:
	.section	.text.krhino_sem_count_set,"ax",@progbits
.LHOTB8:
	.globl	krhino_sem_count_set
	.type	krhino_sem_count_set, @function
krhino_sem_count_set:
.LFB21:
	.loc 1 294 0
	.cfi_startproc
.LVL109:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 299 0
	movl	$6, %eax
	.loc 1 294 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 294 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 299 0
	testl	%ebx, %ebx
	je	.L69
.LVL110:
	.loc 1 303 0
	call	cpu_intrpt_save
.LVL111:
	.loc 1 305 0
	cmpb	$0, g_intrpt_nested_level
	je	.L70
	.loc 1 305 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL112:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L69
.LVL113:
.L70:
	.loc 1 307 0 is_stmt 1
	cmpl	$1, 16(%ebx)
	je	.L71
	.loc 1 308 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL114:
	.loc 1 309 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L69
.LVL115:
.L71:
	.loc 1 313 0
	cmpl	$0, 20(%ebx)
	je	.L72
.L75:
	.loc 1 325 0
	cmpl	24(%ebx), %esi
	.loc 1 314 0
	movl	%esi, 20(%ebx)
	.loc 1 325 0
	jbe	.L74
	.loc 1 326 0
	movl	%esi, 24(%ebx)
	jmp	.L74
.LVL116:
.L72:
	.loc 1 316 0
	cmpl	(%ebx), %ebx
	je	.L75
	.loc 1 319 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL117:
	.loc 1 320 0
	addl	$16, %esp
	movl	$801, %eax
	jmp	.L69
.LVL118:
.L74:
	.loc 1 329 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL119:
	.loc 1 331 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL120:
.L69:
	.loc 1 332 0
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
.LFE21:
	.size	krhino_sem_count_set, .-krhino_sem_count_set
	.section	.text.unlikely.krhino_sem_count_set
.LCOLDE8:
	.section	.text.krhino_sem_count_set
.LHOTE8:
	.section	.text.unlikely.krhino_sem_count_get,"ax",@progbits
.LCOLDB9:
	.section	.text.krhino_sem_count_get,"ax",@progbits
.LHOTB9:
	.globl	krhino_sem_count_get
	.type	krhino_sem_count_get, @function
krhino_sem_count_get:
.LFB22:
	.loc 1 335 0
	.cfi_startproc
.LVL121:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 335 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 339 0
	testl	%esi, %esi
	je	.L81
	testl	%ebx, %ebx
	je	.L81
	.loc 1 341 0
	call	cpu_intrpt_save
.LVL122:
	.loc 1 342 0
	movl	20(%esi), %edx
	.loc 1 343 0
	subl	$12, %esp
	.loc 1 342 0
	movl	%edx, (%ebx)
	.loc 1 343 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL123:
	.loc 1 345 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L80
.L81:
	.loc 1 339 0
	movl	$6, %eax
.L80:
	.loc 1 346 0
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
.LFE22:
	.size	krhino_sem_count_get, .-krhino_sem_count_get
	.section	.text.unlikely.krhino_sem_count_get
.LCOLDE9:
	.section	.text.krhino_sem_count_get
.LHOTE9:
	.text
.Letext0:
	.section	.text.unlikely.sem_give
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
	.file 13 "./kernel/rhino/core/include/k_internal.h"
	.file 14 "././platform/arch/arm/armv5/./gcc/port.h"
	.file 15 "./kernel/rhino/core/include/k_mm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf63
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF210
	.byte	0xc
	.long	.LASF211
	.long	.LASF212
	.long	.Ldebug_ranges0+0xa8
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
	.byte	0x2
	.byte	0x8
	.long	0x2ed
	.uleb128 0xa
	.long	.LASF89
	.byte	0x2
	.byte	0x9
	.long	0x2ed
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x2
	.byte	0xa
	.long	0x2ed
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2c8
	.uleb128 0x3
	.long	.LASF91
	.byte	0x2
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
	.uleb128 0xb
	.byte	0x4
	.long	0x2f3
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0x8
	.long	0x49e
	.uleb128 0x7
	.long	.LASF125
	.byte	0
	.uleb128 0x7
	.long	.LASF126
	.byte	0x1
	.uleb128 0x7
	.long	.LASF127
	.byte	0x2
	.uleb128 0x7
	.long	.LASF128
	.byte	0x3
	.uleb128 0x7
	.long	.LASF129
	.byte	0x4
	.uleb128 0x7
	.long	.LASF130
	.byte	0x5
	.uleb128 0x7
	.long	.LASF131
	.byte	0x6
	.uleb128 0x7
	.long	.LASF132
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF133
	.byte	0xa
	.byte	0x11
	.long	0x461
	.uleb128 0xd
	.byte	0x7c
	.byte	0xa
	.byte	0x15
	.long	0x60e
	.uleb128 0xa
	.long	.LASF134
	.byte	0xa
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0xa
	.long	.LASF135
	.byte	0xa
	.byte	0x1a
	.long	0x3dd
	.byte	0x4
	.uleb128 0xa
	.long	.LASF136
	.byte	0xa
	.byte	0x1d
	.long	0x60e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF137
	.byte	0xa
	.byte	0x20
	.long	0x61e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF138
	.byte	0xa
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0xa
	.long	.LASF139
	.byte	0xa
	.byte	0x22
	.long	0x2f3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF140
	.byte	0xa
	.byte	0x25
	.long	0xfb
	.byte	0x20
	.uleb128 0xa
	.long	.LASF141
	.byte	0xa
	.byte	0x28
	.long	0x679
	.byte	0x24
	.uleb128 0xa
	.long	.LASF142
	.byte	0xa
	.byte	0x2b
	.long	0x2f3
	.byte	0x28
	.uleb128 0xa
	.long	.LASF143
	.byte	0xa
	.byte	0x2e
	.long	0x2f3
	.byte	0x30
	.uleb128 0xa
	.long	.LASF144
	.byte	0xa
	.byte	0x2f
	.long	0x2bd
	.byte	0x38
	.uleb128 0xa
	.long	.LASF145
	.byte	0xa
	.byte	0x30
	.long	0x2bd
	.byte	0x40
	.uleb128 0xa
	.long	.LASF146
	.byte	0xa
	.byte	0x31
	.long	0x45b
	.byte	0x48
	.uleb128 0xe
	.string	"msg"
	.byte	0xa
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0xa
	.long	.LASF147
	.byte	0xa
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF148
	.byte	0xa
	.byte	0x39
	.long	0x49e
	.byte	0x54
	.uleb128 0xa
	.long	.LASF149
	.byte	0xa
	.byte	0x3a
	.long	0x34d
	.byte	0x58
	.uleb128 0xa
	.long	.LASF111
	.byte	0xa
	.byte	0x3d
	.long	0x67f
	.byte	0x5c
	.uleb128 0xa
	.long	.LASF150
	.byte	0xa
	.byte	0x40
	.long	0x6ce
	.byte	0x60
	.uleb128 0xa
	.long	.LASF151
	.byte	0xa
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0xa
	.long	.LASF152
	.byte	0xa
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0xa
	.long	.LASF153
	.byte	0xa
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0xa
	.long	.LASF154
	.byte	0xa
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0xa
	.long	.LASF155
	.byte	0xa
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0xa
	.long	.LASF156
	.byte	0xa
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0xa
	.long	.LASF157
	.byte	0xa
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0xa
	.long	.LASF158
	.byte	0xa
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0xa
	.long	.LASF159
	.byte	0xa
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0xa
	.long	.LASF160
	.byte	0xa
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0xf
	.long	0xc6
	.long	0x61e
	.uleb128 0x10
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xe5
	.uleb128 0x9
	.long	.LASF161
	.byte	0x2c
	.byte	0xb
	.byte	0x8
	.long	0x679
	.uleb128 0xa
	.long	.LASF111
	.byte	0xb
	.byte	0x9
	.long	0x3e8
	.byte	0
	.uleb128 0xa
	.long	.LASF162
	.byte	0xb
	.byte	0xa
	.long	0x6ea
	.byte	0x14
	.uleb128 0xa
	.long	.LASF141
	.byte	0xb
	.byte	0xb
	.long	0x679
	.byte	0x18
	.uleb128 0xa
	.long	.LASF163
	.byte	0xb
	.byte	0xc
	.long	0xf0
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF164
	.byte	0xb
	.byte	0xf
	.long	0x2f3
	.byte	0x20
	.uleb128 0xa
	.long	.LASF160
	.byte	0xb
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x624
	.uleb128 0xb
	.byte	0x4
	.long	0x3e8
	.uleb128 0x9
	.long	.LASF165
	.byte	0x28
	.byte	0xc
	.byte	0xb
	.long	0x6ce
	.uleb128 0xa
	.long	.LASF111
	.byte	0xc
	.byte	0xc
	.long	0x3e8
	.byte	0
	.uleb128 0xa
	.long	.LASF166
	.byte	0xc
	.byte	0xd
	.long	0xda
	.byte	0x14
	.uleb128 0xa
	.long	.LASF167
	.byte	0xc
	.byte	0xe
	.long	0xda
	.byte	0x18
	.uleb128 0xa
	.long	.LASF168
	.byte	0xc
	.byte	0x10
	.long	0x2f3
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF160
	.byte	0xc
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x685
	.uleb128 0x3
	.long	.LASF169
	.byte	0xa
	.byte	0x70
	.long	0x4a9
	.uleb128 0x3
	.long	.LASF170
	.byte	0xc
	.byte	0x13
	.long	0x685
	.uleb128 0xb
	.byte	0x4
	.long	0x6d4
	.uleb128 0xf
	.long	0x9e
	.long	0x700
	.uleb128 0x10
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF175
	.byte	0x2
	.byte	0xf
	.byte	0x3
	.long	0x718
	.uleb128 0x12
	.long	.LASF171
	.byte	0x2
	.byte	0xf
	.long	0x45b
	.byte	0
	.uleb128 0x13
	.long	.LASF172
	.byte	0x1
	.byte	0x8
	.long	0x2b2
	.byte	0x1
	.long	0x760
	.uleb128 0x14
	.string	"sem"
	.byte	0x1
	.byte	0x8
	.long	0x760
	.uleb128 0x12
	.long	.LASF113
	.byte	0x1
	.byte	0x8
	.long	0x3dd
	.uleb128 0x12
	.long	.LASF166
	.byte	0x1
	.byte	0x8
	.long	0xda
	.uleb128 0x12
	.long	.LASF160
	.byte	0x1
	.byte	0x9
	.long	0x9e
	.uleb128 0x15
	.long	.LASF180
	.byte	0x1
	.byte	0xb
	.long	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x6df
	.uleb128 0x13
	.long	.LASF173
	.byte	0x2
	.byte	0x15
	.long	0x9e
	.byte	0x3
	.long	0x782
	.uleb128 0x12
	.long	.LASF174
	.byte	0x2
	.byte	0x15
	.long	0x45b
	.byte	0
	.uleb128 0x16
	.long	.LASF213
	.byte	0xe
	.byte	0xf
	.long	0x9e
	.byte	0x3
	.uleb128 0x11
	.long	.LASF176
	.byte	0x2
	.byte	0x1a
	.byte	0x3
	.long	0x7b1
	.uleb128 0x12
	.long	.LASF177
	.byte	0x2
	.byte	0x1a
	.long	0x45b
	.uleb128 0x12
	.long	.LASF178
	.byte	0x2
	.byte	0x1a
	.long	0x45b
	.byte	0
	.uleb128 0x17
	.long	.LASF214
	.byte	0x1
	.byte	0x9b
	.long	0x2b2
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x894
	.uleb128 0x18
	.string	"sem"
	.byte	0x1
	.byte	0x9b
	.long	0x760
	.long	.LLST0
	.uleb128 0x19
	.long	.LASF179
	.byte	0x1
	.byte	0x9b
	.long	0x9e
	.long	.LLST1
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.byte	0x9d
	.long	0x2c
	.long	.LLST2
	.uleb128 0x15
	.long	.LASF181
	.byte	0x1
	.byte	0x9f
	.long	0x9e
	.uleb128 0x1a
	.long	.LASF182
	.byte	0x1
	.byte	0xa0
	.long	0x45b
	.long	.LLST3
	.uleb128 0x1b
	.long	0x766
	.long	.LBB30
	.long	.LBE30-.LBB30
	.byte	0x1
	.byte	0xb3
	.long	0x82e
	.uleb128 0x1c
	.long	0x776
	.long	.LLST4
	.byte	0
	.uleb128 0x1b
	.long	0x766
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.byte	0xca
	.long	0x84b
	.uleb128 0x1c
	.long	0x776
	.long	.LLST5
	.byte	0
	.uleb128 0x1d
	.long	.LVL1
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL3
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL6
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL7
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL10
	.long	0xf19
	.uleb128 0x1d
	.long	.LVL11
	.long	0xf19
	.uleb128 0x1d
	.long	.LVL12
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL13
	.long	0xf24
	.byte	0
	.uleb128 0x1e
	.long	.LASF184
	.byte	0x1
	.byte	0x27
	.long	0x2b2
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b1
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x27
	.long	0x760
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF113
	.byte	0x1
	.byte	0x27
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF166
	.byte	0x1
	.byte	0x27
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	0x718
	.long	.LBB42
	.long	.LBE42-.LBB42
	.byte	0x1
	.byte	0x29
	.uleb128 0x1c
	.long	0x749
	.long	.LLST6
	.uleb128 0x1c
	.long	0x73e
	.long	.LLST7
	.uleb128 0x1c
	.long	0x733
	.long	.LLST8
	.uleb128 0x1c
	.long	0x728
	.long	.LLST9
	.uleb128 0x22
	.long	.LBB43
	.long	.LBE43-.LBB43
	.uleb128 0x23
	.long	0x754
	.uleb128 0x22
	.long	.LBB44
	.long	.LBE44-.LBB44
	.uleb128 0x1c
	.long	0x749
	.long	.LLST10
	.uleb128 0x1c
	.long	0x73e
	.long	.LLST11
	.uleb128 0x1c
	.long	0x733
	.long	.LLST12
	.uleb128 0x1c
	.long	0x728
	.long	.LLST13
	.uleb128 0x22
	.long	.LBB45
	.long	.LBE45-.LBB45
	.uleb128 0x24
	.long	0x754
	.long	.LLST14
	.uleb128 0x1b
	.long	0x700
	.long	.LBB46
	.long	.LBE46-.LBB46
	.byte	0x1
	.byte	0x11
	.long	0x974
	.uleb128 0x1c
	.long	0x70c
	.long	.LLST15
	.byte	0
	.uleb128 0x25
	.long	0x78e
	.long	.LBB48
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1c
	.long	0x99a
	.uleb128 0x1c
	.long	0x79a
	.long	.LLST16
	.uleb128 0x1c
	.long	0x7a5
	.long	.LLST17
	.byte	0
	.uleb128 0x1d
	.long	.LVL22
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL26
	.long	0xf0e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF183
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.long	0x9c9
	.uleb128 0x12
	.long	.LASF178
	.byte	0x2
	.byte	0x2c
	.long	0x45b
	.byte	0
	.uleb128 0x1e
	.long	.LASF185
	.byte	0x1
	.byte	0x2c
	.long	0x2b2
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xa88
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x2c
	.long	0x760
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.byte	0x2e
	.long	0x2c
	.long	.LLST18
	.uleb128 0x1a
	.long	.LASF182
	.byte	0x1
	.byte	0x30
	.long	0x45b
	.long	.LLST19
	.uleb128 0x1b
	.long	0x766
	.long	.LBB58
	.long	.LBE58-.LBB58
	.byte	0x1
	.byte	0x46
	.long	0xa2b
	.uleb128 0x1c
	.long	0x776
	.long	.LLST20
	.byte	0
	.uleb128 0x25
	.long	0x9b1
	.long	.LBB60
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x4b
	.long	0xa48
	.uleb128 0x1c
	.long	0x9bd
	.long	.LLST21
	.byte	0
	.uleb128 0x1d
	.long	.LVL31
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL33
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL35
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL37
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL41
	.long	0xf2f
	.uleb128 0x1d
	.long	.LVL44
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL45
	.long	0xf24
	.byte	0
	.uleb128 0x1e
	.long	.LASF186
	.byte	0x1
	.byte	0x55
	.long	0x2b2
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xbc9
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x55
	.long	0xbc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF113
	.byte	0x1
	.byte	0x55
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LASF166
	.byte	0x1
	.byte	0x56
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x15
	.long	.LASF187
	.byte	0x1
	.byte	0x58
	.long	0x2b2
	.uleb128 0x1a
	.long	.LASF188
	.byte	0x1
	.byte	0x59
	.long	0x760
	.long	.LLST22
	.uleb128 0x25
	.long	0x718
	.long	.LBB72
	.long	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x63
	.long	0xbb6
	.uleb128 0x1c
	.long	0x749
	.long	.LLST23
	.uleb128 0x1c
	.long	0x73e
	.long	.LLST24
	.uleb128 0x1c
	.long	0x733
	.long	.LLST25
	.uleb128 0x1c
	.long	0x728
	.long	.LLST26
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x38
	.uleb128 0x23
	.long	0x754
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x58
	.uleb128 0x1c
	.long	0x749
	.long	.LLST27
	.uleb128 0x1c
	.long	0x73e
	.long	.LLST28
	.uleb128 0x1c
	.long	0x733
	.long	.LLST29
	.uleb128 0x1c
	.long	0x728
	.long	.LLST30
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x58
	.uleb128 0x24
	.long	0x754
	.long	.LLST31
	.uleb128 0x1b
	.long	0x700
	.long	.LBB76
	.long	.LBE76-.LBB76
	.byte	0x1
	.byte	0x11
	.long	0xb7a
	.uleb128 0x1c
	.long	0x70c
	.long	.LLST32
	.byte	0
	.uleb128 0x25
	.long	0x78e
	.long	.LBB78
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x1c
	.long	0xba0
	.uleb128 0x1c
	.long	0x79a
	.long	.LLST33
	.uleb128 0x1c
	.long	0x7a5
	.long	.LLST34
	.byte	0
	.uleb128 0x1d
	.long	.LVL54
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL59
	.long	0xf0e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL48
	.long	0xf3a
	.uleb128 0x1d
	.long	.LVL62
	.long	0xf45
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x760
	.uleb128 0x1e
	.long	.LASF189
	.byte	0x1
	.byte	0x6f
	.long	0x2b2
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xc97
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0x6f
	.long	0x760
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.byte	0x71
	.long	0x2c
	.long	.LLST35
	.uleb128 0x1a
	.long	.LASF182
	.byte	0x1
	.byte	0x73
	.long	0x45b
	.long	.LLST36
	.uleb128 0x1b
	.long	0x766
	.long	.LBB94
	.long	.LBE94-.LBB94
	.byte	0x1
	.byte	0x89
	.long	0xc31
	.uleb128 0x1c
	.long	0x776
	.long	.LLST37
	.byte	0
	.uleb128 0x25
	.long	0x9b1
	.long	.LBB96
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x8e
	.long	0xc4e
	.uleb128 0x1c
	.long	0x9bd
	.long	.LLST38
	.byte	0
	.uleb128 0x1d
	.long	.LVL65
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL67
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL69
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL71
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL75
	.long	0xf2f
	.uleb128 0x1d
	.long	.LVL78
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL79
	.long	0xf24
	.uleb128 0x1d
	.long	.LVL80
	.long	0xf45
	.byte	0
	.uleb128 0x1e
	.long	.LASF190
	.byte	0x1
	.byte	0xe0
	.long	0x2b2
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd6
	.uleb128 0x18
	.string	"sem"
	.byte	0x1
	.byte	0xe0
	.long	0x760
	.long	.LLST39
	.uleb128 0x27
	.long	.LVL83
	.long	0x7b1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF191
	.byte	0x1
	.byte	0xe7
	.long	0x2b2
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xd15
	.uleb128 0x18
	.string	"sem"
	.byte	0x1
	.byte	0xe7
	.long	0x760
	.long	.LLST40
	.uleb128 0x27
	.long	.LVL86
	.long	0x7b1
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LASF192
	.byte	0x1
	.byte	0xee
	.long	0x2b2
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xde0
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.byte	0xee
	.long	0x760
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF193
	.byte	0x1
	.byte	0xee
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF180
	.byte	0x1
	.byte	0xf0
	.long	0x2c
	.long	.LLST41
	.uleb128 0x15
	.long	.LASF181
	.byte	0x1
	.byte	0xf2
	.long	0x9e
	.uleb128 0x1a
	.long	.LASF187
	.byte	0x1
	.byte	0xf3
	.long	0x2b2
	.long	.LLST42
	.uleb128 0x1d
	.long	.LVL89
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL91
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL93
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL96
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL97
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL98
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL99
	.long	0xf50
	.uleb128 0x1d
	.long	.LVL100
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL101
	.long	0xf24
	.uleb128 0x1d
	.long	.LVL102
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL105
	.long	0xf5b
	.uleb128 0x1d
	.long	.LVL107
	.long	0xf0e
	.byte	0
	.uleb128 0x29
	.long	.LASF194
	.byte	0x1
	.value	0x125
	.long	0x2b2
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xe66
	.uleb128 0x2a
	.string	"sem"
	.byte	0x1
	.value	0x125
	.long	0x760
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF195
	.byte	0x1
	.value	0x125
	.long	0xda
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF180
	.byte	0x1
	.value	0x127
	.long	0x2c
	.long	.LLST43
	.uleb128 0x2c
	.long	.LASF182
	.byte	0x1
	.value	0x129
	.long	0x45b
	.long	.LLST44
	.uleb128 0x1d
	.long	.LVL111
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL112
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL114
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL117
	.long	0xf0e
	.uleb128 0x1d
	.long	.LVL119
	.long	0xf0e
	.byte	0
	.uleb128 0x29
	.long	.LASF196
	.byte	0x1
	.value	0x14e
	.long	0x2b2
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xec1
	.uleb128 0x2a
	.string	"sem"
	.byte	0x1
	.value	0x14e
	.long	0x760
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF166
	.byte	0x1
	.value	0x14e
	.long	0xec1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	.LASF180
	.byte	0x1
	.value	0x150
	.long	0x2c
	.long	.LLST45
	.uleb128 0x1d
	.long	.LVL122
	.long	0xf03
	.uleb128 0x1d
	.long	.LVL123
	.long	0xf0e
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xda
	.uleb128 0x2d
	.long	.LASF197
	.byte	0xd
	.byte	0xe
	.long	0x6f0
	.uleb128 0x2d
	.long	.LASF198
	.byte	0xd
	.byte	0xf
	.long	0x6f0
	.uleb128 0xf
	.long	0x6ea
	.long	0xeed
	.uleb128 0x10
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF199
	.byte	0xd
	.byte	0x15
	.long	0xedd
	.uleb128 0x2d
	.long	.LASF200
	.byte	0xd
	.byte	0x21
	.long	0x450
	.uleb128 0x2e
	.long	.LASF201
	.long	.LASF201
	.byte	0xe
	.byte	0x8
	.uleb128 0x2e
	.long	.LASF202
	.long	.LASF202
	.byte	0xe
	.byte	0x9
	.uleb128 0x2e
	.long	.LASF203
	.long	.LASF203
	.byte	0xd
	.byte	0x88
	.uleb128 0x2e
	.long	.LASF204
	.long	.LASF204
	.byte	0xd
	.byte	0x7b
	.uleb128 0x2e
	.long	.LASF205
	.long	.LASF205
	.byte	0xd
	.byte	0x8a
	.uleb128 0x2e
	.long	.LASF206
	.long	.LASF206
	.byte	0xf
	.byte	0x8d
	.uleb128 0x2e
	.long	.LASF207
	.long	.LASF207
	.byte	0xf
	.byte	0x93
	.uleb128 0x2e
	.long	.LASF208
	.long	.LASF208
	.byte	0xd
	.byte	0x89
	.uleb128 0x2e
	.long	.LASF209
	.long	.LASF209
	.byte	0xd
	.byte	0x8c
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
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.long	.LVL1-1
	.value	0x1
	.byte	0x50
	.long	.LVL1-1
	.long	.LVL15
	.value	0x1
	.byte	0x53
	.long	.LVL15
	.long	.LFE17
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1-1
	.value	0x1
	.byte	0x52
	.long	.LVL1-1
	.long	.LFE17
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3-1
	.value	0x1
	.byte	0x50
	.long	.LVL3-1
	.long	.LVL4
	.value	0x1
	.byte	0x56
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LVL16
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL19
	.long	.LVL29
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL19
	.long	.LVL22-1
	.value	0x1
	.byte	0x52
	.long	.LVL22-1
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL22-1
	.value	0x1
	.byte	0x50
	.long	.LVL22-1
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL29
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL27
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL20
	.long	.LVL22-1
	.value	0x1
	.byte	0x52
	.long	.LVL22-1
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST12:
	.long	.LVL20
	.long	.LVL22-1
	.value	0x1
	.byte	0x50
	.long	.LVL22-1
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST13:
	.long	.LVL20
	.long	.LVL27
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL22
	.long	.LVL26-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST16:
	.long	.LVL23
	.long	.LVL24
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	0
	.long	0
.LLST17:
	.long	.LVL23
	.long	.LVL25
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST18:
	.long	.LVL32
	.long	.LVL33-1
	.value	0x1
	.byte	0x50
	.long	.LVL33-1
	.long	.LVL34
	.value	0x1
	.byte	0x56
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x50
	.long	.LVL35-1
	.long	.LVL36
	.value	0x1
	.byte	0x56
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	.LVL37-1
	.long	.LVL38
	.value	0x1
	.byte	0x56
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LVL46
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST19:
	.long	.LVL38
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL39
	.long	.LVL40
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST21:
	.long	.LVL42
	.long	.LVL43
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x50
	.long	.LVL50
	.long	.LVL63
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST23:
	.long	.LVL51
	.long	.LVL60
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL51
	.long	.LVL60
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST25:
	.long	.LVL51
	.long	.LVL55
	.value	0x1
	.byte	0x56
	.long	.LVL55
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST26:
	.long	.LVL51
	.long	.LVL60
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL52
	.long	.LVL60
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL52
	.long	.LVL60
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST29:
	.long	.LVL52
	.long	.LVL55
	.value	0x1
	.byte	0x56
	.long	.LVL55
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST30:
	.long	.LVL52
	.long	.LVL60
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST31:
	.long	.LVL54
	.long	.LVL59-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST32:
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST33:
	.long	.LVL56
	.long	.LVL57
	.value	0x2
	.byte	0x71
	.sleb128 0
	.long	0
	.long	0
.LLST34:
	.long	.LVL56
	.long	.LVL58
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST35:
	.long	.LVL66
	.long	.LVL67-1
	.value	0x1
	.byte	0x50
	.long	.LVL67-1
	.long	.LVL68
	.value	0x1
	.byte	0x56
	.long	.LVL68
	.long	.LVL69-1
	.value	0x1
	.byte	0x50
	.long	.LVL69-1
	.long	.LVL70
	.value	0x1
	.byte	0x56
	.long	.LVL70
	.long	.LVL71-1
	.value	0x1
	.byte	0x50
	.long	.LVL71-1
	.long	.LVL72
	.value	0x1
	.byte	0x56
	.long	.LVL72
	.long	.LVL73
	.value	0x1
	.byte	0x50
	.long	.LVL73
	.long	.LVL81
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST36:
	.long	.LVL72
	.long	.LVL81
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST37:
	.long	.LVL73
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST38:
	.long	.LVL76
	.long	.LVL77
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL82
	.long	.LVL83
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL83
	.long	.LVL84
	.value	0x1
	.byte	0x50
	.long	.LVL84
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST40:
	.long	.LVL85
	.long	.LVL86
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL86
	.long	.LVL87
	.value	0x1
	.byte	0x50
	.long	.LVL87
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST41:
	.long	.LVL90
	.long	.LVL91-1
	.value	0x1
	.byte	0x50
	.long	.LVL91-1
	.long	.LVL92
	.value	0x1
	.byte	0x53
	.long	.LVL92
	.long	.LVL93-1
	.value	0x1
	.byte	0x50
	.long	.LVL93-1
	.long	.LVL94
	.value	0x1
	.byte	0x53
	.long	.LVL94
	.long	.LVL95
	.value	0x1
	.byte	0x50
	.long	.LVL95
	.long	.LVL103
	.value	0x1
	.byte	0x53
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x50
	.long	.LVL104
	.long	.LVL108
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST42:
	.long	.LVL106
	.long	.LVL107-1
	.value	0x1
	.byte	0x50
	.long	.LVL107-1
	.long	.LVL108
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST43:
	.long	.LVL111
	.long	.LVL112-1
	.value	0x1
	.byte	0x50
	.long	.LVL113
	.long	.LVL114-1
	.value	0x1
	.byte	0x50
	.long	.LVL115
	.long	.LVL117-1
	.value	0x1
	.byte	0x50
	.long	.LVL118
	.long	.LVL119-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST44:
	.long	.LVL110
	.long	.LVL116
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL116
	.long	.LVL120
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST45:
	.long	.LVL122
	.long	.LVL123-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB48
	.long	.LBE48
	.long	.LBB52
	.long	.LBE52
	.long	.LBB53
	.long	.LBE53
	.long	0
	.long	0
	.long	.LBB60
	.long	.LBE60
	.long	.LBB63
	.long	.LBE63
	.long	0
	.long	0
	.long	.LBB72
	.long	.LBE72
	.long	.LBB88
	.long	.LBE88
	.long	.LBB89
	.long	.LBE89
	.long	0
	.long	0
	.long	.LBB74
	.long	.LBE74
	.long	.LBB85
	.long	.LBE85
	.long	0
	.long	0
	.long	.LBB78
	.long	.LBE78
	.long	.LBB82
	.long	.LBE82
	.long	.LBB83
	.long	.LBE83
	.long	0
	.long	0
	.long	.LBB96
	.long	.LBE96
	.long	.LBB99
	.long	.LBE99
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
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
.LASF133:
	.string	"task_stat_t"
.LASF181:
	.string	"cur_cpu_num"
.LASF206:
	.string	"krhino_mm_alloc"
.LASF186:
	.string	"krhino_sem_dyn_create"
.LASF23:
	.string	"suspend_nested_t"
.LASF213:
	.string	"cpu_cur_get"
.LASF201:
	.string	"cpu_intrpt_save"
.LASF40:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF25:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF153:
	.string	"pend_flags"
.LASF143:
	.string	"tick_list"
.LASF88:
	.string	"tick_t"
.LASF0:
	.string	"unsigned int"
.LASF89:
	.string	"next"
.LASF209:
	.string	"pend_state_end_proc"
.LASF57:
	.string	"RHINO_INV_TASK_STATE"
.LASF42:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF118:
	.string	"mutex_head"
.LASF79:
	.string	"RHINO_TRY_AGAIN"
.LASF48:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF58:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF78:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF104:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF72:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF160:
	.string	"mm_alloc_flag"
.LASF35:
	.string	"RHINO_KOBJ_BLK"
.LASF90:
	.string	"prev"
.LASF63:
	.string	"RHINO_BLK_INV_STATE"
.LASF203:
	.string	"pend_task_wakeup"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF96:
	.string	"BLK_ABORT"
.LASF211:
	.string	"src/k_sem.c"
.LASF176:
	.string	"klist_insert"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF174:
	.string	"list"
.LASF150:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF175:
	.string	"klist_init"
.LASF15:
	.string	"uint32_t"
.LASF183:
	.string	"klist_rm"
.LASF141:
	.string	"mutex_list"
.LASF45:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF38:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF166:
	.string	"count"
.LASF109:
	.string	"kobj_type_t"
.LASF52:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF202:
	.string	"cpu_intrpt_restore"
.LASF94:
	.string	"blk_policy_t"
.LASF70:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF24:
	.string	"RHINO_SUCCESS"
.LASF190:
	.string	"krhino_sem_give"
.LASF177:
	.string	"head"
.LASF152:
	.string	"time_total"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF128:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF212:
	.string	"/home/stone/Documents/pca"
.LASF214:
	.string	"sem_give"
.LASF187:
	.string	"stat"
.LASF4:
	.string	"size_t"
.LASF84:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF140:
	.string	"suspend_count"
.LASF145:
	.string	"tick_remain"
.LASF155:
	.string	"pend_option"
.LASF36:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF82:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF12:
	.string	"__uint64_t"
.LASF28:
	.string	"RHINO_STOPPED"
.LASF148:
	.string	"task_state"
.LASF64:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF74:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF73:
	.string	"RHINO_SEM_OVF"
.LASF193:
	.string	"ticks"
.LASF85:
	.string	"RHINO_TASK_STACK_OVF"
.LASF108:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF119:
	.string	"mblkpool_head"
.LASF29:
	.string	"RHINO_INV_PARAM"
.LASF95:
	.string	"BLK_FINISH"
.LASF80:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF18:
	.string	"char"
.LASF167:
	.string	"peak_count"
.LASF195:
	.string	"sem_count"
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF14:
	.string	"uint8_t"
.LASF134:
	.string	"task_stack"
.LASF172:
	.string	"sem_create"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF149:
	.string	"blk_state"
.LASF163:
	.string	"owner_nested"
.LASF1:
	.string	"long long int"
.LASF208:
	.string	"pend_to_blk_obj"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF135:
	.string	"task_name"
.LASF159:
	.string	"b_prio"
.LASF123:
	.string	"buf_queue_head"
.LASF144:
	.string	"tick_match"
.LASF98:
	.string	"BLK_DEL"
.LASF97:
	.string	"BLK_TIMEOUT"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF127:
	.string	"K_PEND"
.LASF100:
	.string	"blk_state_t"
.LASF182:
	.string	"blk_list_head"
.LASF83:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF43:
	.string	"RHINO_NO_MEM"
.LASF139:
	.string	"task_list"
.LASF75:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF111:
	.string	"blk_obj"
.LASF173:
	.string	"is_klist_empty"
.LASF110:
	.string	"klist_s"
.LASF91:
	.string	"klist_t"
.LASF71:
	.string	"RHINO_QUEUE_FULL"
.LASF154:
	.string	"pend_info"
.LASF205:
	.string	"pend_task_rm"
.LASF112:
	.string	"blk_list"
.LASF66:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF199:
	.string	"g_active_task"
.LASF107:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF158:
	.string	"prio"
.LASF165:
	.string	"sem_s"
.LASF59:
	.string	"RHINO_NO_PEND_WAIT"
.LASF136:
	.string	"user_info"
.LASF2:
	.string	"long double"
.LASF87:
	.string	"kstat_t"
.LASF19:
	.string	"name_t"
.LASF142:
	.string	"task_stats_item"
.LASF39:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF194:
	.string	"krhino_sem_count_set"
.LASF162:
	.string	"mutex_task"
.LASF92:
	.string	"BLK_POLICY_PRI"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"long int"
.LASF137:
	.string	"task_stack_base"
.LASF122:
	.string	"event_head"
.LASF125:
	.string	"K_SEED"
.LASF168:
	.string	"sem_item"
.LASF126:
	.string	"K_RDY"
.LASF124:
	.string	"kobj_list_t"
.LASF169:
	.string	"ktask_t"
.LASF121:
	.string	"queue_head"
.LASF16:
	.string	"uint64_t"
.LASF131:
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
.LASF130:
	.string	"K_SLEEP"
.LASF77:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF180:
	.string	"cpsr"
.LASF21:
	.string	"cpu_stack_t"
.LASF50:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF116:
	.string	"blk_obj_t"
.LASF65:
	.string	"RHINO_TIMER_STATE_INV"
.LASF151:
	.string	"time_slice"
.LASF17:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF93:
	.string	"BLK_POLICY_FIFO"
.LASF101:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF31:
	.string	"RHINO_INV_ALIGN"
.LASF41:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF49:
	.string	"RHINO_INV_SCHED_WAY"
.LASF55:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF146:
	.string	"tick_head"
.LASF161:
	.string	"mutex_s"
.LASF179:
	.string	"opt_wake_all"
.LASF6:
	.string	"unsigned char"
.LASF191:
	.string	"krhino_sem_give_all"
.LASF10:
	.string	"__uint32_t"
.LASF210:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF117:
	.string	"task_head"
.LASF115:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF204:
	.string	"core_sched"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF192:
	.string	"krhino_sem_take"
.LASF188:
	.string	"sem_obj"
.LASF171:
	.string	"list_head"
.LASF22:
	.string	"mutex_nested_t"
.LASF196:
	.string	"krhino_sem_count_get"
.LASF138:
	.string	"stack_size"
.LASF106:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF178:
	.string	"element"
.LASF120:
	.string	"sem_head"
.LASF200:
	.string	"g_kobj_list"
.LASF129:
	.string	"K_PEND_SUSPENDED"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF184:
	.string	"krhino_sem_create"
.LASF3:
	.string	"signed char"
.LASF164:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF102:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF156:
	.string	"sched_policy"
.LASF207:
	.string	"krhino_mm_free"
.LASF114:
	.string	"blk_policy"
.LASF68:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF132:
	.string	"K_DELETED"
.LASF105:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF198:
	.string	"g_intrpt_nested_level"
.LASF157:
	.string	"cpu_num"
.LASF185:
	.string	"krhino_sem_del"
.LASF197:
	.string	"g_sched_lock"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF147:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF99:
	.string	"BLK_INVALID"
.LASF189:
	.string	"krhino_sem_dyn_del"
.LASF170:
	.string	"ksem_t"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
