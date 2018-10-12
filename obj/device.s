	.file	"device.c"
	.text
.Ltext0:
	.section	.text.unlikely.event_poll,"ax",@progbits
.LCOLDB0:
	.section	.text.event_poll,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.event_poll
.Ltext_cold0:
	.section	.text.event_poll
	.type	event_poll, @function
event_poll:
.LFB28:
	.file 1 "kernel/vfs/device.c"
	.loc 1 159 0
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
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 160 0
	movl	8(%ebp), %eax
	.loc 1 159 0
	movl	12(%ebp), %ecx
	movl	20(%ebp), %esi
	movl	24(%ebp), %edi
	.loc 1 160 0
	movl	4(%eax), %ebx
	.loc 1 162 0
	pushl	$-1
	.loc 1 159 0
	movl	%ecx, -28(%ebp)
	.loc 1 162 0
	pushl	%ebx
	call	aos_mutex_lock
.LVL1:
	.loc 1 163 0
	movl	-28(%ebp), %ecx
	addl	$16, %esp
	testb	%cl, %cl
	jne	.L2
	.loc 1 164 0
	movl	$0, 4(%ebx)
	.loc 1 165 0
	movl	$0, 12(%ebx)
	.loc 1 166 0
	jmp	.L3
.L2:
	.loc 1 173 0
	cmpl	$0, 16(%ebx)
	.loc 1 169 0
	movl	16(%ebp), %eax
	.loc 1 170 0
	movl	%esi, 8(%ebx)
	.loc 1 171 0
	movl	%edi, 12(%ebx)
	.loc 1 169 0
	movl	%eax, 4(%ebx)
	.loc 1 173 0
	je	.L3
	.loc 1 174 0
	orw	$1, 6(%esi)
	.loc 1 175 0
	pushl	%eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	call	*16(%ebp)
.LVL2:
	addl	$16, %esp
.L3:
	.loc 1 178 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_mutex_unlock
.LVL3:
	.loc 1 181 0
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
.LFE28:
	.size	event_poll, .-event_poll
	.section	.text.unlikely.event_poll
.LCOLDE0:
	.section	.text.event_poll
.LHOTE0:
	.section	.text.unlikely._event_write,"ax",@progbits
.LCOLDB1:
	.section	.text._event_write,"ax",@progbits
.LHOTB1:
	.type	_event_write, @function
_event_write:
.LFB24:
	.loc 1 68 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 69 0
	movl	4(%eax), %ebx
.LVL5:
	.loc 1 68 0
	movl	8(%ebp), %esi
	.loc 1 70 0
	pushl	$-1
	.loc 1 68 0
	movl	%edx, -32(%ebp)
	movl	%ecx, -28(%ebp)
	.loc 1 70 0
	pushl	%ebx
	.loc 1 68 0
	movl	%esi, -36(%ebp)
	.loc 1 70 0
	call	aos_mutex_lock
.LVL6:
	.loc 1 76 0
	movl	28(%ebx), %eax
	addl	$16, %esp
	.loc 1 71 0
	movl	-28(%ebp), %ecx
.LVL7:
	.loc 1 74 0
	movl	36(%ebx), %edx
.LVL8:
	.loc 1 76 0
	testl	%eax, %eax
	jle	.L7
	.loc 1 76 0 is_stmt 0 discriminator 1
	cmpl	8(%edx), %ecx
	jne	.L7
.LVL9:
.LBB38:
.LBB39:
	.file 2 "./include/aos/list.h"
	.loc 2 68 0 is_stmt 1
	movl	(%edx), %edi
.LVL10:
	.loc 2 69 0
	movl	4(%edx), %esi
.LVL11:
.LBE39:
.LBE38:
	.loc 1 78 0
	decl	%eax
.LBB41:
.LBB40:
	.loc 2 71 0
	movl	%esi, 4(%edi)
	.loc 2 72 0
	movl	%edi, (%esi)
.LVL12:
.LBE40:
.LBE41:
	.loc 1 78 0
	movl	%eax, 28(%ebx)
	jmp	.L8
.L7:
	.loc 1 80 0
	leal	12(%ecx), %eax
	subl	$12, %esp
	movl	%ecx, -40(%ebp)
	pushl	%eax
	call	aos_malloc
.LVL13:
	.loc 1 83 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 80 0
	movl	%eax, %edx
.LVL14:
	.loc 1 83 0
	movl	-40(%ebp), %ecx
	je	.L12
.LVL15:
.L8:
	.loc 1 88 0
	incl	16(%ebx)
	.loc 1 92 0
	cmpb	$0, -36(%ebp)
	.loc 1 91 0
	leal	12(%edx), %eax
	.loc 1 90 0
	movl	%ecx, 8(%edx)
	.loc 1 91 0
	movl	-32(%ebp), %esi
	movl	%eax, %edi
	rep movsb
	leal	20(%ebx), %ecx
	.loc 1 92 0
	je	.L10
.LVL16:
.LBB42:
.LBB43:
	.loc 2 58 0
	movl	24(%ebx), %eax
.LVL17:
.LBE43:
.LBE42:
	.loc 1 93 0
	movl	%ecx, (%edx)
.LBB47:
.LBB46:
.LBB44:
.LBB45:
	.loc 2 38 0
	movl	%eax, 4(%edx)
	.loc 2 41 0
	movl	%edx, 24(%ebx)
	.loc 2 42 0
	movl	%edx, (%eax)
.LVL18:
	jmp	.L11
.LVL19:
.L10:
.LBE45:
.LBE44:
.LBE46:
.LBE47:
.LBB48:
.LBB49:
	.loc 2 63 0
	movl	20(%ebx), %eax
.LVL20:
.LBE49:
.LBE48:
	.loc 1 95 0
	movl	%ecx, 4(%edx)
.LBB53:
.LBB52:
.LBB50:
.LBB51:
	.loc 2 39 0
	movl	%eax, (%edx)
	.loc 2 41 0
	movl	%edx, 4(%eax)
	.loc 2 42 0
	movl	%edx, 20(%ebx)
.LVL21:
.L11:
.LBE51:
.LBE50:
.LBE52:
.LBE53:
	.loc 1 98 0
	movl	4(%ebx), %edx
.LVL22:
	testl	%edx, %edx
	je	.L9
	.loc 1 99 0
	movl	8(%ebx), %eax
	orw	$1, 6(%eax)
	.loc 1 100 0
	pushl	%ecx
	pushl	%ecx
	pushl	12(%ebx)
	pushl	%eax
	call	*%edx
.LVL23:
	addl	$16, %esp
	jmp	.L9
.LVL24:
.L12:
	.loc 1 84 0
	movl	$-1, -28(%ebp)
.LVL25:
.L9:
	.loc 1 103 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_mutex_unlock
.LVL26:
	.loc 1 105 0
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL27:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	_event_write, .-_event_write
	.section	.text.unlikely._event_write
.LCOLDE1:
	.section	.text._event_write
.LHOTE1:
	.section	.text.unlikely.event_ioctl,"ax",@progbits
.LCOLDB2:
	.section	.text.event_ioctl,"ax",@progbits
.LHOTB2:
	.type	event_ioctl, @function
event_ioctl:
.LFB26:
	.loc 1 113 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 113 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %eax
	movl	16(%ebp), %edx
	.loc 1 114 0
	movl	%ebx, %ecx
	.loc 1 117 0
	andl	$15, %ebx
	.loc 1 114 0
	sarl	$4, %ecx
.LVL29:
	.loc 1 117 0
	cmpl	$1, %ebx
	je	.L19
	cmpl	$2, %ebx
	jne	.L24
	.loc 1 121 0
	movl	$1, 8(%ebp)
.LVL30:
	jmp	.L23
.L19:
	.loc 1 119 0
	movl	$0, 8(%ebp)
.L23:
	.loc 1 125 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 121 0
	jmp	_event_write
.LVL31:
.L24:
	.cfi_restore_state
	.loc 1 125 0
	orl	$-1, %eax
.LVL32:
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	event_ioctl, .-event_ioctl
	.section	.text.unlikely.event_ioctl
.LCOLDE2:
	.section	.text.event_ioctl
.LHOTE2:
	.section	.text.unlikely.event_write,"ax",@progbits
.LCOLDB3:
	.section	.text.event_write,"ax",@progbits
.LHOTB3:
	.type	event_write, @function
event_write:
.LFB25:
	.loc 1 108 0
	.cfi_startproc
.LVL33:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 108 0
	movl	8(%ebp), %eax
	.loc 1 109 0
	movl	16(%ebp), %ecx
	movl	$0, 8(%ebp)
.LVL34:
	movl	12(%ebp), %edx
	.loc 1 110 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 109 0
	jmp	_event_write
.LVL35:
	.cfi_endproc
.LFE25:
	.size	event_write, .-event_write
	.section	.text.unlikely.event_write
.LCOLDE3:
	.section	.text.event_write
.LHOTE3:
	.section	.text.unlikely.event_open,"ax",@progbits
.LCOLDB4:
	.section	.text.event_open,"ax",@progbits
.LHOTB4:
	.type	event_open, @function
event_open:
.LFB22:
	.loc 1 35 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 36 0
	subl	$12, %esp
	pushl	$40
	call	aos_malloc
.LVL37:
	movl	%eax, %ebx
.LVL38:
	.loc 1 37 0
	movl	$10, %ecx
	xorl	%eax, %eax
.LVL39:
	movl	%ebx, %edi
	rep stosl
	.loc 1 38 0
	movl	%ebx, (%esp)
	call	aos_mutex_new
.LVL40:
	.loc 1 39 0
	leal	20(%ebx), %eax
.LVL41:
.LBB54:
.LBB55:
	.loc 2 77 0
	movl	%eax, 20(%ebx)
	movl	%eax, 24(%ebx)
.LVL42:
.LBE55:
.LBE54:
	.loc 1 40 0
	leal	32(%ebx), %eax
.LVL43:
.LBB56:
.LBB57:
	.loc 2 77 0
	movl	%eax, 32(%ebx)
	movl	%eax, 36(%ebx)
.LVL44:
.LBE57:
.LBE56:
	.loc 1 41 0
	movl	12(%ebp), %eax
	movl	%ebx, 4(%eax)
	.loc 1 43 0
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
.LVL45:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	event_open, .-event_open
	.section	.text.unlikely.event_open
.LCOLDE4:
	.section	.text.event_open
.LHOTE4:
	.section	.text.unlikely.event_close,"ax",@progbits
.LCOLDB5:
	.section	.text.event_close,"ax",@progbits
.LHOTB5:
	.type	event_close, @function
event_close:
.LFB23:
	.loc 1 46 0
	.cfi_startproc
.LVL46:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 47 0
	movl	8(%ebp), %eax
	.loc 1 48 0
	subl	$12, %esp
	.loc 1 47 0
	movl	4(%eax), %ebx
.LVL47:
	.loc 1 48 0
	pushl	%ebx
	.loc 1 50 0
	leal	20(%ebx), %esi
	.loc 1 48 0
	call	aos_mutex_free
.LVL48:
	.loc 1 50 0
	addl	$16, %esp
.L30:
.LVL49:
.LBB68:
.LBB69:
	.loc 2 88 0
	movl	24(%ebx), %eax
.LVL50:
.LBE69:
.LBE68:
	.loc 1 50 0
	cmpl	%esi, %eax
	je	.L35
.LVL51:
.LBB70:
.LBB71:
.LBB72:
	.loc 2 68 0
	movl	(%eax), %ecx
.LVL52:
	.loc 2 69 0
	movl	4(%eax), %edx
.LVL53:
.LBE72:
.LBE71:
	.loc 1 53 0
	subl	$12, %esp
.LBB74:
.LBB73:
	.loc 2 71 0
	movl	%edx, 4(%ecx)
	.loc 2 72 0
	movl	%ecx, (%edx)
.LVL54:
.LBE73:
.LBE74:
	.loc 1 53 0
	pushl	%eax
	call	aos_free
.LVL55:
	addl	$16, %esp
	jmp	.L30
.L35:
.LBE70:
	.loc 1 56 0
	leal	32(%ebx), %esi
.L32:
.LVL56:
.LBB75:
.LBB76:
	.loc 2 88 0
	movl	36(%ebx), %eax
.LVL57:
.LBE76:
.LBE75:
	.loc 1 56 0
	cmpl	%esi, %eax
	je	.L36
.LVL58:
.LBB77:
.LBB78:
.LBB79:
	.loc 2 68 0
	movl	(%eax), %ecx
.LVL59:
	.loc 2 69 0
	movl	4(%eax), %edx
.LVL60:
.LBE79:
.LBE78:
	.loc 1 59 0
	subl	$12, %esp
.LBB81:
.LBB80:
	.loc 2 71 0
	movl	%edx, 4(%ecx)
	.loc 2 72 0
	movl	%ecx, (%edx)
.LVL61:
.LBE80:
.LBE81:
	.loc 1 59 0
	pushl	%eax
	call	aos_free
.LVL62:
	addl	$16, %esp
	jmp	.L32
.L36:
.LBE77:
	.loc 1 62 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_free
.LVL63:
	.loc 1 65 0
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
.LVL64:
	popl	%esi
	.cfi_restore 6
.LVL65:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	event_close, .-event_close
	.section	.text.unlikely.event_close
.LCOLDE5:
	.section	.text.event_close
.LHOTE5:
	.section	.text.unlikely.event_read,"ax",@progbits
.LCOLDB6:
	.section	.text.event_read,"ax",@progbits
.LHOTB6:
	.type	event_read, @function
event_read:
.LFB27:
	.loc 1 128 0
	.cfi_startproc
.LVL66:
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
	.loc 1 129 0
	movl	8(%ebp), %eax
	.loc 1 128 0
	movl	16(%ebp), %esi
	.loc 1 129 0
	movl	4(%eax), %ebx
.LVL67:
	xorl	%eax, %eax
	.loc 1 132 0
	cmpl	$0, 16(%ebx)
	je	.L38
	.loc 1 136 0
	pushl	%eax
.LVL68:
	pushl	%eax
	pushl	$-1
	pushl	%ebx
	call	aos_mutex_lock
.LVL69:
	.loc 1 138 0
	movl	24(%ebx), %eax
.LVL70:
	.loc 1 140 0
	addl	$16, %esp
	.loc 1 141 0
	movl	12(%ebp), %edi
	.loc 1 140 0
	cmpl	%esi, 8(%eax)
.LBB88:
.LBB89:
	.loc 2 68 0
	movl	(%eax), %ecx
.LVL71:
.LBE89:
.LBE88:
	.loc 1 140 0
	cmovbe	8(%eax), %esi
.LBB91:
.LBB90:
	.loc 2 69 0
	movl	4(%eax), %edx
.LVL72:
	.loc 2 71 0
	movl	%edx, 4(%ecx)
	.loc 2 72 0
	movl	%ecx, (%edx)
.LVL73:
.LBE90:
.LBE91:
	.loc 1 140 0
	movl	%esi, -28(%ebp)
.LVL74:
	.loc 1 141 0
	leal	12(%eax), %esi
.LVL75:
	movl	-28(%ebp), %ecx
	rep movsb
	.loc 1 143 0
	movl	28(%ebx), %edx
	cmpl	$3, %edx
	jg	.L39
.LVL76:
.LBB92:
.LBB93:
	.loc 2 58 0
	movl	36(%ebx), %ecx
.LVL77:
.LBE93:
.LBE92:
	.loc 1 144 0
	leal	32(%ebx), %esi
.LVL78:
	.loc 1 145 0
	incl	%edx
	.loc 1 144 0
	movl	%esi, (%eax)
.LBB97:
.LBB96:
.LBB94:
.LBB95:
	.loc 2 38 0
	movl	%ecx, 4(%eax)
	.loc 2 41 0
	movl	%eax, 36(%ebx)
	.loc 2 42 0
	movl	%eax, (%ecx)
.LVL79:
.LBE95:
.LBE94:
.LBE96:
.LBE97:
	.loc 1 145 0
	movl	%edx, 28(%ebx)
	jmp	.L40
.L39:
	.loc 1 147 0
	subl	$12, %esp
	pushl	%eax
	call	aos_free
.LVL80:
	addl	$16, %esp
.L40:
	.loc 1 150 0
	decl	16(%ebx)
	.loc 1 152 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_mutex_unlock
.LVL81:
	.loc 1 154 0
	movl	-28(%ebp), %eax
	addl	$16, %esp
.LVL82:
.L38:
	.loc 1 155 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL83:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	event_read, .-event_read
	.section	.text.unlikely.event_read
.LCOLDE6:
	.section	.text.event_read
.LHOTE6:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"/dev/event"
	.section	.text.unlikely.vfs_device_init,"ax",@progbits
.LCOLDB8:
	.section	.text.vfs_device_init,"ax",@progbits
.LHOTB8:
	.globl	vfs_device_init
	.type	vfs_device_init, @function
vfs_device_init:
.LFB29:
	.loc 1 193 0
	.cfi_startproc
	.loc 1 197 0
	xorl	%eax, %eax
	.loc 1 196 0
	cmpl	$1, inited
	je	.L50
	.loc 1 193 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 200 0
	pushl	$0
	pushl	$event_fops
	pushl	$.LC7
	call	aos_register_driver
.LVL84:
	.loc 1 202 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L45
	.loc 1 206 0
	movl	$1, inited
.L45:
	.loc 1 209 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL85:
.L50:
	ret
	.cfi_endproc
.LFE29:
	.size	vfs_device_init, .-vfs_device_init
	.section	.text.unlikely.vfs_device_init
.LCOLDE8:
	.section	.text.vfs_device_init
.LHOTE8:
	.section	.rodata.event_fops,"a",@progbits
	.align 4
	.type	event_fops, @object
	.size	event_fops, 24
event_fops:
	.long	event_open
	.long	event_close
	.long	event_read
	.long	event_write
	.long	event_ioctl
	.long	event_poll
	.section	.bss.inited,"aw",@nobits
	.align 4
	.type	inited, @object
	.size	inited, 4
inited:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.event_poll
.Letext_cold0:
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h"
	.file 10 "./include/aos/types.h"
	.file 11 "./include/aos/kernel.h"
	.file 12 "./include/aos/vfs.h"
	.file 13 "./kernel/vfs/include/vfs_inode.h"
	.file 14 "./kernel/vfs/include/vfs_register.h"
	.file 15 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xfb8
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF141
	.byte	0xc
	.long	.LASF142
	.long	.LASF143
	.long	.Ldebug_ranges0+0xa8
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
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.long	.LASF10
	.byte	0x4
	.byte	0x41
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x5
	.byte	0x1c
	.long	0x73
	.uleb128 0x2
	.long	.LASF14
	.byte	0x5
	.byte	0x20
	.long	0x73
	.uleb128 0x2
	.long	.LASF15
	.byte	0x5
	.byte	0x2c
	.long	0x73
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x36
	.long	0x65
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x3a
	.long	0x6c
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0x3d
	.long	0x6c
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0x49
	.long	0x6c
	.uleb128 0x2
	.long	.LASF20
	.byte	0x5
	.byte	0x58
	.long	0x7a
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0x64
	.long	0xa9
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.byte	0x91
	.long	0x37
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF23
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.byte	0xcb
	.long	0x6c
	.uleb128 0x6
	.byte	0x4
	.long	0x11b
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF25
	.uleb128 0x6
	.byte	0x4
	.long	0x128
	.uleb128 0x7
	.long	0x11b
	.uleb128 0x6
	.byte	0x4
	.long	0x133
	.uleb128 0x8
	.uleb128 0x2
	.long	.LASF26
	.byte	0x6
	.byte	0x18
	.long	0x53
	.uleb128 0x2
	.long	.LASF27
	.byte	0x7
	.byte	0x28
	.long	0x73
	.uleb128 0x2
	.long	.LASF28
	.byte	0x8
	.byte	0x71
	.long	0x93
	.uleb128 0x2
	.long	.LASF29
	.byte	0x8
	.byte	0x76
	.long	0x9e
	.uleb128 0x2
	.long	.LASF30
	.byte	0x8
	.byte	0x9b
	.long	0xd5
	.uleb128 0x2
	.long	.LASF31
	.byte	0x8
	.byte	0xad
	.long	0xeb
	.uleb128 0x2
	.long	.LASF32
	.byte	0x8
	.byte	0xb1
	.long	0xb4
	.uleb128 0x2
	.long	.LASF33
	.byte	0x8
	.byte	0xb5
	.long	0xbf
	.uleb128 0x2
	.long	.LASF34
	.byte	0x8
	.byte	0xb9
	.long	0xca
	.uleb128 0x2
	.long	.LASF35
	.byte	0x8
	.byte	0xc8
	.long	0xf6
	.uleb128 0x2
	.long	.LASF36
	.byte	0x8
	.byte	0xcd
	.long	0xe0
	.uleb128 0x2
	.long	.LASF37
	.byte	0x8
	.byte	0xd2
	.long	0x10a
	.uleb128 0x9
	.long	.LASF55
	.byte	0x3c
	.byte	0x9
	.byte	0x1b
	.long	0x291
	.uleb128 0xa
	.long	.LASF38
	.byte	0x9
	.byte	0x1d
	.long	0x176
	.byte	0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x9
	.byte	0x1e
	.long	0x160
	.byte	0x2
	.uleb128 0xa
	.long	.LASF40
	.byte	0x9
	.byte	0x1f
	.long	0x1a2
	.byte	0x4
	.uleb128 0xa
	.long	.LASF41
	.byte	0x9
	.byte	0x20
	.long	0x1ad
	.byte	0x8
	.uleb128 0xa
	.long	.LASF42
	.byte	0x9
	.byte	0x21
	.long	0x181
	.byte	0xa
	.uleb128 0xa
	.long	.LASF43
	.byte	0x9
	.byte	0x22
	.long	0x18c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF44
	.byte	0x9
	.byte	0x23
	.long	0x176
	.byte	0xe
	.uleb128 0xa
	.long	.LASF45
	.byte	0x9
	.byte	0x24
	.long	0x16b
	.byte	0x10
	.uleb128 0xa
	.long	.LASF46
	.byte	0x9
	.byte	0x32
	.long	0x13f
	.byte	0x14
	.uleb128 0xa
	.long	.LASF47
	.byte	0x9
	.byte	0x33
	.long	0x73
	.byte	0x18
	.uleb128 0xa
	.long	.LASF48
	.byte	0x9
	.byte	0x34
	.long	0x13f
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF49
	.byte	0x9
	.byte	0x35
	.long	0x73
	.byte	0x20
	.uleb128 0xa
	.long	.LASF50
	.byte	0x9
	.byte	0x36
	.long	0x13f
	.byte	0x24
	.uleb128 0xa
	.long	.LASF51
	.byte	0x9
	.byte	0x37
	.long	0x73
	.byte	0x28
	.uleb128 0xa
	.long	.LASF52
	.byte	0x9
	.byte	0x38
	.long	0x155
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF53
	.byte	0x9
	.byte	0x39
	.long	0x14a
	.byte	0x30
	.uleb128 0xa
	.long	.LASF54
	.byte	0x9
	.byte	0x3a
	.long	0x291
	.byte	0x34
	.byte	0
	.uleb128 0xb
	.long	0x73
	.long	0x2a1
	.uleb128 0xc
	.long	0x101
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x8
	.byte	0xa
	.byte	0x11
	.long	0x2d1
	.uleb128 0xd
	.string	"fd"
	.byte	0xa
	.byte	0x12
	.long	0x37
	.byte	0
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x13
	.long	0x65
	.byte	0x4
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x14
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0xb
	.byte	0x13
	.long	0x2e6
	.uleb128 0xd
	.string	"hdl"
	.byte	0xb
	.byte	0x14
	.long	0x108
	.byte	0
	.byte	0
	.uleb128 0x2
	.long	.LASF59
	.byte	0xb
	.byte	0x15
	.long	0x2d1
	.uleb128 0x2
	.long	.LASF60
	.byte	0xb
	.byte	0x18
	.long	0x2e6
	.uleb128 0x9
	.long	.LASF61
	.byte	0x8
	.byte	0x2
	.byte	0x1f
	.long	0x321
	.uleb128 0xa
	.long	.LASF62
	.byte	0x2
	.byte	0x20
	.long	0x321
	.byte	0
	.uleb128 0xa
	.long	.LASF63
	.byte	0x2
	.byte	0x21
	.long	0x321
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2fc
	.uleb128 0x2
	.long	.LASF64
	.byte	0x2
	.byte	0x22
	.long	0x2fc
	.uleb128 0xe
	.byte	0x8
	.byte	0xc
	.byte	0x10
	.long	0x35f
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x11
	.long	0x37
	.byte	0
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x12
	.long	0x134
	.byte	0x4
	.uleb128 0xa
	.long	.LASF67
	.byte	0xc
	.byte	0x13
	.long	0x35f
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	0x11b
	.long	0x36e
	.uleb128 0xf
	.long	0x101
	.byte	0
	.uleb128 0x2
	.long	.LASF68
	.byte	0xc
	.byte	0x14
	.long	0x332
	.uleb128 0xe
	.byte	0x8
	.byte	0xc
	.byte	0x16
	.long	0x39a
	.uleb128 0xa
	.long	.LASF69
	.byte	0xc
	.byte	0x17
	.long	0x37
	.byte	0
	.uleb128 0xa
	.long	.LASF70
	.byte	0xc
	.byte	0x18
	.long	0x37
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF71
	.byte	0xc
	.byte	0x19
	.long	0x379
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF72
	.uleb128 0x2
	.long	.LASF73
	.byte	0xd
	.byte	0x2b
	.long	0x40c
	.uleb128 0x9
	.long	.LASF74
	.byte	0x18
	.byte	0xd
	.byte	0x46
	.long	0x40c
	.uleb128 0xa
	.long	.LASF75
	.byte	0xd
	.byte	0x47
	.long	0x5ec
	.byte	0
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x48
	.long	0x601
	.byte	0x4
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x49
	.long	0x620
	.byte	0x8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x4a
	.long	0x63f
	.byte	0xc
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0x4b
	.long	0x65e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF80
	.byte	0xd
	.byte	0x4d
	.long	0x687
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.long	0x3b7
	.uleb128 0x2
	.long	.LASF81
	.byte	0xd
	.byte	0x2c
	.long	0x4d1
	.uleb128 0x9
	.long	.LASF82
	.byte	0x38
	.byte	0xd
	.byte	0x51
	.long	0x4d1
	.uleb128 0xa
	.long	.LASF75
	.byte	0xd
	.byte	0x52
	.long	0x6a6
	.byte	0
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x53
	.long	0x601
	.byte	0x4
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x54
	.long	0x6c5
	.byte	0x8
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x55
	.long	0x6e4
	.byte	0xc
	.uleb128 0xa
	.long	.LASF83
	.byte	0xd
	.byte	0x56
	.long	0x703
	.byte	0x10
	.uleb128 0xa
	.long	.LASF84
	.byte	0xd
	.byte	0x57
	.long	0x601
	.byte	0x14
	.uleb128 0xa
	.long	.LASF55
	.byte	0xd
	.byte	0x58
	.long	0x728
	.byte	0x18
	.uleb128 0xa
	.long	.LASF85
	.byte	0xd
	.byte	0x59
	.long	0x742
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF86
	.byte	0xd
	.byte	0x5a
	.long	0x761
	.byte	0x20
	.uleb128 0xa
	.long	.LASF87
	.byte	0xd
	.byte	0x5b
	.long	0x781
	.byte	0x24
	.uleb128 0xa
	.long	.LASF88
	.byte	0xd
	.byte	0x5c
	.long	0x7a1
	.byte	0x28
	.uleb128 0xa
	.long	.LASF89
	.byte	0xd
	.byte	0x5d
	.long	0x7bb
	.byte	0x2c
	.uleb128 0xa
	.long	.LASF90
	.byte	0xd
	.byte	0x5e
	.long	0x742
	.byte	0x30
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0x5f
	.long	0x65e
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	0x41c
	.uleb128 0x10
	.long	.LASF144
	.byte	0x4
	.byte	0xd
	.byte	0x2e
	.long	0x4f9
	.uleb128 0x11
	.long	.LASF91
	.byte	0xd
	.byte	0x2f
	.long	0x4f9
	.uleb128 0x11
	.long	.LASF92
	.byte	0xd
	.byte	0x30
	.long	0x4ff
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x3ac
	.uleb128 0x6
	.byte	0x4
	.long	0x411
	.uleb128 0xe
	.byte	0x18
	.byte	0xd
	.byte	0x34
	.long	0x562
	.uleb128 0xd
	.string	"ops"
	.byte	0xd
	.byte	0x35
	.long	0x4d6
	.byte	0
	.uleb128 0xa
	.long	.LASF93
	.byte	0xd
	.byte	0x36
	.long	0x108
	.byte	0x4
	.uleb128 0xa
	.long	.LASF94
	.byte	0xd
	.byte	0x37
	.long	0x115
	.byte	0x8
	.uleb128 0xa
	.long	.LASF95
	.byte	0xd
	.byte	0x38
	.long	0x37
	.byte	0xc
	.uleb128 0xa
	.long	.LASF96
	.byte	0xd
	.byte	0x39
	.long	0x134
	.byte	0x10
	.uleb128 0xa
	.long	.LASF97
	.byte	0xd
	.byte	0x3a
	.long	0x134
	.byte	0x11
	.uleb128 0xa
	.long	.LASF98
	.byte	0xd
	.byte	0x3b
	.long	0x2f1
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.long	.LASF99
	.byte	0xd
	.byte	0x3c
	.long	0x505
	.uleb128 0xe
	.byte	0xc
	.byte	0xd
	.byte	0x3e
	.long	0x59a
	.uleb128 0xa
	.long	.LASF100
	.byte	0xd
	.byte	0x3f
	.long	0x59a
	.byte	0
	.uleb128 0xa
	.long	.LASF101
	.byte	0xd
	.byte	0x40
	.long	0x108
	.byte	0x4
	.uleb128 0xa
	.long	.LASF102
	.byte	0xd
	.byte	0x41
	.long	0x25
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x562
	.uleb128 0x2
	.long	.LASF103
	.byte	0xd
	.byte	0x42
	.long	0x56d
	.uleb128 0x2
	.long	.LASF104
	.byte	0xd
	.byte	0x45
	.long	0x5b6
	.uleb128 0x6
	.byte	0x4
	.long	0x5bc
	.uleb128 0x12
	.long	0x5cc
	.uleb128 0x13
	.long	0x5cc
	.uleb128 0x13
	.long	0x108
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2a1
	.uleb128 0x14
	.long	0x37
	.long	0x5e6
	.uleb128 0x13
	.long	0x59a
	.uleb128 0x13
	.long	0x5e6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5a0
	.uleb128 0x6
	.byte	0x4
	.long	0x5d2
	.uleb128 0x14
	.long	0x37
	.long	0x601
	.uleb128 0x13
	.long	0x5e6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5f2
	.uleb128 0x14
	.long	0x197
	.long	0x620
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x108
	.uleb128 0x13
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x607
	.uleb128 0x14
	.long	0x197
	.long	0x63f
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x12d
	.uleb128 0x13
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x626
	.uleb128 0x14
	.long	0x37
	.long	0x65e
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x37
	.uleb128 0x13
	.long	0x85
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x645
	.uleb128 0x14
	.long	0x37
	.long	0x687
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x3a5
	.uleb128 0x13
	.long	0x5ab
	.uleb128 0x13
	.long	0x5cc
	.uleb128 0x13
	.long	0x108
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x664
	.uleb128 0x14
	.long	0x37
	.long	0x6a6
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x122
	.uleb128 0x13
	.long	0x37
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x68d
	.uleb128 0x14
	.long	0x197
	.long	0x6c5
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x115
	.uleb128 0x13
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6ac
	.uleb128 0x14
	.long	0x197
	.long	0x6e4
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x122
	.uleb128 0x13
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6cb
	.uleb128 0x14
	.long	0x16b
	.long	0x703
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x16b
	.uleb128 0x13
	.long	0x37
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6ea
	.uleb128 0x14
	.long	0x37
	.long	0x722
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x122
	.uleb128 0x13
	.long	0x722
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1b8
	.uleb128 0x6
	.byte	0x4
	.long	0x709
	.uleb128 0x14
	.long	0x37
	.long	0x742
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x72e
	.uleb128 0x14
	.long	0x37
	.long	0x761
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x122
	.uleb128 0x13
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x748
	.uleb128 0x14
	.long	0x77b
	.long	0x77b
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x122
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x39a
	.uleb128 0x6
	.byte	0x4
	.long	0x767
	.uleb128 0x14
	.long	0x79b
	.long	0x79b
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x77b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x36e
	.uleb128 0x6
	.byte	0x4
	.long	0x787
	.uleb128 0x14
	.long	0x37
	.long	0x7bb
	.uleb128 0x13
	.long	0x5e6
	.uleb128 0x13
	.long	0x77b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x7a7
	.uleb128 0xe
	.byte	0x28
	.byte	0x1
	.byte	0x11
	.long	0x829
	.uleb128 0xa
	.long	.LASF98
	.byte	0x1
	.byte	0x12
	.long	0x2f1
	.byte	0
	.uleb128 0xa
	.long	.LASF105
	.byte	0x1
	.byte	0x13
	.long	0x5ab
	.byte	0x4
	.uleb128 0xd
	.string	"fd"
	.byte	0x1
	.byte	0x14
	.long	0x5cc
	.byte	0x8
	.uleb128 0xa
	.long	.LASF106
	.byte	0x1
	.byte	0x15
	.long	0x108
	.byte	0xc
	.uleb128 0xa
	.long	.LASF107
	.byte	0x1
	.byte	0x16
	.long	0x37
	.byte	0x10
	.uleb128 0xa
	.long	.LASF108
	.byte	0x1
	.byte	0x17
	.long	0x327
	.byte	0x14
	.uleb128 0xa
	.long	.LASF109
	.byte	0x1
	.byte	0x18
	.long	0x37
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF110
	.byte	0x1
	.byte	0x19
	.long	0x327
	.byte	0x20
	.byte	0
	.uleb128 0x2
	.long	.LASF111
	.byte	0x1
	.byte	0x1a
	.long	0x7c1
	.uleb128 0xe
	.byte	0xc
	.byte	0x1
	.byte	0x1c
	.long	0x861
	.uleb128 0xa
	.long	.LASF100
	.byte	0x1
	.byte	0x1d
	.long	0x327
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x1e
	.long	0x25
	.byte	0x8
	.uleb128 0xd
	.string	"buf"
	.byte	0x1
	.byte	0x1f
	.long	0x35f
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF112
	.byte	0x1
	.byte	0x20
	.long	0x834
	.uleb128 0x15
	.long	.LASF113
	.byte	0x2
	.byte	0x24
	.byte	0x3
	.long	0x89a
	.uleb128 0x16
	.long	.LASF100
	.byte	0x2
	.byte	0x24
	.long	0x89a
	.uleb128 0x16
	.long	.LASF62
	.byte	0x2
	.byte	0x24
	.long	0x89a
	.uleb128 0x16
	.long	.LASF63
	.byte	0x2
	.byte	0x24
	.long	0x89a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x327
	.uleb128 0x15
	.long	.LASF114
	.byte	0x2
	.byte	0x38
	.byte	0x3
	.long	0x8c3
	.uleb128 0x16
	.long	.LASF100
	.byte	0x2
	.byte	0x38
	.long	0x89a
	.uleb128 0x16
	.long	.LASF115
	.byte	0x2
	.byte	0x38
	.long	0x89a
	.byte	0
	.uleb128 0x15
	.long	.LASF116
	.byte	0x2
	.byte	0x3d
	.byte	0x3
	.long	0x8e6
	.uleb128 0x16
	.long	.LASF100
	.byte	0x2
	.byte	0x3d
	.long	0x89a
	.uleb128 0x16
	.long	.LASF115
	.byte	0x2
	.byte	0x3d
	.long	0x89a
	.byte	0
	.uleb128 0x17
	.long	.LASF145
	.byte	0x2
	.byte	0x56
	.long	0x37
	.byte	0x3
	.long	0x902
	.uleb128 0x16
	.long	.LASF117
	.byte	0x2
	.byte	0x56
	.long	0x902
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x908
	.uleb128 0x7
	.long	0x327
	.uleb128 0x15
	.long	.LASF118
	.byte	0x2
	.byte	0x4b
	.byte	0x3
	.long	0x925
	.uleb128 0x16
	.long	.LASF100
	.byte	0x2
	.byte	0x4b
	.long	0x89a
	.byte	0
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.byte	0x9d
	.long	0x37
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x9b3
	.uleb128 0x19
	.string	"f"
	.byte	0x1
	.byte	0x9d
	.long	0x5e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF119
	.byte	0x1
	.byte	0x9d
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.byte	0x9d
	.long	0x5ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.string	"fd"
	.byte	0x1
	.byte	0x9e
	.long	0x5cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x19
	.string	"opa"
	.byte	0x1
	.byte	0x9e
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1b
	.long	.LASF122
	.byte	0x1
	.byte	0xa0
	.long	0x9b3
	.uleb128 0x1c
	.string	"out"
	.byte	0x1
	.byte	0xb1
	.long	.L3
	.uleb128 0x1d
	.long	.LVL1
	.long	0xf6c
	.uleb128 0x1e
	.long	.LVL2
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x1d
	.long	.LVL3
	.long	0xf77
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x829
	.uleb128 0x15
	.long	.LASF121
	.byte	0x2
	.byte	0x42
	.byte	0x3
	.long	0x9e7
	.uleb128 0x16
	.long	.LASF100
	.byte	0x2
	.byte	0x42
	.long	0x89a
	.uleb128 0x1b
	.long	.LASF62
	.byte	0x2
	.byte	0x44
	.long	0x89a
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x2
	.byte	0x45
	.long	0x89a
	.byte	0
	.uleb128 0x1f
	.long	.LASF124
	.byte	0x1
	.byte	0x43
	.long	0x197
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xb64
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0x43
	.long	0x5e6
	.long	.LLST0
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.byte	0x43
	.long	0x12d
	.long	.LLST1
	.uleb128 0x20
	.string	"len"
	.byte	0x1
	.byte	0x43
	.long	0x25
	.long	.LLST2
	.uleb128 0x1a
	.long	.LASF125
	.byte	0x1
	.byte	0x43
	.long	0x3a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF122
	.byte	0x1
	.byte	0x45
	.long	0x9b3
	.long	.LLST3
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0x47
	.long	0x197
	.long	.LLST4
	.uleb128 0x22
	.string	"evt"
	.byte	0x1
	.byte	0x49
	.long	0xb64
	.long	.LLST5
	.uleb128 0x1c
	.string	"out"
	.byte	0x1
	.byte	0x66
	.long	.L9
	.uleb128 0x23
	.long	0x9b9
	.long	.LBB38
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4d
	.long	0xaa6
	.uleb128 0x24
	.long	0x9c5
	.long	.LLST6
	.uleb128 0x25
	.long	.Ldebug_ranges0+0
	.uleb128 0x26
	.long	0x9d0
	.long	.LLST7
	.uleb128 0x26
	.long	0x9db
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x8a0
	.long	.LBB42
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x5d
	.long	0xaf7
	.uleb128 0x24
	.long	0x8b7
	.long	.LLST9
	.uleb128 0x24
	.long	0x8ac
	.long	.LLST10
	.uleb128 0x27
	.long	0x86c
	.long	.LBB44
	.long	.LBE44-.LBB44
	.byte	0x2
	.byte	0x3a
	.uleb128 0x24
	.long	0x88e
	.long	.LLST11
	.uleb128 0x24
	.long	0x883
	.long	.LLST12
	.uleb128 0x24
	.long	0x878
	.long	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x8c3
	.long	.LBB48
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x5f
	.long	0xb48
	.uleb128 0x24
	.long	0x8da
	.long	.LLST14
	.uleb128 0x24
	.long	0x8cf
	.long	.LLST15
	.uleb128 0x27
	.long	0x86c
	.long	.LBB50
	.long	.LBE50-.LBB50
	.byte	0x2
	.byte	0x3f
	.uleb128 0x24
	.long	0x88e
	.long	.LLST16
	.uleb128 0x24
	.long	0x883
	.long	.LLST17
	.uleb128 0x24
	.long	0x878
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL6
	.long	0xf6c
	.uleb128 0x1d
	.long	.LVL13
	.long	0xf82
	.uleb128 0x1d
	.long	.LVL26
	.long	0xf77
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x861
	.uleb128 0x18
	.long	.LASF126
	.byte	0x1
	.byte	0x70
	.long	0x37
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd6
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0x70
	.long	0x5e6
	.long	.LLST19
	.uleb128 0x20
	.string	"cmd"
	.byte	0x1
	.byte	0x70
	.long	0x37
	.long	.LLST20
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0x70
	.long	0x85
	.long	.LLST21
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0x72
	.long	0x37
	.long	.LLST22
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.byte	0x73
	.long	0x108
	.long	.LLST23
	.uleb128 0x28
	.long	.LVL31
	.long	0x9e7
	.byte	0
	.uleb128 0x18
	.long	.LASF127
	.byte	0x1
	.byte	0x6b
	.long	0x197
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xc37
	.uleb128 0x20
	.string	"f"
	.byte	0x1
	.byte	0x6b
	.long	0x5e6
	.long	.LLST24
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x6b
	.long	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x6b
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LVL35
	.long	0x9e7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF128
	.byte	0x1
	.byte	0x22
	.long	0x37
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc8
	.uleb128 0x1a
	.long	.LASF100
	.byte	0x1
	.byte	0x22
	.long	0x59a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x1
	.byte	0x22
	.long	0x5e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.LASF122
	.byte	0x1
	.byte	0x24
	.long	0x9b3
	.long	.LLST25
	.uleb128 0x2b
	.long	0x90d
	.long	.LBB54
	.long	.LBE54-.LBB54
	.byte	0x1
	.byte	0x27
	.long	0xc98
	.uleb128 0x24
	.long	0x919
	.long	.LLST26
	.byte	0
	.uleb128 0x2b
	.long	0x90d
	.long	.LBB56
	.long	.LBE56-.LBB56
	.byte	0x1
	.byte	0x28
	.long	0xcb5
	.uleb128 0x24
	.long	0x919
	.long	.LLST27
	.byte	0
	.uleb128 0x1d
	.long	.LVL37
	.long	0xf82
	.uleb128 0x1d
	.long	.LVL40
	.long	0xf8e
	.byte	0
	.uleb128 0x18
	.long	.LASF130
	.byte	0x1
	.byte	0x2d
	.long	0x37
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xdfd
	.uleb128 0x1a
	.long	.LASF129
	.byte	0x1
	.byte	0x2d
	.long	0x5e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF122
	.byte	0x1
	.byte	0x2f
	.long	0x9b3
	.long	.LLST28
	.uleb128 0x2b
	.long	0x8e6
	.long	.LBB68
	.long	.LBE68-.LBB68
	.byte	0x1
	.byte	0x32
	.long	0xd1b
	.uleb128 0x24
	.long	0x8f6
	.long	.LLST29
	.byte	0
	.uleb128 0x2c
	.long	.LBB70
	.long	.LBE70-.LBB70
	.long	0xd74
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0x33
	.long	0x89a
	.long	.LLST30
	.uleb128 0x23
	.long	0x9b9
	.long	.LBB71
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x34
	.long	0xd6a
	.uleb128 0x24
	.long	0x9c5
	.long	.LLST31
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x26
	.long	0x9d0
	.long	.LLST32
	.uleb128 0x26
	.long	0x9db
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL55
	.long	0xf99
	.byte	0
	.uleb128 0x2b
	.long	0x8e6
	.long	.LBB75
	.long	.LBE75-.LBB75
	.byte	0x1
	.byte	0x38
	.long	0xd91
	.uleb128 0x24
	.long	0x8f6
	.long	.LLST34
	.byte	0
	.uleb128 0x2c
	.long	.LBB77
	.long	.LBE77-.LBB77
	.long	0xdea
	.uleb128 0x22
	.string	"n"
	.byte	0x1
	.byte	0x39
	.long	0x89a
	.long	.LLST35
	.uleb128 0x23
	.long	0x9b9
	.long	.LBB78
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x3a
	.long	0xde0
	.uleb128 0x24
	.long	0x9c5
	.long	.LLST36
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x26
	.long	0x9d0
	.long	.LLST37
	.uleb128 0x26
	.long	0x9db
	.long	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL62
	.long	0xf99
	.byte	0
	.uleb128 0x1d
	.long	.LVL48
	.long	0xfa5
	.uleb128 0x1d
	.long	.LVL63
	.long	0xf99
	.byte	0
	.uleb128 0x18
	.long	.LASF131
	.byte	0x1
	.byte	0x7f
	.long	0x197
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xf0d
	.uleb128 0x19
	.string	"f"
	.byte	0x1
	.byte	0x7f
	.long	0x5e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x7f
	.long	0x108
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x7f
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF122
	.byte	0x1
	.byte	0x81
	.long	0x9b3
	.long	.LLST39
	.uleb128 0x22
	.string	"cnt"
	.byte	0x1
	.byte	0x82
	.long	0x37
	.long	.LLST40
	.uleb128 0x22
	.string	"evt"
	.byte	0x1
	.byte	0x8a
	.long	0xb64
	.long	.LLST41
	.uleb128 0x23
	.long	0x9b9
	.long	.LBB88
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x8b
	.long	0xea0
	.uleb128 0x24
	.long	0x9c5
	.long	.LLST42
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x26
	.long	0x9d0
	.long	.LLST43
	.uleb128 0x26
	.long	0x9db
	.long	.LLST44
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x8a0
	.long	.LBB92
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.byte	0x90
	.long	0xef1
	.uleb128 0x24
	.long	0x8b7
	.long	.LLST45
	.uleb128 0x24
	.long	0x8ac
	.long	.LLST46
	.uleb128 0x27
	.long	0x86c
	.long	.LBB94
	.long	.LBE94-.LBB94
	.byte	0x2
	.byte	0x3a
	.uleb128 0x24
	.long	0x88e
	.long	.LLST47
	.uleb128 0x24
	.long	0x883
	.long	.LLST48
	.uleb128 0x24
	.long	0x878
	.long	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL69
	.long	0xf6c
	.uleb128 0x1d
	.long	.LVL80
	.long	0xf99
	.uleb128 0x1d
	.long	.LVL81
	.long	0xf77
	.byte	0
	.uleb128 0x2d
	.long	.LASF146
	.byte	0x1
	.byte	0xc0
	.long	0x37
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xf3f
	.uleb128 0x22
	.string	"ret"
	.byte	0x1
	.byte	0xc2
	.long	0x37
	.long	.LLST50
	.uleb128 0x1d
	.long	.LVL84
	.long	0xfb0
	.byte	0
	.uleb128 0x2e
	.long	.LASF132
	.byte	0x1
	.byte	0xf
	.long	0x37
	.uleb128 0x5
	.byte	0x3
	.long	inited
	.uleb128 0x2e
	.long	.LASF133
	.byte	0x1
	.byte	0xb7
	.long	0x3ac
	.uleb128 0x5
	.byte	0x3
	.long	event_fops
	.uleb128 0x2f
	.long	.LASF147
	.byte	0xf
	.byte	0x17
	.long	0x30
	.uleb128 0x30
	.long	.LASF134
	.long	.LASF134
	.byte	0xb
	.byte	0x9e
	.uleb128 0x30
	.long	.LASF135
	.long	.LASF135
	.byte	0xb
	.byte	0xa7
	.uleb128 0x31
	.long	.LASF136
	.long	.LASF136
	.byte	0xb
	.value	0x1e8
	.uleb128 0x30
	.long	.LASF137
	.long	.LASF137
	.byte	0xb
	.byte	0x8c
	.uleb128 0x31
	.long	.LASF138
	.long	.LASF138
	.byte	0xb
	.value	0x200
	.uleb128 0x30
	.long	.LASF139
	.long	.LASF139
	.byte	0xb
	.byte	0x94
	.uleb128 0x30
	.long	.LASF140
	.long	.LASF140
	.byte	0xe
	.byte	0xe
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0x17
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.long	.LVL4
	.long	.LVL6-1
	.value	0x1
	.byte	0x50
	.long	.LVL6-1
	.long	.LFE24
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL6-1
	.value	0x1
	.byte	0x52
	.long	.LVL6-1
	.long	.LFE24
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL6-1
	.value	0x1
	.byte	0x51
	.long	.LVL6-1
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL25
	.long	.LFE24
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL27
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL7
	.long	.LVL13-1
	.value	0x1
	.byte	0x51
	.long	.LVL13-1
	.long	.LFE24
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL13-1
	.value	0x1
	.byte	0x52
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x50
	.long	.LVL15
	.long	.LVL22
	.value	0x1
	.byte	0x52
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL12
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST7:
	.long	.LVL10
	.long	.LVL12
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST8:
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL19
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST10:
	.long	.LVL16
	.long	.LVL19
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST11:
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST13:
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST14:
	.long	.LVL19
	.long	.LVL21
	.value	0x3
	.byte	0x73
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL19
	.long	.LVL21
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST16:
	.long	.LVL20
	.long	.LVL21
	.value	0x3
	.byte	0x73
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST19:
	.long	.LVL28
	.long	.LVL30
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL30
	.long	.LVL31-1
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LFE26
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST21:
	.long	.LVL28
	.long	.LVL31
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL31
	.long	.LFE26
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST22:
	.long	.LVL29
	.long	.LVL31-1
	.value	0x1
	.byte	0x51
	.long	.LVL31-1
	.long	.LVL31
	.value	0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x34
	.byte	0x26
	.byte	0x9f
	.long	.LVL31
	.long	.LFE26
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST23:
	.long	.LVL29
	.long	.LVL31
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL31
	.long	.LFE26
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST24:
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LVL45
	.value	0x1
	.byte	0x53
	.long	.LVL45
	.long	.LFE22
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	0
	.long	0
.LLST26:
	.long	.LVL41
	.long	.LVL42
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST28:
	.long	.LVL47
	.long	.LVL64
	.value	0x1
	.byte	0x53
	.long	.LVL64
	.long	.LVL65
	.value	0x3
	.byte	0x76
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL49
	.long	.LVL50
	.value	0x3
	.byte	0x73
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL51
	.long	.LVL55-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST31:
	.long	.LVL51
	.long	.LVL54
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST32:
	.long	.LVL52
	.long	.LVL54
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST33:
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST34:
	.long	.LVL56
	.long	.LVL57
	.value	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL58
	.long	.LVL62-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST36:
	.long	.LVL58
	.long	.LVL61
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST37:
	.long	.LVL59
	.long	.LVL61
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST38:
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST39:
	.long	.LVL67
	.long	.LVL83
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST40:
	.long	.LVL67
	.long	.LVL68
	.value	0x2
	.byte	0x73
	.sleb128 16
	.long	.LVL74
	.long	.LVL75
	.value	0x1
	.byte	0x56
	.long	.LVL75
	.long	.LVL82
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST41:
	.long	.LVL70
	.long	.LVL80-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST42:
	.long	.LVL70
	.long	.LVL73
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST43:
	.long	.LVL71
	.long	.LVL73
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST44:
	.long	.LVL72
	.long	.LVL73
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST45:
	.long	.LVL76
	.long	.LVL78
	.value	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST46:
	.long	.LVL76
	.long	.LVL79
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST47:
	.long	.LVL77
	.long	.LVL79
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST48:
	.long	.LVL77
	.long	.LVL78
	.value	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST49:
	.long	.LVL77
	.long	.LVL79
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST50:
	.long	.LVL84
	.long	.LVL85
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB38
	.long	.LBE38
	.long	.LBB41
	.long	.LBE41
	.long	0
	.long	0
	.long	.LBB42
	.long	.LBE42
	.long	.LBB47
	.long	.LBE47
	.long	0
	.long	0
	.long	.LBB48
	.long	.LBE48
	.long	.LBB53
	.long	.LBE53
	.long	0
	.long	0
	.long	.LBB71
	.long	.LBE71
	.long	.LBB74
	.long	.LBE74
	.long	0
	.long	0
	.long	.LBB78
	.long	.LBE78
	.long	.LBB81
	.long	.LBE81
	.long	0
	.long	0
	.long	.LBB88
	.long	.LBE88
	.long	.LBB91
	.long	.LBE91
	.long	0
	.long	0
	.long	.LBB92
	.long	.LBE92
	.long	.LBB97
	.long	.LBE97
	.long	0
	.long	0
	.long	.LFB28
	.long	.LFE28
	.long	.LFB24
	.long	.LFE24
	.long	.LFB26
	.long	.LFE26
	.long	.LFB25
	.long	.LFE25
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB27
	.long	.LFE27
	.long	.LFB29
	.long	.LFE29
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF123:
	.string	"event_poll"
.LASF127:
	.string	"event_write"
.LASF68:
	.string	"aos_dirent_t"
.LASF132:
	.string	"inited"
.LASF111:
	.string	"event_dev_t"
.LASF99:
	.string	"inode_t"
.LASF105:
	.string	"poll_cb"
.LASF71:
	.string	"aos_dir_t"
.LASF136:
	.string	"aos_malloc"
.LASF0:
	.string	"unsigned int"
.LASF63:
	.string	"next"
.LASF52:
	.string	"st_blksize"
.LASF117:
	.string	"head"
.LASF97:
	.string	"refs"
.LASF57:
	.string	"events"
.LASF87:
	.string	"opendir"
.LASF84:
	.string	"sync"
.LASF24:
	.string	"__nlink_t"
.LASF94:
	.string	"i_name"
.LASF62:
	.string	"prev"
.LASF67:
	.string	"d_name"
.LASF19:
	.string	"__ino_t"
.LASF60:
	.string	"aos_mutex_t"
.LASF30:
	.string	"ino_t"
.LASF112:
	.string	"dev_event_t"
.LASF98:
	.string	"mutex"
.LASF93:
	.string	"i_arg"
.LASF50:
	.string	"st_ctime"
.LASF85:
	.string	"unlink"
.LASF147:
	.string	"aos_log_level"
.LASF12:
	.string	"long long unsigned int"
.LASF53:
	.string	"st_blocks"
.LASF129:
	.string	"file"
.LASF102:
	.string	"offset"
.LASF48:
	.string	"st_mtime"
.LASF101:
	.string	"f_arg"
.LASF92:
	.string	"i_fops"
.LASF143:
	.string	"/home/stone/Documents/pca"
.LASF55:
	.string	"stat"
.LASF38:
	.string	"st_dev"
.LASF107:
	.string	"counter"
.LASF108:
	.string	"bufs"
.LASF4:
	.string	"size_t"
.LASF134:
	.string	"aos_mutex_lock"
.LASF20:
	.string	"__mode_t"
.LASF66:
	.string	"d_type"
.LASF72:
	.string	"_Bool"
.LASF43:
	.string	"st_gid"
.LASF40:
	.string	"st_mode"
.LASF90:
	.string	"mkdir"
.LASF103:
	.string	"file_t"
.LASF41:
	.string	"st_nlink"
.LASF125:
	.string	"urgent"
.LASF79:
	.string	"ioctl"
.LASF80:
	.string	"poll"
.LASF59:
	.string	"aos_hdl_t"
.LASF25:
	.string	"char"
.LASF28:
	.string	"blkcnt_t"
.LASF104:
	.string	"poll_notify_t"
.LASF76:
	.string	"close"
.LASF89:
	.string	"closedir"
.LASF46:
	.string	"st_atime"
.LASF35:
	.string	"ssize_t"
.LASF83:
	.string	"lseek"
.LASF26:
	.string	"uint8_t"
.LASF96:
	.string	"type"
.LASF116:
	.string	"dlist_add_tail"
.LASF27:
	.string	"time_t"
.LASF82:
	.string	"fs_ops"
.LASF86:
	.string	"rename"
.LASF131:
	.string	"event_read"
.LASF39:
	.string	"st_ino"
.LASF142:
	.string	"src/device.c"
.LASF113:
	.string	"__dlist_add"
.LASF1:
	.string	"long long int"
.LASF78:
	.string	"write"
.LASF118:
	.string	"dlist_init"
.LASF133:
	.string	"event_fops"
.LASF16:
	.string	"__dev_t"
.LASF146:
	.string	"vfs_device_init"
.LASF32:
	.string	"dev_t"
.LASF74:
	.string	"file_ops"
.LASF139:
	.string	"aos_mutex_free"
.LASF73:
	.string	"file_ops_t"
.LASF56:
	.string	"pollfd"
.LASF122:
	.string	"pdev"
.LASF47:
	.string	"st_spare1"
.LASF49:
	.string	"st_spare2"
.LASF51:
	.string	"st_spare3"
.LASF54:
	.string	"st_spare4"
.LASF114:
	.string	"dlist_add"
.LASF2:
	.string	"long double"
.LASF110:
	.string	"buf_cache"
.LASF18:
	.string	"__gid_t"
.LASF144:
	.string	"inode_ops_t"
.LASF34:
	.string	"gid_t"
.LASF128:
	.string	"event_open"
.LASF91:
	.string	"i_ops"
.LASF33:
	.string	"uid_t"
.LASF58:
	.string	"revents"
.LASF7:
	.string	"short int"
.LASF95:
	.string	"i_flags"
.LASF9:
	.string	"long int"
.LASF100:
	.string	"node"
.LASF88:
	.string	"readdir"
.LASF120:
	.string	"notify"
.LASF14:
	.string	"__blksize_t"
.LASF61:
	.string	"dlist_s"
.LASF64:
	.string	"dlist_t"
.LASF17:
	.string	"__uid_t"
.LASF5:
	.string	"__uint8_t"
.LASF77:
	.string	"read"
.LASF69:
	.string	"dd_vfs_fd"
.LASF75:
	.string	"open"
.LASF124:
	.string	"_event_write"
.LASF23:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF115:
	.string	"queue"
.LASF137:
	.string	"aos_mutex_new"
.LASF37:
	.string	"nlink_t"
.LASF6:
	.string	"unsigned char"
.LASF119:
	.string	"setup"
.LASF10:
	.string	"__uint32_t"
.LASF141:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF29:
	.string	"blksize_t"
.LASF106:
	.string	"poll_data"
.LASF45:
	.string	"st_size"
.LASF140:
	.string	"aos_register_driver"
.LASF65:
	.string	"d_ino"
.LASF121:
	.string	"dlist_del"
.LASF138:
	.string	"aos_free"
.LASF126:
	.string	"event_ioctl"
.LASF42:
	.string	"st_uid"
.LASF21:
	.string	"__off_t"
.LASF22:
	.string	"_ssize_t"
.LASF70:
	.string	"dd_rsv"
.LASF3:
	.string	"signed char"
.LASF36:
	.string	"mode_t"
.LASF31:
	.string	"off_t"
.LASF8:
	.string	"short unsigned int"
.LASF130:
	.string	"event_close"
.LASF13:
	.string	"__blkcnt_t"
.LASF15:
	.string	"_off_t"
.LASF44:
	.string	"st_rdev"
.LASF135:
	.string	"aos_mutex_unlock"
.LASF109:
	.string	"cache_count"
.LASF81:
	.string	"fs_ops_t"
.LASF145:
	.string	"dlist_empty"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
