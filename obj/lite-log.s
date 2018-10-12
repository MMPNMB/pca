	.file	"lite-log.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"| %s: (len=%d) |\r\n"
.LC1:
	.string	"\r"
.LC2:
	.string	"%s"
.LC3:
	.string	"+---------------------------------------------------------------------"
.LC4:
	.string	"%s\r\n"
.LC5:
	.string	"| %08X: "
.LC6:
	.string	"%02X"
.LC7:
	.string	"%c"
.LC8:
	.string	" %s"
	.section	.text.unlikely.LITE_hexdump,"ax",@progbits
.LCOLDB9:
	.section	.text.LITE_hexdump,"ax",@progbits
.LHOTB9:
	.section	.text.unlikely.LITE_hexdump
.Ltext_cold0:
	.section	.text.LITE_hexdump
	.globl	LITE_hexdump
	.type	LITE_hexdump, @function
LITE_hexdump:
.LFB1:
	.file 1 "framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.c"
	.loc 1 34 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 36 0
	movl	$17, %edx
	movl	%edx, %ecx
	.loc 1 34 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 36 0
	leal	-109(%ebp), %edi
.LBB17:
	.loc 1 42 0
	xorl	%ebx, %ebx
.LBE17:
	.loc 1 34 0
	subl	$136, %esp
	.loc 1 34 0
	movl	12(%ebp), %eax
	movl	%eax, -124(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 36 0
	rep stosb
	.loc 1 37 0
	leal	-92(%ebp), %edi
	.loc 1 36 0
	movl	%ecx, %edx
	.loc 1 37 0
	movl	$16, %ecx
	movl	%edx, %eax
	rep stosl
.LVL1:
	.loc 1 40 0
	leal	-92(%ebp), %eax
	pushl	16(%ebp)
	pushl	8(%ebp)
	pushl	$.LC0
	pushl	$64
	pushl	%eax
	call	snprintf
.LVL2:
.LBB18:
	.loc 1 42 0
	addl	$20, %esp
	pushl	$43
	call	putchar
.LVL3:
	addl	$16, %esp
.LVL4:
.L2:
	.loc 1 42 0 is_stmt 0 discriminator 1
	leal	-92(%ebp), %esi
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%esi, %edi
	repnz scasb
	notl	%ecx
	subl	$5, %ecx
	cmpl	%ebx, %ecx
	jbe	.L18
	.loc 1 42 0 discriminator 3
	subl	$12, %esp
	incl	%ebx
.LVL5:
	pushl	$45
	call	putchar
.LVL6:
	addl	$16, %esp
	jmp	.L2
.L18:
	.loc 1 42 0 discriminator 4
	subl	$12, %esp
	pushl	$43
	call	putchar
.LVL7:
	movl	$.LC1, (%esp)
	call	puts
.LVL8:
.LBE18:
	.loc 1 43 0 is_stmt 1 discriminator 4
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	$.LC2
	.loc 1 46 0 discriminator 4
	xorl	%esi, %esi
	.loc 1 43 0 discriminator 4
	call	printf
.LVL9:
	.loc 1 44 0 discriminator 4
	popl	%ecx
	popl	%ebx
.LVL10:
	pushl	$.LC3
	pushl	$.LC4
	.loc 1 47 0 discriminator 4
	xorl	%ebx, %ebx
	.loc 1 44 0 discriminator 4
	call	printf
.LVL11:
	.loc 1 62 0 discriminator 4
	movl	16(%ebp), %eax
	.loc 1 47 0 discriminator 4
	addl	$16, %esp
	.loc 1 62 0 discriminator 4
	decl	%eax
	movl	%eax, -128(%ebp)
.LVL12:
.L4:
	.loc 1 47 0 discriminator 1
	cmpl	16(%ebp), %ebx
	jge	.L19
	.loc 1 48 0
	testb	$15, %bl
	jne	.L5
	.loc 1 49 0
	pushl	%eax
	pushl	%eax
	.loc 1 50 0
	addl	$8, %esi
.LVL13:
	.loc 1 49 0
	movl	-124(%ebp), %eax
	addl	%ebx, %eax
	pushl	%eax
	pushl	$.LC5
	call	printf
.LVL14:
	.loc 1 50 0
	addl	$16, %esp
.L5:
	.loc 1 53 0
	movl	-124(%ebp), %eax
	pushl	%edi
	pushl	%edi
	.loc 1 54 0
	leal	2(%esi), %edi
	.loc 1 53 0
	movzbl	(%eax,%ebx), %eax
	pushl	%eax
	pushl	$.LC6
	call	printf
.LVL15:
	.loc 1 56 0
	movl	%ebx, %eax
	movl	$2, %ecx
	addl	$16, %esp
	cltd
	idivl	%ecx
	decl	%edx
	jne	.L6
	.loc 1 57 0
	subl	$12, %esp
	.loc 1 58 0
	leal	3(%esi), %edi
.LVL16:
	.loc 1 57 0
	pushl	$32
	call	putchar
.LVL17:
	.loc 1 58 0
	addl	$16, %esp
.L6:
	.loc 1 60 0
	movl	-124(%ebp), %eax
	movl	$46, %edx
	movzbl	(%eax,%ebx), %eax
	leal	-32(%eax), %ecx
	cmpb	$94, %cl
	pushl	%ecx
	movl	$16, %ecx
	cmovbe	%eax, %edx
	movl	%ebx, %eax
	.loc 1 62 0
	incl	%ebx
.LVL18:
	.loc 1 60 0
	pushl	%edx
	cltd
	pushl	$.LC7
	idivl	%ecx
.LVL19:
	leal	-109(%ebp), %eax
	addl	%eax, %edx
	pushl	%edx
	call	sprintf
.LVL20:
	.loc 1 62 0
	addl	$16, %esp
	testb	$15, %bl
	je	.L15
	.loc 1 62 0 is_stmt 0 discriminator 1
	leal	-1(%ebx), %eax
	cmpl	%eax, -128(%ebp)
	jne	.L9
.L15:
	.loc 1 63 0 is_stmt 1
	movl	$48, %esi
	xorl	%edx, %edx
	subl	%edi, %esi
.L10:
.LVL21:
	.loc 1 63 0 is_stmt 0 discriminator 1
	cmpl	%esi, %edx
	jge	.L20
	.loc 1 64 0 is_stmt 1 discriminator 3
	subl	$12, %esp
	movl	%edx, -132(%ebp)
	pushl	$32
	call	putchar
.LVL22:
	.loc 1 63 0 discriminator 3
	movl	-132(%ebp), %edx
	addl	$16, %esp
	incl	%edx
.LVL23:
	jmp	.L10
.L20:
	.loc 1 67 0
	leal	-109(%ebp), %eax
.LVL24:
	pushl	%edx
	pushl	%edx
	.loc 1 71 0
	leal	-109(%ebp), %edi
.LVL25:
	.loc 1 67 0
	pushl	%eax
	pushl	$.LC8
	call	printf
.LVL26:
	.loc 1 68 0
	movl	$.LC1, (%esp)
	call	puts
.LVL27:
	.loc 1 71 0
	movl	$17, %ecx
	xorl	%eax, %eax
	addl	$16, %esp
	rep stosb
	.loc 1 70 0
	xorl	%edi, %edi
.LVL28:
.L9:
	.loc 1 70 0 is_stmt 0 discriminator 1
	movl	%edi, %esi
	jmp	.L4
.LVL29:
.L19:
	.loc 1 74 0 is_stmt 1
	pushl	%eax
	pushl	%eax
	pushl	$.LC3
	pushl	$.LC4
	call	printf
.LVL30:
	.loc 1 77 0
	xorl	%eax, %eax
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L13
	call	__stack_chk_fail
.LVL31:
.L13:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL32:
	popl	%esi
	.cfi_restore 6
.LVL33:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	LITE_hexdump, .-LITE_hexdump
	.section	.text.unlikely.LITE_hexdump
.LCOLDE9:
	.section	.text.LITE_hexdump
.LHOTE9:
	.section	.rodata.str1.1
.LC10:
	.string	"[%s] %s(%d): "
.LC11:
	.string	" ..."
	.section	.text.unlikely.LITE_syslog_routine,"ax",@progbits
.LCOLDB12:
	.section	.text.LITE_syslog_routine,"ax",@progbits
.LHOTB12:
	.globl	LITE_syslog_routine
	.type	LITE_syslog_routine, @function
LITE_syslog_routine:
.LFB2:
	.loc 1 87 0
	.cfi_startproc
.LVL34:
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
	.loc 1 92 0
	cmpb	$0, logcb
	.loc 1 87 0
	movl	24(%ebp), %edx
	movl	8(%ebp), %ebx
	movl	12(%ebp), %edi
	movl	16(%ebp), %eax
	movl	20(%ebp), %esi
	movl	%edx, -32(%ebp)
	.loc 1 92 0
	je	.L21
	cmpl	%eax, logcb+8
	jl	.L21
	movl	%eax, %ecx
	shrl	$31, %ecx
	testb	%cl, %cl
	movb	%cl, -25(%ebp)
	jne	.L21
.LVL35:
.LBB26:
.LBB27:
	.loc 1 96 0
	pushl	%edi
	pushl	%ebx
	.loc 1 98 0
	movl	$logcb+12, %ebx
.LVL36:
	.loc 1 96 0
	pushl	lvl_names(,%eax,4)
	pushl	$.LC10
	.loc 1 98 0
	movl	%ebx, %edi
.LVL37:
	.loc 1 96 0
	call	printf
.LVL38:
	.loc 1 98 0
	xorl	%eax, %eax
	movl	$64, %ecx
	.loc 1 101 0
	movl	-32(%ebp), %edx
	.loc 1 98 0
	rep stosl
.LVL39:
	.loc 1 107 0
	movl	%ebx, %edi
	.loc 1 101 0
	pushl	(%edx)
	pushl	%esi
	pushl	$256
	pushl	%ebx
	.loc 1 108 0
	movl	$1, %ebx
.LVL40:
	.loc 1 101 0
	call	vsnprintf
.LVL41:
	movl	%eax, %edx
.LVL42:
	.loc 1 107 0
	movb	-25(%ebp), %al
.LVL43:
	orl	$-1, %ecx
	addl	$32, %esp
	repnz scasb
.LVL44:
	cmpl	$-257, %ecx
	je	.L23
	.loc 1 90 0
	xorl	%ebx, %ebx
	cmpl	$255, %edx
	setg	%bl
.L23:
.LVL45:
	.loc 1 111 0
	pushl	%eax
	pushl	%eax
	pushl	$logcb+12
.LVL46:
	pushl	$.LC2
.LVL47:
	call	printf
.LVL48:
	.loc 1 112 0
	addl	$16, %esp
	testl	%ebx, %ebx
	je	.L24
	.loc 1 113 0
	subl	$12, %esp
	pushl	$.LC11
	call	printf
.LVL49:
	addl	$16, %esp
.L24:
	.loc 1 116 0
	movl	$.LC1, 8(%ebp)
.LVL50:
.LBE27:
.LBE26:
	.loc 1 118 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL51:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB29:
.LBB28:
	.loc 1 116 0
	jmp	puts
.LVL52:
.L21:
	.cfi_restore_state
.LBE28:
.LBE29:
	.loc 1 118 0
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
.LFE2:
	.size	LITE_syslog_routine, .-LITE_syslog_routine
	.section	.text.unlikely.LITE_syslog_routine
.LCOLDE12:
	.section	.text.LITE_syslog_routine
.LHOTE12:
	.section	.text.unlikely.LITE_syslog,"ax",@progbits
.LCOLDB13:
	.section	.text.LITE_syslog,"ax",@progbits
.LHOTB13:
	.globl	LITE_syslog
	.type	LITE_syslog, @function
LITE_syslog:
.LFB3:
	.loc 1 121 0
	.cfi_startproc
.LVL53:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	.loc 1 121 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 124 0
	leal	24(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 125 0
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	LITE_syslog_routine
.LVL54:
	.loc 1 127 0
	addl	$32, %esp
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L31
	call	__stack_chk_fail
.LVL55:
.L31:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	LITE_syslog, .-LITE_syslog
	.section	.text.unlikely.LITE_syslog
.LCOLDE13:
	.section	.text.LITE_syslog
.LHOTE13:
	.section	.text.unlikely.LITE_log_enabled,"ax",@progbits
.LCOLDB14:
	.section	.text.LITE_log_enabled,"ax",@progbits
.LHOTB14:
	.globl	LITE_log_enabled
	.type	LITE_log_enabled, @function
LITE_log_enabled:
.LFB4:
	.loc 1 130 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 132 0
	movl	$1, %eax
	.loc 1 130 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 132 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	LITE_log_enabled, .-LITE_log_enabled
	.section	.text.unlikely.LITE_log_enabled
.LCOLDE14:
	.section	.text.LITE_log_enabled
.LHOTE14:
	.section	.text.unlikely.LITE_openlog,"ax",@progbits
.LCOLDB15:
	.section	.text.LITE_openlog,"ax",@progbits
.LHOTB15:
	.globl	LITE_openlog
	.type	LITE_openlog, @function
LITE_openlog:
.LFB5:
	.loc 1 135 0
	.cfi_startproc
.LVL56:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 136 0
	pushl	$7
	pushl	8(%ebp)
	pushl	$logcb
	call	strncpy
.LVL57:
	.loc 1 137 0
	movb	$0, logcb+7
	.loc 1 138 0
	movl	$0, logcb+8
	.loc 1 139 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	LITE_openlog, .-LITE_openlog
	.section	.text.unlikely.LITE_openlog
.LCOLDE15:
	.section	.text.LITE_openlog
.LHOTE15:
	.section	.rodata.str1.1
.LC16:
	.string	""
	.section	.text.unlikely.LITE_closelog,"ax",@progbits
.LCOLDB17:
	.section	.text.LITE_closelog,"ax",@progbits
.LHOTB17:
	.globl	LITE_closelog
	.type	LITE_closelog, @function
LITE_closelog:
.LFB6:
	.loc 1 142 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 143 0
	pushl	$7
	pushl	$.LC16
	pushl	$logcb
	call	strncpy
.LVL58:
	.loc 1 144 0
	movb	$0, logcb+7
	.loc 1 145 0
	movl	$0, logcb+8
	.loc 1 146 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	LITE_closelog, .-LITE_closelog
	.section	.text.unlikely.LITE_closelog
.LCOLDE17:
	.section	.text.LITE_closelog
.LHOTE17:
	.section	.text.unlikely.LITE_get_logname,"ax",@progbits
.LCOLDB18:
	.section	.text.LITE_get_logname,"ax",@progbits
.LHOTB18:
	.globl	LITE_get_logname
	.type	LITE_get_logname, @function
LITE_get_logname:
.LFB7:
	.loc 1 149 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 151 0
	movl	$logcb, %eax
	.loc 1 149 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 151 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	LITE_get_logname, .-LITE_get_logname
	.section	.text.unlikely.LITE_get_logname
.LCOLDE18:
	.section	.text.LITE_get_logname
.LHOTE18:
	.section	.text.unlikely.LITE_get_loglevel,"ax",@progbits
.LCOLDB19:
	.section	.text.LITE_get_loglevel,"ax",@progbits
.LHOTB19:
	.globl	LITE_get_loglevel
	.type	LITE_get_loglevel, @function
LITE_get_loglevel:
.LFB8:
	.loc 1 154 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 156 0
	movl	logcb+8, %eax
	.loc 1 154 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 156 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	LITE_get_loglevel, .-LITE_get_loglevel
	.section	.text.unlikely.LITE_get_loglevel
.LCOLDE19:
	.section	.text.LITE_get_loglevel
.LHOTE19:
	.section	.text.unlikely.LITE_set_loglevel,"ax",@progbits
.LCOLDB20:
	.section	.text.LITE_set_loglevel,"ax",@progbits
.LHOTB20:
	.globl	LITE_set_loglevel
	.type	LITE_set_loglevel, @function
LITE_set_loglevel:
.LFB9:
	.loc 1 159 0
	.cfi_startproc
.LVL59:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 160 0
	movl	8(%ebp), %eax
	.loc 1 161 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 160 0
	movl	%eax, logcb+8
	.loc 1 161 0
	ret
	.cfi_endproc
.LFE9:
	.size	LITE_set_loglevel, .-LITE_set_loglevel
	.section	.text.unlikely.LITE_set_loglevel
.LCOLDE20:
	.section	.text.LITE_set_loglevel
.LHOTE20:
	.section	.rodata.str1.1
.LC21:
	.string	"HEXDUMP %s @ %p[%d]\r\n"
	.section	.text.unlikely.LITE_rich_hexdump,"ax",@progbits
.LCOLDB22:
	.section	.text.LITE_rich_hexdump,"ax",@progbits
.LHOTB22:
	.globl	LITE_rich_hexdump
	.type	LITE_rich_hexdump, @function
LITE_rich_hexdump:
.LFB10:
	.loc 1 168 0
	.cfi_startproc
.LVL60:
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
.LBB30:
.LBB31:
	.loc 1 155 0
	movl	logcb+8, %eax
.LBE31:
.LBE30:
	.loc 1 169 0
	cmpl	%eax, 16(%ebp)
	.loc 1 168 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	20(%ebp), %ebx
	movl	24(%ebp), %esi
	movl	28(%ebp), %edi
	.loc 1 169 0
	jg	.L45
	.loc 1 173 0
	pushl	%ecx
	pushl	%edx
	pushl	lvl_names(,%eax,4)
	pushl	$.LC10
	call	printf
.LVL61:
	.loc 1 174 0
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	$.LC21
	call	printf
.LVL62:
	.loc 1 175 0
	movl	%edi, 16(%ebp)
	movl	%esi, 12(%ebp)
	addl	$32, %esp
	movl	%ebx, 8(%ebp)
	.loc 1 178 0
	leal	-12(%ebp), %esp
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
	.loc 1 175 0
	jmp	LITE_hexdump
.LVL63:
.L45:
	.cfi_restore_state
	.loc 1 178 0
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
.LFE10:
	.size	LITE_rich_hexdump, .-LITE_rich_hexdump
	.section	.text.unlikely.LITE_rich_hexdump
.LCOLDE22:
	.section	.text.LITE_rich_hexdump
.LHOTE22:
	.section	.rodata.str1.1
.LC23:
	.string	"[%s] %s(%d): %s (Length: %d Bytes)\r\n"
.LC24:
	.string	"%s "
	.section	.text.unlikely.log_multi_line_internal,"ax",@progbits
.LCOLDB25:
	.section	.text.log_multi_line_internal,"ax",@progbits
.LHOTB25:
	.globl	log_multi_line_internal
	.type	log_multi_line_internal, @function
log_multi_line_internal:
.LFB11:
	.loc 1 182 0
	.cfi_startproc
.LVL64:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
.LBB32:
.LBB33:
	.loc 1 155 0
	movl	logcb+8, %edx
.LBE33:
.LBE32:
	.loc 1 187 0
	cmpl	%edx, 20(%ebp)
	.loc 1 182 0
	movl	24(%ebp), %ebx
	.loc 1 187 0
	jg	.L49
	.loc 1 192 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%ebx, %edi
	repnz scasb
.LVL65:
	.loc 1 191 0
	pushl	%esi
	pushl	%esi
	.loc 1 192 0
	notl	%ecx
	decl	%ecx
	.loc 1 191 0
	pushl	%ecx
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	lvl_names(,%edx,4)
	pushl	$.LC23
	call	printf
.LVL66:
	addl	$32, %esp
.L50:
	.loc 1 195 0 discriminator 1
	cmpb	$0, (%ebx)
	je	.L58
	.loc 1 196 0
	pushl	%ecx
	pushl	%ecx
	pushl	28(%ebp)
	pushl	$.LC24
	call	printf
.LVL67:
	.loc 1 198 0
	addl	$16, %esp
	cmpb	$13, (%ebx)
	jne	.L51
	.loc 1 199 0
	subl	$12, %esp
	.loc 1 200 0
	addl	$2, %ebx
.LVL68:
	.loc 1 199 0
	pushl	$.LC1
	call	puts
.LVL69:
	.loc 1 201 0
	addl	$16, %esp
	jmp	.L52
.L51:
	.loc 1 204 0
	leal	1(%ebx), %eax
	pushl	%edx
	pushl	%edx
	pushl	$13
	pushl	%eax
	call	strchr
.LVL70:
	addl	$16, %esp
	.loc 1 205 0
	testl	%eax, %eax
	.loc 1 204 0
	movl	%eax, %edi
.LVL71:
	.loc 1 205 0
	jne	.L53
	movl	%ebx, %edi
.LVL72:
.L54:
	.loc 1 208 0 discriminator 1
	incl	%edi
.LVL73:
	.loc 1 209 0 discriminator 1
	cmpb	$0, (%edi)
	jne	.L54
.L53:
.LVL74:
	.loc 1 212 0
	movl	%edi, %eax
	xorl	%esi, %esi
	subl	%ebx, %eax
	movl	%eax, -28(%ebp)
.LVL75:
.L55:
	.loc 1 212 0 is_stmt 0 discriminator 1
	cmpl	-28(%ebp), %esi
	jge	.L67
	.loc 1 213 0 is_stmt 1 discriminator 3
	movsbl	(%ebx,%esi), %eax
	subl	$12, %esp
	.loc 1 212 0 discriminator 3
	incl	%esi
.LVL76:
	.loc 1 213 0 discriminator 3
	pushl	%eax
	call	putchar
.LVL77:
	.loc 1 212 0 discriminator 3
	addl	$16, %esp
	jmp	.L55
.L67:
	.loc 1 215 0
	subl	$12, %esp
	pushl	$.LC1
	call	puts
.LVL78:
	.loc 1 217 0
	addl	$16, %esp
	cmpb	$0, (%edi)
	jne	.L57
.LVL79:
.L58:
	.loc 1 220 0
	xorl	%eax, %eax
	jmp	.L49
.LVL80:
.L57:
	.loc 1 217 0 discriminator 1
	leal	2(%edi), %ebx
.LVL81:
.L52:
	.loc 1 195 0
	testl	%ebx, %ebx
	jne	.L50
	jmp	.L58
.LVL82:
.L49:
	.loc 1 221 0
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
.LFE11:
	.size	log_multi_line_internal, .-log_multi_line_internal
	.section	.text.unlikely.log_multi_line_internal
.LCOLDE25:
	.section	.text.log_multi_line_internal
.LHOTE25:
	.section	.rodata.str1.1
.LC26:
	.string	"emg"
.LC27:
	.string	"crt"
.LC28:
	.string	"err"
.LC29:
	.string	"wrn"
.LC30:
	.string	"inf"
.LC31:
	.string	"dbg"
	.section	.rodata.lvl_names,"a",@progbits
	.align 4
	.type	lvl_names, @object
	.size	lvl_names, 24
lvl_names:
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.section	.bss.logcb,"aw",@nobits
	.align 32
	.type	logcb, @object
	.size	logcb, 268
logcb:
	.zero	268
	.text
.Letext0:
	.section	.text.unlikely.LITE_hexdump
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 4 "framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log_internal.h"
	.file 5 "<built-in>"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 7 "framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x716
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF61
	.byte	0xc
	.long	.LASF62
	.long	.LASF63
	.long	.Ldebug_ranges0+0x30
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x28
	.long	0x7d
	.uleb128 0x5
	.byte	0x4
	.long	.LASF64
	.long	0x87
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x2e
	.long	0x72
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x6
	.byte	0x4
	.long	0x2c
	.uleb128 0x6
	.byte	0x4
	.long	0x87
	.uleb128 0x6
	.byte	0x4
	.long	0xb2
	.uleb128 0x7
	.long	0x87
	.uleb128 0x8
	.long	0x87
	.long	0xc7
	.uleb128 0x9
	.long	0x99
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xcd
	.uleb128 0xa
	.uleb128 0xb
	.long	.LASF65
	.byte	0x4
	.long	0x64
	.byte	0x7
	.byte	0x22
	.long	0x103
	.uleb128 0xc
	.long	.LASF14
	.byte	0
	.uleb128 0xc
	.long	.LASF15
	.byte	0x1
	.uleb128 0xc
	.long	.LASF16
	.byte	0x2
	.uleb128 0xc
	.long	.LASF17
	.byte	0x3
	.uleb128 0xc
	.long	.LASF18
	.byte	0x4
	.uleb128 0xc
	.long	.LASF19
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.value	0x10c
	.byte	0x4
	.byte	0x1c
	.long	0x131
	.uleb128 0xe
	.long	.LASF20
	.byte	0x4
	.byte	0x1d
	.long	0xb7
	.byte	0
	.uleb128 0xe
	.long	.LASF21
	.byte	0x4
	.byte	0x1e
	.long	0x5d
	.byte	0x8
	.uleb128 0xe
	.long	.LASF22
	.byte	0x4
	.byte	0x1f
	.long	0x131
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x87
	.long	0x141
	.uleb128 0x9
	.long	0x99
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.long	.LASF23
	.byte	0x4
	.byte	0x20
	.long	0x103
	.uleb128 0xf
	.long	.LASF24
	.byte	0x1
	.byte	0x94
	.long	0xa6
	.byte	0x1
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x99
	.long	0x5d
	.byte	0x1
	.uleb128 0x10
	.long	.LASF66
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.long	0x1c3
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x56
	.long	0xac
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0x56
	.long	0x1c3
	.uleb128 0x12
	.long	.LASF26
	.byte	0x1
	.byte	0x56
	.long	0x1c3
	.uleb128 0x11
	.string	"fmt"
	.byte	0x1
	.byte	0x56
	.long	0xac
	.uleb128 0x12
	.long	.LASF27
	.byte	0x1
	.byte	0x56
	.long	0x1c8
	.uleb128 0x13
	.long	.LASF28
	.byte	0x1
	.byte	0x58
	.long	0xa6
	.uleb128 0x14
	.string	"o"
	.byte	0x1
	.byte	0x59
	.long	0xa6
	.uleb128 0x13
	.long	.LASF29
	.byte	0x1
	.byte	0x5a
	.long	0x5d
	.byte	0
	.uleb128 0x7
	.long	0x5d
	.uleb128 0x6
	.byte	0x4
	.long	0x8e
	.uleb128 0x15
	.long	.LASF44
	.byte	0x1
	.byte	0x21
	.long	0x5d
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x30e
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.byte	0x21
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF31
	.byte	0x1
	.byte	0x21
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.byte	0x21
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x23
	.long	0x5d
	.long	.LLST0
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x23
	.long	0x5d
	.long	.LLST1
	.uleb128 0x19
	.long	.LASF32
	.byte	0x1
	.byte	0x23
	.long	0x5d
	.long	.LLST2
	.uleb128 0x1a
	.long	.LASF33
	.byte	0x1
	.byte	0x24
	.long	0x30e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x1a
	.long	.LASF34
	.byte	0x1
	.byte	0x25
	.long	0x31e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x26
	.long	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.Ldebug_ranges0+0
	.long	0x2a1
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x5d
	.long	.LLST3
	.uleb128 0x1d
	.long	.LVL3
	.long	0x6ae
	.uleb128 0x1d
	.long	.LVL6
	.long	0x6ae
	.uleb128 0x1d
	.long	.LVL7
	.long	0x6ae
	.uleb128 0x1d
	.long	.LVL8
	.long	0x6bd
	.byte	0
	.uleb128 0x1d
	.long	.LVL2
	.long	0x6cc
	.uleb128 0x1d
	.long	.LVL9
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL11
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL14
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL15
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL17
	.long	0x6ae
	.uleb128 0x1d
	.long	.LVL20
	.long	0x6e3
	.uleb128 0x1d
	.long	.LVL22
	.long	0x6ae
	.uleb128 0x1d
	.long	.LVL26
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL27
	.long	0x6bd
	.uleb128 0x1d
	.long	.LVL30
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL31
	.long	0x6ee
	.byte	0
	.uleb128 0x8
	.long	0x2c
	.long	0x31e
	.uleb128 0x9
	.long	0x99
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	0x87
	.long	0x32e
	.uleb128 0x9
	.long	0x99
	.byte	0x3f
	.byte	0
	.uleb128 0x1e
	.long	0x164
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ff
	.uleb128 0x1f
	.long	0x170
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	0x182
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.long	0x18d
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.long	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.long	0x1a3
	.long	.LLST4
	.uleb128 0x20
	.long	0x1ae
	.long	.LLST4
	.uleb128 0x21
	.long	0x1b7
	.byte	0
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x23
	.long	0x198
	.long	.LLST6
	.uleb128 0x23
	.long	0x18d
	.long	.LLST7
	.uleb128 0x23
	.long	0x182
	.long	.LLST8
	.uleb128 0x23
	.long	0x179
	.long	.LLST9
	.uleb128 0x23
	.long	0x170
	.long	.LLST10
	.uleb128 0x22
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.long	0x1a3
	.uleb128 0x20
	.long	0x1ae
	.long	.LLST11
	.uleb128 0x20
	.long	0x1b7
	.long	.LLST12
	.uleb128 0x1d
	.long	.LVL38
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL41
	.long	0x6f7
	.uleb128 0x1d
	.long	.LVL48
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL49
	.long	0x6d8
	.uleb128 0x25
	.long	.LVL52
	.long	0x6bd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF35
	.byte	0x1
	.byte	0x78
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x469
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0x78
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.byte	0x78
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF26
	.byte	0x1
	.byte	0x78
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.string	"fmt"
	.byte	0x1
	.byte	0x78
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x1b
	.string	"ap"
	.byte	0x1
	.byte	0x7a
	.long	0x8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LVL54
	.long	0x164
	.uleb128 0x1d
	.long	.LVL55
	.long	0x6ee
	.byte	0
	.uleb128 0x28
	.long	.LASF67
	.byte	0x1
	.byte	0x81
	.long	0x5d
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF36
	.byte	0x1
	.byte	0x86
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ab
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.byte	0x86
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL57
	.long	0x703
	.byte	0
	.uleb128 0x26
	.long	.LASF38
	.byte	0x1
	.byte	0x8d
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ca
	.uleb128 0x1d
	.long	.LVL58
	.long	0x703
	.byte	0
	.uleb128 0x29
	.long	0x14c
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	0x158
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x26
	.long	.LASF39
	.byte	0x1
	.byte	0x9e
	.long	.LFB9
	.long	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x50c
	.uleb128 0x17
	.string	"pri"
	.byte	0x1
	.byte	0x9e
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.long	.LASF40
	.byte	0x1
	.byte	0xa3
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x59c
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0xa3
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.byte	0xa3
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF26
	.byte	0x1
	.byte	0xa4
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF41
	.byte	0x1
	.byte	0xa5
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.byte	0xa6
	.long	0xc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x16
	.long	.LASF43
	.byte	0x1
	.byte	0xa7
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2a
	.long	0x158
	.long	.LBB30
	.long	.LBE30-.LBB30
	.byte	0x1
	.byte	0xa9
	.uleb128 0x1d
	.long	.LVL61
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL62
	.long	0x6d8
	.uleb128 0x25
	.long	.LVL63
	.long	0x1ce
	.byte	0
	.uleb128 0x15
	.long	.LASF45
	.byte	0x1
	.byte	0xb4
	.long	0x5d
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x677
	.uleb128 0x17
	.string	"f"
	.byte	0x1
	.byte	0xb4
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.string	"l"
	.byte	0x1
	.byte	0xb4
	.long	0x1c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.byte	0xb5
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x16
	.long	.LASF26
	.byte	0x1
	.byte	0xb5
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2b
	.long	.LASF46
	.byte	0x1
	.byte	0xb5
	.long	0xa6
	.long	.LLST13
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.byte	0xb5
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.string	"pos"
	.byte	0x1
	.byte	0xb7
	.long	0xac
	.long	.LLST14
	.uleb128 0x19
	.long	.LASF48
	.byte	0x1
	.byte	0xb8
	.long	0xac
	.long	.LLST15
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xb9
	.long	0x5d
	.long	.LLST16
	.uleb128 0x2a
	.long	0x158
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.byte	0xbb
	.uleb128 0x1d
	.long	.LVL66
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL67
	.long	0x6d8
	.uleb128 0x1d
	.long	.LVL69
	.long	0x6bd
	.uleb128 0x1d
	.long	.LVL70
	.long	0x70e
	.uleb128 0x1d
	.long	.LVL77
	.long	0x6ae
	.uleb128 0x1d
	.long	.LVL78
	.long	0x6bd
	.byte	0
	.uleb128 0x1a
	.long	.LASF49
	.byte	0x1
	.byte	0x50
	.long	0x141
	.uleb128 0x5
	.byte	0x3
	.long	logcb
	.uleb128 0x8
	.long	0xa6
	.long	0x698
	.uleb128 0x9
	.long	0x99
	.byte	0x5
	.byte	0
	.uleb128 0x1a
	.long	.LASF50
	.byte	0x1
	.byte	0x52
	.long	0x6a9
	.uleb128 0x5
	.byte	0x3
	.long	lvl_names
	.uleb128 0x7
	.long	0x688
	.uleb128 0x2c
	.long	.LASF51
	.long	.LASF53
	.byte	0x5
	.byte	0
	.long	.LASF51
	.uleb128 0x2c
	.long	.LASF52
	.long	.LASF54
	.byte	0x5
	.byte	0
	.long	.LASF52
	.uleb128 0x2d
	.long	.LASF55
	.long	.LASF55
	.byte	0x3
	.value	0x10a
	.uleb128 0x2e
	.long	.LASF56
	.long	.LASF56
	.byte	0x3
	.byte	0xc8
	.uleb128 0x2e
	.long	.LASF57
	.long	.LASF57
	.byte	0x3
	.byte	0xf4
	.uleb128 0x2f
	.long	.LASF68
	.long	.LASF68
	.uleb128 0x2d
	.long	.LASF58
	.long	.LASF58
	.byte	0x3
	.value	0x10c
	.uleb128 0x2e
	.long	.LASF59
	.long	.LASF59
	.byte	0x6
	.byte	0x28
	.uleb128 0x2e
	.long	.LASF60
	.long	.LASF60
	.byte	0x6
	.byte	0x1f
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2f
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
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL12
	.long	.LVL18
	.value	0x1
	.byte	0x53
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL29
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL29
	.long	.LVL32
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL21
	.long	.LVL22-1
	.value	0x1
	.byte	0x52
	.long	.LVL22-1
	.long	.LVL23
	.value	0x3
	.byte	0x91
	.sleb128 -140
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x56
	.long	.LVL13
	.long	.LVL14
	.value	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x56
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x57
	.long	.LVL16
	.long	.LVL17
	.value	0x3
	.byte	0x76
	.sleb128 2
	.byte	0x9f
	.long	.LVL17
	.long	.LVL25
	.value	0x1
	.byte	0x57
	.long	.LVL27
	.long	.LVL28
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL33
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	.LVL5
	.long	.LVL6
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL6
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL34
	.long	.LVL36
	.value	0x6
	.byte	0x3
	.long	logcb+12
	.byte	0x9f
	.long	.LVL36
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	.LVL40
	.long	.LVL44
	.value	0x1
	.byte	0x57
	.long	.LVL44
	.long	.LVL46
	.value	0x6
	.byte	0x3
	.long	logcb+12
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL47
	.long	.LVL48-1
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL48-1
	.long	.LFE2
	.value	0x6
	.byte	0x3
	.long	logcb+12
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL35
	.long	.LVL38-1
	.value	0x1
	.byte	0x52
	.long	.LVL38-1
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST7:
	.long	.LVL35
	.long	.LVL51
	.value	0x1
	.byte	0x56
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST8:
	.long	.LVL35
	.long	.LVL38-1
	.value	0x1
	.byte	0x50
	.long	.LVL38-1
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST9:
	.long	.LVL35
	.long	.LVL37
	.value	0x1
	.byte	0x57
	.long	.LVL37
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST10:
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x53
	.long	.LVL36
	.long	.LVL50
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	.LVL40
	.long	.LVL42
	.value	0x1
	.byte	0x57
	.long	.LVL42
	.long	.LVL43
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x3
	.long	logcb+12
	.byte	0x22
	.byte	0x9f
	.long	.LVL43
	.long	.LVL48-1
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	logcb+12
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL42
	.long	.LVL43
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x2b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL43
	.long	.LVL45
	.value	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x2b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL64
	.long	.LVL65
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST14:
	.long	.LVL66
	.long	.LVL68
	.value	0x1
	.byte	0x53
	.long	.LVL68
	.long	.LVL69
	.value	0x3
	.byte	0x73
	.sleb128 -2
	.byte	0x9f
	.long	.LVL69
	.long	.LVL82
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST15:
	.long	.LVL71
	.long	.LVL72
	.value	0x1
	.byte	0x50
	.long	.LVL72
	.long	.LVL79
	.value	0x1
	.byte	0x57
	.long	.LVL80
	.long	.LVL81
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST16:
	.long	.LVL74
	.long	.LVL75
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL75
	.long	.LVL76
	.value	0x1
	.byte	0x56
	.long	.LVL76
	.long	.LVL77
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	.LVL77
	.long	.LVL79
	.value	0x1
	.byte	0x56
	.long	.LVL80
	.long	.LVL81
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB17
	.long	.LBE17
	.long	.LBB18
	.long	.LBE18
	.long	0
	.long	0
	.long	.LBB26
	.long	.LBE26
	.long	.LBB29
	.long	.LBE29
	.long	0
	.long	0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF56:
	.string	"printf"
.LASF57:
	.string	"sprintf"
.LASF19:
	.string	"LOG_DEBUG_LEVEL"
.LASF17:
	.string	"LOG_WARNING_LEVEL"
.LASF38:
	.string	"LITE_closelog"
.LASF12:
	.string	"va_list"
.LASF59:
	.string	"strncpy"
.LASF39:
	.string	"LITE_set_loglevel"
.LASF67:
	.string	"LITE_log_enabled"
.LASF44:
	.string	"LITE_hexdump"
.LASF7:
	.string	"long long unsigned int"
.LASF23:
	.string	"log_client"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF43:
	.string	"buf_len"
.LASF22:
	.string	"text_buf"
.LASF31:
	.string	"buff"
.LASF28:
	.string	"tmpbuf"
.LASF50:
	.string	"lvl_names"
.LASF4:
	.string	"long int"
.LASF64:
	.string	"__builtin_va_list"
.LASF54:
	.string	"__builtin_puts"
.LASF51:
	.string	"putchar"
.LASF63:
	.string	"/home/stone/Documents/pca"
.LASF15:
	.string	"LOG_CRIT_LEVEL"
.LASF25:
	.string	"LITE_get_loglevel"
.LASF8:
	.string	"unsigned int"
.LASF29:
	.string	"truncated"
.LASF5:
	.string	"long unsigned int"
.LASF60:
	.string	"strchr"
.LASF20:
	.string	"name"
.LASF53:
	.string	"__builtin_putchar"
.LASF26:
	.string	"level"
.LASF3:
	.string	"short unsigned int"
.LASF42:
	.string	"buf_ptr"
.LASF21:
	.string	"priority"
.LASF65:
	.string	"_LOGLEVEL"
.LASF40:
	.string	"LITE_rich_hexdump"
.LASF52:
	.string	"puts"
.LASF13:
	.string	"sizetype"
.LASF9:
	.string	"long double"
.LASF11:
	.string	"__gnuc_va_list"
.LASF46:
	.string	"payload"
.LASF30:
	.string	"title"
.LASF14:
	.string	"LOG_EMERG_LEVEL"
.LASF58:
	.string	"vsnprintf"
.LASF47:
	.string	"mark"
.LASF62:
	.string	"src/lite-log.c"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"LITE_syslog"
.LASF49:
	.string	"logcb"
.LASF16:
	.string	"LOG_ERR_LEVEL"
.LASF68:
	.string	"__stack_chk_fail"
.LASF32:
	.string	"written"
.LASF61:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF18:
	.string	"LOG_INFO_LEVEL"
.LASF10:
	.string	"char"
.LASF36:
	.string	"LITE_openlog"
.LASF27:
	.string	"params"
.LASF48:
	.string	"endl"
.LASF55:
	.string	"snprintf"
.LASF41:
	.string	"buf_str"
.LASF37:
	.string	"ident"
.LASF33:
	.string	"ascii"
.LASF66:
	.string	"LITE_syslog_routine"
.LASF45:
	.string	"log_multi_line_internal"
.LASF24:
	.string	"LITE_get_logname"
.LASF34:
	.string	"header"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
