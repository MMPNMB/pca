	.file	"newlib_stub.c"
	.text
.Ltext0:
	.section	.text.unlikely._execve_r,"ax",@progbits
.LCOLDB0:
	.section	.text._execve_r,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely._execve_r
.Ltext_cold0:
	.section	.text._execve_r
	.globl	_execve_r
	.type	_execve_r, @function
_execve_r:
.LFB50:
	.file 1 "utility/libc/newlib_stub.c"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 15 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 17 0
	orl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE50:
	.size	_execve_r, .-_execve_r
	.section	.text.unlikely._execve_r
.LCOLDE0:
	.section	.text._execve_r
.LHOTE0:
	.section	.text.unlikely._fcntl_r,"ax",@progbits
.LCOLDB1:
	.section	.text._fcntl_r,"ax",@progbits
.LHOTB1:
	.globl	_fcntl_r
	.type	_fcntl_r, @function
_fcntl_r:
.LFB51:
	.loc 1 20 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 21 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 23 0
	orl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE51:
	.size	_fcntl_r, .-_fcntl_r
	.section	.text.unlikely._fcntl_r
.LCOLDE1:
	.section	.text._fcntl_r
.LHOTE1:
	.section	.text.unlikely._fork_r,"ax",@progbits
.LCOLDB2:
	.section	.text._fork_r,"ax",@progbits
.LHOTB2:
	.globl	_fork_r
	.type	_fork_r, @function
_fork_r:
.LFB52:
	.loc 1 26 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 27 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 29 0
	orl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE52:
	.size	_fork_r, .-_fork_r
	.section	.text.unlikely._fork_r
.LCOLDE2:
	.section	.text._fork_r
.LHOTE2:
	.section	.text.unlikely._getpid_r,"ax",@progbits
.LCOLDB3:
	.section	.text._getpid_r,"ax",@progbits
.LHOTB3:
	.globl	_getpid_r
	.type	_getpid_r, @function
_getpid_r:
.LFB53:
	.loc 1 32 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 33 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 35 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE53:
	.size	_getpid_r, .-_getpid_r
	.section	.text.unlikely._getpid_r
.LCOLDE3:
	.section	.text._getpid_r
.LHOTE3:
	.section	.text.unlikely._isatty_r,"ax",@progbits
.LCOLDB4:
	.section	.text._isatty_r,"ax",@progbits
.LHOTB4:
	.globl	_isatty_r
	.type	_isatty_r, @function
_isatty_r:
.LFB54:
	.loc 1 38 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 39 0
	cmpl	$2, 12(%ebp)
	jbe	.L10
	.loc 1 43 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 44 0
	orl	$-1, %eax
.L10:
	.loc 1 45 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE54:
	.size	_isatty_r, .-_isatty_r
	.section	.text.unlikely._isatty_r
.LCOLDE4:
	.section	.text._isatty_r
.LHOTE4:
	.section	.text.unlikely._kill_r,"ax",@progbits
.LCOLDB5:
	.section	.text._kill_r,"ax",@progbits
.LHOTB5:
	.globl	_kill_r
	.type	_kill_r, @function
_kill_r:
.LFB55:
	.loc 1 48 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 49 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 51 0
	orl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE55:
	.size	_kill_r, .-_kill_r
	.section	.text.unlikely._kill_r
.LCOLDE5:
	.section	.text._kill_r
.LHOTE5:
	.section	.text.unlikely._link_r,"ax",@progbits
.LCOLDB6:
	.section	.text._link_r,"ax",@progbits
.LHOTB6:
	.globl	_link_r
	.type	_link_r, @function
_link_r:
.LFB56:
	.loc 1 54 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 55 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 57 0
	orl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE56:
	.size	_link_r, .-_link_r
	.section	.text.unlikely._link_r
.LCOLDE6:
	.section	.text._link_r
.LHOTE6:
	.section	.text.unlikely._lseek_r,"ax",@progbits
.LCOLDB7:
	.section	.text._lseek_r,"ax",@progbits
.LHOTB7:
	.globl	_lseek_r
	.type	_lseek_r, @function
_lseek_r:
.LFB57:
	.loc 1 60 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 61 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 63 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE57:
	.size	_lseek_r, .-_lseek_r
	.section	.text.unlikely._lseek_r
.LCOLDE7:
	.section	.text._lseek_r
.LHOTE7:
	.section	.text.unlikely._mkdir_r,"ax",@progbits
.LCOLDB8:
	.section	.text._mkdir_r,"ax",@progbits
.LHOTB8:
	.globl	_mkdir_r
	.type	_mkdir_r, @function
_mkdir_r:
.LFB58:
	.loc 1 66 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 67 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 69 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE58:
	.size	_mkdir_r, .-_mkdir_r
	.section	.text.unlikely._mkdir_r
.LCOLDE8:
	.section	.text._mkdir_r
.LHOTE8:
	.section	.text.unlikely._open_r,"ax",@progbits
.LCOLDB9:
	.section	.text._open_r,"ax",@progbits
.LHOTB9:
	.globl	_open_r
	.type	_open_r, @function
_open_r:
.LFB59:
	.loc 1 72 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 73 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 75 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE59:
	.size	_open_r, .-_open_r
	.section	.text.unlikely._open_r
.LCOLDE9:
	.section	.text._open_r
.LHOTE9:
	.section	.text.unlikely._close_r,"ax",@progbits
.LCOLDB10:
	.section	.text._close_r,"ax",@progbits
.LHOTB10:
	.globl	_close_r
	.type	_close_r, @function
_close_r:
.LFB60:
	.loc 1 78 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 79 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 81 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE60:
	.size	_close_r, .-_close_r
	.section	.text.unlikely._close_r
.LCOLDE10:
	.section	.text._close_r
.LHOTE10:
	.section	.text.unlikely._read_r,"ax",@progbits
.LCOLDB11:
	.section	.text._read_r,"ax",@progbits
.LHOTB11:
	.globl	_read_r
	.type	_read_r, @function
_read_r:
.LFB61:
	.loc 1 84 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 85 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 87 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE61:
	.size	_read_r, .-_read_r
	.section	.text.unlikely._read_r
.LCOLDE11:
	.section	.text._read_r
.LHOTE11:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC12:
	.string	"\r"
	.section	.text.unlikely._write_r,"ax",@progbits
.LCOLDB13:
	.section	.text._write_r,"ax",@progbits
.LHOTB13:
	.globl	_write_r
	.type	_write_r, @function
_write_r:
.LFB62:
	.loc 1 93 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 98 0
	movl	$8, %ecx
	.loc 1 93 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 98 0
	leal	-60(%ebp), %esi
	.loc 1 93 0
	subl	$60, %esp
	.loc 1 98 0
	movl	%esi, %edi
	.loc 1 93 0
	movl	16(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL13:
	.loc 1 98 0
	rep stosl
	.loc 1 101 0
	movl	12(%ebp), %eax
	decl	%eax
	cmpl	$1, %eax
	ja	.L30
	movl	20(%ebp), %edi
	addl	%ebx, %edi
	jmp	.L32
.L30:
	.loc 1 107 0 discriminator 1
	call	__errno
.LVL14:
	.loc 1 107 0 discriminator 1
	movl	$9, (%eax)
	.loc 1 108 0 discriminator 1
	orl	$-1, %eax
	jmp	.L33
.LVL15:
.L35:
	.loc 1 112 0
	cmpb	$10, (%ebx)
	jne	.L34
	.loc 1 113 0
	pushl	$0
	pushl	$1
	pushl	$.LC12
	pushl	%esi
	call	hal_uart_send
.LVL16:
	addl	$16, %esp
.L34:
	.loc 1 116 0 discriminator 2
	pushl	$0
	pushl	$1
	pushl	%ebx
	pushl	%esi
	.loc 1 117 0 discriminator 2
	incl	%ebx
.LVL17:
	.loc 1 116 0 discriminator 2
	call	hal_uart_send
.LVL18:
	.loc 1 117 0 discriminator 2
	addl	$16, %esp
.LVL19:
.L32:
	.loc 1 111 0 discriminator 1
	cmpl	%edi, %ebx
	jne	.L35
	.loc 1 120 0
	movl	20(%ebp), %eax
.LVL20:
.L33:
	.loc 1 121 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L36
	call	__stack_chk_fail
.LVL21:
.L36:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL22:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE62:
	.size	_write_r, .-_write_r
	.section	.text.unlikely._write_r
.LCOLDE13:
	.section	.text._write_r
.LHOTE13:
	.section	.text.unlikely._fstat_r,"ax",@progbits
.LCOLDB14:
	.section	.text._fstat_r,"ax",@progbits
.LHOTB14:
	.globl	_fstat_r
	.type	_fstat_r, @function
_fstat_r:
.LFB63:
	.loc 1 124 0
	.cfi_startproc
.LVL23:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 125 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 127 0
	orl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE63:
	.size	_fstat_r, .-_fstat_r
	.section	.text.unlikely._fstat_r
.LCOLDE14:
	.section	.text._fstat_r
.LHOTE14:
	.section	.text.unlikely._rename_r,"ax",@progbits
.LCOLDB15:
	.section	.text._rename_r,"ax",@progbits
.LHOTB15:
	.globl	_rename_r
	.type	_rename_r, @function
_rename_r:
.LFB79:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE79:
	.size	_rename_r, .-_rename_r
	.section	.text.unlikely._rename_r
.LCOLDE15:
	.section	.text._rename_r
.LHOTE15:
	.section	.text.unlikely._sbrk_r,"ax",@progbits
.LCOLDB16:
	.section	.text._sbrk_r,"ax",@progbits
.LHOTB16:
	.globl	_sbrk_r
	.type	_sbrk_r, @function
_sbrk_r:
.LFB65:
	.loc 1 136 0
	.cfi_startproc
.LVL24:
	.loc 1 136 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 137 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 139 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE65:
	.size	_sbrk_r, .-_sbrk_r
	.section	.text.unlikely._sbrk_r
.LCOLDE16:
	.section	.text._sbrk_r
.LHOTE16:
	.section	.text.unlikely._stat_r,"ax",@progbits
.LCOLDB17:
	.section	.text._stat_r,"ax",@progbits
.LHOTB17:
	.globl	_stat_r
	.type	_stat_r, @function
_stat_r:
.LFB66:
	.loc 1 142 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 143 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 145 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE66:
	.size	_stat_r, .-_stat_r
	.section	.text.unlikely._stat_r
.LCOLDE17:
	.section	.text._stat_r
.LHOTE17:
	.section	.text.unlikely._times_r,"ax",@progbits
.LCOLDB18:
	.section	.text._times_r,"ax",@progbits
.LHOTB18:
	.globl	_times_r
	.type	_times_r, @function
_times_r:
.LFB67:
	.loc 1 148 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 149 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 151 0
	orl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE67:
	.size	_times_r, .-_times_r
	.section	.text.unlikely._times_r
.LCOLDE18:
	.section	.text._times_r
.LHOTE18:
	.section	.text.unlikely._unlink_r,"ax",@progbits
.LCOLDB19:
	.section	.text._unlink_r,"ax",@progbits
.LHOTB19:
	.globl	_unlink_r
	.type	_unlink_r, @function
_unlink_r:
.LFB68:
	.loc 1 154 0
	.cfi_startproc
.LVL27:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 155 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 157 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE68:
	.size	_unlink_r, .-_unlink_r
	.section	.text.unlikely._unlink_r
.LCOLDE19:
	.section	.text._unlink_r
.LHOTE19:
	.section	.text.unlikely._wait_r,"ax",@progbits
.LCOLDB20:
	.section	.text._wait_r,"ax",@progbits
.LHOTB20:
	.globl	_wait_r
	.type	_wait_r, @function
_wait_r:
.LFB69:
	.loc 1 160 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 161 0
	movl	8(%ebp), %eax
	movl	$134, (%eax)
	.loc 1 163 0
	orl	$-1, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE69:
	.size	_wait_r, .-_wait_r
	.section	.text.unlikely._wait_r
.LCOLDE20:
	.section	.text._wait_r
.LHOTE20:
	.globl	__udivdi3
	.globl	__umoddi3
	.section	.text.unlikely._gettimeofday_r,"ax",@progbits
.LCOLDB21:
	.section	.text._gettimeofday_r,"ax",@progbits
.LHOTB21:
	.globl	_gettimeofday_r
	.type	_gettimeofday_r, @function
_gettimeofday_r:
.LFB70:
	.loc 1 166 0
	.cfi_startproc
.LVL29:
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
	.loc 1 166 0
	movl	12(%ebp), %ebx
	.loc 1 167 0
	call	aos_now_ms
.LVL30:
	.loc 1 168 0
	pushl	$0
	pushl	$1000
	.loc 1 167 0
	movl	%eax, %esi
	.loc 1 168 0
	pushl	%edx
	pushl	%eax
	.loc 1 167 0
	movl	%edx, %edi
.LVL31:
	.loc 1 168 0
	call	__udivdi3
.LVL32:
	addl	$16, %esp
	movl	%eax, (%ebx)
	.loc 1 169 0
	pushl	$0
	pushl	$1000
	pushl	%edi
	pushl	%esi
	call	__umoddi3
.LVL33:
	imull	$1000, %eax, %eax
	addl	$16, %esp
	movl	%eax, 4(%ebx)
	.loc 1 171 0
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL34:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE70:
	.size	_gettimeofday_r, .-_gettimeofday_r
	.section	.text.unlikely._gettimeofday_r
.LCOLDE21:
	.section	.text._gettimeofday_r
.LHOTE21:
	.section	.text.unlikely._malloc_r,"ax",@progbits
.LCOLDB22:
	.section	.text._malloc_r,"ax",@progbits
.LHOTB22:
	.globl	_malloc_r
	.type	_malloc_r, @function
_malloc_r:
.LFB71:
	.loc 1 174 0
	.cfi_startproc
.LVL35:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	.loc 1 178 0
	movl	12(%ebp), %eax
	orl	$-2147483648, %eax
	pushl	%eax
	call	aos_malloc
.LVL36:
	.loc 1 179 0
	popl	%edx
	popl	%ecx
	pushl	4(%ebp)
	pushl	%eax
	movl	%eax, -12(%ebp)
	call	aos_alloc_trace
.LVL37:
	.loc 1 185 0
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE71:
	.size	_malloc_r, .-_malloc_r
	.section	.text.unlikely._malloc_r
.LCOLDE22:
	.section	.text._malloc_r
.LHOTE22:
	.section	.text.unlikely._realloc_r,"ax",@progbits
.LCOLDB23:
	.section	.text._realloc_r,"ax",@progbits
.LHOTB23:
	.globl	_realloc_r
	.type	_realloc_r, @function
_realloc_r:
.LFB72:
	.loc 1 188 0
	.cfi_startproc
.LVL38:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 192 0
	movl	16(%ebp), %eax
	orl	$-2147483648, %eax
	pushl	%eax
	pushl	12(%ebp)
	call	aos_realloc
.LVL39:
	.loc 1 193 0
	popl	%edx
	popl	%ecx
	pushl	4(%ebp)
	pushl	%eax
	movl	%eax, -12(%ebp)
	call	aos_alloc_trace
.LVL40:
	.loc 1 199 0
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE72:
	.size	_realloc_r, .-_realloc_r
	.section	.text.unlikely._realloc_r
.LCOLDE23:
	.section	.text._realloc_r
.LHOTE23:
	.section	.text.unlikely._calloc_r,"ax",@progbits
.LCOLDB24:
	.section	.text._calloc_r,"ax",@progbits
.LHOTB24:
	.globl	_calloc_r
	.type	_calloc_r, @function
_calloc_r:
.LFB73:
	.loc 1 202 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 206 0
	movl	16(%ebp), %ebx
	imull	12(%ebp), %ebx
	movl	%ebx, %eax
	orl	$-2147483648, %eax
	pushl	%eax
	call	aos_malloc
.LVL42:
	.loc 1 207 0
	popl	%edx
	popl	%ecx
	pushl	4(%ebp)
	pushl	%eax
	.loc 1 206 0
	movl	%eax, %esi
.LVL43:
	.loc 1 207 0
	call	aos_alloc_trace
.LVL44:
	.loc 1 212 0
	addl	$16, %esp
	testl	%esi, %esi
	je	.L59
	.loc 1 213 0
	xorl	%eax, %eax
	movl	%esi, %edi
	movl	%ebx, %ecx
	rep stosb
.L59:
	.loc 1 217 0
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL45:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE73:
	.size	_calloc_r, .-_calloc_r
	.section	.text.unlikely._calloc_r
.LCOLDE24:
	.section	.text._calloc_r
.LHOTE24:
	.section	.text.unlikely._free_r,"ax",@progbits
.LCOLDB25:
	.section	.text._free_r,"ax",@progbits
.LHOTB25:
	.globl	_free_r
	.type	_free_r, @function
_free_r:
.LFB74:
	.loc 1 220 0
	.cfi_startproc
.LVL46:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 221 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebp)
.LVL47:
	.loc 1 222 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 221 0
	jmp	aos_free
.LVL48:
	.cfi_endproc
.LFE74:
	.size	_free_r, .-_free_r
	.section	.text.unlikely._free_r
.LCOLDE25:
	.section	.text._free_r
.LHOTE25:
	.section	.text.unlikely._exit,"ax",@progbits
.LCOLDB26:
	.section	.text._exit,"ax",@progbits
.LHOTB26:
	.globl	_exit
	.type	_exit, @function
_exit:
.LFB75:
	.loc 1 225 0
	.cfi_startproc
.LVL49:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.L67:
	jmp	.L67
	.cfi_endproc
.LFE75:
	.size	_exit, .-_exit
	.section	.text.unlikely._exit
.LCOLDE26:
	.section	.text._exit
.LHOTE26:
	.section	.text.unlikely._system,"ax",@progbits
.LCOLDB27:
	.section	.text._system,"ax",@progbits
.LHOTB27:
	.globl	_system
	.type	_system, @function
_system:
.LFB76:
	.loc 1 230 0
	.cfi_startproc
.LVL50:
	.loc 1 230 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 232 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE76:
	.size	_system, .-_system
	.section	.text.unlikely._system
.LCOLDE27:
	.section	.text._system
.LHOTE27:
	.section	.text.unlikely.abort,"ax",@progbits
.LCOLDB28:
	.section	.text.abort,"ax",@progbits
.LHOTB28:
	.globl	abort
	.type	abort, @function
abort:
.LFB77:
	.loc 1 235 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.L72:
	jmp	.L72
	.cfi_endproc
.LFE77:
	.size	abort, .-abort
	.section	.text.unlikely.abort
.LCOLDE28:
	.section	.text.abort
.LHOTE28:
	.text
.Letext0:
	.section	.text.unlikely._execve_r
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/lock.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h"
	.file 11 "./include/hal/soc/uart.h"
	.file 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/reent.h"
	.file 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h"
	.file 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h"
	.file 15 "./include/aos/kernel.h"
	.file 16 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1429
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF252
	.byte	0xc
	.long	.LASF253
	.long	.LASF254
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x95
	.long	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0xd8
	.long	0x42
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.long	.LASF4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.long	.LASF6
	.byte	0x3
	.byte	0x1d
	.long	0x69
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0x41
	.long	0x90
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.long	.LASF13
	.byte	0x3
	.byte	0x5b
	.long	0xa2
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x4
	.byte	0x7
	.long	0x30
	.uleb128 0x2
	.long	.LASF16
	.byte	0x5
	.byte	0x1c
	.long	0x7e
	.uleb128 0x2
	.long	.LASF17
	.byte	0x5
	.byte	0x20
	.long	0x7e
	.uleb128 0x2
	.long	.LASF18
	.byte	0x5
	.byte	0x2c
	.long	0x7e
	.uleb128 0x2
	.long	.LASF19
	.byte	0x5
	.byte	0x36
	.long	0x70
	.uleb128 0x2
	.long	.LASF20
	.byte	0x5
	.byte	0x3a
	.long	0x77
	.uleb128 0x2
	.long	.LASF21
	.byte	0x5
	.byte	0x3d
	.long	0x77
	.uleb128 0x2
	.long	.LASF22
	.byte	0x5
	.byte	0x49
	.long	0x77
	.uleb128 0x2
	.long	.LASF23
	.byte	0x5
	.byte	0x58
	.long	0x85
	.uleb128 0x2
	.long	.LASF24
	.byte	0x5
	.byte	0x64
	.long	0xca
	.uleb128 0x2
	.long	.LASF25
	.byte	0x5
	.byte	0x72
	.long	0x7e
	.uleb128 0x2
	.long	.LASF26
	.byte	0x5
	.byte	0x91
	.long	0x30
	.uleb128 0x5
	.long	.LASF27
	.byte	0x2
	.value	0x165
	.long	0x42
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.long	0x158
	.uleb128 0x7
	.long	.LASF28
	.byte	0x5
	.byte	0xa8
	.long	0x12d
	.uleb128 0x7
	.long	.LASF29
	.byte	0x5
	.byte	0xa9
	.long	0x158
	.byte	0
	.uleb128 0x8
	.long	0x69
	.long	0x168
	.uleb128 0x9
	.long	0x168
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF30
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.long	0x190
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5
	.byte	0xa5
	.long	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.byte	0xaa
	.long	0x139
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF33
	.byte	0x5
	.byte	0xab
	.long	0x16f
	.uleb128 0x2
	.long	.LASF34
	.byte	0x5
	.byte	0xaf
	.long	0xa9
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.long	.LASF35
	.byte	0x5
	.byte	0xcb
	.long	0x77
	.uleb128 0x2
	.long	.LASF36
	.byte	0x5
	.byte	0xcc
	.long	0x7e
	.uleb128 0xd
	.byte	0x4
	.long	0x1c4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF37
	.uleb128 0x2
	.long	.LASF38
	.byte	0x6
	.byte	0x16
	.long	0x90
	.uleb128 0xe
	.long	.LASF43
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.long	0x229
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.byte	0x31
	.long	0x229
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.long	0x30
	.byte	0x4
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.byte	0x32
	.long	0x30
	.byte	0x8
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.byte	0x32
	.long	0x30
	.byte	0xc
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.byte	0x32
	.long	0x30
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.long	0x22f
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x1d6
	.uleb128 0x8
	.long	0x1cb
	.long	0x23f
	.uleb128 0x9
	.long	0x168
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.long	0x2b8
	.uleb128 0xb
	.long	.LASF45
	.byte	0x6
	.byte	0x39
	.long	0x30
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0x3a
	.long	0x30
	.byte	0x4
	.uleb128 0xb
	.long	.LASF47
	.byte	0x6
	.byte	0x3b
	.long	0x30
	.byte	0x8
	.uleb128 0xb
	.long	.LASF48
	.byte	0x6
	.byte	0x3c
	.long	0x30
	.byte	0xc
	.uleb128 0xb
	.long	.LASF49
	.byte	0x6
	.byte	0x3d
	.long	0x30
	.byte	0x10
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.byte	0x3e
	.long	0x30
	.byte	0x14
	.uleb128 0xb
	.long	.LASF51
	.byte	0x6
	.byte	0x3f
	.long	0x30
	.byte	0x18
	.uleb128 0xb
	.long	.LASF52
	.byte	0x6
	.byte	0x40
	.long	0x30
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF53
	.byte	0x6
	.byte	0x41
	.long	0x30
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF54
	.value	0x108
	.byte	0x6
	.byte	0x4a
	.long	0x2f8
	.uleb128 0xb
	.long	.LASF55
	.byte	0x6
	.byte	0x4b
	.long	0x2f8
	.byte	0
	.uleb128 0xb
	.long	.LASF56
	.byte	0x6
	.byte	0x4c
	.long	0x2f8
	.byte	0x80
	.uleb128 0x11
	.long	.LASF57
	.byte	0x6
	.byte	0x4e
	.long	0x1cb
	.value	0x100
	.uleb128 0x11
	.long	.LASF58
	.byte	0x6
	.byte	0x51
	.long	0x1cb
	.value	0x104
	.byte	0
	.uleb128 0x8
	.long	0x1a6
	.long	0x308
	.uleb128 0x9
	.long	0x168
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	.LASF59
	.value	0x190
	.byte	0x6
	.byte	0x5d
	.long	0x346
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.byte	0x5e
	.long	0x346
	.byte	0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x6
	.byte	0x5f
	.long	0x30
	.byte	0x4
	.uleb128 0xb
	.long	.LASF61
	.byte	0x6
	.byte	0x61
	.long	0x34c
	.byte	0x8
	.uleb128 0xb
	.long	.LASF54
	.byte	0x6
	.byte	0x62
	.long	0x2b8
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x308
	.uleb128 0x8
	.long	0x35c
	.long	0x35c
	.uleb128 0x9
	.long	0x168
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x362
	.uleb128 0x12
	.uleb128 0xe
	.long	.LASF62
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.long	0x388
	.uleb128 0xb
	.long	.LASF63
	.byte	0x6
	.byte	0x76
	.long	0x388
	.byte	0
	.uleb128 0xb
	.long	.LASF64
	.byte	0x6
	.byte	0x77
	.long	0x30
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x69
	.uleb128 0xe
	.long	.LASF65
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.long	0x4b8
	.uleb128 0xf
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.long	0x388
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.long	0x30
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.long	0x30
	.byte	0x8
	.uleb128 0xb
	.long	.LASF66
	.byte	0x6
	.byte	0xb9
	.long	0x70
	.byte	0xc
	.uleb128 0xb
	.long	.LASF67
	.byte	0x6
	.byte	0xba
	.long	0x70
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.long	0x363
	.byte	0x10
	.uleb128 0xb
	.long	.LASF68
	.byte	0x6
	.byte	0xbc
	.long	0x30
	.byte	0x18
	.uleb128 0xb
	.long	.LASF69
	.byte	0x6
	.byte	0xc3
	.long	0x1a6
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF70
	.byte	0x6
	.byte	0xc5
	.long	0x60e
	.byte	0x20
	.uleb128 0xb
	.long	.LASF71
	.byte	0x6
	.byte	0xc7
	.long	0x63d
	.byte	0x24
	.uleb128 0xb
	.long	.LASF72
	.byte	0x6
	.byte	0xca
	.long	0x661
	.byte	0x28
	.uleb128 0xb
	.long	.LASF73
	.byte	0x6
	.byte	0xcb
	.long	0x67b
	.byte	0x2c
	.uleb128 0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.long	0x363
	.byte	0x30
	.uleb128 0xf
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.long	0x388
	.byte	0x38
	.uleb128 0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.long	0x30
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF74
	.byte	0x6
	.byte	0xd3
	.long	0x681
	.byte	0x40
	.uleb128 0xb
	.long	.LASF75
	.byte	0x6
	.byte	0xd4
	.long	0x691
	.byte	0x43
	.uleb128 0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.long	0x363
	.byte	0x44
	.uleb128 0xb
	.long	.LASF76
	.byte	0x6
	.byte	0xda
	.long	0x30
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF77
	.byte	0x6
	.byte	0xdb
	.long	0xca
	.byte	0x50
	.uleb128 0xb
	.long	.LASF78
	.byte	0x6
	.byte	0xde
	.long	0x4d6
	.byte	0x54
	.uleb128 0xb
	.long	.LASF79
	.byte	0x6
	.byte	0xe2
	.long	0x19b
	.byte	0x58
	.uleb128 0xb
	.long	.LASF80
	.byte	0x6
	.byte	0xe4
	.long	0x190
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF81
	.byte	0x6
	.byte	0xe5
	.long	0x30
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.long	0x30
	.long	0x4d6
	.uleb128 0x14
	.long	0x4d6
	.uleb128 0x14
	.long	0x1a6
	.uleb128 0x14
	.long	0x1be
	.uleb128 0x14
	.long	0x30
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x4dc
	.uleb128 0x15
	.long	.LASF82
	.value	0x424
	.byte	0x6
	.value	0x239
	.long	0x60e
	.uleb128 0x16
	.long	.LASF83
	.byte	0x6
	.value	0x23b
	.long	0x30
	.byte	0
	.uleb128 0x16
	.long	.LASF84
	.byte	0x6
	.value	0x240
	.long	0x6e8
	.byte	0x4
	.uleb128 0x16
	.long	.LASF85
	.byte	0x6
	.value	0x240
	.long	0x6e8
	.byte	0x8
	.uleb128 0x16
	.long	.LASF86
	.byte	0x6
	.value	0x240
	.long	0x6e8
	.byte	0xc
	.uleb128 0x16
	.long	.LASF87
	.byte	0x6
	.value	0x242
	.long	0x30
	.byte	0x10
	.uleb128 0x16
	.long	.LASF88
	.byte	0x6
	.value	0x243
	.long	0x8ca
	.byte	0x14
	.uleb128 0x16
	.long	.LASF89
	.byte	0x6
	.value	0x246
	.long	0x30
	.byte	0x30
	.uleb128 0x16
	.long	.LASF90
	.byte	0x6
	.value	0x247
	.long	0x8df
	.byte	0x34
	.uleb128 0x16
	.long	.LASF91
	.byte	0x6
	.value	0x249
	.long	0x30
	.byte	0x38
	.uleb128 0x16
	.long	.LASF92
	.byte	0x6
	.value	0x24b
	.long	0x8f0
	.byte	0x3c
	.uleb128 0x16
	.long	.LASF93
	.byte	0x6
	.value	0x24e
	.long	0x229
	.byte	0x40
	.uleb128 0x16
	.long	.LASF94
	.byte	0x6
	.value	0x24f
	.long	0x30
	.byte	0x44
	.uleb128 0x16
	.long	.LASF95
	.byte	0x6
	.value	0x250
	.long	0x229
	.byte	0x48
	.uleb128 0x16
	.long	.LASF96
	.byte	0x6
	.value	0x251
	.long	0x8f6
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF97
	.byte	0x6
	.value	0x254
	.long	0x30
	.byte	0x50
	.uleb128 0x16
	.long	.LASF98
	.byte	0x6
	.value	0x255
	.long	0x1be
	.byte	0x54
	.uleb128 0x16
	.long	.LASF99
	.byte	0x6
	.value	0x278
	.long	0x8a8
	.byte	0x58
	.uleb128 0x17
	.long	.LASF59
	.byte	0x6
	.value	0x27c
	.long	0x346
	.value	0x148
	.uleb128 0x17
	.long	.LASF100
	.byte	0x6
	.value	0x27d
	.long	0x308
	.value	0x14c
	.uleb128 0x17
	.long	.LASF101
	.byte	0x6
	.value	0x281
	.long	0x907
	.value	0x2dc
	.uleb128 0x17
	.long	.LASF102
	.byte	0x6
	.value	0x286
	.long	0x6ad
	.value	0x2e0
	.uleb128 0x17
	.long	.LASF103
	.byte	0x6
	.value	0x287
	.long	0x913
	.value	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x4b8
	.uleb128 0x13
	.long	0x30
	.long	0x632
	.uleb128 0x14
	.long	0x4d6
	.uleb128 0x14
	.long	0x1a6
	.uleb128 0x14
	.long	0x632
	.uleb128 0x14
	.long	0x30
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x638
	.uleb128 0x18
	.long	0x1c4
	.uleb128 0xd
	.byte	0x4
	.long	0x614
	.uleb128 0x13
	.long	0x117
	.long	0x661
	.uleb128 0x14
	.long	0x4d6
	.uleb128 0x14
	.long	0x1a6
	.uleb128 0x14
	.long	0x117
	.uleb128 0x14
	.long	0x30
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x643
	.uleb128 0x13
	.long	0x30
	.long	0x67b
	.uleb128 0x14
	.long	0x4d6
	.uleb128 0x14
	.long	0x1a6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x667
	.uleb128 0x8
	.long	0x69
	.long	0x691
	.uleb128 0x9
	.long	0x168
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x69
	.long	0x6a1
	.uleb128 0x9
	.long	0x168
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF104
	.byte	0x6
	.value	0x11f
	.long	0x38e
	.uleb128 0x19
	.long	.LASF105
	.byte	0xc
	.byte	0x6
	.value	0x123
	.long	0x6e2
	.uleb128 0x16
	.long	.LASF39
	.byte	0x6
	.value	0x125
	.long	0x6e2
	.byte	0
	.uleb128 0x16
	.long	.LASF106
	.byte	0x6
	.value	0x126
	.long	0x30
	.byte	0x4
	.uleb128 0x16
	.long	.LASF107
	.byte	0x6
	.value	0x127
	.long	0x6e8
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x6ad
	.uleb128 0xd
	.byte	0x4
	.long	0x6a1
	.uleb128 0x19
	.long	.LASF108
	.byte	0xe
	.byte	0x6
	.value	0x13f
	.long	0x723
	.uleb128 0x16
	.long	.LASF109
	.byte	0x6
	.value	0x140
	.long	0x723
	.byte	0
	.uleb128 0x16
	.long	.LASF110
	.byte	0x6
	.value	0x141
	.long	0x723
	.byte	0x6
	.uleb128 0x16
	.long	.LASF111
	.byte	0x6
	.value	0x142
	.long	0x77
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x77
	.long	0x733
	.uleb128 0x9
	.long	0x168
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xcc
	.byte	0x6
	.value	0x259
	.long	0x834
	.uleb128 0x16
	.long	.LASF112
	.byte	0x6
	.value	0x25b
	.long	0x42
	.byte	0
	.uleb128 0x16
	.long	.LASF113
	.byte	0x6
	.value	0x25c
	.long	0x1be
	.byte	0x4
	.uleb128 0x16
	.long	.LASF114
	.byte	0x6
	.value	0x25d
	.long	0x834
	.byte	0x8
	.uleb128 0x16
	.long	.LASF115
	.byte	0x6
	.value	0x25e
	.long	0x23f
	.byte	0x24
	.uleb128 0x16
	.long	.LASF116
	.byte	0x6
	.value	0x25f
	.long	0x30
	.byte	0x48
	.uleb128 0x16
	.long	.LASF117
	.byte	0x6
	.value	0x260
	.long	0xa2
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF118
	.byte	0x6
	.value	0x261
	.long	0x6ee
	.byte	0x54
	.uleb128 0x16
	.long	.LASF119
	.byte	0x6
	.value	0x262
	.long	0x190
	.byte	0x64
	.uleb128 0x16
	.long	.LASF120
	.byte	0x6
	.value	0x263
	.long	0x190
	.byte	0x6c
	.uleb128 0x16
	.long	.LASF121
	.byte	0x6
	.value	0x264
	.long	0x190
	.byte	0x74
	.uleb128 0x16
	.long	.LASF122
	.byte	0x6
	.value	0x265
	.long	0x844
	.byte	0x7c
	.uleb128 0x16
	.long	.LASF123
	.byte	0x6
	.value	0x266
	.long	0x854
	.byte	0x84
	.uleb128 0x16
	.long	.LASF124
	.byte	0x6
	.value	0x267
	.long	0x30
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF125
	.byte	0x6
	.value	0x268
	.long	0x190
	.byte	0xa0
	.uleb128 0x16
	.long	.LASF126
	.byte	0x6
	.value	0x269
	.long	0x190
	.byte	0xa8
	.uleb128 0x16
	.long	.LASF127
	.byte	0x6
	.value	0x26a
	.long	0x190
	.byte	0xb0
	.uleb128 0x16
	.long	.LASF128
	.byte	0x6
	.value	0x26b
	.long	0x190
	.byte	0xb8
	.uleb128 0x16
	.long	.LASF129
	.byte	0x6
	.value	0x26c
	.long	0x190
	.byte	0xc0
	.uleb128 0x16
	.long	.LASF130
	.byte	0x6
	.value	0x26d
	.long	0x30
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.long	0x1c4
	.long	0x844
	.uleb128 0x9
	.long	0x168
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.long	0x1c4
	.long	0x854
	.uleb128 0x9
	.long	0x168
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x1c4
	.long	0x864
	.uleb128 0x9
	.long	0x168
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x6
	.value	0x272
	.long	0x888
	.uleb128 0x16
	.long	.LASF131
	.byte	0x6
	.value	0x275
	.long	0x888
	.byte	0
	.uleb128 0x16
	.long	.LASF132
	.byte	0x6
	.value	0x276
	.long	0x898
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x388
	.long	0x898
	.uleb128 0x9
	.long	0x168
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	0x42
	.long	0x8a8
	.uleb128 0x9
	.long	0x168
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.value	0x257
	.long	0x8ca
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x6
	.value	0x26e
	.long	0x733
	.uleb128 0x1c
	.long	.LASF133
	.byte	0x6
	.value	0x277
	.long	0x864
	.byte	0
	.uleb128 0x8
	.long	0x1c4
	.long	0x8da
	.uleb128 0x9
	.long	0x168
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.long	.LASF230
	.uleb128 0xd
	.byte	0x4
	.long	0x8da
	.uleb128 0x1e
	.long	0x8f0
	.uleb128 0x14
	.long	0x4d6
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x8e5
	.uleb128 0xd
	.byte	0x4
	.long	0x229
	.uleb128 0x1e
	.long	0x907
	.uleb128 0x14
	.long	0x30
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x90d
	.uleb128 0xd
	.byte	0x4
	.long	0x8fc
	.uleb128 0x8
	.long	0x6a1
	.long	0x923
	.uleb128 0x9
	.long	0x168
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF134
	.byte	0x7
	.byte	0x18
	.long	0x5e
	.uleb128 0x2
	.long	.LASF135
	.byte	0x7
	.byte	0x30
	.long	0x85
	.uleb128 0x2
	.long	.LASF136
	.byte	0x7
	.byte	0x3c
	.long	0x97
	.uleb128 0x2
	.long	.LASF137
	.byte	0x8
	.byte	0x23
	.long	0x1b3
	.uleb128 0x2
	.long	.LASF138
	.byte	0x8
	.byte	0x28
	.long	0x7e
	.uleb128 0xe
	.long	.LASF139
	.byte	0x8
	.byte	0x8
	.byte	0x34
	.long	0x97f
	.uleb128 0xb
	.long	.LASF140
	.byte	0x8
	.byte	0x35
	.long	0x94f
	.byte	0
	.uleb128 0xb
	.long	.LASF141
	.byte	0x8
	.byte	0x36
	.long	0x944
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF142
	.byte	0x9
	.byte	0x71
	.long	0xb4
	.uleb128 0x2
	.long	.LASF143
	.byte	0x9
	.byte	0x76
	.long	0xbf
	.uleb128 0x2
	.long	.LASF144
	.byte	0x9
	.byte	0x9b
	.long	0xf6
	.uleb128 0x2
	.long	.LASF145
	.byte	0x9
	.byte	0xad
	.long	0x10c
	.uleb128 0x2
	.long	.LASF146
	.byte	0x9
	.byte	0xb1
	.long	0xd5
	.uleb128 0x2
	.long	.LASF147
	.byte	0x9
	.byte	0xb5
	.long	0xe0
	.uleb128 0x2
	.long	.LASF148
	.byte	0x9
	.byte	0xb9
	.long	0xeb
	.uleb128 0x2
	.long	.LASF149
	.byte	0x9
	.byte	0xcd
	.long	0x101
	.uleb128 0x2
	.long	.LASF150
	.byte	0x9
	.byte	0xd2
	.long	0x1a8
	.uleb128 0xe
	.long	.LASF151
	.byte	0x3c
	.byte	0xa
	.byte	0x1b
	.long	0xabb
	.uleb128 0xb
	.long	.LASF152
	.byte	0xa
	.byte	0x1d
	.long	0x9ab
	.byte	0
	.uleb128 0xb
	.long	.LASF153
	.byte	0xa
	.byte	0x1e
	.long	0x995
	.byte	0x2
	.uleb128 0xb
	.long	.LASF154
	.byte	0xa
	.byte	0x1f
	.long	0x9cc
	.byte	0x4
	.uleb128 0xb
	.long	.LASF155
	.byte	0xa
	.byte	0x20
	.long	0x9d7
	.byte	0x8
	.uleb128 0xb
	.long	.LASF156
	.byte	0xa
	.byte	0x21
	.long	0x9b6
	.byte	0xa
	.uleb128 0xb
	.long	.LASF157
	.byte	0xa
	.byte	0x22
	.long	0x9c1
	.byte	0xc
	.uleb128 0xb
	.long	.LASF158
	.byte	0xa
	.byte	0x23
	.long	0x9ab
	.byte	0xe
	.uleb128 0xb
	.long	.LASF159
	.byte	0xa
	.byte	0x24
	.long	0x9a0
	.byte	0x10
	.uleb128 0xb
	.long	.LASF160
	.byte	0xa
	.byte	0x32
	.long	0x94f
	.byte	0x14
	.uleb128 0xb
	.long	.LASF161
	.byte	0xa
	.byte	0x33
	.long	0x7e
	.byte	0x18
	.uleb128 0xb
	.long	.LASF162
	.byte	0xa
	.byte	0x34
	.long	0x94f
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF163
	.byte	0xa
	.byte	0x35
	.long	0x7e
	.byte	0x20
	.uleb128 0xb
	.long	.LASF164
	.byte	0xa
	.byte	0x36
	.long	0x94f
	.byte	0x24
	.uleb128 0xb
	.long	.LASF165
	.byte	0xa
	.byte	0x37
	.long	0x7e
	.byte	0x28
	.uleb128 0xb
	.long	.LASF166
	.byte	0xa
	.byte	0x38
	.long	0x98a
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF167
	.byte	0xa
	.byte	0x39
	.long	0x97f
	.byte	0x30
	.uleb128 0xb
	.long	.LASF168
	.byte	0xa
	.byte	0x3a
	.long	0xabb
	.byte	0x34
	.byte	0
	.uleb128 0x8
	.long	0x7e
	.long	0xacb
	.uleb128 0x9
	.long	0x168
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF169
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF170
	.uleb128 0x1f
	.byte	0x4
	.long	0x42
	.byte	0xb
	.byte	0xb
	.long	0xb04
	.uleb128 0x20
	.long	.LASF171
	.byte	0
	.uleb128 0x20
	.long	.LASF172
	.byte	0x1
	.uleb128 0x20
	.long	.LASF173
	.byte	0x2
	.uleb128 0x20
	.long	.LASF174
	.byte	0x3
	.uleb128 0x20
	.long	.LASF175
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF176
	.byte	0xb
	.byte	0x11
	.long	0xad9
	.uleb128 0x1f
	.byte	0x4
	.long	0x42
	.byte	0xb
	.byte	0x16
	.long	0xb28
	.uleb128 0x20
	.long	.LASF177
	.byte	0
	.uleb128 0x20
	.long	.LASF178
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF179
	.byte	0xb
	.byte	0x19
	.long	0xb0f
	.uleb128 0x1f
	.byte	0x4
	.long	0x42
	.byte	0xb
	.byte	0x1e
	.long	0xb58
	.uleb128 0x20
	.long	.LASF180
	.byte	0
	.uleb128 0x20
	.long	.LASF181
	.byte	0x1
	.uleb128 0x20
	.long	.LASF182
	.byte	0x2
	.uleb128 0x20
	.long	.LASF183
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF184
	.byte	0xb
	.byte	0x23
	.long	0xb33
	.uleb128 0x1f
	.byte	0x4
	.long	0x42
	.byte	0xb
	.byte	0x28
	.long	0xb82
	.uleb128 0x20
	.long	.LASF185
	.byte	0
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.uleb128 0x20
	.long	.LASF187
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF188
	.byte	0xb
	.byte	0x2c
	.long	0xb63
	.uleb128 0x1f
	.byte	0x4
	.long	0x42
	.byte	0xb
	.byte	0x31
	.long	0xbac
	.uleb128 0x20
	.long	.LASF189
	.byte	0
	.uleb128 0x20
	.long	.LASF190
	.byte	0x1
	.uleb128 0x20
	.long	.LASF191
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF192
	.byte	0xb
	.byte	0x35
	.long	0xb8d
	.uleb128 0xa
	.byte	0x18
	.byte	0xb
	.byte	0x3a
	.long	0xc08
	.uleb128 0xb
	.long	.LASF193
	.byte	0xb
	.byte	0x3b
	.long	0x92e
	.byte	0
	.uleb128 0xb
	.long	.LASF194
	.byte	0xb
	.byte	0x3c
	.long	0xb04
	.byte	0x4
	.uleb128 0xb
	.long	.LASF195
	.byte	0xb
	.byte	0x3d
	.long	0xb82
	.byte	0x8
	.uleb128 0xb
	.long	.LASF196
	.byte	0xb
	.byte	0x3e
	.long	0xb28
	.byte	0xc
	.uleb128 0xb
	.long	.LASF197
	.byte	0xb
	.byte	0x3f
	.long	0xb58
	.byte	0x10
	.uleb128 0xb
	.long	.LASF198
	.byte	0xb
	.byte	0x40
	.long	0xbac
	.byte	0x14
	.byte	0
	.uleb128 0x2
	.long	.LASF199
	.byte	0xb
	.byte	0x41
	.long	0xbb7
	.uleb128 0xa
	.byte	0x20
	.byte	0xb
	.byte	0x43
	.long	0xc40
	.uleb128 0xb
	.long	.LASF200
	.byte	0xb
	.byte	0x44
	.long	0x923
	.byte	0
	.uleb128 0xb
	.long	.LASF201
	.byte	0xb
	.byte	0x45
	.long	0xc08
	.byte	0x4
	.uleb128 0xb
	.long	.LASF202
	.byte	0xb
	.byte	0x46
	.long	0x1a6
	.byte	0x1c
	.byte	0
	.uleb128 0x2
	.long	.LASF203
	.byte	0xb
	.byte	0x47
	.long	0xc13
	.uleb128 0xd
	.byte	0x4
	.long	0xc51
	.uleb128 0x21
	.uleb128 0x22
	.long	.LASF206
	.byte	0xc
	.byte	0x8c
	.long	0x30
	.long	.LFB50
	.long	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0xca4
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0xd
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF204
	.byte	0x1
	.byte	0xd
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF205
	.byte	0x1
	.byte	0xd
	.long	0xca4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"env"
	.byte	0x1
	.byte	0xd
	.long	0xca4
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xcaa
	.uleb128 0x18
	.long	0x1be
	.uleb128 0x22
	.long	.LASF207
	.byte	0xc
	.byte	0x8d
	.long	0x30
	.long	.LFB51
	.long	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0xd00
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x13
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.byte	0x13
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"cmd"
	.byte	0x1
	.byte	0x13
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.string	"arg"
	.byte	0x1
	.byte	0x13
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x22
	.long	.LASF208
	.byte	0xc
	.byte	0x8e
	.long	0x30
	.long	.LFB52
	.long	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xd28
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x19
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LASF209
	.byte	0xc
	.byte	0x90
	.long	0x30
	.long	.LFB53
	.long	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xd50
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x1f
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x22
	.long	.LASF210
	.byte	0xc
	.byte	0x91
	.long	0x30
	.long	.LFB54
	.long	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xd85
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x25
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.byte	0x25
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x22
	.long	.LASF211
	.byte	0xc
	.byte	0x92
	.long	0x30
	.long	.LFB55
	.long	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc9
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x2f
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"pid"
	.byte	0x1
	.byte	0x2f
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"sig"
	.byte	0x1
	.byte	0x2f
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x22
	.long	.LASF212
	.byte	0xc
	.byte	0x93
	.long	0x30
	.long	.LFB56
	.long	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0d
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x35
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"old"
	.byte	0x1
	.byte	0x35
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"new"
	.byte	0x1
	.byte	0x35
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x22
	.long	.LASF213
	.byte	0xc
	.byte	0x94
	.long	0xca
	.long	.LFB57
	.long	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xe5e
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x3b
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.byte	0x3b
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"pos"
	.byte	0x1
	.byte	0x3b
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF214
	.byte	0x1
	.byte	0x3b
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x22
	.long	.LASF215
	.byte	0xc
	.byte	0x95
	.long	0x30
	.long	.LFB58
	.long	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xea2
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x41
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF204
	.byte	0x1
	.byte	0x41
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF198
	.byte	0x1
	.byte	0x41
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x22
	.long	.LASF216
	.byte	0xc
	.byte	0x96
	.long	0x30
	.long	.LFB59
	.long	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0xef4
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x47
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF217
	.byte	0x1
	.byte	0x47
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF218
	.byte	0x1
	.byte	0x47
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF198
	.byte	0x1
	.byte	0x47
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x22
	.long	.LASF219
	.byte	0xc
	.byte	0x8b
	.long	0x30
	.long	.LFB60
	.long	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0xf29
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x4d
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.byte	0x4d
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x22
	.long	.LASF220
	.byte	0xc
	.byte	0x97
	.long	0x122
	.long	.LFB61
	.long	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0xf7a
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x53
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.byte	0x53
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.byte	0x53
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF221
	.byte	0x1
	.byte	0x53
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x22
	.long	.LASF222
	.byte	0xc
	.byte	0x9e
	.long	0x122
	.long	.LFB62
	.long	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x101a
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x5c
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.byte	0x5c
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.byte	0x5c
	.long	0xc4b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.long	.LASF221
	.byte	0x1
	.byte	0x5c
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x25
	.string	"tmp"
	.byte	0x1
	.byte	0x5e
	.long	0x632
	.long	.LLST0
	.uleb128 0x25
	.string	"i"
	.byte	0x1
	.byte	0x5f
	.long	0x30
	.long	.LLST1
	.uleb128 0x26
	.long	.LASF223
	.byte	0x1
	.byte	0x60
	.long	0xc40
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x27
	.long	.LVL14
	.long	0x13d1
	.uleb128 0x27
	.long	.LVL16
	.long	0x13dc
	.uleb128 0x27
	.long	.LVL18
	.long	0x13dc
	.uleb128 0x27
	.long	.LVL21
	.long	0x13e7
	.byte	0
	.uleb128 0x22
	.long	.LASF224
	.byte	0xc
	.byte	0x8f
	.long	0x30
	.long	.LFB63
	.long	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x105d
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x7b
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"fd"
	.byte	0x1
	.byte	0x7b
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF225
	.byte	0x1
	.byte	0x7b
	.long	0x105d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x9e2
	.uleb128 0x22
	.long	.LASF226
	.byte	0xc
	.byte	0x99
	.long	0x1a6
	.long	.LFB65
	.long	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1099
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x87
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF227
	.byte	0x1
	.byte	0x87
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x28
	.long	.LASF255
	.byte	0xc
	.byte	0x9a
	.long	0x30
	.byte	0x1
	.long	0x10cb
	.uleb128 0x29
	.string	"ptr"
	.byte	0x1
	.byte	0x8d
	.long	0x4d6
	.uleb128 0x2a
	.long	.LASF217
	.byte	0x1
	.byte	0x8d
	.long	0x632
	.uleb128 0x2a
	.long	.LASF225
	.byte	0x1
	.byte	0x8d
	.long	0x105d
	.byte	0
	.uleb128 0x2b
	.long	0x1099
	.long	.LFB66
	.long	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f7
	.uleb128 0x2c
	.long	0x10a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	0x10b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.long	0x10bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x22
	.long	.LASF228
	.byte	0xc
	.byte	0x9b
	.long	0x90
	.long	.LFB67
	.long	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x112d
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x93
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF229
	.byte	0x1
	.byte	0x93
	.long	0x1132
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x2d
	.string	"tms"
	.uleb128 0xd
	.byte	0x4
	.long	0x112d
	.uleb128 0x22
	.long	.LASF231
	.byte	0xc
	.byte	0x9c
	.long	0x30
	.long	.LFB68
	.long	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x116e
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x99
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF217
	.byte	0x1
	.byte	0x99
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x22
	.long	.LASF232
	.byte	0xc
	.byte	0x9d
	.long	0x30
	.long	.LFB69
	.long	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x11a4
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0x9f
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF233
	.byte	0x1
	.byte	0x9f
	.long	0x11a4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x30
	.uleb128 0x2e
	.long	.LASF234
	.byte	0xc
	.byte	0xa1
	.long	0x30
	.long	.LFB70
	.long	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x1203
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0xa5
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"tv"
	.byte	0x1
	.byte	0xa5
	.long	0x1203
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF235
	.byte	0x1
	.byte	0xa5
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"t"
	.byte	0x1
	.byte	0xa7
	.long	0x939
	.long	.LLST2
	.uleb128 0x27
	.long	.LVL30
	.long	0x13f0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x95a
	.uleb128 0x22
	.long	.LASF236
	.byte	0x1
	.byte	0xad
	.long	0x1a6
	.long	.LFB71
	.long	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1260
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0xad
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF237
	.byte	0x1
	.byte	0xad
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.string	"mem"
	.byte	0x1
	.byte	0xaf
	.long	0x1a6
	.long	.LLST3
	.uleb128 0x27
	.long	.LVL36
	.long	0x13fc
	.uleb128 0x27
	.long	.LVL37
	.long	0x1408
	.byte	0
	.uleb128 0x22
	.long	.LASF238
	.byte	0x1
	.byte	0xbb
	.long	0x1a6
	.long	.LFB72
	.long	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x12c5
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0xbb
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.string	"old"
	.byte	0x1
	.byte	0xbb
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF239
	.byte	0x1
	.byte	0xbb
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"mem"
	.byte	0x1
	.byte	0xbd
	.long	0x1a6
	.long	.LLST4
	.uleb128 0x27
	.long	.LVL39
	.long	0x1414
	.uleb128 0x27
	.long	.LVL40
	.long	0x1408
	.byte	0
	.uleb128 0x22
	.long	.LASF240
	.byte	0x1
	.byte	0xc9
	.long	0x1a6
	.long	.LFB73
	.long	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x132a
	.uleb128 0x23
	.string	"ptr"
	.byte	0x1
	.byte	0xc9
	.long	0x4d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.long	.LASF237
	.byte	0x1
	.byte	0xc9
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.byte	0xc9
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"mem"
	.byte	0x1
	.byte	0xcb
	.long	0x1a6
	.long	.LLST5
	.uleb128 0x27
	.long	.LVL42
	.long	0x13fc
	.uleb128 0x27
	.long	.LVL44
	.long	0x1408
	.byte	0
	.uleb128 0x2f
	.long	.LASF243
	.byte	0x1
	.byte	0xdb
	.long	.LFB74
	.long	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x136f
	.uleb128 0x30
	.string	"ptr"
	.byte	0x1
	.byte	0xdb
	.long	0x4d6
	.long	.LLST6
	.uleb128 0x24
	.long	.LASF241
	.byte	0x1
	.byte	0xdb
	.long	0x1a6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LVL48
	.long	0x1420
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF242
	.byte	0xd
	.byte	0x12
	.long	.LFB75
	.long	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1393
	.uleb128 0x24
	.long	.LASF233
	.byte	0x1
	.byte	0xe0
	.long	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.long	.LASF244
	.byte	0x1
	.byte	0xe5
	.long	.LFB76
	.long	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b5
	.uleb128 0x23
	.string	"s"
	.byte	0x1
	.byte	0xe5
	.long	0x632
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.long	.LASF256
	.byte	0x1
	.byte	0xea
	.long	.LFB77
	.long	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF257
	.byte	0x10
	.byte	0x17
	.long	0x42
	.uleb128 0x36
	.long	.LASF245
	.long	.LASF245
	.byte	0xe
	.byte	0xf
	.uleb128 0x36
	.long	.LASF246
	.long	.LASF246
	.byte	0xb
	.byte	0x5e
	.uleb128 0x37
	.long	.LASF258
	.long	.LASF258
	.uleb128 0x38
	.long	.LASF247
	.long	.LASF247
	.byte	0xf
	.value	0x20e
	.uleb128 0x38
	.long	.LASF248
	.long	.LASF248
	.byte	0xf
	.value	0x1e8
	.uleb128 0x38
	.long	.LASF249
	.long	.LASF249
	.byte	0xf
	.value	0x1f9
	.uleb128 0x38
	.long	.LASF250
	.long	.LASF250
	.byte	0xf
	.value	0x1df
	.uleb128 0x38
	.long	.LASF251
	.long	.LASF251
	.byte	0xf
	.value	0x200
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
	.uleb128 0x8
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
	.uleb128 0x16
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
	.uleb128 0x6
	.uleb128 0x17
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x18
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
	.uleb128 0x26
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2116
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
	.uleb128 0x30
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
	.uleb128 0x87
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL13
	.long	.LVL17
	.value	0x1
	.byte	0x53
	.long	.LVL17
	.long	.LVL18-1
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL18-1
	.long	.LVL18
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL18
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL15
	.long	.LVL20
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL31
	.long	.LVL34
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
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	.LVL37-1
	.long	.LFE71
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
.LLST4:
	.long	.LVL39
	.long	.LVL40-1
	.value	0x1
	.byte	0x50
	.long	.LVL40-1
	.long	.LFE72
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
.LLST5:
	.long	.LVL43
	.long	.LVL44-1
	.value	0x1
	.byte	0x50
	.long	.LVL44-1
	.long	.LVL45
	.value	0x1
	.byte	0x56
	.long	.LVL45
	.long	.LFE73
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL46
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xec
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	.LFB69
	.long	.LFE69-.LFB69
	.long	.LFB70
	.long	.LFE70-.LFB70
	.long	.LFB71
	.long	.LFE71-.LFB71
	.long	.LFB72
	.long	.LFE72-.LFB72
	.long	.LFB73
	.long	.LFE73-.LFB73
	.long	.LFB74
	.long	.LFE74-.LFB74
	.long	.LFB75
	.long	.LFE75-.LFB75
	.long	.LFB76
	.long	.LFE76-.LFB76
	.long	.LFB77
	.long	.LFE77-.LFB77
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB65
	.long	.LFE65
	.long	.LFB66
	.long	.LFE66
	.long	.LFB67
	.long	.LFE67
	.long	.LFB68
	.long	.LFE68
	.long	.LFB69
	.long	.LFE69
	.long	.LFB70
	.long	.LFE70
	.long	.LFB71
	.long	.LFE71
	.long	.LFB72
	.long	.LFE72
	.long	.LFB73
	.long	.LFE73
	.long	.LFB74
	.long	.LFE74
	.long	.LFB75
	.long	.LFE75
	.long	.LFB76
	.long	.LFE76
	.long	.LFB77
	.long	.LFE77
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"_ssize_t"
.LASF1:
	.string	"size_t"
.LASF30:
	.string	"sizetype"
.LASF230:
	.string	"__locale_t"
.LASF32:
	.string	"__value"
.LASF103:
	.string	"__sf"
.LASF70:
	.string	"_read"
.LASF167:
	.string	"st_blocks"
.LASF92:
	.string	"__cleanup"
.LASF71:
	.string	"_write"
.LASF192:
	.string	"hal_uart_mode_t"
.LASF114:
	.string	"_asctime_buf"
.LASF97:
	.string	"_cvtlen"
.LASF226:
	.string	"_sbrk_r"
.LASF146:
	.string	"dev_t"
.LASF150:
	.string	"nlink_t"
.LASF21:
	.string	"__gid_t"
.LASF133:
	.string	"_unused"
.LASF44:
	.string	"__tm"
.LASF129:
	.string	"_wcsrtombs_state"
.LASF75:
	.string	"_nbuf"
.LASF45:
	.string	"__tm_sec"
.LASF122:
	.string	"_l64a_buf"
.LASF138:
	.string	"time_t"
.LASF201:
	.string	"config"
.LASF79:
	.string	"_lock"
.LASF184:
	.string	"hal_uart_flow_control_t"
.LASF221:
	.string	"nbytes"
.LASF110:
	.string	"_mult"
.LASF202:
	.string	"priv"
.LASF28:
	.string	"__wch"
.LASF216:
	.string	"_open_r"
.LASF6:
	.string	"__uint8_t"
.LASF19:
	.string	"__dev_t"
.LASF147:
	.string	"uid_t"
.LASF67:
	.string	"_file"
.LASF54:
	.string	"_on_exit_args"
.LASF256:
	.string	"abort"
.LASF125:
	.string	"_mbrlen_state"
.LASF10:
	.string	"long int"
.LASF94:
	.string	"_result_k"
.LASF64:
	.string	"_size"
.LASF115:
	.string	"_localtime_buf"
.LASF207:
	.string	"_fcntl_r"
.LASF49:
	.string	"__tm_mon"
.LASF251:
	.string	"aos_free"
.LASF112:
	.string	"_unused_rand"
.LASF5:
	.string	"signed char"
.LASF17:
	.string	"__blksize_t"
.LASF134:
	.string	"uint8_t"
.LASF161:
	.string	"st_spare1"
.LASF156:
	.string	"st_uid"
.LASF165:
	.string	"st_spare3"
.LASF168:
	.string	"st_spare4"
.LASF245:
	.string	"__errno"
.LASF186:
	.string	"ODD_PARITY"
.LASF7:
	.string	"unsigned char"
.LASF247:
	.string	"aos_now_ms"
.LASF211:
	.string	"_kill_r"
.LASF158:
	.string	"st_rdev"
.LASF187:
	.string	"EVEN_PARITY"
.LASF89:
	.string	"_unspecified_locale_info"
.LASF246:
	.string	"hal_uart_send"
.LASF82:
	.string	"_reent"
.LASF240:
	.string	"_calloc_r"
.LASF254:
	.string	"/home/stone/Documents/pca"
.LASF232:
	.string	"_wait_r"
.LASF169:
	.string	"_Bool"
.LASF37:
	.string	"char"
.LASF61:
	.string	"_fns"
.LASF235:
	.string	"__tzp"
.LASF73:
	.string	"_close"
.LASF214:
	.string	"whence"
.LASF139:
	.string	"timeval"
.LASF84:
	.string	"_stdin"
.LASF23:
	.string	"__mode_t"
.LASF218:
	.string	"flags"
.LASF210:
	.string	"_isatty_r"
.LASF0:
	.string	"ptrdiff_t"
.LASF239:
	.string	"newlen"
.LASF164:
	.string	"st_ctime"
.LASF238:
	.string	"_realloc_r"
.LASF217:
	.string	"file"
.LASF188:
	.string	"hal_uart_parity_t"
.LASF196:
	.string	"stop_bits"
.LASF69:
	.string	"_cookie"
.LASF141:
	.string	"tv_usec"
.LASF42:
	.string	"_wds"
.LASF249:
	.string	"aos_alloc_trace"
.LASF101:
	.string	"_sig_func"
.LASF77:
	.string	"_offset"
.LASF98:
	.string	"_cvtbuf"
.LASF157:
	.string	"st_gid"
.LASF194:
	.string	"data_width"
.LASF13:
	.string	"__uint64_t"
.LASF144:
	.string	"ino_t"
.LASF206:
	.string	"_execve_r"
.LASF95:
	.string	"_p5s"
.LASF12:
	.string	"long unsigned int"
.LASF65:
	.string	"__sFILE"
.LASF91:
	.string	"__sdidinit"
.LASF81:
	.string	"_flags2"
.LASF159:
	.string	"st_size"
.LASF15:
	.string	"_LOCK_RECURSIVE_T"
.LASF83:
	.string	"_errno"
.LASF171:
	.string	"DATA_WIDTH_5BIT"
.LASF163:
	.string	"st_spare2"
.LASF123:
	.string	"_signal_buf"
.LASF176:
	.string	"hal_uart_data_width_t"
.LASF173:
	.string	"DATA_WIDTH_7BIT"
.LASF243:
	.string	"_free_r"
.LASF219:
	.string	"_close_r"
.LASF43:
	.string	"_Bigint"
.LASF175:
	.string	"DATA_WIDTH_9BIT"
.LASF40:
	.string	"_maxwds"
.LASF205:
	.string	"argv"
.LASF16:
	.string	"__blkcnt_t"
.LASF100:
	.string	"_atexit0"
.LASF151:
	.string	"stat"
.LASF255:
	.string	"_stat_r"
.LASF209:
	.string	"_getpid_r"
.LASF166:
	.string	"st_blksize"
.LASF22:
	.string	"__ino_t"
.LASF11:
	.string	"__uint32_t"
.LASF88:
	.string	"_emergency"
.LASF258:
	.string	"__stack_chk_fail"
.LASF3:
	.string	"long long int"
.LASF106:
	.string	"_niobs"
.LASF102:
	.string	"__sglue"
.LASF132:
	.string	"_nmalloc"
.LASF116:
	.string	"_gamma_signgam"
.LASF228:
	.string	"_times_r"
.LASF96:
	.string	"_freelist"
.LASF107:
	.string	"_iobs"
.LASF105:
	.string	"_glue"
.LASF41:
	.string	"_sign"
.LASF195:
	.string	"parity"
.LASF170:
	.string	"float"
.LASF241:
	.string	"addr"
.LASF242:
	.string	"_exit"
.LASF2:
	.string	"unsigned int"
.LASF222:
	.string	"_write_r"
.LASF142:
	.string	"blkcnt_t"
.LASF234:
	.string	"_gettimeofday_r"
.LASF130:
	.string	"_h_errno"
.LASF227:
	.string	"incr"
.LASF128:
	.string	"_wcrtomb_state"
.LASF36:
	.string	"__suseconds_t"
.LASF48:
	.string	"__tm_mday"
.LASF99:
	.string	"_new"
.LASF74:
	.string	"_ubuf"
.LASF86:
	.string	"_stderr"
.LASF121:
	.string	"_wctomb_state"
.LASF80:
	.string	"_mbstate"
.LASF117:
	.string	"_rand_next"
.LASF66:
	.string	"_flags"
.LASF59:
	.string	"_atexit"
.LASF231:
	.string	"_unlink_r"
.LASF215:
	.string	"_mkdir_r"
.LASF31:
	.string	"__count"
.LASF155:
	.string	"st_nlink"
.LASF145:
	.string	"off_t"
.LASF149:
	.string	"mode_t"
.LASF177:
	.string	"STOP_BITS_1"
.LASF178:
	.string	"STOP_BITS_2"
.LASF51:
	.string	"__tm_wday"
.LASF160:
	.string	"st_atime"
.LASF4:
	.string	"long double"
.LASF52:
	.string	"__tm_yday"
.LASF250:
	.string	"aos_realloc"
.LASF236:
	.string	"_malloc_r"
.LASF109:
	.string	"_seed"
.LASF72:
	.string	"_seek"
.LASF152:
	.string	"st_dev"
.LASF253:
	.string	"src/newlib_stub.c"
.LASF25:
	.string	"_fpos_t"
.LASF29:
	.string	"__wchb"
.LASF183:
	.string	"FLOW_CONTROL_CTS_RTS"
.LASF120:
	.string	"_mbtowc_state"
.LASF237:
	.string	"size"
.LASF14:
	.string	"long long unsigned int"
.LASF24:
	.string	"__off_t"
.LASF56:
	.string	"_dso_handle"
.LASF181:
	.string	"FLOW_CONTROL_CTS"
.LASF191:
	.string	"MODE_TX_RX"
.LASF108:
	.string	"_rand48"
.LASF85:
	.string	"_stdout"
.LASF76:
	.string	"_blksize"
.LASF63:
	.string	"_base"
.LASF182:
	.string	"FLOW_CONTROL_RTS"
.LASF113:
	.string	"_strtok_last"
.LASF180:
	.string	"FLOW_CONTROL_DISABLED"
.LASF126:
	.string	"_mbrtowc_state"
.LASF34:
	.string	"_flock_t"
.LASF208:
	.string	"_fork_r"
.LASF104:
	.string	"__FILE"
.LASF199:
	.string	"uart_config_t"
.LASF33:
	.string	"_mbstate_t"
.LASF118:
	.string	"_r48"
.LASF27:
	.string	"wint_t"
.LASF39:
	.string	"_next"
.LASF78:
	.string	"_data"
.LASF257:
	.string	"aos_log_level"
.LASF162:
	.string	"st_mtime"
.LASF197:
	.string	"flow_control"
.LASF204:
	.string	"name"
.LASF200:
	.string	"port"
.LASF119:
	.string	"_mblen_state"
.LASF8:
	.string	"short int"
.LASF136:
	.string	"uint64_t"
.LASF198:
	.string	"mode"
.LASF223:
	.string	"uart_stdio"
.LASF190:
	.string	"MODE_RX"
.LASF57:
	.string	"_fntypes"
.LASF50:
	.string	"__tm_year"
.LASF137:
	.string	"suseconds_t"
.LASF68:
	.string	"_lbfsize"
.LASF87:
	.string	"_inc"
.LASF60:
	.string	"_ind"
.LASF203:
	.string	"uart_dev_t"
.LASF62:
	.string	"__sbuf"
.LASF213:
	.string	"_lseek_r"
.LASF58:
	.string	"_is_cxa"
.LASF154:
	.string	"st_mode"
.LASF20:
	.string	"__uid_t"
.LASF131:
	.string	"_nextf"
.LASF143:
	.string	"blksize_t"
.LASF233:
	.string	"status"
.LASF189:
	.string	"MODE_TX"
.LASF90:
	.string	"_locale"
.LASF38:
	.string	"__ULong"
.LASF135:
	.string	"uint32_t"
.LASF248:
	.string	"aos_malloc"
.LASF93:
	.string	"_result"
.LASF252:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF193:
	.string	"baud_rate"
.LASF18:
	.string	"_off_t"
.LASF225:
	.string	"pstat"
.LASF111:
	.string	"_add"
.LASF9:
	.string	"short unsigned int"
.LASF47:
	.string	"__tm_hour"
.LASF127:
	.string	"_mbsrtowcs_state"
.LASF224:
	.string	"_fstat_r"
.LASF172:
	.string	"DATA_WIDTH_6BIT"
.LASF220:
	.string	"_read_r"
.LASF229:
	.string	"ptms"
.LASF153:
	.string	"st_ino"
.LASF174:
	.string	"DATA_WIDTH_8BIT"
.LASF35:
	.string	"__nlink_t"
.LASF55:
	.string	"_fnargs"
.LASF53:
	.string	"__tm_isdst"
.LASF148:
	.string	"gid_t"
.LASF212:
	.string	"_link_r"
.LASF185:
	.string	"NO_PARITY"
.LASF46:
	.string	"__tm_min"
.LASF140:
	.string	"tv_sec"
.LASF124:
	.string	"_getdate_err"
.LASF244:
	.string	"_system"
.LASF179:
	.string	"hal_uart_stop_bits_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
