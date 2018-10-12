	.file	"k_buf_queue.c"
	.text
.Ltext0:
	.section	.text.unlikely.buf_queue_create,"ax",@progbits
.LCOLDB0:
	.section	.text.buf_queue_create,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.buf_queue_create
.Ltext_cold0:
	.section	.text.buf_queue_create
	.type	buf_queue_create, @function
buf_queue_create:
.LFB12:
	.file 1 "kernel/rhino/core/k_buf_queue.c"
	.loc 1 11 0
	.cfi_startproc
.LVL0:
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
	subl	$28, %esp
	.loc 1 16 0
	testl	%ecx, %ecx
	.loc 1 11 0
	movl	%edx, -28(%ebp)
	.loc 1 16 0
	sete	%al
.LVL1:
	cmpl	$0, -28(%ebp)
	.loc 1 11 0
	movl	12(%ebp), %edi
	.loc 1 16 0
	movb	%al, %dl
.LVL2:
	.loc 1 11 0
	movl	16(%ebp), %esi
	.loc 1 16 0
	sete	%al
	orb	%al, %dl
	jne	.L3
	testl	%ebx, %ebx
	je	.L3
	.loc 1 18 0
	testl	%edi, %edi
	.loc 1 19 0
	movl	$5, %eax
	.loc 1 18 0
	je	.L2
	.loc 1 22 0
	cmpl	$0, 8(%ebp)
	.loc 1 23 0
	movl	$701, %eax
	.loc 1 22 0
	je	.L2
	movl	-28(%ebp), %edx
.LVL3:
.LBB30:
.LBB31:
	.loc 1 35 0
	movl	%esi, %eax
	.loc 1 29 0
	movl	%ecx, 20(%ebx)
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
	.loc 1 30 0
	movl	$0, 56(%ebx)
	.loc 1 31 0
	movl	$0, 60(%ebx)
	.loc 1 33 0
	movl	%edx, 8(%ebx)
	.loc 1 32 0
	movl	%edi, 52(%ebx)
	.loc 1 34 0
	movl	$0, 12(%ebx)
	.loc 1 35 0
	movb	%al, 76(%ebx)
	.loc 1 29 0
	movl	%ecx, -28(%ebp)
.LVL5:
	.loc 1 38 0
	call	cpu_intrpt_save
.LVL6:
.LBB34:
.LBB35:
	.loc 2 28 0
	movl	g_kobj_list+52, %esi
.LBE35:
.LBE34:
	.loc 1 39 0
	leal	68(%ebx), %edx
.LVL7:
	.loc 1 40 0
	subl	$12, %esp
.LBB38:
.LBB36:
	.loc 2 29 0
	movl	$g_kobj_list+48, 68(%ebx)
.LVL8:
	.loc 2 28 0
	movl	%esi, 72(%ebx)
	.loc 2 31 0
	movl	%edx, (%esi)
.LVL9:
.LBE36:
.LBE38:
	.loc 1 40 0
	pushl	%eax
.LBB39:
.LBB37:
	.loc 2 32 0
	movl	%edx, g_kobj_list+52
.LVL10:
.LBE37:
.LBE39:
	.loc 1 40 0
	call	cpu_intrpt_restore
.LVL11:
	.loc 1 45 0
	movl	-28(%ebp), %ecx
	leal	24(%ebx), %eax
	movl	%edi, (%esp)
	pushl	20(%ebp)
	pushl	8(%ebp)
	.loc 1 43 0
	movl	$4, 16(%ebx)
	.loc 1 45 0
	pushl	%ecx
	pushl	%eax
	call	ringbuf_init
.LVL12:
	.loc 1 46 0
	movl	40(%ebx), %eax
	addl	$32, %esp
	movl	%eax, 64(%ebx)
.LVL13:
	xorl	%eax, %eax
	jmp	.L2
.LVL14:
.L3:
.LBE31:
.LBE30:
	.loc 1 16 0
	movl	$6, %eax
.LVL15:
.L2:
	.loc 1 50 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL16:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	buf_queue_create, .-buf_queue_create
	.section	.text.unlikely.buf_queue_create
.LCOLDE0:
	.section	.text.buf_queue_create
.LHOTE0:
	.section	.text.unlikely.krhino_buf_queue_create,"ax",@progbits
.LCOLDB1:
	.section	.text.krhino_buf_queue_create,"ax",@progbits
.LHOTB1:
	.globl	krhino_buf_queue_create
	.type	krhino_buf_queue_create, @function
krhino_buf_queue_create:
.LFB13:
	.loc 1 54 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 54 0
	movl	20(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	16(%ebp), %ecx
	.loc 1 55 0
	movl	$1, 20(%ebp)
.LVL18:
	movl	$1, 16(%ebp)
.LVL19:
	.loc 1 54 0
	movl	%ebx, 8(%ebp)
.LVL20:
	.loc 1 55 0
	movl	24(%ebp), %ebx
.LVL21:
	movl	%ebx, 12(%ebp)
.LVL22:
	.loc 1 56 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 55 0
	jmp	buf_queue_create
.LVL23:
	.cfi_endproc
.LFE13:
	.size	krhino_buf_queue_create, .-krhino_buf_queue_create
	.section	.text.unlikely.krhino_buf_queue_create
.LCOLDE1:
	.section	.text.krhino_buf_queue_create
.LHOTE1:
	.section	.text.unlikely.krhino_fix_buf_queue_create,"ax",@progbits
.LCOLDB2:
	.section	.text.krhino_fix_buf_queue_create,"ax",@progbits
.LHOTB2:
	.globl	krhino_fix_buf_queue_create
	.type	krhino_fix_buf_queue_create, @function
krhino_fix_buf_queue_create:
.LFB14:
	.loc 1 60 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 60 0
	movl	20(%ebp), %ebx
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	16(%ebp), %ecx
	.loc 1 61 0
	movl	$0, 20(%ebp)
.LVL25:
	movl	$1, 16(%ebp)
.LVL26:
	movl	%ebx, 12(%ebp)
.LVL27:
	imull	24(%ebp), %ebx
.LVL28:
	movl	%ebx, 8(%ebp)
.LVL29:
	.loc 1 62 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 61 0
	jmp	buf_queue_create
.LVL30:
	.cfi_endproc
.LFE14:
	.size	krhino_fix_buf_queue_create, .-krhino_fix_buf_queue_create
	.section	.text.unlikely.krhino_fix_buf_queue_create
.LCOLDE2:
	.section	.text.krhino_fix_buf_queue_create
.LHOTE2:
	.section	.text.unlikely.krhino_buf_queue_del,"ax",@progbits
.LCOLDB3:
	.section	.text.krhino_buf_queue_del,"ax",@progbits
.LHOTB3:
	.globl	krhino_buf_queue_del
	.type	krhino_buf_queue_del, @function
krhino_buf_queue_del:
.LFB15:
	.loc 1 65 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 70 0
	movl	$6, %eax
	.loc 1 65 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 65 0
	movl	8(%ebp), %ebx
	.loc 1 70 0
	testl	%ebx, %ebx
	je	.L15
	.loc 1 72 0
	call	cpu_intrpt_save
.LVL32:
	.loc 1 74 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 72 0
	movl	%eax, %esi
.LVL33:
	.loc 1 74 0
	je	.L16
	.loc 1 74 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL34:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L15
.LVL35:
.L16:
	.loc 1 76 0 is_stmt 1
	cmpl	$4, 16(%ebx)
	je	.L17
	.loc 1 77 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL36:
	.loc 1 78 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L15
.LVL37:
.L17:
	.loc 1 81 0
	cmpb	$1, 76(%ebx)
	je	.L18
	.loc 1 82 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL38:
	.loc 1 83 0
	addl	$16, %esp
	movl	$9, %eax
	jmp	.L15
.LVL39:
.L18:
	.loc 1 88 0
	movl	$0, 16(%ebx)
.LVL40:
.L19:
.LBB44:
.LBB45:
	.loc 2 23 0
	movl	(%ebx), %eax
.LVL41:
.LBE45:
.LBE44:
	.loc 1 91 0
	cmpl	%eax, %ebx
	je	.L24
	.loc 1 93 0
	subl	$12, %esp
	subl	$24, %eax
	pushl	%eax
	call	pend_task_rm
.LVL42:
	addl	$16, %esp
	jmp	.L19
.L24:
.LVL43:
.LBB46:
.LBB47:
	.loc 2 46 0
	movl	68(%ebx), %edx
	movl	72(%ebx), %eax
.LBE47:
.LBE46:
	.loc 1 100 0
	subl	$12, %esp
	addl	$24, %ebx
.LBB49:
.LBB48:
	.loc 2 46 0
	movl	%edx, (%eax)
	.loc 2 47 0
	movl	44(%ebx), %edx
	movl	%eax, 4(%edx)
.LVL44:
.LBE48:
.LBE49:
	.loc 1 100 0
	pushl	%ebx
	call	ringbuf_reset
.LVL45:
	.loc 1 102 0
	movl	%esi, (%esp)
	call	cpu_intrpt_restore
.LVL46:
	call	core_sched
.LVL47:
	.loc 1 104 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL48:
.L15:
	.loc 1 105 0
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
.LFE15:
	.size	krhino_buf_queue_del, .-krhino_buf_queue_del
	.section	.text.unlikely.krhino_buf_queue_del
.LCOLDE3:
	.section	.text.krhino_buf_queue_del
.LHOTE3:
	.section	.text.unlikely.krhino_buf_queue_dyn_create,"ax",@progbits
.LCOLDB4:
	.section	.text.krhino_buf_queue_dyn_create,"ax",@progbits
.LHOTB4:
	.globl	krhino_buf_queue_dyn_create
	.type	krhino_buf_queue_dyn_create, @function
krhino_buf_queue_dyn_create:
.LFB16:
	.loc 1 110 0
	.cfi_startproc
.LVL49:
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
	.loc 1 114 0
	movl	$6, %edi
	.loc 1 110 0
	subl	$12, %esp
	.loc 1 114 0
	cmpl	$0, 8(%ebp)
	.loc 1 110 0
	movl	16(%ebp), %esi
	.loc 1 114 0
	je	.L26
	.loc 1 116 0
	testl	%esi, %esi
	.loc 1 117 0
	movl	$701, %edi
	.loc 1 116 0
	je	.L26
	.loc 1 120 0
	subl	$12, %esp
	.loc 1 123 0
	movl	$105, %edi
	.loc 1 120 0
	pushl	$80
	call	krhino_mm_alloc
.LVL50:
	.loc 1 122 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 120 0
	movl	%eax, %ebx
.LVL51:
	.loc 1 122 0
	je	.L26
	.loc 1 126 0
	subl	$12, %esp
	pushl	%esi
	call	krhino_mm_alloc
.LVL52:
	.loc 1 128 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 126 0
	movl	%eax, 20(%ebx)
	.loc 1 128 0
	jne	.L27
	.loc 1 129 0
	subl	$12, %esp
	pushl	%ebx
	call	krhino_mm_free
.LVL53:
	.loc 1 130 0
	addl	$16, %esp
	jmp	.L26
.L27:
	.loc 1 133 0
	movl	12(%ebp), %edx
	pushl	$1
	movl	%eax, %ecx
	pushl	$2
	pushl	20(%ebp)
	movl	%ebx, %eax
	pushl	%esi
	call	buf_queue_create
.LVL54:
	.loc 1 136 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 133 0
	movl	%eax, %esi
.LVL55:
	.loc 1 136 0
	je	.L28
	.loc 1 137 0
	subl	$12, %esp
	pushl	20(%ebx)
	.loc 1 139 0
	movl	%esi, %edi
	.loc 1 137 0
	call	krhino_mm_free
.LVL56:
	.loc 1 138 0
	movl	%ebx, (%esp)
	call	krhino_mm_free
.LVL57:
	.loc 1 139 0
	addl	$16, %esp
	jmp	.L26
.LVL58:
.L28:
	.loc 1 142 0
	movl	8(%ebp), %eax
.LVL59:
	.loc 1 144 0
	xorl	%edi, %edi
	.loc 1 142 0
	movl	%ebx, (%eax)
.LVL60:
.L26:
	.loc 1 145 0
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
.LFE16:
	.size	krhino_buf_queue_dyn_create, .-krhino_buf_queue_dyn_create
	.section	.text.unlikely.krhino_buf_queue_dyn_create
.LCOLDE4:
	.section	.text.krhino_buf_queue_dyn_create
.LHOTE4:
	.section	.text.unlikely.krhino_buf_queue_dyn_del,"ax",@progbits
.LCOLDB5:
	.section	.text.krhino_buf_queue_dyn_del,"ax",@progbits
.LHOTB5:
	.globl	krhino_buf_queue_dyn_del
	.type	krhino_buf_queue_dyn_del, @function
krhino_buf_queue_dyn_del:
.LFB17:
	.loc 1 148 0
	.cfi_startproc
.LVL61:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 152 0
	movl	$6, %eax
	.loc 1 148 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 148 0
	movl	8(%ebp), %ebx
	.loc 1 152 0
	testl	%ebx, %ebx
	je	.L36
	.loc 1 154 0
	call	cpu_intrpt_save
.LVL62:
	.loc 1 156 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 154 0
	movl	%eax, %esi
.LVL63:
	.loc 1 156 0
	je	.L37
	.loc 1 156 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL64:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L36
.LVL65:
.L37:
	.loc 1 158 0 is_stmt 1
	cmpl	$4, 16(%ebx)
	je	.L38
	.loc 1 159 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL66:
	.loc 1 160 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L36
.LVL67:
.L38:
	.loc 1 163 0
	cmpb	$2, 76(%ebx)
	je	.L39
	.loc 1 164 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL68:
	.loc 1 165 0
	addl	$16, %esp
	movl	$9, %eax
	jmp	.L36
.LVL69:
.L39:
	.loc 1 170 0
	movl	$0, 16(%ebx)
.LVL70:
.L40:
.LBB54:
.LBB55:
	.loc 2 23 0
	movl	(%ebx), %eax
.LVL71:
.LBE55:
.LBE54:
	.loc 1 172 0
	cmpl	%eax, %ebx
	je	.L45
	.loc 1 173 0
	subl	$12, %esp
	subl	$24, %eax
	pushl	%eax
	call	pend_task_rm
.LVL72:
	addl	$16, %esp
	jmp	.L40
.L45:
.LVL73:
.LBB56:
.LBB57:
	.loc 2 46 0
	movl	72(%ebx), %eax
	movl	68(%ebx), %edx
.LBE57:
.LBE56:
	.loc 1 180 0
	subl	$12, %esp
.LBB59:
.LBB58:
	.loc 2 46 0
	movl	%edx, (%eax)
	.loc 2 47 0
	movl	68(%ebx), %edx
	movl	%eax, 4(%edx)
.LVL74:
.LBE58:
.LBE59:
	.loc 1 180 0
	leal	24(%ebx), %eax
	pushl	%eax
	call	ringbuf_reset
.LVL75:
	.loc 1 182 0
	movl	%esi, (%esp)
	call	cpu_intrpt_restore
.LVL76:
	call	core_sched
.LVL77:
	.loc 1 183 0
	popl	%eax
	pushl	20(%ebx)
	call	krhino_mm_free
.LVL78:
	.loc 1 184 0
	movl	%ebx, (%esp)
	call	krhino_mm_free
.LVL79:
	.loc 1 186 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL80:
.L36:
	.loc 1 187 0
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
.LFE17:
	.size	krhino_buf_queue_dyn_del, .-krhino_buf_queue_dyn_del
	.section	.text.unlikely.krhino_buf_queue_dyn_del
.LCOLDE5:
	.section	.text.krhino_buf_queue_dyn_del
.LHOTE5:
	.section	.text.unlikely.krhino_buf_queue_send,"ax",@progbits
.LCOLDB6:
	.section	.text.krhino_buf_queue_send,"ax",@progbits
.LHOTB6:
	.globl	krhino_buf_queue_send
	.type	krhino_buf_queue_send, @function
krhino_buf_queue_send:
.LFB19:
	.loc 1 271 0
	.cfi_startproc
.LVL81:
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
	.loc 1 271 0
	movl	12(%ebp), %esi
	movl	16(%ebp), %edx
	movl	8(%ebp), %edi
	.loc 1 273 0
	testl	%esi, %esi
	.loc 1 271 0
	movl	%edx, -28(%ebp)
	.loc 1 273 0
	je	.L55
	testl	%edi, %edi
	je	.L55
.LVL82:
.LBB64:
.LBB65:
	.loc 1 205 0
	call	cpu_intrpt_save
.LVL83:
	.loc 1 207 0
	cmpl	$4, 16(%edi)
	.loc 1 205 0
	movl	%eax, %ebx
.LVL84:
	.loc 1 207 0
	movl	-28(%ebp), %edx
	je	.L48
	.loc 1 208 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL85:
	addl	$16, %esp
	.loc 1 209 0
	movl	$8, %eax
	jmp	.L47
.LVL86:
.L48:
	.loc 1 215 0
	cmpl	52(%edi), %edx
	jbe	.L49
	.loc 1 217 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL87:
	addl	$16, %esp
	.loc 1 218 0
	movl	$703, %eax
	jmp	.L47
.LVL88:
.L49:
	.loc 1 221 0
	testl	%edx, %edx
	jne	.L50
	.loc 1 222 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL89:
	addl	$16, %esp
	.loc 1 223 0
	movl	$5, %eax
	jmp	.L47
.LVL90:
.L50:
.LBB66:
.LBB67:
	.loc 2 23 0
	movl	(%edi), %eax
.LVL91:
.LBE67:
.LBE66:
	.loc 1 229 0
	cmpl	%eax, %edi
	jne	.L51
	.loc 1 231 0
	pushl	%eax
	leal	24(%edi), %eax
	pushl	%edx
	pushl	%esi
	pushl	%eax
	call	ringbuf_push
.LVL92:
	.loc 1 233 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 231 0
	movl	%eax, %esi
.LVL93:
	.loc 1 233 0
	je	.L52
	.loc 1 234 0
	subl	$12, %esp
	pushl	%ebx
	call	cpu_intrpt_restore
.LVL94:
	.loc 1 235 0
	addl	$16, %esp
	.loc 1 236 0
	movl	$702, %eax
	cmpl	$106, %esi
	cmovne	%esi, %eax
	jmp	.L47
.LVL95:
.L52:
	.loc 1 241 0
	movl	56(%edi), %eax
.LVL96:
	incl	%eax
	.loc 1 243 0
	cmpl	60(%edi), %eax
	.loc 1 241 0
	movl	%eax, 56(%edi)
	.loc 1 243 0
	jbe	.L53
	.loc 1 244 0
	movl	%eax, 60(%edi)
.L53:
	.loc 1 247 0
	movl	40(%edi), %eax
	cmpl	%eax, 64(%edi)
	jbe	.L54
	.loc 1 248 0
	movl	%eax, 64(%edi)
.L54:
	.loc 1 253 0
	subl	$12, %esp
	pushl	%ebx
	call	cpu_intrpt_restore
.LVL97:
	jmp	.L58
.LVL98:
.L51:
	.loc 1 258 0
	movl	52(%eax), %edi
.LVL99:
	movl	%edx, %ecx
	.loc 1 261 0
	subl	$12, %esp
	.loc 1 258 0
	rep movsb
.LVL100:
	.loc 1 261 0
	subl	$24, %eax
.LVL101:
	.loc 1 259 0
	movl	%edx, 80(%eax)
	.loc 1 261 0
	pushl	%eax
	call	pend_task_wakeup
.LVL102:
	.loc 1 265 0
	movl	%ebx, (%esp)
	call	cpu_intrpt_restore
.LVL103:
	call	core_sched
.LVL104:
.L58:
	addl	$16, %esp
	.loc 1 267 0
	xorl	%eax, %eax
	jmp	.L47
.LVL105:
.L55:
.LBE65:
.LBE64:
	.loc 1 273 0
	movl	$6, %eax
.L47:
	.loc 1 276 0
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
	.size	krhino_buf_queue_send, .-krhino_buf_queue_send
	.section	.text.unlikely.krhino_buf_queue_send
.LCOLDE6:
	.section	.text.krhino_buf_queue_send
.LHOTE6:
	.section	.text.unlikely.krhino_buf_queue_recv,"ax",@progbits
.LCOLDB7:
	.section	.text.krhino_buf_queue_recv,"ax",@progbits
.LHOTB7:
	.globl	krhino_buf_queue_recv
	.type	krhino_buf_queue_recv, @function
krhino_buf_queue_recv:
.LFB20:
	.loc 1 280 0
	.cfi_startproc
.LVL106:
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
	.loc 1 280 0
	movl	24(%ebp), %ebx
	movl	16(%ebp), %edx
	movl	12(%ebp), %eax
	movl	8(%ebp), %esi
	.loc 1 288 0
	testl	%ebx, %ebx
	.loc 1 280 0
	movl	%edx, -28(%ebp)
	.loc 1 288 0
	sete	%dl
	cmpl	$0, 20(%ebp)
	.loc 1 280 0
	movl	%eax, -32(%ebp)
	.loc 1 288 0
	sete	%al
	orb	%al, %dl
	jne	.L69
	testl	%esi, %esi
	je	.L69
	.loc 1 290 0
	call	cpu_intrpt_save
.LVL107:
	.loc 1 294 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 290 0
	movl	%eax, %edi
.LVL108:
	.loc 1 294 0
	je	.L61
	movl	-32(%ebp), %eax
.LVL109:
	orl	-28(%ebp), %eax
	je	.L61
	.loc 1 295 0
	subl	$12, %esp
	pushl	%edi
	call	cpu_intrpt_restore
.LVL110:
	.loc 1 296 0
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L60
.L61:
	.loc 1 299 0
	cmpl	$4, 16(%esi)
	je	.L62
	.loc 1 300 0
	subl	$12, %esp
	pushl	%edi
	call	cpu_intrpt_restore
.LVL111:
	.loc 1 301 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L60
.L62:
	.loc 1 304 0
	leal	24(%esi), %ecx
	subl	$12, %esp
	pushl	%ecx
	movl	%ecx, -36(%ebp)
	call	ringbuf_is_empty
.LVL112:
	addl	$16, %esp
	testb	%al, %al
	movl	-36(%ebp), %ecx
	jne	.L63
	.loc 1 305 0
	pushl	%edx
	pushl	%ebx
	pushl	20(%ebp)
	pushl	%ecx
	call	ringbuf_pop
.LVL113:
	.loc 1 306 0
	decl	56(%esi)
	.loc 1 307 0
	movl	%edi, (%esp)
	call	cpu_intrpt_restore
.LVL114:
	.loc 1 308 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L60
.L63:
	.loc 1 311 0
	movl	-28(%ebp), %eax
	orl	-32(%ebp), %eax
	jne	.L64
	.loc 1 313 0
	subl	$12, %esp
	.loc 1 312 0
	movl	$0, (%ebx)
	.loc 1 313 0
	pushl	%edi
	call	cpu_intrpt_restore
.LVL115:
	.loc 1 314 0
	addl	$16, %esp
	movl	$400, %eax
	jmp	.L60
.L64:
	.loc 1 317 0
	cmpb	$0, g_sched_lock
	je	.L65
	.loc 1 319 0
	subl	$12, %esp
	.loc 1 318 0
	movl	$0, (%ebx)
	.loc 1 319 0
	pushl	%edi
	call	cpu_intrpt_restore
.LVL116:
	.loc 1 320 0
	addl	$16, %esp
	movl	$200, %eax
	jmp	.L60
.L65:
	.loc 1 323 0
	movl	g_active_task, %eax
	movl	20(%ebp), %ecx
	movl	%ecx, 76(%eax)
	.loc 1 324 0
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	pushl	%eax
	pushl	%esi
	call	pend_to_blk_obj
.LVL117:
	.loc 1 328 0
	movl	%edi, (%esp)
	call	cpu_intrpt_restore
.LVL118:
	call	core_sched
.LVL119:
	.loc 1 330 0
	call	cpu_intrpt_save
.LVL120:
	movl	%eax, %esi
.LVL121:
	.loc 1 334 0
	popl	%eax
.LVL122:
	pushl	g_active_task
	call	pend_state_end_proc
.LVL123:
	.loc 1 336 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 334 0
	movl	%eax, %edi
.LVL124:
	.loc 1 336 0
	jne	.L76
	.loc 1 338 0
	movl	g_active_task, %edx
	movl	80(%edx), %edx
	movl	%edx, (%ebx)
	.loc 1 339 0
	jmp	.L68
.L76:
	.loc 1 342 0
	movl	$0, (%ebx)
.L68:
	.loc 1 346 0
	subl	$12, %esp
	pushl	%esi
	call	cpu_intrpt_restore
.LVL125:
	.loc 1 348 0
	addl	$16, %esp
	.loc 1 334 0
	movl	%edi, %eax
	.loc 1 348 0
	jmp	.L60
.LVL126:
.L69:
	.loc 1 288 0
	movl	$6, %eax
.L60:
	.loc 1 349 0
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
	.size	krhino_buf_queue_recv, .-krhino_buf_queue_recv
	.section	.text.unlikely.krhino_buf_queue_recv
.LCOLDE7:
	.section	.text.krhino_buf_queue_recv
.LHOTE7:
	.section	.text.unlikely.krhino_buf_queue_flush,"ax",@progbits
.LCOLDB8:
	.section	.text.krhino_buf_queue_flush,"ax",@progbits
.LHOTB8:
	.globl	krhino_buf_queue_flush
	.type	krhino_buf_queue_flush, @function
krhino_buf_queue_flush:
.LFB21:
	.loc 1 352 0
	.cfi_startproc
.LVL127:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 355 0
	movl	$6, %eax
	.loc 1 352 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 352 0
	movl	8(%ebp), %ebx
	.loc 1 355 0
	testl	%ebx, %ebx
	je	.L79
	.loc 1 357 0
	call	cpu_intrpt_save
.LVL128:
	.loc 1 359 0
	cmpb	$0, g_intrpt_nested_level
	.loc 1 357 0
	movl	%eax, %esi
.LVL129:
	.loc 1 359 0
	je	.L80
	.loc 1 359 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL130:
	addl	$16, %esp
	movl	$1000, %eax
	jmp	.L79
.LVL131:
.L80:
	.loc 1 361 0 is_stmt 1
	cmpl	$4, 16(%ebx)
	je	.L81
	.loc 1 362 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL132:
	.loc 1 363 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L79
.LVL133:
.L81:
	.loc 1 366 0
	leal	24(%ebx), %eax
.LVL134:
	subl	$12, %esp
	pushl	%eax
	call	ringbuf_reset
.LVL135:
	.loc 1 369 0
	movl	40(%ebx), %eax
	.loc 1 367 0
	movl	$0, 56(%ebx)
	.loc 1 368 0
	movl	$0, 60(%ebx)
	.loc 1 369 0
	movl	%eax, 64(%ebx)
	.loc 1 371 0
	movl	%esi, (%esp)
	call	cpu_intrpt_restore
.LVL136:
	.loc 1 373 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL137:
.L79:
	.loc 1 374 0
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
	.size	krhino_buf_queue_flush, .-krhino_buf_queue_flush
	.section	.text.unlikely.krhino_buf_queue_flush
.LCOLDE8:
	.section	.text.krhino_buf_queue_flush
.LHOTE8:
	.section	.text.unlikely.krhino_buf_queue_info_get,"ax",@progbits
.LCOLDB9:
	.section	.text.krhino_buf_queue_info_get,"ax",@progbits
.LHOTB9:
	.globl	krhino_buf_queue_info_get
	.type	krhino_buf_queue_info_get, @function
krhino_buf_queue_info_get:
.LFB22:
	.loc 1 377 0
	.cfi_startproc
.LVL138:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 377 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 381 0
	testl	%ebx, %ebx
	je	.L88
	testl	%esi, %esi
	je	.L88
	.loc 1 383 0
	call	cpu_intrpt_save
.LVL139:
	.loc 1 385 0
	cmpl	$4, 16(%ebx)
	je	.L87
	.loc 1 386 0
	subl	$12, %esp
	pushl	%eax
	call	cpu_intrpt_restore
.LVL140:
	.loc 1 387 0
	addl	$16, %esp
	movl	$8, %eax
	jmp	.L86
.LVL141:
.L87:
	.loc 1 390 0
	movl	40(%ebx), %edx
	.loc 1 397 0
	subl	$12, %esp
	.loc 1 390 0
	movl	%edx, 16(%esi)
	.loc 1 391 0
	movl	64(%ebx), %edx
	movl	%edx, 20(%esi)
	.loc 1 392 0
	movl	28(%ebx), %edx
	subl	24(%ebx), %edx
	movl	%edx, (%esi)
	.loc 1 393 0
	movl	52(%ebx), %edx
	movl	%edx, 4(%esi)
	.loc 1 394 0
	movl	56(%ebx), %edx
	movl	%edx, 8(%esi)
	.loc 1 395 0
	movl	60(%ebx), %edx
	movl	%edx, 12(%esi)
	.loc 1 397 0
	pushl	%eax
	call	cpu_intrpt_restore
.LVL142:
	.loc 1 399 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L86
.LVL143:
.L88:
	.loc 1 381 0
	movl	$6, %eax
.LVL144:
.L86:
	.loc 1 400 0
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
	.size	krhino_buf_queue_info_get, .-krhino_buf_queue_info_get
	.section	.text.unlikely.krhino_buf_queue_info_get
.LCOLDE9:
	.section	.text.krhino_buf_queue_info_get
.LHOTE9:
	.text
.Letext0:
	.section	.text.unlikely.buf_queue_create
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
	.file 13 "./kernel/rhino/core/include/k_ringbuf.h"
	.file 14 "./kernel/rhino/core/include/k_buf_queue.h"
	.file 15 "./kernel/rhino/core/include/k_internal.h"
	.file 16 "././platform/arch/arm/armv5/./gcc/port.h"
	.file 17 "./kernel/rhino/core/include/k_mm.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x11c3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF234
	.byte	0xc
	.long	.LASF235
	.long	.LASF236
	.long	.Ldebug_ranges0+0x50
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
	.long	0x829
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
	.uleb128 0xd
	.byte	0x1c
	.byte	0xd
	.byte	0x21
	.long	0x73c
	.uleb128 0xe
	.string	"buf"
	.byte	0xd
	.byte	0x22
	.long	0x73c
	.byte	0
	.uleb128 0xe
	.string	"end"
	.byte	0xd
	.byte	0x23
	.long	0x73c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF170
	.byte	0xd
	.byte	0x24
	.long	0x73c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF171
	.byte	0xd
	.byte	0x25
	.long	0x73c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF172
	.byte	0xd
	.byte	0x26
	.long	0x2c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF173
	.byte	0xd
	.byte	0x27
	.long	0x2c
	.byte	0x14
	.uleb128 0xa
	.long	.LASF174
	.byte	0xd
	.byte	0x28
	.long	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x9e
	.uleb128 0x3
	.long	.LASF175
	.byte	0xd
	.byte	0x29
	.long	0x6df
	.uleb128 0xd
	.byte	0x50
	.byte	0xe
	.byte	0x8
	.long	0x7c2
	.uleb128 0xa
	.long	.LASF111
	.byte	0xe
	.byte	0x9
	.long	0x3e8
	.byte	0
	.uleb128 0xe
	.string	"buf"
	.byte	0xe
	.byte	0xa
	.long	0xc6
	.byte	0x14
	.uleb128 0xa
	.long	.LASF176
	.byte	0xe
	.byte	0xb
	.long	0x742
	.byte	0x18
	.uleb128 0xa
	.long	.LASF177
	.byte	0xe
	.byte	0xc
	.long	0x2c
	.byte	0x34
	.uleb128 0xa
	.long	.LASF178
	.byte	0xe
	.byte	0xd
	.long	0x2c
	.byte	0x38
	.uleb128 0xa
	.long	.LASF179
	.byte	0xe
	.byte	0xe
	.long	0x2c
	.byte	0x3c
	.uleb128 0xa
	.long	.LASF180
	.byte	0xe
	.byte	0xf
	.long	0x2c
	.byte	0x40
	.uleb128 0xa
	.long	.LASF181
	.byte	0xe
	.byte	0x11
	.long	0x2f3
	.byte	0x44
	.uleb128 0xa
	.long	.LASF160
	.byte	0xe
	.byte	0x13
	.long	0x9e
	.byte	0x4c
	.byte	0
	.uleb128 0x3
	.long	.LASF182
	.byte	0xe
	.byte	0x14
	.long	0x74d
	.uleb128 0xd
	.byte	0x18
	.byte	0xe
	.byte	0x16
	.long	0x81e
	.uleb128 0xa
	.long	.LASF183
	.byte	0xe
	.byte	0x17
	.long	0x2c
	.byte	0
	.uleb128 0xa
	.long	.LASF177
	.byte	0xe
	.byte	0x18
	.long	0x2c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF178
	.byte	0xe
	.byte	0x19
	.long	0x2c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF179
	.byte	0xe
	.byte	0x1a
	.long	0x2c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF184
	.byte	0xe
	.byte	0x1b
	.long	0x2c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF180
	.byte	0xe
	.byte	0x1c
	.long	0x2c
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF185
	.byte	0xe
	.byte	0x1d
	.long	0x7cd
	.uleb128 0xb
	.byte	0x4
	.long	0x6d4
	.uleb128 0xf
	.long	0x9e
	.long	0x83f
	.uleb128 0x10
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF193
	.byte	0x2
	.byte	0xf
	.byte	0x3
	.long	0x857
	.uleb128 0x12
	.long	.LASF186
	.byte	0x2
	.byte	0xf
	.long	0x45b
	.byte	0
	.uleb128 0x13
	.long	.LASF190
	.byte	0x1
	.byte	0x9
	.long	0x2b2
	.byte	0x1
	.long	0x8c0
	.uleb128 0x12
	.long	.LASF187
	.byte	0x1
	.byte	0x9
	.long	0x8c0
	.uleb128 0x12
	.long	.LASF113
	.byte	0x1
	.byte	0x9
	.long	0x3dd
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xa
	.long	0xc6
	.uleb128 0x12
	.long	.LASF188
	.byte	0x1
	.byte	0xa
	.long	0x2c
	.uleb128 0x12
	.long	.LASF189
	.byte	0x1
	.byte	0xa
	.long	0x2c
	.uleb128 0x12
	.long	.LASF160
	.byte	0x1
	.byte	0xa
	.long	0x9e
	.uleb128 0x12
	.long	.LASF173
	.byte	0x1
	.byte	0xa
	.long	0x2c
	.uleb128 0x15
	.long	.LASF202
	.byte	0x1
	.byte	0xc
	.long	0x2c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x7c2
	.uleb128 0x16
	.long	.LASF237
	.byte	0x10
	.byte	0xf
	.long	0x9e
	.byte	0x3
	.uleb128 0x13
	.long	.LASF191
	.byte	0x2
	.byte	0x15
	.long	0x9e
	.byte	0x3
	.long	0x8ee
	.uleb128 0x12
	.long	.LASF192
	.byte	0x2
	.byte	0x15
	.long	0x45b
	.byte	0
	.uleb128 0x11
	.long	.LASF194
	.byte	0x2
	.byte	0x1a
	.byte	0x3
	.long	0x911
	.uleb128 0x12
	.long	.LASF170
	.byte	0x2
	.byte	0x1a
	.long	0x45b
	.uleb128 0x12
	.long	.LASF195
	.byte	0x2
	.byte	0x1a
	.long	0x45b
	.byte	0
	.uleb128 0x17
	.long	0x857
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0xa1b
	.uleb128 0x18
	.long	0x867
	.long	.LLST0
	.uleb128 0x18
	.long	0x872
	.long	.LLST1
	.uleb128 0x18
	.long	0x87d
	.long	.LLST2
	.uleb128 0x19
	.long	0x888
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	0x893
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	0x89e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	0x8a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.long	0x8b4
	.uleb128 0x1b
	.long	.LBB30
	.long	.LBE30-.LBB30
	.uleb128 0x18
	.long	0x8a9
	.long	.LLST3
	.uleb128 0x1c
	.long	0x89e
	.uleb128 0x18
	.long	0x893
	.long	.LLST4
	.uleb128 0x18
	.long	0x888
	.long	.LLST5
	.uleb128 0x18
	.long	0x87d
	.long	.LLST6
	.uleb128 0x18
	.long	0x872
	.long	.LLST7
	.uleb128 0x18
	.long	0x867
	.long	.LLST8
	.uleb128 0x1b
	.long	.LBB31
	.long	.LBE31-.LBB31
	.uleb128 0x1d
	.long	0x8b4
	.long	.LLST9
	.uleb128 0x1e
	.long	0x83f
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.byte	0x1b
	.long	0x9d7
	.uleb128 0x18
	.long	0x84b
	.long	.LLST10
	.byte	0
	.uleb128 0x1f
	.long	0x8ee
	.long	.LBB34
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x27
	.long	0x9fd
	.uleb128 0x18
	.long	0x8fa
	.long	.LLST11
	.uleb128 0x18
	.long	0x905
	.long	.LLST12
	.byte	0
	.uleb128 0x20
	.long	.LVL6
	.long	0x112c
	.uleb128 0x20
	.long	.LVL11
	.long	0x1137
	.uleb128 0x20
	.long	.LVL12
	.long	0x1142
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF196
	.byte	0x1
	.byte	0x34
	.long	0x2b2
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0xa9d
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.byte	0x34
	.long	0x8c0
	.long	.LLST13
	.uleb128 0x22
	.long	.LASF113
	.byte	0x1
	.byte	0x34
	.long	0x3dd
	.long	.LLST14
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.byte	0x35
	.long	0xc6
	.long	.LLST15
	.uleb128 0x22
	.long	.LASF188
	.byte	0x1
	.byte	0x35
	.long	0x2c
	.long	.LLST16
	.uleb128 0x24
	.long	.LASF189
	.byte	0x1
	.byte	0x35
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LVL23
	.long	0x857
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF197
	.byte	0x1
	.byte	0x3a
	.long	0x2b2
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0xb17
	.uleb128 0x22
	.long	.LASF187
	.byte	0x1
	.byte	0x3a
	.long	0x8c0
	.long	.LLST17
	.uleb128 0x22
	.long	.LASF113
	.byte	0x1
	.byte	0x3a
	.long	0x3dd
	.long	.LLST18
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.byte	0x3b
	.long	0xc6
	.long	.LLST19
	.uleb128 0x22
	.long	.LASF198
	.byte	0x1
	.byte	0x3b
	.long	0x2c
	.long	.LLST20
	.uleb128 0x24
	.long	.LASF199
	.byte	0x1
	.byte	0x3b
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x25
	.long	.LVL30
	.long	0x857
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF200
	.byte	0x2
	.byte	0x2c
	.byte	0x3
	.long	0xb2f
	.uleb128 0x12
	.long	.LASF195
	.byte	0x2
	.byte	0x2c
	.long	0x45b
	.byte	0
	.uleb128 0x21
	.long	.LASF201
	.byte	0x1
	.byte	0x40
	.long	0x2b2
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf7
	.uleb128 0x24
	.long	.LASF187
	.byte	0x1
	.byte	0x40
	.long	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF202
	.byte	0x1
	.byte	0x42
	.long	0x2c
	.long	.LLST21
	.uleb128 0x27
	.long	.LASF170
	.byte	0x1
	.byte	0x44
	.long	0x45b
	.long	.LLST22
	.uleb128 0x1e
	.long	0x8d2
	.long	.LBB44
	.long	.LBE44-.LBB44
	.byte	0x1
	.byte	0x5b
	.long	0xb91
	.uleb128 0x18
	.long	0x8e2
	.long	.LLST23
	.byte	0
	.uleb128 0x1f
	.long	0xb17
	.long	.LBB46
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x61
	.long	0xbae
	.uleb128 0x18
	.long	0xb23
	.long	.LLST24
	.byte	0
	.uleb128 0x20
	.long	.LVL32
	.long	0x112c
	.uleb128 0x20
	.long	.LVL34
	.long	0x1137
	.uleb128 0x20
	.long	.LVL36
	.long	0x1137
	.uleb128 0x20
	.long	.LVL38
	.long	0x1137
	.uleb128 0x20
	.long	.LVL42
	.long	0x114d
	.uleb128 0x20
	.long	.LVL45
	.long	0x1158
	.uleb128 0x20
	.long	.LVL46
	.long	0x1137
	.uleb128 0x20
	.long	.LVL47
	.long	0x1163
	.byte	0
	.uleb128 0x21
	.long	.LASF203
	.byte	0x1
	.byte	0x6c
	.long	0x2b2
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0xcaf
	.uleb128 0x24
	.long	.LASF187
	.byte	0x1
	.byte	0x6c
	.long	0xcaf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF113
	.byte	0x1
	.byte	0x6c
	.long	0x3dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF188
	.byte	0x1
	.byte	0x6d
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF189
	.byte	0x1
	.byte	0x6d
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF204
	.byte	0x1
	.byte	0x6f
	.long	0x2b2
	.long	.LLST25
	.uleb128 0x27
	.long	.LASF205
	.byte	0x1
	.byte	0x70
	.long	0x8c0
	.long	.LLST26
	.uleb128 0x20
	.long	.LVL50
	.long	0x116e
	.uleb128 0x20
	.long	.LVL52
	.long	0x116e
	.uleb128 0x20
	.long	.LVL53
	.long	0x1179
	.uleb128 0x28
	.long	.LVL54
	.long	0x857
	.long	0xc9c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.long	.LVL56
	.long	0x1179
	.uleb128 0x20
	.long	.LVL57
	.long	0x1179
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x8c0
	.uleb128 0x21
	.long	.LASF206
	.byte	0x1
	.byte	0x93
	.long	0x2b2
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xd8f
	.uleb128 0x24
	.long	.LASF187
	.byte	0x1
	.byte	0x93
	.long	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF202
	.byte	0x1
	.byte	0x95
	.long	0x2c
	.long	.LLST27
	.uleb128 0x27
	.long	.LASF170
	.byte	0x1
	.byte	0x96
	.long	0x45b
	.long	.LLST28
	.uleb128 0x1e
	.long	0x8d2
	.long	.LBB54
	.long	.LBE54-.LBB54
	.byte	0x1
	.byte	0xac
	.long	0xd17
	.uleb128 0x18
	.long	0x8e2
	.long	.LLST29
	.byte	0
	.uleb128 0x1f
	.long	0xb17
	.long	.LBB56
	.long	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0xb1
	.long	0xd34
	.uleb128 0x18
	.long	0xb23
	.long	.LLST30
	.byte	0
	.uleb128 0x20
	.long	.LVL62
	.long	0x112c
	.uleb128 0x20
	.long	.LVL64
	.long	0x1137
	.uleb128 0x20
	.long	.LVL66
	.long	0x1137
	.uleb128 0x20
	.long	.LVL68
	.long	0x1137
	.uleb128 0x20
	.long	.LVL72
	.long	0x114d
	.uleb128 0x20
	.long	.LVL75
	.long	0x1158
	.uleb128 0x20
	.long	.LVL76
	.long	0x1137
	.uleb128 0x20
	.long	.LVL77
	.long	0x1163
	.uleb128 0x20
	.long	.LVL78
	.long	0x1179
	.uleb128 0x20
	.long	.LVL79
	.long	0x1179
	.byte	0
	.uleb128 0x13
	.long	.LASF207
	.byte	0x1
	.byte	0xbe
	.long	0x2b2
	.byte	0x1
	.long	0xdf8
	.uleb128 0x12
	.long	.LASF187
	.byte	0x1
	.byte	0xbe
	.long	0x8c0
	.uleb128 0x14
	.string	"msg"
	.byte	0x1
	.byte	0xbe
	.long	0xc6
	.uleb128 0x12
	.long	.LASF198
	.byte	0x1
	.byte	0xbe
	.long	0x2c
	.uleb128 0x15
	.long	.LASF202
	.byte	0x1
	.byte	0xc0
	.long	0x2c
	.uleb128 0x15
	.long	.LASF170
	.byte	0x1
	.byte	0xc2
	.long	0x45b
	.uleb128 0x15
	.long	.LASF208
	.byte	0x1
	.byte	0xc3
	.long	0x829
	.uleb128 0x29
	.string	"err"
	.byte	0x1
	.byte	0xc4
	.long	0x2b2
	.uleb128 0x15
	.long	.LASF209
	.byte	0x1
	.byte	0xc6
	.long	0x9e
	.byte	0
	.uleb128 0x2a
	.long	.LASF210
	.byte	0x1
	.value	0x10e
	.long	0x2b2
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xf16
	.uleb128 0x2b
	.long	.LASF187
	.byte	0x1
	.value	0x10e
	.long	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"msg"
	.byte	0x1
	.value	0x10e
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF188
	.byte	0x1
	.value	0x10e
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	0xd8f
	.long	.LBB64
	.long	.LBE64-.LBB64
	.byte	0x1
	.value	0x113
	.uleb128 0x18
	.long	0xdb5
	.long	.LLST31
	.uleb128 0x18
	.long	0xdaa
	.long	.LLST32
	.uleb128 0x18
	.long	0xd9f
	.long	.LLST33
	.uleb128 0x1b
	.long	.LBB65
	.long	.LBE65-.LBB65
	.uleb128 0x1d
	.long	0xdc0
	.long	.LLST34
	.uleb128 0x1d
	.long	0xdcb
	.long	.LLST35
	.uleb128 0x1d
	.long	0xdd6
	.long	.LLST36
	.uleb128 0x1d
	.long	0xde1
	.long	.LLST37
	.uleb128 0x1a
	.long	0xdec
	.uleb128 0x1e
	.long	0x8d2
	.long	.LBB66
	.long	.LBE66-.LBB66
	.byte	0x1
	.byte	0xe5
	.long	0xeb9
	.uleb128 0x18
	.long	0x8e2
	.long	.LLST38
	.byte	0
	.uleb128 0x20
	.long	.LVL83
	.long	0x112c
	.uleb128 0x20
	.long	.LVL85
	.long	0x1137
	.uleb128 0x20
	.long	.LVL87
	.long	0x1137
	.uleb128 0x20
	.long	.LVL89
	.long	0x1137
	.uleb128 0x20
	.long	.LVL92
	.long	0x1184
	.uleb128 0x20
	.long	.LVL94
	.long	0x1137
	.uleb128 0x20
	.long	.LVL97
	.long	0x1137
	.uleb128 0x20
	.long	.LVL102
	.long	0x118f
	.uleb128 0x20
	.long	.LVL103
	.long	0x1137
	.uleb128 0x20
	.long	.LVL104
	.long	0x1163
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF211
	.byte	0x1
	.value	0x116
	.long	0x2b2
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1017
	.uleb128 0x2b
	.long	.LASF187
	.byte	0x1
	.value	0x116
	.long	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF212
	.byte	0x1
	.value	0x116
	.long	0x2bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"msg"
	.byte	0x1
	.value	0x116
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.long	.LASF188
	.byte	0x1
	.value	0x117
	.long	0x1017
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2e
	.long	.LASF202
	.byte	0x1
	.value	0x119
	.long	0x2c
	.long	.LLST39
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.value	0x11b
	.long	0x2b2
	.long	.LLST40
	.uleb128 0x30
	.long	.LASF209
	.byte	0x1
	.value	0x11c
	.long	0x9e
	.uleb128 0x20
	.long	.LVL107
	.long	0x112c
	.uleb128 0x20
	.long	.LVL110
	.long	0x1137
	.uleb128 0x20
	.long	.LVL111
	.long	0x1137
	.uleb128 0x20
	.long	.LVL112
	.long	0x119a
	.uleb128 0x20
	.long	.LVL113
	.long	0x11a5
	.uleb128 0x20
	.long	.LVL114
	.long	0x1137
	.uleb128 0x20
	.long	.LVL115
	.long	0x1137
	.uleb128 0x20
	.long	.LVL116
	.long	0x1137
	.uleb128 0x20
	.long	.LVL117
	.long	0x11b0
	.uleb128 0x20
	.long	.LVL118
	.long	0x1137
	.uleb128 0x20
	.long	.LVL119
	.long	0x1163
	.uleb128 0x20
	.long	.LVL120
	.long	0x112c
	.uleb128 0x20
	.long	.LVL123
	.long	0x11bb
	.uleb128 0x20
	.long	.LVL125
	.long	0x1137
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x2c
	.uleb128 0x2a
	.long	.LASF213
	.byte	0x1
	.value	0x15f
	.long	0x2b2
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1084
	.uleb128 0x2b
	.long	.LASF187
	.byte	0x1
	.value	0x15f
	.long	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.long	.LASF202
	.byte	0x1
	.value	0x161
	.long	0x2c
	.long	.LLST41
	.uleb128 0x20
	.long	.LVL128
	.long	0x112c
	.uleb128 0x20
	.long	.LVL130
	.long	0x1137
	.uleb128 0x20
	.long	.LVL132
	.long	0x1137
	.uleb128 0x20
	.long	.LVL135
	.long	0x1158
	.uleb128 0x20
	.long	.LVL136
	.long	0x1137
	.byte	0
	.uleb128 0x2a
	.long	.LASF214
	.byte	0x1
	.value	0x178
	.long	0x2b2
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ea
	.uleb128 0x31
	.long	.LASF187
	.byte	0x1
	.value	0x178
	.long	0x8c0
	.long	.LLST42
	.uleb128 0x31
	.long	.LASF215
	.byte	0x1
	.value	0x178
	.long	0x10ea
	.long	.LLST43
	.uleb128 0x2e
	.long	.LASF202
	.byte	0x1
	.value	0x17a
	.long	0x2c
	.long	.LLST44
	.uleb128 0x20
	.long	.LVL139
	.long	0x112c
	.uleb128 0x20
	.long	.LVL140
	.long	0x1137
	.uleb128 0x20
	.long	.LVL142
	.long	0x1137
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x81e
	.uleb128 0x32
	.long	.LASF216
	.byte	0xf
	.byte	0xe
	.long	0x82f
	.uleb128 0x32
	.long	.LASF217
	.byte	0xf
	.byte	0xf
	.long	0x82f
	.uleb128 0xf
	.long	0x829
	.long	0x1116
	.uleb128 0x10
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF218
	.byte	0xf
	.byte	0x15
	.long	0x1106
	.uleb128 0x32
	.long	.LASF219
	.byte	0xf
	.byte	0x21
	.long	0x450
	.uleb128 0x33
	.long	.LASF220
	.long	.LASF220
	.byte	0x10
	.byte	0x8
	.uleb128 0x33
	.long	.LASF221
	.long	.LASF221
	.byte	0x10
	.byte	0x9
	.uleb128 0x33
	.long	.LASF222
	.long	.LASF222
	.byte	0xf
	.byte	0xa7
	.uleb128 0x33
	.long	.LASF223
	.long	.LASF223
	.byte	0xf
	.byte	0x8a
	.uleb128 0x33
	.long	.LASF224
	.long	.LASF224
	.byte	0xf
	.byte	0xa9
	.uleb128 0x33
	.long	.LASF225
	.long	.LASF225
	.byte	0xf
	.byte	0x7b
	.uleb128 0x33
	.long	.LASF226
	.long	.LASF226
	.byte	0x11
	.byte	0x8d
	.uleb128 0x33
	.long	.LASF227
	.long	.LASF227
	.byte	0x11
	.byte	0x93
	.uleb128 0x33
	.long	.LASF228
	.long	.LASF228
	.byte	0xf
	.byte	0xaa
	.uleb128 0x33
	.long	.LASF229
	.long	.LASF229
	.byte	0xf
	.byte	0x88
	.uleb128 0x33
	.long	.LASF230
	.long	.LASF230
	.byte	0xf
	.byte	0xae
	.uleb128 0x33
	.long	.LASF231
	.long	.LASF231
	.byte	0xf
	.byte	0xac
	.uleb128 0x33
	.long	.LASF232
	.long	.LASF232
	.byte	0xf
	.byte	0x89
	.uleb128 0x33
	.long	.LASF233
	.long	.LASF233
	.byte	0xf
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x17
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL16
	.value	0x1
	.byte	0x53
	.long	.LVL16
	.long	.LFE12
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.value	0x1
	.byte	0x52
	.long	.LVL2
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL5
	.long	.LVL6-1
	.value	0x1
	.byte	0x52
	.long	.LVL6-1
	.long	.LVL14
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL15
	.long	.LFE12
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL6-1
	.value	0x1
	.byte	0x51
	.long	.LVL6-1
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x51
	.long	.LVL15
	.long	.LFE12
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL13
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST5:
	.long	.LVL3
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL3
	.long	.LVL6-1
	.value	0x1
	.byte	0x51
	.long	.LVL6-1
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST7:
	.long	.LVL3
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL5
	.long	.LVL6-1
	.value	0x1
	.byte	0x52
	.long	.LVL6-1
	.long	.LVL13
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL3
	.long	.LVL13
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST9:
	.long	.LVL6
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL7
	.long	.LVL10
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST13:
	.long	.LVL17
	.long	.LVL20
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL20
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL17
	.long	.LVL22
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL22
	.long	.LVL23-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST15:
	.long	.LVL17
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL19
	.long	.LVL23-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST16:
	.long	.LVL17
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL18
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	.LVL21
	.long	.LVL23-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST17:
	.long	.LVL24
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL29
	.long	.LVL30-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL24
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL27
	.long	.LVL30-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST19:
	.long	.LVL24
	.long	.LVL26
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL26
	.long	.LVL30-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST20:
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL25
	.long	.LVL28
	.value	0x1
	.byte	0x53
	.long	.LVL28
	.long	.LVL30-1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST21:
	.long	.LVL33
	.long	.LVL34-1
	.value	0x1
	.byte	0x50
	.long	.LVL34-1
	.long	.LVL35
	.value	0x1
	.byte	0x56
	.long	.LVL35
	.long	.LVL36-1
	.value	0x1
	.byte	0x50
	.long	.LVL36-1
	.long	.LVL37
	.value	0x1
	.byte	0x56
	.long	.LVL37
	.long	.LVL38-1
	.value	0x1
	.byte	0x50
	.long	.LVL38-1
	.long	.LVL39
	.value	0x1
	.byte	0x56
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL48
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST22:
	.long	.LVL39
	.long	.LVL48
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST23:
	.long	.LVL40
	.long	.LVL41
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST24:
	.long	.LVL43
	.long	.LVL44
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL55
	.long	.LVL56-1
	.value	0x1
	.byte	0x50
	.long	.LVL56-1
	.long	.LVL58
	.value	0x1
	.byte	0x56
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST26:
	.long	.LVL51
	.long	.LVL52-1
	.value	0x1
	.byte	0x50
	.long	.LVL52-1
	.long	.LVL60
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL63
	.long	.LVL64-1
	.value	0x1
	.byte	0x50
	.long	.LVL64-1
	.long	.LVL65
	.value	0x1
	.byte	0x56
	.long	.LVL65
	.long	.LVL66-1
	.value	0x1
	.byte	0x50
	.long	.LVL66-1
	.long	.LVL67
	.value	0x1
	.byte	0x56
	.long	.LVL67
	.long	.LVL68-1
	.value	0x1
	.byte	0x50
	.long	.LVL68-1
	.long	.LVL69
	.value	0x1
	.byte	0x56
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x50
	.long	.LVL70
	.long	.LVL80
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST28:
	.long	.LVL69
	.long	.LVL80
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST29:
	.long	.LVL70
	.long	.LVL71
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST30:
	.long	.LVL73
	.long	.LVL74
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x44
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL82
	.long	.LVL83-1
	.value	0x1
	.byte	0x52
	.long	.LVL83-1
	.long	.LVL105
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST32:
	.long	.LVL82
	.long	.LVL93
	.value	0x1
	.byte	0x56
	.long	.LVL93
	.long	.LVL98
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL98
	.long	.LVL100
	.value	0x1
	.byte	0x56
	.long	.LVL100
	.long	.LVL105
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST33:
	.long	.LVL82
	.long	.LVL99
	.value	0x1
	.byte	0x57
	.long	.LVL99
	.long	.LVL105
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST34:
	.long	.LVL84
	.long	.LVL85-1
	.value	0x1
	.byte	0x50
	.long	.LVL85-1
	.long	.LVL86
	.value	0x1
	.byte	0x53
	.long	.LVL86
	.long	.LVL87-1
	.value	0x1
	.byte	0x50
	.long	.LVL87-1
	.long	.LVL88
	.value	0x1
	.byte	0x53
	.long	.LVL88
	.long	.LVL89-1
	.value	0x1
	.byte	0x50
	.long	.LVL89-1
	.long	.LVL90
	.value	0x1
	.byte	0x53
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x50
	.long	.LVL91
	.long	.LVL105
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST35:
	.long	.LVL90
	.long	.LVL99
	.value	0x1
	.byte	0x57
	.long	.LVL99
	.long	.LVL105
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST36:
	.long	.LVL98
	.long	.LVL101
	.value	0x3
	.byte	0x70
	.sleb128 -24
	.byte	0x9f
	.long	.LVL101
	.long	.LVL102-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST37:
	.long	.LVL93
	.long	.LVL94-1
	.value	0x1
	.byte	0x50
	.long	.LVL94-1
	.long	.LVL95
	.value	0x1
	.byte	0x56
	.long	.LVL95
	.long	.LVL96
	.value	0x1
	.byte	0x50
	.long	.LVL96
	.long	.LVL98
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST38:
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST39:
	.long	.LVL108
	.long	.LVL109
	.value	0x1
	.byte	0x50
	.long	.LVL109
	.long	.LVL121
	.value	0x1
	.byte	0x57
	.long	.LVL121
	.long	.LVL122
	.value	0x1
	.byte	0x50
	.long	.LVL122
	.long	.LVL126
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST40:
	.long	.LVL124
	.long	.LVL125-1
	.value	0x1
	.byte	0x50
	.long	.LVL125-1
	.long	.LVL126
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST41:
	.long	.LVL129
	.long	.LVL130-1
	.value	0x1
	.byte	0x50
	.long	.LVL130-1
	.long	.LVL131
	.value	0x1
	.byte	0x56
	.long	.LVL131
	.long	.LVL132-1
	.value	0x1
	.byte	0x50
	.long	.LVL132-1
	.long	.LVL133
	.value	0x1
	.byte	0x56
	.long	.LVL133
	.long	.LVL134
	.value	0x1
	.byte	0x50
	.long	.LVL134
	.long	.LVL137
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST42:
	.long	.LVL138
	.long	.LVL143
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL143
	.long	.LVL144
	.value	0x1
	.byte	0x53
	.long	.LVL144
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST43:
	.long	.LVL138
	.long	.LVL143
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL143
	.long	.LVL144
	.value	0x1
	.byte	0x56
	.long	.LVL144
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST44:
	.long	.LVL139
	.long	.LVL140-1
	.value	0x1
	.byte	0x50
	.long	.LVL141
	.long	.LVL142-1
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
	.long	.LFB12
	.long	.LFE12-.LFB12
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
	.long	.LBB56
	.long	.LBE56
	.long	.LBB59
	.long	.LBE59
	.long	0
	.long	0
	.long	.LFB12
	.long	.LFE12
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
.LASF184:
	.string	"free_buf_size"
.LASF20:
	.string	"sem_count_t"
.LASF133:
	.string	"task_stat_t"
.LASF209:
	.string	"cur_cpu_num"
.LASF235:
	.string	"src/k_buf_queue.c"
.LASF226:
	.string	"krhino_mm_alloc"
.LASF23:
	.string	"suspend_nested_t"
.LASF179:
	.string	"peak_num"
.LASF237:
	.string	"cpu_cur_get"
.LASF220:
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
.LASF185:
	.string	"kbuf_queue_info_t"
.LASF0:
	.string	"unsigned int"
.LASF89:
	.string	"next"
.LASF233:
	.string	"pend_state_end_proc"
.LASF174:
	.string	"blk_size"
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
.LASF229:
	.string	"pend_task_wakeup"
.LASF47:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF96:
	.string	"BLK_ABORT"
.LASF172:
	.string	"freesize"
.LASF194:
	.string	"klist_insert"
.LASF51:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF192:
	.string	"list"
.LASF150:
	.string	"task_sem_obj"
.LASF54:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF199:
	.string	"msg_num"
.LASF193:
	.string	"klist_init"
.LASF15:
	.string	"uint32_t"
.LASF200:
	.string	"klist_rm"
.LASF183:
	.string	"buf_size"
.LASF214:
	.string	"krhino_buf_queue_info_get"
.LASF230:
	.string	"ringbuf_is_empty"
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
.LASF231:
	.string	"ringbuf_pop"
.LASF52:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF13:
	.string	"long long unsigned int"
.LASF221:
	.string	"cpu_intrpt_restore"
.LASF197:
	.string	"krhino_fix_buf_queue_create"
.LASF94:
	.string	"blk_policy_t"
.LASF70:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF24:
	.string	"RHINO_SUCCESS"
.LASF206:
	.string	"krhino_buf_queue_dyn_del"
.LASF170:
	.string	"head"
.LASF152:
	.string	"time_total"
.LASF62:
	.string	"RHINO_BLK_DEL"
.LASF128:
	.string	"K_SUSPENDED"
.LASF60:
	.string	"RHINO_BLK_ABORT"
.LASF236:
	.string	"/home/stone/Documents/pca"
.LASF204:
	.string	"stat"
.LASF205:
	.string	"queue_obj"
.LASF222:
	.string	"ringbuf_init"
.LASF181:
	.string	"buf_queue_item"
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
.LASF176:
	.string	"ringbuf"
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
.LASF212:
	.string	"ticks"
.LASF177:
	.string	"max_msg_size"
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
.LASF67:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF27:
	.string	"RHINO_RUNNING"
.LASF207:
	.string	"buf_queue_send"
.LASF14:
	.string	"uint8_t"
.LASF134:
	.string	"task_stack"
.LASF34:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF149:
	.string	"blk_state"
.LASF163:
	.string	"owner_nested"
.LASF175:
	.string	"k_ringbuf_t"
.LASF1:
	.string	"long long int"
.LASF232:
	.string	"pend_to_blk_obj"
.LASF228:
	.string	"ringbuf_push"
.LASF198:
	.string	"msg_size"
.LASF61:
	.string	"RHINO_BLK_TIMEOUT"
.LASF135:
	.string	"task_name"
.LASF208:
	.string	"task"
.LASF159:
	.string	"b_prio"
.LASF123:
	.string	"buf_queue_head"
.LASF213:
	.string	"krhino_buf_queue_flush"
.LASF144:
	.string	"tick_match"
.LASF98:
	.string	"BLK_DEL"
.LASF97:
	.string	"BLK_TIMEOUT"
.LASF180:
	.string	"min_free_buf_size"
.LASF56:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF127:
	.string	"K_PEND"
.LASF100:
	.string	"blk_state_t"
.LASF211:
	.string	"krhino_buf_queue_recv"
.LASF188:
	.string	"size"
.LASF83:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF43:
	.string	"RHINO_NO_MEM"
.LASF139:
	.string	"task_list"
.LASF215:
	.string	"info"
.LASF75:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF111:
	.string	"blk_obj"
.LASF191:
	.string	"is_klist_empty"
.LASF110:
	.string	"klist_s"
.LASF91:
	.string	"klist_t"
.LASF71:
	.string	"RHINO_QUEUE_FULL"
.LASF154:
	.string	"pend_info"
.LASF223:
	.string	"pend_task_rm"
.LASF112:
	.string	"blk_list"
.LASF66:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF218:
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
.LASF162:
	.string	"mutex_task"
.LASF92:
	.string	"BLK_POLICY_PRI"
.LASF7:
	.string	"short int"
.LASF196:
	.string	"krhino_buf_queue_create"
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
.LASF224:
	.string	"ringbuf_reset"
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
.LASF202:
	.string	"cpsr"
.LASF21:
	.string	"cpu_stack_t"
.LASF50:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF116:
	.string	"blk_obj_t"
.LASF182:
	.string	"kbuf_queue_t"
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
	.string	"queue"
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
.LASF173:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF210:
	.string	"krhino_buf_queue_send"
.LASF234:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF117:
	.string	"task_head"
.LASF115:
	.string	"obj_type"
.LASF86:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF225:
	.string	"core_sched"
.LASF33:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF171:
	.string	"tail"
.LASF186:
	.string	"list_head"
.LASF189:
	.string	"max_msg"
.LASF190:
	.string	"buf_queue_create"
.LASF22:
	.string	"mutex_nested_t"
.LASF138:
	.string	"stack_size"
.LASF106:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF195:
	.string	"element"
.LASF120:
	.string	"sem_head"
.LASF219:
	.string	"g_kobj_list"
.LASF129:
	.string	"K_PEND_SUSPENDED"
.LASF53:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF3:
	.string	"signed char"
.LASF164:
	.string	"mutex_item"
.LASF8:
	.string	"short unsigned int"
.LASF201:
	.string	"krhino_buf_queue_del"
.LASF46:
	.string	"RHINO_SCHED_DISABLE"
.LASF102:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF156:
	.string	"sched_policy"
.LASF227:
	.string	"krhino_mm_free"
.LASF114:
	.string	"blk_policy"
.LASF68:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF132:
	.string	"K_DELETED"
.LASF105:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF217:
	.string	"g_intrpt_nested_level"
.LASF157:
	.string	"cpu_num"
.LASF216:
	.string	"g_sched_lock"
.LASF81:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF203:
	.string	"krhino_buf_queue_dyn_create"
.LASF147:
	.string	"bq_msg_size"
.LASF32:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF99:
	.string	"BLK_INVALID"
.LASF178:
	.string	"cur_num"
.LASF26:
	.string	"RHINO_SYS_SP_ERR"
.LASF37:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
