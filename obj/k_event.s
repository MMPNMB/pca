	.file	"k_event.c"
	.text
.Ltext0:
	.section	.text.unlikely.krhino_event_create,"ax",@progbits
.LCOLDB0:
	.section	.text.krhino_event_create,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.krhino_event_create
.Ltext_cold0:
	.section	.text.krhino_event_create
	.globl	krhino_event_create
	.type	krhino_event_create, @function
krhino_event_create:
.LFB13:
	.file 1 "kernel/rhino/core/k_event.c"
	.loc 1 37 0
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
	.loc 1 37 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %ebx
.LVL1:
.LBB28:
.LBB29:
	.loc 1 14 0
	testl	%eax, %eax
	je	.L3
	testl	%ebx, %ebx
	je	.L3
.LVL2:
.LBB30:
.LBB31:
	.loc 1 19 0
	movl	%eax, 8(%ebx)
	.loc 1 20 0
	movl	16(%ebp), %eax
.LVL3:
.LBB32:
.LBB33:
	.file 2 "./kernel/rhino/core/include/k_list.h"
	.loc 2 17 0
	movl	%ebx, (%ebx)
	.loc 2 18 0
	movl	%ebx, 4(%ebx)
.LVL4:
.LBE33:
.LBE32:
	.loc 1 18 0
	movl	$0, 12(%ebx)
	.loc 1 21 0
	movb	$1, 32(%ebx)
	.loc 1 20 0
	movl	%eax, 20(%ebx)
	.loc 1 24 0
	call	cpu_intrpt_save
.LVL5:
.LBB34:
.LBB35:
	.loc 2 28 0
	movl	g_kobj_list+44, %ecx
	.loc 2 29 0
	movl	$g_kobj_list+40, 24(%ebx)
.LBE35:
.LBE34:
	.loc 1 25 0
	leal	24(%ebx), %edx
.LVL6:
	.loc 1 26 0
	subl	$12, %esp
.LBB38:
.LBB36:
	.loc 2 28 0
	movl	%ecx, 28(%ebx)
	.loc 2 31 0
	movl	g_kobj_list+44, %ecx
	movl	%edx, (%ecx)
.LVL7:
.LBE36:
.LBE38:
	.loc 1 26 0
	pushl	%eax
.LBB39:
.LBB37:
	.loc 2 32 0
	movl	%edx, g_kobj_list+44
.LVL8:
.LBE37:
.LBE39:
	.loc 1 26 0
	call	cpu_intrpt_restore
.LVL9:
	.loc 1 31 0
	movl	$6, 16(%ebx)
.LVL10:
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L2
.LVL11:
.L3:
.LBE31:
.LBE30:
	.loc 1 14 0
	movl	$6, %eax
.LVL12:
.L2:
.LBE29:
.LBE28:
	.loc 1 39 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	krhino_event_create, .-krhino_event_create
	.section	.text.unlikely.krhino_event_create
.LCOLDE0:
	.section	.text.krhino_event_create
.LHOTE0:
	.section	.text.unlikely.krhino_event_del,"ax",@progbits
.LCOLDB1:
	.section	.text.krhino_event_del,"ax",@progbits
.LHOTB1:
	.globl	krhino_event_del
	.type	krhino_event_del, @function
krhino_event_del:
.LFB14:
	.loc 1 42 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 47 0
	movl	$6, %eax
	.loc 1 42 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 42 0
	movl	8(%ebp), %ebx
	.loc 1 47 0
	testl	%ebx, %ebx
	je	.L7
	.loc 1 49 0
	call	cpu_intrpt_save
.LVL14:
	.loc 1 51 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 49 0
	movl	%eax, %esi
.LVL15:
	.loc 1 51 0
	je	.L8
	.loc 1 51 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL16:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L7
.LVL17:
.L8:
	.loc 1 53 0 is_stmt 1
	cmpl	$6, 16(%ebx)
	je	.L9
	.loc 1 54 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL18:
	.loc 1 55 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L7
.LVL19:
.L9:
	.loc 1 58 0
	cmpb	$1, 32(%ebx)
	je	.L10
	.loc 1 59 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL20:
	.loc 1 60 0
	addl	$16, %esp
	movl	$9, %eax
	jmp	.L7
.LVL21:
.L10:
	.loc 1 65 0
	movl	$0, 16(%ebx)
.LVL22:
.L11:
.LBB44:
.LBB45:
	.loc 2 23 0
	movl	(%ebx), %eax
.LVL23:
.LBE45:
.LBE44:
	.loc 1 67 0
	cmpl	%eax, %ebx
	je	.L16
	.loc 1 68 0
	subl	$12, %esp
	subl	$24, %eax
	pushl	%eax
	call	pend_task_rm
.LVL24:
	addl	$16, %esp
	jmp	.L11
.L16:
.LBB46:
.LBB47:
	.loc 2 46 0
	movl	28(%ebx), %eax
	movl	24(%ebx), %edx
.LBE47:
.LBE46:
	.loc 1 79 0
	subl	$12, %esp
	.loc 1 71 0
	movl	$0, 20(%ebx)
.LVL25:
.LBB49:
.LBB48:
	.loc 2 46 0
	movl	%edx, (%eax)
	.loc 2 47 0
	movl	24(%ebx), %edx
	movl	%eax, 4(%edx)
.LVL26:
.LBE48:
.LBE49:
	.loc 1 79 0
	pushl	%esi
	call	cpu_intrpt_restore
.LVL27:
	call	core_sched
.LVL28:
	.loc 1 81 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL29:
.L7:
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
	.size	krhino_event_del, .-krhino_event_del
	.section	.text.unlikely.krhino_event_del
.LCOLDE1:
	.section	.text.krhino_event_del
.LHOTE1:
	.section	.text.unlikely.krhino_event_dyn_create,"ax",@progbits
.LCOLDB2:
	.section	.text.krhino_event_dyn_create,"ax",@progbits
.LHOTB2:
	.globl	krhino_event_dyn_create
	.type	krhino_event_dyn_create, @function
krhino_event_dyn_create:
.LFB15:
	.loc 1 87 0
	.cfi_startproc
.LVL30:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 92 0
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
	.loc 1 87 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	.loc 1 91 0
	testl	%esi, %esi
	je	.L22
	.loc 1 95 0
	subl	$12, %esp
	pushl	$36
	call	krhino_mm_alloc
.LVL31:
	movl	%eax, %ebx
.LVL32:
	.loc 1 97 0
	addl	$16, %esp
	.loc 1 98 0
	movl	$105, %eax
.LVL33:
	.loc 1 97 0
	testl	%ebx, %ebx
	je	.L22
.LVL34:
.LBB58:
.LBB59:
	.loc 1 14 0
	testl	%edi, %edi
	je	.L19
.LVL35:
.LBB60:
.LBB61:
	.loc 1 20 0
	movl	16(%ebp), %eax
.LBB62:
.LBB63:
	.loc 2 17 0
	movl	%ebx, (%ebx)
	.loc 2 18 0
	movl	%ebx, 4(%ebx)
.LVL36:
.LBE63:
.LBE62:
	.loc 1 18 0
	movl	$0, 12(%ebx)
	.loc 1 19 0
	movl	%edi, 8(%ebx)
	.loc 1 21 0
	movb	$2, 32(%ebx)
	.loc 1 20 0
	movl	%eax, 20(%ebx)
	.loc 1 24 0
	call	cpu_intrpt_save
.LVL37:
.LBB64:
.LBB65:
	.loc 2 28 0
	movl	g_kobj_list+44, %ecx
	.loc 2 29 0
	movl	$g_kobj_list+40, 24(%ebx)
.LBE65:
.LBE64:
	.loc 1 25 0
	leal	24(%ebx), %edx
.LVL38:
	.loc 1 26 0
	subl	$12, %esp
.LBB68:
.LBB66:
	.loc 2 28 0
	movl	%ecx, 28(%ebx)
	.loc 2 31 0
	movl	g_kobj_list+44, %ecx
	movl	%edx, (%ecx)
.LVL39:
.LBE66:
.LBE68:
	.loc 1 26 0
	pushl	%eax
.LBB69:
.LBB67:
	.loc 2 32 0
	movl	%edx, g_kobj_list+44
.LVL40:
.LBE67:
.LBE69:
	.loc 1 26 0
	call	cpu_intrpt_restore
.LVL41:
	.loc 1 31 0
	movl	$6, 16(%ebx)
.LVL42:
.LBE61:
.LBE60:
.LBE59:
.LBE58:
	.loc 1 110 0
	addl	$16, %esp
	.loc 1 108 0
	movl	%ebx, (%esi)
	.loc 1 110 0
	xorl	%eax, %eax
	jmp	.L22
.LVL43:
.L19:
	.loc 1 104 0
	subl	$12, %esp
	pushl	%ebx
	call	krhino_mm_free
.LVL44:
	.loc 1 105 0
	addl	$16, %esp
.LBB71:
.LBB70:
	.loc 1 14 0
	movl	$6, %eax
.LVL45:
.L22:
.LBE70:
.LBE71:
	.loc 1 111 0
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
	.size	krhino_event_dyn_create, .-krhino_event_dyn_create
	.section	.text.unlikely.krhino_event_dyn_create
.LCOLDE2:
	.section	.text.krhino_event_dyn_create
.LHOTE2:
	.section	.text.unlikely.krhino_event_dyn_del,"ax",@progbits
.LCOLDB3:
	.section	.text.krhino_event_dyn_del,"ax",@progbits
.LHOTB3:
	.globl	krhino_event_dyn_del
	.type	krhino_event_dyn_del, @function
krhino_event_dyn_del:
.LFB16:
	.loc 1 114 0
	.cfi_startproc
.LVL46:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 119 0
	movl	$6, %eax
	.loc 1 114 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 114 0
	movl	8(%ebp), %ebx
	.loc 1 119 0
	testl	%ebx, %ebx
	je	.L27
	.loc 1 121 0
	call	cpu_intrpt_save
.LVL47:
	.loc 1 123 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 121 0
	movl	%eax, %esi
.LVL48:
	.loc 1 123 0
	je	.L28
	.loc 1 123 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL49:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L27
.LVL50:
.L28:
	.loc 1 125 0 is_stmt 1
	cmpl	$6, 16(%ebx)
	je	.L29
	.loc 1 126 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL51:
	.loc 1 127 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L27
.LVL52:
.L29:
	.loc 1 130 0
	cmpb	$2, 32(%ebx)
	je	.L30
	.loc 1 131 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL53:
	.loc 1 132 0
	addl	$16, %esp
	movl	$9, %eax
	jmp	.L27
.LVL54:
.L30:
	.loc 1 137 0
	movl	$0, 16(%ebx)
.LVL55:
.L31:
.LBB76:
.LBB77:
	.loc 2 23 0
	movl	(%ebx), %eax
.LVL56:
.LBE77:
.LBE76:
	.loc 1 139 0
	cmpl	%eax, %ebx
	je	.L36
	.loc 1 140 0
	subl	$12, %esp
	subl	$24, %eax
	pushl	%eax
	call	pend_task_rm
.LVL57:
	addl	$16, %esp
	jmp	.L31
.L36:
.LBB78:
.LBB79:
	.loc 2 46 0
	movl	28(%ebx), %eax
	movl	24(%ebx), %edx
.LBE79:
.LBE78:
	.loc 1 149 0
	subl	$12, %esp
	.loc 1 143 0
	movl	$0, 20(%ebx)
.LVL58:
.LBB81:
.LBB80:
	.loc 2 46 0
	movl	%edx, (%eax)
	.loc 2 47 0
	movl	24(%ebx), %edx
	movl	%eax, 4(%edx)
.LVL59:
.LBE80:
.LBE81:
	.loc 1 149 0
	pushl	%esi
	call	cpu_intrpt_restore
.LVL60:
	call	core_sched
.LVL61:
	.loc 1 151 0
	movl	%ebx, (%esp)
	call	krhino_mm_free
.LVL62:
	.loc 1 153 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL63:
.L27:
	.loc 1 154 0
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
	.size	krhino_event_dyn_del, .-krhino_event_dyn_del
	.section	.text.unlikely.krhino_event_dyn_del
.LCOLDE3:
	.section	.text.krhino_event_dyn_del
.LHOTE3:
	.section	.text.unlikely.krhino_event_get,"ax",@progbits
.LCOLDB4:
	.section	.text.krhino_event_get,"ax",@progbits
.LHOTB4:
	.globl	krhino_event_get
	.type	krhino_event_get, @function
krhino_event_get:
.LFB17:
	.loc 1 159 0
	.cfi_startproc
.LVL64:
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
	.loc 1 159 0
	movl	20(%ebp), %ecx
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	movl	8(%ebp), %ebx
	movl	16(%ebp), %edx
	.loc 1 167 0
	testl	%ecx, %ecx
	.loc 1 159 0
	movl	%esi, -32(%ebp)
	movl	%edi, -28(%ebp)
	.loc 1 167 0
	je	.L49
	testl	%ebx, %ebx
	je	.L49
	.loc 1 169 0
	cmpb	$3, %dl
	.loc 1 171 0
	movl	$600, %eax
	.loc 1 169 0
	ja	.L51
	movl	%ecx, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 174 0
	call	cpu_intrpt_save
.LVL65:
	.loc 1 176 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 174 0
	movl	%eax, %edi
.LVL66:
	.loc 1 176 0
	movl	-36(%ebp), %edx
	movl	-40(%ebp), %ecx
	je	.L39
	.loc 1 176 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL67:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L51
.LVL68:
.L39:
	.loc 1 178 0 is_stmt 1
	cmpl	$6, 16(%ebx)
	je	.L40
	.loc 1 179 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL69:
	.loc 1 180 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L51
.LVL70:
.L40:
	.loc 1 186 0
	testb	$2, %dl
	.loc 1 187 0
	movl	12(%ebp), %eax
.LVL71:
	.loc 1 186 0
	je	.L41
	.loc 1 187 0
	andl	20(%ebx), %eax
	cmpl	%eax, 12(%ebp)
	jne	.L43
	jmp	.L42
.L41:
	.loc 1 193 0
	testl	%eax, 20(%ebx)
	jne	.L42
	jmp	.L43
.LVL72:
.L49:
	.loc 1 167 0
	movl	$6, %eax
	jmp	.L51
.LVL73:
.L42:
	.loc 1 201 0
	movl	20(%ebx), %eax
	.loc 1 203 0
	andb	$1, %dl
	.loc 1 201 0
	movl	%eax, (%ecx)
	.loc 1 203 0
	je	.L46
	.loc 1 204 0
	movl	12(%ebp), %esi
	notl	%esi
	andl	%esi, 20(%ebx)
.L46:
	.loc 1 208 0
	subl	$12, %esp
	pushl	%edi
	call	cpu_intrpt_restore
.LVL74:
	.loc 1 210 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L51
.LVL75:
.L43:
	.loc 1 214 0
	movl	-28(%ebp), %eax
	orl	-32(%ebp), %eax
	jne	.L52
	.loc 1 215 0
	subl	$12, %esp
	pushl	%edi
	call	cpu_intrpt_restore
.LVL76:
	.loc 1 216 0
	addl	$16, %esp
	movl	$400, %eax
	jmp	.L51
.L52:
	.loc 1 220 0
	cmpb	$0, g_sched_lock
	je	.L44
	.loc 1 221 0
	subl	$12, %esp
	pushl	%edi
	call	cpu_intrpt_restore
.LVL77:
	.loc 1 222 0
	addl	$16, %esp
	movl	$200, %eax
	jmp	.L51
.L44:
	.loc 1 226 0
	movl	g_active_task, %eax
	movb	%dl, 116(%eax)
	.loc 1 227 0
	movl	12(%ebp), %edx
	.loc 1 228 0
	movl	%ecx, 112(%eax)
	.loc 1 227 0
	movl	%edx, 108(%eax)
	.loc 1 230 0
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	pushl	%eax
	pushl	%ebx
	call	pend_to_blk_obj
.LVL78:
	.loc 1 234 0
	movl	%edi, (%esp)
	call	cpu_intrpt_restore
.LVL79:
	call	core_sched
.LVL80:
	.loc 1 236 0
	call	cpu_intrpt_save
.LVL81:
	movl	%eax, %ebx
.LVL82:
	.loc 1 239 0
	popl	%eax
.LVL83:
	pushl	g_active_task
	call	pend_state_end_proc
.LVL84:
	movl	%eax, %esi
.LVL85:
	.loc 1 241 0
	movl	%ebx, (%esp)
	call	cpu_intrpt_restore
.LVL86:
	.loc 1 243 0
	addl	$16, %esp
	movl	%esi, %eax
.LVL87:
.L51:
	.loc 1 244 0
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
	.size	krhino_event_get, .-krhino_event_get
	.section	.text.unlikely.krhino_event_get
.LCOLDE4:
	.section	.text.krhino_event_get
.LHOTE4:
	.section	.text.unlikely.krhino_event_set,"ax",@progbits
.LCOLDB5:
	.section	.text.krhino_event_set,"ax",@progbits
.LHOTB5:
	.globl	krhino_event_set
	.type	krhino_event_set, @function
krhino_event_set:
.LFB19:
	.loc 1 328 0
	.cfi_startproc
.LVL88:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 329 0
	movl	$6, %eax
	.loc 1 328 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 328 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	16(%ebp), %edi
	.loc 1 329 0
	testl	%ebx, %ebx
	je	.L67
	.loc 1 331 0
	testl	$253, %edi
	.loc 1 332 0
	movl	$600, %eax
	.loc 1 331 0
	jne	.L67
.LVL89:
.LBB84:
.LBB85:
	.loc 1 264 0
	call	cpu_intrpt_save
.LVL90:
	.loc 1 266 0
	cmpl	$6, 16(%ebx)
	je	.L56
	.loc 1 267 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL91:
	addl	$16, %esp
	.loc 1 268 0
	movl	$8, %eax
	jmp	.L67
.LVL92:
.L56:
	.loc 1 274 0
	andl	$2, %edi
.LVL93:
	je	.L57
	.loc 1 275 0
	andl	%esi, 20(%ebx)
.LVL94:
	.loc 1 277 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL95:
	jmp	.L69
.LVL96:
.L57:
	.loc 1 280 0
	movl	20(%ebx), %edi
	orl	%esi, %edi
	.loc 1 284 0
	movl	(%ebx), %esi
.LVL97:
	.loc 1 280 0
	movl	%edi, 20(%ebx)
.LVL98:
.L58:
	.loc 1 287 0
	cmpl	%esi, %ebx
	je	.L70
.LVL99:
	.loc 1 291 0
	testb	$2, 92(%esi)
	.loc 1 289 0
	movl	(%esi), %edx
	movl	%edx, -28(%ebp)
.LVL100:
	.loc 1 291 0
	je	.L59
	.loc 1 292 0
	movl	84(%esi), %ecx
	andl	%edi, %ecx
	cmpl	%ecx, 84(%esi)
	jne	.L61
	jmp	.L60
.L59:
	.loc 1 298 0
	testl	%edi, 84(%esi)
	je	.L61
.L60:
	.loc 1 306 0
	movl	88(%esi), %ecx
	.loc 1 309 0
	subl	$12, %esp
	movl	%eax, -32(%ebp)
.LVL101:
	.loc 1 306 0
	movl	%edi, (%ecx)
	.loc 1 309 0
	leal	-24(%esi), %ecx
	pushl	%ecx
	call	pend_task_wakeup
.LVL102:
	.loc 1 314 0
	addl	$16, %esp
	testb	$1, 92(%esi)
	movl	-32(%ebp), %eax
	je	.L61
	.loc 1 315 0
	movl	84(%esi), %ecx
	notl	%ecx
	andl	%ecx, 20(%ebx)
.LVL103:
.L61:
.LBE85:
.LBE84:
	.loc 1 328 0
	movl	-28(%ebp), %esi
.LVL104:
	jmp	.L58
.LVL105:
.L70:
.LBB87:
.LBB86:
	.loc 1 322 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL106:
	call	core_sched
.LVL107:
.L69:
	addl	$16, %esp
	.loc 1 324 0
	xorl	%eax, %eax
.LVL108:
.L67:
.LBE86:
.LBE87:
	.loc 1 336 0
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
.LFE19:
	.size	krhino_event_set, .-krhino_event_set
	.section	.text.unlikely.krhino_event_set
.LCOLDE5:
	.section	.text.krhino_event_set
.LHOTE5:
	.text
.Letext0:
	.section	.text.unlikely.krhino_event_create
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
	.file 13 "./kernel/rhino/core/include/k_event.h"
	.file 14 "./kernel/rhino/core/include/k_internal.h"
	.file 15 "././platform/arch/arm/armv5/./gcc/port.h"
	.file 16 "./kernel/rhino/core/include/k_mm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf09
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF215
	.byte	0xc
	.long	.LASF216
	.long	.LASF217
	.long	.Ldebug_ranges0+0xa0
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
	.long	0x6df
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
	.uleb128 0xb
	.byte	0x4
	.long	0x6d4
	.uleb128 0xd
	.byte	0x24
	.byte	0xd
	.byte	0x8
	.long	0x71e
	.uleb128 0xa
	.long	.LASF111
	.byte	0xd
	.byte	0x9
	.long	0x3e8
	.byte	0
	.uleb128 0xa
	.long	.LASF170
	.byte	0xd
	.byte	0xa
	.long	0xa9
	.byte	0x14
	.uleb128 0xa
	.long	.LASF171
	.byte	0xd
	.byte	0xd
	.long	0x2f3
	.byte	0x18
	.uleb128 0xa
	.long	.LASF160
	.byte	0xd
	.byte	0x10
	.long	0x9e
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF172
	.byte	0xd
	.byte	0x11
	.long	0x6e5
	.uleb128 0xf
	.long	0x9e
	.long	0x739
	.uleb128 0x10
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF178
	.byte	0x2
	.byte	0xf
	.byte	0x3
	.long	0x751
	.uleb128 0x12
	.long	.LASF173
	.byte	0x2
	.byte	0xf
	.long	0x45b
	.byte	0
	.uleb128 0x13
	.long	.LASF175
	.byte	0x1
	.byte	0x8
	.long	0x2b2
	.byte	0x1
	.long	0x799
	.uleb128 0x12
	.long	.LASF174
	.byte	0x1
	.byte	0x8
	.long	0x799
	.uleb128 0x12
	.long	.LASF113
	.byte	0x1
	.byte	0x8
	.long	0x3dd
	.uleb128 0x12
	.long	.LASF170
	.byte	0x1
	.byte	0x8
	.long	0xa9
	.uleb128 0x12
	.long	.LASF160
	.byte	0x1
	.byte	0x9
	.long	0x9e
	.uleb128 0x14
	.long	.LASF185
	.byte	0x1
	.byte	0xb
	.long	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x71e
	.uleb128 0x15
	.long	.LASF218
	.byte	0xf
	.byte	0xf
	.long	0x9e
	.byte	0x3
	.uleb128 0x13
	.long	.LASF176
	.byte	0x2
	.byte	0x15
	.long	0x9e
	.byte	0x3
	.long	0x7c7
	.uleb128 0x12
	.long	.LASF177
	.byte	0x2
	.byte	0x15
	.long	0x45b
	.byte	0
	.uleb128 0x11
	.long	.LASF179
	.byte	0x2
	.byte	0x1a
	.byte	0x3
	.long	0x7ea
	.uleb128 0x12
	.long	.LASF180
	.byte	0x2
	.byte	0x1a
	.long	0x45b
	.uleb128 0x12
	.long	.LASF181
	.byte	0x2
	.byte	0x1a
	.long	0x45b
	.byte	0
	.uleb128 0x16
	.long	.LASF183
	.byte	0x1
	.byte	0x24
	.long	0x2b2
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x907
	.uleb128 0x17
	.long	.LASF174
	.byte	0x1
	.byte	0x24
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF113
	.byte	0x1
	.byte	0x24
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF170
	.byte	0x1
	.byte	0x24
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.long	0x751
	.long	.LBB28
	.long	.LBE28-.LBB28
	.byte	0x1
	.byte	0x26
	.uleb128 0x19
	.long	0x782
	.long	.LLST0
	.uleb128 0x19
	.long	0x777
	.long	.LLST1
	.uleb128 0x19
	.long	0x76c
	.long	.LLST2
	.uleb128 0x19
	.long	0x761
	.long	.LLST3
	.uleb128 0x1a
	.long	.LBB29
	.long	.LBE29-.LBB29
	.uleb128 0x1b
	.long	0x78d
	.uleb128 0x1a
	.long	.LBB30
	.long	.LBE30-.LBB30
	.uleb128 0x19
	.long	0x782
	.long	.LLST4
	.uleb128 0x19
	.long	0x777
	.long	.LLST5
	.uleb128 0x19
	.long	0x76c
	.long	.LLST6
	.uleb128 0x19
	.long	0x761
	.long	.LLST7
	.uleb128 0x1a
	.long	.LBB31
	.long	.LBE31-.LBB31
	.uleb128 0x1c
	.long	0x78d
	.long	.LLST8
	.uleb128 0x1d
	.long	0x739
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.byte	0x11
	.long	0x8ca
	.uleb128 0x19
	.long	0x745
	.long	.LLST9
	.byte	0
	.uleb128 0x1e
	.long	0x7c7
	.long	.LBB34
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x19
	.long	0x8f0
	.uleb128 0x19
	.long	0x7d3
	.long	.LLST10
	.uleb128 0x19
	.long	0x7de
	.long	.LLST11
	.byte	0
	.uleb128 0x1f
	.long	.LVL5
	.long	0xea9
	.uleb128 0x1f
	.long	.LVL9
	.long	0xeb4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF182
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.long	0x91f
	.uleb128 0x12
	.long	.LASF181
	.byte	0x2
	.byte	0x2c
	.long	0x45b
	.byte	0
	.uleb128 0x16
	.long	.LASF184
	.byte	0x1
	.byte	0x29
	.long	0x2b2
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x9de
	.uleb128 0x17
	.long	.LASF174
	.byte	0x1
	.byte	0x29
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF185
	.byte	0x1
	.byte	0x2b
	.long	0x2c
	.long	.LLST12
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0x2d
	.long	0x45b
	.long	.LLST13
	.uleb128 0x1d
	.long	0x7ab
	.long	.LBB44
	.long	.LBE44-.LBB44
	.byte	0x1
	.byte	0x43
	.long	0x981
	.uleb128 0x19
	.long	0x7bb
	.long	.LLST14
	.byte	0
	.uleb128 0x1e
	.long	0x907
	.long	.LBB46
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x4a
	.long	0x99e
	.uleb128 0x19
	.long	0x913
	.long	.LLST15
	.byte	0
	.uleb128 0x1f
	.long	.LVL14
	.long	0xea9
	.uleb128 0x1f
	.long	.LVL16
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL18
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL20
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL24
	.long	0xebf
	.uleb128 0x1f
	.long	.LVL27
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL28
	.long	0xeca
	.byte	0
	.uleb128 0x16
	.long	.LASF187
	.byte	0x1
	.byte	0x55
	.long	0x2b2
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xb27
	.uleb128 0x17
	.long	.LASF174
	.byte	0x1
	.byte	0x55
	.long	0xb27
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF113
	.byte	0x1
	.byte	0x55
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF170
	.byte	0x1
	.byte	0x56
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x14
	.long	.LASF188
	.byte	0x1
	.byte	0x58
	.long	0x2b2
	.uleb128 0x20
	.long	.LASF189
	.byte	0x1
	.byte	0x59
	.long	0x799
	.long	.LLST16
	.uleb128 0x1e
	.long	0x751
	.long	.LBB58
	.long	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x65
	.long	0xb14
	.uleb128 0x19
	.long	0x782
	.long	.LLST17
	.uleb128 0x19
	.long	0x777
	.long	.LLST18
	.uleb128 0x19
	.long	0x76c
	.long	.LLST19
	.uleb128 0x19
	.long	0x761
	.long	.LLST20
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x38
	.uleb128 0x1b
	.long	0x78d
	.uleb128 0x1a
	.long	.LBB60
	.long	.LBE60-.LBB60
	.uleb128 0x19
	.long	0x782
	.long	.LLST21
	.uleb128 0x19
	.long	0x777
	.long	.LLST22
	.uleb128 0x19
	.long	0x76c
	.long	.LLST23
	.uleb128 0x19
	.long	0x761
	.long	.LLST24
	.uleb128 0x1a
	.long	.LBB61
	.long	.LBE61-.LBB61
	.uleb128 0x1c
	.long	0x78d
	.long	.LLST25
	.uleb128 0x1d
	.long	0x739
	.long	.LBB62
	.long	.LBE62-.LBB62
	.byte	0x1
	.byte	0x11
	.long	0xad8
	.uleb128 0x19
	.long	0x745
	.long	.LLST26
	.byte	0
	.uleb128 0x1e
	.long	0x7c7
	.long	.LBB64
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0x19
	.long	0xafe
	.uleb128 0x19
	.long	0x7d3
	.long	.LLST27
	.uleb128 0x19
	.long	0x7de
	.long	.LLST28
	.byte	0
	.uleb128 0x1f
	.long	.LVL37
	.long	0xea9
	.uleb128 0x1f
	.long	.LVL41
	.long	0xeb4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL31
	.long	0xed5
	.uleb128 0x1f
	.long	.LVL44
	.long	0xee0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x799
	.uleb128 0x16
	.long	.LASF190
	.byte	0x1
	.byte	0x71
	.long	0x2b2
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf5
	.uleb128 0x17
	.long	.LASF174
	.byte	0x1
	.byte	0x71
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LASF185
	.byte	0x1
	.byte	0x73
	.long	0x2c
	.long	.LLST29
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0x75
	.long	0x45b
	.long	.LLST30
	.uleb128 0x1d
	.long	0x7ab
	.long	.LBB76
	.long	.LBE76-.LBB76
	.byte	0x1
	.byte	0x8b
	.long	0xb8f
	.uleb128 0x19
	.long	0x7bb
	.long	.LLST31
	.byte	0
	.uleb128 0x1e
	.long	0x907
	.long	.LBB78
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x92
	.long	0xbac
	.uleb128 0x19
	.long	0x913
	.long	.LLST32
	.byte	0
	.uleb128 0x1f
	.long	.LVL47
	.long	0xea9
	.uleb128 0x1f
	.long	.LVL49
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL51
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL53
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL57
	.long	0xebf
	.uleb128 0x1f
	.long	.LVL60
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL61
	.long	0xeca
	.uleb128 0x1f
	.long	.LVL62
	.long	0xee0
	.byte	0
	.uleb128 0x16
	.long	.LASF191
	.byte	0x1
	.byte	0x9d
	.long	0x2b2
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xcf9
	.uleb128 0x17
	.long	.LASF174
	.byte	0x1
	.byte	0x9d
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF170
	.byte	0x1
	.byte	0x9d
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"opt"
	.byte	0x1
	.byte	0x9d
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF192
	.byte	0x1
	.byte	0x9e
	.long	0xcf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x17
	.long	.LASF193
	.byte	0x1
	.byte	0x9e
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.long	.LASF185
	.byte	0x1
	.byte	0xa0
	.long	0x2c
	.long	.LLST33
	.uleb128 0x20
	.long	.LASF188
	.byte	0x1
	.byte	0xa2
	.long	0x2b2
	.long	.LLST34
	.uleb128 0x20
	.long	.LASF194
	.byte	0x1
	.byte	0xa3
	.long	0x9e
	.long	.LLST35
	.uleb128 0x14
	.long	.LASF195
	.byte	0x1
	.byte	0xa4
	.long	0x9e
	.uleb128 0x1f
	.long	.LVL65
	.long	0xea9
	.uleb128 0x1f
	.long	.LVL67
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL69
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL74
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL76
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL77
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL78
	.long	0xeeb
	.uleb128 0x1f
	.long	.LVL79
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL80
	.long	0xeca
	.uleb128 0x1f
	.long	.LVL81
	.long	0xea9
	.uleb128 0x1f
	.long	.LVL84
	.long	0xef6
	.uleb128 0x1f
	.long	.LVL86
	.long	0xeb4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0xa9
	.uleb128 0x13
	.long	.LASF196
	.byte	0x1
	.byte	0xf6
	.long	0x2b2
	.byte	0x1
	.long	0xd7e
	.uleb128 0x12
	.long	.LASF174
	.byte	0x1
	.byte	0xf6
	.long	0x799
	.uleb128 0x12
	.long	.LASF170
	.byte	0x1
	.byte	0xf6
	.long	0xa9
	.uleb128 0x23
	.string	"opt"
	.byte	0x1
	.byte	0xf6
	.long	0x9e
	.uleb128 0x14
	.long	.LASF185
	.byte	0x1
	.byte	0xf8
	.long	0x2c
	.uleb128 0x14
	.long	.LASF197
	.byte	0x1
	.byte	0xfa
	.long	0x45b
	.uleb128 0x14
	.long	.LASF122
	.byte	0x1
	.byte	0xfb
	.long	0x45b
	.uleb128 0x14
	.long	.LASF198
	.byte	0x1
	.byte	0xfc
	.long	0x45b
	.uleb128 0x14
	.long	.LASF199
	.byte	0x1
	.byte	0xfd
	.long	0x6df
	.uleb128 0x14
	.long	.LASF194
	.byte	0x1
	.byte	0xfe
	.long	0x9e
	.uleb128 0x14
	.long	.LASF200
	.byte	0x1
	.byte	0xff
	.long	0xa9
	.byte	0
	.uleb128 0x24
	.long	.LASF201
	.byte	0x1
	.value	0x147
	.long	0x2b2
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6d
	.uleb128 0x25
	.long	.LASF174
	.byte	0x1
	.value	0x147
	.long	0x799
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF170
	.byte	0x1
	.value	0x147
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"opt"
	.byte	0x1
	.value	0x147
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	0xcff
	.long	.LBB84
	.long	.Ldebug_ranges0+0x88
	.byte	0x1
	.value	0x14f
	.uleb128 0x19
	.long	0xd25
	.long	.LLST36
	.uleb128 0x19
	.long	0xd1a
	.long	.LLST37
	.uleb128 0x19
	.long	0xd0f
	.long	.LLST38
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x88
	.uleb128 0x1c
	.long	0xd30
	.long	.LLST39
	.uleb128 0x1c
	.long	0xd3b
	.long	.LLST40
	.uleb128 0x1c
	.long	0xd46
	.long	.LLST41
	.uleb128 0x1c
	.long	0xd51
	.long	.LLST42
	.uleb128 0x1c
	.long	0xd5c
	.long	.LLST43
	.uleb128 0x1c
	.long	0xd67
	.long	.LLST44
	.uleb128 0x1c
	.long	0xd72
	.long	.LLST45
	.uleb128 0x1f
	.long	.LVL90
	.long	0xea9
	.uleb128 0x1f
	.long	.LVL91
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL95
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL102
	.long	0xf01
	.uleb128 0x1f
	.long	.LVL106
	.long	0xeb4
	.uleb128 0x1f
	.long	.LVL107
	.long	0xeca
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF202
	.byte	0xe
	.byte	0xe
	.long	0x729
	.uleb128 0x28
	.long	.LASF203
	.byte	0xe
	.byte	0xf
	.long	0x729
	.uleb128 0xf
	.long	0x6df
	.long	0xe93
	.uleb128 0x10
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF204
	.byte	0xe
	.byte	0x15
	.long	0xe83
	.uleb128 0x28
	.long	.LASF205
	.byte	0xe
	.byte	0x21
	.long	0x450
	.uleb128 0x29
	.long	.LASF206
	.long	.LASF206
	.byte	0xf
	.byte	0x8
	.uleb128 0x29
	.long	.LASF207
	.long	.LASF207
	.byte	0xf
	.byte	0x9
	.uleb128 0x29
	.long	.LASF208
	.long	.LASF208
	.byte	0xe
	.byte	0x8a
	.uleb128 0x29
	.long	.LASF209
	.long	.LASF209
	.byte	0xe
	.byte	0x7b
	.uleb128 0x29
	.long	.LASF210
	.long	.LASF210
	.byte	0x10
	.byte	0x8d
	.uleb128 0x29
	.long	.LASF211
	.long	.LASF211
	.byte	0x10
	.byte	0x93
	.uleb128 0x29
	.long	.LASF212
	.long	.LASF212
	.byte	0xe
	.byte	0x89
	.uleb128 0x29
	.long	.LASF213
	.long	.LASF213
	.byte	0xe
	.byte	0x8c
	.uleb128 0x29
	.long	.LASF214
	.long	.LASF214
	.byte	0xe
	.byte	0x88
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.long	.LVL1
	.long	.LVL12
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL10
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL2
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL2
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL5
	.long	.LVL9-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST10:
	.long	.LVL6
	.long	.LVL7
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST12:
	.long	.LVL15
	.long	.LVL16-1
	.value	0x1
	.byte	0x50
	.long	.LVL16-1
	.long	.LVL17
	.value	0x1
	.byte	0x56
	.long	.LVL17
	.long	.LVL18-1
	.value	0x1
	.byte	0x50
	.long	.LVL18-1
	.long	.LVL19
	.value	0x1
	.byte	0x56
	.long	.LVL19
	.long	.LVL20-1
	.value	0x1
	.byte	0x50
	.long	.LVL20-1
	.long	.LVL21
	.value	0x1
	.byte	0x56
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL29
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST13:
	.long	.LVL21
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST14:
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST15:
	.long	.LVL25
	.long	.LVL26
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LVL45
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST17:
	.long	.LVL34
	.long	.LVL42
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL34
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST19:
	.long	.LVL34
	.long	.LVL42
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST20:
	.long	.LVL34
	.long	.LVL42
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST21:
	.long	.LVL35
	.long	.LVL42
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL35
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST23:
	.long	.LVL35
	.long	.LVL42
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST24:
	.long	.LVL35
	.long	.LVL42
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST25:
	.long	.LVL37
	.long	.LVL41-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL38
	.long	.LVL39
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	0
	.long	0
.LLST28:
	.long	.LVL38
	.long	.LVL40
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST29:
	.long	.LVL48
	.long	.LVL49-1
	.value	0x1
	.byte	0x50
	.long	.LVL49-1
	.long	.LVL50
	.value	0x1
	.byte	0x56
	.long	.LVL50
	.long	.LVL51-1
	.value	0x1
	.byte	0x50
	.long	.LVL51-1
	.long	.LVL52
	.value	0x1
	.byte	0x56
	.long	.LVL52
	.long	.LVL53-1
	.value	0x1
	.byte	0x50
	.long	.LVL53-1
	.long	.LVL54
	.value	0x1
	.byte	0x56
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x50
	.long	.LVL55
	.long	.LVL63
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST30:
	.long	.LVL54
	.long	.LVL63
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST31:
	.long	.LVL55
	.long	.LVL56
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST32:
	.long	.LVL58
	.long	.LVL59
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL66
	.long	.LVL67-1
	.value	0x1
	.byte	0x50
	.long	.LVL67-1
	.long	.LVL68
	.value	0x1
	.byte	0x57
	.long	.LVL68
	.long	.LVL69-1
	.value	0x1
	.byte	0x50
	.long	.LVL69-1
	.long	.LVL70
	.value	0x1
	.byte	0x57
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x50
	.long	.LVL71
	.long	.LVL72
	.value	0x1
	.byte	0x57
	.long	.LVL73
	.long	.LVL82
	.value	0x1
	.byte	0x57
	.long	.LVL82
	.long	.LVL83
	.value	0x1
	.byte	0x50
	.long	.LVL83
	.long	.LVL87
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST34:
	.long	.LVL85
	.long	.LVL86-1
	.value	0x1
	.byte	0x50
	.long	.LVL86-1
	.long	.LVL87
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST35:
	.long	.LVL73
	.long	.LVL75
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL75
	.long	.LVL87
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL89
	.long	.LVL93
	.value	0x1
	.byte	0x57
	.long	.LVL93
	.long	.LVL94
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL96
	.long	.LVL98
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST37:
	.long	.LVL89
	.long	.LVL97
	.value	0x1
	.byte	0x56
	.long	.LVL97
	.long	.LVL108
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST38:
	.long	.LVL89
	.long	.LVL108
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST39:
	.long	.LVL90
	.long	.LVL91-1
	.value	0x1
	.byte	0x50
	.long	.LVL92
	.long	.LVL95-1
	.value	0x1
	.byte	0x50
	.long	.LVL96
	.long	.LVL98
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST40:
	.long	.LVL98
	.long	.LVL104
	.value	0x1
	.byte	0x56
	.long	.LVL105
	.long	.LVL107
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST41:
	.long	.LVL92
	.long	.LVL108
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST42:
	.long	.LVL100
	.long	.LVL102-1
	.value	0x1
	.byte	0x52
	.long	.LVL102-1
	.long	.LVL105
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST43:
	.long	.LVL99
	.long	.LVL104
	.value	0x3
	.byte	0x76
	.sleb128 -24
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL89
	.long	.LVL98
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL101
	.long	.LVL103
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL98
	.long	.LVL107
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB34
	.long	.LBE34
	.long	.LBB38
	.long	.LBE38
	.long	.LBB39
	.long	.LBE39
	.long	0
	.long	0
	.long	.LBB46
	.long	.LBE46
	.long	.LBB49
	.long	.LBE49
	.long	0
	.long	0
	.long	.LBB58
	.long	.LBE58
	.long	.LBB71
	.long	.LBE71
	.long	0
	.long	0
	.long	.LBB64
	.long	.LBE64
	.long	.LBB68
	.long	.LBE68
	.long	.LBB69
	.long	.LBE69
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
	.long	.LFB19
	.long	.LFE19
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
.LASF195:
	.string	"cur_cpu_num"
.LASF210:
	.string	"krhino_mm_alloc"
.LASF23:
	.string	"suspend_nested_t"
.LASF201:
	.string	"krhino_event_set"
.LASF170:
	.string	"flags"
.LASF206:
	.string	"cpu_intrpt_save"
.LASF40:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF25:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF190:
	.string	"krhino_event_dyn_del"
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
.LASF213:
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
.LASF214:
	.string	"pend_task_wakeup"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF96:
	.string	"BLK_ABORT"
.LASF179:
	.string	"klist_insert"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF177:
	.string	"list"
.LASF150:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF178:
	.string	"klist_init"
.LASF15:
	.string	"uint32_t"
.LASF182:
	.string	"klist_rm"
.LASF141:
	.string	"mutex_list"
.LASF45:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF183:
	.string	"krhino_event_create"
.LASF174:
	.string	"event"
.LASF38:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF166:
	.string	"count"
.LASF184:
	.string	"krhino_event_del"
.LASF109:
	.string	"kobj_type_t"
.LASF52:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF207:
	.string	"cpu_intrpt_restore"
.LASF94:
	.string	"blk_policy_t"
.LASF70:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF24:
	.string	"RHINO_SUCCESS"
.LASF180:
	.string	"head"
.LASF152:
	.string	"time_total"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF128:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF217:
	.string	"/home/stone/Documents/pca"
.LASF218:
	.string	"cpu_cur_get"
.LASF188:
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
.LASF200:
	.string	"cur_event_flags"
.LASF191:
	.string	"krhino_event_get"
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF14:
	.string	"uint8_t"
.LASF194:
	.string	"status"
.LASF175:
	.string	"event_create"
.LASF134:
	.string	"task_stack"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF149:
	.string	"blk_state"
.LASF163:
	.string	"owner_nested"
.LASF171:
	.string	"event_item"
.LASF1:
	.string	"long long int"
.LASF212:
	.string	"pend_to_blk_obj"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF135:
	.string	"task_name"
.LASF199:
	.string	"task"
.LASF159:
	.string	"b_prio"
.LASF123:
	.string	"buf_queue_head"
.LASF144:
	.string	"tick_match"
.LASF98:
	.string	"BLK_DEL"
.LASF196:
	.string	"event_set"
.LASF97:
	.string	"BLK_TIMEOUT"
.LASF216:
	.string	"src/k_event.c"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF127:
	.string	"K_PEND"
.LASF100:
	.string	"blk_state_t"
.LASF186:
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
.LASF176:
	.string	"is_klist_empty"
.LASF110:
	.string	"klist_s"
.LASF91:
	.string	"klist_t"
.LASF71:
	.string	"RHINO_QUEUE_FULL"
.LASF154:
	.string	"pend_info"
.LASF208:
	.string	"pend_task_rm"
.LASF112:
	.string	"blk_list"
.LASF66:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF204:
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
.LASF192:
	.string	"actl_flags"
.LASF172:
	.string	"kevent_t"
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
.LASF189:
	.string	"event_obj"
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
.LASF185:
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
.LASF187:
	.string	"krhino_event_dyn_create"
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
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF215:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF117:
	.string	"task_head"
.LASF115:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF209:
	.string	"core_sched"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF173:
	.string	"list_head"
.LASF22:
	.string	"mutex_nested_t"
.LASF138:
	.string	"stack_size"
.LASF106:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF181:
	.string	"element"
.LASF197:
	.string	"iter"
.LASF120:
	.string	"sem_head"
.LASF205:
	.string	"g_kobj_list"
.LASF129:
	.string	"K_PEND_SUSPENDED"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF3:
	.string	"signed char"
.LASF164:
	.string	"mutex_item"
.LASF198:
	.string	"iter_temp"
.LASF8:
	.string	"short unsigned int"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF102:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF156:
	.string	"sched_policy"
.LASF211:
	.string	"krhino_mm_free"
.LASF114:
	.string	"blk_policy"
.LASF68:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF132:
	.string	"K_DELETED"
.LASF105:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF203:
	.string	"g_intrpt_nested_level"
.LASF157:
	.string	"cpu_num"
.LASF202:
	.string	"g_sched_lock"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF147:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF99:
	.string	"BLK_INVALID"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
