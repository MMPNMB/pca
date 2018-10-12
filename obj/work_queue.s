	.file	"work_queue.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	""
.LC3:
	.string	"work queue: idle..."
	.section	.text.unlikely.worker_thread,"ax",@progbits
.LCOLDB4:
	.section	.text.worker_thread,"ax",@progbits
.LHOTB4:
	.section	.text.unlikely.worker_thread
.Ltext_cold0:
	.section	.text.worker_thread
	.type	worker_thread, @function
worker_thread:
.LFB31:
	.file 1 "framework/protocol/linkkit/iotkit/base/utils//misc/work_queue.c"
	.loc 1 205 0
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 211 0
	pushl	$.LC2
	pushl	$5
	pushl	$211
	pushl	$__FUNCTION__.3562
	call	LITE_syslog
.LVL1:
	.loc 1 214 0
	addl	$16, %esp
	.loc 1 208 0
	movl	$-1, -28(%ebp)
.LVL2:
.L2:
	.loc 1 214 0
	cmpl	$1, g_wq_state
	jne	.L21
	.loc 1 216 0
	call	HAL_UptimeMs
.LVL3:
	.loc 1 217 0
	pushl	%ecx
	pushl	%ecx
	.loc 1 216 0
	movl	%edx, %edi
	.loc 1 217 0
	pushl	-28(%ebp)
	pushl	g_wq_sem
	.loc 1 216 0
	movl	%eax, %esi
.LVL4:
	.loc 1 217 0
	call	HAL_SemaphoreWait
.LVL5:
.LBB71:
.LBB72:
	.loc 1 74 0
	call	HAL_UptimeMs
.LVL6:
.LBE72:
.LBE71:
	.loc 1 224 0
	popl	%ebx
.LBB76:
.LBB73:
	.loc 1 76 0
	subl	%esi, %eax
.LVL7:
.LBE73:
.LBE76:
	.loc 1 224 0
	pushl	g_wq_mutex
.LBB77:
.LBB74:
	.loc 1 76 0
	sbbl	%edi, %edx
	movl	%eax, -40(%ebp)
.LBE74:
.LBE77:
	.loc 1 222 0
	orl	$-1, %edi
.LBB78:
.LBB75:
	.loc 1 76 0
	movl	%edx, -36(%ebp)
.LVL8:
.LBE75:
.LBE78:
	.loc 1 220 0
	xorl	%ebx, %ebx
	.loc 1 224 0
	call	HAL_MutexLock
.LVL9:
	.loc 1 225 0
	movl	g_wq_list, %esi
.LVL10:
	addl	$16, %esp
	.loc 1 221 0
	movl	$127, %ecx
	.loc 1 222 0
	movl	$-1, -28(%ebp)
.LVL11:
.L3:
	.loc 1 225 0 discriminator 1
	cmpl	$g_wq_list, %esi
	je	.L22
	.loc 1 228 0
	xorl	%edx, %edx
	cmpl	-36(%ebp), %edx
	movl	16(%esi), %eax
	ja	.L4
	jb	.L17
	cmpl	-40(%ebp), %eax
	ja	.L4
.L17:
	.loc 1 229 0
	movl	$0, 16(%esi)
.L4:
	.loc 1 233 0
	movl	16(%esi), %eax
	testl	%eax, %eax
	je	.L6
.LVL12:
	.loc 1 234 0
	jns	.L7
.LVL13:
.LBB79:
.LBB80:
	.loc 1 92 0
	andl	$2147483647, %eax
	jmp	.L19
.LVL14:
.L7:
.LBE80:
.LBE79:
	.loc 1 237 0
	subl	-40(%ebp), %eax
.L19:
	.loc 1 239 0
	xorl	%edx, %edx
	cmpl	$0, %edi
	.loc 1 237 0
	movl	%eax, 16(%esi)
	.loc 1 239 0
	movl	16(%esi), %eax
	ja	.L10
	cmpl	%eax, -28(%ebp)
	jbe	.L11
.L10:
	movl	%eax, -28(%ebp)
	movl	%edx, %edi
	jmp	.L11
.LVL15:
.L6:
	.loc 1 242 0
	movsbl	20(%esi), %eax
	cmpl	%eax, %ecx
	jle	.L11
	movl	%eax, %ecx
.LVL16:
	movl	%esi, %ebx
.LVL17:
.L11:
	.loc 1 225 0 discriminator 2
	movl	(%esi), %esi
.LVL18:
	jmp	.L3
.L22:
	.loc 1 248 0
	subl	$12, %esp
	pushl	g_wq_mutex
	call	HAL_MutexUnlock
.LVL19:
	.loc 1 250 0
	addl	$16, %esp
	testl	%ebx, %ebx
	je	.L13
	.loc 1 252 0
	subl	$12, %esp
	pushl	g_wq_mutex
	call	HAL_MutexLock
.LVL20:
.LBB81:
.LBB82:
	.file 2 "./framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/lite-list.h"
	.loc 2 121 0
	movl	(%ebx), %edx
	movl	4(%ebx), %eax
.LVL21:
.LBB83:
.LBB84:
	.loc 2 104 0
	movl	%eax, 4(%edx)
	.loc 2 105 0
	movl	%edx, (%eax)
.LVL22:
.LBE84:
.LBE83:
.LBE82:
.LBE81:
	.loc 1 254 0
	call	HAL_UptimeMs
.LVL23:
	.loc 1 256 0
	popl	%edx
	pushl	g_wq_mutex
	.loc 1 254 0
	movl	%eax, g_wq_timestamp
	.loc 1 255 0
	movl	%ebx, g_wq_current
	.loc 1 256 0
	call	HAL_MutexUnlock
.LVL24:
	.loc 1 258 0
	movl	%ebx, (%esp)
	call	*8(%ebx)
.LVL25:
	.loc 1 260 0
	movl	$0, g_wq_current
.LVL26:
	addl	$16, %esp
	.loc 1 261 0
	movl	$0, -28(%ebp)
	jmp	.L2
.LVL27:
.L13:
	.loc 1 262 0
	incl	%edi
	jne	.L2
	cmpl	$-1, -28(%ebp)
	jne	.L2
	.loc 1 266 0
	pushl	$.LC3
	pushl	$4
	pushl	$266
	pushl	$__FUNCTION__.3562
	call	LITE_syslog
.LVL28:
	addl	$16, %esp
	jmp	.L2
.LVL29:
.L21:
	.loc 1 270 0
	pushl	$.LC2
	pushl	$5
	pushl	$270
	pushl	$__FUNCTION__.3562
	call	LITE_syslog
.LVL30:
	.loc 1 272 0
	popl	%eax
	pushl	g_wq_thread
	call	HAL_ThreadDetach
.LVL31:
	.loc 1 274 0
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
.LFE31:
	.size	worker_thread, .-worker_thread
	.section	.text.unlikely.worker_thread
.LCOLDE4:
	.section	.text.worker_thread
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"work %s is working, wait it exit"
	.section	.text.unlikely.cancel_work,"ax",@progbits
.LCOLDB6:
	.section	.text.cancel_work,"ax",@progbits
.LHOTB6:
	.globl	cancel_work
	.type	cancel_work, @function
cancel_work:
.LFB30:
	.loc 1 174 0
	.cfi_startproc
.LVL32:
	xorl	%eax, %eax
	.loc 1 178 0
	cmpl	$1, g_wq_state
	.loc 1 174 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 174 0
	movl	8(%ebp), %ebx
	.loc 1 178 0
	jne	.L24
	movl	$3, %esi
.LVL33:
.L31:
	.loc 1 183 0
	subl	$12, %esp
	pushl	g_wq_mutex
	call	HAL_MutexLock
.LVL34:
	.loc 1 184 0
	movl	g_wq_list, %eax
.LVL35:
	addl	$16, %esp
.L25:
	.loc 1 184 0 is_stmt 0 discriminator 1
	cmpl	$g_wq_list, %eax
	je	.L27
	.loc 1 185 0 is_stmt 1
	cmpl	%ebx, %eax
	jne	.L26
.LVL36:
.LBB91:
.LBB92:
	.loc 2 121 0
	movl	(%ebx), %edx
	movl	4(%ebx), %eax
.LVL37:
.LBE92:
.LBE91:
	.loc 1 187 0
	movl	$1, %esi
.LVL38:
.LBB96:
.LBB95:
.LBB93:
.LBB94:
	.loc 2 104 0
	movl	%eax, 4(%edx)
	.loc 2 105 0
	movl	%edx, (%eax)
.LVL39:
	jmp	.L27
.LVL40:
.L26:
.LBE94:
.LBE93:
.LBE95:
.LBE96:
	.loc 1 184 0 discriminator 2
	movl	(%eax), %eax
.LVL41:
	jmp	.L25
.LVL42:
.L27:
	.loc 1 191 0
	subl	$12, %esp
	pushl	g_wq_mutex
	call	HAL_MutexUnlock
.LVL43:
	.loc 1 193 0
	addl	$16, %esp
	cmpl	g_wq_current, %ebx
	jne	.L33
	.loc 1 194 0
	subl	$12, %esp
	pushl	24(%ebx)
	pushl	$.LC5
	pushl	$4
	pushl	$194
	pushl	$__FUNCTION__.3549
	call	LITE_syslog
.LVL44:
	.loc 1 195 0
	addl	$32, %esp
.L29:
	cmpl	g_wq_current, %ebx
	jne	.L31
	.loc 1 196 0
	subl	$12, %esp
	pushl	$100
	call	HAL_SleepMs
.LVL45:
	addl	$16, %esp
	jmp	.L29
.L33:
	movl	%esi, %eax
.LVL46:
.L24:
	.loc 1 201 0
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
.LFE30:
	.size	cancel_work, .-cancel_work
	.section	.text.unlikely.cancel_work
.LCOLDE6:
	.section	.text.cancel_work
.LHOTE6:
	.section	.rodata.str1.1
.LC8:
	.string	"thread create failed!"
.LC9:
	.string	"#####assert failed!######\r\n"
.LC0:
	.string	"work_queue"
	.section	.rodata
	.align 4
.LC7:
	.long	0
	.long	0
	.long	2048
	.long	0
	.long	.LC0
	.section	.text.unlikely.work_queue_init,"ax",@progbits
.LCOLDB10:
	.section	.text.work_queue_init,"ax",@progbits
.LHOTB10:
	.globl	work_queue_init
	.type	work_queue_init, @function
work_queue_init:
.LFB32:
	.loc 1 277 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 277 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL47:
	.loc 1 279 0
	cmpl	$1, g_wq_state
	je	.L37
	.loc 1 282 0
	call	HAL_SemaphoreCreate
.LVL48:
	movl	%eax, g_wq_sem
	.loc 1 288 0
	leal	-32(%ebp), %edi
	movl	$.LC7, %esi
	.loc 1 283 0
	call	HAL_MutexCreate
.LVL49:
	movl	%eax, g_wq_mutex
.LVL50:
	.loc 1 297 0
	leal	-36(%ebp), %eax
	subl	$12, %esp
	.loc 1 288 0
	movl	$5, %ecx
.LBB111:
.LBB112:
	.loc 2 48 0
	movl	$g_wq_list, g_wq_list
	.loc 2 49 0
	movl	$g_wq_list, g_wq_list+4
.LVL51:
.LBE112:
.LBE111:
	.loc 1 288 0
	rep movsl
	.loc 1 297 0
	pushl	%eax
	leal	-32(%ebp), %eax
.LBB113:
.LBB114:
	.loc 1 50 0
	movl	$1, g_wq_state
.LBE114:
.LBE113:
	.loc 1 296 0
	movl	$0, -36(%ebp)
	.loc 1 297 0
	pushl	%eax
	pushl	$0
	pushl	$worker_thread
	pushl	$g_wq_thread
	call	HAL_ThreadCreate
.LVL52:
	.loc 1 298 0
	addl	$32, %esp
	testl	%eax, %eax
	je	.L37
.LBB115:
.LBB116:
	pushl	$.LC8
	pushl	$2
	pushl	$298
	pushl	$__FUNCTION__.3575
	call	LITE_syslog
.LVL53:
.L44:
	addl	$16, %esp
	pushl	$.LC9
	pushl	$2
	pushl	$298
	pushl	$__FUNCTION__.3575
	call	LITE_syslog
.LVL54:
	movl	$1000, (%esp)
	call	HAL_SleepMs
.LVL55:
	jmp	.L44
.L37:
.LBE116:
.LBE115:
	.loc 1 301 0
	xorl	%eax, %eax
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L39
	call	__stack_chk_fail
.LVL56:
.L39:
	leal	-8(%ebp), %esp
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	work_queue_init, .-work_queue_init
	.section	.text.unlikely.work_queue_init
.LCOLDE10:
	.section	.text.work_queue_init
.LHOTE10:
	.section	.rodata.str1.1
.LC11:
	.string	"work %s block > %d ms!!!"
	.section	.text.unlikely.queue_work,"ax",@progbits
.LCOLDB12:
	.section	.text.queue_work,"ax",@progbits
.LHOTB12:
	.globl	queue_work
	.type	queue_work, @function
queue_work:
.LFB28:
	.loc 1 103 0
	.cfi_startproc
.LVL57:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LBB131:
.LBB132:
	.loc 1 48 0
	movl	g_wq_state, %edx
.LBE132:
.LBE131:
	.loc 1 103 0
	movl	8(%ebp), %ebx
	.loc 1 107 0
	testl	%edx, %edx
	je	.L46
	.loc 1 110 0
	incl	%edx
	jne	.L47
	.loc 1 111 0
	call	work_queue_init
.LVL58:
.L47:
.LBB133:
.LBB134:
	.loc 1 113 0
	cmpl	$0, g_wq_current
	je	.L49
	movl	g_wq_timestamp, %esi
	xorl	%edi, %edi
.LVL59:
.LBB135:
.LBB136:
	.loc 1 74 0
	call	HAL_UptimeMs
.LVL60:
.LBE136:
.LBE135:
	.loc 1 113 0
	subl	%esi, %eax
	sbbl	%edi, %edx
	cmpl	$0, %edx
	ja	.L60
	cmpl	$10000, %eax
	jbe	.L49
.L60:
	.loc 1 114 0
	movl	g_wq_current, %eax
	.loc 1 114 0
	movl	24(%eax), %eax
	pushl	%edx
	pushl	%edx
	pushl	$10000
	pushl	%eax
	pushl	$.LC11
	pushl	$2
	pushl	$115
	pushl	$__FUNCTION__.3530
	call	LITE_syslog
.LVL61:
	addl	$32, %esp
.L49:
	.loc 1 118 0
	subl	$12, %esp
	pushl	g_wq_mutex
	call	HAL_MutexLock
.LVL62:
	.loc 1 120 0
	movl	g_wq_list, %edx
.LVL63:
	addl	$16, %esp
	movl	%edx, %eax
.LVL64:
.L52:
	cmpl	$g_wq_list, %eax
	je	.L67
	.loc 1 121 0
	cmpl	%eax, %ebx
	je	.L58
	.loc 1 120 0
	movl	(%eax), %eax
.LVL65:
	jmp	.L52
.L67:
	.loc 1 104 0
	movl	$1, %esi
	jmp	.L53
.L58:
	.loc 1 122 0
	xorl	%esi, %esi
.L53:
.LVL66:
	.loc 1 128 0
	cmpl	g_wq_current, %ebx
	jne	.L55
	cmpl	$0, 16(%ebx)
	je	.L59
.L55:
	.loc 1 131 0
	testl	%esi, %esi
	je	.L56
.LVL67:
.LBB137:
.LBB138:
.LBB139:
	.loc 2 62 0
	movl	%ebx, 4(%edx)
	.loc 2 65 0
	movl	$1, %esi
	.loc 2 63 0
	movl	%edx, (%ebx)
	.loc 2 64 0
	movl	$g_wq_list, 4(%ebx)
	.loc 2 65 0
	movl	%ebx, g_wq_list
.LVL68:
	jmp	.L56
.LVL69:
.L59:
.LBE139:
.LBE138:
.LBE137:
	.loc 1 129 0
	xorl	%esi, %esi
.LVL70:
.L56:
	.loc 1 135 0
	subl	$12, %esp
	pushl	g_wq_mutex
	call	HAL_MutexUnlock
.LVL71:
	.loc 1 138 0
	popl	%eax
	pushl	g_wq_sem
	call	HAL_SemaphorePost
.LVL72:
	addl	$16, %esp
	movl	%esi, %eax
.L46:
.LBE134:
.LBE133:
	.loc 1 141 0
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
.LFE28:
	.size	queue_work, .-queue_work
	.section	.text.unlikely.queue_work
.LCOLDE12:
	.section	.text.queue_work
.LHOTE12:
	.section	.rodata.str1.1
.LC13:
	.string	"delay work %s time %d over range"
	.section	.text.unlikely.queue_delayed_work,"ax",@progbits
.LCOLDB14:
	.section	.text.queue_delayed_work,"ax",@progbits
.LHOTB14:
	.globl	queue_delayed_work
	.type	queue_delayed_work, @function
queue_delayed_work:
.LFB29:
	.loc 1 151 0
	.cfi_startproc
.LVL73:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 151 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	.loc 1 152 0
	testl	%ebx, %ebx
	jns	.L69
	.loc 1 152 0 is_stmt 0 discriminator 1
	pushl	%edx
	pushl	%edx
	pushl	%ebx
	pushl	24(%esi)
	pushl	$.LC13
	pushl	$2
	pushl	$154
	pushl	$__FUNCTION__.3538
	call	LITE_syslog
.LVL74:
	addl	$32, %esp
.L70:
	.loc 1 152 0 is_stmt 1 discriminator 3
	pushl	$.LC9
	pushl	$2
	pushl	$154
	pushl	$__FUNCTION__.3538
	call	LITE_syslog
.LVL75:
	.loc 1 152 0 discriminator 3
	movl	$1000, (%esp)
	call	HAL_SleepMs
.LVL76:
	addl	$16, %esp
	jmp	.L70
.L69:
	.loc 1 156 0
	subl	$12, %esp
	pushl	g_wq_mutex
.LBB140:
.LBB141:
	.loc 1 87 0
	orl	$-2147483648, %ebx
.LBE141:
.LBE140:
	.loc 1 156 0
	call	HAL_MutexLock
.LVL77:
.LBB143:
.LBB142:
	.loc 1 87 0
	movl	%ebx, 16(%esi)
.LBE142:
.LBE143:
	.loc 1 159 0
	popl	%eax
	pushl	g_wq_mutex
	call	HAL_MutexUnlock
.LVL78:
	.loc 1 161 0
	movl	%esi, 8(%ebp)
	addl	$16, %esp
	.loc 1 162 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 161 0
	jmp	queue_work
.LVL79:
	.cfi_endproc
.LFE29:
	.size	queue_delayed_work, .-queue_delayed_work
	.section	.text.unlikely.queue_delayed_work
.LCOLDE14:
	.section	.text.queue_delayed_work
.LHOTE14:
	.section	.text.unlikely.work_queue_stop,"ax",@progbits
.LCOLDB15:
	.section	.text.work_queue_stop,"ax",@progbits
.LHOTB15:
	.globl	work_queue_stop
	.type	work_queue_stop, @function
work_queue_stop:
.LFB33:
	.loc 1 304 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 307 0
	pushl	g_wq_sem
.LBB144:
.LBB145:
	.loc 1 51 0
	movl	$0, g_wq_state
.LBE145:
.LBE144:
	.loc 1 307 0
	call	HAL_SemaphorePost
.LVL80:
	.loc 1 308 0
	pushl	$.LC2
	pushl	$5
	pushl	$308
	pushl	$__FUNCTION__.3580
	call	LITE_syslog
.LVL81:
	.loc 1 311 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	work_queue_stop, .-work_queue_stop
	.section	.text.unlikely.work_queue_stop
.LCOLDE15:
	.section	.text.work_queue_stop
.LHOTE15:
	.section	.rodata.str1.1
.LC16:
	.string	"dump unfinished work in queue"
.LC17:
	.string	"\t\twork: %s"
.LC18:
	.string	"unfinished work in queue!!!"
	.section	.text.unlikely.work_queue_exit,"ax",@progbits
.LCOLDB19:
	.section	.text.work_queue_exit,"ax",@progbits
.LHOTB19:
	.globl	work_queue_exit
	.type	work_queue_exit, @function
work_queue_exit:
.LFB34:
	.loc 1 314 0
	.cfi_startproc
	.loc 1 315 0
	cmpl	$1, g_wq_state
	jne	.L93
	.loc 1 314 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 318 0
	call	work_queue_stop
.LVL82:
	.loc 1 320 0
	movl	g_wq_thread, %eax
	testl	%eax, %eax
	je	.L76
	.loc 1 321 0
	subl	$12, %esp
	pushl	%eax
	call	HAL_ThreadDetach
.LVL83:
	.loc 1 322 0
	movl	$0, g_wq_thread
	addl	$16, %esp
.L76:
	.loc 1 324 0
	pushl	$.LC2
	pushl	$5
	pushl	$324
	pushl	$__FUNCTION__.3584
	call	LITE_syslog
.LVL84:
	.loc 1 326 0
	popl	%eax
	pushl	g_wq_mutex
	call	HAL_MutexLock
.LVL85:
	.loc 1 327 0
	addl	$16, %esp
	cmpl	$g_wq_list, g_wq_list
	je	.L77
.LBB146:
	.loc 1 329 0
	pushl	$.LC16
	pushl	$2
	pushl	$329
	pushl	$__FUNCTION__.3584
	call	LITE_syslog
.LVL86:
	.loc 1 330 0
	movl	g_wq_list, %ebx
.LVL87:
	addl	$16, %esp
.L78:
	.loc 1 330 0 is_stmt 0 discriminator 1
	cmpl	$g_wq_list, %ebx
	je	.L95
	.loc 1 331 0 is_stmt 1 discriminator 3
	subl	$12, %esp
	pushl	24(%ebx)
	pushl	$.LC17
	pushl	$2
	pushl	$331
	pushl	$__FUNCTION__.3584
	call	LITE_syslog
.LVL88:
	.loc 1 330 0 discriminator 3
	movl	(%ebx), %ebx
.LVL89:
	addl	$32, %esp
	jmp	.L78
.L95:
	.loc 1 333 0 discriminator 1
	pushl	$.LC18
	pushl	$2
	pushl	$333
	pushl	$__FUNCTION__.3584
	call	LITE_syslog
.LVL90:
.L94:
	addl	$16, %esp
	pushl	$.LC9
	pushl	$2
	pushl	$333
	pushl	$__FUNCTION__.3584
	call	LITE_syslog
.LVL91:
	movl	$1000, (%esp)
	call	HAL_SleepMs
.LVL92:
	jmp	.L94
.LVL93:
.L77:
.LBE146:
	.loc 1 335 0
	subl	$12, %esp
	pushl	g_wq_mutex
	call	HAL_MutexUnlock
.LVL94:
	.loc 1 337 0
	movl	g_wq_sem, %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	.L81
	.loc 1 338 0
	subl	$12, %esp
	pushl	%eax
	call	HAL_SemaphoreDestroy
.LVL95:
	.loc 1 339 0
	movl	$0, g_wq_sem
	addl	$16, %esp
.L81:
	.loc 1 341 0
	movl	g_wq_mutex, %eax
	testl	%eax, %eax
	je	.L82
	.loc 1 342 0
	subl	$12, %esp
	pushl	%eax
	call	HAL_MutexDestroy
.LVL96:
	.loc 1 343 0
	movl	$0, g_wq_mutex
	addl	$16, %esp
.L82:
	.loc 1 347 0
	pushl	$.LC2
	pushl	$5
	pushl	$347
	pushl	$__FUNCTION__.3584
.LBB147:
.LBB148:
	.loc 1 52 0
	movl	$-1, g_wq_state
.LBE148:
.LBE147:
	.loc 1 347 0
	call	LITE_syslog
.LVL97:
	.loc 1 349 0
	addl	$16, %esp
	.loc 1 350 0
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
.L93:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE34:
	.size	work_queue_exit, .-work_queue_exit
	.section	.text.unlikely.work_queue_exit
.LCOLDE19:
	.section	.text.work_queue_exit
.LHOTE19:
	.section	.rodata.__FUNCTION__.3584,"a",@progbits
	.align 4
	.type	__FUNCTION__.3584, @object
	.size	__FUNCTION__.3584, 16
__FUNCTION__.3584:
	.string	"work_queue_exit"
	.section	.rodata.__FUNCTION__.3580,"a",@progbits
	.align 4
	.type	__FUNCTION__.3580, @object
	.size	__FUNCTION__.3580, 16
__FUNCTION__.3580:
	.string	"work_queue_stop"
	.section	.rodata.__FUNCTION__.3562,"a",@progbits
	.align 4
	.type	__FUNCTION__.3562, @object
	.size	__FUNCTION__.3562, 14
__FUNCTION__.3562:
	.string	"worker_thread"
	.section	.rodata.__FUNCTION__.3575,"a",@progbits
	.align 4
	.type	__FUNCTION__.3575, @object
	.size	__FUNCTION__.3575, 16
__FUNCTION__.3575:
	.string	"work_queue_init"
	.section	.rodata.__FUNCTION__.3549,"a",@progbits
	.align 4
	.type	__FUNCTION__.3549, @object
	.size	__FUNCTION__.3549, 12
__FUNCTION__.3549:
	.string	"cancel_work"
	.section	.rodata.__FUNCTION__.3538,"a",@progbits
	.align 4
	.type	__FUNCTION__.3538, @object
	.size	__FUNCTION__.3538, 19
__FUNCTION__.3538:
	.string	"queue_delayed_work"
	.section	.rodata.__FUNCTION__.3530,"a",@progbits
	.align 4
	.type	__FUNCTION__.3530, @object
	.size	__FUNCTION__.3530, 11
__FUNCTION__.3530:
	.string	"queue_work"
	.section	.bss.g_wq_current,"aw",@nobits
	.align 4
	.type	g_wq_current, @object
	.size	g_wq_current, 4
g_wq_current:
	.zero	4
	.section	.bss.g_wq_timestamp,"aw",@nobits
	.align 4
	.type	g_wq_timestamp, @object
	.size	g_wq_timestamp, 4
g_wq_timestamp:
	.zero	4
	.section	.bss.g_wq_mutex,"aw",@nobits
	.align 4
	.type	g_wq_mutex, @object
	.size	g_wq_mutex, 4
g_wq_mutex:
	.zero	4
	.section	.bss.g_wq_thread,"aw",@nobits
	.align 4
	.type	g_wq_thread, @object
	.size	g_wq_thread, 4
g_wq_thread:
	.zero	4
	.section	.bss.g_wq_sem,"aw",@nobits
	.align 4
	.type	g_wq_sem, @object
	.size	g_wq_sem, 4
g_wq_sem:
	.zero	4
	.section	.data.g_wq_state,"aw",@progbits
	.align 4
	.type	g_wq_state, @object
	.size	g_wq_state, 4
g_wq_state:
	.long	-1
	.section	.data.g_wq_list,"aw",@progbits
	.align 4
	.type	g_wq_list, @object
	.size	g_wq_list, 8
g_wq_list:
	.long	g_wq_list
	.long	g_wq_list
	.text
.Letext0:
	.section	.text.unlikely.worker_thread
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 6 "framework/protocol/linkkit/iotkit/base/utils//misc/work_queue.h"
	.file 7 "./framework/protocol/linkkit/iotkit/sdk-encap/iot_import.h"
	.file 8 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xbd0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF108
	.byte	0xc
	.long	.LASF109
	.long	.LASF110
	.long	.Ldebug_ranges0+0x58
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
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x30
	.long	0x48
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x3c
	.long	0x61
	.uleb128 0x3
	.long	.LASF13
	.byte	0x5
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF14
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xb8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x6
	.byte	0x4
	.long	0xc5
	.uleb128 0x7
	.long	0xb8
	.uleb128 0x8
	.long	.LASF111
	.byte	0x4
	.long	0x7a
	.byte	0x8
	.byte	0x22
	.long	0xff
	.uleb128 0x9
	.long	.LASF17
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.uleb128 0x9
	.long	.LASF19
	.byte	0x2
	.uleb128 0x9
	.long	.LASF20
	.byte	0x3
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF23
	.byte	0x2
	.byte	0x19
	.long	0x10a
	.uleb128 0xa
	.long	.LASF27
	.byte	0x8
	.byte	0x2
	.byte	0x1b
	.long	0x12f
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.byte	0x1c
	.long	0x12f
	.byte	0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x2
	.byte	0x1c
	.long	0x12f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x10a
	.uleb128 0x3
	.long	.LASF26
	.byte	0x6
	.byte	0x29
	.long	0x140
	.uleb128 0x6
	.byte	0x4
	.long	0x146
	.uleb128 0xc
	.long	0x151
	.uleb128 0xd
	.long	0x151
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x157
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1c
	.byte	0x6
	.byte	0x2b
	.long	0x1ac
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.byte	0x2c
	.long	0xff
	.byte	0
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.byte	0x2d
	.long	0x135
	.byte	0x8
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.byte	0x2e
	.long	0xb0
	.byte	0xc
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.byte	0x2f
	.long	0x81
	.byte	0x10
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.byte	0x30
	.long	0xb8
	.byte	0x14
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.byte	0x31
	.long	0xbf
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.long	.LASF35
	.byte	0x6
	.byte	0x32
	.long	0x157
	.uleb128 0xe
	.byte	0x4
	.long	0x73
	.byte	0x7
	.byte	0x39
	.long	0x1f4
	.uleb128 0xf
	.long	.LASF36
	.sleb128 -3
	.uleb128 0xf
	.long	.LASF37
	.sleb128 -2
	.uleb128 0xf
	.long	.LASF38
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF39
	.byte	0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x1
	.uleb128 0x9
	.long	.LASF41
	.byte	0x2
	.uleb128 0x9
	.long	.LASF42
	.byte	0x3
	.uleb128 0x9
	.long	.LASF43
	.byte	0x84
	.byte	0
	.uleb128 0x3
	.long	.LASF44
	.byte	0x7
	.byte	0x42
	.long	0x1b7
	.uleb128 0xa
	.long	.LASF45
	.byte	0x14
	.byte	0x7
	.byte	0x44
	.long	0x248
	.uleb128 0xb
	.long	.LASF46
	.byte	0x7
	.byte	0x45
	.long	0x1f4
	.byte	0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x7
	.byte	0x46
	.long	0xb0
	.byte	0x4
	.uleb128 0xb
	.long	.LASF48
	.byte	0x7
	.byte	0x47
	.long	0x97
	.byte	0x8
	.uleb128 0xb
	.long	.LASF49
	.byte	0x7
	.byte	0x48
	.long	0x73
	.byte	0xc
	.uleb128 0xb
	.long	.LASF34
	.byte	0x7
	.byte	0x49
	.long	0xb2
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF50
	.byte	0x7
	.byte	0x4a
	.long	0x1ff
	.uleb128 0x10
	.long	.LASF51
	.byte	0x2
	.byte	0x3a
	.byte	0x3
	.long	0x281
	.uleb128 0x11
	.string	"new"
	.byte	0x2
	.byte	0x3a
	.long	0x12f
	.uleb128 0x12
	.long	.LASF25
	.byte	0x2
	.byte	0x3b
	.long	0x12f
	.uleb128 0x12
	.long	.LASF24
	.byte	0x2
	.byte	0x3c
	.long	0x12f
	.byte	0
	.uleb128 0x10
	.long	.LASF52
	.byte	0x2
	.byte	0x66
	.byte	0x3
	.long	0x2a4
	.uleb128 0x12
	.long	.LASF25
	.byte	0x2
	.byte	0x66
	.long	0x12f
	.uleb128 0x12
	.long	.LASF24
	.byte	0x2
	.byte	0x66
	.long	0x12f
	.byte	0
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.byte	0x50
	.long	0x73
	.byte	0x3
	.long	0x2c0
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x50
	.long	0x151
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.long	0x2d8
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x55
	.long	0x151
	.byte	0
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.long	0x2f0
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x5a
	.long	0x151
	.byte	0
	.uleb128 0x13
	.long	.LASF57
	.byte	0x1
	.byte	0x48
	.long	0x8c
	.byte	0x3
	.long	0x317
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.byte	0x48
	.long	0x8c
	.uleb128 0x14
	.string	"now"
	.byte	0x1
	.byte	0x4a
	.long	0x8c
	.byte	0
	.uleb128 0x15
	.long	.LASF64
	.byte	0x1
	.byte	0x2f
	.long	0x73
	.byte	0x3
	.uleb128 0x16
	.long	.LASF73
	.byte	0x1
	.byte	0x32
	.byte	0x3
	.uleb128 0x10
	.long	.LASF59
	.byte	0x2
	.byte	0x2e
	.byte	0x3
	.long	0x343
	.uleb128 0x12
	.long	.LASF60
	.byte	0x2
	.byte	0x2e
	.long	0x12f
	.byte	0
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.value	0x114
	.long	0x73
	.byte	0x1
	.long	0x386
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.value	0x116
	.long	0x73
	.uleb128 0x19
	.long	.LASF61
	.byte	0x1
	.value	0x120
	.long	0x248
	.uleb128 0x19
	.long	.LASF62
	.byte	0x1
	.value	0x128
	.long	0x73
	.uleb128 0x1a
	.long	.LASF63
	.long	0x396
	.long	.LASF69
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	0x396
	.uleb128 0x1c
	.long	0xa9
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.long	0x386
	.uleb128 0x15
	.long	.LASF65
	.byte	0x1
	.byte	0x30
	.long	0x73
	.byte	0x3
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.byte	0x31
	.long	0x73
	.byte	0x3
	.uleb128 0x10
	.long	.LASF67
	.byte	0x2
	.byte	0x4c
	.byte	0x3
	.long	0x3d6
	.uleb128 0x11
	.string	"new"
	.byte	0x2
	.byte	0x4c
	.long	0x12f
	.uleb128 0x12
	.long	.LASF68
	.byte	0x2
	.byte	0x4c
	.long	0x12f
	.byte	0
	.uleb128 0x1d
	.long	.LASF70
	.byte	0x1
	.byte	0x66
	.long	0x73
	.byte	0x1
	.long	0x415
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x66
	.long	0x151
	.uleb128 0x1e
	.long	.LASF71
	.byte	0x1
	.byte	0x68
	.long	0x73
	.uleb128 0x1e
	.long	.LASF72
	.byte	0x1
	.byte	0x69
	.long	0x151
	.uleb128 0x1a
	.long	.LASF63
	.long	0x425
	.long	.LASF70
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	0x425
	.uleb128 0x1c
	.long	0xa9
	.byte	0xa
	.byte	0
	.uleb128 0x7
	.long	0x415
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.byte	0x33
	.byte	0x3
	.uleb128 0x13
	.long	.LASF75
	.byte	0x2
	.byte	0xc3
	.long	0x73
	.byte	0x3
	.long	0x44e
	.uleb128 0x12
	.long	.LASF68
	.byte	0x2
	.byte	0xc3
	.long	0x44e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x454
	.uleb128 0x7
	.long	0x10a
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.byte	0x34
	.byte	0x3
	.uleb128 0x10
	.long	.LASF77
	.byte	0x2
	.byte	0x77
	.byte	0x3
	.long	0x479
	.uleb128 0x12
	.long	.LASF29
	.byte	0x2
	.byte	0x77
	.long	0x12f
	.byte	0
	.uleb128 0x1f
	.long	.LASF112
	.byte	0x1
	.byte	0xcc
	.long	0xb0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fa
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0xcc
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF72
	.byte	0x1
	.byte	0xcf
	.long	0x151
	.long	.LLST0
	.uleb128 0x21
	.long	.LASF53
	.byte	0x1
	.byte	0xcf
	.long	0x151
	.long	.LLST1
	.uleb128 0x21
	.long	.LASF78
	.byte	0x1
	.byte	0xd0
	.long	0x8c
	.long	.LLST2
	.uleb128 0x1e
	.long	.LASF79
	.byte	0x1
	.byte	0xd0
	.long	0x8c
	.uleb128 0x21
	.long	.LASF80
	.byte	0x1
	.byte	0xd0
	.long	0x8c
	.long	.LLST3
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.byte	0xd1
	.long	0x73
	.long	.LLST4
	.uleb128 0x22
	.long	.LASF63
	.long	0x60a
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3562
	.uleb128 0x23
	.long	0x2f0
	.long	.LBB71
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xda
	.long	0x53a
	.uleb128 0x24
	.long	0x300
	.long	.LLST5
	.uleb128 0x25
	.long	.Ldebug_ranges0+0
	.uleb128 0x26
	.long	0x30b
	.long	.LLST6
	.uleb128 0x27
	.long	.LVL6
	.long	0xb3b
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x2d8
	.long	.LBB79
	.long	.LBE79-.LBB79
	.byte	0x1
	.byte	0xeb
	.long	0x557
	.uleb128 0x24
	.long	0x2e4
	.long	.LLST7
	.byte	0
	.uleb128 0x28
	.long	0x461
	.long	.LBB81
	.long	.LBE81-.LBB81
	.byte	0x1
	.byte	0xfd
	.long	0x596
	.uleb128 0x24
	.long	0x46d
	.long	.LLST8
	.uleb128 0x29
	.long	0x281
	.long	.LBB83
	.long	.LBE83-.LBB83
	.byte	0x2
	.byte	0x79
	.uleb128 0x24
	.long	0x298
	.long	.LLST9
	.uleb128 0x24
	.long	0x28d
	.long	.LLST10
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL1
	.long	0xb46
	.uleb128 0x27
	.long	.LVL3
	.long	0xb3b
	.uleb128 0x27
	.long	.LVL5
	.long	0xb51
	.uleb128 0x27
	.long	.LVL9
	.long	0xb5c
	.uleb128 0x27
	.long	.LVL19
	.long	0xb67
	.uleb128 0x27
	.long	.LVL20
	.long	0xb5c
	.uleb128 0x27
	.long	.LVL23
	.long	0xb3b
	.uleb128 0x27
	.long	.LVL24
	.long	0xb67
	.uleb128 0x27
	.long	.LVL28
	.long	0xb46
	.uleb128 0x27
	.long	.LVL30
	.long	0xb46
	.uleb128 0x27
	.long	.LVL31
	.long	0xb72
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	0x60a
	.uleb128 0x1c
	.long	0xa9
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.long	0x5fa
	.uleb128 0x2a
	.long	.LASF82
	.byte	0x1
	.byte	0xad
	.long	0x73
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ce
	.uleb128 0x2b
	.long	.LASF53
	.byte	0x1
	.byte	0xad
	.long	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF72
	.byte	0x1
	.byte	0xaf
	.long	0x151
	.long	.LLST11
	.uleb128 0x21
	.long	.LASF81
	.byte	0x1
	.byte	0xb0
	.long	0x73
	.long	.LLST12
	.uleb128 0x2c
	.long	.LASF113
	.byte	0x1
	.byte	0xb5
	.uleb128 0x22
	.long	.LASF63
	.long	0x6de
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3549
	.uleb128 0x23
	.long	0x461
	.long	.LBB91
	.long	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0xba
	.long	0x6a9
	.uleb128 0x24
	.long	0x46d
	.long	.LLST13
	.uleb128 0x29
	.long	0x281
	.long	.LBB93
	.long	.LBE93-.LBB93
	.byte	0x2
	.byte	0x79
	.uleb128 0x24
	.long	0x298
	.long	.LLST14
	.uleb128 0x24
	.long	0x28d
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL34
	.long	0xb5c
	.uleb128 0x27
	.long	.LVL43
	.long	0xb67
	.uleb128 0x27
	.long	.LVL44
	.long	0xb46
	.uleb128 0x27
	.long	.LVL45
	.long	0xb7d
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	0x6de
	.uleb128 0x1c
	.long	0xa9
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.long	0x6ce
	.uleb128 0x2d
	.long	0x343
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b0
	.uleb128 0x26
	.long	0x354
	.long	.LLST16
	.uleb128 0x2e
	.long	0x360
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2e
	.long	0x36c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2e
	.long	0x378
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3575
	.uleb128 0x2f
	.long	0x32b
	.long	.LBB111
	.long	.LBE111-.LBB111
	.byte	0x1
	.value	0x11d
	.long	0x738
	.uleb128 0x24
	.long	0x337
	.long	.LLST17
	.byte	0
	.uleb128 0x30
	.long	0x323
	.long	.LBB113
	.long	.LBE113-.LBB113
	.byte	0x1
	.value	0x11e
	.uleb128 0x31
	.long	.LBB116
	.long	.LBE116-.LBB116
	.long	0x78b
	.uleb128 0x32
	.long	0x354
	.uleb128 0x32
	.long	0x360
	.uleb128 0x32
	.long	0x36c
	.uleb128 0x2e
	.long	0x378
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3575
	.uleb128 0x27
	.long	.LVL53
	.long	0xb46
	.uleb128 0x27
	.long	.LVL54
	.long	0xb46
	.uleb128 0x27
	.long	.LVL55
	.long	0xb7d
	.byte	0
	.uleb128 0x27
	.long	.LVL48
	.long	0xb88
	.uleb128 0x27
	.long	.LVL49
	.long	0xb93
	.uleb128 0x27
	.long	.LVL52
	.long	0xb9e
	.uleb128 0x27
	.long	.LVL56
	.long	0xba9
	.byte	0
	.uleb128 0x2d
	.long	0x3d6
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e9
	.uleb128 0x33
	.long	0x3e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	0x3f1
	.byte	0x1
	.uleb128 0x32
	.long	0x3fc
	.uleb128 0x2e
	.long	0x407
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3530
	.uleb128 0x35
	.long	0x39b
	.long	.LBB131
	.long	.LBE131-.LBB131
	.byte	0x1
	.byte	0x6b
	.uleb128 0x31
	.long	.LBB133
	.long	.LBE133-.LBB133
	.long	0x8df
	.uleb128 0x24
	.long	0x3e6
	.long	.LLST18
	.uleb128 0x36
	.long	.LBB134
	.long	.LBE134-.LBB134
	.uleb128 0x26
	.long	0x3f1
	.long	.LLST19
	.uleb128 0x26
	.long	0x3fc
	.long	.LLST20
	.uleb128 0x2e
	.long	0x407
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3530
	.uleb128 0x28
	.long	0x2f0
	.long	.LBB135
	.long	.LBE135-.LBB135
	.byte	0x1
	.byte	0x71
	.long	0x868
	.uleb128 0x24
	.long	0x300
	.long	.LLST21
	.uleb128 0x36
	.long	.LBB136
	.long	.LBE136-.LBB136
	.uleb128 0x2e
	.long	0x30b
	.uleb128 0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x27
	.long	.LVL60
	.long	0xb3b
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	0x3b3
	.long	.LBB137
	.long	.LBE137-.LBB137
	.byte	0x1
	.byte	0x84
	.long	0x8b9
	.uleb128 0x24
	.long	0x3ca
	.long	.LLST22
	.uleb128 0x24
	.long	0x3bf
	.long	.LLST23
	.uleb128 0x29
	.long	0x253
	.long	.LBB138
	.long	.LBE138-.LBB138
	.byte	0x2
	.byte	0x4e
	.uleb128 0x24
	.long	0x275
	.long	.LLST24
	.uleb128 0x24
	.long	0x26a
	.long	.LLST25
	.uleb128 0x24
	.long	0x25f
	.long	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL61
	.long	0xb46
	.uleb128 0x27
	.long	.LVL62
	.long	0xb5c
	.uleb128 0x27
	.long	.LVL71
	.long	0xb67
	.uleb128 0x27
	.long	.LVL72
	.long	0xbb2
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL58
	.long	0x343
	.byte	0
	.uleb128 0x2a
	.long	.LASF83
	.byte	0x1
	.byte	0x96
	.long	0x73
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x981
	.uleb128 0x2b
	.long	.LASF84
	.byte	0x1
	.byte	0x96
	.long	0x151
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF85
	.byte	0x1
	.byte	0x96
	.long	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF63
	.long	0x991
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3538
	.uleb128 0x23
	.long	0x2c0
	.long	.LBB140
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x9e
	.long	0x94a
	.uleb128 0x24
	.long	0x2cc
	.long	.LLST27
	.byte	0
	.uleb128 0x27
	.long	.LVL74
	.long	0xb46
	.uleb128 0x27
	.long	.LVL75
	.long	0xb46
	.uleb128 0x27
	.long	.LVL76
	.long	0xb7d
	.uleb128 0x27
	.long	.LVL77
	.long	0xb5c
	.uleb128 0x27
	.long	.LVL78
	.long	0xb67
	.uleb128 0x37
	.long	.LVL79
	.long	0x3d6
	.byte	0
	.uleb128 0x1b
	.long	0xc5
	.long	0x991
	.uleb128 0x1c
	.long	0xa9
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.long	0x981
	.uleb128 0x38
	.long	.LASF86
	.byte	0x1
	.value	0x12f
	.long	0x73
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e2
	.uleb128 0x22
	.long	.LASF63
	.long	0x9e2
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3580
	.uleb128 0x30
	.long	0x42a
	.long	.LBB144
	.long	.LBE144-.LBB144
	.byte	0x1
	.value	0x131
	.uleb128 0x27
	.long	.LVL80
	.long	0xbb2
	.uleb128 0x27
	.long	.LVL81
	.long	0xb46
	.byte	0
	.uleb128 0x7
	.long	0x386
	.uleb128 0x38
	.long	.LASF87
	.byte	0x1
	.value	0x139
	.long	0x73
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xab4
	.uleb128 0x22
	.long	.LASF63
	.long	0xab4
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3584
	.uleb128 0x31
	.long	.LBB146
	.long	.LBE146-.LBB146
	.long	0xa5b
	.uleb128 0x39
	.long	.LASF72
	.byte	0x1
	.value	0x148
	.long	0x151
	.long	.LLST28
	.uleb128 0x27
	.long	.LVL86
	.long	0xb46
	.uleb128 0x27
	.long	.LVL88
	.long	0xb46
	.uleb128 0x27
	.long	.LVL90
	.long	0xb46
	.uleb128 0x27
	.long	.LVL91
	.long	0xb46
	.uleb128 0x27
	.long	.LVL92
	.long	0xb7d
	.byte	0
	.uleb128 0x30
	.long	0x459
	.long	.LBB147
	.long	.LBE147-.LBB147
	.byte	0x1
	.value	0x15a
	.uleb128 0x27
	.long	.LVL82
	.long	0x996
	.uleb128 0x27
	.long	.LVL83
	.long	0xb72
	.uleb128 0x27
	.long	.LVL84
	.long	0xb46
	.uleb128 0x27
	.long	.LVL85
	.long	0xb5c
	.uleb128 0x27
	.long	.LVL94
	.long	0xb67
	.uleb128 0x27
	.long	.LVL95
	.long	0xbbd
	.uleb128 0x27
	.long	.LVL96
	.long	0xbc8
	.uleb128 0x27
	.long	.LVL97
	.long	0xb46
	.byte	0
	.uleb128 0x7
	.long	0x386
	.uleb128 0x3a
	.long	.LASF88
	.byte	0x1
	.byte	0x20
	.long	0x10a
	.uleb128 0x5
	.byte	0x3
	.long	g_wq_list
	.uleb128 0x3a
	.long	.LASF89
	.byte	0x1
	.byte	0x28
	.long	0x73
	.uleb128 0x5
	.byte	0x3
	.long	g_wq_state
	.uleb128 0x3a
	.long	.LASF90
	.byte	0x1
	.byte	0x29
	.long	0xb0
	.uleb128 0x5
	.byte	0x3
	.long	g_wq_sem
	.uleb128 0x3a
	.long	.LASF91
	.byte	0x1
	.byte	0x2a
	.long	0xb0
	.uleb128 0x5
	.byte	0x3
	.long	g_wq_thread
	.uleb128 0x3a
	.long	.LASF92
	.byte	0x1
	.byte	0x2b
	.long	0xb0
	.uleb128 0x5
	.byte	0x3
	.long	g_wq_mutex
	.uleb128 0x3a
	.long	.LASF93
	.byte	0x1
	.byte	0x2c
	.long	0x7a
	.uleb128 0x5
	.byte	0x3
	.long	g_wq_timestamp
	.uleb128 0x3a
	.long	.LASF94
	.byte	0x1
	.byte	0x2d
	.long	0xb30
	.uleb128 0x5
	.byte	0x3
	.long	g_wq_current
	.uleb128 0x6
	.byte	0x4
	.long	0xb36
	.uleb128 0x3b
	.long	0x157
	.uleb128 0x3c
	.long	.LASF95
	.long	.LASF95
	.byte	0x7
	.byte	0xdb
	.uleb128 0x3c
	.long	.LASF96
	.long	.LASF96
	.byte	0x8
	.byte	0x34
	.uleb128 0x3c
	.long	.LASF97
	.long	.LASF97
	.byte	0x7
	.byte	0x99
	.uleb128 0x3c
	.long	.LASF98
	.long	.LASF98
	.byte	0x7
	.byte	0xbb
	.uleb128 0x3c
	.long	.LASF99
	.long	.LASF99
	.byte	0x7
	.byte	0xc3
	.uleb128 0x3c
	.long	.LASF100
	.long	.LASF100
	.byte	0x7
	.byte	0x6c
	.uleb128 0x3c
	.long	.LASF101
	.long	.LASF101
	.byte	0x7
	.byte	0xee
	.uleb128 0x3c
	.long	.LASF102
	.long	.LASF102
	.byte	0x7
	.byte	0x7f
	.uleb128 0x3c
	.long	.LASF103
	.long	.LASF103
	.byte	0x7
	.byte	0xab
	.uleb128 0x3c
	.long	.LASF104
	.long	.LASF104
	.byte	0x7
	.byte	0x5d
	.uleb128 0x3d
	.long	.LASF114
	.long	.LASF114
	.uleb128 0x3c
	.long	.LASF105
	.long	.LASF105
	.byte	0x7
	.byte	0xa3
	.uleb128 0x3c
	.long	.LASF106
	.long	.LASF106
	.byte	0x7
	.byte	0x89
	.uleb128 0x3c
	.long	.LASF107
	.long	.LASF107
	.byte	0x7
	.byte	0xb3
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.long	.LVL10
	.long	.LVL29
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LVL11
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL29
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL10
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0xffffffffffffffff
	.long	.LVL8
	.long	.LVL11
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0xffffffffffffffff
	.long	.LVL26
	.long	.LVL27
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL11
	.value	0x3
	.byte	0x8
	.byte	0x7f
	.byte	0x9f
	.long	.LVL11
	.long	.LVL16
	.value	0x1
	.byte	0x51
	.long	.LVL17
	.long	.LVL19-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL8
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL7
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST8:
	.long	.LVL20
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST9:
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST10:
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL35
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL42
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL32
	.long	.LVL33
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL33
	.long	.LVL38
	.value	0x1
	.byte	0x56
	.long	.LVL40
	.long	.LVL46
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST13:
	.long	.LVL36
	.long	.LVL40
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST14:
	.long	.LVL37
	.long	.LVL39
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST15:
	.long	.LVL37
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL47
	.long	.LVL52
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL50
	.long	.LVL51
	.value	0x6
	.byte	0x3
	.long	g_wq_list
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL58
	.long	.LVL72
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST19:
	.long	.LVL66
	.long	.LVL67
	.value	0x1
	.byte	0x56
	.long	.LVL67
	.long	.LVL69
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST20:
	.long	.LVL63
	.long	.LVL64
	.value	0x1
	.byte	0x52
	.long	.LVL64
	.long	.LVL71-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST21:
	.long	.LVL59
	.long	.LVL60
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST22:
	.long	.LVL67
	.long	.LVL69
	.value	0x6
	.byte	0x3
	.long	g_wq_list
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL67
	.long	.LVL69
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST24:
	.long	.LVL67
	.long	.LVL68
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST25:
	.long	.LVL67
	.long	.LVL68
	.value	0x6
	.byte	0x3
	.long	g_wq_list
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL67
	.long	.LVL68
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL77
	.long	.LVL79-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST28:
	.long	.LVL87
	.long	.LVL93
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB71
	.long	.LBE71
	.long	.LBB76
	.long	.LBE76
	.long	.LBB77
	.long	.LBE77
	.long	.LBB78
	.long	.LBE78
	.long	0
	.long	0
	.long	.LBB91
	.long	.LBE91
	.long	.LBB96
	.long	.LBE96
	.long	0
	.long	0
	.long	.LBB140
	.long	.LBE140
	.long	.LBB143
	.long	.LBE143
	.long	0
	.long	0
	.long	.LFB31
	.long	.LFE31
	.long	.LFB30
	.long	.LFE30
	.long	.LFB32
	.long	.LFE32
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"os_thread_priority_normal"
.LASF65:
	.string	"wq_is_stopping"
.LASF109:
	.string	"src/work_queue.c"
.LASF102:
	.string	"HAL_SemaphoreCreate"
.LASF23:
	.string	"list_head_t"
.LASF53:
	.string	"work"
.LASF87:
	.string	"work_queue_exit"
.LASF85:
	.string	"delay_ms"
.LASF18:
	.string	"LOG_CRIT_LEVEL"
.LASF61:
	.string	"threadParams"
.LASF27:
	.string	"list_head"
.LASF76:
	.string	"wq_set_stopped"
.LASF46:
	.string	"priority"
.LASF21:
	.string	"LOG_INFO_LEVEL"
.LASF12:
	.string	"uint64_t"
.LASF77:
	.string	"list_del"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"size_t"
.LASF15:
	.string	"sizetype"
.LASF32:
	.string	"time_left"
.LASF101:
	.string	"HAL_SleepMs"
.LASF92:
	.string	"g_wq_mutex"
.LASF67:
	.string	"list_add"
.LASF93:
	.string	"g_wq_timestamp"
.LASF56:
	.string	"wq_is_new_dwork"
.LASF7:
	.string	"__uint32_t"
.LASF97:
	.string	"HAL_SemaphoreWait"
.LASF113:
	.string	"retry"
.LASF94:
	.string	"g_wq_current"
.LASF59:
	.string	"INIT_LIST_HEAD"
.LASF68:
	.string	"head"
.LASF69:
	.string	"work_queue_init"
.LASF99:
	.string	"HAL_MutexUnlock"
.LASF38:
	.string	"os_thread_priority_belowNormal"
.LASF73:
	.string	"wq_set_running"
.LASF22:
	.string	"LOG_DEBUG_LEVEL"
.LASF51:
	.string	"__list_add"
.LASF112:
	.string	"worker_thread"
.LASF20:
	.string	"LOG_WARNING_LEVEL"
.LASF6:
	.string	"long long int"
.LASF111:
	.string	"_LOGLEVEL"
.LASF58:
	.string	"start_timestamp"
.LASF75:
	.string	"list_empty"
.LASF52:
	.string	"__list_del"
.LASF45:
	.string	"_hal_os_thread"
.LASF89:
	.string	"g_wq_state"
.LASF42:
	.string	"os_thread_priority_realtime"
.LASF63:
	.string	"__FUNCTION__"
.LASF105:
	.string	"HAL_SemaphorePost"
.LASF57:
	.string	"time_elapsed_ms_since"
.LASF34:
	.string	"name"
.LASF29:
	.string	"entry"
.LASF14:
	.string	"long double"
.LASF66:
	.string	"wq_is_stopped"
.LASF91:
	.string	"g_wq_thread"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"os_thread_priority_high"
.LASF30:
	.string	"func"
.LASF86:
	.string	"work_queue_stop"
.LASF44:
	.string	"hal_os_thread_priority_t"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF88:
	.string	"g_wq_list"
.LASF37:
	.string	"os_thread_priority_low"
.LASF62:
	.string	"stack_used"
.LASF81:
	.string	"cancel"
.LASF104:
	.string	"HAL_ThreadCreate"
.LASF78:
	.string	"start"
.LASF3:
	.string	"short unsigned int"
.LASF106:
	.string	"HAL_SemaphoreDestroy"
.LASF90:
	.string	"g_wq_sem"
.LASF16:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF98:
	.string	"HAL_MutexLock"
.LASF60:
	.string	"list"
.LASF50:
	.string	"hal_os_thread_param_t"
.LASF79:
	.string	"time_elpased"
.LASF8:
	.string	"__uint64_t"
.LASF31:
	.string	"data"
.LASF82:
	.string	"cancel_work"
.LASF83:
	.string	"queue_delayed_work"
.LASF43:
	.string	"os_thread_priority_error"
.LASF5:
	.string	"long unsigned int"
.LASF19:
	.string	"LOG_ERR_LEVEL"
.LASF64:
	.string	"wq_is_running"
.LASF55:
	.string	"wq_clear_new_dwork"
.LASF36:
	.string	"os_thread_priority_idle"
.LASF80:
	.string	"min_time_left"
.LASF74:
	.string	"wq_set_stopping"
.LASF35:
	.string	"work_struct_t"
.LASF108:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF48:
	.string	"stack_size"
.LASF26:
	.string	"work_func_t"
.LASF49:
	.string	"detach_state"
.LASF72:
	.string	"item"
.LASF103:
	.string	"HAL_MutexCreate"
.LASF54:
	.string	"wq_set_new_dwork"
.LASF40:
	.string	"os_thread_priority_aboveNormal"
.LASF96:
	.string	"LITE_syslog"
.LASF100:
	.string	"HAL_ThreadDetach"
.LASF110:
	.string	"/home/stone/Documents/pca"
.LASF71:
	.string	"newitem"
.LASF114:
	.string	"__stack_chk_fail"
.LASF28:
	.string	"work_struct"
.LASF25:
	.string	"prev"
.LASF47:
	.string	"stack_addr"
.LASF107:
	.string	"HAL_MutexDestroy"
.LASF17:
	.string	"LOG_EMERG_LEVEL"
.LASF84:
	.string	"dwork"
.LASF33:
	.string	"prio"
.LASF70:
	.string	"queue_work"
.LASF24:
	.string	"next"
.LASF95:
	.string	"HAL_UptimeMs"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
