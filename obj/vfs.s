	.file	"vfs.c"
	.text
.Ltext0:
	.section	.text.unlikely.vfs_init,"ax",@progbits
.LCOLDB0:
	.section	.text.vfs_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.vfs_init
.Ltext_cold0:
	.section	.text.vfs_init
	.globl	vfs_init
	.type	vfs_init, @function
vfs_init:
.LFB23:
	.file 1 "kernel/vfs/vfs.c"
	.loc 1 28 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 32 0
	xorl	%ebx, %ebx
	.loc 1 28 0
	pushl	%eax
	.loc 1 31 0
	cmpb	$1, g_vfs_init
	je	.L2
	.loc 1 35 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_new
.LVL1:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L2
	.loc 1 39 0
	call	inode_init
.LVL2:
	.loc 1 41 0
	movb	$1, g_vfs_init
.LVL3:
.L2:
	.loc 1 44 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	vfs_init, .-vfs_init
	.section	.text.unlikely.vfs_init
.LCOLDE0:
	.section	.text.vfs_init
.LHOTE0:
	.section	.text.unlikely.aos_open,"ax",@progbits
.LCOLDB1:
	.section	.text.aos_open,"ax",@progbits
.LHOTB1:
	.globl	aos_open
	.type	aos_open, @function
aos_open:
.LFB24:
	.loc 1 47 0
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 47 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	.loc 1 53 0
	testl	%ebx, %ebx
	.loc 1 47 0
	movl	%eax, -28(%ebp)
	.loc 1 53 0
	je	.L13
	.loc 1 57 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%ebx, %edi
	repnz scasb
.LVL5:
	notl	%ecx
	decl	%ecx
.LVL6:
	.loc 1 58 0
	cmpl	$4096, %ecx
	ja	.L14
	.loc 1 62 0
	pushl	%esi
	pushl	%esi
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL7:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L8
	.loc 1 66 0
	subl	$12, %esp
	pushl	%ebx
	call	inode_open
.LVL8:
	.loc 1 68 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 66 0
	movl	%eax, %edi
.LVL9:
	.loc 1 68 0
	jne	.L9
	.loc 1 69 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL10:
	.loc 1 74 0
	addl	$16, %esp
	movl	$-2, %eax
	jmp	.L8
.LVL11:
.L9:
	.loc 1 78 0
	movl	-28(%ebp), %eax
.LVL12:
	.loc 1 79 0
	subl	$12, %esp
	.loc 1 78 0
	movl	%eax, 12(%edi)
	.loc 1 79 0
	pushl	%edi
	call	new_file
.LVL13:
	movl	%eax, %esi
.LVL14:
	.loc 1 81 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL15:
	.loc 1 83 0
	addl	$16, %esp
	testl	%esi, %esi
	je	.L16
	.loc 1 87 0
	cmpb	$3, 16(%edi)
	.loc 1 88 0
	movl	(%edi), %eax
	movl	(%eax), %eax
	.loc 1 87 0
	jne	.L10
	.loc 1 88 0
	testl	%eax, %eax
	je	.L11
	.loc 1 89 0
	pushl	%ecx
	pushl	-28(%ebp)
	pushl	%ebx
	pushl	%esi
	jmp	.L27
.L10:
	.loc 1 93 0
	testl	%eax, %eax
	je	.L11
	.loc 1 94 0
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	%edi
.L27:
	call	*%eax
.LVL16:
	addl	$16, %esp
	.loc 1 98 0
	testl	%eax, %eax
	movl	%eax, -28(%ebp)
	je	.L11
	.loc 1 99 0
	subl	$12, %esp
	pushl	%esi
	call	del_file
.LVL17:
	.loc 1 100 0
	addl	$16, %esp
	movl	-28(%ebp), %eax
	jmp	.L8
.LVL18:
.L11:
	.loc 1 103 0
	movl	%esi, 8(%ebp)
	.loc 1 104 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL19:
	popl	%edi
	.cfi_restore 7
.LVL20:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 103 0
	jmp	get_fd
.LVL21:
.L13:
	.cfi_restore_state
	.loc 1 54 0
	movl	$-22, %eax
	jmp	.L8
.LVL22:
.L14:
	.loc 1 59 0
	movl	$-91, %eax
	jmp	.L8
.LVL23:
.L16:
	.loc 1 84 0
	movl	$-23, %eax
.LVL24:
.L8:
	.loc 1 104 0
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
.LFE24:
	.size	aos_open, .-aos_open
	.section	.text.unlikely.aos_open
.LCOLDE1:
	.section	.text.aos_open
.LHOTE1:
	.section	.text.unlikely.aos_close,"ax",@progbits
.LCOLDB2:
	.section	.text.aos_close,"ax",@progbits
.LHOTB2:
	.globl	aos_close
	.type	aos_close, @function
aos_close:
.LFB25:
	.loc 1 107 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 118 0
	movl	$-2, %ebx
	.loc 1 112 0
	subl	$12, %esp
	pushl	8(%ebp)
	call	get_file
.LVL26:
	.loc 1 114 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L29
	movl	%eax, %esi
	.loc 1 122 0
	movl	(%eax), %eax
.LVL27:
	.loc 1 125 0
	movl	(%eax), %eax
.LVL28:
	movl	4(%eax), %eax
	.loc 1 131 0
	testl	%eax, %eax
	je	.L31
	.loc 1 132 0
	subl	$12, %esp
	pushl	%esi
.LVL29:
	call	*%eax
.LVL30:
	addl	$16, %esp
.L31:
	.loc 1 136 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL31:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L29
	.loc 1 140 0
	subl	$12, %esp
	pushl	%esi
	call	del_file
.LVL32:
	.loc 1 142 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL33:
	.loc 1 144 0
	addl	$16, %esp
.LVL34:
.L29:
	.loc 1 145 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
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
	.size	aos_close, .-aos_close
	.section	.text.unlikely.aos_close
.LCOLDE2:
	.section	.text.aos_close
.LHOTE2:
	.section	.text.unlikely.aos_read,"ax",@progbits
.LCOLDB3:
	.section	.text.aos_read,"ax",@progbits
.LHOTB3:
	.globl	aos_read
	.type	aos_read, @function
aos_read:
.LFB26:
	.loc 1 148 0
	.cfi_startproc
.LVL35:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 148 0
	movl	16(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 153 0
	subl	$12, %esp
	pushl	8(%ebp)
	call	get_file
.LVL36:
	.loc 1 155 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L46
	.loc 1 163 0
	movl	(%eax), %edx
.LVL37:
	.loc 1 166 0
	movl	(%edx), %edx
.LVL38:
	movl	8(%edx), %edx
	.loc 1 170 0
	testl	%edx, %edx
	je	.L48
	.loc 1 171 0
	movl	%esi, 16(%ebp)
.LVL39:
	movl	%ebx, 12(%ebp)
	movl	%eax, 8(%ebp)
	.loc 1 176 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 171 0
	jmp	*%edx
.LVL40:
.L46:
	.cfi_restore_state
	.loc 1 159 0
	movl	$-2, %eax
.LVL41:
	jmp	.L44
.LVL42:
.L48:
	.loc 1 149 0
	orl	$-1, %eax
.LVL43:
.L44:
	.loc 1 176 0
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
.LFE26:
	.size	aos_read, .-aos_read
	.section	.text.unlikely.aos_read
.LCOLDE3:
	.section	.text.aos_read
.LHOTE3:
	.section	.text.unlikely.aos_write,"ax",@progbits
.LCOLDB4:
	.section	.text.aos_write,"ax",@progbits
.LHOTB4:
	.globl	aos_write
	.type	aos_write, @function
aos_write:
.LFB27:
	.loc 1 179 0
	.cfi_startproc
.LVL44:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 179 0
	movl	16(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 184 0
	subl	$12, %esp
	pushl	8(%ebp)
	call	get_file
.LVL45:
	.loc 1 186 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L55
	.loc 1 194 0
	movl	(%eax), %edx
.LVL46:
	.loc 1 197 0
	movl	(%edx), %edx
.LVL47:
	movl	12(%edx), %edx
	.loc 1 201 0
	testl	%edx, %edx
	je	.L57
	.loc 1 202 0
	movl	%esi, 16(%ebp)
.LVL48:
	movl	%ebx, 12(%ebp)
	movl	%eax, 8(%ebp)
	.loc 1 207 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 202 0
	jmp	*%edx
.LVL49:
.L55:
	.cfi_restore_state
	.loc 1 190 0
	movl	$-2, %eax
.LVL50:
	jmp	.L53
.LVL51:
.L57:
	.loc 1 180 0
	orl	$-1, %eax
.LVL52:
.L53:
	.loc 1 207 0
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
	.size	aos_write, .-aos_write
	.section	.text.unlikely.aos_write
.LCOLDE4:
	.section	.text.aos_write
.LHOTE4:
	.section	.text.unlikely.aos_ioctl,"ax",@progbits
.LCOLDB5:
	.section	.text.aos_ioctl,"ax",@progbits
.LHOTB5:
	.globl	aos_ioctl
	.type	aos_ioctl, @function
aos_ioctl:
.LFB28:
	.loc 1 210 0
	.cfi_startproc
.LVL53:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 210 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	movl	16(%ebp), %esi
	.loc 1 215 0
	testl	%eax, %eax
	js	.L64
	.loc 1 219 0
	subl	$12, %esp
	pushl	%eax
	call	get_file
.LVL54:
	.loc 1 221 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L65
	.loc 1 225 0
	movl	(%eax), %edx
.LVL55:
	.loc 1 227 0
	cmpb	$3, 16(%edx)
	.loc 1 228 0
	movl	(%edx), %edx
.LVL56:
	.loc 1 227 0
	jne	.L63
	.loc 1 228 0
	movl	52(%edx), %edx
	jmp	.L71
.L63:
	.loc 1 232 0
	movl	16(%edx), %edx
.L71:
	testl	%edx, %edx
	je	.L67
	.loc 1 233 0
	movl	%esi, 16(%ebp)
.LVL57:
	movl	%ebx, 12(%ebp)
	movl	%eax, 8(%ebp)
	.loc 1 238 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 233 0
	jmp	*%edx
.LVL58:
.L64:
	.cfi_restore_state
	.loc 1 216 0
	movl	$-22, %eax
.LVL59:
	jmp	.L62
.LVL60:
.L65:
	.loc 1 222 0
	movl	$-2, %eax
.LVL61:
	jmp	.L62
.LVL62:
.L67:
	.loc 1 211 0
	movl	$-88, %eax
.LVL63:
.L62:
	.loc 1 238 0
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
	.size	aos_ioctl, .-aos_ioctl
	.section	.text.unlikely.aos_ioctl
.LCOLDE5:
	.section	.text.aos_ioctl
.LHOTE5:
	.section	.text.unlikely.aos_lseek,"ax",@progbits
.LCOLDB6:
	.section	.text.aos_lseek,"ax",@progbits
.LHOTB6:
	.globl	aos_lseek
	.type	aos_lseek, @function
aos_lseek:
.LFB29:
	.loc 1 241 0
	.cfi_startproc
.LVL64:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 241 0
	movl	16(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 246 0
	subl	$12, %esp
	pushl	8(%ebp)
	call	get_file
.LVL65:
	.loc 1 248 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L74
	.loc 1 252 0
	movl	(%eax), %edx
.LVL66:
	.loc 1 254 0
	cmpb	$3, 16(%edx)
	jne	.L76
	.loc 1 255 0
	movl	(%edx), %edx
.LVL67:
	movl	16(%edx), %edx
	testl	%edx, %edx
	je	.L76
	.loc 1 256 0
	movl	%esi, 16(%ebp)
.LVL68:
	movl	%ebx, 12(%ebp)
	movl	%eax, 8(%ebp)
	.loc 1 261 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 256 0
	jmp	*%edx
.LVL69:
.L74:
	.cfi_restore_state
	.loc 1 249 0
	movl	$-2, %eax
.LVL70:
	jmp	.L73
.LVL71:
.L76:
	.loc 1 244 0
	movl	$-88, %eax
.LVL72:
.L73:
	.loc 1 261 0
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
.LFE29:
	.size	aos_lseek, .-aos_lseek
	.section	.text.unlikely.aos_lseek
.LCOLDE6:
	.section	.text.aos_lseek
.LHOTE6:
	.section	.text.unlikely.aos_sync,"ax",@progbits
.LCOLDB7:
	.section	.text.aos_sync,"ax",@progbits
.LHOTB7:
	.globl	aos_sync
	.type	aos_sync, @function
aos_sync:
.LFB30:
	.loc 1 264 0
	.cfi_startproc
.LVL73:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 269 0
	pushl	8(%ebp)
	call	get_file
.LVL74:
	.loc 1 271 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L80
	.loc 1 275 0
	movl	(%eax), %edx
.LVL75:
	.loc 1 277 0
	cmpb	$3, 16(%edx)
	jne	.L82
	.loc 1 278 0
	movl	(%edx), %edx
.LVL76:
	movl	20(%edx), %edx
	testl	%edx, %edx
	je	.L82
	.loc 1 279 0
	movl	%eax, 8(%ebp)
.LVL77:
	.loc 1 284 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 279 0
	jmp	*%edx
.LVL78:
.L80:
	.cfi_restore_state
	.loc 1 272 0
	movl	$-2, %eax
.LVL79:
	jmp	.L79
.LVL80:
.L82:
	.loc 1 267 0
	movl	$-88, %eax
.LVL81:
.L79:
	.loc 1 284 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	aos_sync, .-aos_sync
	.section	.text.unlikely.aos_sync
.LCOLDE7:
	.section	.text.aos_sync
.LHOTE7:
	.section	.text.unlikely.aos_stat,"ax",@progbits
.LCOLDB8:
	.section	.text.aos_stat,"ax",@progbits
.LHOTB8:
	.globl	aos_stat
	.type	aos_stat, @function
aos_stat:
.LFB31:
	.loc 1 287 0
	.cfi_startproc
.LVL82:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 293 0
	movl	$-22, %eax
	.loc 1 287 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 287 0
	movl	8(%ebp), %esi
	.loc 1 292 0
	testl	%esi, %esi
	je	.L85
	.loc 1 296 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL83:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L85
	.loc 1 300 0
	subl	$12, %esp
	pushl	%esi
	call	inode_open
.LVL84:
	.loc 1 302 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L86
	.loc 1 303 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL85:
	.loc 1 304 0
	addl	$16, %esp
	movl	$-19, %eax
	jmp	.L85
.LVL86:
.L86:
	.loc 1 307 0
	subl	$12, %esp
	movl	%eax, -28(%ebp)
	pushl	%eax
	call	new_file
.LVL87:
	movl	%eax, %ebx
.LVL88:
	.loc 1 309 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL89:
	.loc 1 311 0
	addl	$16, %esp
	testl	%ebx, %ebx
	.loc 1 312 0
	movl	$-2, %eax
	.loc 1 311 0
	je	.L85
	.loc 1 315 0
	movl	-28(%ebp), %edx
	.loc 1 290 0
	movl	$-88, %edi
	.loc 1 315 0
	cmpb	$3, 16(%edx)
	jne	.L87
	.loc 1 316 0
	movl	(%edx), %eax
	movl	24(%eax), %eax
	testl	%eax, %eax
	je	.L87
	.loc 1 317 0
	pushl	%edx
	pushl	12(%ebp)
	pushl	%esi
	pushl	%ebx
	call	*%eax
.LVL90:
	addl	$16, %esp
	movl	%eax, %edi
.LVL91:
.L87:
	.loc 1 321 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL92:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L85
	.loc 1 325 0
	subl	$12, %esp
	pushl	%ebx
	call	del_file
.LVL93:
	.loc 1 327 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL94:
	.loc 1 328 0
	addl	$16, %esp
	movl	%edi, %eax
.LVL95:
.L85:
	.loc 1 329 0
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
.LFE31:
	.size	aos_stat, .-aos_stat
	.section	.text.unlikely.aos_stat
.LCOLDE8:
	.section	.text.aos_stat
.LHOTE8:
	.section	.text.unlikely.aos_unlink,"ax",@progbits
.LCOLDB9:
	.section	.text.aos_unlink,"ax",@progbits
.LHOTB9:
	.globl	aos_unlink
	.type	aos_unlink, @function
aos_unlink:
.LFB32:
	.loc 1 332 0
	.cfi_startproc
.LVL96:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 338 0
	movl	$-22, %eax
	.loc 1 332 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 332 0
	movl	8(%ebp), %esi
	.loc 1 337 0
	testl	%esi, %esi
	je	.L96
	.loc 1 341 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL97:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L96
	.loc 1 345 0
	subl	$12, %esp
	pushl	%esi
	call	inode_open
.LVL98:
	.loc 1 347 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L97
	.loc 1 348 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL99:
	.loc 1 349 0
	addl	$16, %esp
	movl	$-19, %eax
	jmp	.L96
.LVL100:
.L97:
	.loc 1 352 0
	subl	$12, %esp
	movl	%eax, -28(%ebp)
	pushl	%eax
	call	new_file
.LVL101:
	movl	%eax, %ebx
.LVL102:
	.loc 1 354 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL103:
	.loc 1 356 0
	addl	$16, %esp
	testl	%ebx, %ebx
	.loc 1 357 0
	movl	$-2, %eax
	.loc 1 356 0
	je	.L96
	.loc 1 360 0
	movl	-28(%ebp), %edx
	.loc 1 335 0
	movl	$-88, %edi
	.loc 1 360 0
	cmpb	$3, 16(%edx)
	jne	.L98
	.loc 1 361 0
	movl	(%edx), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L98
	.loc 1 362 0
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	%ebx
	call	*%eax
.LVL104:
	addl	$16, %esp
	movl	%eax, %edi
.LVL105:
.L98:
	.loc 1 366 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL106:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L96
	.loc 1 370 0
	subl	$12, %esp
	pushl	%ebx
	call	del_file
.LVL107:
	.loc 1 372 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL108:
	.loc 1 373 0
	addl	$16, %esp
	movl	%edi, %eax
.LVL109:
.L96:
	.loc 1 374 0
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
.LFE32:
	.size	aos_unlink, .-aos_unlink
	.section	.text.unlikely.aos_unlink
.LCOLDE9:
	.section	.text.aos_unlink
.LHOTE9:
	.section	.text.unlikely.aos_rename,"ax",@progbits
.LCOLDB10:
	.section	.text.aos_rename,"ax",@progbits
.LHOTB10:
	.globl	aos_rename
	.type	aos_rename, @function
aos_rename:
.LFB33:
	.loc 1 377 0
	.cfi_startproc
.LVL110:
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
	.loc 1 377 0
	movl	8(%ebp), %esi
	.loc 1 382 0
	testl	%esi, %esi
	je	.L110
	cmpl	$0, 12(%ebp)
	je	.L110
	.loc 1 386 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL111:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L107
	.loc 1 390 0
	subl	$12, %esp
	pushl	%esi
	call	inode_open
.LVL112:
	.loc 1 392 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L108
	.loc 1 393 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL113:
	.loc 1 394 0
	addl	$16, %esp
	movl	$-19, %eax
	jmp	.L107
.LVL114:
.L108:
	.loc 1 397 0
	subl	$12, %esp
	movl	%eax, -28(%ebp)
	pushl	%eax
	call	new_file
.LVL115:
	movl	%eax, %ebx
.LVL116:
	.loc 1 399 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL117:
	.loc 1 401 0
	addl	$16, %esp
	testl	%ebx, %ebx
	.loc 1 402 0
	movl	$-2, %eax
	.loc 1 401 0
	je	.L107
	.loc 1 405 0
	movl	-28(%ebp), %edx
	.loc 1 380 0
	movl	$-88, %edi
	.loc 1 405 0
	cmpb	$3, 16(%edx)
	jne	.L109
	.loc 1 406 0
	movl	(%edx), %eax
	movl	32(%eax), %eax
	testl	%eax, %eax
	je	.L109
	.loc 1 407 0
	pushl	%edx
	pushl	12(%ebp)
	pushl	%esi
	pushl	%ebx
	call	*%eax
.LVL118:
	addl	$16, %esp
	movl	%eax, %edi
.LVL119:
.L109:
	.loc 1 411 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL120:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L107
	.loc 1 415 0
	subl	$12, %esp
	pushl	%ebx
	call	del_file
.LVL121:
	.loc 1 417 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL122:
	.loc 1 418 0
	addl	$16, %esp
	movl	%edi, %eax
	jmp	.L107
.LVL123:
.L110:
	.loc 1 383 0
	movl	$-22, %eax
.LVL124:
.L107:
	.loc 1 419 0
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
.LFE33:
	.size	aos_rename, .-aos_rename
	.section	.text.unlikely.aos_rename
.LCOLDE10:
	.section	.text.aos_rename
.LHOTE10:
	.section	.text.unlikely.aos_opendir,"ax",@progbits
.LCOLDB11:
	.section	.text.aos_opendir,"ax",@progbits
.LHOTB11:
	.globl	aos_opendir
	.type	aos_opendir, @function
aos_opendir:
.LFB34:
	.loc 1 422 0
	.cfi_startproc
.LVL125:
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
	.loc 1 422 0
	movl	8(%ebp), %edi
	.loc 1 427 0
	testl	%edi, %edi
	je	.L139
	.loc 1 431 0
	pushl	%ebx
	pushl	%ebx
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL126:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L139
	.loc 1 435 0
	subl	$12, %esp
	pushl	%edi
	call	inode_open
.LVL127:
	.loc 1 437 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 435 0
	movl	%eax, %ebx
.LVL128:
	.loc 1 437 0
	jne	.L121
	.loc 1 438 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	jmp	.L138
.L121:
	.loc 1 442 0
	subl	$12, %esp
	pushl	%eax
	call	new_file
.LVL129:
	movl	%eax, %esi
.LVL130:
	.loc 1 444 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL131:
	.loc 1 446 0
	addl	$16, %esp
	testl	%esi, %esi
	je	.L139
	.loc 1 450 0
	cmpb	$3, 16(%ebx)
	je	.L122
.LVL132:
.L124:
	.loc 1 457 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL133:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L139
	.loc 1 461 0
	subl	$12, %esp
	pushl	%esi
	call	del_file
.LVL134:
	.loc 1 463 0
	movl	$g_vfs_mutex, (%esp)
	jmp	.L138
.LVL135:
.L122:
	.loc 1 451 0
	movl	(%ebx), %eax
	movl	36(%eax), %eax
	testl	%eax, %eax
	je	.L124
	.loc 1 452 0
	pushl	%edx
	pushl	%edx
	pushl	%edi
	pushl	%esi
	call	*%eax
.LVL136:
	.loc 1 456 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 452 0
	movl	%eax, %ebx
.LVL137:
	.loc 1 456 0
	je	.L124
	.loc 1 467 0
	subl	$12, %esp
	pushl	%esi
	call	get_fd
.LVL138:
	.loc 1 468 0
	addl	$16, %esp
	.loc 1 467 0
	movl	%eax, (%ebx)
	.loc 1 468 0
	movl	%ebx, %eax
	jmp	.L119
.LVL139:
.L138:
	.loc 1 463 0
	call	aos_mutex_unlock
.LVL140:
	.loc 1 464 0
	addl	$16, %esp
.L139:
	xorl	%eax, %eax
.L119:
	.loc 1 469 0
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
.LFE34:
	.size	aos_opendir, .-aos_opendir
	.section	.text.unlikely.aos_opendir
.LCOLDE11:
	.section	.text.aos_opendir
.LHOTE11:
	.section	.text.unlikely.aos_closedir,"ax",@progbits
.LCOLDB12:
	.section	.text.aos_closedir,"ax",@progbits
.LHOTB12:
	.globl	aos_closedir
	.type	aos_closedir, @function
aos_closedir:
.LFB35:
	.loc 1 472 0
	.cfi_startproc
.LVL141:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 478 0
	movl	$-22, %eax
	.loc 1 472 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 472 0
	movl	8(%ebp), %edi
	.loc 1 477 0
	testl	%edi, %edi
	je	.L141
	.loc 1 481 0
	subl	$12, %esp
	pushl	(%edi)
	call	get_file
.LVL142:
	movl	%eax, %esi
.LVL143:
	.loc 1 483 0
	addl	$16, %esp
	.loc 1 484 0
	movl	$-2, %eax
.LVL144:
	.loc 1 483 0
	testl	%esi, %esi
	je	.L141
	.loc 1 487 0
	movl	(%esi), %eax
.LVL145:
	.loc 1 475 0
	movl	$-88, %ebx
	.loc 1 489 0
	cmpb	$3, 16(%eax)
	jne	.L142
	.loc 1 490 0
	movl	(%eax), %eax
.LVL146:
	movl	44(%eax), %eax
	testl	%eax, %eax
	je	.L142
	.loc 1 491 0
	pushl	%edx
.LVL147:
	pushl	%edx
	pushl	%edi
	pushl	%esi
	call	*%eax
.LVL148:
	addl	$16, %esp
	movl	%eax, %ebx
.LVL149:
.L142:
	.loc 1 495 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL150:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L141
	.loc 1 499 0
	subl	$12, %esp
	pushl	%esi
	call	del_file
.LVL151:
	.loc 1 501 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL152:
	.loc 1 503 0
	addl	$16, %esp
	movl	%ebx, %eax
.LVL153:
.L141:
	.loc 1 504 0
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
.LFE35:
	.size	aos_closedir, .-aos_closedir
	.section	.text.unlikely.aos_closedir
.LCOLDE12:
	.section	.text.aos_closedir
.LHOTE12:
	.section	.text.unlikely.aos_readdir,"ax",@progbits
.LCOLDB13:
	.section	.text.aos_readdir,"ax",@progbits
.LHOTB13:
	.globl	aos_readdir
	.type	aos_readdir, @function
aos_readdir:
.LFB36:
	.loc 1 507 0
	.cfi_startproc
.LVL154:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 507 0
	movl	8(%ebp), %ebx
	.loc 1 512 0
	testl	%ebx, %ebx
	je	.L150
	.loc 1 516 0
	subl	$12, %esp
	pushl	(%ebx)
	call	get_file
.LVL155:
	.loc 1 517 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L150
	.loc 1 521 0
	movl	(%eax), %edx
.LVL156:
	.loc 1 523 0
	cmpb	$3, 16(%edx)
	jne	.L150
	.loc 1 524 0
	movl	(%edx), %edx
.LVL157:
	movl	40(%edx), %edx
	testl	%edx, %edx
	je	.L150
	.loc 1 525 0
	pushl	%ecx
.LVL158:
	pushl	%ecx
	pushl	%ebx
	pushl	%eax
	call	*%edx
.LVL159:
	.loc 1 529 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L153
.LVL160:
.L150:
	.loc 1 533 0
	xorl	%eax, %eax
.L153:
	.loc 1 534 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	aos_readdir, .-aos_readdir
	.section	.text.unlikely.aos_readdir
.LCOLDE13:
	.section	.text.aos_readdir
.LHOTE13:
	.section	.text.unlikely.aos_mkdir,"ax",@progbits
.LCOLDB14:
	.section	.text.aos_mkdir,"ax",@progbits
.LHOTB14:
	.globl	aos_mkdir
	.type	aos_mkdir, @function
aos_mkdir:
.LFB37:
	.loc 1 537 0
	.cfi_startproc
.LVL161:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 543 0
	movl	$-22, %eax
	.loc 1 537 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 537 0
	movl	8(%ebp), %esi
	.loc 1 542 0
	testl	%esi, %esi
	je	.L166
	.loc 1 546 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL162:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L166
	.loc 1 550 0
	subl	$12, %esp
	pushl	%esi
	call	inode_open
.LVL163:
	.loc 1 552 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L167
	.loc 1 553 0
	subl	$12, %esp
	pushl	$g_vfs_mutex
	call	aos_mutex_unlock
.LVL164:
	.loc 1 554 0
	addl	$16, %esp
	movl	$-19, %eax
	jmp	.L166
.LVL165:
.L167:
	.loc 1 557 0
	subl	$12, %esp
	movl	%eax, -28(%ebp)
	pushl	%eax
	call	new_file
.LVL166:
	movl	%eax, %ebx
.LVL167:
	.loc 1 559 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL168:
	.loc 1 561 0
	addl	$16, %esp
	testl	%ebx, %ebx
	.loc 1 562 0
	movl	$-2, %eax
	.loc 1 561 0
	je	.L166
	.loc 1 565 0
	movl	-28(%ebp), %edx
	.loc 1 540 0
	movl	$-88, %edi
	.loc 1 565 0
	cmpb	$3, 16(%edx)
	jne	.L168
	.loc 1 566 0
	movl	(%edx), %eax
	movl	48(%eax), %eax
	testl	%eax, %eax
	je	.L168
	.loc 1 567 0
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	%ebx
	call	*%eax
.LVL169:
	addl	$16, %esp
	movl	%eax, %edi
.LVL170:
.L168:
	.loc 1 571 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_vfs_mutex
	call	aos_mutex_lock
.LVL171:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L166
	.loc 1 575 0
	subl	$12, %esp
	pushl	%ebx
	call	del_file
.LVL172:
	.loc 1 577 0
	movl	$g_vfs_mutex, (%esp)
	call	aos_mutex_unlock
.LVL173:
	.loc 1 578 0
	addl	$16, %esp
	movl	%edi, %eax
.LVL174:
.L166:
	.loc 1 579 0
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
	.size	aos_mkdir, .-aos_mkdir
	.section	.text.unlikely.aos_mkdir
.LCOLDE14:
	.section	.text.aos_mkdir
.LHOTE14:
	.globl	g_vfs_mutex
	.section	.bss.g_vfs_mutex,"aw",@nobits
	.align 4
	.type	g_vfs_mutex, @object
	.size	g_vfs_mutex, 4
g_vfs_mutex:
	.zero	4
	.section	.bss.g_vfs_init,"aw",@nobits
	.type	g_vfs_init, @object
	.size	g_vfs_init, 1
g_vfs_init:
	.zero	1
	.text
.Letext0:
	.section	.text.unlikely.vfs_init
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h"
	.file 9 "./include/aos/types.h"
	.file 10 "./include/aos/kernel.h"
	.file 11 "./include/aos/vfs.h"
	.file 12 "./kernel/vfs/include/vfs_inode.h"
	.file 13 "./include/hal/sensor.h"
	.file 14 "./include/aos/log.h"
	.file 15 "./kernel/vfs/include/vfs_file.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x10a4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF155
	.byte	0xc
	.long	.LASF156
	.long	.LASF157
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
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
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x1c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x20
	.long	0x4c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x2c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x36
	.long	0x3e
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x3a
	.long	0x45
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x3d
	.long	0x45
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x49
	.long	0x45
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x58
	.long	0x53
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x64
	.long	0xb4
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x91
	.long	0x73
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF24
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.long	.LASF25
	.byte	0x5
	.byte	0xcb
	.long	0x45
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF26
	.uleb128 0x3
	.long	.LASF27
	.byte	0x6
	.byte	0x28
	.long	0x4c
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x71
	.long	0x9e
	.uleb128 0x3
	.long	.LASF29
	.byte	0x7
	.byte	0x76
	.long	0xa9
	.uleb128 0x6
	.byte	0x4
	.long	0x120
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x9b
	.long	0xe0
	.uleb128 0x3
	.long	.LASF31
	.byte	0x7
	.byte	0xad
	.long	0xf6
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0xb1
	.long	0xbf
	.uleb128 0x3
	.long	.LASF33
	.byte	0x7
	.byte	0xb5
	.long	0xca
	.uleb128 0x3
	.long	.LASF34
	.byte	0x7
	.byte	0xb9
	.long	0xd5
	.uleb128 0x3
	.long	.LASF35
	.byte	0x7
	.byte	0xc8
	.long	0x101
	.uleb128 0x3
	.long	.LASF36
	.byte	0x7
	.byte	0xcd
	.long	0xeb
	.uleb128 0x3
	.long	.LASF37
	.byte	0x7
	.byte	0xd2
	.long	0x115
	.uleb128 0x6
	.byte	0x4
	.long	0x1ac
	.uleb128 0x7
	.long	0x120
	.uleb128 0x8
	.long	.LASF55
	.byte	0x3c
	.byte	0x8
	.byte	0x1b
	.long	0x28a
	.uleb128 0x9
	.long	.LASF38
	.byte	0x8
	.byte	0x1d
	.long	0x164
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.byte	0x1e
	.long	0x14e
	.byte	0x2
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0x1f
	.long	0x190
	.byte	0x4
	.uleb128 0x9
	.long	.LASF41
	.byte	0x8
	.byte	0x20
	.long	0x19b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF42
	.byte	0x8
	.byte	0x21
	.long	0x16f
	.byte	0xa
	.uleb128 0x9
	.long	.LASF43
	.byte	0x8
	.byte	0x22
	.long	0x17a
	.byte	0xc
	.uleb128 0x9
	.long	.LASF44
	.byte	0x8
	.byte	0x23
	.long	0x164
	.byte	0xe
	.uleb128 0x9
	.long	.LASF45
	.byte	0x8
	.byte	0x24
	.long	0x159
	.byte	0x10
	.uleb128 0x9
	.long	.LASF46
	.byte	0x8
	.byte	0x32
	.long	0x127
	.byte	0x14
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0x33
	.long	0x4c
	.byte	0x18
	.uleb128 0x9
	.long	.LASF48
	.byte	0x8
	.byte	0x34
	.long	0x127
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF49
	.byte	0x8
	.byte	0x35
	.long	0x4c
	.byte	0x20
	.uleb128 0x9
	.long	.LASF50
	.byte	0x8
	.byte	0x36
	.long	0x127
	.byte	0x24
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x37
	.long	0x4c
	.byte	0x28
	.uleb128 0x9
	.long	.LASF52
	.byte	0x8
	.byte	0x38
	.long	0x13d
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x39
	.long	0x132
	.byte	0x30
	.uleb128 0x9
	.long	.LASF54
	.byte	0x8
	.byte	0x3a
	.long	0x28a
	.byte	0x34
	.byte	0
	.uleb128 0xa
	.long	0x4c
	.long	0x29a
	.uleb128 0xb
	.long	0x10c
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x8
	.byte	0x9
	.byte	0x11
	.long	0x2ca
	.uleb128 0xc
	.string	"fd"
	.byte	0x9
	.byte	0x12
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF57
	.byte	0x9
	.byte	0x13
	.long	0x3e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF58
	.byte	0x9
	.byte	0x14
	.long	0x3e
	.byte	0x6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0xa
	.byte	0x13
	.long	0x2df
	.uleb128 0xc
	.string	"hdl"
	.byte	0xa
	.byte	0x14
	.long	0x113
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF59
	.byte	0xa
	.byte	0x15
	.long	0x2ca
	.uleb128 0x3
	.long	.LASF60
	.byte	0xa
	.byte	0x18
	.long	0x2df
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.long	0x322
	.uleb128 0x9
	.long	.LASF61
	.byte	0xb
	.byte	0x11
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF62
	.byte	0xb
	.byte	0x12
	.long	0x81
	.byte	0x4
	.uleb128 0x9
	.long	.LASF63
	.byte	0xb
	.byte	0x13
	.long	0x322
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	0x120
	.long	0x331
	.uleb128 0xe
	.long	0x10c
	.byte	0
	.uleb128 0x3
	.long	.LASF64
	.byte	0xb
	.byte	0x14
	.long	0x2f5
	.uleb128 0xd
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.long	0x35d
	.uleb128 0x9
	.long	.LASF65
	.byte	0xb
	.byte	0x17
	.long	0x73
	.byte	0
	.uleb128 0x9
	.long	.LASF66
	.byte	0xb
	.byte	0x18
	.long	0x73
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF67
	.byte	0xb
	.byte	0x19
	.long	0x33c
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF68
	.uleb128 0xf
	.byte	0x4
	.long	0x7a
	.byte	0xc
	.byte	0x11
	.long	0x394
	.uleb128 0x10
	.long	.LASF69
	.byte	0
	.uleb128 0x10
	.long	.LASF70
	.byte	0x1
	.uleb128 0x10
	.long	.LASF71
	.byte	0x2
	.uleb128 0x10
	.long	.LASF72
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.long	.LASF73
	.byte	0xc
	.byte	0x2b
	.long	0x3f4
	.uleb128 0x8
	.long	.LASF74
	.byte	0x18
	.byte	0xc
	.byte	0x46
	.long	0x3f4
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x47
	.long	0x5d4
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xc
	.byte	0x48
	.long	0x5e9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF77
	.byte	0xc
	.byte	0x49
	.long	0x608
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0xc
	.byte	0x4a
	.long	0x62e
	.byte	0xc
	.uleb128 0x9
	.long	.LASF79
	.byte	0xc
	.byte	0x4b
	.long	0x64d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF80
	.byte	0xc
	.byte	0x4d
	.long	0x676
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.long	0x39f
	.uleb128 0x3
	.long	.LASF81
	.byte	0xc
	.byte	0x2c
	.long	0x4b9
	.uleb128 0x8
	.long	.LASF82
	.byte	0x38
	.byte	0xc
	.byte	0x51
	.long	0x4b9
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.byte	0x52
	.long	0x695
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0xc
	.byte	0x53
	.long	0x5e9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF77
	.byte	0xc
	.byte	0x54
	.long	0x6b4
	.byte	0x8
	.uleb128 0x9
	.long	.LASF78
	.byte	0xc
	.byte	0x55
	.long	0x6d3
	.byte	0xc
	.uleb128 0x9
	.long	.LASF83
	.byte	0xc
	.byte	0x56
	.long	0x6f2
	.byte	0x10
	.uleb128 0x9
	.long	.LASF84
	.byte	0xc
	.byte	0x57
	.long	0x5e9
	.byte	0x14
	.uleb128 0x9
	.long	.LASF55
	.byte	0xc
	.byte	0x58
	.long	0x717
	.byte	0x18
	.uleb128 0x9
	.long	.LASF85
	.byte	0xc
	.byte	0x59
	.long	0x731
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF86
	.byte	0xc
	.byte	0x5a
	.long	0x750
	.byte	0x20
	.uleb128 0x9
	.long	.LASF87
	.byte	0xc
	.byte	0x5b
	.long	0x770
	.byte	0x24
	.uleb128 0x9
	.long	.LASF88
	.byte	0xc
	.byte	0x5c
	.long	0x790
	.byte	0x28
	.uleb128 0x9
	.long	.LASF89
	.byte	0xc
	.byte	0x5d
	.long	0x7aa
	.byte	0x2c
	.uleb128 0x9
	.long	.LASF90
	.byte	0xc
	.byte	0x5e
	.long	0x731
	.byte	0x30
	.uleb128 0x9
	.long	.LASF79
	.byte	0xc
	.byte	0x5f
	.long	0x64d
	.byte	0x34
	.byte	0
	.uleb128 0x7
	.long	0x404
	.uleb128 0x11
	.long	.LASF158
	.byte	0x4
	.byte	0xc
	.byte	0x2e
	.long	0x4e1
	.uleb128 0x12
	.long	.LASF91
	.byte	0xc
	.byte	0x2f
	.long	0x4e1
	.uleb128 0x12
	.long	.LASF92
	.byte	0xc
	.byte	0x30
	.long	0x4e7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x394
	.uleb128 0x6
	.byte	0x4
	.long	0x3f9
	.uleb128 0xd
	.byte	0x18
	.byte	0xc
	.byte	0x34
	.long	0x54a
	.uleb128 0xc
	.string	"ops"
	.byte	0xc
	.byte	0x35
	.long	0x4be
	.byte	0
	.uleb128 0x9
	.long	.LASF93
	.byte	0xc
	.byte	0x36
	.long	0x113
	.byte	0x4
	.uleb128 0x9
	.long	.LASF94
	.byte	0xc
	.byte	0x37
	.long	0x148
	.byte	0x8
	.uleb128 0x9
	.long	.LASF95
	.byte	0xc
	.byte	0x38
	.long	0x73
	.byte	0xc
	.uleb128 0x9
	.long	.LASF96
	.byte	0xc
	.byte	0x39
	.long	0x81
	.byte	0x10
	.uleb128 0x9
	.long	.LASF97
	.byte	0xc
	.byte	0x3a
	.long	0x81
	.byte	0x11
	.uleb128 0x9
	.long	.LASF98
	.byte	0xc
	.byte	0x3b
	.long	0x2ea
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.long	.LASF99
	.byte	0xc
	.byte	0x3c
	.long	0x4ed
	.uleb128 0xd
	.byte	0xc
	.byte	0xc
	.byte	0x3e
	.long	0x582
	.uleb128 0x9
	.long	.LASF100
	.byte	0xc
	.byte	0x3f
	.long	0x582
	.byte	0
	.uleb128 0x9
	.long	.LASF101
	.byte	0xc
	.byte	0x40
	.long	0x113
	.byte	0x4
	.uleb128 0x9
	.long	.LASF102
	.byte	0xc
	.byte	0x41
	.long	0x8c
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x54a
	.uleb128 0x3
	.long	.LASF103
	.byte	0xc
	.byte	0x42
	.long	0x555
	.uleb128 0x3
	.long	.LASF104
	.byte	0xc
	.byte	0x45
	.long	0x59e
	.uleb128 0x6
	.byte	0x4
	.long	0x5a4
	.uleb128 0x13
	.long	0x5b4
	.uleb128 0x14
	.long	0x5b4
	.uleb128 0x14
	.long	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x29a
	.uleb128 0x15
	.long	0x73
	.long	0x5ce
	.uleb128 0x14
	.long	0x582
	.uleb128 0x14
	.long	0x5ce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x588
	.uleb128 0x6
	.byte	0x4
	.long	0x5ba
	.uleb128 0x15
	.long	0x73
	.long	0x5e9
	.uleb128 0x14
	.long	0x5ce
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5da
	.uleb128 0x15
	.long	0x185
	.long	0x608
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x113
	.uleb128 0x14
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5ef
	.uleb128 0x15
	.long	0x185
	.long	0x627
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x627
	.uleb128 0x14
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x62d
	.uleb128 0x16
	.uleb128 0x6
	.byte	0x4
	.long	0x60e
	.uleb128 0x15
	.long	0x73
	.long	0x64d
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x73
	.uleb128 0x14
	.long	0x5e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x634
	.uleb128 0x15
	.long	0x73
	.long	0x676
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x368
	.uleb128 0x14
	.long	0x593
	.uleb128 0x14
	.long	0x5b4
	.uleb128 0x14
	.long	0x113
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x653
	.uleb128 0x15
	.long	0x73
	.long	0x695
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x1a6
	.uleb128 0x14
	.long	0x73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x67c
	.uleb128 0x15
	.long	0x185
	.long	0x6b4
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x148
	.uleb128 0x14
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x69b
	.uleb128 0x15
	.long	0x185
	.long	0x6d3
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x1a6
	.uleb128 0x14
	.long	0x8c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6ba
	.uleb128 0x15
	.long	0x159
	.long	0x6f2
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x159
	.uleb128 0x14
	.long	0x73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x6d9
	.uleb128 0x15
	.long	0x73
	.long	0x711
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x1a6
	.uleb128 0x14
	.long	0x711
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1b1
	.uleb128 0x6
	.byte	0x4
	.long	0x6f8
	.uleb128 0x15
	.long	0x73
	.long	0x731
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x1a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x71d
	.uleb128 0x15
	.long	0x73
	.long	0x750
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x1a6
	.uleb128 0x14
	.long	0x1a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x737
	.uleb128 0x15
	.long	0x76a
	.long	0x76a
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x1a6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x35d
	.uleb128 0x6
	.byte	0x4
	.long	0x756
	.uleb128 0x15
	.long	0x78a
	.long	0x78a
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x76a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x331
	.uleb128 0x6
	.byte	0x4
	.long	0x776
	.uleb128 0x15
	.long	0x73
	.long	0x7aa
	.uleb128 0x14
	.long	0x5ce
	.uleb128 0x14
	.long	0x76a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x796
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF105
	.uleb128 0xf
	.byte	0x4
	.long	0x7a
	.byte	0xd
	.byte	0x48
	.long	0x812
	.uleb128 0x10
	.long	.LASF106
	.byte	0
	.uleb128 0x10
	.long	.LASF107
	.byte	0x1
	.uleb128 0x10
	.long	.LASF108
	.byte	0x2
	.uleb128 0x10
	.long	.LASF109
	.byte	0x3
	.uleb128 0x10
	.long	.LASF110
	.byte	0x4
	.uleb128 0x10
	.long	.LASF111
	.byte	0x5
	.uleb128 0x10
	.long	.LASF112
	.byte	0x6
	.uleb128 0x10
	.long	.LASF113
	.byte	0x7
	.uleb128 0x10
	.long	.LASF114
	.byte	0x8
	.uleb128 0x10
	.long	.LASF115
	.byte	0x9
	.uleb128 0x10
	.long	.LASF116
	.byte	0xa
	.uleb128 0x10
	.long	.LASF117
	.byte	0xb
	.uleb128 0x10
	.long	.LASF118
	.byte	0xc
	.byte	0
	.uleb128 0x17
	.long	.LASF119
	.byte	0x1
	.byte	0x1b
	.long	0x73
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x84d
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x1d
	.long	0x73
	.long	.LLST0
	.uleb128 0x19
	.long	.LVL1
	.long	0x1044
	.uleb128 0x19
	.long	.LVL2
	.long	0x104f
	.byte	0
	.uleb128 0x1a
	.long	.LASF120
	.byte	0x1
	.byte	0x2e
	.long	0x73
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ff
	.uleb128 0x1b
	.long	.LASF121
	.byte	0x1
	.byte	0x2e
	.long	0x1a6
	.long	.LLST1
	.uleb128 0x1c
	.long	.LASF122
	.byte	0x1
	.byte	0x2e
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF123
	.byte	0x1
	.byte	0x30
	.long	0x5ce
	.long	.LLST2
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.byte	0x31
	.long	0x582
	.long	.LLST3
	.uleb128 0x18
	.string	"len"
	.byte	0x1
	.byte	0x32
	.long	0x8c
	.long	.LLST4
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x33
	.long	0x73
	.long	.LLST5
	.uleb128 0x19
	.long	.LVL7
	.long	0x105a
	.uleb128 0x19
	.long	.LVL8
	.long	0x1065
	.uleb128 0x19
	.long	.LVL10
	.long	0x1070
	.uleb128 0x19
	.long	.LVL13
	.long	0x107b
	.uleb128 0x19
	.long	.LVL15
	.long	0x1070
	.uleb128 0x19
	.long	.LVL17
	.long	0x1086
	.uleb128 0x1e
	.long	.LVL21
	.long	0x1091
	.byte	0
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x1
	.byte	0x6a
	.long	0x73
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x975
	.uleb128 0x1f
	.string	"fd"
	.byte	0x1
	.byte	0x6a
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0x6c
	.long	0x73
	.long	.LLST6
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.byte	0x6d
	.long	0x5ce
	.long	.LLST7
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.byte	0x6e
	.long	0x582
	.long	.LLST8
	.uleb128 0x19
	.long	.LVL26
	.long	0x109c
	.uleb128 0x19
	.long	.LVL31
	.long	0x105a
	.uleb128 0x19
	.long	.LVL32
	.long	0x1086
	.uleb128 0x19
	.long	.LVL33
	.long	0x1070
	.byte	0
	.uleb128 0x20
	.long	.LASF127
	.byte	0x1
	.byte	0x93
	.long	0x185
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e9
	.uleb128 0x1f
	.string	"fd"
	.byte	0x1
	.byte	0x93
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.byte	0x93
	.long	0x113
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x1
	.byte	0x93
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF126
	.byte	0x1
	.byte	0x95
	.long	0x185
	.sleb128 -1
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.byte	0x96
	.long	0x5ce
	.long	.LLST9
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.byte	0x97
	.long	0x582
	.long	.LLST10
	.uleb128 0x19
	.long	.LVL36
	.long	0x109c
	.byte	0
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.byte	0xb2
	.long	0x185
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xa5d
	.uleb128 0x1f
	.string	"fd"
	.byte	0x1
	.byte	0xb2
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"buf"
	.byte	0x1
	.byte	0xb2
	.long	0x627
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x1
	.byte	0xb2
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF129
	.byte	0x1
	.byte	0xb4
	.long	0x185
	.sleb128 -1
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.byte	0xb5
	.long	0x5ce
	.long	.LLST11
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.byte	0xb6
	.long	0x582
	.long	.LLST12
	.uleb128 0x19
	.long	.LVL45
	.long	0x109c
	.byte	0
	.uleb128 0x20
	.long	.LASF130
	.byte	0x1
	.byte	0xd1
	.long	0x73
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xad5
	.uleb128 0x22
	.string	"fd"
	.byte	0x1
	.byte	0xd1
	.long	0x73
	.long	.LLST13
	.uleb128 0x22
	.string	"cmd"
	.byte	0x1
	.byte	0xd1
	.long	0x73
	.long	.LLST14
	.uleb128 0x22
	.string	"arg"
	.byte	0x1
	.byte	0xd1
	.long	0x5e
	.long	.LLST15
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0xd3
	.long	0x73
	.sleb128 -88
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.byte	0xd4
	.long	0x5ce
	.long	.LLST16
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.byte	0xd5
	.long	0x582
	.long	.LLST17
	.uleb128 0x19
	.long	.LVL54
	.long	0x109c
	.byte	0
	.uleb128 0x20
	.long	.LASF131
	.byte	0x1
	.byte	0xf0
	.long	0x159
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xb4a
	.uleb128 0x1f
	.string	"fd"
	.byte	0x1
	.byte	0xf0
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x1
	.byte	0xf0
	.long	0x159
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF132
	.byte	0x1
	.byte	0xf0
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"f"
	.byte	0x1
	.byte	0xf2
	.long	0x5ce
	.long	.LLST18
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.byte	0xf3
	.long	0x582
	.long	.LLST19
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0xf4
	.long	0x73
	.sleb128 -88
	.uleb128 0x19
	.long	.LVL65
	.long	0x109c
	.byte	0
	.uleb128 0x24
	.long	.LASF133
	.byte	0x1
	.value	0x107
	.long	0x73
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xba8
	.uleb128 0x25
	.string	"fd"
	.byte	0x1
	.value	0x107
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x109
	.long	0x5ce
	.long	.LLST20
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.value	0x10a
	.long	0x582
	.long	.LLST21
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x10b
	.long	0x73
	.sleb128 -88
	.uleb128 0x19
	.long	.LVL74
	.long	0x109c
	.byte	0
	.uleb128 0x29
	.long	.LASF134
	.byte	0x1
	.value	0x11e
	.long	0x73
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xc68
	.uleb128 0x2a
	.long	.LASF121
	.byte	0x1
	.value	0x11e
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.string	"st"
	.byte	0x1
	.value	0x11e
	.long	0x711
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF123
	.byte	0x1
	.value	0x120
	.long	0x5ce
	.long	.LLST22
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.value	0x121
	.long	0x582
	.long	.LLST23
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x122
	.long	0x73
	.long	.LLST24
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x122
	.long	0x73
	.long	.LLST25
	.uleb128 0x19
	.long	.LVL83
	.long	0x105a
	.uleb128 0x19
	.long	.LVL84
	.long	0x1065
	.uleb128 0x19
	.long	.LVL85
	.long	0x1070
	.uleb128 0x19
	.long	.LVL87
	.long	0x107b
	.uleb128 0x19
	.long	.LVL89
	.long	0x1070
	.uleb128 0x19
	.long	.LVL92
	.long	0x105a
	.uleb128 0x19
	.long	.LVL93
	.long	0x1086
	.uleb128 0x19
	.long	.LVL94
	.long	0x1070
	.byte	0
	.uleb128 0x29
	.long	.LASF135
	.byte	0x1
	.value	0x14b
	.long	0x73
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xd18
	.uleb128 0x2a
	.long	.LASF121
	.byte	0x1
	.value	0x14b
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x14d
	.long	0x5ce
	.long	.LLST26
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.value	0x14e
	.long	0x582
	.long	.LLST27
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x14f
	.long	0x73
	.long	.LLST28
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x14f
	.long	0x73
	.long	.LLST29
	.uleb128 0x19
	.long	.LVL97
	.long	0x105a
	.uleb128 0x19
	.long	.LVL98
	.long	0x1065
	.uleb128 0x19
	.long	.LVL99
	.long	0x1070
	.uleb128 0x19
	.long	.LVL101
	.long	0x107b
	.uleb128 0x19
	.long	.LVL103
	.long	0x1070
	.uleb128 0x19
	.long	.LVL106
	.long	0x105a
	.uleb128 0x19
	.long	.LVL107
	.long	0x1086
	.uleb128 0x19
	.long	.LVL108
	.long	0x1070
	.byte	0
	.uleb128 0x29
	.long	.LASF136
	.byte	0x1
	.value	0x178
	.long	0x73
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd7
	.uleb128 0x2a
	.long	.LASF137
	.byte	0x1
	.value	0x178
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF138
	.byte	0x1
	.value	0x178
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x17a
	.long	0x5ce
	.long	.LLST30
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.value	0x17b
	.long	0x582
	.long	.LLST31
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x17c
	.long	0x73
	.long	.LLST32
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x17c
	.long	0x73
	.long	.LLST33
	.uleb128 0x19
	.long	.LVL111
	.long	0x105a
	.uleb128 0x19
	.long	.LVL112
	.long	0x1065
	.uleb128 0x19
	.long	.LVL113
	.long	0x1070
	.uleb128 0x19
	.long	.LVL115
	.long	0x107b
	.uleb128 0x19
	.long	.LVL117
	.long	0x1070
	.uleb128 0x19
	.long	.LVL120
	.long	0x105a
	.uleb128 0x19
	.long	.LVL121
	.long	0x1086
	.uleb128 0x19
	.long	.LVL122
	.long	0x1070
	.byte	0
	.uleb128 0x29
	.long	.LASF139
	.byte	0x1
	.value	0x1a5
	.long	0x76a
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xe78
	.uleb128 0x2a
	.long	.LASF121
	.byte	0x1
	.value	0x1a5
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF123
	.byte	0x1
	.value	0x1a7
	.long	0x5ce
	.long	.LLST34
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.value	0x1a8
	.long	0x582
	.long	.LLST35
	.uleb128 0x26
	.string	"dp"
	.byte	0x1
	.value	0x1a9
	.long	0x76a
	.long	.LLST36
	.uleb128 0x19
	.long	.LVL126
	.long	0x105a
	.uleb128 0x19
	.long	.LVL127
	.long	0x1065
	.uleb128 0x19
	.long	.LVL129
	.long	0x107b
	.uleb128 0x19
	.long	.LVL131
	.long	0x1070
	.uleb128 0x19
	.long	.LVL133
	.long	0x105a
	.uleb128 0x19
	.long	.LVL134
	.long	0x1086
	.uleb128 0x19
	.long	.LVL138
	.long	0x1091
	.uleb128 0x19
	.long	.LVL140
	.long	0x1070
	.byte	0
	.uleb128 0x29
	.long	.LASF140
	.byte	0x1
	.value	0x1d7
	.long	0x73
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xf04
	.uleb128 0x25
	.string	"dir"
	.byte	0x1
	.value	0x1d7
	.long	0x76a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x1d9
	.long	0x5ce
	.long	.LLST37
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.value	0x1da
	.long	0x582
	.long	.LLST38
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x1db
	.long	0x73
	.long	.LLST39
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x1db
	.long	0x73
	.long	.LLST40
	.uleb128 0x19
	.long	.LVL142
	.long	0x109c
	.uleb128 0x19
	.long	.LVL150
	.long	0x105a
	.uleb128 0x19
	.long	.LVL151
	.long	0x1086
	.uleb128 0x19
	.long	.LVL152
	.long	0x1070
	.byte	0
	.uleb128 0x29
	.long	.LASF141
	.byte	0x1
	.value	0x1fa
	.long	0x78a
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xf65
	.uleb128 0x25
	.string	"dir"
	.byte	0x1
	.value	0x1fa
	.long	0x76a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"f"
	.byte	0x1
	.value	0x1fc
	.long	0x5ce
	.long	.LLST41
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.value	0x1fd
	.long	0x582
	.long	.LLST42
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x1fe
	.long	0x78a
	.long	.LLST43
	.uleb128 0x19
	.long	.LVL155
	.long	0x109c
	.byte	0
	.uleb128 0x29
	.long	.LASF142
	.byte	0x1
	.value	0x218
	.long	0x73
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x1017
	.uleb128 0x2a
	.long	.LASF121
	.byte	0x1
	.value	0x218
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF123
	.byte	0x1
	.value	0x21a
	.long	0x5ce
	.long	.LLST44
	.uleb128 0x27
	.long	.LASF100
	.byte	0x1
	.value	0x21b
	.long	0x582
	.long	.LLST45
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x21c
	.long	0x73
	.long	.LLST46
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x21c
	.long	0x73
	.long	.LLST47
	.uleb128 0x19
	.long	.LVL162
	.long	0x105a
	.uleb128 0x19
	.long	.LVL163
	.long	0x1065
	.uleb128 0x19
	.long	.LVL164
	.long	0x1070
	.uleb128 0x19
	.long	.LVL166
	.long	0x107b
	.uleb128 0x19
	.long	.LVL168
	.long	0x1070
	.uleb128 0x19
	.long	.LVL171
	.long	0x105a
	.uleb128 0x19
	.long	.LVL172
	.long	0x1086
	.uleb128 0x19
	.long	.LVL173
	.long	0x1070
	.byte	0
	.uleb128 0x2b
	.long	.LASF143
	.byte	0x1
	.byte	0x18
	.long	0x81
	.uleb128 0x5
	.byte	0x3
	.long	g_vfs_init
	.uleb128 0x2c
	.long	.LASF144
	.byte	0xe
	.byte	0x17
	.long	0x7a
	.uleb128 0x2d
	.long	.LASF145
	.byte	0x1
	.byte	0x19
	.long	0x2ea
	.uleb128 0x5
	.byte	0x3
	.long	g_vfs_mutex
	.uleb128 0x2e
	.long	.LASF146
	.long	.LASF146
	.byte	0xa
	.byte	0x8c
	.uleb128 0x2e
	.long	.LASF147
	.long	.LASF147
	.byte	0xc
	.byte	0x62
	.uleb128 0x2e
	.long	.LASF148
	.long	.LASF148
	.byte	0xa
	.byte	0x9e
	.uleb128 0x2e
	.long	.LASF149
	.long	.LASF149
	.byte	0xc
	.byte	0x65
	.uleb128 0x2e
	.long	.LASF150
	.long	.LASF150
	.byte	0xa
	.byte	0xa7
	.uleb128 0x2e
	.long	.LASF151
	.long	.LASF151
	.byte	0xf
	.byte	0x10
	.uleb128 0x2e
	.long	.LASF152
	.long	.LASF152
	.byte	0xf
	.byte	0x12
	.uleb128 0x2e
	.long	.LASF153
	.long	.LASF153
	.byte	0xf
	.byte	0xc
	.uleb128 0x2e
	.long	.LASF154
	.long	.LASF154
	.byte	0xf
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x17
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
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2-1
	.value	0x1
	.byte	0x50
	.long	.LVL2-1
	.long	.LVL3
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL21
	.long	.LVL22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL14
	.long	.LVL15-1
	.value	0x1
	.byte	0x50
	.long	.LVL15-1
	.long	.LVL19
	.value	0x1
	.byte	0x56
	.long	.LVL19
	.long	.LVL21-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL10-1
	.long	.LVL11
	.value	0x1
	.byte	0x57
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL20
	.value	0x1
	.byte	0x57
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL6
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7-1
	.value	0x1
	.byte	0x51
	.long	.LVL21
	.long	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	.LVL17-1
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL21
	.long	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL25
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32-1
	.value	0x1
	.byte	0x50
	.long	.LVL32-1
	.long	.LVL34
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LVL34
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST8:
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	0
	.long	0
.LLST9:
	.long	.LVL36
	.long	.LVL40-1
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL41
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x52
	.long	.LVL38
	.long	.LVL39
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL42
	.long	.LVL43
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL45
	.long	.LVL49-1
	.value	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x50
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x52
	.long	.LVL47
	.long	.LVL48
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL53
	.long	.LVL58
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	.LVL59
	.long	.LFE28
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST14:
	.long	.LVL53
	.long	.LVL58
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL58
	.long	.LVL60
	.value	0x1
	.byte	0x53
	.long	.LVL60
	.long	.LFE28
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST15:
	.long	.LVL53
	.long	.LVL58
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL58
	.long	.LVL60
	.value	0x1
	.byte	0x56
	.long	.LVL60
	.long	.LFE28
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST16:
	.long	.LVL54
	.long	.LVL58-1
	.value	0x1
	.byte	0x50
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x50
	.long	.LVL62
	.long	.LVL63
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL55
	.long	.LVL56
	.value	0x1
	.byte	0x52
	.long	.LVL56
	.long	.LVL57
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL62
	.long	.LVL63
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST18:
	.long	.LVL65
	.long	.LVL69-1
	.value	0x1
	.byte	0x50
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x50
	.long	.LVL71
	.long	.LVL72
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST19:
	.long	.LVL66
	.long	.LVL67
	.value	0x1
	.byte	0x52
	.long	.LVL67
	.long	.LVL68
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL71
	.long	.LVL72
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL74
	.long	.LVL78-1
	.value	0x1
	.byte	0x50
	.long	.LVL78
	.long	.LVL79
	.value	0x1
	.byte	0x50
	.long	.LVL80
	.long	.LVL81
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST21:
	.long	.LVL75
	.long	.LVL76
	.value	0x1
	.byte	0x52
	.long	.LVL76
	.long	.LVL77
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL80
	.long	.LVL81
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL88
	.long	.LVL89-1
	.value	0x1
	.byte	0x50
	.long	.LVL89-1
	.long	.LVL95
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST23:
	.long	.LVL84
	.long	.LVL85-1
	.value	0x1
	.byte	0x50
	.long	.LVL86
	.long	.LVL87-1
	.value	0x1
	.byte	0x50
	.long	.LVL87-1
	.long	.LVL95
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST24:
	.long	.LVL83
	.long	.LVL84-1
	.value	0x1
	.byte	0x50
	.long	.LVL92
	.long	.LVL93-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL82
	.long	.LVL91
	.value	0x3
	.byte	0x9
	.byte	0xa8
	.byte	0x9f
	.long	.LVL91
	.long	.LVL95
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST26:
	.long	.LVL102
	.long	.LVL103-1
	.value	0x1
	.byte	0x50
	.long	.LVL103-1
	.long	.LVL109
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST27:
	.long	.LVL98
	.long	.LVL99-1
	.value	0x1
	.byte	0x50
	.long	.LVL100
	.long	.LVL101-1
	.value	0x1
	.byte	0x50
	.long	.LVL101-1
	.long	.LVL109
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST28:
	.long	.LVL97
	.long	.LVL98-1
	.value	0x1
	.byte	0x50
	.long	.LVL106
	.long	.LVL107-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL96
	.long	.LVL105
	.value	0x3
	.byte	0x9
	.byte	0xa8
	.byte	0x9f
	.long	.LVL105
	.long	.LVL109
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST30:
	.long	.LVL116
	.long	.LVL117-1
	.value	0x1
	.byte	0x50
	.long	.LVL117-1
	.long	.LVL123
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST31:
	.long	.LVL112
	.long	.LVL113-1
	.value	0x1
	.byte	0x50
	.long	.LVL114
	.long	.LVL115-1
	.value	0x1
	.byte	0x50
	.long	.LVL115-1
	.long	.LVL123
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST32:
	.long	.LVL111
	.long	.LVL112-1
	.value	0x1
	.byte	0x50
	.long	.LVL120
	.long	.LVL121-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST33:
	.long	.LVL110
	.long	.LVL119
	.value	0x3
	.byte	0x9
	.byte	0xa8
	.byte	0x9f
	.long	.LVL119
	.long	.LVL123
	.value	0x1
	.byte	0x57
	.long	.LVL123
	.long	.LVL124
	.value	0x3
	.byte	0x9
	.byte	0xa8
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL130
	.long	.LVL131-1
	.value	0x1
	.byte	0x50
	.long	.LVL131-1
	.long	.LVL139
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST35:
	.long	.LVL128
	.long	.LVL129-1
	.value	0x1
	.byte	0x50
	.long	.LVL129-1
	.long	.LVL132
	.value	0x1
	.byte	0x53
	.long	.LVL135
	.long	.LVL137
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST36:
	.long	.LVL125
	.long	.LVL132
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL135
	.long	.LVL137
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL137
	.long	.LVL138-1
	.value	0x1
	.byte	0x50
	.long	.LVL138-1
	.long	.LVL139
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST37:
	.long	.LVL143
	.long	.LVL144
	.value	0x1
	.byte	0x50
	.long	.LVL144
	.long	.LVL153
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST38:
	.long	.LVL145
	.long	.LVL146
	.value	0x1
	.byte	0x50
	.long	.LVL146
	.long	.LVL147
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	0
	.long	0
.LLST39:
	.long	.LVL150
	.long	.LVL151-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST40:
	.long	.LVL141
	.long	.LVL149
	.value	0x3
	.byte	0x9
	.byte	0xa8
	.byte	0x9f
	.long	.LVL149
	.long	.LVL153
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST41:
	.long	.LVL155
	.long	.LVL159-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST42:
	.long	.LVL156
	.long	.LVL157
	.value	0x1
	.byte	0x52
	.long	.LVL157
	.long	.LVL158
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST43:
	.long	.LVL154
	.long	.LVL159
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LVL160
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST44:
	.long	.LVL167
	.long	.LVL168-1
	.value	0x1
	.byte	0x50
	.long	.LVL168-1
	.long	.LVL174
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST45:
	.long	.LVL163
	.long	.LVL164-1
	.value	0x1
	.byte	0x50
	.long	.LVL165
	.long	.LVL166-1
	.value	0x1
	.byte	0x50
	.long	.LVL166-1
	.long	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST46:
	.long	.LVL162
	.long	.LVL163-1
	.value	0x1
	.byte	0x50
	.long	.LVL171
	.long	.LVL172-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST47:
	.long	.LVL161
	.long	.LVL170
	.value	0x3
	.byte	0x9
	.byte	0xa8
	.byte	0x9f
	.long	.LVL170
	.long	.LVL174
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x8c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
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
	.long	.LFB28
	.long	.LFE28-.LFB28
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
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.long	.LFB28
	.long	.LFE28
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
	.long	.LFB37
	.long	.LFE37
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"__off_t"
.LASF19:
	.string	"__gid_t"
.LASF92:
	.string	"i_fops"
.LASF136:
	.string	"aos_rename"
.LASF12:
	.string	"size_t"
.LASF133:
	.string	"aos_sync"
.LASF76:
	.string	"close"
.LASF5:
	.string	"__uint8_t"
.LASF113:
	.string	"TAG_DEV_UV"
.LASF35:
	.string	"ssize_t"
.LASF74:
	.string	"file_ops"
.LASF96:
	.string	"type"
.LASF121:
	.string	"path"
.LASF139:
	.string	"aos_opendir"
.LASF9:
	.string	"long long unsigned int"
.LASF148:
	.string	"aos_mutex_lock"
.LASF151:
	.string	"new_file"
.LASF119:
	.string	"vfs_init"
.LASF55:
	.string	"stat"
.LASF157:
	.string	"/home/stone/Documents/pca"
.LASF90:
	.string	"mkdir"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"st_mode"
.LASF111:
	.string	"TAG_DEV_BARO"
.LASF39:
	.string	"st_ino"
.LASF21:
	.string	"__mode_t"
.LASF81:
	.string	"fs_ops_t"
.LASF72:
	.string	"VFS_TYPE_FS_DEV"
.LASF70:
	.string	"VFS_TYPE_CHAR_DEV"
.LASF130:
	.string	"aos_ioctl"
.LASF14:
	.string	"__blkcnt_t"
.LASF4:
	.string	"long int"
.LASF114:
	.string	"TAG_DEV_HUMI"
.LASF60:
	.string	"aos_mutex_t"
.LASF156:
	.string	"src/vfs.c"
.LASF58:
	.string	"revents"
.LASF86:
	.string	"rename"
.LASF106:
	.string	"TAG_DEV_ACC"
.LASF63:
	.string	"d_name"
.LASF135:
	.string	"aos_unlink"
.LASF37:
	.string	"nlink_t"
.LASF154:
	.string	"get_file"
.LASF134:
	.string	"aos_stat"
.LASF31:
	.string	"off_t"
.LASF34:
	.string	"gid_t"
.LASF6:
	.string	"__uint32_t"
.LASF56:
	.string	"pollfd"
.LASF53:
	.string	"st_blocks"
.LASF42:
	.string	"st_uid"
.LASF144:
	.string	"aos_log_level"
.LASF47:
	.string	"st_spare1"
.LASF49:
	.string	"st_spare2"
.LASF51:
	.string	"st_spare3"
.LASF54:
	.string	"st_spare4"
.LASF107:
	.string	"TAG_DEV_MAG"
.LASF10:
	.string	"unsigned int"
.LASF116:
	.string	"TAG_DEV_HR"
.LASF28:
	.string	"blkcnt_t"
.LASF7:
	.string	"long unsigned int"
.LASF16:
	.string	"_off_t"
.LASF99:
	.string	"inode_t"
.LASF132:
	.string	"whence"
.LASF65:
	.string	"dd_vfs_fd"
.LASF33:
	.string	"uid_t"
.LASF89:
	.string	"closedir"
.LASF3:
	.string	"short unsigned int"
.LASF83:
	.string	"lseek"
.LASF64:
	.string	"aos_dirent_t"
.LASF67:
	.string	"aos_dir_t"
.LASF117:
	.string	"TAG_DEV_GPS"
.LASF25:
	.string	"__nlink_t"
.LASF46:
	.string	"st_atime"
.LASF131:
	.string	"aos_lseek"
.LASF88:
	.string	"readdir"
.LASF45:
	.string	"st_size"
.LASF158:
	.string	"inode_ops_t"
.LASF71:
	.string	"VFS_TYPE_BLOCK_DEV"
.LASF94:
	.string	"i_name"
.LASF153:
	.string	"get_fd"
.LASF78:
	.string	"write"
.LASF85:
	.string	"unlink"
.LASF80:
	.string	"poll"
.LASF24:
	.string	"sizetype"
.LASF66:
	.string	"dd_rsv"
.LASF75:
	.string	"open"
.LASF17:
	.string	"__dev_t"
.LASF147:
	.string	"inode_init"
.LASF141:
	.string	"aos_readdir"
.LASF59:
	.string	"aos_hdl_t"
.LASF61:
	.string	"d_ino"
.LASF57:
	.string	"events"
.LASF15:
	.string	"__blksize_t"
.LASF140:
	.string	"aos_closedir"
.LASF145:
	.string	"g_vfs_mutex"
.LASF32:
	.string	"dev_t"
.LASF27:
	.string	"time_t"
.LASF124:
	.string	"aos_close"
.LASF150:
	.string	"aos_mutex_unlock"
.LASF105:
	.string	"float"
.LASF152:
	.string	"del_file"
.LASF29:
	.string	"blksize_t"
.LASF125:
	.string	"nbytes"
.LASF50:
	.string	"st_ctime"
.LASF84:
	.string	"sync"
.LASF97:
	.string	"refs"
.LASF87:
	.string	"opendir"
.LASF98:
	.string	"mutex"
.LASF68:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF146:
	.string	"aos_mutex_new"
.LASF93:
	.string	"i_arg"
.LASF100:
	.string	"node"
.LASF62:
	.string	"d_type"
.LASF2:
	.string	"short int"
.LASF123:
	.string	"file"
.LASF52:
	.string	"st_blksize"
.LASF142:
	.string	"aos_mkdir"
.LASF115:
	.string	"TAG_DEV_HALL"
.LASF143:
	.string	"g_vfs_init"
.LASF128:
	.string	"aos_write"
.LASF20:
	.string	"__ino_t"
.LASF155:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF41:
	.string	"st_nlink"
.LASF126:
	.string	"nread"
.LASF44:
	.string	"st_rdev"
.LASF13:
	.string	"long double"
.LASF108:
	.string	"TAG_DEV_GYRO"
.LASF26:
	.string	"char"
.LASF101:
	.string	"f_arg"
.LASF103:
	.string	"file_t"
.LASF95:
	.string	"i_flags"
.LASF112:
	.string	"TAG_DEV_TEMP"
.LASF11:
	.string	"uint8_t"
.LASF79:
	.string	"ioctl"
.LASF18:
	.string	"__uid_t"
.LASF129:
	.string	"nwrite"
.LASF102:
	.string	"offset"
.LASF127:
	.string	"aos_read"
.LASF43:
	.string	"st_gid"
.LASF69:
	.string	"VFS_TYPE_NOT_INIT"
.LASF110:
	.string	"TAG_DEV_PS"
.LASF104:
	.string	"poll_notify_t"
.LASF91:
	.string	"i_ops"
.LASF36:
	.string	"mode_t"
.LASF38:
	.string	"st_dev"
.LASF23:
	.string	"_ssize_t"
.LASF122:
	.string	"flags"
.LASF73:
	.string	"file_ops_t"
.LASF82:
	.string	"fs_ops"
.LASF77:
	.string	"read"
.LASF138:
	.string	"newpath"
.LASF120:
	.string	"aos_open"
.LASF118:
	.string	"TAG_DEV_SENSOR_NUM_MAX"
.LASF149:
	.string	"inode_open"
.LASF137:
	.string	"oldpath"
.LASF109:
	.string	"TAG_DEV_ALS"
.LASF48:
	.string	"st_mtime"
.LASF30:
	.string	"ino_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
